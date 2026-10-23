import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

/-!
# A299700: Squarefree part of 1!*2!*3!*...*n!: The product of factorials one through n divided by its largest square divisor.

The programs for A299700, there is no canonical definition to state claims against.
-/

/-! ## A299700.P946539517214254359

`A007913((n+1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A299700.P946539517214254359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007913 ((n + 1 : ℤ) * a (n - 2)).toNat

end

end A299700.P946539517214254359

/-! ## A299700.P9478809746762111287

`A007913(∏[(n+1)/a(n-1)])` with `a(0)=1`
-/

namespace A299700.P9478809746762111287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299700.P9478809746762111287

/-! ## A299700.P9915337276915156652

`sqrt(A055491((n+1)*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A299700.P9915337276915156652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  Real.sqrt (A055491 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * a (n - 2))).toNat : ℝ)

end

end A299700.P9915337276915156652

/-! ## A299700.P17031391626165640094

`A007913(A248809(∑[n]))`
-/

namespace A299700.P17031391626165640094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299700.P17031391626165640094

/-! ## A299700.P2488096750200340347

`A007913(Δ[A129981(n)])`
-/

namespace A299700.P2488096750200340347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A299700.P2488096750200340347

/-!
# A299701: Number of distinct subset-sums of the integer partition with Heinz number n.

The programs for A299701, there is no canonical definition to state claims against.
-/

/-! ## A299701.P7162172835063118155

`A304793(n+1)+1`
-/

namespace A299701.P7162172835063118155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) + 1

end

end A299701.P7162172835063118155

/-! ## A299701.P1874911054526088760

`A348553(A304793(n+1))`
-/

namespace A299701.P1874911054526088760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A304793 (n + 1)).toNat

end

end A299701.P1874911054526088760

/-! ## A299701.P9466635384322844834

`Δ[A006218(n)]-A325801(n+1)`
-/

namespace A299701.P9466635384322844834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325801 (n + 1)

end

end A299701.P9466635384322844834

/-! ## A299701.P16317429929095320288

`A301979(n+1)+A301957(n+1)`
-/

namespace A299701.P16317429929095320288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (n + 1) + A301957 (n + 1)

end

end A299701.P16317429929095320288

/-! ## A299701.P7987697650789346327

`A000005(n+1)-A325801(n+1)`
-/

namespace A299701.P7987697650789346327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A325801 (n + 1)

end

end A299701.P7987697650789346327

/-! ## A299701.P14563275080444576874

`A056239(A105555(n+1))-A325801(n+1)`
-/

namespace A299701.P14563275080444576874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105555 (n + 1)).toNat - A325801 (n + 1)

end

end A299701.P14563275080444576874

/-! ## A299701.P11440748120036686299

`A056239(n+1)+1-A325799(n+1)`
-/

namespace A299701.P11440748120036686299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (1 - A325799 (n + 1))

end

end A299701.P11440748120036686299

/-!
# A299702: Heinz numbers of knapsack partitions.

The programs for A299702, there is no canonical definition to state claims against.
-/

/-! ## A299702.P1626121036360467946

`eq[0, A325801(n+1)]+1`
-/

namespace A299702.P1626121036360467946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299702.P1626121036360467946

/-! ## A299702.P17411900450397414314

`lt[A048250(A325801(n+1)+1), 2]+1`
-/

namespace A299702.P17411900450397414314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A325801 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A299702.P17411900450397414314

/-! ## A299702.P310572150476619590

`eq[A000005(n+1), A299701(n+1)]+1`
-/

namespace A299702.P310572150476619590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299702.P310572150476619590

/-! ## A299702.P17445208027681954457

`eq[A000005(n+1), A301855(n+1)]+1`
-/

namespace A299702.P17445208027681954457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299702.P17445208027681954457

/-! ## A299702.P13596275941219009102

`lt[A057117(n+1)*A325801(n+1), 2]+1`
-/

namespace A299702.P13596275941219009102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (n + 1) * A325801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A299702.P13596275941219009102

/-! ## A299702.P3426190215803294022

`comp[A325777(n+1)-1]+1`
-/

namespace A299702.P3426190215803294022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299702.P3426190215803294022

/-! ## A299702.P12327222321035775155

`lt[A141056(n), A371447(n+1)²]`
-/

namespace A299702.P12327222321035775155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299702.P12327222321035775155

/-! ## A299702.P14996909487070343007

`lt[A027642(n), n*A125006(n+1)]`
-/

namespace A299702.P14996909487070343007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299702.P14996909487070343007

/-! ## A299702.P1231086503062203564

`lt[A027642(n), A090570(A032532(n+1))]`
-/

namespace A299702.P1231086503062203564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (A032532 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299702.P1231086503062203564

/-!
# A299705: Number of ways to dissect an equilateral triangle into n non-overlapping equilateral triangles counting isomorphisms only once.

The programs for A299705, there is no canonical definition to state claims against.
-/

/-! ## A299705.P2086296729484740539

`A168201(xor(A027118(n), A035080(n)))`
-/

namespace A299705.P2086296729484740539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Int.xor (A027118 n) (A035080 n)).toNat

end

end A299705.P2086296729484740539

/-!
# A299707: Numbers m such that m^2 + 1 can be expressed in more than one way as j^2 + k^2 with j > k > 1.

The programs for A299707, there is no canonical definition to state claims against.
-/

/-! ## A299707.P13552642083764546997

`floor(sqrt(A299708(n+1)))`
-/

namespace A299707.P13552642083764546997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A299708 (n + 1))

end

end A299707.P13552642083764546997

/-! ## A299707.P5707941689460052660

`A000027(round(sqrt(A299708(n+1))))`
-/

namespace A299707.P5707941689460052660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) : ℝ))).toNat

end

end A299707.P5707941689460052660

/-! ## A299707.P17416946741810729796

`A000027(sqrt(A299708(n+1)-1))`
-/

namespace A299707.P17416946741810729796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) - 1 : ℝ))).toNat

end

end A299707.P17416946741810729796

/-! ## A299707.P9651964283002698147

`sqrt(A299708(n+1)-A033999(n)²)`
-/

namespace A299707.P9651964283002698147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A299708 (n + 1) - A033999 n ^ 2 : ℝ)

end

end A299707.P9651964283002698147

/-! ## A299707.P4410157081624969000

`round(sqrt(A299708(n+1)))%A004771(n)²`
-/

namespace A299707.P4410157081624969000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) : ℝ))) (A004771 n ^ 2)

end

end A299707.P4410157081624969000

/-! ## A299707.P13943560156309106232

`round(sqrt(A299708(n+1)+A050796(n+1)))`
-/

namespace A299707.P13943560156309106232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) + A050796 (n + 1) : ℝ))

end

end A299707.P13943560156309106232

/-! ## A299707.P11231639716283314550

`round(sqrt(A299708(n+1)%A300166(n+1)))`
-/

namespace A299707.P11231639716283314550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A299708 (n + 1)) (A300166 (n + 1)) : ℝ))

end

end A299707.P11231639716283314550

/-! ## A299707.P774196844073722162

`eq[21, 21%A333167(n)]`
-/

namespace A299707.P774196844073722162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 21 (A333167 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299707.P774196844073722162

/-! ## A299707.P3776162397476596503

`A028310(round(sqrt(A299708(n+1))))`
-/

namespace A299707.P3776162397476596503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) : ℝ))).toNat

end

end A299707.P3776162397476596503

/-! ## A299707.P13200662383749262363

`lt[A040021(n+1), A193432(n)]`
-/

namespace A299707.P13200662383749262363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299707.P13200662383749262363

/-! ## A299707.P8250107413638611752

`A028310(sqrt(A299708(n+1)-1))`
-/

namespace A299707.P8250107413638611752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A299708 (n + 1) - 1 : ℝ))).toNat

end

end A299707.P8250107413638611752

/-!
# A299708: Numbers of the form m^2 + 1 that can be expressed in more than one way as j^2 + k^2 with j > k > 1.

The programs for A299708, there is no canonical definition to state claims against.
-/

/-! ## A299708.P1805503255418838638

`1+A299707(n+1)²`
-/

namespace A299708.P1805503255418838638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A299707 (n + 1) ^ 2

end

end A299708.P1805503255418838638

/-! ## A299708.P11613088981867911612

`A002522(A299707(n+1))`
-/

namespace A299708.P11613088981867911612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A299707 (n + 1)).toNat

end

end A299708.P11613088981867911612

/-! ## A299708.P8909644124864295896

`A000290(lt[A040021(n+1), A193432(n)])+1`
-/

namespace A299708.P8909644124864295896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A299708.P8909644124864295896

/-! ## A299708.P15897095599312208820

`A000290(A299707(n+1))+char[A006368(n)]`
-/

namespace A299708.P15897095599312208820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A299707 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A299708.P15897095599312208820

/-! ## A299708.P925564805746716067

`A033638(2*A299707(n+1))`
-/

namespace A299708.P925564805746716067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A299707 (n + 1)).toNat

end

end A299708.P925564805746716067

/-! ## A299708.P3048928386049203296

`A025441(A025302(n+1))+A000290(A299707(n+1))`
-/

namespace A299708.P3048928386049203296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A025302 (n + 1)).toNat + A000290 (A299707 (n + 1)).toNat

end

end A299708.P3048928386049203296

/-! ## A299708.P42951387228672857

`∩[A025313(n+1), n²+1]`
-/

namespace A299708.P42951387228672857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A299708.P42951387228672857

/-! ## A299708.P3953225686353081733

`∩[A002522(n), A025313(n+1)]`
-/

namespace A299708.P3953225686353081733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299708.P3953225686353081733

/-! ## A299708.P6259229747352373602

`∩[A034106(n+1), A025313(n+1)]`
-/

namespace A299708.P6259229747352373602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299708.P6259229747352373602

/-! ## A299708.P13379483642059034752

`∩[A050800(n+1), A025313(n+1)]`
-/

namespace A299708.P13379483642059034752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299708.P13379483642059034752

/-! ## A299708.P13335135168847323371

`∩[A134406(n+1), A025313(n+1)]`
-/

namespace A299708.P13335135168847323371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299708.P13335135168847323371

/-! ## A299708.P4792320960754039969

`∩[A216765(n+1), A025313(n+1)]`
-/

namespace A299708.P4792320960754039969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299708.P4792320960754039969

/-! ## A299708.P17893854552178114753

`A010052(A000290(n))+A000290(A299707(n+1))`
-/

namespace A299708.P17893854552178114753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat + A000290 (A299707 (n + 1)).toNat

end

end A299708.P17893854552178114753

/-!
# A299715: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299715, there is no canonical definition to state claims against.
-/

/-! ## A299715.P7270783114033520380

`A299721(∑[4*n]+1)`
-/

namespace A299715.P7270783114033520380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299715.P7270783114033520380

/-! ## A299715.P7631815754225047632

`record[A003982(n)*A299721(n+1)]`
-/

namespace A299715.P7631815754225047632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299715.P7631815754225047632

/-! ## A299715.P17730891991784739618

`record[gcd(A114327(n), A299721(n+1))]`
-/

namespace A299715.P17730891991784739618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299715.P17730891991784739618

/-! ## A299715.P1263766953829681888

`A299721(A001844(n))+A011732(n)`
-/

namespace A299715.P1263766953829681888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A001844 n).toNat + A011732 n

end

end A299715.P1263766953829681888

/-! ## A299715.P17391993582544239625

`lcm(A033999(n), A299721(A001844(n)))`
-/

namespace A299715.P17391993582544239625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299721 (A001844 n).toNat)

end

end A299715.P17391993582544239625

/-!
# A299716: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299716, there is no canonical definition to state claims against.
-/

/-! ## A299716.P13608198096527147710

`A299721(∑[n+2]+4)`
-/

namespace A299716.P13608198096527147710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299716.P13608198096527147710

/-! ## A299716.P2258363489860080451

`or(C(n, n²), A299721(A167614(n+1)))`
-/

namespace A299716.P2258363489860080451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A299721 (A167614 (n + 1)).toNat)

end

end A299716.P2258363489860080451

/-! ## A299716.P3020585137821860835

`A326292(n)+A299721(A167614(n+1))`
-/

namespace A299716.P3020585137821860835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A299721 (A167614 (n + 1)).toNat

end

end A299716.P3020585137821860835

/-! ## A299716.P5734510426297163708

`A299721(A167614(n+1))^A178334(n)`
-/

namespace A299716.P5734510426297163708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299721 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A299716.P5734510426297163708

/-! ## A299716.P6428440934968154981

`or(A025465(n), A299721(A167614(n+1)))`
-/

namespace A299716.P6428440934968154981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A299721 (A167614 (n + 1)).toNat)

end

end A299716.P6428440934968154981

/-!
# A299717: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299717, there is no canonical definition to state claims against.
-/

/-! ## A299717.P4408824119262449596

`A299721(A374004(n+1))`
-/

namespace A299717.P4408824119262449596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A374004 (n + 1)).toNat

end

end A299717.P4408824119262449596

/-! ## A299717.P16152164155826672681

`A299721(A052905(n)+9)`
-/

namespace A299717.P16152164155826672681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A052905 n + 9).toNat

end

end A299717.P16152164155826672681

/-! ## A299717.P1888649504924215674

`A299721(A167614(n+2)+1)`
-/

namespace A299717.P1888649504924215674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A167614 (n + 2) + 1).toNat

end

end A299717.P1888649504924215674

/-! ## A299717.P11131157257340453196

`A299721(eq[5, A131818(n+1)])`
-/

namespace A299717.P11131157257340453196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299717.P11131157257340453196

/-! ## A299717.P15754384985166877912

`A299721(A141214(n+1))`
-/

namespace A299717.P15754384985166877912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A141214 (n + 1)).toNat

end

end A299717.P15754384985166877912

/-!
# A299718: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299718, there is no canonical definition to state claims against.
-/

/-! ## A299718.P3661004641469254899

`A299721(A374005(n+1))`
-/

namespace A299718.P3661004641469254899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A374005 (n + 1)).toNat

end

end A299718.P3661004641469254899

/-! ## A299718.P9249405303366952747

`A299721(A167499(n+3))`
-/

namespace A299718.P9249405303366952747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A167499 (n + 3)).toNat

end

end A299718.P9249405303366952747

/-! ## A299718.P8902589245202708781

`A299721(A155212(n)+13)`
-/

namespace A299718.P8902589245202708781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A155212 n + 13).toNat

end

end A299718.P8902589245202708781

/-! ## A299718.P3671587819150222131

`A299721(A056000(n)+15)`
-/

namespace A299718.P3671587819150222131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A056000 n + 15).toNat

end

end A299718.P3671587819150222131

/-! ## A299718.P15616498214132238696

`A299721(A046691(n+2)+9)`
-/

namespace A299718.P15616498214132238696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A046691 (n + 2) + 9).toNat

end

end A299718.P15616498214132238696

/-!
# A299719: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299719, there is no canonical definition to state claims against.
-/

/-! ## A299719.P3903433332670126739

`A299721(A374007(n+1))`
-/

namespace A299719.P3903433332670126739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A374007 (n + 1)).toNat

end

end A299719.P3903433332670126739

/-! ## A299719.P7576146232171192349

`A299721(eq[7, A131818(n+1)])`
-/

namespace A299719.P7576146232171192349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299719.P7576146232171192349

/-! ## A299719.P15428799074543919248

`A299721(A000124(n+6)-(n+1))`
-/

namespace A299719.P15428799074543919248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A299719.P15428799074543919248

/-! ## A299719.P17057568994494945973

`A299721(eq[3, A219347(n)])`
-/

namespace A299719.P17057568994494945973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299719.P17057568994494945973

/-! ## A299719.P2749605557717712147

`A299721(eq[5, A193592(n)])`
-/

namespace A299719.P2749605557717712147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299719.P2749605557717712147

/-!
# A299720: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299720, there is no canonical definition to state claims against.
-/

/-! ## A299720.P10395237374911807343

`A299721(A374008(n+1))`
-/

namespace A299720.P10395237374911807343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A374008 (n + 1)).toNat

end

end A299720.P10395237374911807343

/-! ## A299720.P10015873974976089067

`A299721(eq[11, A066657(n)])`
-/

namespace A299720.P10015873974976089067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299720.P10015873974976089067

/-! ## A299720.P13325165108097056700

`A299721(A000217(n+6)+7)`
-/

namespace A299720.P13325165108097056700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (A000217 (n + 6) + 7).toNat

end

end A299720.P13325165108097056700

/-! ## A299720.P9951912141031213994

`A299721(eq[8, A131818(n+1)])`
-/

namespace A299720.P9951912141031213994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299720.P9951912141031213994

/-! ## A299720.P12600857455081237821

`A299721(eq[4, A219347(n)])`
-/

namespace A299720.P12600857455081237821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299720.P12600857455081237821

/-!
# A299721: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299721, there is no canonical definition to state claims against.
-/

/-! ## A299721.P8056455603416340448

`A300342(n+1)+A016389(A022166(n))`
-/

namespace A299721.P8056455603416340448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (n + 1) + A016389 (A022166 n).toNat

end

end A299721.P8056455603416340448

/-! ## A299721.P7282484059903061896

`A300342(n+1)+A016389(A176561(n))`
-/

namespace A299721.P7282484059903061896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (n + 1) + A016389 (A176561 n).toNat

end

end A299721.P7282484059903061896

/-! ## A299721.P17835513974563566007

`A300342(n+1)-A014707(A022171(n))`
-/

namespace A299721.P17835513974563566007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (n + 1) - A014707 (A022171 n).toNat

end

end A299721.P17835513974563566007

/-! ## A299721.P7192375213014911438

`A300342(n+1)-A025465(A022345(n))`
-/

namespace A299721.P7192375213014911438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (n + 1) - A025465 (A022345 n).toNat

end

end A299721.P7192375213014911438

/-! ## A299721.P3905929802776326144

`A300342(n+1)-A079978(A344493(n))`
-/

namespace A299721.P3905929802776326144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (n + 1) - A079978 (A344493 n).toNat

end

end A299721.P3905929802776326144

/-!
# A299722: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299722, there is no canonical definition to state claims against.
-/

/-! ## A299722.P11056934192254816667

`A299728(∑[4*n]+1)`
-/

namespace A299722.P11056934192254816667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299722.P11056934192254816667

/-! ## A299722.P16490374252148347350

`record[A003982(n)*A299728(n+1)]`
-/

namespace A299722.P16490374252148347350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299722.P16490374252148347350

/-! ## A299722.P3446558524939099093

`or(A003982(n+1), A299728(A001844(n)))`
-/

namespace A299722.P3446558524939099093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (n + 1)) (A299728 (A001844 n).toNat)

end

end A299722.P3446558524939099093

/-! ## A299722.P10705561598552005827

`gcd(2, A000040(n+3))*A299728(A001844(n))`
-/

namespace A299722.P10705561598552005827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 3)) : ℤ) * A299728 (A001844 n).toNat

end

end A299722.P10705561598552005827

/-! ## A299722.P9385699112447891284

`A000045(round(n/(n+1)))*A299728(A001844(n))`
-/

namespace A299722.P9385699112447891284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A299728 (A001844 n).toNat

end

end A299722.P9385699112447891284

/-!
# A299723: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299723, there is no canonical definition to state claims against.
-/

/-! ## A299723.P11093063349535890904

`A299728(∑[n+2]+4)`
-/

namespace A299723.P11093063349535890904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299723.P11093063349535890904

/-! ## A299723.P10367333024917295620

`A299728(A167614(n+1))+A185238(n)`
-/

namespace A299723.P10367333024917295620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A167614 (n + 1)).toNat + A185238 n

end

end A299723.P10367333024917295620

/-! ## A299723.P3613444986731216297

`A299728(A167614(n+1))+A185284(n)`
-/

namespace A299723.P3613444986731216297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A167614 (n + 1)).toNat + A185284 n

end

end A299723.P3613444986731216297

/-! ## A299723.P2307661270004249378

`A299728(A167614(n+1))+A256974(n)`
-/

namespace A299723.P2307661270004249378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A167614 (n + 1)).toNat + A256974 n

end

end A299723.P2307661270004249378

/-! ## A299723.P6904439256288093500

`A299728(A167614(n+1))^A178334(n)`
-/

namespace A299723.P6904439256288093500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299728 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A299723.P6904439256288093500

/-!
# A299724: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299724, there is no canonical definition to state claims against.
-/

/-! ## A299724.P17743478291369082632

`A299728(∑[n+3]+7)`
-/

namespace A299724.P17743478291369082632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299724.P17743478291369082632

/-! ## A299724.P3354654107806550122

`gcd(n, ∏{p}[n+1, #])*A299728(A374004(n+1))`
-/

namespace A299724.P3354654107806550122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A299728 (A374004 (n + 1)).toNat

end

end A299724.P3354654107806550122

/-! ## A299724.P15672053111970822712

`gcd(2, A000533(n))*A299728(A374004(n+1))`
-/

namespace A299724.P15672053111970822712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000533 n) : ℤ) * A299728 (A374004 (n + 1)).toNat

end

end A299724.P15672053111970822712

/-! ## A299724.P8209066422923076239

`A299728(A055998(n+2))%A299736(n+5)`
-/

namespace A299724.P8209066422923076239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299728 (A055998 (n + 2)).toNat) (A299736 (n + 5))

end

end A299724.P8209066422923076239

/-! ## A299724.P4445558250835765480

`A299728(A055998(n+2))+A000007(3*(n+1))`
-/

namespace A299724.P4445558250835765480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A055998 (n + 2)).toNat + A000007 (3 * (n + 1))

end

end A299724.P4445558250835765480

/-!
# A299725: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299725, there is no canonical definition to state claims against.
-/

/-! ## A299725.P15031844360028687809

`A299728(A374005(n+1))`
-/

namespace A299725.P15031844360028687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A374005 (n + 1)).toNat

end

end A299725.P15031844360028687809

/-! ## A299725.P14608949057828665532

`A299728(A000096(n+3)+6)-A000007(n+1)`
-/

namespace A299725.P14608949057828665532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A000096 (n + 3) + 6).toNat - A000007 (n + 1)

end

end A299725.P14608949057828665532

/-! ## A299725.P4466702879259863913

`A000034(2*n)*A299728(A000096(n+3)+6)`
-/

namespace A299725.P4466702879259863913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A299728 (A000096 (n + 3) + 6).toNat

end

end A299725.P4466702879259863913

/-! ## A299725.P14301246395610857770

`A000108(C(n, 64))*A299728(A000096(n+3)+6)`
-/

namespace A299725.P14301246395610857770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A299728 (A000096 (n + 3) + 6).toNat

end

end A299725.P14301246395610857770

/-! ## A299725.P14138301643271336731

`A299728(∑[n+5]+6)`
-/

namespace A299725.P14138301643271336731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299725.P14138301643271336731

/-!
# A299726: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299726, there is no canonical definition to state claims against.
-/

/-! ## A299726.P4941222912336254172

`A299728(A374007(n+1))`
-/

namespace A299726.P4941222912336254172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A374007 (n + 1)).toNat

end

end A299726.P4941222912336254172

/-! ## A299726.P6274746922580130673

`A299728(eq[7, A131818(n+1)])`
-/

namespace A299726.P6274746922580130673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299726.P6274746922580130673

/-! ## A299726.P10745791847115319324

`A299728(A052905(n+3))`
-/

namespace A299726.P10745791847115319324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A052905 (n + 3)).toNat

end

end A299726.P10745791847115319324

/-! ## A299726.P9665350924372441845

`A299728(eq[3, A219347(n)])`
-/

namespace A299726.P9665350924372441845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299726.P9665350924372441845

/-! ## A299726.P8728729495031844847

`A299728(eq[5, A193592(n)])`
-/

namespace A299726.P8728729495031844847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299726.P8728729495031844847

/-!
# A299727: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299727, there is no canonical definition to state claims against.
-/

/-! ## A299727.P10992712160579898069

`A299728(A374008(n+1))`
-/

namespace A299727.P10992712160579898069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A374008 (n + 1)).toNat

end

end A299727.P10992712160579898069

/-! ## A299727.P15498455706061958278

`A299728(eq[8, A131818(n+1)])`
-/

namespace A299727.P15498455706061958278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299727.P15498455706061958278

/-! ## A299727.P13252845059990445264

`A299728(A055999(n+4))`
-/

namespace A299727.P13252845059990445264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (A055999 (n + 4)).toNat

end

end A299727.P13252845059990445264

/-! ## A299727.P13083772532669987437

`A299728(eq[4, A219347(n)])`
-/

namespace A299727.P13083772532669987437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299727.P13083772532669987437

/-! ## A299727.P14378462430154449353

`A299728(eq[6, A193592(n)])`
-/

namespace A299727.P14378462430154449353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299727.P14378462430154449353

/-!
# A299729: Heinz numbers of non-knapsack partitions.

The programs for A299729, there is no canonical definition to state claims against.
-/

/-! ## A299729.P9808232725103551629

`comp[A299702(n+1)-1]+1`
-/

namespace A299729.P9808232725103551629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299729.P9808232725103551629

/-! ## A299729.P5870470852768794790

`comp[xor(n, -A325801(n+1))]+1`
-/

namespace A299729.P5870470852768794790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-A325801 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299729.P5870470852768794790

/-! ## A299729.P102802300126913780

`lt[1, A325801(A028310(n))+1]`
-/

namespace A299729.P102802300126913780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A299729.P102802300126913780

/-! ## A299729.P6183158791243764736

`A325777(n+1)`
-/

namespace A299729.P6183158791243764736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (n + 1)

end

end A299729.P6183158791243764736

/-! ## A299729.P11781720650760545128

`record[A325777(A100727(n))]`
-/

namespace A299729.P11781720650760545128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299729.P11781720650760545128

/-!
# A299731: Number of partitions of 3*n that have exactly n prime parts.

The programs for A299731, there is no canonical definition to state claims against.
-/

/-! ## A299731.P9943251134758185340

`A222656(∑[A007494(3*n)])`
-/

namespace A299731.P9943251134758185340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P9943251134758185340

/-! ## A299731.P13290682298482434285

`A222656(∑[ceil(A017233(n)/2)])`
-/

namespace A299731.P13290682298482434285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017233 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P13290682298482434285

/-! ## A299731.P4810766720077615952

`record[A222656(A025872(6*n+8))]`
-/

namespace A299731.P4810766720077615952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A025872 (6 * n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299731.P4810766720077615952

/-! ## A299731.P14673915286230661917

`A222656(A002620(3*n+1)+n)`
-/

namespace A299731.P14673915286230661917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 (3 * n + 1) + (n : ℤ)).toNat

end

end A299731.P14673915286230661917

/-! ## A299731.P631341137993355461

`A222656(A076921(3*n+1)+n)`
-/

namespace A299731.P631341137993355461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (3 * n + 1) + (n : ℤ)).toNat

end

end A299731.P631341137993355461

/-! ## A299731.P10090179880719098075

`A222656(A182531(3*n+1)+n)`
-/

namespace A299731.P10090179880719098075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A182531 (3 * n + 1) + (n : ℤ)).toNat

end

end A299731.P10090179880719098075

/-! ## A299731.P2125626291299510270

`A222656(∑[∑[A294188(a(n-1))+4]])` with `a(0)=3`
-/

namespace A299731.P2125626291299510270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A294188 (f2 (n - 1)).toNat + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P2125626291299510270

/-! ## A299731.P1159344657783162544

`A222656(∑[A008619(A017221(n))])`
-/

namespace A299731.P1159344657783162544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A017221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P1159344657783162544

/-! ## A299731.P9995619674872479643

`A222656(∑[A057353(A016969(n))])`
-/

namespace A299731.P9995619674872479643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P9995619674872479643

/-! ## A299731.P7125286920950197865

`A222656(∑[A110654(A017233(n))])`
-/

namespace A299731.P7125286920950197865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A017233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299731.P7125286920950197865

/-!
# A299732: a(n) has exactly (a(n) - n) / 2 partitions with exactly (a(n) - n) / 2 prime parts.

The programs for A299732, there is no canonical definition to state claims against.
-/

/-! ## A299732.P17069900563185773487

`2*A299731(n)+n`
-/

namespace A299732.P17069900563185773487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299731 n + (n : ℤ)

end

end A299732.P17069900563185773487

/-! ## A299732.P5604943708034589960

`2*A222656(∑[A007494(3*n)])+n`
-/

namespace A299732.P5604943708034589960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A299732.P5604943708034589960

/-! ## A299732.P473030904210773804

`2*record[A222656(A025872(6*n+8))]+n`
-/

namespace A299732.P473030904210773804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A025872 (6 * n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A299732.P473030904210773804

/-! ## A299732.P13370931733546347756

`A007318(∑[n])-(1-n-2*A299731(n))`
-/

namespace A299732.P13370931733546347756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - (1 - (n : ℤ) - 2 * A299731 n)

end

end A299732.P13370931733546347756

/-! ## A299732.P14644589153659973899

`A299731(n)+A299731(n)+A118759(n)`
-/

namespace A299732.P14644589153659973899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299731 n + (A299731 n + A118759 n)

end

end A299732.P14644589153659973899

/-!
# A299734: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299734, there is no canonical definition to state claims against.
-/

/-! ## A299734.P15187036930149511049

`A299740(∑[4*n]+1)`
-/

namespace A299734.P15187036930149511049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299734.P15187036930149511049

/-! ## A299734.P1317632683456431598

`record[A003982(n)*A299740(n+1)]`
-/

namespace A299734.P1317632683456431598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299734.P1317632683456431598

/-! ## A299734.P5367377252714559271

`record[A214505(n)*A299740(n+1)]`
-/

namespace A299734.P5367377252714559271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299734.P5367377252714559271

/-! ## A299734.P14158551869908886011

`record[gcd(A080232(n), A299740(n+1))]`
-/

namespace A299734.P14158551869908886011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A299740 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299734.P14158551869908886011

/-! ## A299734.P16554254426171247588

`(C(n, 9)+1)*A299740(A001844(n))`
-/

namespace A299734.P16554254426171247588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 9 + 1 : ℤ) * A299740 (A001844 n).toNat

end

end A299734.P16554254426171247588

/-!
# A299735: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299735, there is no canonical definition to state claims against.
-/

/-! ## A299735.P15374850181548203986

`A299740(∑[n+2]+4)`
-/

namespace A299735.P15374850181548203986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299735.P15374850181548203986

/-! ## A299735.P7467463080153835140

`A326292(n)+A299740(A167614(n+1))`
-/

namespace A299735.P7467463080153835140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A299740 (A167614 (n + 1)).toNat

end

end A299735.P7467463080153835140

/-! ## A299735.P13975300845310538358

`A254730(n)*A299740(A167614(n+1))`
-/

namespace A299735.P13975300845310538358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A299740 (A167614 (n + 1)).toNat

end

end A299735.P13975300845310538358

/-! ## A299735.P13652909491332816512

`lcm(A054977(n), A299740(A167614(n+1)))`
-/

namespace A299735.P13652909491332816512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A299740 (A167614 (n + 1)).toNat)

end

end A299735.P13652909491332816512

/-! ## A299735.P4809971777320460542

`A299740(A167614(n+1))%A252045(n+1)`
-/

namespace A299735.P4809971777320460542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299740 (A167614 (n + 1)).toNat) (A252045 (n + 1))

end

end A299735.P4809971777320460542

/-!
# A299736: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299736, there is no canonical definition to state claims against.
-/

/-! ## A299736.P8059466749807304510

`A299740(A374004(n+1))`
-/

namespace A299736.P8059466749807304510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A374004 (n + 1)).toNat

end

end A299736.P8059466749807304510

/-! ## A299736.P630924479184361717

`A299740(A141214(n)+7)`
-/

namespace A299736.P630924479184361717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A141214 n + 7).toNat

end

end A299736.P630924479184361717

/-! ## A299736.P5069645577514587132

`A299740(A052905(n)+9)`
-/

namespace A299736.P5069645577514587132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A052905 n + 9).toNat

end

end A299736.P5069645577514587132

/-! ## A299736.P11900070915623251617

`A299740(A167614(n+2)+1)`
-/

namespace A299736.P11900070915623251617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A167614 (n + 2) + 1).toNat

end

end A299736.P11900070915623251617

/-! ## A299736.P9392299602585371938

`A299740(Δ[A264443(n)-n²])`
-/

namespace A299736.P9392299602585371938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (f1 (n + 1) - f1 n).toNat

end

end A299736.P9392299602585371938

/-!
# A299737: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299737, there is no canonical definition to state claims against.
-/

/-! ## A299737.P12849554718449694167

`A299740(A374005(n+1))`
-/

namespace A299737.P12849554718449694167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A374005 (n + 1)).toNat

end

end A299737.P12849554718449694167

/-! ## A299737.P10101215934226003125

`A299740(A167614(n+3)+2)`
-/

namespace A299737.P10101215934226003125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A167614 (n + 3) + 2).toNat

end

end A299737.P10101215934226003125

/-! ## A299737.P11141166349300771370

`A299740(eq[6, A131818(n+1)])`
-/

namespace A299737.P11141166349300771370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299737.P11141166349300771370

/-! ## A299737.P3938061892767159159

`A299740(Δ[A264443(n)])`
-/

namespace A299737.P3938061892767159159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (f1 (n + 1) - f1 n).toNat

end

end A299737.P3938061892767159159

/-! ## A299737.P10127691973920201494

`A299740(eq[4, A193592(n)])`
-/

namespace A299737.P10127691973920201494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299737.P10127691973920201494

/-!
# A299738: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299738, there is no canonical definition to state claims against.
-/

/-! ## A299738.P3319979319241549545

`A299740(A374007(n+1))`
-/

namespace A299738.P3319979319241549545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A374007 (n + 1)).toNat

end

end A299738.P3319979319241549545

/-! ## A299738.P4373576373191764565

`A299740(eq[7, A131818(n+1)])`
-/

namespace A299738.P4373576373191764565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299738.P4373576373191764565

/-! ## A299738.P6200535333152405692

`A299740(eq[3, A219347(n)])`
-/

namespace A299738.P6200535333152405692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299738.P6200535333152405692

/-! ## A299738.P9239605850424523388

`A299740(eq[5, A193592(n)])`
-/

namespace A299738.P9239605850424523388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299738.P9239605850424523388

/-! ## A299738.P7614700350062282830

`A299740(A055999(n+3)+1)`
-/

namespace A299738.P7614700350062282830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A055999 (n + 3) + 1).toNat

end

end A299738.P7614700350062282830

/-!
# A299739: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299739, there is no canonical definition to state claims against.
-/

/-! ## A299739.P9736487428551520625

`A299740(A374008(n+1))`
-/

namespace A299739.P9736487428551520625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (A374008 (n + 1)).toNat

end

end A299739.P9736487428551520625

/-! ## A299739.P10322201269942316348

`A299740(eq[8, A131818(n+1)])`
-/

namespace A299739.P10322201269942316348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299739.P10322201269942316348

/-! ## A299739.P14908210670318035780

`A299740(eq[4, A219347(n)])`
-/

namespace A299739.P14908210670318035780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299739.P14908210670318035780

/-! ## A299739.P7139470427070485207

`A299740(eq[6, A193592(n)])`
-/

namespace A299739.P7139470427070485207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299739.P7139470427070485207

/-! ## A299739.P14618593628085859871

`A299740(eq[7, A200370(n+1)])`
-/

namespace A299739.P14618593628085859871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299739.P14618593628085859871

/-!
# A299740: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299740, there is no canonical definition to state claims against.
-/

/-! ## A299740.P4491934245563434640

`A298970(n+1)+A151795(A099594(n))`
-/

namespace A299740.P4491934245563434640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (n + 1) + A151795 (A099594 n).toNat

end

end A299740.P4491934245563434640

/-! ## A299740.P4661860446103673866

`A298970(n+1)+A054911(A299905(n))`
-/

namespace A299740.P4661860446103673866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (n + 1) + A054911 (A299905 n).toNat

end

end A299740.P4661860446103673866

/-! ## A299740.P429584013068081843

`A342770(A001263(n+1))+A298970(n+1)`
-/

namespace A299740.P429584013068081843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342770 (A001263 (n + 1)).toNat + A298970 (n + 1)

end

end A299740.P429584013068081843

/-! ## A299740.P11032223455725422409

`A130044(A213418(n+1))`
-/

namespace A299740.P11032223455725422409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A213418 (n + 1)).toNat

end

end A299740.P11032223455725422409

/-! ## A299740.P5512215677350549822

`A316960(A000005(2^n))`
-/

namespace A299740.P5512215677350549822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A000005 (2 ^ n)).toNat

end

end A299740.P5512215677350549822

/-!
# A299741: Array read by antidiagonals upwards: a(i,0) = 2, i >= 0; a(i,1) = i+2, i >= 0; a(i,j) = (i+2) * a(i,j-1) - a(i,j-2), for i >= 0, j > 1.

The programs for A299741, there is no canonical definition to state claims against.
-/

/-! ## A299741.P3214126261928454110

`A060964((n-comp[∑[n]])²-(n-1))`
-/

namespace A299741.P3214126261928454110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - ((n : ℤ) - 1)).toNat

end

end A299741.P3214126261928454110

/-! ## A299741.P7958978134996213599

`A094954(1-A123578(n)+n)+A094954(n+1)`
-/

namespace A299741.P7958978134996213599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094954 (1 - A123578 n + (n : ℤ)).toNat + A094954 (n + 1)

end

end A299741.P7958978134996213599

/-! ## A299741.P8099989509442911969

`A101161(A061579(n)+Δ[A130296(n+1)])`
-/

namespace A299741.P8099989509442911969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A299741.P8099989509442911969

/-! ## A299741.P16913153116380228979

`A101161(∑[2*n]%comp[∑[n]])+char[∑[n]]`
-/

namespace A299741.P16913153116380228979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299741.P16913153116380228979

/-! ## A299741.P14553600613974759355

`A101161(A061579(n)+char[∑[n]])`
-/

namespace A299741.P14553600613974759355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 (A061579 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A299741.P14553600613974759355

/-! ## A299741.P6711466897787059347

`A101161(A061579(n))+A010054(n)`
-/

namespace A299741.P6711466897787059347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 (A061579 n).toNat + A010054 n

end

end A299741.P6711466897787059347

/-! ## A299741.P7632550169012647130

`A035214(n)*A101161(A061579(n))`
-/

namespace A299741.P7632550169012647130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A101161 (A061579 n).toNat

end

end A299741.P7632550169012647130

/-! ## A299741.P368487450365844327

`A101161(A061579(n))+abs(A106459(n))`
-/

namespace A299741.P368487450365844327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 (A061579 n).toNat + |A106459 n|

end

end A299741.P368487450365844327

/-! ## A299741.P12159484071653061063

`A089799(n)!*A101161(A061579(n))`
-/

namespace A299741.P12159484071653061063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A089799 n).toNat : ℤ) * A101161 (A061579 n).toNat

end

end A299741.P12159484071653061063

/-! ## A299741.P16210478401434689336

`Δ[A080036(n)]*A101161(A061579(n))`
-/

namespace A299741.P16210478401434689336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A101161 (A061579 n).toNat

end

end A299741.P16210478401434689336

/-!
# A299742: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299742, there is no canonical definition to state claims against.
-/

/-! ## A299742.P8993308157528337943

`A299746(∑[4*n]+1)`
-/

namespace A299742.P8993308157528337943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299742.P8993308157528337943

/-! ## A299742.P18330375135496091133

`record[A003982(n)*A299746(n+1)]`
-/

namespace A299742.P18330375135496091133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299742.P18330375135496091133

/-! ## A299742.P3828928045966684587

`(C(n, 9)+1)*A299746(A001844(n))`
-/

namespace A299742.P3828928045966684587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 9 + 1 : ℤ) * A299746 (A001844 n).toNat

end

end A299742.P3828928045966684587

/-! ## A299742.P5930931359013078518

`A299746(A001844(n))+A025463(n)`
-/

namespace A299742.P5930931359013078518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A001844 n).toNat + A025463 n

end

end A299742.P5930931359013078518

/-! ## A299742.P2069345576699192431

`A299746(A001844(n))+A173068(n)`
-/

namespace A299742.P2069345576699192431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A001844 n).toNat + A173068 n

end

end A299742.P2069345576699192431

/-!
# A299743: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299743, there is no canonical definition to state claims against.
-/

/-! ## A299743.P7173404732551590226

`A299746(A374005(n+1))`
-/

namespace A299743.P7173404732551590226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A374005 (n + 1)).toNat

end

end A299743.P7173404732551590226

/-! ## A299743.P7266978581127676703

`A299746(A056000(n)+15)`
-/

namespace A299743.P7266978581127676703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A056000 n + 15).toNat

end

end A299743.P7266978581127676703

/-! ## A299743.P8052624317744786199

`A299746(eq[7, A066657(n)])`
-/

namespace A299743.P8052624317744786199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299743.P8052624317744786199

/-! ## A299743.P13231021984941125669

`A299746(A167614(n+3)+2)`
-/

namespace A299743.P13231021984941125669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A167614 (n + 3) + 2).toNat

end

end A299743.P13231021984941125669

/-! ## A299743.P15718375034626670233

`A299746(A034856(n+3)+7)`
-/

namespace A299743.P15718375034626670233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A034856 (n + 3) + 7).toNat

end

end A299743.P15718375034626670233

/-!
# A299744: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299744, there is no canonical definition to state claims against.
-/

/-! ## A299744.P16289016498852031596

`A299746(A374007(n+1))`
-/

namespace A299744.P16289016498852031596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A374007 (n + 1)).toNat

end

end A299744.P16289016498852031596

/-! ## A299744.P2416317879603210993

`A299746(Δ[A264443(n)]+10)`
-/

namespace A299744.P2416317879603210993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (f1 (n + 1) - f1 n + 10).toNat

end

end A299744.P2416317879603210993

/-! ## A299744.P10606201735471849734

`A299746(A167614(n+4)+3)`
-/

namespace A299744.P10606201735471849734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A167614 (n + 4) + 3).toNat

end

end A299744.P10606201735471849734

/-! ## A299744.P15862510262046654454

`A299746(Δ[A023545(n+1)]+10)`
-/

namespace A299744.P15862510262046654454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (f1 (n + 1) - f1 n + 10).toNat

end

end A299744.P15862510262046654454

/-! ## A299744.P16334967121189044834

`A299746(eq[5, A193592(n)])`
-/

namespace A299744.P16334967121189044834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299744.P16334967121189044834

/-!
# A299745: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299745, there is no canonical definition to state claims against.
-/

/-! ## A299745.P16413530811218380049

`A299746(A374008(n+1))`
-/

namespace A299745.P16413530811218380049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A374008 (n + 1)).toNat

end

end A299745.P16413530811218380049

/-! ## A299745.P5246321751756186103

`A299746(A155212(n+2)+15)`
-/

namespace A299745.P5246321751756186103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A155212 (n + 2) + 15).toNat

end

end A299745.P5246321751756186103

/-! ## A299745.P9862221859525363680

`A299746(eq[8, A131818(n+1)])`
-/

namespace A299745.P9862221859525363680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299745.P9862221859525363680

/-! ## A299745.P7273301372662351285

`A299746(A055999(n+4))`
-/

namespace A299745.P7273301372662351285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A055999 (n + 4)).toNat

end

end A299745.P7273301372662351285

/-! ## A299745.P12157872299014229919

`A299746(eq[4, A219347(n)])`
-/

namespace A299745.P12157872299014229919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299745.P12157872299014229919

/-!
# A299747: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299747, there is no canonical definition to state claims against.
-/

/-! ## A299747.P18281539775923471882

`A299753(∑[4*n]+1)`
-/

namespace A299747.P18281539775923471882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299747.P18281539775923471882

/-! ## A299747.P7065011665509655291

`and(-1, A299753(A001844(n)))`
-/

namespace A299747.P7065011665509655291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299753 (A001844 n).toNat)

end

end A299747.P7065011665509655291

/-! ## A299747.P10608283500755657141

`record[A299753(A272267(n+1))]`
-/

namespace A299747.P10608283500755657141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299747.P10608283500755657141

/-! ## A299747.P7152603760330756866

`record[A299753(A330613(n+1))]`
-/

namespace A299747.P7152603760330756866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299747.P7152603760330756866

/-! ## A299747.P14341970210533550547

`record[A299753(Δ[A079824(n+1)])]`
-/

namespace A299747.P14341970210533550547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299747.P14341970210533550547

/-!
# A299748: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299748, there is no canonical definition to state claims against.
-/

/-! ## A299748.P17897122310025601498

`A299753(∑[n+2]+4)`
-/

namespace A299748.P17897122310025601498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299748.P17897122310025601498

/-! ## A299748.P4408757127082711359

`A299753(A167614(n+1))+char[24]`
-/

namespace A299748.P4408757127082711359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299748.P4408757127082711359

/-! ## A299748.P7718207365949208832

`A299753(A167614(n+1))%A147615(n)`
-/

namespace A299748.P7718207365949208832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299753 (A167614 (n + 1)).toNat) (A147615 n)

end

end A299748.P7718207365949208832

/-! ## A299748.P12959970607235507858

`A014963(20*(n+1))*A299753(A167614(n+1))`
-/

namespace A299748.P12959970607235507858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A299753 (A167614 (n + 1)).toNat

end

end A299748.P12959970607235507858

/-! ## A299748.P907028056186169380

`A000108(n²%(n+1))*A299753(A167614(n+1))`
-/

namespace A299748.P907028056186169380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n ^ 2 % (n + 1)) * A299753 (A167614 (n + 1)).toNat

end

end A299748.P907028056186169380

/-!
# A299749: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299749, there is no canonical definition to state claims against.
-/

/-! ## A299749.P17744700076890252951

`A299753(A374004(n+1))`
-/

namespace A299749.P17744700076890252951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A374004 (n + 1)).toNat

end

end A299749.P17744700076890252951

/-! ## A299749.P6698186502907576767

`A299753(A141214(n)+7)`
-/

namespace A299749.P6698186502907576767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A141214 n + 7).toNat

end

end A299749.P6698186502907576767

/-! ## A299749.P6595897885728723730

`A299753(A052905(n)+9)`
-/

namespace A299749.P6595897885728723730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A052905 n + 9).toNat

end

end A299749.P6595897885728723730

/-! ## A299749.P10216499788567922138

`A299753(A055999(n)+10)`
-/

namespace A299749.P10216499788567922138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A055999 n + 10).toNat

end

end A299749.P10216499788567922138

/-! ## A299749.P13325822679397449711

`A299753(A167614(n+2)+1)`
-/

namespace A299749.P13325822679397449711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A167614 (n + 2) + 1).toNat

end

end A299749.P13325822679397449711

/-!
# A299750: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299750, there is no canonical definition to state claims against.
-/

/-! ## A299750.P12609129548290036932

`A299753(A374005(n+1))`
-/

namespace A299750.P12609129548290036932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A374005 (n + 1)).toNat

end

end A299750.P12609129548290036932

/-! ## A299750.P2421867492818395487

`A299753(A155212(n)+13)`
-/

namespace A299750.P2421867492818395487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A155212 n + 13).toNat

end

end A299750.P2421867492818395487

/-! ## A299750.P5310164899306657879

`A299753(A056000(n)+15)`
-/

namespace A299750.P5310164899306657879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A056000 n + 15).toNat

end

end A299750.P5310164899306657879

/-! ## A299750.P12665308499817984995

`A299753(eq[7, A066657(n)])`
-/

namespace A299750.P12665308499817984995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299750.P12665308499817984995

/-! ## A299750.P4247710472454309345

`A299753(A000217(n+4)+5)`
-/

namespace A299750.P4247710472454309345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A000217 (n + 4) + 5).toNat

end

end A299750.P4247710472454309345

/-!
# A299751: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299751, there is no canonical definition to state claims against.
-/

/-! ## A299751.P6952072850362577053

`A299753(A374007(n+1))`
-/

namespace A299751.P6952072850362577053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A374007 (n + 1)).toNat

end

end A299751.P6952072850362577053

/-! ## A299751.P17042011822248659815

`A299753(A056115(n)+21)`
-/

namespace A299751.P17042011822248659815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A056115 n + 21).toNat

end

end A299751.P17042011822248659815

/-! ## A299751.P9707322079213503374

`A299753(A000217(n+5)+6)`
-/

namespace A299751.P9707322079213503374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A000217 (n + 5) + 6).toNat

end

end A299751.P9707322079213503374

/-! ## A299751.P17868570924817396085

`A299753(eq[7, A131818(n+1)])`
-/

namespace A299751.P17868570924817396085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299751.P17868570924817396085

/-! ## A299751.P6505408425664384510

`A299753(A052905(n+3))`
-/

namespace A299751.P6505408425664384510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A052905 (n + 3)).toNat

end

end A299751.P6505408425664384510

/-!
# A299752: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299752, there is no canonical definition to state claims against.
-/

/-! ## A299752.P15697956846641382544

`A299753(A374008(n+1))`
-/

namespace A299752.P15697956846641382544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A374008 (n + 1)).toNat

end

end A299752.P15697956846641382544

/-! ## A299752.P3663006605729023338

`A299753(A167487(n+5))`
-/

namespace A299752.P3663006605729023338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A167487 (n + 5)).toNat

end

end A299752.P3663006605729023338

/-! ## A299752.P14157514391433516662

`A299753(A302537(n)+27)`
-/

namespace A299752.P14157514391433516662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A302537 n + 27).toNat

end

end A299752.P14157514391433516662

/-! ## A299752.P7687802364757866461

`A299753(A056119(n)+28)`
-/

namespace A299752.P7687802364757866461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (A056119 n + 28).toNat

end

end A299752.P7687802364757866461

/-! ## A299752.P13695080270813215228

`A299753(eq[8, A131818(n+1)])`
-/

namespace A299752.P13695080270813215228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299752.P13695080270813215228

/-!
# A299753: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299753, there is no canonical definition to state claims against.
-/

/-! ## A299753.P5169959642854958222

`A300267(n+1)-A285007(A035607(n))`
-/

namespace A299753.P5169959642854958222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (n + 1) - A285007 (A035607 n).toNat

end

end A299753.P5169959642854958222

/-! ## A299753.P2024684797797313251

`A300267(n+1)-A309785(A331562(n))`
-/

namespace A299753.P2024684797797313251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (n + 1) - A309785 (A331562 n).toNat

end

end A299753.P2024684797797313251

/-! ## A299753.P6917629628059713669

`A300267(n+1)-A309785(A347621(n))`
-/

namespace A299753.P6917629628059713669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (n + 1) - A309785 (A347621 n).toNat

end

end A299753.P6917629628059713669

/-! ## A299753.P7003165764906123239

`A255408(A300267(n+1))`
-/

namespace A299753.P7003165764906123239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A300267 (n + 1)).toNat

end

end A299753.P7003165764906123239

/-! ## A299753.P14144604311545406340

`A300267(C(A048242(n+1), n))`
-/

namespace A299753.P14144604311545406340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300267 (Nat.choose (A048242 (n + 1)).toNat n)

end

end A299753.P14144604311545406340

/-!
# A299754: Number of distinct sums of n complex n-th roots of 1.

The programs for A299754, there is no canonical definition to state claims against.
-/

/-! ## A299754.P12492628539671636920

`A299807(2*(n+1)²+1)`
-/

namespace A299754.P12492628539671636920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299807 (2 * (n + 1) ^ 2 + 1)

end

end A299754.P12492628539671636920

/-!
# A299756: Triangle read by rows in which row n is the finite increasing sequence, or set of positive integers, with FDH number n.

The programs for A299756, there is no canonical definition to state claims against.
-/

/-! ## A299756.P436861305104526311

`A203967(A213925(n+2))`
-/

namespace A299756.P436861305104526311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203967 (A213925 (n + 2)).toNat

end

end A299756.P436861305104526311

/-! ## A299756.P2247288676512356536

`A299757(A213925(4/2+n))`
-/

namespace A299756.P2247288676512356536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A213925 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat).toNat

end

end A299756.P2247288676512356536

/-! ## A299756.P16405201653744357426

`A305829(lcm(2, A213925(n+2)))`
-/

namespace A299756.P16405201653744357426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 (Int.lcm 2 (A213925 (n + 2)))

end

end A299756.P16405201653744357426

/-! ## A299756.P17155681729605435933

`A302778(or(char[1], A213925(n+2)))`
-/

namespace A299756.P17155681729605435933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213925 (n + 2))).toNat

end

end A299756.P17155681729605435933

/-! ## A299756.P701046076025900361

`A299757(A213925(n+2)%(n+3))`
-/

namespace A299756.P701046076025900361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (Int.tmod (A213925 (n + 2)) (n + 3 : ℤ)).toNat

end

end A299756.P701046076025900361

/-! ## A299756.P12234934153253161072

`A007318(C(2, n))*A299757(A213925(n+2))`
-/

namespace A299756.P12234934153253161072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299757 (A213925 (n + 2)).toNat

end

end A299756.P12234934153253161072

/-! ## A299756.P12511901772041225808

`A302785(A213925(n+2)²-A213925(n+2))`
-/

namespace A299756.P12511901772041225808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (A213925 (n + 2) ^ 2 - A213925 (n + 2)).toNat

end

end A299756.P12511901772041225808

/-! ## A299756.P9986929752436680589

`A014963(6*(n+1))*A299757(A213925(n+2))`
-/

namespace A299756.P9986929752436680589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A299757 (A213925 (n + 2)).toNat

end

end A299756.P9986929752436680589

/-! ## A299756.P16180303346716651862

`A000032(gcd(n, n+1))*A299757(A213925(n+2))`
-/

namespace A299756.P16180303346716651862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A299757 (A213925 (n + 2)).toNat

end

end A299756.P16180303346716651862

/-! ## A299756.P9874523511616360650

`gcd(A008683(2*(n+1)²), A299757(A213925(n+2)))`
-/

namespace A299756.P9874523511616360650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (2 * (n + 1) ^ 2)) (A299757 (A213925 (n + 2)).toNat)

end

end A299756.P9874523511616360650

/-!
# A299757: Weight of the strict integer partition with FDH number n.

The programs for A299757, there is no canonical definition to state claims against.
-/

/-! ## A299757.P8841171086564292454

`A056239(A160102(n+1))`
-/

namespace A299757.P8841171086564292454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A160102 (n + 1)).toNat

end

end A299757.P8841171086564292454

/-! ## A299757.P3693889406229684834

`A266475(A302024(n+1))`
-/

namespace A299757.P3693889406229684834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266475 (A302024 (n + 1)).toNat

end

end A299757.P3693889406229684834

/-! ## A299757.P10837828670850171723

`A066328(A160102(n+1)²)`
-/

namespace A299757.P10837828670850171723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A160102 (n + 1) ^ 2).toNat

end

end A299757.P10837828670850171723

/-! ## A299757.P17256125269295033713

`A333842(A160102(n+1)²)`
-/

namespace A299757.P17256125269295033713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A160102 (n + 1) ^ 2).toNat

end

end A299757.P17256125269295033713

/-! ## A299757.P2956245810664884827

`∑{d}[A160102(n+1), A049084(#)]`
-/

namespace A299757.P2956245810664884827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A299757.P2956245810664884827

/-! ## A299757.P3186657870021967611

`∑{d}[A160102(n+1), A297109(#)]`
-/

namespace A299757.P3186657870021967611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A299757.P3186657870021967611

/-! ## A299757.P1051803512133517288

`∑{p}[A160102(n+1), A000720(#)]`
-/

namespace A299757.P1051803512133517288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A299757.P1051803512133517288

/-! ## A299757.P14413152230400042432

`∑{p}[A160102(n+1), A003963(#)]`
-/

namespace A299757.P14413152230400042432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A299757.P14413152230400042432

/-! ## A299757.P17264008168194452056

`∑{p}[A160102(n+1), A026233(#)]`
-/

namespace A299757.P17264008168194452056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026233 p

end

end A299757.P17264008168194452056

/-! ## A299757.P13600813029995539034

`∑{p}[A160102(n+1), A055396(#)]`
-/

namespace A299757.P13600813029995539034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A299757.P13600813029995539034

/-!
# A299758: Largest FDH number of a strict integer partition of n.

The programs for A299758, there is no canonical definition to state claims against.
-/

/-! ## A299758.P14655776393773604508

`A299759(A036469(n))`
-/

namespace A299758.P14655776393773604508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299759 (A036469 n).toNat

end

end A299758.P14655776393773604508

/-! ## A299758.P5618746426641159222

`A299759(∑[A000009(n)])`
-/

namespace A299758.P5618746426641159222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299758.P5618746426641159222

/-! ## A299758.P4008245412276287684

`A299759(∑[A017979(n)])`
-/

namespace A299758.P4008245412276287684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299758.P4008245412276287684

/-! ## A299758.P17617096502766239252

`A299759(∑[abs(A081360(n))])`
-/

namespace A299758.P17617096502766239252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299758.P17617096502766239252

/-! ## A299758.P18110942427634530868

`A299759(∑[A052839(n)]-n)`
-/

namespace A299758.P18110942427634530868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299759 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A299758.P18110942427634530868

/-!
# A299760: Primes p with index k >= 3 such that A288189(k) = A295185(k).

The programs for A299760, there is no canonical definition to state claims against.
-/

/-! ## A299760.P1339556650968468409

`p?[A001414(A288189(n+1))]`
-/

namespace A299760.P1339556650968468409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A288189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299760.P1339556650968468409

/-! ## A299760.P12436372639014850046

`record[A020639(A001414(A288189(n+3)))]`
-/

namespace A299760.P12436372639014850046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001414 (A288189 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299760.P12436372639014850046

/-! ## A299760.P7879344721965576353

`p?[A082343(A288189(n+1))%A094379(n)]`
-/

namespace A299760.P7879344721965576353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082343 (A288189 (n + 1)).toNat) (A094379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299760.P7879344721965576353

/-! ## A299760.P6403034210530587939

`p?[A084937(n+1)*A184645(A332029(n+1))]`
-/

namespace A299760.P6403034210530587939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1) * A184645 (A332029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299760.P6403034210530587939

/-! ## A299760.P11321135330980522484

`A103332(A322293(n+1))`
-/

namespace A299760.P11321135330980522484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103332 (A322293 (n + 1)).toNat

end

end A299760.P11321135330980522484

/-!
# A299761: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which row n lists the middle divisors of n, or 0 if there are no middle divisors of n.

The programs for A299761, there is no canonical definition to state claims against.
-/

/-! ## A299761.P7204965733538477306

`A282625(A081868(n+2))%A269350(A074263(n+1))`
-/

namespace A299761.P7204965733538477306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282625 (A081868 (n + 2)).toNat) (A269350 (A074263 (n + 1)).toNat)

end

end A299761.P7204965733538477306

/-! ## A299761.P3041542781091642969

`A238745(A267322(n))%Δ[A003246(n+1)]`
-/

namespace A299761.P3041542781091642969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238745 (A267322 n).toNat) (f1 (n + 1) - f1 n)

end

end A299761.P3041542781091642969

/-! ## A299761.P11563512324488923503

`val(A340597(A342366(2*(n+1)))², 9)`
-/

namespace A299761.P11563512324488923503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340597 (A342366 (2 * (n + 1))).toNat ^ 2).toNat 9

end

end A299761.P11563512324488923503

/-! ## A299761.P13178347502775333746

`C(A365543(n), A181881(A064094(2*n+3)))`
-/

namespace A299761.P13178347502775333746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A365543 n).toNat (A181881 (A064094 (2 * n + 3)).toNat).toNat

end

end A299761.P13178347502775333746

/-! ## A299761.P14835695507137411161

`A334956(A298477(n+1))`
-/

namespace A299761.P14835695507137411161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334956 (A298477 (n + 1)).toNat

end

end A299761.P14835695507137411161

/-!
# A299762: Irregular triangle T(n,k) read by rows in which row n lists the positive integers whose sum of divisors is n, or 0 if no such integer exists.

The programs for A299762, there is no canonical definition to state claims against.
-/

/-! ## A299762.P9665793971300317288

`A072966(A051444(n+1)+1)`
-/

namespace A299762.P9665793971300317288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (A051444 (n + 1) + 1).toNat

end

end A299762.P9665793971300317288

/-! ## A299762.P17524273916732807676

`A160383(A109488(n))+A051444(n+1)`
-/

namespace A299762.P17524273916732807676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A109488 n).toNat + A051444 (n + 1)

end

end A299762.P17524273916732807676

/-! ## A299762.P1560014353579989300

`A212172(A141199(n))+A051444(n+1)`
-/

namespace A299762.P1560014353579989300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A141199 n).toNat + A051444 (n + 1)

end

end A299762.P1560014353579989300

/-! ## A299762.P17490833181063989439

`A106404(A276531(n))+A051444(n+1)`
-/

namespace A299762.P17490833181063989439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A276531 n).toNat + A051444 (n + 1)

end

end A299762.P17490833181063989439

/-! ## A299762.P13019305605022495087

`A265525(A051444(n+1)^A072137(n))`
-/

namespace A299762.P13019305605022495087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.roundAway ((A051444 (n + 1) : ℚ) ^ (A072137 n : ℤ))).toNat

end

end A299762.P13019305605022495087

/-!
# A299763: a(n) = 1 + A182986(n).

The programs for A299763, the canonical program `A299763.P9872008477996207838` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299763 has offset 1).

The definition of A299763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299763.P9872008477996207838

`1+A182986(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A299763

/-- `1+A182986(n+1)` -/
def P9872008477996207838.Spec : Prop :=
  ∀ n, P9872008477996207838.a n = A299763 (n + 1)

theorem P9872008477996207838.correct : P9872008477996207838.Spec := by
  intro n
  simp only [A299763, Nat.add_sub_cancel]

end A299763

/-! ## A299763.P11880997052327585042

`∑{d}[A008578(n+1), #]`
-/

namespace A299763.P11880997052327585042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A299763.P11880997052327585042

namespace A299763

/-- `∑{d}[A008578(n+1), #]` -/
def P11880997052327585042.Spec : Prop :=
  ∀ n, (P11880997052327585042.a n : ℤ) = A299763 (n + 1)

end A299763

/-! ## A299763.P1380770685100701860

`∑{d}[1-A028815(n), #]`
-/

namespace A299763.P1380770685100701860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A299763.P1380770685100701860

namespace A299763

/-- `∑{d}[1-A028815(n), #]` -/
def P1380770685100701860.Spec : Prop :=
  ∀ n, (P1380770685100701860.a n : ℤ) = A299763 (n + 1)

end A299763

/-! ## A299763.P3405683632282848735

`A054541(n)+a(n-1)` with `a(0)=1`
-/

namespace A299763.P3405683632282848735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054541 n + a (n - 1)

end

end A299763.P3405683632282848735

namespace A299763

/-- `A054541(n)+a(n-1)` -/
def P3405683632282848735.Spec : Prop :=
  ∀ n, P3405683632282848735.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P10405990618130354087

`(A372054(n)+n)/(n+1)`
-/

namespace A299763.P10405990618130354087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372054 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A299763.P10405990618130354087

namespace A299763

/-- `(A372054(n)+n)/(n+1)` -/
def P10405990618130354087.Spec : Prop :=
  ∀ n, P10405990618130354087.a n = (A299763 (n + 1) : ℚ)

end A299763

/-! ## A299763.P17827557520122267220

`A028815(n)-A000007(n)`
-/

namespace A299763.P17827557520122267220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A000007 n

end

end A299763.P17827557520122267220

namespace A299763

/-- `A028815(n)-A000007(n)` -/
def P17827557520122267220.Spec : Prop :=
  ∀ n, P17827557520122267220.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P15660894046203655925

`A028815(n)/A054977(n)`
-/

namespace A299763.P15660894046203655925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028815 n : ℚ) / (A054977 n : ℚ)

end

end A299763.P15660894046203655925

namespace A299763

/-- `A028815(n)/A054977(n)` -/
def P15660894046203655925.Spec : Prop :=
  ∀ n, P15660894046203655925.a n = (A299763 (n + 1) : ℚ)

end A299763

/-! ## A299763.P3360698803087173729

`A057427(n)+A008578(n+1)`
-/

namespace A299763.P3360698803087173729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A008578 (n + 1)

end

end A299763.P3360698803087173729

namespace A299763

/-- `A057427(n)+A008578(n+1)` -/
def P3360698803087173729.Spec : Prop :=
  ∀ n, P3360698803087173729.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P5136578622354497689

`A068499(n+1)+A046698(n)`
-/

namespace A299763.P5136578622354497689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) + A046698 n

end

end A299763.P5136578622354497689

namespace A299763

/-- `A068499(n+1)+A046698(n)` -/
def P5136578622354497689.Spec : Prop :=
  ∀ n, P5136578622354497689.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P32893271443701935

`∪[A022152(n), A008864(n+1)]`
-/

namespace A299763.P32893271443701935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A299763.P32893271443701935

namespace A299763

/-- `∪[A022152(n), A008864(n+1)]` -/
def P32893271443701935.Spec : Prop :=
  ∀ n, (P32893271443701935.a n : ℤ) = A299763 (n + 1)

end A299763

/-! ## A299763.P7098750099130685308

`A008864(n+1)-A054541(n+1)`
-/

namespace A299763.P7098750099130685308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A054541 (n + 1)

end

end A299763.P7098750099130685308

namespace A299763

/-- `A008864(n+1)-A054541(n+1)` -/
def P7098750099130685308.Spec : Prop :=
  ∀ n, P7098750099130685308.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P11359725003219592520

`A028815(n+1)-A054541(n+1)`
-/

namespace A299763.P11359725003219592520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A054541 (n + 1)

end

end A299763.P11359725003219592520

namespace A299763

/-- `A028815(n+1)-A054541(n+1)` -/
def P11359725003219592520.Spec : Prop :=
  ∀ n, P11359725003219592520.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P12447370666263163508

`A023523(n+1)%A001747(n+1)`
-/

namespace A299763.P12447370666263163508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023523 (n + 1)) (A001747 (n + 1))

end

end A299763.P12447370666263163508

namespace A299763

/-- `A023523(n+1)%A001747(n+1)` -/
def P12447370666263163508.Spec : Prop :=
  ∀ n, P12447370666263163508.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P14895495997093204440

`a(n-1)+A008578(n+1)-A008578(n)` with `a(0)=1, a(1)=3`
-/

namespace A299763.P14895495997093204440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + A008578 (n + 1) - A008578 n

end

end A299763.P14895495997093204440

namespace A299763

/-- `a(n-1)+A008578(n+1)-A008578(n)` -/
def P14895495997093204440.Spec : Prop :=
  ∀ n, P14895495997093204440.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P2049008575882459125

`A008578(n+1)+A001221(A006530(n+1))`
-/

namespace A299763.P2049008575882459125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001221 (A006530 (n + 1)).toNat

end

end A299763.P2049008575882459125

namespace A299763

/-- `A008578(n+1)+A001221(A006530(n+1))` -/
def P2049008575882459125.Spec : Prop :=
  ∀ n, P2049008575882459125.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P17004802669933260064

`A008578(n+1)+A001221(A020639(n+1))`
-/

namespace A299763.P17004802669933260064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001221 (A020639 (n + 1)).toNat

end

end A299763.P17004802669933260064

namespace A299763

/-- `A008578(n+1)+A001221(A020639(n+1))` -/
def P17004802669933260064.Spec : Prop :=
  ∀ n, P17004802669933260064.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P12843564490876027945

`A008578(n+1)+A001222(A027746(n+1))`
-/

namespace A299763.P12843564490876027945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001222 (A027746 (n + 1)).toNat

end

end A299763.P12843564490876027945

namespace A299763

/-- `A008578(n+1)+A001222(A027746(n+1))` -/
def P12843564490876027945.Spec : Prop :=
  ∀ n, P12843564490876027945.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P18329097665896960

`A340676(A005117(n+1))+A008578(n+1)`
-/

namespace A299763.P18329097665896960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (A005117 (n + 1)).toNat + A008578 (n + 1)

end

end A299763.P18329097665896960

namespace A299763

/-- `A340676(A005117(n+1))+A008578(n+1)` -/
def P18329097665896960.Spec : Prop :=
  ∀ n, P18329097665896960.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P7877306216006057011

`A008578(n+1)+A372054(n)-A164931(n+1)`
-/

namespace A299763.P7877306216006057011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A372054 n - A164931 (n + 1))

end

end A299763.P7877306216006057011

namespace A299763

/-- `A008578(n+1)+A372054(n)-A164931(n+1)` -/
def P7877306216006057011.Spec : Prop :=
  ∀ n, P7877306216006057011.a n = A299763 (n + 1)

end A299763

/-! ## A299763.P12285507049130874063

`∑{d}[A158611(n+2), #]`
-/

namespace A299763.P12285507049130874063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A299763.P12285507049130874063

namespace A299763

/-- `∑{d}[A158611(n+2), #]` -/
def P12285507049130874063.Spec : Prop :=
  ∀ n, (P12285507049130874063.a n : ℤ) = A299763 (n + 1)

end A299763

/-!
# A299764: Number of special products of factorizations of n into factors > 1.

The programs for A299764, there is no canonical definition to state claims against.
-/

/-! ## A299764.P15583228301102004753

`∑{d}[n+1, A292886(#)*A292886((n+1)/#)]`
-/

namespace A299764.P15583228301102004753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A292886 d * A292886 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A299764.P15583228301102004753

/-! ## A299764.P1328090392288007050

`A301856(n+1)+A292886(A045966(n+1))`
-/

namespace A299764.P1328090392288007050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301856 (n + 1) + A292886 (A045966 (n + 1)).toNat

end

end A299764.P1328090392288007050

/-! ## A299764.P3533941571625480104

`A301830(n+1)-A086937(A112624(n+1))`
-/

namespace A299764.P3533941571625480104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A086937 (A112624 (n + 1)).toNat

end

end A299764.P3533941571625480104

/-! ## A299764.P17280782828255497855

`A301830(n+1)-A230595(A248323(n+2))`
-/

namespace A299764.P17280782828255497855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A230595 (A248323 (n + 2)).toNat

end

end A299764.P17280782828255497855

/-! ## A299764.P8731453899727274975

`A301830(n+1)-A000122(A212622(3*n+4))`
-/

namespace A299764.P8731453899727274975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A000122 (A212622 (3 * n + 4)).toNat

end

end A299764.P8731453899727274975

/-!
# A299766: Greatest odd noncomposite divisor of n.

The programs for A299766, the canonical program `A299766.P1328271149826463585` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299766 has offset 1).

The definition of A299766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299766.P1328271149826463585

`A006530(A000265(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A299766

/-- `A006530(A000265(n+1))` -/
def P1328271149826463585.Spec : Prop :=
  ∀ n, P1328271149826463585.a n = A299766 (n + 1)

theorem P1328271149826463585.correct : P1328271149826463585.Spec := by
  intro n
  simp only [A299766, Nat.add_sub_cancel]

end A299766

/-! ## A299766.P14007056113270827292

`or(1, A070777(n+1))`
-/

namespace A299766.P14007056113270827292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070777 (n + 1))

end

end A299766.P14007056113270827292

namespace A299766

/-- `or(1, A070777(n+1))` -/
def P14007056113270827292.Spec : Prop :=
  ∀ n, P14007056113270827292.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P11718254712723967286

`lcm(2, A006530(n+1))/2`
-/

namespace A299766.P11718254712723967286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A006530 (n + 1)) : ℚ) / 2

end

end A299766.P11718254712723967286

namespace A299766

/-- `lcm(2, A006530(n+1))/2` -/
def P11718254712723967286.Spec : Prop :=
  ∀ n, P11718254712723967286.a n = (A299766 (n + 1) : ℚ)

end A299766

/-! ## A299766.P17531478372354757195

`or(1, A111089(n+1)-1)`
-/

namespace A299766.P17531478372354757195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111089 (n + 1) - 1)

end

end A299766.P17531478372354757195

namespace A299766

/-- `or(1, A111089(n+1)-1)` -/
def P17531478372354757195.Spec : Prop :=
  ∀ n, P17531478372354757195.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P7292794568135656536

`gcd(A006530(3*(n+1)), n+1)`
-/

namespace A299766.P7292794568135656536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (3 * (n + 1))) (n + 1 : ℤ)

end

end A299766.P7292794568135656536

namespace A299766

/-- `gcd(A006530(3*(n+1)), n+1)` -/
def P7292794568135656536.Spec : Prop :=
  ∀ n, (P7292794568135656536.a n : ℤ) = A299766 (n + 1)

end A299766

/-! ## A299766.P15868278353255358911

`-or(1, -A006530(2*(n+1)))`
-/

namespace A299766.P15868278353255358911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-A006530 (2 * (n + 1)))

end

end A299766.P15868278353255358911

namespace A299766

/-- `-or(1, -A006530(2*(n+1)))` -/
def P15868278353255358911.Spec : Prop :=
  ∀ n, P15868278353255358911.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P10703775548822879197

`A006530(∏{p}[2*(n+1), #]/2)`
-/

namespace A299766.P10703775548822879197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)).toNat

end

end A299766.P10703775548822879197

namespace A299766

/-- `A006530(∏{p}[2*(n+1), #]/2)` -/
def P10703775548822879197.Spec : Prop :=
  ∀ n, P10703775548822879197.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P15433593888143065926

`A006530((n+1)/2^val(n+1, 2))`
-/

namespace A299766.P15433593888143065926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A299766.P15433593888143065926

namespace A299766

/-- `A006530((n+1)/2^val(n+1, 2))` -/
def P15433593888143065926.Spec : Prop :=
  ∀ n, P15433593888143065926.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P16916265825874465856

`A006530((n+1)/and(n+1, -(n+1)))`
-/

namespace A299766.P16916265825874465856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A299766.P16916265825874465856

namespace A299766

/-- `A006530((n+1)/and(n+1, -(n+1)))` -/
def P16916265825874465856.Spec : Prop :=
  ∀ n, P16916265825874465856.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P3365388806617807601

`A006530((n+1)/(n+1-and(n, n+1)))`
-/

namespace A299766.P3365388806617807601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A299766.P3365388806617807601

namespace A299766

/-- `A006530((n+1)/(n+1-and(n, n+1)))` -/
def P3365388806617807601.Spec : Prop :=
  ∀ n, P3365388806617807601.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P2216022710243034821

`A015126(A006530(n+1))`
-/

namespace A299766.P2216022710243034821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A006530 (n + 1)).toNat

end

end A299766.P2216022710243034821

namespace A299766

/-- `A015126(A006530(n+1))` -/
def P2216022710243034821.Spec : Prop :=
  ∀ n, P2216022710243034821.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P5767945788693050728

`A000265(A111089(n+1))`
-/

namespace A299766.P5767945788693050728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A111089 (n + 1)).toNat

end

end A299766.P5767945788693050728

namespace A299766

/-- `A000265(A111089(n+1))` -/
def P5767945788693050728.Spec : Prop :=
  ∀ n, P5767945788693050728.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P13971920763741534488

`A049283(A070777(n+1))`
-/

namespace A299766.P13971920763741534488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A070777 (n + 1)).toNat

end

end A299766.P13971920763741534488

namespace A299766

/-- `A049283(A070777(n+1))` -/
def P13971920763741534488.Spec : Prop :=
  ∀ n, P13971920763741534488.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P1833938337235364331

`A003961(A117364(n+1))`
-/

namespace A299766.P1833938337235364331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A117364 (n + 1)).toNat

end

end A299766.P1833938337235364331

namespace A299766

/-- `A003961(A117364(n+1))` -/
def P1833938337235364331.Spec : Prop :=
  ∀ n, P1833938337235364331.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P15921429903704884904

`A078701(A053585(n+1))`
-/

namespace A299766.P15921429903704884904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A053585 (n + 1)).toNat

end

end A299766.P15921429903704884904

namespace A299766

/-- `A078701(A053585(n+1))` -/
def P15921429903704884904.Spec : Prop :=
  ∀ n, P15921429903704884904.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P16294197802098668108

`A002034(A204455(n+1))`
-/

namespace A299766.P16294197802098668108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A204455 (n + 1)).toNat

end

end A299766.P16294197802098668108

namespace A299766

/-- `A002034(A204455(n+1))` -/
def P16294197802098668108.Spec : Prop :=
  ∀ n, P16294197802098668108.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P3628204216932556270

`A109613(A006530(n+1)-1)`
-/

namespace A299766.P3628204216932556270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A006530 (n + 1) - 1).toNat

end

end A299766.P3628204216932556270

namespace A299766

/-- `A109613(A006530(n+1)-1)` -/
def P3628204216932556270.Spec : Prop :=
  ∀ n, P3628204216932556270.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P8422410178552325744

`A065475(A111089(n+1)-1)`
-/

namespace A299766.P8422410178552325744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A111089 (n + 1) - 1).toNat

end

end A299766.P8422410178552325744

namespace A299766

/-- `A065475(A111089(n+1)-1)` -/
def P8422410178552325744.Spec : Prop :=
  ∀ n, P8422410178552325744.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P12725055621251118445

`A052125(2*A006530(n+1))`
-/

namespace A299766.P12725055621251118445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (2 * A006530 (n + 1)).toNat

end

end A299766.P12725055621251118445

namespace A299766

/-- `A052125(2*A006530(n+1))` -/
def P12725055621251118445.Spec : Prop :=
  ∀ n, P12725055621251118445.a n = A299766 (n + 1)

end A299766

/-! ## A299766.P1510387491516749514

`A006530(A099985(n+1)/2)`
-/

namespace A299766.P1510387491516749514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A299766.P1510387491516749514

namespace A299766

/-- `A006530(A099985(n+1)/2)` -/
def P1510387491516749514.Spec : Prop :=
  ∀ n, P1510387491516749514.a n = A299766 (n + 1)

end A299766

/-!
# A299767: Partial sums of A299037.

The programs for A299767, there is no canonical definition to state claims against.
-/

/-! ## A299767.P5782564513586324409

`∑[A299037(n+1)]`
-/

namespace A299767.P5782564513586324409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299767.P5782564513586324409

/-!
# A299768: Triangle read by rows: T(n,k) = sum of all squares of the parts k in all partitions of n, with n >= 1, 1 <= k <= n.

The programs for A299768, there is no canonical definition to state claims against.
-/

/-! ## A299768.P1667640196971620669

`A002260(n+1)*A138785(n+1)`
-/

namespace A299768.P1667640196971620669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A138785 (n + 1)

end

end A299768.P1667640196971620669

/-! ## A299768.P2622569121327891435

`A066633(n+1)*A133819(n+1)`
-/

namespace A299768.P2622569121327891435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) * A133819 (n + 1)

end

end A299768.P2622569121327891435

/-! ## A299768.P14677730363464634018

`A002260(n+1)²*A066633(n+1)`
-/

namespace A299768.P14677730363464634018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A066633 (n + 1)

end

end A299768.P14677730363464634018

/-! ## A299768.P978896025209455417

`(A002262(n)+1)²*A066633(n+1)`
-/

namespace A299768.P978896025209455417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A066633 (n + 1)

end

end A299768.P978896025209455417

/-! ## A299768.P8728641177209469650

`A138785(n+1)²/A066633(n+1)`
-/

namespace A299768.P8728641177209469650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) ^ 2 : ℚ) / (A066633 (n + 1) : ℚ)

end

end A299768.P8728641177209469650

/-! ## A299768.P15805150581748427056

`(A172467(n+1)/A008284(n+1))²*A066633(n+1)`
-/

namespace A299768.P15805150581748427056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A172467 (n + 1) : ℚ) / (A008284 (n + 1) : ℚ)) ^ 2 * (A066633 (n + 1) : ℚ)

end

end A299768.P15805150581748427056

/-! ## A299768.P9497311802161873735

`A000290(A138785(n+1)/A066633(n+1))*A066633(n+1)`
-/

namespace A299768.P9497311802161873735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A138785 (n + 1) : ℚ) / (A066633 (n + 1) : ℚ))).toNat * A066633 (n + 1)

end

end A299768.P9497311802161873735

/-! ## A299768.P12239211885487225497

`A004736(A038722(n+1))²*A066633(n+1)`
-/

namespace A299768.P12239211885487225497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat ^ 2 * A066633 (n + 1)

end

end A299768.P12239211885487225497

/-! ## A299768.P13032704432514745463

`A138785(n+1)/A221876(n+1)*A228526(n+1)`
-/

namespace A299768.P13032704432514745463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) : ℚ) / (A221876 (n + 1) : ℚ) * (A228526 (n + 1) : ℚ)

end

end A299768.P13032704432514745463

/-! ## A299768.P8998065694237318455

`A138785(n+1)*A228525(∑[A221876(n+1)])`
-/

namespace A299768.P8998065694237318455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138785 (n + 1) * A228525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299768.P8998065694237318455

/-!
# A299769: Triangle read by rows: T(n,k) is the sum of all squares of the parts k in the last section of the set of partitions of n, with n >= 1, 1 <= k <= n.

The programs for A299769, there is no canonical definition to state claims against.
-/

/-! ## A299769.P5214718786997639908

`(1-(C(comp[∑[n-1]]-n, 2)-n))*A207383(n+1)`
-/

namespace A299769.P5214718786997639908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) * A207383 (n + 1)

end

end A299769.P5214718786997639908

/-! ## A299769.P16925450016186203652

`A002260(n+1)*A207383(n+1)`
-/

namespace A299769.P16925450016186203652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A207383 (n + 1)

end

end A299769.P16925450016186203652

/-! ## A299769.P6938553791290131356

`A133819(n+1)*A182703(n+1)`
-/

namespace A299769.P6938553791290131356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) * A182703 (n + 1)

end

end A299769.P6938553791290131356

/-! ## A299769.P1427090094393106630

`A002260(n+1)²*A182703(n+1)`
-/

namespace A299769.P1427090094393106630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A182703 (n + 1)

end

end A299769.P1427090094393106630

/-! ## A299769.P12733578697340000538

`(A002262(n)+1)²*A182703(n+1)`
-/

namespace A299769.P12733578697340000538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A182703 (n + 1)

end

end A299769.P12733578697340000538

/-! ## A299769.P8904058379135340950

`A138785(n+1)/A066633(n+1)*A207383(n+1)`
-/

namespace A299769.P8904058379135340950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) : ℚ) / (A066633 (n + 1) : ℚ) * (A207383 (n + 1) : ℚ)

end

end A299769.P8904058379135340950

/-! ## A299769.P16177075109737967288

`A004736(A038722(n+1))*A207383(n+1)`
-/

namespace A299769.P16177075109737967288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A207383 (n + 1)

end

end A299769.P16177075109737967288

/-! ## A299769.P16704739255341962710

`A004736(A038722(n+1))²*A182703(n+1)`
-/

namespace A299769.P16704739255341962710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat ^ 2 * A182703 (n + 1)

end

end A299769.P16704739255341962710

/-! ## A299769.P16377837311497998773

`A057555(Δ[n²])*A207383(n+1)`
-/

namespace A299769.P16377837311497998773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A207383 (n + 1)

end

end A299769.P16377837311497998773

/-! ## A299769.P17404298747253625556

`A207377(∑[A182703(n+1)])²*A182703(n+1)`
-/

namespace A299769.P17404298747253625556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2 * A182703 (n + 1)

end

end A299769.P17404298747253625556

/-!
# A299770: a(n) is the total number of elements after n-th stage of a hybrid (and finite) cellular automaton on the infinite square grid, formed by toothpicks of length 2, D-toothpicks, toothpicks of length 1, and T-toothpicks.

The programs for A299770, there is no canonical definition to state claims against.
-/

/-! ## A299770.P15831373630194353179

`∑[A299771(n+1)]`
-/

namespace A299770.P15831373630194353179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299770.P15831373630194353179

/-! ## A299770.P10919610081053864987

`∑[A145154(∑[A222180(n)])]`
-/

namespace A299770.P10919610081053864987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299770.P10919610081053864987

/-! ## A299770.P7520122141506182926

`∑[A145154(record[A024153(4*n+2)])]`
-/

namespace A299770.P7520122141506182926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (4 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299770.P7520122141506182926

/-! ## A299770.P7456589906740874464

`A016813(A155752(n+1)-A103583(n+3))`
-/

namespace A299770.P7456589906740874464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A155752 (n + 1) - A103583 (n + 3)).toNat

end

end A299770.P7456589906740874464

/-!
# A299774: Irregular triangle read by rows in which row n lists the indices of the partitions into equal parts in the list of colexicographically ordered partitions of n.

The programs for A299774, there is no canonical definition to state claims against.
-/

/-! ## A299774.P16524039508475566349

`A142878(∑[A142886(n)!!])`
-/

namespace A299774.P16524039508475566349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A142886 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299774.P16524039508475566349

/-! ## A299774.P1754652783103618732

`A007318(eq[A162986(n), A214772(n)])`
-/

namespace A299774.P1754652783103618732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A299774.P1754652783103618732

/-! ## A299774.P3358878982798821747

`A000005(A273262(n+1)^A054225(n))`
-/

namespace A299774.P3358878982798821747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A273262 (n + 1) : ℚ) ^ (A054225 n : ℤ))).toNat

end

end A299774.P3358878982798821747

/-!
# A299776: a(n) = 1 + 4*(A160120(n) - 1)/3.

The programs for A299776, there is no canonical definition to state claims against.
-/

/-! ## A299776.P9595563407391925394

`round(4/3*A160120(n))`
-/

namespace A299776.P9595563407391925394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (A160120 n : ℚ))

end

end A299776.P9595563407391925394

/-! ## A299776.P1087640349294314596

`floor(4/3*A160120(n))%A016898(n)`
-/

namespace A299776.P1087640349294314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋ (A016898 n)

end

end A299776.P1087640349294314596

/-! ## A299776.P11866461128029438222

`floor(4/3*A160120(n))*char[A222251(n)]`
-/

namespace A299776.P11866461128029438222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋ * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A299776.P11866461128029438222

/-! ## A299776.P15094810291615376666

`floor(4/3*A160120(n))*char[A259153(n)]`
-/

namespace A299776.P15094810291615376666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋ * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A299776.P15094810291615376666

/-! ## A299776.P16721064761440753628

`floor(4/3*A160120(n))*char[A324347(n)]`
-/

namespace A299776.P16721064761440753628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋ * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A299776.P16721064761440753628

/-! ## A299776.P5388622292662504434

`floor(4/3*A160120(n)*A000034(2*n))`
-/

namespace A299776.P5388622292662504434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A160120 n : ℚ) * (A000034 (2 * n) : ℚ)⌋

end

end A299776.P5388622292662504434

/-! ## A299776.P7380479043314662919

`floor(4/3*A160120(n))*A006519(or(11, n))`
-/

namespace A299776.P7380479043314662919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋ * A006519 (Nat.lor 11 n)

end

end A299776.P7380479043314662919

/-! ## A299776.P11842007615245001617

`A000038(A016777(n))+floor(4/3*A160120(n))`
-/

namespace A299776.P11842007615245001617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A016777 n).toNat + ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋

end

end A299776.P11842007615245001617

/-! ## A299776.P13547619996883702757

`A114099(A006519(n+1))+floor(4/3*A160120(n))`
-/

namespace A299776.P13547619996883702757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A006519 (n + 1)).toNat + ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋

end

end A299776.P13547619996883702757

/-! ## A299776.P6430990240767374538

`A114099(A241516(n+1))+floor(4/3*A160120(n))`
-/

namespace A299776.P6430990240767374538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A241516 (n + 1)).toNat + ⌊(4 : ℚ) / 3 * (A160120 n : ℚ)⌋

end

end A299776.P6430990240767374538

/-! ## A299776.P4895781152931778898

`A058281(A160120(n))-A000007(n)`
-/

namespace A299776.P4895781152931778898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A160120 n).toNat - A000007 n

end

end A299776.P4895781152931778898

/-! ## A299776.P16809677749374738606

`A057427(n)*A058281(A160120(n))`
-/

namespace A299776.P16809677749374738606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A058281 (A160120 n).toNat

end

end A299776.P16809677749374738606

/-! ## A299776.P18025145765125572835

`A058281(A160120(n))%A001780(n)`
-/

namespace A299776.P18025145765125572835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058281 (A160120 n).toNat) (A001780 n)

end

end A299776.P18025145765125572835

/-! ## A299776.P9697722642594507032

`char[A065648(n)]*A058281(A160120(n))`
-/

namespace A299776.P9697722642594507032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A058281 (A160120 n).toNat

end

end A299776.P9697722642594507032

/-! ## A299776.P2621012347017801870

`char[A068608(n)]*A058281(A160120(n))`
-/

namespace A299776.P2621012347017801870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068608 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A058281 (A160120 n).toNat

end

end A299776.P2621012347017801870

/-! ## A299776.P4885412457619677695

`and(1, A161340(n))*A058281(A160120(n))`
-/

namespace A299776.P4885412457619677695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A161340 n) * A058281 (A160120 n).toNat

end

end A299776.P4885412457619677695

/-! ## A299776.P10477599128131691160

`A004773(A160120(n))`
-/

namespace A299776.P10477599128131691160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A160120 n).toNat

end

end A299776.P10477599128131691160

/-! ## A299776.P13954645778797096555

`A042965(A160120(n)+1)`
-/

namespace A299776.P13954645778797096555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A160120 n + 1).toNat

end

end A299776.P13954645778797096555

/-!
# A299777: a(n) is the sum of middle divisors of the n-th number that has middle divisors.

The programs for A299777, there is no canonical definition to state claims against.
-/

/-! ## A299777.P12293140443546406539

`A071090(A071562(n+1)%A175043(n))`
-/

namespace A299777.P12293140443546406539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (Int.tmod (A071562 (n + 1)) (A175043 n)).toNat

end

end A299777.P12293140443546406539

/-! ## A299777.P1912268103387815267

`A071090(A071562(n+1))%Δ[A160167(n)]`
-/

namespace A299777.P1912268103387815267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071090 (A071562 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A299777.P1912268103387815267

/-! ## A299777.P8542865478022727750

`A135523(A096673(n+1))+A071090(A071562(n+1))`
-/

namespace A299777.P8542865478022727750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A096673 (n + 1)).toNat + A071090 (A071562 (n + 1)).toNat

end

end A299777.P8542865478022727750

/-! ## A299777.P10063074063905633330

`A071090(A071562(n+1))^A333381(A392708(n+1))`
-/

namespace A299777.P10063074063905633330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071090 (A071562 (n + 1)).toNat : ℚ) ^ (A333381 (A392708 (n + 1)).toNat : ℤ)

end

end A299777.P10063074063905633330

/-! ## A299777.P11456541355544970248

`A071090(A071562(n+1))+C(n, A291965(2*(n+1)))`
-/

namespace A299777.P11456541355544970248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (A071562 (n + 1)).toNat + (Nat.choose n (A291965 (2 * (n + 1))).toNat : ℤ)

end

end A299777.P11456541355544970248

/-!
# A299778: Irregular triangle read by rows: T(n,k) is the part that is adjacent to the k-th peak of the largest Dyck path of the symmetric representation of sigma(n), or T(n,k) = 0 if the mentioned part is already associated to a previous peak or if there is no part adjacent to the k-th peak, with n >= 1, k >= 1.

The programs for A299778, there is no canonical definition to state claims against.
-/

/-! ## A299778.P1742420272719874587

`A302248(A055648(n+1))`
-/

namespace A299778.P1742420272719874587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302248 (A055648 (n + 1)).toNat

end

end A299778.P1742420272719874587

/-! ## A299778.P9444539929527548123

`A302248(A393226(n+2))`
-/

namespace A299778.P9444539929527548123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302248 (A393226 (n + 2)).toNat

end

end A299778.P9444539929527548123

/-! ## A299778.P17217653797837238897

`A302248(A249157(n+1)+1)`
-/

namespace A299778.P17217653797837238897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302248 (A249157 (n + 1) + 1).toNat

end

end A299778.P17217653797837238897

/-! ## A299778.P13184766364541706478

`A302248(C(n+1, A261423(n)))`
-/

namespace A299778.P13184766364541706478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302248 (Nat.choose (n + 1) (A261423 n).toNat)

end

end A299778.P13184766364541706478

/-! ## A299778.P15388377585104895516

`A244250(A320051(n+1))*A302248(n+1)`
-/

namespace A299778.P15388377585104895516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (A320051 (n + 1)).toNat * A302248 (n + 1)

end

end A299778.P15388377585104895516

/-!
# A299779: Triangle read by rows: T(n,k) is the total number of cliques of size k in all partitions of all positive integers <= n.

The programs for A299779, there is no canonical definition to state claims against.
-/

/-! ## A299779.P7200574675944044120

`A334686(2^A066633(n+1))`
-/

namespace A299779.P7200574675944044120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334686 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A066633 (n + 1) : ℤ))).toNat

end

end A299779.P7200574675944044120

/-! ## A299779.P11029220580554957621

`A124761(A175840(n))+A068009(n)`
-/

namespace A299779.P11029220580554957621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A175840 n).toNat + A068009 n

end

end A299779.P11029220580554957621

/-! ## A299779.P1384645482830095953

`or(A068009(n), A124761(A000982(n)))`
-/

namespace A299779.P1384645482830095953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068009 n) (A124761 (A000982 n).toNat)

end

end A299779.P1384645482830095953

/-! ## A299779.P11201291809168085638

`A039019(A066633(n+1)^A269626(n))`
-/

namespace A299779.P11201291809168085638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (SequenceMachineLib.roundAway ((A066633 (n + 1) : ℚ) ^ (A269626 n : ℤ))).toNat

end

end A299779.P11201291809168085638

/-! ## A299779.P2293595895366204621

`or(A025435(A061329(n+1)), A068009(n))`
-/

namespace A299779.P2293595895366204621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025435 (A061329 (n + 1)).toNat) (A068009 n)

end

end A299779.P2293595895366204621

/-!
# A299782: a(n) is the total number of k-uniform tilings, for k = 1..n.

The programs for A299782, there is no canonical definition to state claims against.
-/

/-! ## A299782.P2157929098651871703

`∑[A068599(n+1)]`
-/

namespace A299782.P2157929098651871703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299782.P2157929098651871703

/-!
# A299784: Maximum size of a main class for diagonal Latin squares of order n with the first row in ascending order.

The programs for A299784, there is no canonical definition to state claims against.
-/

/-! ## A299784.P1157630897086001041

`A299787(n+1)/(n+1)!`
-/

namespace A299784.P1157630897086001041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299787 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A299784.P1157630897086001041

/-! ## A299784.P2876807585766009241

`A299787(n+1)/Δ[A007489(n)]`
-/

namespace A299784.P2876807585766009241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299787 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A299784.P2876807585766009241

/-! ## A299784.P7653583490324722661

`A299787(n+1)/record[A094587(n)]`
-/

namespace A299784.P7653583490324722661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299787 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A299784.P7653583490324722661

/-! ## A299784.P14314719061072136397

`A299787(n+1)/∏[A000027(n+1)]`
-/

namespace A299784.P14314719061072136397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299787 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A299784.P14314719061072136397

/-! ## A299784.P17479880359646344115

`A299787(n+1)/∏[A160544(n+1)]`
-/

namespace A299784.P17479880359646344115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299787 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A299784.P17479880359646344115

/-!
# A299785: Minimum size of a main class for diagonal Latin squares of order n.

The programs for A299785, there is no canonical definition to state claims against.
-/

/-! ## A299785.P8519658166972258852

`A299783(n+1)*(n+1)!`
-/

namespace A299785.P8519658166972258852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299783 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A299785.P8519658166972258852

/-! ## A299785.P12475090087887347621

`Δ[A007489(n)]*A299783(n+1)`
-/

namespace A299785.P12475090087887347621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A299783 (n + 1)

end

end A299785.P12475090087887347621

/-! ## A299785.P7331465179858434590

`∏[A005496(n)]*A299783(n+1)`
-/

namespace A299785.P7331465179858434590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A299783 (n + 1)

end

end A299785.P7331465179858434590

/-! ## A299785.P15846608547663657083

`∏[A005555(n)]*A299783(n+1)`
-/

namespace A299785.P15846608547663657083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A299783 (n + 1)

end

end A299785.P15846608547663657083

/-!
# A299786: Expansion of Product_{k>=1} (1 + k^(k-1)*x^k).

The programs for A299786, there is no canonical definition to state claims against.
-/

/-! ## A299786.P1820385926739260562

`A321387(n)-A321434(A321409(n))`
-/

namespace A299786.P1820385926739260562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321387 n - A321434 (A321409 n).toNat

end

end A299786.P1820385926739260562

/-! ## A299786.P14939702595193175899

`A005378(xor(1, A192783(n)))`
-/

namespace A299786.P14939702595193175899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.xor 1 (A192783 n)).toNat

end

end A299786.P14939702595193175899

/-!
# A299787: Maximum size of a main class for diagonal Latin squares of order n.

The programs for A299787, there is no canonical definition to state claims against.
-/

/-! ## A299787.P12120734681063590262

`A299784(n+1)*(n+1)!`
-/

namespace A299787.P12120734681063590262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299784 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A299787.P12120734681063590262

/-! ## A299787.P15901167237480009000

`Δ[A007489(n)]*A299784(n+1)`
-/

namespace A299787.P15901167237480009000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A299784 (n + 1)

end

end A299787.P15901167237480009000

/-! ## A299787.P9947514308587732759

`record[A094587(n)]*A299784(n+1)`
-/

namespace A299787.P9947514308587732759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A299784 (n + 1)

end

end A299787.P9947514308587732759

/-! ## A299787.P3100059097412743240

`record[A262071(n)]*A299784(n+1)`
-/

namespace A299787.P3100059097412743240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A299784 (n + 1)

end

end A299787.P3100059097412743240

/-! ## A299787.P3133531209204267409

`∏[A000027(n+1)]*A299784(n+1)`
-/

namespace A299787.P3133531209204267409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A299784 (n + 1)

end

end A299787.P3133531209204267409

/-!
# A299788: a(n) = denominator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

The programs for A299788, the canonical program `A299788.P8869797389046882130` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299788 has offset 1).

The definition of A299788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299788.P8869797389046882130

`∏{d}[n+1, #]/gcd(∏{d}[n+1, #], A206032(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A299788

/-- `∏{d}[n+1, #]/gcd(∏{d}[n+1, #], A206032(n+1))` -/
def P8869797389046882130.Spec : Prop :=
  ∀ n, P8869797389046882130.a n = (A299788 (n + 1) : ℚ)

end A299788

/-! ## A299788.P7238163258559428859

`∏{d}[n+1, #]/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A299788.P7238163258559428859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A299788.P7238163258559428859

namespace A299788

/-- `∏{d}[n+1, #]/gcd(A007955(n+1), A206032(n+1))` -/
def P7238163258559428859.Spec : Prop :=
  ∀ n, P7238163258559428859.a n = (A299788 (n + 1) : ℚ)

end A299788

/-! ## A299788.P6888697703492493371

`A007955(n+1)/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A299788.P6888697703492493371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A299788.P6888697703492493371

namespace A299788

/-- `A007955(n+1)/gcd(A007955(n+1), A206032(n+1))` -/
def P6888697703492493371.Spec : Prop :=
  ∀ n, P6888697703492493371.a n = (A299788 (n + 1) : ℚ)

end A299788

/-! ## A299788.P9108987330443560764

`A306705(n+1)/gcd(A306705(n+1), A324987(n+1))`
-/

namespace A299788.P9108987330443560764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (Int.gcd (A306705 (n + 1)) (A324987 (n + 1)) : ℚ)

end

end A299788.P9108987330443560764

namespace A299788

/-- `A306705(n+1)/gcd(A306705(n+1), A324987(n+1))` -/
def P9108987330443560764.Spec : Prop :=
  ∀ n, P9108987330443560764.a n = (A299788 (n + 1) : ℚ)

end A299788

/-! ## A299788.P10113973207038644885

`∏{d}[n+1, #²]/gcd(∏{d}[n+1, #²], A324980(n+1))`
-/

namespace A299788.P10113973207038644885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) / (Int.gcd ((∏ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) (A324980 (n + 1)) : ℚ)

end

end A299788.P10113973207038644885

namespace A299788

/-- `∏{d}[n+1, #²]/gcd(∏{d}[n+1, #²], A324980(n+1))` -/
def P10113973207038644885.Spec : Prop :=
  ∀ n, P10113973207038644885.a n = (A299788 (n + 1) : ℚ)

end A299788

/-! ## A299788.P10643959524579167133

`A062758(n+1)/gcd(A062758(n+1), A324980(n+1))`
-/

namespace A299788.P10643959524579167133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) : ℚ) / (Int.gcd (A062758 (n + 1)) (A324980 (n + 1)) : ℚ)

end

end A299788.P10643959524579167133

namespace A299788

/-- `A062758(n+1)/gcd(A062758(n+1), A324980(n+1))` -/
def P10643959524579167133.Spec : Prop :=
  ∀ n, P10643959524579167133.a n = (A299788 (n + 1) : ℚ)

end A299788

/-!
# A299790: Positive integers that do not equal any number minus its number of factorizations.

The programs for A299790, there is no canonical definition to state claims against.
-/

/-! ## A299790.P497146017792153762

`comp[n-A028422(n+1)]`
-/

namespace A299790.P497146017792153762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P497146017792153762

/-! ## A299790.P17773053970783380754

`comp[1-A001055(n+1)+n]`
-/

namespace A299790.P17773053970783380754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001055 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P17773053970783380754

/-! ## A299790.P1597562487962264687

`comp[n-A001055(A028310(n))]`
-/

namespace A299790.P1597562487962264687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001055 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P1597562487962264687

/-! ## A299790.P7224056770916020760

`comp[n-A023443(A001055(n+1))]`
-/

namespace A299790.P7224056770916020760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A001055 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P7224056770916020760

/-! ## A299790.P4233932551073676435

`comp[A326178(n)-A001055(n+1)]`
-/

namespace A299790.P4233932551073676435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n - A001055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P4233932551073676435

/-! ## A299790.P2062073344995923539

`comp[n+1-A331049(A077462(n+1))]`
-/

namespace A299790.P2062073344995923539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A331049 (A077462 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P2062073344995923539

/-! ## A299790.P15529679426918646056

`comp[n+1-(A096276(n+1)-A096276(n))]`
-/

namespace A299790.P15529679426918646056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A096276 (n + 1) - A096276 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P15529679426918646056

/-! ## A299790.P5479400666868470119

`comp[n+1-(A316441(n+1)+2*A339890(n+1))]`
-/

namespace A299790.P5479400666868470119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A316441 (n + 1) + 2 * A339890 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299790.P5479400666868470119

/-!
# A299791: 2-provable primes: Primes p expressible as x+y, where the prime factors of x and y are precisely the primes less than sqrt(p).

The programs for A299791, there is no canonical definition to state claims against.
-/

/-! ## A299791.P8646785906031042659

`A000040(lt[A257378(n+1), A341054(n)])`
-/

namespace A299791.P8646785906031042659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299791.P8646785906031042659

/-! ## A299791.P17051590257673252942

`p?[A136443(n+2)+n+2]`
-/

namespace A299791.P17051590257673252942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299791.P17051590257673252942

/-! ## A299791.P2583066242576796915

`p?[A131738(A136443(n+1)+n)]`
-/

namespace A299791.P2583066242576796915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A136443 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299791.P2583066242576796915

/-! ## A299791.P10784293691942775196

`p?[A352830(A080036(n))]`
-/

namespace A299791.P10784293691942775196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299791.P10784293691942775196

/-! ## A299791.P1483428330799920756

`record[A096006(A096022(3*n+1))]`
-/

namespace A299791.P1483428330799920756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096006 (A096022 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299791.P1483428330799920756

/-!
# A299792: Numbers k such that A177894(k) = 0.

The programs for A299792, there is no canonical definition to state claims against.
-/

/-! ## A299792.P4864091954519625220

`eq[0, A177894(n)]`
-/

namespace A299792.P4864091954519625220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299792.P4864091954519625220

/-! ## A299792.P12296522672943187545

`∪[A115853(n+1), A317291(n+1)]`
-/

namespace A299792.P12296522672943187545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A299792.P12296522672943187545

/-! ## A299792.P1317521717807341108

`∪[A239019(n+1), A317291(n+1)]`
-/

namespace A299792.P1317521717807341108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A299792.P1317521717807341108

/-! ## A299792.P9358298806460410379

`record[A321797(n)%A349536(n+1)]`
-/

namespace A299792.P9358298806460410379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321797 n) (A349536 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299792.P9358298806460410379

/-! ## A299792.P7374863196547078450

`record[A115853(A344180(n))%A113615(n+1)]`
-/

namespace A299792.P7374863196547078450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115853 (A344180 n).toNat) (A113615 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299792.P7374863196547078450

/-!
# A299794: Number of ways to write n^2 as x^2 + y^2 + z^2 + w^2 with x >= y >= 0 <= z <= w such that x or 2*y is a power of 4 (including 4^0 = 1) and x + 15*y is also a power of 4.

The programs for A299794, there is no canonical definition to state claims against.
-/

/-! ## A299794.P4011754850497470357

`A323902(5^A300360(2*(n+1)))`
-/

namespace A299794.P4011754850497470357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A300360 (2 * (n + 1)) : ℤ))).toNat

end

end A299794.P4011754850497470357

/-! ## A299794.P11631318207744703682

`A300356(2*(n+1))%A054760(n)`
-/

namespace A299794.P11631318207744703682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300356 (2 * (n + 1))) (A054760 n)

end

end A299794.P11631318207744703682

/-! ## A299794.P9226756687823668569

`A300360(2*(n+1))%A054760(n)`
-/

namespace A299794.P9226756687823668569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300360 (2 * (n + 1))) (A054760 n)

end

end A299794.P9226756687823668569

/-!
# A299795: Numbers of the form p*2^(p-1) where p is prime.

The programs for A299795, the canonical program `A299795.P4529790232242310538` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299795 has offset 1).

The definition of A299795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299795.P4529790232242310538

`A001787(A000040(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299795

/-- `A001787(A000040(n+1))` -/
def P4529790232242310538.Spec : Prop :=
  ∀ n, P4529790232242310538.a n = A299795 (n + 1)

theorem P4529790232242310538.correct : P4529790232242310538.Spec := by
  intro n
  simp only [A299795, Nat.add_sub_cancel]

end A299795

/-! ## A299795.P6867331512008276536

`A000040(n+1)*A061286(n+1)`
-/

namespace A299795.P6867331512008276536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061286 (n + 1)

end

end A299795.P6867331512008276536

namespace A299795

/-- `A000040(n+1)*A061286(n+1)` -/
def P6867331512008276536.Spec : Prop :=
  ∀ n, P6867331512008276536.a n = A299795 (n + 1)

end A299795

/-! ## A299795.P6577229982917233905

`A001787(p?[comp[n²]])`
-/

namespace A299795.P6577229982917233905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A299795.P6577229982917233905

namespace A299795

/-- `A001787(p?[comp[n²]])` -/
def P6577229982917233905.Spec : Prop :=
  ∀ n, P6577229982917233905.a n = A299795 (n + 1)

end A299795

/-! ## A299795.P5240852711663857829

`A100042(n+1)/2`
-/

namespace A299795.P5240852711663857829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100042 (n + 1) : ℚ) / 2

end

end A299795.P5240852711663857829

namespace A299795

/-- `A100042(n+1)/2` -/
def P5240852711663857829.Spec : Prop :=
  ∀ n, P5240852711663857829.a n = (A299795 (n + 1) : ℚ)

end A299795

/-! ## A299795.P11295646027328526797

`(A099051(n+1)+1)/2`
-/

namespace A299795.P11295646027328526797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099051 (n + 1) + 1 : ℚ) / 2

end

end A299795.P11295646027328526797

namespace A299795

/-- `(A099051(n+1)+1)/2` -/
def P11295646027328526797.Spec : Prop :=
  ∀ n, P11295646027328526797.a n = (A299795 (n + 1) : ℚ)

end A299795

/-! ## A299795.P17892275133875218872

`(A098773(n+1)-1)/2`
-/

namespace A299795.P17892275133875218872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098773 (n + 1) - 1 : ℚ) / 2

end

end A299795.P17892275133875218872

namespace A299795

/-- `(A098773(n+1)-1)/2` -/
def P17892275133875218872.Spec : Prop :=
  ∀ n, P17892275133875218872.a n = (A299795 (n + 1) : ℚ)

end A299795

/-! ## A299795.P5030437457789823255

`record[(n+2)*2^A006530(n+2)]/2`
-/

namespace A299795.P5030437457789823255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A299795.P5030437457789823255

namespace A299795

/-- `record[(n+2)*2^A006530(n+2)]/2` -/
def P5030437457789823255.Spec : Prop :=
  ∀ n, P5030437457789823255.a n = (A299795 (n + 1) : ℚ)

end A299795

/-! ## A299795.P18173205139387794568

`record[(n+2)*2^A020639(n+2)]/2`
-/

namespace A299795.P18173205139387794568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A299795.P18173205139387794568

namespace A299795

/-- `record[(n+2)*2^A020639(n+2)]/2` -/
def P18173205139387794568.Spec : Prop :=
  ∀ n, P18173205139387794568.a n = (A299795 (n + 1) : ℚ)

end A299795

/-! ## A299795.P6774596396954916318

`A318637(A008578(n+2))`
-/

namespace A299795.P6774596396954916318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318637 (A008578 (n + 2)).toNat

end

end A299795.P6774596396954916318

namespace A299795

/-- `A318637(A008578(n+2))` -/
def P6774596396954916318.Spec : Prop :=
  ∀ n, P6774596396954916318.a n = A299795 (n + 1)

end A299795

/-! ## A299795.P5739284345378882149

`A001787(A100484(n+1)/2)`
-/

namespace A299795.P5739284345378882149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A299795.P5739284345378882149

namespace A299795

/-- `A001787(A100484(n+1)/2)` -/
def P5739284345378882149.Spec : Prop :=
  ∀ n, P5739284345378882149.a n = A299795 (n + 1)

end A299795

/-!
# A299797: Ground state degeneracy of a periodic chain for angle Pi < theta < 3*Pi/2.

The programs for A299797, there is no canonical definition to state claims against.
-/

/-! ## A299797.P11373270988102952548

`A196185(A019453(n+1))`
-/

namespace A299797.P11373270988102952548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196185 (A019453 (n + 1)).toNat

end

end A299797.P11373270988102952548

