import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A376000: Numbers that can be written as a Narayana number (A001263) in at least 2 ways.

The programs for A376000, there is no canonical definition to state claims against.
-/

/-! ## A376000.P12143767662345213548

`lt[A228986(n+5), A318814(A127094(n+1))]`
-/

namespace A376000.P12143767662345213548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318814 (A127094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376000.P12143767662345213548

/-! ## A376000.P943898559367371201

`filter[A375999(n+1), A305387(#)]`
-/

namespace A376000.P943898559367371201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305387 (f1 j).toNat = 1) n)

end

end A376000.P943898559367371201

/-! ## A376000.P15831701480937248015

`eq[A103688(n+1), A119270(n+1)]`
-/

namespace A376000.P15831701480937248015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376000.P15831701480937248015

/-! ## A376000.P17782268389209477926

`lt[A121855(2*n+1), A120831(A178340(n))]`
-/

namespace A376000.P17782268389209477926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120831 (A178340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376000.P17782268389209477926

/-! ## A376000.P9094366997251499636

`lt[A006852(3*n+4), A127865(A178340(n))]`
-/

namespace A376000.P9094366997251499636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006852 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127865 (A178340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376000.P9094366997251499636

/-!
# A376003: Positive integers k such that each digit of k^2 is a factor of k.

The programs for A376003, there is no canonical definition to state claims against.
-/

/-! ## A376003.P10825159426060094665

`A067751(A087289(n))-6`
-/

namespace A376003.P10825159426060094665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067751 (A087289 n).toNat - 6

end

end A376003.P10825159426060094665

/-! ## A376003.P10982711981209604471

`A005885(A050406(n))`
-/

namespace A376003.P10982711981209604471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A050406 n).toNat

end

end A376003.P10982711981209604471

/-!
# A376004: Limiting matrix {m_n}, where m_0 = 1 and m_{i+1} = [[m_i, A(m_i)], [B(m_i), C(m_i)]], read by antidiagonals, and A adds the corresponding x-coords to every element, B subtracts it, and C adds the corresponding y-coords.

The programs for A376004, there is no canonical definition to state claims against.
-/

/-! ## A376004.P5826222009882387399

`A197548(gcd(A057661(n+1), A178103(n)))`
-/

namespace A376004.P5826222009882387399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197548 (Int.gcd (A057661 (n + 1)) (A178103 n))

end

end A376004.P5826222009882387399

/-! ## A376004.P18065216643340966359

`A054635(lcm(A003961(3*(n+1)), A038663(n+1)))`
-/

namespace A376004.P18065216643340966359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (Int.lcm (A003961 (3 * (n + 1))) (A038663 (n + 1)))

end

end A376004.P18065216643340966359

/-! ## A376004.P7818847267361618299

`A194285(A174824(n+1)*A347788(3*n+4))`
-/

namespace A376004.P7818847267361618299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A174824 (n + 1) * A347788 (3 * n + 4)).toNat

end

end A376004.P7818847267361618299

/-! ## A376004.P4879371295798057946

`A127093(gcd(A160468(2*(n+1)), A162486(n+3)))`
-/

namespace A376004.P4879371295798057946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (Int.gcd (A160468 (2 * (n + 1))) (A162486 (n + 3)))

end

end A376004.P4879371295798057946

/-! ## A376004.P7762488703130180768

`A010872(gcd(A185645(n+1), A273102(2*n+3)))`
-/

namespace A376004.P7762488703130180768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.gcd (A185645 (n + 1)) (A273102 (2 * n + 3)))

end

end A376004.P7762488703130180768

/-!
# A376006: Record values in A032662.

The programs for A376006, there is no canonical definition to state claims against.
-/

/-! ## A376006.P4931579513429666326

`A032662(A376002(n+1))`
-/

namespace A376006.P4931579513429666326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A376002 (n + 1)).toNat

end

end A376006.P4931579513429666326

/-! ## A376006.P816039833047853499

`record[A032662(n+1)]`
-/

namespace A376006.P816039833047853499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376006.P816039833047853499

/-! ## A376006.P16007680294343088768

`record[A032662(n)*A054977(n)]`
-/

namespace A376006.P16007680294343088768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376006.P16007680294343088768

/-!
# A376011: a(n) = number of solutions (x_1, x_2, ..., x_n) to Product_{i=1..n} (1 + 1/x_i) = 3.

The programs for A376011, there is no canonical definition to state claims against.
-/

/-! ## A376011.P13385448822838645892

`A120919(a(n-1)+3)` with `a(0)=0`
-/

namespace A376011.P13385448822838645892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A120919 (a (n - 1) + 3).toNat

end

end A376011.P13385448822838645892

/-!
# A376012: a(n) = number of solutions (x_1, x_2, ..., x_n) to Product_{i=1..n} (1 + 1/x_i) = any integer.

The programs for A376012, there is no canonical definition to state claims against.
-/

/-! ## A376012.P5322267283787845490

`A005185(A226560(n)+A004526(n))`
-/

namespace A376012.P5322267283787845490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A226560 n + A004526 n).toNat

end

end A376012.P5322267283787845490

/-! ## A376012.P10370912698721963906

`A190366(A327227(n)+A000009(n))`
-/

namespace A376012.P10370912698721963906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190366 (A327227 n + A000009 n).toNat

end

end A376012.P10370912698721963906

/-!
# A376013: Prime numbers of the form 3p+8 where p, p+2 and p+6 are prime numbers.

The programs for A376013, there is no canonical definition to state claims against.
-/

/-! ## A376013.P16367954175886280290

`3*A162001(n+1)+8`
-/

namespace A376013.P16367954175886280290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162001 (n + 1) + 8

end

end A376013.P16367954175886280290

/-! ## A376013.P410188791761418718

`∩[A133659(n+1), A163635(n+1)]`
-/

namespace A376013.P410188791761418718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P410188791761418718

/-! ## A376013.P10176598529253843990

`∩[A050207(n+1), A133659(n+1)]`
-/

namespace A376013.P10176598529253843990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P10176598529253843990

/-! ## A376013.P14973913994820052807

`∩[A050207(n+1), A163635(n+1)]`
-/

namespace A376013.P14973913994820052807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P14973913994820052807

/-! ## A376013.P16397915301948327513

`∩[A050207(n+1), A094524(n+1)]`
-/

namespace A376013.P16397915301948327513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P16397915301948327513

/-! ## A376013.P9742118202914782773

`∩[A034962(n+1), A163635(n+1)]`
-/

namespace A376013.P9742118202914782773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P9742118202914782773

/-! ## A376013.P14568348498824947938

`∩[A050207(n+1), A162337(n+1)]`
-/

namespace A376013.P14568348498824947938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P14568348498824947938

/-! ## A376013.P18228419017498013550

`∩[A094524(n+1), A163635(n+1)]`
-/

namespace A376013.P18228419017498013550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P18228419017498013550

/-! ## A376013.P8243824991708285206

`∩[A162337(n+1), A163635(n+1)]`
-/

namespace A376013.P8243824991708285206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P8243824991708285206

/-! ## A376013.P15597565435641396945

`∩[A050207(n+1), A390613(n+1)]`
-/

namespace A376013.P15597565435641396945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P15597565435641396945

/-! ## A376013.P9781276727207882615

`p?[A163635(n+1)]`
-/

namespace A376013.P9781276727207882615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A376013.P9781276727207882615

/-! ## A376013.P12838525484465118979

`p?[3*A073648(n+1)+2]`
-/

namespace A376013.P12838525484465118979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A073648 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A376013.P12838525484465118979

/-! ## A376013.P13649539670602728271

`∩[A067377(n+1), A163635(n+1)]`
-/

namespace A376013.P13649539670602728271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P13649539670602728271

/-! ## A376013.P11761212939075852997

`∩[A050207(n+1), A060328(n+1)]`
-/

namespace A376013.P11761212939075852997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P11761212939075852997

/-! ## A376013.P12546578369981726534

`∩[A050207(n+1), A167610(n+1)]`
-/

namespace A376013.P12546578369981726534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P12546578369981726534

/-! ## A376013.P15823351838472791484

`∩[A060328(n+1), A163635(n+1)]`
-/

namespace A376013.P15823351838472791484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P15823351838472791484

/-! ## A376013.P2250197138000307199

`∩[A163635(n+1), A167610(n+1)]`
-/

namespace A376013.P2250197138000307199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P2250197138000307199

/-! ## A376013.P6858695515087057172

`∩[A071199(n+1), A163635(n+1)]`
-/

namespace A376013.P6858695515087057172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P6858695515087057172

/-! ## A376013.P2942721378961708929

`∩[A061240(n+1), A163635(n+1)]`
-/

namespace A376013.P2942721378961708929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376013.P2942721378961708929

/-!
# A376014: a(n) = Sum_{d|n} d^d * binomial(n/d,d).

The programs for A376014, there is no canonical definition to state claims against.
-/

/-! ## A376014.P16160174169309550785

`(n+1)*A349056(A005179(n+1))`
-/

namespace A376014.P16160174169309550785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349056 (A005179 (n + 1)).toNat

end

end A376014.P16160174169309550785

/-! ## A376014.P6294664872508114089

`(n+1)*A349056(A355303(n+1))`
-/

namespace A376014.P6294664872508114089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349056 (A355303 (n + 1)).toNat

end

end A376014.P6294664872508114089

/-! ## A376014.P2692022844315048690

`(n+1)*A096993(A000110(n))`
-/

namespace A376014.P2692022844315048690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096993 (A000110 n).toNat

end

end A376014.P2692022844315048690

/-! ## A376014.P2924743738643406101

`(n+1)*A055642(A339481(n+1))`
-/

namespace A376014.P2924743738643406101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A339481 (n + 1)).toNat

end

end A376014.P2924743738643406101

/-! ## A376014.P9115656730938675512

`A072088((n+1)*A325365(n+1))`
-/

namespace A376014.P9115656730938675512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 ((n + 1 : ℤ) * A325365 (n + 1)).toNat

end

end A376014.P9115656730938675512

/-!
# A376015: a(n) = Sum_{d|n} d^n * binomial(n/d,d).

The programs for A376015, there is no canonical definition to state claims against.
-/

/-! ## A376015.P15467704284688971953

`A273943(A342613(n+1))+n`
-/

namespace A376015.P15467704284688971953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A342613 (n + 1)).toNat + (n : ℤ)

end

end A376015.P15467704284688971953

/-! ## A376015.P6248442438053286437

`(n+1)*A175851(A020556(n))`
-/

namespace A376015.P6248442438053286437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175851 (A020556 n).toNat

end

end A376015.P6248442438053286437

/-!
# A376016: a(n) = Sum_{d|n} d^(n/d) * binomial(n/d,d).

The programs for A376016, there is no canonical definition to state claims against.
-/

/-! ## A376016.P7182439307568827503

`(n+1)*A342241(A323293(n))`
-/

namespace A376016.P7182439307568827503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342241 (A323293 n).toNat

end

end A376016.P7182439307568827503

/-! ## A376016.P16686243530587486512

`(n+1)*A264401(A112919(3*n+7))`
-/

namespace A376016.P16686243530587486512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A264401 (A112919 (3 * n + 7)).toNat

end

end A376016.P16686243530587486512

/-! ## A376016.P3656332959762384615

`A252493(n+1)*A262626(A205483(3*n+1))`
-/

namespace A376016.P3656332959762384615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252493 (n + 1) * A262626 (A205483 (3 * n + 1)).toNat

end

end A376016.P3656332959762384615

/-! ## A376016.P4305380100480355475

`A075458(A264569(2*n+3))*A164707(n+1)`
-/

namespace A376016.P4305380100480355475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (A264569 (2 * n + 3)).toNat * A164707 (n + 1)

end

end A376016.P4305380100480355475

/-!
# A376019: a(n) = Sum_{d|n} d^n * binomial(n/d-1,d-1).

The programs for A376019, there is no canonical definition to state claims against.
-/

/-! ## A376019.P12057635663335050396

`∑[n*2^(n-1)]^A238877(A034472(n))`
-/

namespace A376019.P12057635663335050396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (A238877 (A034472 n).toNat : ℤ)

end

end A376019.P12057635663335050396

/-! ## A376019.P2894988133571563223

`gcd(∑[n*2^(n-1)], A079757(A015530(n)))`
-/

namespace A376019.P2894988133571563223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A079757 (A015530 n).toNat)

end

end A376019.P2894988133571563223

/-! ## A376019.P13784004570098925262

`A000337(C(n, 2*floor(n/2)))%A344274(2*(n+2))`
-/

namespace A376019.P13784004570098925262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000337 (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat)) (A344274 (2 * (n + 2)))

end

end A376019.P13784004570098925262

/-! ## A376019.P16338579105291571158

`A000337(A006530((n*∏{p}[n+1, C(#%n, #)]+1)!))`
-/

namespace A376019.P16338579105291571158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (A006530 (Nat.factorial (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1))).toNat

end

end A376019.P16338579105291571158

/-!
# A376021: a(n) = Sum_{d|n} d^(n/d - d) * binomial(n/d-1,d-1).

The programs for A376021, there is no canonical definition to state claims against.
-/

/-! ## A376021.P14705904164806863809

`gcd(A281335(A097598(n)), A302796(n+1))`
-/

namespace A376021.P14705904164806863809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281335 (A097598 n).toNat) (A302796 (n + 1))

end

end A376021.P14705904164806863809

/-!
# A376022: a(1) = 1, for n >= 2, a(n) = -1 + floor((n*a(n - 1)) / (n + a(n - 1))).

The programs for A376022, the canonical program `A376022.P787293820531383600` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376022 has offset 1).

The definition of A376022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1+floor((n+1)*a(n-1)/(n+1+a(n-1)))` (program `A376022.P787293820531383600`, by `A376022.P787293820531383600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376022.P787293820531383600

`-1+floor((n+1)*a(n-1)/(n+1+a(n-1)))` with `a(0)=1, a(1)=-1, a(2)=-3, a(3)=-13, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376022

/-- `-1+floor((n+1)*a(n-1)/(n+1+a(n-1)))` -/
def P787293820531383600.Spec : Prop :=
  ∀ n, P787293820531383600.a n = A376022 (n + 1)

theorem P787293820531383600.correct : P787293820531383600.Spec := by
  intro n
  simp only [A376022, Nat.add_sub_cancel]

end A376022

/-! ## A376022.P17015968493692028309

`floor(n-(n+1)²/(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A376022.P17015968493692028309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - ((n + 1) ^ 2 : ℚ) / (a (n - 1) + (n + 1 : ℤ) : ℚ)⌋

end

end A376022.P17015968493692028309

namespace A376022

/-- `floor(n-(n+1)²/(a(n-1)+n+1))` -/
def P17015968493692028309.Spec : Prop :=
  ∀ n, P17015968493692028309.a n = A376022 (n + 1)

end A376022

/-! ## A376022.P9461725499408538281

`floor(a(n-1)/(a(n-1)/(n+1)+1))-1` with `a(0)=1`
-/

namespace A376022.P9461725499408538281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / ((a (n - 1) : ℚ) / (n + 1 : ℚ) + 1)⌋ - 1

end

end A376022.P9461725499408538281

namespace A376022

/-- `floor(a(n-1)/(a(n-1)/(n+1)+1))-1` -/
def P9461725499408538281.Spec : Prop :=
  ∀ n, P9461725499408538281.a n = A376022 (n + 1)

end A376022

/-!
# A376023: a(1) = 1, for n >= 2, a(n) = abs(a(n - 1) + A376022(n)).

The programs for A376023, the canonical program `A376023.P5748921642060316215` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376023 has offset 1).

The definition of A376023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+A376022(n+1))` (program `A376023.P5748921642060316215`, by `A376023.P5748921642060316215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376023.P5748921642060316215

`abs(a(n-1)+A376022(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A376023

/-- `abs(a(n-1)+A376022(n+1))` -/
def P5748921642060316215.Spec : Prop :=
  ∀ n, P5748921642060316215.a n = A376023 (n + 1)

theorem P5748921642060316215.correct : P5748921642060316215.Spec := by
  intro n
  simp only [A376023, Nat.add_sub_cancel]

end A376023

/-!
# A376024: a(0..4) = 1 and a(n) = (a(n-2)^2 + a(n-3)^2 + a(n-2)*(3*a(n-3) + a(n-4)) + a(n-1)*(a(n-3) - a(n-5)))/(a(n-4) + a(n-5)) for n > 4.

The programs for A376024, there is no canonical definition to state claims against.
-/

/-! ## A376024.P505885587320198127

`A000040(2*n+5)%A200566(A006721(n))`
-/

namespace A376024.P505885587320198127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 5)) (A200566 (A006721 n).toNat)

end

end A376024.P505885587320198127

/-! ## A376024.P15461787508944711015

`A138530(abs(A111884(n)))`
-/

namespace A376024.P15461787508944711015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 |A111884 n|.toNat

end

end A376024.P15461787508944711015

/-! ## A376024.P15902602754912628560

`A107320(A076929(n+1))`
-/

namespace A376024.P15902602754912628560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107320 (A076929 (n + 1)).toNat

end

end A376024.P15902602754912628560

/-! ## A376024.P9445584802795354937

`A206767(A076928(n+1))`
-/

namespace A376024.P9445584802795354937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A076928 (n + 1)).toNat

end

end A376024.P9445584802795354937

/-! ## A376024.P2431693383278799594

`A325594(A006721(n+1))`
-/

namespace A376024.P2431693383278799594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325594 (A006721 (n + 1)).toNat

end

end A376024.P2431693383278799594

/-!
# A376029: Tribonacci-Niven numbers (A352089) with a record gap to the next tribonacci-Niven number.

The programs for A376029, there is no canonical definition to state claims against.
-/

/-! ## A376029.P14102450647173300780

`A365882(2*(n+1)^(n+1))`
-/

namespace A376029.P14102450647173300780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365882 (2 * (n + 1) ^ (n + 1))

end

end A376029.P14102450647173300780

/-!
# A376031: Number of ways to tile a 3 x (2*n) rectangle with dominoes and T's.

The programs for A376031, there is no canonical definition to state claims against.
-/

/-! ## A376031.P7919681403037078962

`A008621(or(2^n-1, A001644(3*n+1)))`
-/

namespace A376031.P7919681403037078962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor ((2 ^ n : ℤ) - 1) (A001644 (3 * n + 1))).toNat

end

end A376031.P7919681403037078962

/-!
# A376033: Number A(n,k) of binary words of length n avoiding distance (i+1) between "1" digits if the i-th bit is set in the binary representation of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A376033, there is no canonical definition to state claims against.
-/

/-! ## A376033.P17504151963263357020

`A141539(n)+A101349(A219883(n+1))`
-/

namespace A376033.P17504151963263357020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n + A101349 (A219883 (n + 1)).toNat

end

end A376033.P17504151963263357020

/-! ## A376033.P9550180537958413896

`A141539(n)+A079998(A005710(3*n+1))`
-/

namespace A376033.P9550180537958413896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n + A079998 (A005710 (3 * n + 1)).toNat

end

end A376033.P9550180537958413896

/-! ## A376033.P15725655075414487277

`or(A000035(A336333(3*n+1)), A340547(n+1))`
-/

namespace A376033.P15725655075414487277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A336333 (3 * n + 1)).toNat) (A340547 (n + 1))

end

end A376033.P15725655075414487277

/-! ## A376033.P4251187076000727272

`A188436(A324764(n+1))+A141539(n)`
-/

namespace A376033.P4251187076000727272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A324764 (n + 1)).toNat + A141539 n

end

end A376033.P4251187076000727272

/-! ## A376033.P4495911527323521837

`A141539(n)+A127708(A007318(3*(n+1)))`
-/

namespace A376033.P4495911527323521837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n + A127708 (A007318 (3 * (n + 1))).toNat

end

end A376033.P4495911527323521837

/-!
# A376034: E.g.f. satisfies A(x) = (exp(x / (1 - A(x))^3) - 1) * (1 - A(x))^2.

The programs for A376034, there is no canonical definition to state claims against.
-/

/-! ## A376034.P4309422410616048308

`A275326(A052544(n))`
-/

namespace A376034.P4309422410616048308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275326 (A052544 n).toNat

end

end A376034.P4309422410616048308

/-!
# A376035: E.g.f. satisfies A(x) = exp(x / (1 - A(x))^3) - 1.

The programs for A376035, there is no canonical definition to state claims against.
-/

/-! ## A376035.P12193614125370346221

`A063399(n+1)-A364204(A063439(n+2))`
-/

namespace A376035.P12193614125370346221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063399 (n + 1) - A364204 (A063439 (n + 2)).toNat

end

end A376035.P12193614125370346221

/-!
# A376036: E.g.f. satisfies A(x) = (exp(x / (1 - A(x))^3) - 1) / (1 - A(x)).

The programs for A376036, there is no canonical definition to state claims against.
-/

/-! ## A376036.P18126560252691053564

`A000182(n+1)-A001651(A006150(n))`
-/

namespace A376036.P18126560252691053564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 1) - A001651 (A006150 n).toNat

end

end A376036.P18126560252691053564

/-!
# A376037: E.g.f. satisfies A(x) = (exp(x / (1 - A(x))^2) - 1) / (1 - A(x)).

The programs for A376037, there is no canonical definition to state claims against.
-/

/-! ## A376037.P15592411479375084483

`A004273(A218801(n)-A288950(n))`
-/

namespace A376037.P15592411479375084483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A218801 n - A288950 n).toNat

end

end A376037.P15592411479375084483

/-!
# A376038: E.g.f. satisfies A(x) = (-log(1 - x / (1 - A(x))^3)) * (1 - A(x))^2.

The programs for A376038, there is no canonical definition to state claims against.
-/

/-! ## A376038.P12592278708162607985

`∑[A163545(A373690(n))]`
-/

namespace A376038.P12592278708162607985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A373690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376038.P12592278708162607985

/-!
# A376039: E.g.f. satisfies A(x) = (-log(1 - x / (1 - A(x))^3)) * (1 - A(x)).

The programs for A376039, there is no canonical definition to state claims against.
-/

/-! ## A376039.P8777892591167062916

`A004396(1-A003710(n))`
-/

namespace A376039.P8777892591167062916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (1 - A003710 n).toNat

end

end A376039.P8777892591167062916

/-!
# A376043: a(1)=1; thereafter a(n) = smallest positive integer such that Sum_{i=2..n} a(i-1)/a(i) is less than 1.

The programs for A376043, there is no canonical definition to state claims against.
-/

/-! ## A376043.P10131574086585486178

`1+a(n-1)*A376044(n-1)` with `a(0)=1`
-/

namespace A376043.P10131574086585486178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - 1) * A376044 (n - 1)

end

end A376043.P10131574086585486178

/-!
# A376044: a(0)=1; thereafter, a(n) = denominator of Sum_{i=1..n} A376043(i)/A376043(i+1).

The programs for A376044, there is no canonical definition to state claims against.
-/

/-! ## A376044.P8799119347364658805

`A376043(n)*a(n-1)²+a(n-1)` with `a(0)=1`
-/

namespace A376044.P8799119347364658805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376043 n * a (n - 1) ^ 2 + a (n - 1)

end

end A376044.P8799119347364658805

/-! ## A376044.P5697631807341725306

`lcm(a(n-2)+a(n-1)², a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A376044.P5697631807341725306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (a (n - 2) + a (n - 1) ^ 2) (a (n - 1))

end

end A376044.P5697631807341725306

/-! ## A376044.P9747397003682628910

`∏[A376043(n+1)]`
-/

namespace A376044.P9747397003682628910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376044.P9747397003682628910

/-!
# A376045: Complement of A325112.

The programs for A376045, there is no canonical definition to state claims against.
-/

/-! ## A376045.P5912095386591779396

`lt[A330355(n), n]`
-/

namespace A376045.P5912095386591779396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A376045.P5912095386591779396

/-! ## A376045.P5415319638444906762

`comp[A330355(n)]`
-/

namespace A376045.P5415319638444906762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376045.P5415319638444906762

/-! ## A376045.P6056623116564874422

`∑[A049347(A191389(n))+2]`
-/

namespace A376045.P6056623116564874422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A191389 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376045.P6056623116564874422

/-!
# A376046: Complement of A325114.

The programs for A376046, there is no canonical definition to state claims against.
-/

/-! ## A376046.P14164993500689172014

`comp[A325114(n+1)-1]+1`
-/

namespace A376046.P14164993500689172014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325114 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376046.P14164993500689172014

/-!
# A376047: Complement of A092433.

The programs for A376047, the canonical program `A376047.P566063180146395764` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376047 has offset 1).

The definition of A376047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376047.P566063180146395764

`comp[A092433(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376047

/-- `comp[A092433(n+1)-1]+1` -/
def P566063180146395764.Spec : Prop :=
  ∀ n, (P566063180146395764.a n : ℤ) = A376047 (n + 1)

theorem P566063180146395764.correct : P566063180146395764.Spec := by
  intro n
  simp only [A376047, Nat.add_sub_cancel]

end A376047

/-! ## A376047.P15825444000924571487

`comp[∪[A011537(n+1), 7*n]]`
-/

namespace A376047.P15825444000924571487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376047.P15825444000924571487

namespace A376047

/-- `comp[∪[A011537(n+1), 7*n]]` -/
def P15825444000924571487.Spec : Prop :=
  ∀ n, (P15825444000924571487.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P13316872597834067181

`record[A004182(A242603(n+1))]`
-/

namespace A376047.P13316872597834067181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A242603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376047.P13316872597834067181

namespace A376047

/-- `record[A004182(A242603(n+1))]` -/
def P13316872597834067181.Spec : Prop :=
  ∀ n, P13316872597834067181.a n = A376047 (n + 1)

end A376047

/-! ## A376047.P17045189883506881442

`record[A004182(A047304(n+1))]`
-/

namespace A376047.P17045189883506881442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A047304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376047.P17045189883506881442

namespace A376047

/-- `record[A004182(A047304(n+1))]` -/
def P17045189883506881442.Spec : Prop :=
  ∀ n, P17045189883506881442.a n = A376047 (n + 1)

end A376047

/-! ## A376047.P579403197913578415

`∩[A047304(n+1), A052419(n+1)]`
-/

namespace A376047.P579403197913578415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376047.P579403197913578415

namespace A376047

/-- `∩[A047304(n+1), A052419(n+1)]` -/
def P579403197913578415.Spec : Prop :=
  ∀ n, (P579403197913578415.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P8225131713748966821

`record[A328018(n+1)]`
-/

namespace A376047.P8225131713748966821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376047.P8225131713748966821

namespace A376047

/-- `record[A328018(n+1)]` -/
def P8225131713748966821.Spec : Prop :=
  ∀ n, P8225131713748966821.a n = A376047 (n + 1)

end A376047

/-! ## A376047.P10741095798380475989

`lt[n, A109048(A004182(n))]`
-/

namespace A376047.P10741095798380475989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 (A004182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376047.P10741095798380475989

namespace A376047

/-- `lt[n, A109048(A004182(n))]` -/
def P10741095798380475989.Spec : Prop :=
  ∀ n, (P10741095798380475989.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P1967003959007882616

`record[A106608(A004182(n+1))]`
-/

namespace A376047.P1967003959007882616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A004182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376047.P1967003959007882616

namespace A376047

/-- `record[A106608(A004182(n+1))]` -/
def P1967003959007882616.Spec : Prop :=
  ∀ n, P1967003959007882616.a n = A376047 (n + 1)

end A376047

/-! ## A376047.P9199470768735068964

`eq[1, gcd(7, A230101(n))]`
-/

namespace A376047.P9199470768735068964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A230101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376047.P9199470768735068964

namespace A376047

/-- `eq[1, gcd(7, A230101(n))]` -/
def P9199470768735068964.Spec : Prop :=
  ∀ n, (P9199470768735068964.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P1061223214731812960

`lt[0, A230101(n+1)%7]+1`
-/

namespace A376047.P1061223214731812960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230101 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376047.P1061223214731812960

namespace A376047

/-- `lt[0, A230101(n+1)%7]+1` -/
def P1061223214731812960.Spec : Prop :=
  ∀ n, (P1061223214731812960.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P6383582228401288937

`lt[A316868(n), A109720(n)]`
-/

namespace A376047.P6383582228401288937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376047.P6383582228401288937

namespace A376047

/-- `lt[A316868(n), A109720(n)]` -/
def P6383582228401288937.Spec : Prop :=
  ∀ n, (P6383582228401288937.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P5981278048880267426

`filter[A052419(n+1), A109720(#)]`
-/

namespace A376047.P5981278048880267426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A376047.P5981278048880267426

namespace A376047

/-- `filter[A052419(n+1), A109720(#)]` -/
def P5981278048880267426.Spec : Prop :=
  ∀ n, P5981278048880267426.a n = A376047 (n + 1)

end A376047

/-! ## A376047.P16466787802019216649

`lt[n, A109720(n)+A004182(n)]`
-/

namespace A376047.P16466787802019216649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n + A004182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376047.P16466787802019216649

namespace A376047

/-- `lt[n, A109720(n)+A004182(n)]` -/
def P16466787802019216649.Spec : Prop :=
  ∀ n, (P16466787802019216649.a n : ℤ) = A376047 (n + 1)

end A376047

/-! ## A376047.P15466103133818728230

`eq[1, A010143(A230101(n))]`
-/

namespace A376047.P15466103133818728230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376047.P15466103133818728230

namespace A376047

/-- `eq[1, A010143(A230101(n))]` -/
def P15466103133818728230.Spec : Prop :=
  ∀ n, (P15466103133818728230.a n : ℤ) = A376047 (n + 1)

end A376047

/-!
# A376048: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} b(k)/a(k) < 1, where {b(k)} = 3,1,4,1,5,... are the digits of Pi (cf. A000796).

The programs for A376048, there is no canonical definition to state claims against.
-/

/-! ## A376048.P1338127780688181316

`ratio[A376049(n)]`
-/

namespace A376048.P1338127780688181316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376049 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A376048.P1338127780688181316

/-!
# A376049: a(n) is the denominator of the sum S(n) defined in A376048.

The programs for A376049, there is no canonical definition to state claims against.
-/

/-! ## A376049.P5926708768310502519

`a(n-1)*A376048(n)` with `a(0)=1`
-/

namespace A376049.P5926708768310502519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A376048 n

end

end A376049.P5926708768310502519

/-!
# A376050: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} 1/((2*k-1)*a(k)) < 1.

The programs for A376050, there is no canonical definition to state claims against.
-/

/-! ## A376050.P13432200452948331129

`A148573(a(n-1))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A376050.P13432200452948331129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  A148573 (a (n - 1)).toNat

end

end A376050.P13432200452948331129

/-! ## A376050.P10905458915046087439

`A317078(a(n-1))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A376050.P10905458915046087439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  A317078 (a (n - 1)).toNat

end

end A376050.P10905458915046087439

/-!
# A376051: a(n) is the denominator of the sum S(n) defined in A376050.

The programs for A376051, there is no canonical definition to state claims against.
-/

/-! ## A376051.P13240942015426222255

`A133582(A133605(n+1)-1)`
-/

namespace A376051.P13240942015426222255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133582 (A133605 (n + 1) - 1).toNat

end

end A376051.P13240942015426222255

/-!
# A376052: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} 1/((2*k+1)*a(k)) < 1.

The programs for A376052, there is no canonical definition to state claims against.
-/

/-! ## A376052.P7210609446073232290

`A114622(floor(sqrt(A112960(n+1))))`
-/

namespace A376052.P7210609446073232290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114622 (Int.sqrt (A112960 (n + 1))).toNat

end

end A376052.P7210609446073232290

/-! ## A376052.P10439778721152020229

`A114622(round(sqrt(A112960(n+1))))`
-/

namespace A376052.P10439778721152020229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114622 (SequenceMachineLib.roundAway (Real.sqrt (A112960 (n + 1) : ℝ))).toNat

end

end A376052.P10439778721152020229

/-! ## A376052.P2764591769220899145

`A342525(∑[∑{digits}[n, floor(#/5)]]!)`
-/

namespace A376052.P2764591769220899145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A376052.P2764591769220899145

/-! ## A376052.P12615257453359469932

`A342525(∑[floor((n+1)/(10-sqrt(22)))]!)`
-/

namespace A376052.P12615257453359469932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (10 - Real.sqrt (22 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A376052.P12615257453359469932

/-! ## A376052.P1319530000167781626

`A010407(floor((4-6/n)*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A376052.P1319530000167781626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A010407 ⌊(4 - 6 / (n : ℚ)) * (a (n - 1) : ℚ)⌋.toNat

end

end A376052.P1319530000167781626

/-!
# A376053: Numerator of the sum S(n) defined in A376052.

The programs for A376053, there is no canonical definition to state claims against.
-/

/-! ## A376053.P15536300467803952183

`A376054(n+1)-A376055(n+1)`
-/

namespace A376053.P15536300467803952183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376054 (n + 1) - A376055 (n + 1)

end

end A376053.P15536300467803952183

/-! ## A376053.P15309550618452916381

`A025547(n+2)*A279387(A025557(n+1))-A376055(n+1)`
-/

namespace A376053.P15309550618452916381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 2) * A279387 (A025557 (n + 1)).toNat - A376055 (n + 1)

end

end A376053.P15309550618452916381

/-!
# A376054: Denominator of sum S(n) defined in A376052.

The programs for A376054, there is no canonical definition to state claims against.
-/

/-! ## A376054.P14444647661078767966

`A376055(n+1)+A376053(n+1)`
-/

namespace A376054.P14444647661078767966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376055 (n + 1) + A376053 (n + 1)

end

end A376054.P14444647661078767966

/-! ## A376054.P6286977600378029309

`A035047(2*n+3)*A119591(A120375(n+2))`
-/

namespace A376054.P6286977600378029309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035047 (2 * n + 3) * A119591 (A120375 (n + 2)).toNat

end

end A376054.P6286977600378029309

/-! ## A376054.P16074858124365854135

`A000027(∏[A075860(2*n+3)])`
-/

namespace A376054.P16074858124365854135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376054.P16074858124365854135

/-!
# A376055: Difference between numerator and denominator of the sum S(n) defined in A376052.

The programs for A376055, there is no canonical definition to state claims against.
-/

/-! ## A376055.P17680932200845709660

`A376054(n+1)-A376053(n+1)`
-/

namespace A376055.P17680932200845709660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376054 (n + 1) - A376053 (n + 1)

end

end A376055.P17680932200845709660

/-!
# A376056: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} (2*k-1)/a(k) < 1.

The programs for A376056, the canonical program `A376056.P875746772787377381` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376056 has offset 1).

The definition of A376056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376056.P875746772787377381

`(2*n+1)*A376057(n)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A376056

/-- `(2*n+1)*A376057(n)+1` -/
def P875746772787377381.Spec : Prop :=
  ∀ n, P875746772787377381.a n = A376056 (n + 1)

theorem P875746772787377381.correct : P875746772787377381.Spec := by
  intro n
  simp only [A376056, Nat.add_sub_cancel]

end A376056

/-! ## A376056.P3062236696437050666

`ratio[A376057(n)]`
-/

namespace A376056.P3062236696437050666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A376056.P3062236696437050666

namespace A376056

/-- `ratio[A376057(n)]` -/
def P3062236696437050666.Spec : Prop :=
  ∀ n, P3062236696437050666.a n = (A376056 (n + 1) : ℚ)

end A376056

/-!
# A376057: a(n) is the denominator of the sum S(n) defined in A376056.

The programs for A376057, the canonical program `A376057.P11317669457590708382` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376057 has offset 0).

The definition of A376057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376057.P11317669457590708382

`((2*n-1)*a(n-1)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376057

/-- `((2*n-1)*a(n-1)+1)*a(n-1)` -/
def P11317669457590708382.Spec : Prop :=
  ∀ n, P11317669457590708382.a n = A376057 n

theorem P11317669457590708382.correct : P11317669457590708382.Spec := by
  intro n
  simp only [A376057]

end A376057

/-! ## A376057.P463454402607323457

`a(n-1)+(2*n-1)*a(n-1)²` with `a(0)=1`
-/

namespace A376057.P463454402607323457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n : ℤ) - 1) * a (n - 1) ^ 2

end

end A376057.P463454402607323457

namespace A376057

/-- `a(n-1)+(2*n-1)*a(n-1)²` -/
def P463454402607323457.Spec : Prop :=
  ∀ n, P463454402607323457.a n = A376057 n

end A376057

/-!
# A376058: Lexicographically earliest sequence of positive integers a(0), a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 0..n-1} Fibonacci(k)/a(k) < 1.

The programs for A376058, there is no canonical definition to state claims against.
-/

/-! ## A376058.P6445531730750519441

`A059612(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=13`
-/

namespace A376058.P6445531730750519441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 13] fun n a =>
  A059612 (a (n - 1)).toNat

end

end A376058.P6445531730750519441

/-!
# A376059: a(n) is the denominator of the sum S(n) defined in A376058.

The programs for A376059, there is no canonical definition to state claims against.
-/

/-! ## A376059.P6438586341366302010

`∏[A376058(n)]`
-/

namespace A376059.P6438586341366302010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376059.P6438586341366302010

/-!
# A376061: a(n) is the denominator of the sum S(n) defined in A376060.

The programs for A376061, there is no canonical definition to state claims against.
-/

/-! ## A376061.P8926273314420367823

`∏[A376060(n)]`
-/

namespace A376061.P8926273314420367823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376061.P8926273314420367823

/-! ## A376061.P9208694522446163988

`(A376060(n+1)-A094876(n+1))/A000108(n+1)`
-/

namespace A376061.P9208694522446163988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376060 (n + 1) - A094876 (n + 1) : ℚ) / (A000108 (n + 1) : ℚ)

end

end A376061.P9208694522446163988

/-!
# A376062: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} b(k)/a(k) < 1, where {b(k)} is the sequence {7/6, 5/4, 5/4, 5/4, ...}.

The programs for A376062, there is no canonical definition to state claims against.
-/

/-! ## A376062.P14952526216988317030

`a(n-1)+(1-a(n-1))²` with `a(0)=2, a(1)=4`
-/

namespace A376062.P14952526216988317030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A376062.P14952526216988317030

/-! ## A376062.P1155543061191773703

`ceil(sqrt(A004168(n)))`
-/

namespace A376062.P1155543061191773703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004168 n : ℝ)⌉

end

end A376062.P1155543061191773703

/-! ## A376062.P8021774015803909375

`(A082732(n+2)+A004168(n))/A082732(n+2)`
-/

namespace A376062.P8021774015803909375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082732 (n + 2) + A004168 n : ℚ) / (A082732 (n + 2) : ℚ)

end

end A376062.P8021774015803909375

/-!
# A376064: Number of quasi-orders on an n-set that are not partial orders.

The programs for A376064, there is no canonical definition to state claims against.
-/

/-! ## A376064.P11534476735538337971

`A000798(n)-A001035(n)`
-/

namespace A376064.P11534476735538337971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A001035 n

end

end A376064.P11534476735538337971

/-! ## A376064.P3798240523846856417

`A000798(n)-(2*A105974(n)+1)`
-/

namespace A376064.P3798240523846856417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - (2 * A105974 n + 1)

end

end A376064.P3798240523846856417

/-! ## A376064.P17840844404482323087

`A000798(n)-A006059(n+1)/(n+1)`
-/

namespace A376064.P17840844404482323087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000798 n : ℚ) - (A006059 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A376064.P17840844404482323087

/-! ## A376064.P3574544140106799873

`A245767(∑[n]+n)-(2*A105974(n)+1)`
-/

namespace A376064.P3574544140106799873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (2 * A105974 n + 1)

end

end A376064.P3574544140106799873

/-! ## A376064.P11494274860681771688

`A245767(∑[n]+n)-A006059(n+1)/(n+1)`
-/

namespace A376064.P11494274860681771688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) - (A006059 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A376064.P11494274860681771688

/-!
# A376065: Orders k of groups G such that Inn(G) is isomorphic to Z(Aut(G)) for at least one G of order k.

The programs for A376065, there is no canonical definition to state claims against.
-/

/-! ## A376065.P4291290196349032117

`record[A034380(A124240(n+1))]`
-/

namespace A376065.P4291290196349032117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A124240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376065.P4291290196349032117

/-! ## A376065.P8521653085248253529

`record[and(A321804(n), A328400(n+1))]`
-/

namespace A376065.P8521653085248253529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321804 n) (A328400 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376065.P8521653085248253529

/-! ## A376065.P12030841955794369305

`∩[A316470(n+1), A376617(n+1)]`
-/

namespace A376065.P12030841955794369305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376065.P12030841955794369305

/-! ## A376065.P12661371123274781198

`∩[A331873(n+1), A376617(n+1)]`
-/

namespace A376065.P12661371123274781198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376065.P12661371123274781198

/-! ## A376065.P12329856244833980518

`∩[A376617(n+1), A384010(n+1)]`
-/

namespace A376065.P12329856244833980518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376065.P12329856244833980518

/-!
# A376066: Minimum number of unit squares needed to cover the circumference of a circle of radius n.

The programs for A376066, the canonical program `A376066.P15456064072050938299` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376066 has offset 1).

The definition of A376066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376066.P15456064072050938299

`ceil(π/asin(sqrt(2)/(2*(n+1))))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376066

/-- `ceil(π/asin(sqrt(2)/(2*(n+1))))` -/
def P15456064072050938299.Spec : Prop :=
  ∀ n, P15456064072050938299.a n = A376066 (n + 1)

theorem P15456064072050938299.correct : P15456064072050938299.Spec := by
  intro n
  simp only [A376066, Nat.add_sub_cancel]

end A376066

/-! ## A376066.P13745795041854380351

`A121855(A014683(n+1)+A014106(n))`
-/

namespace A376066.P13745795041854380351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (A014683 (n + 1) + A014106 n).toNat

end

end A376066.P13745795041854380351

namespace A376066

/-- `A121855(A014683(n+1)+A014106(n))` -/
def P13745795041854380351.Spec : Prop :=
  ∀ n, P13745795041854380351.a n = A376066 (n + 1)

end A376066

/-! ## A376066.P9934291192507981907

`A003056(A295339(n+1)-1)`
-/

namespace A376066.P9934291192507981907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A295339 (n + 1) - 1).toNat

end

end A376066.P9934291192507981907

namespace A376066

/-- `A003056(A295339(n+1)-1)` -/
def P9934291192507981907.Spec : Prop :=
  ∀ n, P9934291192507981907.a n = A376066 (n + 1)

end A376066

/-! ## A376066.P2850813600291039154

`A003056(A137515(n+1)-2)`
-/

namespace A376066.P2850813600291039154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A137515 (n + 1) - 2).toNat

end

end A376066.P2850813600291039154

namespace A376066

/-- `A003056(A137515(n+1)-2)` -/
def P2850813600291039154.Spec : Prop :=
  ∀ n, P2850813600291039154.a n = A376066 (n + 1)

end A376066

/-! ## A376066.P17843828839678339737

`A003056(A072895(n+1)-3)`
-/

namespace A376066.P17843828839678339737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A072895 (n + 1) - 3).toNat

end

end A376066.P17843828839678339737

namespace A376066

/-- `A003056(A072895(n+1)-3)` -/
def P17843828839678339737.Spec : Prop :=
  ∀ n, P17843828839678339737.a n = A376066 (n + 1)

end A376066

/-!
# A376067: E.g.f. satisfies A(x) = (-log(1 - x / (1 - A(x))^2)) * (1 - A(x)).

The programs for A376067, there is no canonical definition to state claims against.
-/

/-! ## A376067.P3760229132534605371

`A220522(a(n-1)+2^(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A376067.P3760229132534605371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A220522 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A376067.P3760229132534605371

/-!
# A376072: a(n) are half the sums of the gamma coefficients of the n-th row-generating function of triangle A375853.

The programs for A376072, the canonical program `A376072.P14860464692209715327` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376072 has offset 2).

The definition of A376072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376072.P14860464692209715327

`a(n-1)+(n+2)*(3^(n+1)+(-1)^(n+2))/8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376072

/-- `a(n-1)+(n+2)*(3^(n+1)+(-1)^(n+2))/8` -/
def P14860464692209715327.Spec : Prop :=
  ∀ n, P14860464692209715327.a n = (A376072 (n + 2) : ℚ)

end A376072

/-! ## A376072.P2841503577342323511

`((2*(n+2)-1)*3^(n+2)+(2*(n+2)+1)*(-1)^(n+2))/32`
-/

namespace A376072.P2841503577342323511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 2) : ℤ) - 1) * (3 ^ (n + 2) : ℤ) + (2 * (n + 2) + 1 : ℤ) * (-1) ^ (n + 2) : ℚ) / 32

end

end A376072.P2841503577342323511

namespace A376072

/-- `((2*(n+2)-1)*3^(n+2)+(2*(n+2)+1)*(-1)^(n+2))/32` -/
def P2841503577342323511.Spec : Prop :=
  ∀ n, P2841503577342323511.a n = (A376072 (n + 2) : ℚ)

end A376072

/-! ## A376072.P14133024279741145432

`∑[∑[∑[A083672(n)]]]`
-/

namespace A376072.P14133024279741145432
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376072.P14133024279741145432

namespace A376072

/-- `∑[∑[∑[A083672(n)]]]` -/
def P14133024279741145432.Spec : Prop :=
  ∀ n, P14133024279741145432.a n = A376072 (n + 2)

end A376072

/-! ## A376072.P7726431140906136556

`A191008(n)-a(n-1)` with `a(0)=1`
-/

namespace A376072.P7726431140906136556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191008 n - a (n - 1)

end

end A376072.P7726431140906136556

namespace A376072

/-- `A191008(n)-a(n-1)` -/
def P7726431140906136556.Spec : Prop :=
  ∀ n, P7726431140906136556.a n = A376072 (n + 2)

end A376072

/-! ## A376072.P2275520323768235425

`ogf(1/(1-4x-2x^2+12x^3+9x^4))`
-/

namespace A376072.P2275520323768235425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -2, 12, 9] n

end

end A376072.P2275520323768235425

namespace A376072

/-- `ogf(1/(1-4x-2x^2+12x^3+9x^4))` -/
def P2275520323768235425.Spec : Prop :=
  ∀ n, P2275520323768235425.a n = A376072 (n + 2)

end A376072

/-! ## A376072.P11859884907746869353

`A111960(A167614(n+2))`
-/

namespace A376072.P11859884907746869353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (A167614 (n + 2)).toNat

end

end A376072.P11859884907746869353

namespace A376072

/-- `A111960(A167614(n+2))` -/
def P11859884907746869353.Spec : Prop :=
  ∀ n, P11859884907746869353.a n = A376072 (n + 2)

end A376072

/-! ## A376072.P430744005418001578

`A111960(A000217(n+3)+3)`
-/

namespace A376072.P430744005418001578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (A000217 (n + 3) + 3).toNat

end

end A376072.P430744005418001578

namespace A376072

/-- `A111960(A000217(n+3)+3)` -/
def P430744005418001578.Spec : Prop :=
  ∀ n, P430744005418001578.a n = A376072 (n + 2)

end A376072

/-!
# A376073: Number of solutions of the congruence y^2 + y == x^3 - x^2 (mod p) as p runs through the primes.

The programs for A376073, there is no canonical definition to state claims against.
-/

/-! ## A376073.P14437389682153929386

`A060457(A000040(n+1))`
-/

namespace A376073.P14437389682153929386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060457 (A000040 (n + 1)).toNat

end

end A376073.P14437389682153929386

/-! ## A376073.P1951532429589137194

`A000040(n+1)-A002070(n+1)`
-/

namespace A376073.P1951532429589137194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002070 (n + 1)

end

end A376073.P1951532429589137194

/-! ## A376073.P18039501455219787702

`A059812(A272196(n+1))`
-/

namespace A376073.P18039501455219787702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059812 (A272196 (n + 1)).toNat

end

end A376073.P18039501455219787702

/-! ## A376073.P15382819336531433465

`A272196(A254667(n+1))`
-/

namespace A376073.P15382819336531433465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 (A254667 (n + 1)).toNat

end

end A376073.P15382819336531433465

/-! ## A376073.P8046389537004809197

`A272196(A348776(n+1))`
-/

namespace A376073.P8046389537004809197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 (A348776 (n + 1)).toNat

end

end A376073.P8046389537004809197

/-! ## A376073.P15411674120854656760

`A060457(A008578(n+2))`
-/

namespace A376073.P15411674120854656760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060457 (A008578 (n + 2)).toNat

end

end A376073.P15411674120854656760

/-! ## A376073.P5611041287389505068

`A060457(A182986(n+2))`
-/

namespace A376073.P5611041287389505068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060457 (A182986 (n + 2)).toNat

end

end A376073.P5611041287389505068

/-! ## A376073.P6956349464830067573

`A272196(A233583(n+2))`
-/

namespace A376073.P6956349464830067573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 (A233583 (n + 2)).toNat

end

end A376073.P6956349464830067573

/-! ## A376073.P14956377270424950958

`A272196(A054977(n)+n)`
-/

namespace A376073.P14956377270424950958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 (A054977 n + (n : ℤ)).toNat

end

end A376073.P14956377270424950958

/-! ## A376073.P17701218586662122148

`A272196(n+1)+A000038(n)`
-/

namespace A376073.P17701218586662122148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 (n + 1) + A000038 n

end

end A376073.P17701218586662122148

/-! ## A376073.P15846283561968648632

`A008578(n+2)-A002070(n+1)`
-/

namespace A376073.P15846283561968648632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A002070 (n + 1)

end

end A376073.P15846283561968648632

/-! ## A376073.P32654525292894719

`A006093(n+1)+1-A002070(n+1)`
-/

namespace A376073.P32654525292894719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A002070 (n + 1))

end

end A376073.P32654525292894719

/-! ## A376073.P13172257759396150044

`gcd(2, A000040(n+1))*A272196(n+1)`
-/

namespace A376073.P13172257759396150044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A272196 (n + 1)

end

end A376073.P13172257759396150044

/-! ## A376073.P14076830773400665024

`gcd(n, A045344(n+1))*A272196(n+1)`
-/

namespace A376073.P14076830773400665024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A045344 (n + 1)) : ℤ) * A272196 (n + 1)

end

end A376073.P14076830773400665024

/-! ## A376073.P16661739721392919053

`A272196(n+1-A121373(A272196(n+1)))`
-/

namespace A376073.P16661739721392919053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272196 ((n + 1 : ℤ) - A121373 (A272196 (n + 1)).toNat).toNat

end

end A376073.P16661739721392919053

/-! ## A376073.P13037370551424243505

`A001248(n+1)-(A036689(n+1)+A002070(n+1))`
-/

namespace A376073.P13037370551424243505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A036689 (n + 1) + A002070 (n + 1))

end

end A376073.P13037370551424243505

/-! ## A376073.P8323370124309291381

`A001248(n+1)-A366346(n+1)`
-/

namespace A376073.P8323370124309291381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A366346 (n + 1)

end

end A376073.P8323370124309291381

/-! ## A376073.P16865478653895539825

`A280076(n+2)-A366346(n+1)`
-/

namespace A376073.P16865478653895539825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) - A366346 (n + 1)

end

end A376073.P16865478653895539825

/-!
# A376074: a(n) is the number of distinct right circular cones with integer radius and height having the same volume as a sphere with radius n.

The programs for A376074, the canonical program `A376074.P11076744248211188563` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376074 has offset 1).

The definition of A376074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376074.P11076744248211188563

`A099777(A355264(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376074

/-- `A099777(A355264(n+1))` -/
def P11076744248211188563.Spec : Prop :=
  ∀ n, P11076744248211188563.a n = A376074 (n + 1)

theorem P11076744248211188563.correct : P11076744248211188563.Spec := by
  intro n
  simp only [A376074, Nat.add_sub_cancel]

end A376074

/-! ## A376074.P13067713805879998688

`A000005(2*(n+1)*∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A376074.P13067713805879998688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))))

end

end A376074.P13067713805879998688

namespace A376074

/-- `A000005(2*(n+1)*∏{p}[n+1, #^val(n+1, #²)])` -/
def P13067713805879998688.Spec : Prop :=
  ∀ n, P13067713805879998688.a n = A376074 (n + 1)

end A376074

/-! ## A376074.P10869002455625461414

`A000005(2*A355264(n+1))`
-/

namespace A376074.P10869002455625461414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A355264 (n + 1)).toNat

end

end A376074.P10869002455625461414

namespace A376074

/-- `A000005(2*A355264(n+1))` -/
def P10869002455625461414.Spec : Prop :=
  ∀ n, P10869002455625461414.a n = A376074 (n + 1)

end A376074

/-! ## A376074.P7409448804298550462

`A000005(2*sqrt(A059479(n+1)))`
-/

namespace A376074.P7409448804298550462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (2 * Real.sqrt (A059479 (n + 1) : ℝ))).toNat

end

end A376074.P7409448804298550462

namespace A376074

/-- `A000005(2*sqrt(A059479(n+1)))` -/
def P7409448804298550462.Spec : Prop :=
  ∀ n, P7409448804298550462.a n = A376074 (n + 1)

end A376074

/-! ## A376074.P4817978962808655141

`A000005(2*(n+1)*A000188(n+1))`
-/

namespace A376074.P4817978962808655141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * (n + 1) : ℤ) * A000188 (n + 1)).toNat

end

end A376074.P4817978962808655141

namespace A376074

/-- `A000005(2*(n+1)*A000188(n+1))` -/
def P4817978962808655141.Spec : Prop :=
  ∀ n, P4817978962808655141.a n = A376074 (n + 1)

end A376074

/-!
# A376075: Number of North-East lattice paths from (0,0) to (n,n) that do not cross the diagonal y = x at any even point (2*k,2*k).

The programs for A376075, there is no canonical definition to state claims against.
-/

/-! ## A376075.P16249734986870687537

`A162002(A283909(n))`
-/

namespace A376075.P16249734986870687537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A283909 n).toNat

end

end A376075.P16249734986870687537

/-! ## A376075.P4775881988744656090

`A056391(round(sqrt(A293457(n+1))))`
-/

namespace A376075.P4775881988744656090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (SequenceMachineLib.roundAway (Real.sqrt (A293457 (n + 1) : ℝ))).toNat

end

end A376075.P4775881988744656090

/-!
# A376077: Number of partitions of subsets of [n] containing n > 0, where consecutive integers are required to be in different parts.

The programs for A376077, there is no canonical definition to state claims against.
-/

/-! ## A376077.P13427112499843579004

`A001462(A205576(n))`
-/

namespace A376077.P13427112499843579004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A205576 n).toNat

end

end A376077.P13427112499843579004

/-! ## A376077.P7510637388100725187

`A054899(12*A000110(n))`
-/

namespace A376077.P7510637388100725187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (12 * A000110 n).toNat

end

end A376077.P7510637388100725187

/-! ## A376077.P15432577610578711993

`A054899(12*A276726(n))`
-/

namespace A376077.P15432577610578711993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (12 * A276726 n).toNat

end

end A376077.P15432577610578711993

/-!
# A376080: a(n) is the highest degree of the rational function in the recursive substitution {y1, y2} -> {y2, (y2 + 1)/(y1*y2)} after n steps.

The programs for A376080, the canonical program `A376080.P8085542952608092824` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376080 has offset 0).

The definition of A376080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376080.P8085542952608092824

`ceil((3*n*(n-1)+8)/14)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376080

/-- `ceil((3*n*(n-1)+8)/14)` -/
def P8085542952608092824.Spec : Prop :=
  ∀ n, P8085542952608092824.a n = A376080 n

theorem P8085542952608092824.correct : P8085542952608092824.Spec := by
  intro n
  simp only [A376080]

end A376080

/-! ## A376080.P5960956142183369986

`a(n-7)+3*(n-7)+9` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=5, a(6)=7`
-/

namespace A376080.P5960956142183369986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4, 5, 7] fun n a =>
  a (n - 7) + 3 * ((n : ℤ) - 7) + 9

end

end A376080.P5960956142183369986

namespace A376080

/-- `a(n-7)+3*(n-7)+9` -/
def P5960956142183369986.Spec : Prop :=
  ∀ n, P5960956142183369986.a n = A376080 n

end A376080

/-! ## A376080.P15937680409000499528

`∑[n]+1-A011867(2*n+3)`
-/

namespace A376080.P15937680409000499528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A011867 (2 * n + 3)

end

end A376080.P15937680409000499528

namespace A376080

/-- `∑[n]+1-A011867(2*n+3)` -/
def P15937680409000499528.Spec : Prop :=
  ∀ n, P15937680409000499528.a n = A376080 n

end A376080

/-! ## A376080.P7549708596865956479

`A320614(A028310(3*n+2))-n`
-/

namespace A376080.P7549708596865956479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320614 (A028310 (3 * n + 2)).toNat - (n : ℤ)

end

end A376080.P7549708596865956479

namespace A376080

/-- `A320614(A028310(3*n+2))-n` -/
def P7549708596865956479.Spec : Prop :=
  ∀ n, P7549708596865956479.a n = A376080 n

end A376080

/-! ## A376080.P13719566607030743177

`A001651(round((n-1)*n/7)+1)`
-/

namespace A376080.P13719566607030743177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((n : ℚ) / 7)) + 1).toNat

end

end A376080.P13719566607030743177

namespace A376080

/-- `A001651(round((n-1)*n/7)+1)` -/
def P13719566607030743177.Spec : Prop :=
  ∀ n, P13719566607030743177.a n = A376080 n

end A376080

/-! ## A376080.P14598464179650208042

`A057357(C(n, 2)+1)+1`
-/

namespace A376080.P14598464179650208042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (Nat.choose n 2 + 1) + 1

end

end A376080.P14598464179650208042

namespace A376080

/-- `A057357(C(n, 2)+1)+1` -/
def P14598464179650208042.Spec : Prop :=
  ∀ n, P14598464179650208042.a n = A376080 n

end A376080

/-! ## A376080.P14628840043621316307

`A057357(∑[abs(1-n)])+1`
-/

namespace A376080.P14628840043621316307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A376080.P14628840043621316307

namespace A376080

/-- `A057357(∑[abs(1-n)])+1` -/
def P14628840043621316307.Spec : Prop :=
  ∀ n, P14628840043621316307.a n = A376080 n

end A376080

/-!
# A376081: Irregular triangle read by rows: row n is the periodic part of the Leonardo numbers (A001595) modulo n.

The programs for A376081, there is no canonical definition to state claims against.
-/

/-! ## A376081.P14812580638459554746

`A014081(A386580(n)+A354584(n+1))`
-/

namespace A376081.P14812580638459554746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A386580 n + A354584 (n + 1)).toNat

end

end A376081.P14812580638459554746

/-! ## A376081.P17077453292035528486

`A039997(A272471(n+1)*A338908(2*n+1))`
-/

namespace A376081.P17077453292035528486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A272471 (n + 1) * A338908 (2 * n + 1)).toNat

end

end A376081.P17077453292035528486

/-! ## A376081.P9225490343682606278

`A073091(A073135(3*n+2)+A034356(n+3))`
-/

namespace A376081.P9225490343682606278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073091 (A073135 (3 * n + 2) + A034356 (n + 3)).toNat

end

end A376081.P9225490343682606278

/-! ## A376081.P7249650150609285378

`A376364(A376364(3*(n+1))+A000079(n))`
-/

namespace A376081.P7249650150609285378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376364 (A376364 (3 * (n + 1)) + A000079 n).toNat

end

end A376081.P7249650150609285378

/-! ## A376081.P9073005586965646646

`A007949(A006456(n)*A051027(3*n+4))`
-/

namespace A376081.P9073005586965646646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A006456 n * A051027 (3 * n + 4)).toNat

end

end A376081.P9073005586965646646

/-!
# A376082: a(n) is the period of the Leonardo numbers (A001595) modulo n.

The programs for A376082, there is no canonical definition to state claims against.
-/

/-! ## A376082.P10638302532275627350

`A001175(gcd(n+1, ∑[n]))`
-/

namespace A376082.P10638302532275627350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A376082.P10638302532275627350

/-! ## A376082.P1711466382560928725

`A001175(floor(n/(n%2+1))+1)`
-/

namespace A376082.P1711466382560928725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A376082.P1711466382560928725

/-! ## A376082.P12797322077008871570

`A001175(A026741(n+1))`
-/

namespace A376082.P12797322077008871570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A026741 (n + 1)).toNat

end

end A376082.P12797322077008871570

/-! ## A376082.P17250017929011941733

`A001175(A065423(n+1)+1)`
-/

namespace A376082.P17250017929011941733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A065423 (n + 1) + 1).toNat

end

end A376082.P17250017929011941733

/-! ## A376082.P16655377046740128895

`A001175((n+1)/A000034(n))`
-/

namespace A376082.P16655377046740128895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A376082.P16655377046740128895

/-! ## A376082.P671440387952107818

`A001175(Δ[A001318(n)])`
-/

namespace A376082.P671440387952107818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (n + 1) - f1 n).toNat

end

end A376082.P671440387952107818

/-!
# A376086: a(0) = 1; a(n) = Sum_{k=0..n-1} (3*k+2) * a(k) * a(n-k-1).

The programs for A376086, there is no canonical definition to state claims against.
-/

/-! ## A376086.P1195704045981612764

`A004278(xor(n, A129114(n)))`
-/

namespace A376086.P1195704045981612764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (Int.xor (n : ℤ) (A129114 n)).toNat

end

end A376086.P1195704045981612764

/-!
# A376087: a(0) = 1; a(n) = Sum_{k=0..n-1} (4*k+1) * a(k) * a(n-k-1).

The programs for A376087, there is no canonical definition to state claims against.
-/

/-! ## A376087.P6952022634799820078

`A336590((2*n+1)^(n-1))`
-/

namespace A376087.P6952022634799820078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A376087.P6952022634799820078

/-!
# A376088: Positive numbers k such that in the decimal expansion of 1/k a nonzero digit is never followed by a zero.

The programs for A376088, there is no canonical definition to state claims against.
-/

/-! ## A376088.P15519753479110820641

`∩[A085837(n+1), A362710(n+1)]`
-/

namespace A376088.P15519753479110820641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376088.P15519753479110820641

/-!
# A376089: Positive numbers k such that the decimal expansions of k and 1/k have the same nonzero digits.

The programs for A376089, there is no canonical definition to state claims against.
-/

/-! ## A376089.P7245941823513352902

`A282779(A333402(n+1))`
-/

namespace A376089.P7245941823513352902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282779 (A333402 (n + 1)).toNat

end

end A376089.P7245941823513352902

/-! ## A376089.P7773097900378055183

`A002264(lcm(3, A333402(n+1)))`
-/

namespace A376089.P7773097900378055183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm 3 (A333402 (n + 1)))

end

end A376089.P7773097900378055183

/-! ## A376089.P38743424162297736

`A051176(abs(A333402(n+1)-1)+1)`
-/

namespace A376089.P38743424162297736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (|A333402 (n + 1) - 1| + 1).toNat

end

end A376089.P38743424162297736

/-! ## A376089.P4332359295876634101

`lcm(A033630(n), A051176(A333402(n+1)))`
-/

namespace A376089.P4332359295876634101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033630 n) (A051176 (A333402 (n + 1)).toNat)

end

end A376089.P4332359295876634101

/-! ## A376089.P18383275975910866497

`A051176(∪[A100416(n+1), A333402(n+1)])`
-/

namespace A376089.P18383275975910866497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333402 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A376089.P18383275975910866497

/-!
# A376091: Number of binary words of length n avoiding distance (i+1) between "1" digits if the i-th bit is set in the binary representation of n.

The programs for A376091, there is no canonical definition to state claims against.
-/

/-! ## A376091.P8984631562724284263

`A376033(∑[4*n])`
-/

namespace A376091.P8984631562724284263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376091.P8984631562724284263

/-! ## A376091.P15002004410525487251

`A376033(A046092(n))%A018039(n+1)`
-/

namespace A376091.P15002004410525487251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376033 (A046092 n).toNat) (A018039 (n + 1))

end

end A376091.P15002004410525487251

/-! ## A376091.P5230005652637174036

`and(A000225(2*n+1), A376033(A046092(n)))`
-/

namespace A376091.P5230005652637174036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n + 1)) (A376033 (A046092 n).toNat)

end

end A376091.P5230005652637174036

/-! ## A376091.P7544280148543029777

`A376033(A046092(n))+A002448(A053672(n+1))`
-/

namespace A376091.P7544280148543029777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376033 (A046092 n).toNat + A002448 (A053672 (n + 1)).toNat

end

end A376091.P7544280148543029777

/-! ## A376091.P2868858235955560137

`A000225(A236313(2*n+3))+A376033(A046092(n))-1`
-/

namespace A376091.P2868858235955560137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A236313 (2 * n + 3)).toNat + (A376033 (A046092 n).toNat - 1)

end

end A376091.P2868858235955560137

/-! ## A376091.P11504718972279357214

`A376033(A046092(n))+A341620(A367760(n+1))`
-/

namespace A376091.P11504718972279357214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376033 (A046092 n).toNat + A341620 (A367760 (n + 1)).toNat

end

end A376091.P11504718972279357214

/-!
# A376092: 10^n-th powerful number.

The programs for A376092, there is no canonical definition to state claims against.
-/

/-! ## A376092.P14609315415415586593

`A001694(10^n)`
-/

namespace A376092.P14609315415415586593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (10 ^ n)

end

end A376092.P14609315415415586593

/-!
# A376093: E.g.f. A(x) satisfies A(x) = x * exp(2*A(x)) * (1 + A(x)).

The programs for A376093, there is no canonical definition to state claims against.
-/

/-! ## A376093.P10800839573880433679

`n*A173400(A041807(n))`
-/

namespace A376093.P10800839573880433679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A173400 (A041807 n).toNat

end

end A376093.P10800839573880433679

/-!
# A376094: E.g.f. A(x) satisfies A(x) = x * exp(3*A(x)) * (1 + A(x)).

The programs for A376094, there is no canonical definition to state claims against.
-/

/-! ## A376094.P6431466336830612562

`n*A380830(A028310(n)-1)`
-/

namespace A376094.P6431466336830612562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A380830 (A028310 n - 1).toNat

end

end A376094.P6431466336830612562

/-!
# A376095: a(0) = 1; a(n) = Sum_{k=0..n-1} (k+1)^2 * a(k) * a(n-k-1).

The programs for A376095, there is no canonical definition to state claims against.
-/

/-! ## A376095.P4234216935434585760

`A179662(A026531(n))`
-/

namespace A376095.P4234216935434585760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179662 (A026531 n).toNat

end

end A376095.P4234216935434585760

/-!
# A376098: Expansion of e.g.f. -LambertW(-2*x / (1 - x))/2.

The programs for A376098, there is no canonical definition to state claims against.
-/

/-! ## A376098.P17303495784769232367

`n*A352448(abs(1-n))`
-/

namespace A376098.P17303495784769232367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A352448 |1 - (n : ℤ)|.toNat

end

end A376098.P17303495784769232367

/-!
# A376099: Expansion of e.g.f. -LambertW(-3*x / (1 - x))/3.

The programs for A376099, there is no canonical definition to state claims against.
-/

/-! ## A376099.P5482287222201224380

`n*A361182(abs(1-n))`
-/

namespace A376099.P5482287222201224380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A361182 |1 - (n : ℤ)|.toNat

end

end A376099.P5482287222201224380

/-! ## A376099.P11661922843817440632

`A361182(n)-A361212(n)`
-/

namespace A376099.P11661922843817440632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361182 n - A361212 n

end

end A376099.P11661922843817440632

