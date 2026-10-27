import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A029800: Numbers k such that k, k^2 and k^3 all have the same set of digits.

The programs for A029800, there is no canonical definition to state claims against.
-/

/-! ## A029800.P8915135747630732998

`sqrt(A029801(n+1))`
-/

namespace A029800.P8915135747630732998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029801 (n + 1) : ℝ)

end

end A029800.P8915135747630732998

/-!
# A029801: Squares k such that sqrt(k), k and k^(3/2) all have the same digits.

The programs for A029801, there is no canonical definition to state claims against.
-/

/-! ## A029801.P10471355849488605805

`A029800(n+1)²`
-/

namespace A029801.P10471355849488605805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (n + 1) ^ 2

end

end A029801.P10471355849488605805

/-! ## A029801.P16498899909515587470

`A029800(A000027(n+1))^2`
-/

namespace A029801.P16498899909515587470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (A000027 (n + 1)).toNat ^ 2

end

end A029801.P16498899909515587470

/-! ## A029801.P1922282654523076410

`A029800(A080683(n+1))^2`
-/

namespace A029801.P1922282654523076410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (A080683 (n + 1)).toNat ^ 2

end

end A029801.P1922282654523076410

/-! ## A029801.P16769444023324412701

`A029800(A296882(n+1))^2`
-/

namespace A029801.P16769444023324412701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (A296882 (n + 1)).toNat ^ 2

end

end A029801.P16769444023324412701

/-!
# A029802: Cubes k such that k^(1/3), k^(2/3) and k all have the same digits.

The programs for A029802, there is no canonical definition to state claims against.
-/

/-! ## A029802.P8914167669594731594

`A029800(n+1)^3`
-/

namespace A029802.P8914167669594731594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (n + 1) ^ 3

end

end A029802.P8914167669594731594

/-! ## A029802.P15638763880958925636

`sqrt(A029801(n+1))^3`
-/

namespace A029802.P15638763880958925636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029801 (n + 1) : ℝ) ^ 3

end

end A029802.P15638763880958925636

/-! ## A029802.P790316295671437949

`A029800(n+1)*A029801(n+1)`
-/

namespace A029802.P790316295671437949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029800 (n + 1) * A029801 (n + 1)

end

end A029802.P790316295671437949

/-! ## A029802.P6550090106859804647

`∩[A007924(n), A061458(n)]`
-/

namespace A029802.P6550090106859804647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029802.P6550090106859804647

/-!
# A029803: Numbers that are palindromic in base 8.

The programs for A029803, there is no canonical definition to state claims against.
-/

/-! ## A029803.P12173210018061391407

`eq[0, A055957(n)]`
-/

namespace A029803.P12173210018061391407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029803.P12173210018061391407

/-! ## A029803.P16340175310996177654

`eq[n, A030107(n)]`
-/

namespace A029803.P16340175310996177654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029803.P16340175310996177654

/-! ## A029803.P5321564242882683901

`eq[2*n, A055956(n)]`
-/

namespace A029803.P5321564242882683901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029803.P5321564242882683901

/-! ## A029803.P13732404904613726709

`record[and(A028310(n), A030107(n))]`
-/

namespace A029803.P13732404904613726709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 n) (A030107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029803.P13732404904613726709

/-! ## A029803.P839834161972525796

`A030107(record[n-xor(n, A030107(n))])`
-/

namespace A029803.P839834161972525796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A030107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029803.P839834161972525796

/-! ## A029803.P10420745466594849887

`A030107(record[n/(1-A030107(n)+n)])`
-/

namespace A029803.P10420745466594849887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A030107 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029803.P10420745466594849887

/-! ## A029803.P527532336750173242

`eq[A003108(n+n), A003108(A055956(n))]`
-/

namespace A029803.P527532336750173242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A055956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029803.P527532336750173242

/-! ## A029803.P5935497879248628094

`eq[n, A055956(A025480(n))]/2`
-/

namespace A029803.P5935497879248628094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 (A025480 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A029803.P5935497879248628094

/-! ## A029803.P10662869339935848159

`eq[n, A025480(A055956(n))]`
-/

namespace A029803.P10662869339935848159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029803.P10662869339935848159

/-! ## A029803.P14478476668690586259

`eq[A004277(n), A004277(A055956(n)-n)]`
-/

namespace A029803.P14478476668690586259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029803.P14478476668690586259

/-! ## A029803.P10647970604639089725

`eq[A055950(n), A055950(A055956(n)-n)]`
-/

namespace A029803.P10647970604639089725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 (A055956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029803.P10647970604639089725

/-! ## A029803.P4810109591666589053

`eq[A055958(A055956(n)-n), A055958(n)]`
-/

namespace A029803.P4810109591666589053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 (A055956 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029803.P4810109591666589053

/-! ## A029803.P8353441454055548778

`eq[A262223(A055956(n)-n), A262223(n)]`
-/

namespace A029803.P8353441454055548778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 (A055956 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029803.P8353441454055548778

/-! ## A029803.P4087382660485571838

`A028903(A118599(n+1))`
-/

namespace A029803.P4087382660485571838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A118599 (n + 1)).toNat

end

end A029803.P4087382660485571838

/-!
# A029804: Numbers that are palindromic in bases 8 and 10.

The programs for A029804, there is no canonical definition to state claims against.
-/

/-! ## A029804.P2479407490444997704

`∩[A002113(n+1), A029803(n+1)]`
-/

namespace A029804.P2479407490444997704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029804.P2479407490444997704

/-! ## A029804.P14173075351167187582

`∩[A029803(n+1), A173551(n+1)]`
-/

namespace A029804.P14173075351167187582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029804.P14173075351167187582

/-! ## A029804.P16366343580010531351

`eq[A020485(n), A030107(n)]`
-/

namespace A029804.P16366343580010531351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029804.P16366343580010531351

/-! ## A029804.P6094870278918510874

`eq[n, A030107(A047813(n))]`
-/

namespace A029804.P6094870278918510874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029804.P6094870278918510874

/-! ## A029804.P1378346871299168383

`eq[A030107(n), A082216(n)]`
-/

namespace A029804.P1378346871299168383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029804.P1378346871299168383

/-!
# A029805: Numbers k such that k^2 is palindromic in base 8.

The programs for A029805, there is no canonical definition to state claims against.
-/

/-! ## A029805.P10521279440675534663

`sqrt(A029806(n+1))`
-/

namespace A029805.P10521279440675534663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029806 (n + 1) : ℝ)

end

end A029805.P10521279440675534663

/-! ## A029805.P14327210756497316590

`A029806(n+1)^((n+1)/A005843(n+1))`
-/

namespace A029805.P14327210756497316590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029806 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A005843 (n + 1) : ℚ) : ℝ)

end

end A029805.P14327210756497316590

/-! ## A029805.P11221975083323315134

`A029806(n+1)^2^A008683(A051698(n))`
-/

namespace A029805.P11221975083323315134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029806 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A051698 n).toNat : ℤ) : ℝ)

end

end A029805.P11221975083323315134

/-! ## A029805.P3610241651428145729

`A029806(n+1)^(A115362(n²)/2)`
-/

namespace A029805.P3610241651428145729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029806 (n + 1) : ℝ) ^ ((A115362 (n ^ 2) : ℚ) / 2 : ℝ)

end

end A029805.P3610241651428145729

/-! ## A029805.P18422209671408800700

`A029806(n+1)^(A014963(A005893(n))/2)`
-/

namespace A029805.P18422209671408800700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029806 (n + 1) : ℝ) ^ ((A014963 (A005893 n).toNat : ℚ) / 2 : ℝ)

end

end A029805.P18422209671408800700

/-!
# A029806: n in base 8 is a palindromic square.

The programs for A029806, there is no canonical definition to state claims against.
-/

/-! ## A029806.P2975413325851772877

`A029805(n+1)²`
-/

namespace A029806.P2975413325851772877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029805 (n + 1) ^ 2

end

end A029806.P2975413325851772877

/-! ## A029806.P7496828650299843882

`A029805(A000027(n+1))^2`
-/

namespace A029806.P7496828650299843882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029805 (A000027 (n + 1)).toNat ^ 2

end

end A029806.P7496828650299843882

/-! ## A029806.P1653472122053091402

`A029805(n+1)^(A000007(n)+2)`
-/

namespace A029806.P1653472122053091402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029806.P1653472122053091402

/-! ## A029806.P17631093767123870345

`(A029805(n+1)%A002512(n))^2`
-/

namespace A029806.P17631093767123870345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029805 (n + 1)) (A002512 n) ^ 2

end

end A029806.P17631093767123870345

/-! ## A029806.P520428508821492180

`A029805(n+1)^A020639(2*(n+1))`
-/

namespace A029806.P520428508821492180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029806.P520428508821492180

/-! ## A029806.P9596436413883531896

`A029805(n+1)^A000040(gcd(n, n+1))`
-/

namespace A029806.P9596436413883531896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A029806.P9596436413883531896

/-! ## A029806.P15439997380585383567

`A029805(n+1)^A014963(A001316(n))`
-/

namespace A029806.P15439997380585383567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A029806.P15439997380585383567

/-! ## A029806.P17220273658268886913

`A029805(n+1)^A133265(A053644(n))`
-/

namespace A029806.P17220273658268886913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A133265 (A053644 n).toNat : ℤ)

end

end A029806.P17220273658268886913

/-! ## A029806.P7484428423618519617

`A029805(A000027(n+1))*A029805(n+1)`
-/

namespace A029806.P7484428423618519617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029805 (A000027 (n + 1)).toNat * A029805 (n + 1)

end

end A029806.P7484428423618519617

/-! ## A029806.P17505832330568593708

`A029805(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A029806.P17505832330568593708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029805 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A029806.P17505832330568593708

/-!
# A029808: Number of Lyndon words (aperiodic necklaces) with 3n beads of 3 colors, n beads of each color. One color labeled, the other two unlabeled.

The programs for A029808, there is no canonical definition to state claims against.
-/

/-! ## A029808.P4678840651863112612

`A074655(n+1)/2`
-/

namespace A029808.P4678840651863112612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074655 (n + 1) : ℚ) / 2

end

end A029808.P4678840651863112612

/-! ## A029808.P9466827650508923499

`Δ[∑[A074655(n)]/2]`
-/

namespace A029808.P9466827650508923499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074655 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029808.P9466827650508923499

/-! ## A029808.P10863615355071888268

`A074651(n+1)/6`
-/

namespace A029808.P10863615355071888268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074651 (n + 1) : ℚ) / 6

end

end A029808.P10863615355071888268

/-! ## A029808.P4382710887262124022

`record[ratio[A074651(A158416(n))]]`
-/

namespace A029808.P4382710887262124022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074651 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029808.P4382710887262124022

/-! ## A029808.P11316204974138233495

`record[ratio[A074651(A193592(n))]]`
-/

namespace A029808.P11316204974138233495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074651 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029808.P11316204974138233495

/-!
# A029809: Number of Lyndon words (aperiodic necklaces) with 4n beads of 4 colors, n beads of each color. One color labeled, the other 3 unlabeled.

The programs for A029809, there is no canonical definition to state claims against.
-/

/-! ## A029809.P12676973709328351249

`A074656(n+1)/6`
-/

namespace A029809.P12676973709328351249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074656 (n + 1) : ℚ) / 6

end

end A029809.P12676973709328351249

/-! ## A029809.P14729759882693350374

`A074652(n+1)/24`
-/

namespace A029809.P14729759882693350374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074652 (n + 1) : ℚ) / 24

end

end A029809.P14729759882693350374

/-! ## A029809.P14642643857958543796

`Δ[∑[A074656(n)]/6]`
-/

namespace A029809.P14642643857958543796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074656 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029809.P14642643857958543796

/-! ## A029809.P16718717016742984511

`record[ratio[A074656(A158416(n))]]`
-/

namespace A029809.P16718717016742984511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074656 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029809.P16718717016742984511

/-! ## A029809.P18169475254560519497

`record[ratio[A074652(A193592(n))]]`
-/

namespace A029809.P18169475254560519497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074652 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029809.P18169475254560519497

/-!
# A029826: Expansion of 1/(x^10+x^9-x^7-x^6-x^5-x^4-x^3+x+1) (inverse of Salem polynomial).

The programs for A029826, there is no canonical definition to state claims against.
-/

/-! ## A029826.P5329096224996449576

`Δ[A125950(n+9)]`
-/

namespace A029826.P5329096224996449576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029826.P5329096224996449576

/-! ## A029826.P18130416181550539345

`A125950(n+10)-A125950(n+9)`
-/

namespace A029826.P18130416181550539345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 10) - A125950 (n + 9)

end

end A029826.P18130416181550539345

/-! ## A029826.P751909459763223990

`Δ[A173244(n+6)-A173244(n+3)]`
-/

namespace A029826.P751909459763223990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173244 (n + 6) - A173244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029826.P751909459763223990

/-! ## A029826.P13274062196030716810

`A172986(∑[A175782(n)^A347811(n)])`
-/

namespace A029826.P13274062196030716810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175782 n : ℚ) ^ (A347811 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172986 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A029826.P13274062196030716810

/-! ## A029826.P11764015701601485886

`A172986(or(A185294(n), A249818(n+1)))`
-/

namespace A029826.P11764015701601485886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172986 (Int.lor (A185294 n) (A249818 (n + 1))).toNat

end

end A029826.P11764015701601485886

/-!
# A029827: Composite connected numbers: composite numbers k such that g(k) < g(u) + g(v) holds for all relatively prime factorizations k=u*v, where g(x) = ceiling(log_2 x).

The programs for A029827, there is no canonical definition to state claims against.
-/

/-! ## A029827.P9746604736107900305

`∩[A272592(n+1), A366926(n+1)]`
-/

namespace A029827.P9746604736107900305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029827.P9746604736107900305

/-! ## A029827.P2171649690245250983

`∩[A366926(n+1), A384500(n+1)]`
-/

namespace A029827.P2171649690245250983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029827.P2171649690245250983

/-! ## A029827.P2596101442075943753

`∩[A136012(n+1), A366926(n+1)]`
-/

namespace A029827.P2596101442075943753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029827.P2596101442075943753

/-! ## A029827.P14633957803599122454

`∩[A325281(n+1), A366926(n+1)]`
-/

namespace A029827.P14633957803599122454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029827.P14633957803599122454

/-! ## A029827.P14871599598488398695

`∩[A246048(n+1), A366926(n+1)]`
-/

namespace A029827.P14871599598488398695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029827.P14871599598488398695

/-!
# A029828: Eisenstein series E_12(q) (alternate convention E_6(q)), multiplied by 691.

The programs for A029828, there is no canonical definition to state claims against.
-/

/-! ## A029828.P11801895918979408594

`or(A290009(n)^A006352(n), A037164(n))`
-/

namespace A029828.P11801895918979408594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290009 n : ℚ) ^ (A006352 n : ℤ))) (A037164 n)

end

end A029828.P11801895918979408594

/-! ## A029828.P9008791156101692808

`or(A290009(n)^A013973(n), A037164(n))`
-/

namespace A029828.P9008791156101692808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290009 n : ℚ) ^ (A013973 n : ℤ))) (A037164 n)

end

end A029828.P9008791156101692808

/-! ## A029828.P12533432401655261586

`or(A290009(n)^A013974(n), A037164(n))`
-/

namespace A029828.P12533432401655261586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290009 n : ℚ) ^ (A013974 n : ℤ))) (A037164 n)

end

end A029828.P12533432401655261586

/-! ## A029828.P6913771196596431662

`or(A290010(n)^A006352(n), A037164(n))`
-/

namespace A029828.P6913771196596431662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290010 n : ℚ) ^ (A006352 n : ℤ))) (A037164 n)

end

end A029828.P6913771196596431662

/-! ## A029828.P15198038901725798172

`or(A290010(n)^A013973(n), A037164(n))`
-/

namespace A029828.P15198038901725798172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290010 n : ℚ) ^ (A013973 n : ℤ))) (A037164 n)

end

end A029828.P15198038901725798172

/-! ## A029828.P17559425160391461526

`or(A290010(n)^A013974(n), A037164(n))`
-/

namespace A029828.P17559425160391461526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290010 n : ℚ) ^ (A013974 n : ℤ))) (A037164 n)

end

end A029828.P17559425160391461526

/-! ## A029828.P6071448919539905677

`or(A290010(n)^A058550(n), A037164(n))`
-/

namespace A029828.P6071448919539905677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A290010 n : ℚ) ^ (A058550 n : ℤ))) (A037164 n)

end

end A029828.P6071448919539905677

/-!
# A029832: A discrete version of the Mangoldt function: if n is prime then ceiling(log(n)) else 0.

The programs for A029832, the canonical program `A029832.P6927503962102262836` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029832 has offset 1).

The definition of A029832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029832.P11811676358303669334

`ceil(log(∏{p}[∏{p}[n+1, C(#, n)], #]))`
-/

namespace A029832.P11811676358303669334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)⌉

end

end A029832.P11811676358303669334

namespace A029832

/-- `ceil(log(∏{p}[∏{p}[n+1, C(#, n)], #]))` -/
def P11811676358303669334.Spec : Prop :=
  ∀ n, P11811676358303669334.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P3667154826338861136

`ceil(log(A089026(n+1)))`
-/

namespace A029832.P3667154826338861136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A089026 (n + 1) : ℝ)⌉

end

end A029832.P3667154826338861136

namespace A029832

/-- `ceil(log(A089026(n+1)))` -/
def P3667154826338861136.Spec : Prop :=
  ∀ n, P3667154826338861136.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P15571361721591001852

`ceil(log(n+1)*A010051(n+1))`
-/

namespace A029832.P15571361721591001852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) * (A010051 (n + 1) : ℝ)⌉

end

end A029832.P15571361721591001852

namespace A029832

/-- `ceil(log(n+1)*A010051(n+1))` -/
def P15571361721591001852.Spec : Prop :=
  ∀ n, P15571361721591001852.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P3471665181621614976

`ceil(log(∏{d}[C(A006530(n+1), n), #]))`
-/

namespace A029832.P3471665181621614976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌉

end

end A029832.P3471665181621614976

namespace A029832

/-- `ceil(log(∏{d}[C(A006530(n+1), n), #]))` -/
def P3471665181621614976.Spec : Prop :=
  ∀ n, P3471665181621614976.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P11242953719278020036

`ceil(log(∏{d}[C(A014963(n+1), n), #]))`
-/

namespace A029832.P11242953719278020036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌉

end

end A029832.P11242953719278020036

namespace A029832

/-- `ceil(log(∏{d}[C(A014963(n+1), n), #]))` -/
def P11242953719278020036.Spec : Prop :=
  ∀ n, P11242953719278020036.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P14300749315705622897

`ceil(log(n*C(2, A000005(n+1))+1))`
-/

namespace A029832.P14300749315705622897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n * Nat.choose 2 (A000005 (n + 1)).toNat + 1 : ℝ)⌉

end

end A029832.P14300749315705622897

namespace A029832

/-- `ceil(log(n*C(2, A000005(n+1))+1))` -/
def P14300749315705622897.Spec : Prop :=
  ∀ n, P14300749315705622897.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P14092454680142370108

`A004233(A089026(n+1))`
-/

namespace A029832.P14092454680142370108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A089026 (n + 1)).toNat

end

end A029832.P14092454680142370108

namespace A029832

/-- `A004233(A089026(n+1))` -/
def P14092454680142370108.Spec : Prop :=
  ∀ n, P14092454680142370108.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P1400511664807117224

`A029834(n+1)+A010051(n+1)`
-/

namespace A029832.P1400511664807117224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (n + 1) + A010051 (n + 1)

end

end A029832.P1400511664807117224

namespace A029832

/-- `A029834(n+1)+A010051(n+1)` -/
def P1400511664807117224.Spec : Prop :=
  ∀ n, P1400511664807117224.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P6927503962102262836

`A004233(n+1)*A010051(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029832

/-- `A004233(n+1)*A010051(n+1)` -/
def P6927503962102262836.Spec : Prop :=
  ∀ n, P6927503962102262836.a n = A029832 (n + 1)

theorem P6927503962102262836.correct : P6927503962102262836.Spec := by
  intro n
  simp only [A029832, Nat.add_sub_cancel]

end A029832

/-! ## A029832.P11605312653347431189

`A004233(n+1)*A080339(n+1)`
-/

namespace A029832.P11605312653347431189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) * A080339 (n + 1)

end

end A029832.P11605312653347431189

namespace A029832

/-- `A004233(n+1)*A080339(n+1)` -/
def P11605312653347431189.Spec : Prop :=
  ∀ n, P11605312653347431189.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P9788653232499317913

`A004233(n+1)%A014973(n+1)`
-/

namespace A029832.P9788653232499317913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004233 (n + 1)) (A014973 (n + 1))

end

end A029832.P9788653232499317913

namespace A029832

/-- `A004233(n+1)%A014973(n+1)` -/
def P9788653232499317913.Spec : Prop :=
  ∀ n, P9788653232499317913.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P8455200935808160558

`A212450(n+1)%A014973(n+1)`
-/

namespace A029832.P8455200935808160558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212450 (n + 1)) (A014973 (n + 1))

end

end A029832.P8455200935808160558

namespace A029832

/-- `A212450(n+1)%A014973(n+1)` -/
def P8455200935808160558.Spec : Prop :=
  ∀ n, P8455200935808160558.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P3163946296936770173

`lcm(A004233(n+1), A129950(n+1))`
-/

namespace A029832.P3163946296936770173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004233 (n + 1)) (A129950 (n + 1))

end

end A029832.P3163946296936770173

namespace A029832

/-- `lcm(A004233(n+1), A129950(n+1))` -/
def P3163946296936770173.Spec : Prop :=
  ∀ n, (P3163946296936770173.a n : ℤ) = A029832 (n + 1)

end A029832

/-! ## A029832.P3851186221784665863

`(A000195(n+1)+1)*A010051(n+1)`
-/

namespace A029832.P3851186221784665863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000195 (n + 1) + 1) * A010051 (n + 1)

end

end A029832.P3851186221784665863

namespace A029832

/-- `(A000195(n+1)+1)*A010051(n+1)` -/
def P3851186221784665863.Spec : Prop :=
  ∀ n, P3851186221784665863.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P5108989866000187168

`(A212445(n+1)-n)*A010051(n+1)`
-/

namespace A029832.P5108989866000187168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212445 (n + 1) - (n : ℤ)) * A010051 (n + 1)

end

end A029832.P5108989866000187168

namespace A029832

/-- `(A212445(n+1)-n)*A010051(n+1)` -/
def P5108989866000187168.Spec : Prop :=
  ∀ n, P5108989866000187168.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P10195149680209668040

`ceil(log(A061397(n+1)+A005171(n+1)))`
-/

namespace A029832.P10195149680209668040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A061397 (n + 1) + A005171 (n + 1) : ℝ)⌉

end

end A029832.P10195149680209668040

namespace A029832

/-- `ceil(log(A061397(n+1)+A005171(n+1)))` -/
def P10195149680209668040.Spec : Prop :=
  ∀ n, P10195149680209668040.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P13229839934524586285

`(A000195(n+1)+1)*A129950(n+1)²`
-/

namespace A029832.P13229839934524586285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000195 (n + 1) + 1) * A129950 (n + 1) ^ 2

end

end A029832.P13229839934524586285

namespace A029832

/-- `(A000195(n+1)+1)*A129950(n+1)²` -/
def P13229839934524586285.Spec : Prop :=
  ∀ n, P13229839934524586285.a n = A029832 (n + 1)

end A029832

/-! ## A029832.P7492580067830991160

`ceil(Δ[log(A034386(n))])`
-/

namespace A029832.P7492580067830991160
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A034386 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A029832.P7492580067830991160

namespace A029832

/-- `ceil(Δ[log(A034386(n))])` -/
def P7492580067830991160.Spec : Prop :=
  ∀ n, P7492580067830991160.a n = A029832 (n + 1)

end A029832

/-!
# A029833: A discrete version of the Mangoldt function: if n is prime then round(log(n)) else 0.

The programs for A029833, the canonical program `A029833.P5806842988776949731` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029833 has offset 1).

The definition of A029833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029833.P1326112169704983127

`round(log(∏{p}[∏{p}[n+1, C(#, n)], #]))`
-/

namespace A029833.P1326112169704983127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ))

end

end A029833.P1326112169704983127

namespace A029833

/-- `round(log(∏{p}[∏{p}[n+1, C(#, n)], #]))` -/
def P1326112169704983127.Spec : Prop :=
  ∀ n, P1326112169704983127.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P3150162957745367494

`round(log(A089026(n+1)))`
-/

namespace A029833.P3150162957745367494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A089026 (n + 1) : ℝ))

end

end A029833.P3150162957745367494

namespace A029833

/-- `round(log(A089026(n+1)))` -/
def P3150162957745367494.Spec : Prop :=
  ∀ n, P3150162957745367494.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P2136790766668848369

`round(log(A061397(n+1)+1))`
-/

namespace A029833.P2136790766668848369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A061397 (n + 1) + 1 : ℝ))

end

end A029833.P2136790766668848369

namespace A029833

/-- `round(log(A061397(n+1)+1))` -/
def P2136790766668848369.Spec : Prop :=
  ∀ n, P2136790766668848369.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P11214851097619196970

`round(log(∏{d}[C(A006530(n+1), n), #]))`
-/

namespace A029833.P11214851097619196970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ))

end

end A029833.P11214851097619196970

namespace A029833

/-- `round(log(∏{d}[C(A006530(n+1), n), #]))` -/
def P11214851097619196970.Spec : Prop :=
  ∀ n, P11214851097619196970.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P10814228390578822113

`round(log(∏{d}[C(A014963(n+1), n), #]))`
-/

namespace A029833.P10814228390578822113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ))

end

end A029833.P10814228390578822113

namespace A029833

/-- `round(log(∏{d}[C(A014963(n+1), n), #]))` -/
def P10814228390578822113.Spec : Prop :=
  ∀ n, P10814228390578822113.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P18137500919419667198

`round(log(n*C(2, A000005(n+1))+1))`
-/

namespace A029833.P18137500919419667198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n * Nat.choose 2 (A000005 (n + 1)).toNat + 1 : ℝ))

end

end A029833.P18137500919419667198

namespace A029833

/-- `round(log(n*C(2, A000005(n+1))+1))` -/
def P18137500919419667198.Spec : Prop :=
  ∀ n, P18137500919419667198.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P4793902025741392691

`A000193(A089026(n+1))`
-/

namespace A029833.P4793902025741392691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A089026 (n + 1)).toNat

end

end A029833.P4793902025741392691

namespace A029833

/-- `A000193(A089026(n+1))` -/
def P4793902025741392691.Spec : Prop :=
  ∀ n, P4793902025741392691.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P5806842988776949731

`A000193(n+1)*A010051(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029833

/-- `A000193(n+1)*A010051(n+1)` -/
def P5806842988776949731.Spec : Prop :=
  ∀ n, P5806842988776949731.a n = A029833 (n + 1)

theorem P5806842988776949731.correct : P5806842988776949731.Spec := by
  intro n
  simp only [A029833, Nat.add_sub_cancel]

end A029833

/-! ## A029833.P5105080552217916303

`A010051(n+1)*A053821(n+1)`
-/

namespace A029833.P5105080552217916303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A053821 (n + 1)

end

end A029833.P5105080552217916303

namespace A029833

/-- `A010051(n+1)*A053821(n+1)` -/
def P5105080552217916303.Spec : Prop :=
  ∀ n, P5105080552217916303.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P6068492418609043884

`A000193(n+1)*A080339(n+1)`
-/

namespace A029833.P6068492418609043884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1) * A080339 (n + 1)

end

end A029833.P6068492418609043884

namespace A029833

/-- `A000193(n+1)*A080339(n+1)` -/
def P6068492418609043884.Spec : Prop :=
  ∀ n, P6068492418609043884.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P11098822401829884752

`A053821(n+1)*A080339(n+1)`
-/

namespace A029833.P11098822401829884752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053821 (n + 1) * A080339 (n + 1)

end

end A029833.P11098822401829884752

namespace A029833

/-- `A053821(n+1)*A080339(n+1)` -/
def P11098822401829884752.Spec : Prop :=
  ∀ n, P11098822401829884752.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P1796072492679470984

`A053821(n+1)%A089026(n+1)`
-/

namespace A029833.P1796072492679470984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053821 (n + 1)) (A089026 (n + 1))

end

end A029833.P1796072492679470984

namespace A029833

/-- `A053821(n+1)%A089026(n+1)` -/
def P1796072492679470984.Spec : Prop :=
  ∀ n, P1796072492679470984.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P4876447267556343188

`lcm(A000193(n+1), A129950(n+1))`
-/

namespace A029833.P4876447267556343188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000193 (n + 1)) (A129950 (n + 1))

end

end A029833.P4876447267556343188

namespace A029833

/-- `lcm(A000193(n+1), A129950(n+1))` -/
def P4876447267556343188.Spec : Prop :=
  ∀ n, (P4876447267556343188.a n : ℤ) = A029833 (n + 1)

end A029833

/-! ## A029833.P17162951068970074651

`A129950(n+1)²*A053821(n+1)`
-/

namespace A029833.P17162951068970074651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2 * A053821 (n + 1)

end

end A029833.P17162951068970074651

namespace A029833

/-- `A129950(n+1)²*A053821(n+1)` -/
def P17162951068970074651.Spec : Prop :=
  ∀ n, P17162951068970074651.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P15293588494991406902

`∑{d}[n+1, A008683(#)*A053821((n+1)/#)]`
-/

namespace A029833.P15293588494991406902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A053821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029833.P15293588494991406902

namespace A029833

/-- `∑{d}[n+1, A008683(#)*A053821((n+1)/#)]` -/
def P15293588494991406902.Spec : Prop :=
  ∀ n, P15293588494991406902.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P3212661945885732493

`A053821(2*A089026(n+1)-A089026(n+1))`
-/

namespace A029833.P3212661945885732493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053821 (2 * A089026 (n + 1) - A089026 (n + 1)).toNat

end

end A029833.P3212661945885732493

namespace A029833

/-- `A053821(2*A089026(n+1)-A089026(n+1))` -/
def P3212661945885732493.Spec : Prop :=
  ∀ n, P3212661945885732493.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P1138397890092268770

`(A029832(n+1)-A029834(n+1))*A053821(n+1)`
-/

namespace A029833.P1138397890092268770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029832 (n + 1) - A029834 (n + 1)) * A053821 (n + 1)

end

end A029833.P1138397890092268770

namespace A029833

/-- `(A029832(n+1)-A029834(n+1))*A053821(n+1)` -/
def P1138397890092268770.Spec : Prop :=
  ∀ n, P1138397890092268770.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P2228164438195404258

`lcm(A053821(n+1), A227625(n+1))`
-/

namespace A029833.P2228164438195404258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053821 (n + 1)) (A227625 (n + 1))

end

end A029833.P2228164438195404258

namespace A029833

/-- `lcm(A053821(n+1), A227625(n+1))` -/
def P2228164438195404258.Spec : Prop :=
  ∀ n, (P2228164438195404258.a n : ℤ) = A029833 (n + 1)

end A029833

/-! ## A029833.P11272346094305018750

`round(Δ[log(A034386(n))])`
-/

namespace A029833.P11272346094305018750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A034386 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A029833.P11272346094305018750

namespace A029833

/-- `round(Δ[log(A034386(n))])` -/
def P11272346094305018750.Spec : Prop :=
  ∀ n, P11272346094305018750.a n = A029833 (n + 1)

end A029833

/-! ## A029833.P13280152355341604858

`A053821(A089026(n+1)²)`
-/

namespace A029833.P13280152355341604858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053821 (A089026 (n + 1) ^ 2).toNat

end

end A029833.P13280152355341604858

namespace A029833

/-- `A053821(A089026(n+1)²)` -/
def P13280152355341604858.Spec : Prop :=
  ∀ n, P13280152355341604858.a n = A029833 (n + 1)

end A029833

/-!
# A029834: A discrete version of the Mangoldt function: if n is prime then floor(log(n)) else 0.

The programs for A029834, the canonical program `A029834.P17546886349959087234` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029834 has offset 1).

The definition of A029834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029834.P2661371296372077451

`floor(log(∏{p}[∏{p}[n+1, C(#, n)], #]))`
-/

namespace A029834.P2661371296372077451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)⌋

end

end A029834.P2661371296372077451

namespace A029834

/-- `floor(log(∏{p}[∏{p}[n+1, C(#, n)], #]))` -/
def P2661371296372077451.Spec : Prop :=
  ∀ n, P2661371296372077451.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P7817395470200127316

`floor(log(ceil(∏{d}[n+1, #^(#-n)])))`
-/

namespace A029834.P7817395470200127316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (⌈∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉ : ℝ)⌋

end

end A029834.P7817395470200127316

namespace A029834

/-- `floor(log(ceil(∏{d}[n+1, #^(#-n)])))` -/
def P7817395470200127316.Spec : Prop :=
  ∀ n, P7817395470200127316.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P8523908971025551936

`floor(log(A118136(n)))`
-/

namespace A029834.P8523908971025551936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A118136 n : ℝ)⌋

end

end A029834.P8523908971025551936

namespace A029834

/-- `floor(log(A118136(n)))` -/
def P8523908971025551936.Spec : Prop :=
  ∀ n, P8523908971025551936.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P9495784989877274056

`floor(log(A014973(n+1)))`
-/

namespace A029834.P9495784989877274056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A014973 (n + 1) : ℝ)⌋

end

end A029834.P9495784989877274056

namespace A029834

/-- `floor(log(A014973(n+1)))` -/
def P9495784989877274056.Spec : Prop :=
  ∀ n, P9495784989877274056.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P12783108882594929791

`floor(log(A089026(n+1)))`
-/

namespace A029834.P12783108882594929791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A089026 (n + 1) : ℝ)⌋

end

end A029834.P12783108882594929791

namespace A029834

/-- `floor(log(A089026(n+1)))` -/
def P12783108882594929791.Spec : Prop :=
  ∀ n, P12783108882594929791.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P10114179144858831523

`floor(log(n+1)*A010051(n+1))`
-/

namespace A029834.P10114179144858831523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ) * (A010051 (n + 1) : ℝ)⌋

end

end A029834.P10114179144858831523

namespace A029834

/-- `floor(log(n+1)*A010051(n+1))` -/
def P10114179144858831523.Spec : Prop :=
  ∀ n, P10114179144858831523.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P4911499228073787350

`floor(log(∏{d}[C(A006530(n+1), n), #]))`
-/

namespace A029834.P4911499228073787350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌋

end

end A029834.P4911499228073787350

namespace A029834

/-- `floor(log(∏{d}[C(A006530(n+1), n), #]))` -/
def P4911499228073787350.Spec : Prop :=
  ∀ n, P4911499228073787350.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P1185757977972411429

`floor(log(∏{d}[C(A014963(n+1), n), #]))`
-/

namespace A029834.P1185757977972411429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌋

end

end A029834.P1185757977972411429

namespace A029834

/-- `floor(log(∏{d}[C(A014963(n+1), n), #]))` -/
def P1185757977972411429.Spec : Prop :=
  ∀ n, P1185757977972411429.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P10640588750126145722

`floor(log(n*C(2, A000005(n+1))+1))`
-/

namespace A029834.P10640588750126145722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n * Nat.choose 2 (A000005 (n + 1)).toNat + 1 : ℝ)⌋

end

end A029834.P10640588750126145722

namespace A029834

/-- `floor(log(n*C(2, A000005(n+1))+1))` -/
def P10640588750126145722.Spec : Prop :=
  ∀ n, P10640588750126145722.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P9752800239904829753

`floor(log(ceil(A020639(n+1)²/(n+3))+1))`
-/

namespace A029834.P9752800239904829753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (⌈(A020639 (n + 1) ^ 2 : ℚ) / (n + 3 : ℚ)⌉ + 1 : ℝ)⌋

end

end A029834.P9752800239904829753

namespace A029834

/-- `floor(log(ceil(A020639(n+1)²/(n+3))+1))` -/
def P9752800239904829753.Spec : Prop :=
  ∀ n, P9752800239904829753.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P17546886349959087234

`A000195(A118136(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029834

/-- `A000195(A118136(n))` -/
def P17546886349959087234.Spec : Prop :=
  ∀ n, P17546886349959087234.a n = A029834 (n + 1)

theorem P17546886349959087234.correct : P17546886349959087234.Spec := by
  intro n
  simp only [A029834, Nat.add_sub_cancel]

end A029834

/-! ## A029834.P16141897178722753272

`A000195(A014973(n+1))`
-/

namespace A029834.P16141897178722753272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A014973 (n + 1)).toNat

end

end A029834.P16141897178722753272

namespace A029834

/-- `A000195(A014973(n+1))` -/
def P16141897178722753272.Spec : Prop :=
  ∀ n, P16141897178722753272.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P12385265086777489710

`A000195(A089026(n+1))`
-/

namespace A029834.P12385265086777489710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A089026 (n + 1)).toNat

end

end A029834.P12385265086777489710

namespace A029834

/-- `A000195(A089026(n+1))` -/
def P12385265086777489710.Spec : Prop :=
  ∀ n, P12385265086777489710.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P11957058382450698369

`A000195(gcd(n+1, A151800(n)))`
-/

namespace A029834.P11957058382450698369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (Int.gcd (n + 1 : ℤ) (A151800 n))

end

end A029834.P11957058382450698369

namespace A029834

/-- `A000195(gcd(n+1, A151800(n)))` -/
def P11957058382450698369.Spec : Prop :=
  ∀ n, P11957058382450698369.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P7651497539090242944

`A065033(2*A029832(n+1))-1`
-/

namespace A029834.P7651497539090242944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A029832 (n + 1)).toNat - 1

end

end A029834.P7651497539090242944

namespace A029834

/-- `A065033(2*A029832(n+1))-1` -/
def P7651497539090242944.Spec : Prop :=
  ∀ n, P7651497539090242944.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P2652442232549135656

`A029832(n+1)-A010051(n+1)`
-/

namespace A029834.P2652442232549135656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (n + 1) - A010051 (n + 1)

end

end A029834.P2652442232549135656

namespace A029834

/-- `A029832(n+1)-A010051(n+1)` -/
def P2652442232549135656.Spec : Prop :=
  ∀ n, P2652442232549135656.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P6416116062685049789

`A000195(n+1)*A010051(n+1)`
-/

namespace A029834.P6416116062685049789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) * A010051 (n + 1)

end

end A029834.P6416116062685049789

namespace A029834

/-- `A000195(n+1)*A010051(n+1)` -/
def P6416116062685049789.Spec : Prop :=
  ∀ n, P6416116062685049789.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P1259671522217886599

`A000195(n+1)*A080339(n+1)`
-/

namespace A029834.P1259671522217886599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) * A080339 (n + 1)

end

end A029834.P1259671522217886599

namespace A029834

/-- `A000195(n+1)*A080339(n+1)` -/
def P1259671522217886599.Spec : Prop :=
  ∀ n, P1259671522217886599.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P7758738539739035921

`A000195(n+1)*A080545(n+1)`
-/

namespace A029834.P7758738539739035921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) * A080545 (n + 1)

end

end A029834.P7758738539739035921

namespace A029834

/-- `A000195(n+1)*A080545(n+1)` -/
def P7758738539739035921.Spec : Prop :=
  ∀ n, P7758738539739035921.a n = A029834 (n + 1)

end A029834

/-! ## A029834.P2505059707953492574

`A010051(n+1)*A079554(n+1)`
-/

namespace A029834.P2505059707953492574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A079554 (n + 1)

end

end A029834.P2505059707953492574

namespace A029834

/-- `A010051(n+1)*A079554(n+1)` -/
def P2505059707953492574.Spec : Prop :=
  ∀ n, P2505059707953492574.a n = A029834 (n + 1)

end A029834

/-!
# A029835: a(n) = floor(log(prime(n))).

The programs for A029835, the canonical program `A029835.P15078656030680500543` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029835 has offset 1).

The definition of A029835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(A000040(n+1)))` (program `A029835.P15078656030680500543`, by `A029835.P15078656030680500543.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029835.P15078656030680500543

`floor(log(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029835

/-- `floor(log(A000040(n+1)))` -/
def P15078656030680500543.Spec : Prop :=
  ∀ n, P15078656030680500543.a n = A029835 (n + 1)

theorem P15078656030680500543.correct : P15078656030680500543.Spec := by
  intro n
  simp only [A029835, Nat.add_sub_cancel]

end A029835

/-! ## A029835.P13819344350345119138

`floor(log(Δ[A007504(n)]))`
-/

namespace A029835.P13819344350345119138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A029835.P13819344350345119138

namespace A029835

/-- `floor(log(Δ[A007504(n)]))` -/
def P13819344350345119138.Spec : Prop :=
  ∀ n, P13819344350345119138.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P17448525988422654103

`∑[char[∑[A061273(n)]]]`
-/

namespace A029835.P17448525988422654103
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029835.P17448525988422654103

namespace A029835

/-- `∑[char[∑[A061273(n)]]]` -/
def P17448525988422654103.Spec : Prop :=
  ∀ n, (P17448525988422654103.a n : ℤ) = A029835 (n + 1)

end A029835

/-! ## A029835.P10618877618702816353

`floor(sqrt(A086142(n+1)))`
-/

namespace A029835.P10618877618702816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086142 (n + 1))

end

end A029835.P10618877618702816353

namespace A029835

/-- `floor(sqrt(A086142(n+1)))` -/
def P10618877618702816353.Spec : Prop :=
  ∀ n, P10618877618702816353.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P9093717715770308

`floor(log(A006005(n+1)))`
-/

namespace A029835.P9093717715770308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A006005 (n + 1) : ℝ)⌋

end

end A029835.P9093717715770308

namespace A029835

/-- `floor(log(A006005(n+1)))` -/
def P9093717715770308.Spec : Prop :=
  ∀ n, P9093717715770308.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P5233787417289592293

`∑[char[A040014(n+1)]]`
-/

namespace A029835.P5233787417289592293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029835.P5233787417289592293

namespace A029835

/-- `∑[char[A040014(n+1)]]` -/
def P5233787417289592293.Spec : Prop :=
  ∀ n, (P5233787417289592293.a n : ℤ) = A029835 (n + 1)

end A029835

/-! ## A029835.P2129110285156929451

`∑[char[A040014(n)]]-1`
-/

namespace A029835.P2129110285156929451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A029835.P2129110285156929451

namespace A029835

/-- `∑[char[A040014(n)]]-1` -/
def P2129110285156929451.Spec : Prop :=
  ∀ n, P2129110285156929451.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P12011422575318737010

`floor(log(A008864(n+1)-1))`
-/

namespace A029835.P12011422575318737010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A008864 (n + 1) - 1 : ℝ)⌋

end

end A029835.P12011422575318737010

namespace A029835

/-- `floor(log(A008864(n+1)-1))` -/
def P12011422575318737010.Spec : Prop :=
  ∀ n, P12011422575318737010.a n = A029835 (n + 1)

theorem P12011422575318737010.correct : P12011422575318737010.Spec := by
  intro n
  simp only [A029835, Nat.add_sub_cancel, A029835.P12011422575318737010.a, A029835.P15078656030680500543.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029835

/-! ## A029835.P13077695131990806408

`floor(log(A040976(n+1)+2))`
-/

namespace A029835.P13077695131990806408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A040976 (n + 1) + 2 : ℝ)⌋

end

end A029835.P13077695131990806408

namespace A029835

/-- `floor(log(A040976(n+1)+2))` -/
def P13077695131990806408.Spec : Prop :=
  ∀ n, P13077695131990806408.a n = A029835 (n + 1)

theorem P13077695131990806408.correct : P13077695131990806408.Spec := by
  intro n
  simp only [A029835, Nat.add_sub_cancel, A029835.P13077695131990806408.a, A029835.P15078656030680500543.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029835

/-! ## A029835.P9336383496891117914

`floor(log(A001248(n+1))/2)`
-/

namespace A029835.P9336383496891117914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A001248 (n + 1) : ℝ) / 2⌋

end

end A029835.P9336383496891117914

namespace A029835

/-- `floor(log(A001248(n+1))/2)` -/
def P9336383496891117914.Spec : Prop :=
  ∀ n, P9336383496891117914.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P7330772992721616769

`floor(log(A100484(n+1)/2))`
-/

namespace A029835.P7330772992721616769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((A100484 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A029835.P7330772992721616769

namespace A029835

/-- `floor(log(A100484(n+1)/2))` -/
def P7330772992721616769.Spec : Prop :=
  ∀ n, P7330772992721616769.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P6587527026429157678

`floor(log(floor(A072055(n+1)/2)))`
-/

namespace A029835.P6587527026429157678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (⌊(A072055 (n + 1) : ℚ) / 2⌋ : ℝ)⌋

end

end A029835.P6587527026429157678

namespace A029835

/-- `floor(log(floor(A072055(n+1)/2)))` -/
def P6587527026429157678.Spec : Prop :=
  ∀ n, P6587527026429157678.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P3588430821812088721

`A000196(A086142(n+1))`
-/

namespace A029835.P3588430821812088721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A086142 (n + 1)).toNat

end

end A029835.P3588430821812088721

namespace A029835

/-- `A000196(A086142(n+1))` -/
def P3588430821812088721.Spec : Prop :=
  ∀ n, P3588430821812088721.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P8216603459798290241

`floor(log(A008578(n+2)))`
-/

namespace A029835.P8216603459798290241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A008578 (n + 2) : ℝ)⌋

end

end A029835.P8216603459798290241

namespace A029835

/-- `floor(log(A008578(n+2)))` -/
def P8216603459798290241.Spec : Prop :=
  ∀ n, P8216603459798290241.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P7440897441326163953

`floor(log(A182986(n+2)))`
-/

namespace A029835.P7440897441326163953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A182986 (n + 2) : ℝ)⌋

end

end A029835.P7440897441326163953

namespace A029835

/-- `floor(log(A182986(n+2)))` -/
def P7440897441326163953.Spec : Prop :=
  ∀ n, P7440897441326163953.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P2879614091116526021

`floor(log(A001747(n+2)/2))`
-/

namespace A029835.P2879614091116526021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((A001747 (n + 2) : ℚ) / 2 : ℝ)⌋

end

end A029835.P2879614091116526021

namespace A029835

/-- `floor(log(A001747(n+2)/2))` -/
def P2879614091116526021.Spec : Prop :=
  ∀ n, P2879614091116526021.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P14409476247504743295

`floor(log(p?[A000430(n+1)]))`
-/

namespace A029835.P14409476247504743295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A029835.P14409476247504743295

namespace A029835

/-- `floor(log(p?[A000430(n+1)]))` -/
def P14409476247504743295.Spec : Prop :=
  ∀ n, P14409476247504743295.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P920750030975604969

`floor(log(p?[xor(2, n)]))`
-/

namespace A029835.P920750030975604969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A029835.P920750030975604969

namespace A029835

/-- `floor(log(p?[xor(2, n)]))` -/
def P920750030975604969.Spec : Prop :=
  ∀ n, P920750030975604969.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P16742758904351972687

`floor(record[log(A006530(n+2))])`
-/

namespace A029835.P16742758904351972687
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A029835.P16742758904351972687

namespace A029835

/-- `floor(record[log(A006530(n+2))])` -/
def P16742758904351972687.Spec : Prop :=
  ∀ n, P16742758904351972687.a n = A029835 (n + 1)

end A029835

/-! ## A029835.P13942158364814772260

`floor(record[log(A020639(n+2))])`
-/

namespace A029835.P13942158364814772260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A029835.P13942158364814772260

namespace A029835

/-- `floor(record[log(A020639(n+2))])` -/
def P13942158364814772260.Spec : Prop :=
  ∀ n, P13942158364814772260.a n = A029835 (n + 1)

end A029835

/-!
# A029836: log( n-th prime) rounded to nearest integer.

The programs for A029836, the canonical program `A029836.P14547433213454093951` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029836 has offset 0).

The definition of A029836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029836.P12329412274010861792

`round(log(Δ[A007504(n)]))`
-/

namespace A029836.P12329412274010861792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (n + 1) - f1 n : ℝ))

end

end A029836.P12329412274010861792

namespace A029836

/-- `round(log(Δ[A007504(n)]))` -/
def P12329412274010861792.Spec : Prop :=
  ∀ n, P12329412274010861792.a n = A029836 n

end A029836

/-! ## A029836.P14547433213454093951

`round(log(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029836

/-- `round(log(A000040(n+1)))` -/
def P14547433213454093951.Spec : Prop :=
  ∀ n, P14547433213454093951.a n = A029836 n

theorem P14547433213454093951.correct : P14547433213454093951.Spec := by
  intro n
  simp only [A029836]

end A029836

/-! ## A029836.P1691264730095665345

`round(log(A008864(n+1)))`
-/

namespace A029836.P1691264730095665345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A008864 (n + 1) : ℝ))

end

end A029836.P1691264730095665345

namespace A029836

/-- `round(log(A008864(n+1)))` -/
def P1691264730095665345.Spec : Prop :=
  ∀ n, P1691264730095665345.a n = A029836 n

end A029836

/-! ## A029836.P11371605289483811795

`round(log(A028815(n+1)))`
-/

namespace A029836.P11371605289483811795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A028815 (n + 1) : ℝ))

end

end A029836.P11371605289483811795

namespace A029836

/-- `round(log(A028815(n+1)))` -/
def P11371605289483811795.Spec : Prop :=
  ∀ n, P11371605289483811795.a n = A029836 n

end A029836

/-! ## A029836.P11421350924214976005

`round(log(sqrt(A001248(n+1))))`
-/

namespace A029836.P11421350924214976005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A029836.P11421350924214976005

namespace A029836

/-- `round(log(sqrt(A001248(n+1))))` -/
def P11421350924214976005.Spec : Prop :=
  ∀ n, P11421350924214976005.a n = A029836 n

end A029836

/-! ## A029836.P14012628564949626835

`round(log(∑[A054541(n+1)]))`
-/

namespace A029836.P14012628564949626835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A029836.P14012628564949626835

namespace A029836

/-- `round(log(∑[A054541(n+1)]))` -/
def P14012628564949626835.Spec : Prop :=
  ∀ n, P14012628564949626835.a n = A029836 n

end A029836

/-! ## A029836.P10263691710905655998

`round(log(A006093(n+1)+1))`
-/

namespace A029836.P10263691710905655998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A006093 (n + 1) + 1 : ℝ))

end

end A029836.P10263691710905655998

namespace A029836

/-- `round(log(A006093(n+1)+1))` -/
def P10263691710905655998.Spec : Prop :=
  ∀ n, P10263691710905655998.a n = A029836 n

theorem P10263691710905655998.correct : P10263691710905655998.Spec := by
  intro n
  simp only [A029836, Nat.add_sub_cancel, A029836.P10263691710905655998.a, A029836.P14547433213454093951.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029836

/-! ## A029836.P13379782829874802666

`round(log(A040976(n+1)+2))`
-/

namespace A029836.P13379782829874802666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A040976 (n + 1) + 2 : ℝ))

end

end A029836.P13379782829874802666

namespace A029836

/-- `round(log(A040976(n+1)+2))` -/
def P13379782829874802666.Spec : Prop :=
  ∀ n, P13379782829874802666.a n = A029836 n

theorem P13379782829874802666.correct : P13379782829874802666.Spec := by
  intro n
  simp only [A029836, Nat.add_sub_cancel, A029836.P13379782829874802666.a, A029836.P14547433213454093951.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029836

/-! ## A029836.P3771510304833666298

`round(log(A008578(n+2)))`
-/

namespace A029836.P3771510304833666298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A008578 (n + 2) : ℝ))

end

end A029836.P3771510304833666298

namespace A029836

/-- `round(log(A008578(n+2)))` -/
def P3771510304833666298.Spec : Prop :=
  ∀ n, P3771510304833666298.a n = A029836 n

end A029836

/-! ## A029836.P14273673798251471224

`round(log(p?[A283599(n+1)]))`
-/

namespace A029836.P14273673798251471224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A029836.P14273673798251471224

namespace A029836

/-- `round(log(p?[A283599(n+1)]))` -/
def P14273673798251471224.Spec : Prop :=
  ∀ n, P14273673798251471224.a n = A029836 n

end A029836

/-! ## A029836.P399713778944396432

`round(log(p?[A000430(n+1)]))`
-/

namespace A029836.P399713778944396432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A029836.P399713778944396432

namespace A029836

/-- `round(log(p?[A000430(n+1)]))` -/
def P399713778944396432.Spec : Prop :=
  ∀ n, P399713778944396432.a n = A029836 n

end A029836

/-! ## A029836.P14442670918740029738

`round(log(p?[xor(1, n)]))`
-/

namespace A029836.P14442670918740029738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))

end

end A029836.P14442670918740029738

namespace A029836

/-- `round(log(p?[xor(1, n)]))` -/
def P14442670918740029738.Spec : Prop :=
  ∀ n, P14442670918740029738.a n = A029836 n

end A029836

/-! ## A029836.P3144115481995510431

`round(record[log(A006530(n+2))])`
-/

namespace A029836.P3144115481995510431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029836.P3144115481995510431

namespace A029836

/-- `round(record[log(A006530(n+2))])` -/
def P3144115481995510431.Spec : Prop :=
  ∀ n, P3144115481995510431.a n = A029836 n

end A029836

/-! ## A029836.P5719618243370496424

`round(record[log(A020639(n+2))])`
-/

namespace A029836.P5719618243370496424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029836.P5719618243370496424

namespace A029836

/-- `round(record[log(A020639(n+2))])` -/
def P5719618243370496424.Spec : Prop :=
  ∀ n, P5719618243370496424.a n = A029836 n

end A029836

/-! ## A029836.P11155268500000810147

`round(record[log(A000010(n+1)+1)])`
-/

namespace A029836.P11155268500000810147
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000010 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029836.P11155268500000810147

namespace A029836

/-- `round(record[log(A000010(n+1)+1)])` -/
def P11155268500000810147.Spec : Prop :=
  ∀ n, P11155268500000810147.a n = A029836 n

end A029836

/-! ## A029836.P13577140547551625315

`A029833(A000040(n+1))`
-/

namespace A029836.P13577140547551625315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (A000040 (n + 1)).toNat

end

end A029836.P13577140547551625315

namespace A029836

/-- `A029833(A000040(n+1))` -/
def P13577140547551625315.Spec : Prop :=
  ∀ n, P13577140547551625315.a n = A029836 n

end A029836

/-! ## A029836.P2045027311679259733

`A029833(A008578(n+2))`
-/

namespace A029836.P2045027311679259733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (A008578 (n + 2)).toNat

end

end A029836.P2045027311679259733

namespace A029836

/-- `A029833(A008578(n+2))` -/
def P2045027311679259733.Spec : Prop :=
  ∀ n, P2045027311679259733.a n = A029836 n

end A029836

/-! ## A029836.P10418510230997369805

`A029833(record[A006530(n+2)])`
-/

namespace A029836.P10418510230997369805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029836.P10418510230997369805

namespace A029836

/-- `A029833(record[A006530(n+2)])` -/
def P10418510230997369805.Spec : Prop :=
  ∀ n, P10418510230997369805.a n = A029836 n

end A029836

/-! ## A029836.P9769136652175215489

`A029833(record[A020639(n+2)])`
-/

namespace A029836.P9769136652175215489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029836.P9769136652175215489

namespace A029836

/-- `A029833(record[A020639(n+2)])` -/
def P9769136652175215489.Spec : Prop :=
  ∀ n, P9769136652175215489.a n = A029836 n

end A029836

/-! ## A029836.P4843749262786172649

`round(log(A063904(n+1)))`
-/

namespace A029836.P4843749262786172649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A063904 (n + 1) : ℝ))

end

end A029836.P4843749262786172649

namespace A029836

/-- `round(log(A063904(n+1)))` -/
def P4843749262786172649.Spec : Prop :=
  ∀ n, P4843749262786172649.a n = A029836 n

end A029836

/-!
# A029837: Binary order of n: log_2(n) rounded up to next integer.

The programs for A029837, the canonical program `A029837.P1050578713049589` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029837 has offset 1).

The definition of A029837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029837.P9083073095436075913

`ceil(log2(n+1))`
-/

namespace A029837.P9083073095436075913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A029837.P9083073095436075913

namespace A029837

/-- `ceil(log2(n+1))` -/
def P9083073095436075913.Spec : Prop :=
  ∀ n, P9083073095436075913.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P1050578713049589

`1+a(ceil((n+1)/2)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029837

/-- `1+a(ceil((n+1)/2)-1)` -/
def P1050578713049589.Spec : Prop :=
  ∀ n, (P1050578713049589.a n : ℤ) = A029837 (n + 1)

theorem P1050578713049589.correct : P1050578713049589.Spec := by
  intro n
  simp only [A029837, Nat.add_sub_cancel]

end A029837

/-! ## A029837.P13346721060276384749

`abs(floor(log2(acot(n))))`
-/

namespace A029837.P13346721060276384749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋|

end

end A029837.P13346721060276384749

namespace A029837

/-- `abs(floor(log2(acot(n))))` -/
def P13346721060276384749.Spec : Prop :=
  ∀ n, P13346721060276384749.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P9811588357015061237

`-floor(log2(acot(n)))`
-/

namespace A029837.P9811588357015061237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

end

end A029837.P9811588357015061237

namespace A029837

/-- `-floor(log2(acot(n)))` -/
def P9811588357015061237.Spec : Prop :=
  ∀ n, P9811588357015061237.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P13040009772312583402

`floor(log2(record[xor(1, n)]))`
-/

namespace A029837.P13040009772312583402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029837.P13040009772312583402

namespace A029837

/-- `floor(log2(record[xor(1, n)]))` -/
def P13040009772312583402.Spec : Prop :=
  ∀ n, (P13040009772312583402.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P1982581269916194629

`1-ceil(log2(acot(n)))`
-/

namespace A029837.P1982581269916194629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

end

end A029837.P1982581269916194629

namespace A029837

/-- `1-ceil(log2(acot(n)))` -/
def P1982581269916194629.Spec : Prop :=
  ∀ n, P1982581269916194629.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P3917163223090463580

`floor(log2(2/acot(n)))`
-/

namespace A029837.P3917163223090463580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (2 / SequenceMachineLib.acot (n : ℝ))⌋

end

end A029837.P3917163223090463580

namespace A029837

/-- `floor(log2(2/acot(n)))` -/
def P3917163223090463580.Spec : Prop :=
  ∀ n, P3917163223090463580.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P17130471094659192592

`abs(ceil(-log2(acot(n))))`
-/

namespace A029837.P17130471094659192592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉|

end

end A029837.P17130471094659192592

namespace A029837

/-- `abs(ceil(-log2(acot(n))))` -/
def P17130471094659192592.Spec : Prop :=
  ∀ n, P17130471094659192592.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P1306619970060399147

`abs(floor(log2(cos(atan(n)))))`
-/

namespace A029837.P1306619970060399147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (Real.cos (Real.arctan (n : ℝ)))⌋|

end

end A029837.P1306619970060399147

namespace A029837

/-- `abs(floor(log2(cos(atan(n)))))` -/
def P1306619970060399147.Spec : Prop :=
  ∀ n, P1306619970060399147.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P7752579305149520614

`-floor(log2(cos(atan(n))))`
-/

namespace A029837.P7752579305149520614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.logb 2 (Real.cos (Real.arctan (n : ℝ)))⌋

end

end A029837.P7752579305149520614

namespace A029837

/-- `-floor(log2(cos(atan(n))))` -/
def P7752579305149520614.Spec : Prop :=
  ∀ n, P7752579305149520614.a n = A029837 (n + 1)

end A029837

/-! ## A029837.P4671809294064089509

`floor(log2(or(1, 2*n)))`
-/

namespace A029837.P4671809294064089509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 1 (2 * n))

end

end A029837.P4671809294064089509

namespace A029837

/-- `floor(log2(or(1, 2*n)))` -/
def P4671809294064089509.Spec : Prop :=
  ∀ n, (P4671809294064089509.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P17801080842608707958

`floor(log2(xor(1, 2*n)))`
-/

namespace A029837.P17801080842608707958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor 1 (2 * n))

end

end A029837.P17801080842608707958

namespace A029837

/-- `floor(log2(xor(1, 2*n)))` -/
def P17801080842608707958.Spec : Prop :=
  ∀ n, (P17801080842608707958.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P2991961010413298425

`∑[and(1, char[2^n])]`
-/

namespace A029837.P2991961010413298425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029837.P2991961010413298425

namespace A029837

/-- `∑[and(1, char[2^n])]` -/
def P2991961010413298425.Spec : Prop :=
  ∀ n, (P2991961010413298425.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P4370177206242754993

`∑[char[2^xor(1, n)]]`
-/

namespace A029837.P4370177206242754993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029837.P4370177206242754993

namespace A029837

/-- `∑[char[2^xor(1, n)]]` -/
def P4370177206242754993.Spec : Prop :=
  ∀ n, (P4370177206242754993.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P2304526639532031633

`floor(log2(or(1, n)+n))`
-/

namespace A029837.P2304526639532031633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 1 n + n)

end

end A029837.P2304526639532031633

namespace A029837

/-- `floor(log2(or(1, n)+n))` -/
def P2304526639532031633.Spec : Prop :=
  ∀ n, (P2304526639532031633.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P11127321718103333513

`∑[char[2^∑{digits}[n, #]]]`
-/

namespace A029837.P11127321718103333513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029837.P11127321718103333513

namespace A029837

/-- `∑[char[2^∑{digits}[n, #]]]` -/
def P11127321718103333513.Spec : Prop :=
  ∀ n, (P11127321718103333513.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P8242989772193917761

`a(floor(n/2))+1` with `a(0)=0`
-/

namespace A029837.P8242989772193917761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A029837.P8242989772193917761

namespace A029837

/-- `a(floor(n/2))+1` -/
def P8242989772193917761.Spec : Prop :=
  ∀ n, (P8242989772193917761.a n : ℤ) = A029837 (n + 1)

end A029837

/-! ## A029837.P18323875189481141337

`A000120(n)+A080791(n)`
-/

namespace A029837.P18323875189481141337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A080791 n

end

end A029837.P18323875189481141337

namespace A029837

/-- `A000120(n)+A080791(n)` -/
def P18323875189481141337.Spec : Prop :=
  ∀ n, P18323875189481141337.a n = A029837 (n + 1)

end A029837

/-!
# A029838: Expansion of square root of q times normalized Hauptmodul for Gamma(4) in powers of q^8.

The programs for A029838, there is no canonical definition to state claims against.
-/

/-! ## A029838.P13654306331153179766

`A033999(n)*A082303(n)`
-/

namespace A029838.P13654306331153179766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A082303 n

end

end A029838.P13654306331153179766

/-! ## A029838.P1058178193205739624

`A057077(n)*A316384(n)`
-/

namespace A029838.P1058178193205739624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A316384 n

end

end A029838.P1058178193205739624

/-! ## A029838.P4879719357777529313

`A082303(n)/A057077(A057077(n)+n)`
-/

namespace A029838.P4879719357777529313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082303 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A029838.P4879719357777529313

/-! ## A029838.P5774939282184286858

`A029839(n)/A082304(n)*A082303(n)`
-/

namespace A029838.P5774939282184286858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029839 n : ℚ) / (A082304 n : ℚ) * (A082303 n : ℚ)

end

end A029838.P5774939282184286858

/-! ## A029838.P4856804632569656998

`A082303(Δ[A004526(n)])*A082303(n)`
-/

namespace A029838.P4856804632569656998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (f1 (n + 1) - f1 n).toNat * A082303 n

end

end A029838.P4856804632569656998

/-! ## A029838.P8600021993167394919

`A082303(n)/A082303(Δ[A004526(n)]²)`
-/

namespace A029838.P8600021993167394919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082303 n : ℚ) / (A082303 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A029838.P8600021993167394919

/-! ## A029838.P14439429343212218163

`A283000(2*n)`
-/

namespace A029838.P14439429343212218163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283000 (2 * n)

end

end A029838.P14439429343212218163

/-! ## A029838.P1872270592195832421

`A057077(2*n)*A082303(n)`
-/

namespace A029838.P1872270592195832421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A082303 n

end

end A029838.P1872270592195832421

/-! ## A029838.P13583460817778923752

`A082303(n)*A087960(2*n)`
-/

namespace A029838.P13583460817778923752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 n * A087960 (2 * n)

end

end A029838.P13583460817778923752

/-! ## A029838.P876787238459115987

`A034947(2*n+1)*A082303(n)`
-/

namespace A029838.P876787238459115987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A082303 n

end

end A029838.P876787238459115987

/-! ## A029838.P10091835621181995752

`A093085(4*n)`
-/

namespace A029838.P10091835621181995752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 (4 * n)

end

end A029838.P10091835621181995752

/-! ## A029838.P13617231290518838837

`A208589(4*n)`
-/

namespace A029838.P13617231290518838837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208589 (4 * n)

end

end A029838.P13617231290518838837

/-! ## A029838.P9020002122790867073

`A134178(3*n+1+n)`
-/

namespace A029838.P9020002122790867073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (3 * n + 1 + n)

end

end A029838.P9020002122790867073

/-! ## A029838.P2388752950791405360

`A279255(2*n+2*n+1)`
-/

namespace A029838.P2388752950791405360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279255 (2 * n + (2 * n + 1))

end

end A029838.P2388752950791405360

/-! ## A029838.P6459997773562053919

`A283023(6*n)`
-/

namespace A029838.P6459997773562053919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283023 (6 * n)

end

end A029838.P6459997773562053919

/-! ## A029838.P7867905031912101011

`A094267(n²)*A112171(4*n)`
-/

namespace A029838.P7867905031912101011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A112171 (4 * n)

end

end A029838.P7867905031912101011

/-! ## A029838.P554586557961359613

`A082303(n)/A087960(n²)`
-/

namespace A029838.P554586557961359613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082303 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A029838.P554586557961359613

/-!
# A029839: McKay-Thompson series of class 16B for the Monster group.

The programs for A029839, there is no canonical definition to state claims against.
-/

/-! ## A029839.P1379754930757979619

`(-1)^n*A082304(n)`
-/

namespace A029839.P1379754930757979619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A082304 n

end

end A029839.P1379754930757979619

/-! ## A029839.P1029359238857069466

`A029841(2*n)`
-/

namespace A029839.P1029359238857069466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (2 * n)

end

end A029839.P1029359238857069466

/-! ## A029839.P9727402943665310301

`A112143(2*n)`
-/

namespace A029839.P9727402943665310301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112143 (2 * n)

end

end A029839.P9727402943665310301

/-! ## A029839.P11460326282411403184

`A033999(n)*A112151(2*n)`
-/

namespace A029839.P11460326282411403184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112151 (2 * n)

end

end A029839.P11460326282411403184

/-! ## A029839.P7596747159043389615

`A033999(n)*A112152(2*n)`
-/

namespace A029839.P7596747159043389615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112152 (2 * n)

end

end A029839.P7596747159043389615

/-! ## A029839.P629326004036928046

`A057077(2*n)*A112151(2*n)`
-/

namespace A029839.P629326004036928046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112151 (2 * n)

end

end A029839.P629326004036928046

/-! ## A029839.P15721272391877500829

`A057077(2*n)*A112152(2*n)`
-/

namespace A029839.P15721272391877500829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112152 (2 * n)

end

end A029839.P15721272391877500829

/-! ## A029839.P1960115335095415777

`A087960(2*n)*A112151(2*n)`
-/

namespace A029839.P1960115335095415777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112151 (2 * n)

end

end A029839.P1960115335095415777

/-! ## A029839.P3340402028697998383

`A087960(2*n)*A112152(2*n)`
-/

namespace A029839.P3340402028697998383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112152 (2 * n)

end

end A029839.P3340402028697998383

/-! ## A029839.P14675498644306264288

`A112151(2*n)/A087960(n²)`
-/

namespace A029839.P14675498644306264288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 (2 * n) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A029839.P14675498644306264288

/-!
# A029840: Expansion of Product_{m>=1} ((1+q^(2*m-1))/(1+q^(2*m)))^3.

The programs for A029840, there is no canonical definition to state claims against.
-/

/-! ## A029840.P3562128450050834366

`A296067(∑[n+3]+n+3)`
-/

namespace A029840.P3562128450050834366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A029840.P3562128450050834366

/-!
# A029841: McKay-Thompson series of class 8E for the Monster group.

The programs for A029841, there is no canonical definition to state claims against.
-/

/-! ## A029841.P11036678914705328349

`A033999(n)*A112143(n)`
-/

namespace A029841.P11036678914705328349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112143 n

end

end A029841.P11036678914705328349

/-! ## A029841.P16032453576249062153

`A057077(n)*A112151(n)`
-/

namespace A029841.P16032453576249062153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112151 n

end

end A029841.P16032453576249062153

/-! ## A029841.P4598550019578654402

`A087960(n)*A112152(n)`
-/

namespace A029841.P4598550019578654402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112152 n

end

end A029841.P4598550019578654402

/-! ## A029841.P8577849432985340534

`2*A245434(n)-A208589(n)`
-/

namespace A029841.P8577849432985340534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245434 n - A208589 n

end

end A029841.P8577849432985340534

/-! ## A029841.P4411155610408746315

`A112143(n)/A057077(A057077(n)+n)`
-/

namespace A029841.P4411155610408746315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A029841.P4411155610408746315

/-! ## A029841.P11380519069598007887

`A112143(n)/A112151(n)*A112152(n)`
-/

namespace A029841.P11380519069598007887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 n : ℚ) / (A112151 n : ℚ) * (A112152 n : ℚ)

end

end A029841.P11380519069598007887

/-! ## A029841.P15211155128844894530

`A057077(n+1)*A112152(n)`
-/

namespace A029841.P15211155128844894530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112152 n

end

end A029841.P15211155128844894530

/-! ## A029841.P3178573321958668086

`A112143(n+1)/A112152(n+1)*A112152(n)`
-/

namespace A029841.P3178573321958668086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 (n + 1) : ℚ) / (A112152 (n + 1) : ℚ) * (A112152 n : ℚ)

end

end A029841.P3178573321958668086

/-! ## A029841.P18193129962879072751

`A057077(2*n)*A112143(n)`
-/

namespace A029841.P18193129962879072751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112143 n

end

end A029841.P18193129962879072751

/-! ## A029841.P12002513386695501229

`A087960(2*n)*A112143(n)`
-/

namespace A029841.P12002513386695501229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112143 n

end

end A029841.P12002513386695501229

/-! ## A029841.P4037849027283446434

`A001938(n)/A093160(n)*A112143(n)`
-/

namespace A029841.P4037849027283446434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A093160 n : ℚ) * (A112143 n : ℚ)

end

end A029841.P4037849027283446434

/-! ## A029841.P2518290480190076310

`A112143(n)/A087960(n²)`
-/

namespace A029841.P2518290480190076310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A029841.P2518290480190076310

/-!
# A029842: Expansion of Product_{m>=1} ((1+q^(2*m-1))/(1+q^(2*m)))^5.

The programs for A029842, there is no canonical definition to state claims against.
-/

/-! ## A029842.P17256870011408658794

`A296067(A055999(n+3))`
-/

namespace A029842.P17256870011408658794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A055999 (n + 3)).toNat

end

end A029842.P17256870011408658794

/-! ## A029842.P13264454312276812234

`A296067(A134227(n+4))`
-/

namespace A029842.P13264454312276812234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A134227 (n + 4)).toNat

end

end A029842.P13264454312276812234

/-! ## A029842.P2251918267800750646

`A296067(Δ[A026054(n+3)])`
-/

namespace A029842.P2251918267800750646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (f1 (n + 1) - f1 n).toNat

end

end A029842.P2251918267800750646

/-! ## A029842.P9409034985041581097

`A296067(A161680(n+7)-6)`
-/

namespace A029842.P9409034985041581097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A161680 (n + 7) - 6).toNat

end

end A029842.P9409034985041581097

/-! ## A029842.P255544189045599763

`A296067(A052905(n+2)+n+5)`
-/

namespace A029842.P255544189045599763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A052905 (n + 2) + (n + 5 : ℤ)).toNat

end

end A029842.P255544189045599763

/-! ## A029842.P17293961197796782783

`A296067(A167499(n+3)+2*n)`
-/

namespace A029842.P17293961197796782783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A029842.P17293961197796782783

/-!
# A029843: Expansion of Product_{m>=1} ((1+q^(2*m-1))/(1+q^(2*m)))^6.

The programs for A029843, there is no canonical definition to state claims against.
-/

/-! ## A029843.P18394439172036352027

`A296067(2*n+∑[n+5]+16)`
-/

namespace A029843.P18394439172036352027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 16))

end

end A029843.P18394439172036352027

/-!
# A029844: Expansion of Product_{m>=1} ((1+q^(2*m-1))/(1+q^(2*m)))^7.

The programs for A029844, there is no canonical definition to state claims against.
-/

/-! ## A029844.P13407942417022450878

`A296067(A155212(n+4))`
-/

namespace A029844.P13407942417022450878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A155212 (n + 4)).toNat

end

end A029844.P13407942417022450878

/-! ## A029844.P11472803536989240865

`A296067(A056126(n)+28)`
-/

namespace A029844.P11472803536989240865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A056126 n + 28).toNat

end

end A029844.P11472803536989240865

/-! ## A029844.P3402041854433242376

`A296067(eq[7, A025581(n)])`
-/

namespace A029844.P3402041854433242376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029844.P3402041854433242376

/-! ## A029844.P16567966758334540424

`A296067(A000217(n+8)-8)`
-/

namespace A029844.P16567966758334540424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A000217 (n + 8) - 8).toNat

end

end A029844.P16567966758334540424

/-! ## A029844.P8125175585541963598

`A296067(eq[8, A004736(n+1)])`
-/

namespace A029844.P8125175585541963598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029844.P8125175585541963598

/-! ## A029844.P5873163403516055060

`A296067(A000124(n+7)+n-1)`
-/

namespace A029844.P5873163403516055060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A029844.P5873163403516055060

/-! ## A029844.P11027318069103519307

`A296067(2*n+A167499(n+5)+2)`
-/

namespace A029844.P11027318069103519307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A029844.P11027318069103519307

/-! ## A029844.P6530931554122289002

`A296067(2*n+A000096(n+5)+8)`
-/

namespace A029844.P6530931554122289002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 ((2 * n : ℤ) + (A000096 (n + 5) + 8)).toNat

end

end A029844.P6530931554122289002

/-! ## A029844.P2035981597907318120

`A296067(A005843(n)+A055999(n+3)+13)`
-/

namespace A029844.P2035981597907318120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A005843 n + (A055999 (n + 3) + 13)).toNat

end

end A029844.P2035981597907318120

/-!
# A029846: a(n) = a(n-1)*b(n-2)+2, b() given by A029758.

The programs for A029846, the canonical program `A029846.P11482254277008424839` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029846 has offset 0).

The definition of A029846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029846.P11482254277008424839

`2+a(n-1)*(a(n-1)-2)*(a(n-2)-2)/a(n-2)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029846

/-- `2+a(n-1)*(a(n-1)-2)*(a(n-2)-2)/a(n-2)` -/
def P11482254277008424839.Spec : Prop :=
  ∀ n, P11482254277008424839.a n = (A029846 n : ℚ)

end A029846

/-! ## A029846.P9575899946383887772

`∑[A239912(Δ[A057335(n)])]`
-/

namespace A029846.P9575899946383887772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239912 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029846.P9575899946383887772

namespace A029846

/-- `∑[A239912(Δ[A057335(n)])]` -/
def P9575899946383887772.Spec : Prop :=
  ∀ n, P9575899946383887772.a n = A029846 n

end A029846

/-!
# A029847: Gessel-Stanley triangle read by rows: triangle of coefficients of polynomials arising in connection with enumeration of intransitive trees by number of nodes and number of right nodes.

The programs for A029847, there is no canonical definition to state claims against.
-/

/-! ## A029847.P15470083304906968573

`A265370(5^A139600(n))`
-/

namespace A029847.P15470083304906968573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A139600 n : ℤ))).toNat

end

end A029847.P15470083304906968573

/-! ## A029847.P17454464157902911982

`A182058(or(1, A131689(n)))`
-/

namespace A029847.P17454464157902911982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182058 (Int.lor 1 (A131689 n)).toNat

end

end A029847.P17454464157902911982

/-! ## A029847.P16674507274028999400

`A161832(A208342(n+1)²)`
-/

namespace A029847.P16674507274028999400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161832 (A208342 (n + 1) ^ 2).toNat

end

end A029847.P16674507274028999400

/-! ## A029847.P15303909135187370499

`A241063(15*A208342(n+1))`
-/

namespace A029847.P15303909135187370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241063 (15 * A208342 (n + 1)).toNat

end

end A029847.P15303909135187370499

/-!
# A029848: a(n) = 1 + C(2*n,n) + C(3*n,n).

The programs for A029848, the canonical program `A029848.P17950896478309754398` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029848 has offset 0).

The definition of A029848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+C(2*n, n)+C(3*n, n)` (program `A029848.P17950896478309754398`, by `A029848.P17950896478309754398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029848.P17950896478309754398

`1+C(2*n, n)+C(3*n, n)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029848

/-- `1+C(2*n, n)+C(3*n, n)` -/
def P17950896478309754398.Spec : Prop :=
  ∀ n, (P17950896478309754398.a n : ℤ) = A029848 n

theorem P17950896478309754398.correct : P17950896478309754398.Spec := by
  intro n
  simp only [A029848]

end A029848

/-! ## A029848.P15125247026275361112

`C(2*n, n)+A005809(n)+1`
-/

namespace A029848.P15125247026275361112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) + (A005809 n + 1)

end

end A029848.P15125247026275361112

namespace A029848

/-- `C(2*n, n)+A005809(n)+1` -/
def P15125247026275361112.Spec : Prop :=
  ∀ n, P15125247026275361112.a n = A029848 n

theorem P15125247026275361112.correct : P15125247026275361112.Spec := by
  intro n
  simp only [A029848, Nat.add_sub_cancel, A029848.P15125247026275361112.a, A029848.P17950896478309754398.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A029848

/-! ## A029848.P2970164130608712346

`A000984(n)+A005809(n)+1`
-/

namespace A029848.P2970164130608712346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A005809 n + 1)

end

end A029848.P2970164130608712346

namespace A029848

/-- `A000984(n)+A005809(n)+1` -/
def P2970164130608712346.Spec : Prop :=
  ∀ n, P2970164130608712346.a n = A029848 n

theorem P2970164130608712346.correct : P2970164130608712346.Spec := by
  intro n
  simp only [A029848, Nat.add_sub_cancel, A029848.P2970164130608712346.a, A029848.P17950896478309754398.a, A000984, A000984.P7946844122574426130.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A029848

/-! ## A029848.P3523269126636567957

`A005809(n)+record[A081668(n)+1]`
-/

namespace A029848.P3523269126636567957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029848.P3523269126636567957

namespace A029848

/-- `A005809(n)+record[A081668(n)+1]` -/
def P3523269126636567957.Spec : Prop :=
  ∀ n, P3523269126636567957.a n = A029848 n

end A029848

/-! ## A029848.P16231289692633827228

`A005809(n)+record[A126869(n)+1]`
-/

namespace A029848.P16231289692633827228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029848.P16231289692633827228

namespace A029848

/-- `A005809(n)+record[A126869(n)+1]` -/
def P16231289692633827228.Spec : Prop :=
  ∀ n, P16231289692633827228.a n = A029848 n

end A029848

/-! ## A029848.P12243344414935564047

`A005809(n)+record[A126930(n)+1]`
-/

namespace A029848.P12243344414935564047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029848.P12243344414935564047

namespace A029848

/-- `A005809(n)+record[A126930(n)+1]` -/
def P12243344414935564047.Spec : Prop :=
  ∀ n, P12243344414935564047.a n = A029848 n

end A029848

/-! ## A029848.P8516696520747869555

`A063886(2*n)+A005809(n)+1`
-/

namespace A029848.P8516696520747869555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + (A005809 n + 1)

end

end A029848.P8516696520747869555

namespace A029848

/-- `A063886(2*n)+A005809(n)+1` -/
def P8516696520747869555.Spec : Prop :=
  ∀ n, P8516696520747869555.a n = A029848 n

end A029848

/-! ## A029848.P13903898815630123722

`A303259(2*n+1)+A000984(n)+1`
-/

namespace A029848.P13903898815630123722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n + 1) + (A000984 n + 1)

end

end A029848.P13903898815630123722

namespace A029848

/-- `A303259(2*n+1)+A000984(n)+1` -/
def P13903898815630123722.Spec : Prop :=
  ∀ n, P13903898815630123722.a n = A029848 n

end A029848

/-! ## A029848.P14101982988953123540

`A001405(2*n)+A081204(2*n)+1`
-/

namespace A029848.P14101982988953123540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (A081204 (2 * n) + 1)

end

end A029848.P14101982988953123540

namespace A029848

/-- `A001405(2*n)+A081204(2*n)+1` -/
def P14101982988953123540.Spec : Prop :=
  ∀ n, P14101982988953123540.a n = A029848 n

end A029848

/-! ## A029848.P16596726150726890807

`(n+1)*A000108(n)+A005809(n)+1`
-/

namespace A029848.P16596726150726890807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n + (A005809 n + 1)

end

end A029848.P16596726150726890807

namespace A029848

/-- `(n+1)*A000108(n)+A005809(n)+1` -/
def P16596726150726890807.Spec : Prop :=
  ∀ n, P16596726150726890807.a n = A029848 n

end A029848

/-! ## A029848.P14280029643138952212

`A005809(n)+A001405(A005843(n))+1`
-/

namespace A029848.P14280029643138952212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + (A001405 (A005843 n).toNat + 1)

end

end A029848.P14280029643138952212

namespace A029848

/-- `A005809(n)+A001405(A005843(n))+1` -/
def P14280029643138952212.Spec : Prop :=
  ∀ n, P14280029643138952212.a n = A029848 n

end A029848

/-! ## A029848.P10860576221195439005

`A046899(A000096(n))+A005809(n)+1`
-/

namespace A029848.P10860576221195439005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n).toNat + (A005809 n + 1)

end

end A029848.P10860576221195439005

namespace A029848

/-- `A046899(A000096(n))+A005809(n)+1` -/
def P10860576221195439005.Spec : Prop :=
  ∀ n, P10860576221195439005.a n = A029848 n

end A029848

/-! ## A029848.P6782709482529530795

`C(2*n, n)+A269956(A000217(n))+1`
-/

namespace A029848.P6782709482529530795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) + (A269956 (A000217 n).toNat + 1)

end

end A029848.P6782709482529530795

namespace A029848

/-- `C(2*n, n)+A269956(A000217(n))+1` -/
def P6782709482529530795.Spec : Prop :=
  ∀ n, P6782709482529530795.a n = A029848 n

end A029848

/-! ## A029848.P17823068353512936865

`A237520(A002378(n))+A005809(n)+1`
-/

namespace A029848.P17823068353512936865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A002378 n).toNat + (A005809 n + 1)

end

end A029848.P17823068353512936865

namespace A029848

/-- `A237520(A002378(n))+A005809(n)+1` -/
def P17823068353512936865.Spec : Prop :=
  ∀ n, P17823068353512936865.a n = A029848 n

end A029848

/-!
# A029849: Number of nonisomorphic and nonantiisomorphic relations.

The programs for A029849, there is no canonical definition to state claims against.
-/

/-! ## A029849.P4335950111214453294

`(A000595(n)+A002500(n))/2`
-/

namespace A029849.P4335950111214453294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 n + A002500 n : ℚ) / 2

end

end A029849.P4335950111214453294

/-! ## A029849.P11455699920026846564

`(A002500(n)+A055974(n)+A055973(n))/2`
-/

namespace A029849.P11455699920026846564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002500 n + (A055974 n + A055973 n) : ℚ) / 2

end

end A029849.P11455699920026846564

/-! ## A029849.P18145772876115276992

`(A002500(n)+A055973(n)+A055973(n)-A000171(2*n+1))/2`
-/

namespace A029849.P18145772876115276992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002500 n + (A055973 n + (A055973 n - A000171 (2 * n + 1))) : ℚ) / 2

end

end A029849.P18145772876115276992

/-!
# A029850: Number of self-converse groupoids.

The programs for A029850, there is no canonical definition to state claims against.
-/

/-! ## A029850.P14087425384522759776

`A258719(A028310(n))+A001425(n)`
-/

namespace A029850.P14087425384522759776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258719 (A028310 n).toNat + A001425 n

end

end A029850.P14087425384522759776

/-! ## A029850.P7916919282909006268

`2*A001424(n)-A001329(n)`
-/

namespace A029850.P7916919282909006268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001424 n - A001329 n

end

end A029850.P7916919282909006268

/-! ## A029850.P1261810480838775515

`A258719(A028310(n))+A079196(n)+A001426(n)`
-/

namespace A029850.P1261810480838775515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258719 (A028310 n).toNat + (A079196 n + A001426 n)

end

end A029850.P1261810480838775515

/-! ## A029850.P5908707020407442345

`A258719(A114806(n))+A079196(n)+A001426(n)`
-/

namespace A029850.P5908707020407442345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258719 (A114806 n).toNat + (A079196 n + A001426 n)

end

end A029850.P5908707020407442345

/-!
# A029851: Number of self-converse semigroups of order n.

The programs for A029851, there is no canonical definition to state claims against.
-/

/-! ## A029851.P5696711867593045689

`A001423(n)*2-A027851(n)`
-/

namespace A029851.P5696711867593045689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001423 n * 2 - A027851 n

end

end A029851.P5696711867593045689

/-! ## A029851.P11509745058566718306

`n*A193406(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A029851.P11509745058566718306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (n : ℤ) * A193406 (a (n - 1)).toNat

end

end A029851.P11509745058566718306

/-!
# A029852: Number of connected functions on n points with a loop of length 3.

The programs for A029852, there is no canonical definition to state claims against.
-/

/-! ## A029852.P3308156435841736774

`A339428(∑[n+2]+4)`
-/

namespace A029852.P3308156435841736774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A029852.P3308156435841736774

/-! ## A029852.P13440991190797368177

`A339428(A167614(n+1))^A178334(n)`
-/

namespace A029852.P13440991190797368177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339428 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A029852.P13440991190797368177

/-! ## A029852.P14738255755767327186

`or(A000007(n), A339428(A167614(n+1)))`
-/

namespace A029852.P14738255755767327186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A339428 (A167614 (n + 1)).toNat)

end

end A029852.P14738255755767327186

/-! ## A029852.P9433160895506831017

`or(A000007(n), A339428(A167499(n)+n))`
-/

namespace A029852.P9433160895506831017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A339428 (A167499 n + (n : ℤ)).toNat)

end

end A029852.P9433160895506831017

/-! ## A029852.P3629763952138214774

`A339428(A167614(n+1))^and(1, A000040(n+1))`
-/

namespace A029852.P3629763952138214774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339428 (A167614 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A029852.P3629763952138214774

/-!
# A029853: Number of connected functions on n points with a loop of length 4.

The programs for A029853, there is no canonical definition to state claims against.
-/

/-! ## A029853.P321784318254113772

`A339428(∑[n+3]+7)`
-/

namespace A029853.P321784318254113772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A029853.P321784318254113772

/-! ## A029853.P10846576288665236492

`gcd(A000038(n), A339428(A052905(n)+9))`
-/

namespace A029853.P10846576288665236492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A339428 (A052905 n + 9).toNat)

end

end A029853.P10846576288665236492

/-! ## A029853.P17480419530251603529

`A339428(A052905(n)+9)+char[A064104(n+1)]`
-/

namespace A029853.P17480419530251603529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064104 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A052905 n + 9).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029853.P17480419530251603529

/-! ## A029853.P10182318838278155542

`A339428(A052905(n)+9)+A011695(val(n+1, 4))`
-/

namespace A029853.P10182318838278155542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A052905 n + 9).toNat + A011695 (SequenceMachineLib.valuation (n + 1) 4)

end

end A029853.P10182318838278155542

/-! ## A029853.P11081007126560080509

`A339428(A052905(n)+9)^A014963(A055998(n+4))`
-/

namespace A029853.P11081007126560080509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339428 (A052905 n + 9).toNat : ℚ) ^ (A014963 (A055998 (n + 4)).toNat : ℤ)

end

end A029853.P11081007126560080509

/-!
# A029854: a(n) = gcd(prime(n)+prime(n+1), prime(n+1)+prime(n+2)).

The programs for A029854, the canonical program `A029854.P15005517259034416113` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029854 has offset 1).

The definition of A029854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)+A000040(n+2), A000040(n+2)+A000040(n+3))` (program `A029854.P15005517259034416113`, by `A029854.P15005517259034416113.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029854.P15005517259034416113

`gcd(A000040(n+1)+A000040(n+2), A000040(n+2)+A000040(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029854

/-- `gcd(A000040(n+1)+A000040(n+2), A000040(n+2)+A000040(n+3))` -/
def P15005517259034416113.Spec : Prop :=
  ∀ n, (P15005517259034416113.a n : ℤ) = A029854 (n + 1)

theorem P15005517259034416113.correct : P15005517259034416113.Spec := by
  intro n
  simp only [A029854, Nat.add_sub_cancel]

end A029854

/-! ## A029854.P6332837947734356896

`gcd(Δ[A061802(n)], A031131(n+1))`
-/

namespace A029854.P6332837947734356896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A031131 (n + 1))

end

end A029854.P6332837947734356896

namespace A029854

/-- `gcd(Δ[A061802(n)], A031131(n+1))` -/
def P6332837947734356896.Spec : Prop :=
  ∀ n, (P6332837947734356896.a n : ℤ) = A029854 (n + 1)

end A029854

/-! ## A029854.P16914819853418976455

`gcd(A011974(n+2), A096277(n+1))`
-/

namespace A029854.P16914819853418976455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011974 (n + 2)) (A096277 (n + 1))

end

end A029854.P16914819853418976455

namespace A029854

/-- `gcd(A011974(n+2), A096277(n+1))` -/
def P16914819853418976455.Spec : Prop :=
  ∀ n, (P16914819853418976455.a n : ℤ) = A029854 (n + 1)

end A029854

/-! ## A029854.P7424194263329505103

`gcd(Δ[A001043(n+1)], A001043(n+1))`
-/

namespace A029854.P7424194263329505103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001043 (n + 1))

end

end A029854.P7424194263329505103

namespace A029854

/-- `gcd(Δ[A001043(n+1)], A001043(n+1))` -/
def P7424194263329505103.Spec : Prop :=
  ∀ n, (P7424194263329505103.a n : ℤ) = A029854 (n + 1)

end A029854

/-! ## A029854.P12592157775836557476

`gcd(A000040(n+2)+A000040(n+1), A056221(n+1))`
-/

namespace A029854.P12592157775836557476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 2) + A000040 (n + 1)) (A056221 (n + 1))

end

end A029854.P12592157775836557476

namespace A029854

/-- `gcd(A000040(n+2)+A000040(n+1), A056221(n+1))` -/
def P12592157775836557476.Spec : Prop :=
  ∀ n, (P12592157775836557476.a n : ℤ) = A029854 (n + 1)

end A029854

/-! ## A029854.P7384220640908853714

`gcd(A001043(n+2), A069102(n+3))`
-/

namespace A029854.P7384220640908853714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001043 (n + 2)) (A069102 (n + 3))

end

end A029854.P7384220640908853714

namespace A029854

/-- `gcd(A001043(n+2), A069102(n+3))` -/
def P7384220640908853714.Spec : Prop :=
  ∀ n, (P7384220640908853714.a n : ℤ) = A029854 (n + 1)

end A029854

/-!
# A029855: Number of rooted trees where root has degree 4.

The programs for A029855, there is no canonical definition to state claims against.
-/

/-! ## A029855.P7928663373877505289

`A033185(A052905(n)+9)`
-/

namespace A029855.P7928663373877505289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A052905 n + 9).toNat

end

end A029855.P7928663373877505289

/-! ## A029855.P2573628520458227966

`A033185(A055999(n)+10)`
-/

namespace A029855.P2573628520458227966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A055999 n + 10).toNat

end

end A029855.P2573628520458227966

/-! ## A029855.P2854102890787833620

`A033185(A167614(n+2)+1)`
-/

namespace A029855.P2854102890787833620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A167614 (n + 2) + 1).toNat

end

end A029855.P2854102890787833620

/-! ## A029855.P3043237583629119894

`A033185(A000124(n+3)+3)`
-/

namespace A029855.P3043237583629119894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 (n + 3) + 3).toNat

end

end A029855.P3043237583629119894

/-! ## A029855.P3309257489215315536

`A033185(A000096(n+2)+5)`
-/

namespace A029855.P3309257489215315536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000096 (n + 2) + 5).toNat

end

end A029855.P3309257489215315536

/-! ## A029855.P9189991108660779430

`A033185(A000217(n+3)+4)`
-/

namespace A029855.P9189991108660779430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000217 (n + 3) + 4).toNat

end

end A029855.P9189991108660779430

/-!
# A029856: Number of rooted trees with 2-colored leaves.

The programs for A029856, there is no canonical definition to state claims against.
-/

/-! ## A029856.P8622178135758464911

`A052855(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A029856.P8622178135758464911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A052855 n + a (n - 1)

end

end A029856.P8622178135758464911

/-! ## A029856.P5031565652868584506

`A036249(A254667(n+1))`
-/

namespace A029856.P5031565652868584506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A254667 (n + 1)).toNat

end

end A029856.P5031565652868584506

/-! ## A029856.P4310338078952568620

`A036249(A233583(n+2))`
-/

namespace A029856.P4310338078952568620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A233583 (n + 2)).toNat

end

end A029856.P4310338078952568620

/-! ## A029856.P6959786237495829548

`A036249(A123108(2*n)+1)`
-/

namespace A029856.P6959786237495829548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A123108 (2 * n) + 1).toNat

end

end A029856.P6959786237495829548

/-! ## A029856.P15905455578827297365

`A036249(A004273(n)+2-n)`
-/

namespace A029856.P15905455578827297365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A004273 n + (2 - (n : ℤ))).toNat

end

end A029856.P15905455578827297365

/-! ## A029856.P6728392096334614261

`A036249(2-(n-A004273(n)))`
-/

namespace A029856.P6728392096334614261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A029856.P6728392096334614261

/-! ## A029856.P4614718056723734246

`A036249(A205006(2*n+1)-n)`
-/

namespace A029856.P4614718056723734246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A205006 (2 * n + 1) - (n : ℤ)).toNat

end

end A029856.P4614718056723734246

/-! ## A029856.P4304431864887132801

`A036249(n+1)+val(A346297(n+1), 4)`
-/

namespace A029856.P4304431864887132801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (n + 1) + (SequenceMachineLib.valuation (A346297 (n + 1)).toNat 4 : ℤ)

end

end A029856.P4304431864887132801

/-! ## A029856.P16329393345149300330

`A036249(∏{e}[n+1, A025923(#)]+n+1)`
-/

namespace A029856.P16329393345149300330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (∏ p ∈ Nat.primeFactors (f1 n), A025923 (Nat.factorization (f1 n) p) + (n + 1 : ℤ)).toNat

end

end A029856.P16329393345149300330

/-! ## A029856.P11161441510495923706

`A036249(A004526(A004273(n))+2)`
-/

namespace A029856.P11161441510495923706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A004526 (A004273 n).toNat + 2).toNat

end

end A029856.P11161441510495923706

/-! ## A029856.P13583781492741281350

`A036249(A002265(A008574(n)+7))`
-/

namespace A029856.P13583781492741281350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (A002265 (A008574 n + 7).toNat).toNat

end

end A029856.P13583781492741281350

/-! ## A029856.P2867086440592578016

`A036249(n+1)+A025923(A001222(n+1))`
-/

namespace A029856.P2867086440592578016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (n + 1) + A025923 (A001222 (n + 1)).toNat

end

end A029856.P2867086440592578016

/-!
# A029857: Number of rooted trees with 3-colored leaves.

The programs for A029857, there is no canonical definition to state claims against.
-/

/-! ## A029857.P9606930605521806305

`A155515(n)+A038569(A369023(n))`
-/

namespace A029857.P9606930605521806305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155515 n + A038569 (A369023 n).toNat

end

end A029857.P9606930605521806305

/-! ## A029857.P17710416308799253075

`A344100(n)+A344090(A001250(n))`
-/

namespace A029857.P17710416308799253075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344100 n + A344090 (A001250 n).toNat

end

end A029857.P17710416308799253075

/-!
# A029858: a(n) = (3^n - 3)/2.

The programs for A029858, the canonical program `A029858.P4049020238019730915` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029858 has offset 1).

The definition of A029858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+1)-3)/2` (program `A029858.P18292048773196394634`, by `A029858.P18292048773196394634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029858.P4049020238019730915

`3*a(n-1)+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029858

/-- `3*a(n-1)+3` -/
def P4049020238019730915.Spec : Prop :=
  ∀ n, (P4049020238019730915.a n : ℤ) = A029858 (n + 1)

theorem P4049020238019730915.correct : P4049020238019730915.Spec := by
  intro n
  simp only [A029858, Nat.add_sub_cancel]

end A029858

/-! ## A029858.P8346164466579060976

`3^n+a(n-1)` with `a(0)=0`
-/

namespace A029858.P8346164466579060976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ n + a (n - 1)

end

end A029858.P8346164466579060976

namespace A029858

/-- `3^n+a(n-1)` -/
def P8346164466579060976.Spec : Prop :=
  ∀ n, (P8346164466579060976.a n : ℤ) = A029858 (n + 1)

end A029858

/-! ## A029858.P5541238138153808288

`A067771(n)-3`
-/

namespace A029858.P5541238138153808288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 n - 3

end

end A029858.P5541238138153808288

namespace A029858

/-- `A067771(n)-3` -/
def P5541238138153808288.Spec : Prop :=
  ∀ n, P5541238138153808288.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P738442568439496310

`3*A003462(n)`
-/

namespace A029858.P738442568439496310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003462 n

end

end A029858.P738442568439496310

namespace A029858

/-- `3*A003462(n)` -/
def P738442568439496310.Spec : Prop :=
  ∀ n, P738442568439496310.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P18292048773196394634

`(3^(n+1)-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029858.P18292048773196394634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - 3 : ℚ) / 2

end

end A029858.P18292048773196394634

namespace A029858

/-- `(3^(n+1)-3)/2` -/
def P18292048773196394634.Spec : Prop :=
  ∀ n, P18292048773196394634.a n = (A029858 (n + 1) : ℚ)

theorem P18292048773196394634.correct : P18292048773196394634.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A029858, Nat.add_sub_cancel, A029858.P18292048773196394634.a, A029858.P4049020238019730915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A029858, Nat.add_sub_cancel, A029858.P18292048773196394634.a, A029858.P4049020238019730915.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A029858

/-! ## A029858.P482913434758062989

`ogf(3x/(1-4x+3x^2))`
-/

namespace A029858.P482913434758062989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, 3] n

end

end A029858.P482913434758062989

namespace A029858

/-- `ogf(3x/(1-4x+3x^2))` -/
def P482913434758062989.Spec : Prop :=
  ∀ n, P482913434758062989.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P2382832475133049370

`lcm(3, floor(3^n/2))`
-/

namespace A029858.P2382832475133049370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(3 ^ n : ℚ) / 2⌋

end

end A029858.P2382832475133049370

namespace A029858

/-- `lcm(3, floor(3^n/2))` -/
def P2382832475133049370.Spec : Prop :=
  ∀ n, (P2382832475133049370.a n : ℤ) = A029858 (n + 1)

end A029858

/-! ## A029858.P17612749751342361770

`xor(-1, ∑[-3^n])`
-/

namespace A029858.P17612749751342361770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029858.P17612749751342361770

namespace A029858

/-- `xor(-1, ∑[-3^n])` -/
def P17612749751342361770.Spec : Prop :=
  ∀ n, P17612749751342361770.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P8980349798373748704

`∑[xor(3^n, floor(acot(n)))]`
-/

namespace A029858.P8980349798373748704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029858.P8980349798373748704

namespace A029858

/-- `∑[xor(3^n, floor(acot(n)))]` -/
def P8980349798373748704.Spec : Prop :=
  ∀ n, P8980349798373748704.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P9651123474016043134

`∑[3*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A029858.P9651123474016043134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029858.P9651123474016043134

namespace A029858

/-- `∑[3*a(n-1)]` -/
def P9651123474016043134.Spec : Prop :=
  ∀ n, (P9651123474016043134.a n : ℤ) = A029858 (n + 1)

end A029858

/-! ## A029858.P14796748151093236637

`∑[(3^n)%∑[3^n]]`
-/

namespace A029858.P14796748151093236637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029858.P14796748151093236637

namespace A029858

/-- `∑[(3^n)%∑[3^n]]` -/
def P14796748151093236637.Spec : Prop :=
  ∀ n, (P14796748151093236637.a n : ℤ) = A029858 (n + 1)

end A029858

/-! ## A029858.P9323954368289232837

`∑[3^n*floor(atan(n+1))]`
-/

namespace A029858.P9323954368289232837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊Real.arctan (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029858.P9323954368289232837

namespace A029858

/-- `∑[3^n*floor(atan(n+1))]` -/
def P9323954368289232837.Spec : Prop :=
  ∀ n, P9323954368289232837.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P6386458958640971310

`∑[a(((-1)^n)²)^n]` with `a(0)=0, a(1)=3`
-/

namespace A029858.P6386458958640971310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (((-1) ^ n) ^ 2).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029858.P6386458958640971310

namespace A029858

/-- `∑[a(((-1)^n)²)^n]` -/
def P6386458958640971310.Spec : Prop :=
  ∀ n, (P6386458958640971310.a n : ℤ) = A029858 (n + 1)

end A029858

/-! ## A029858.P4681631289401303722

`3*(1-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A029858.P4681631289401303722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (1 - (-a (n - 1)))

end

end A029858.P4681631289401303722

namespace A029858

/-- `3*(1-floor(-a(n-1)))` -/
def P4681631289401303722.Spec : Prop :=
  ∀ n, P4681631289401303722.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P3120679168657008871

`3*(1-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A029858.P3120679168657008871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (1 - (-a (n - 1)))

end

end A029858.P3120679168657008871

namespace A029858

/-- `3*(1-ceil(-a(n-1)))` -/
def P3120679168657008871.Spec : Prop :=
  ∀ n, P3120679168657008871.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P15933001927760597677

`3*(1-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A029858.P15933001927760597677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (1 - (-a (n - 1)))

end

end A029858.P15933001927760597677

namespace A029858

/-- `3*(1-round(-a(n-1)))` -/
def P15933001927760597677.Spec : Prop :=
  ∀ n, P15933001927760597677.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P1550345197118241045

`-(3*xor(-1, a(n-1)))` with `a(0)=0`
-/

namespace A029858.P1550345197118241045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -(3 * Int.xor (-1) (a (n - 1)))

end

end A029858.P1550345197118241045

namespace A029858

/-- `-(3*xor(-1, a(n-1)))` -/
def P1550345197118241045.Spec : Prop :=
  ∀ n, P1550345197118241045.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P18242248329317955758

`3*(4/2-(1-a(n-1)))` with `a(0)=0`
-/

namespace A029858.P18242248329317955758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 * ((4 : ℚ) / 2 - (1 - a (n - 1)))

end

end A029858.P18242248329317955758

namespace A029858

/-- `3*(4/2-(1-a(n-1)))` -/
def P18242248329317955758.Spec : Prop :=
  ∀ n, P18242248329317955758.a n = (A029858 (n + 1) : ℚ)

end A029858

/-! ## A029858.P16582724785828254157

`3*(3^n-2-a(n-1))` with `a(0)=0`
-/

namespace A029858.P16582724785828254157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * ((3 ^ n : ℤ) - 2 - a (n - 1))

end

end A029858.P16582724785828254157

namespace A029858

/-- `3*(3^n-2-a(n-1))` -/
def P16582724785828254157.Spec : Prop :=
  ∀ n, P16582724785828254157.a n = A029858 (n + 1)

end A029858

/-! ## A029858.P9514889053213528636

`3*(1-(floor(n-a(n-1))-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A029858.P9514889053213528636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (1 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A029858.P9514889053213528636

namespace A029858

/-- `3*(1-(floor(n-a(n-1))-n))` -/
def P9514889053213528636.Spec : Prop :=
  ∀ n, P9514889053213528636.a n = A029858 (n + 1)

end A029858

/-!
# A029859: Euler transform of 3 2 1 1 1 1 1 1...

The programs for A029859, there is no canonical definition to state claims against.
-/

/-! ## A029859.P13130528327669460339

`∑[A000097(n)]`
-/

namespace A029859.P13130528327669460339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P13130528327669460339

/-! ## A029859.P6533133024856486742

`∑[∑[∑[A087787(n)]]]`
-/

namespace A029859.P6533133024856486742
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P6533133024856486742

/-! ## A029859.P4300411054307114763

`∑[∑[A024786(n+2)]]`
-/

namespace A029859.P4300411054307114763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P4300411054307114763

/-! ## A029859.P17363585928314810930

`∑[A093695(n+2)/2]`
-/

namespace A029859.P17363585928314810930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093695 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P17363585928314810930

/-! ## A029859.P8103930901764750993

`∑[∑[∑[A182712(n+2)]]]`
-/

namespace A029859.P8103930901764750993
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P8103930901764750993

/-! ## A029859.P5110594579959860996

`A014153(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A029859.P5110594579959860996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A014153 n + a (n - 2)

end

end A029859.P5110594579959860996

/-! ## A029859.P4486706125137699561

`∑[∑[a(n-2)+A000041(n)]]` with `a(0)=1, a(1)=1`
-/

namespace A029859.P4486706125137699561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P4486706125137699561

/-! ## A029859.P5811570834414686548

`∑[A000291(n)-A000070(n)]`
-/

namespace A029859.P5811570834414686548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P5811570834414686548

/-! ## A029859.P8471776443167193708

`∑[A082775(n+3)-A000291(n+1)]`
-/

namespace A029859.P8471776443167193708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082775 (n + 3) - A000291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P8471776443167193708

/-! ## A029859.P2786642489965886631

`∑[A103628(n+2)-A103650(n+3)]`
-/

namespace A029859.P2786642489965886631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 (n + 2) - A103650 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P2786642489965886631

/-! ## A029859.P15692173549255096683

`A014160(n)-a(n-1)` with `a(0)=1`
-/

namespace A029859.P15692173549255096683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014160 n - a (n - 1)

end

end A029859.P15692173549255096683

/-! ## A029859.P7234798992833907856

`(A096586(n+1)-A093695(n+1))/2`
-/

namespace A029859.P7234798992833907856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096586 (n + 1) - A093695 (n + 1) : ℚ) / 2

end

end A029859.P7234798992833907856

/-! ## A029859.P4180324139240291339

`∑[A299779(∑[n]+1)]`
-/

namespace A029859.P4180324139240291339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299779 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P4180324139240291339

/-! ## A029859.P15444375416365144212

`∑[∑[A066633(∑[n+1]+2)]]`
-/

namespace A029859.P15444375416365144212
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029859.P15444375416365144212

/-!
# A029860: Euler transform of 4 3 2 1 1 1 1 1 1 1 ...

The programs for A029860, there is no canonical definition to state claims against.
-/

/-! ## A029860.P14243547216771073712

`∑[∑[∑[A000098(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A029860.P14243547216771073712
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A000098 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029860.P14243547216771073712

/-! ## A029860.P13181605276042230138

`round(sqrt(A347867(abs(1-8*n))))`
-/

namespace A029860.P13181605276042230138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A347867 |1 - (8 * n : ℤ)|.toNat : ℝ))

end

end A029860.P13181605276042230138

/-! ## A029860.P2324637550063829915

`A157271(A241693(n+9)-A000217(n+1))`
-/

namespace A029860.P2324637550063829915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A241693 (n + 9) - A000217 (n + 1)).toNat

end

end A029860.P2324637550063829915

/-!
# A029861: Euler transform of 5 4 3 2 1 1 1 1 1 1 1 ...

The programs for A029861, there is no canonical definition to state claims against.
-/

/-! ## A029861.P13581758042996274662

`∑[∑[A051889(A040977(n))]]`
-/

namespace A029861.P13581758042996274662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A040977 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029861.P13581758042996274662

/-! ## A029861.P11153693467690430677

`A056924(A001564(n))+A001585(n)`
-/

namespace A029861.P11153693467690430677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A001564 n).toNat + A001585 n

end

end A029861.P11153693467690430677

/-!
# A029862: Expansion of q^(5/24) / (eta(q) * eta(q^2)^2) in powers of q.

The programs for A029862, there is no canonical definition to state claims against.
-/

/-! ## A029862.P7288674906795421643

`A262150(A007966((2*n)²))`
-/

namespace A029862.P7288674906795421643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262150 (A007966 ((2 * n) ^ 2)).toNat

end

end A029862.P7288674906795421643

/-! ## A029862.P5274113418893044066

`A143066(6*A004914(n+1))`
-/

namespace A029862.P5274113418893044066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (6 * A004914 (n + 1)).toNat

end

end A029862.P5274113418893044066

/-! ## A029862.P14575180233173623872

`A262929(24*A004903(n+1))`
-/

namespace A029862.P14575180233173623872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (24 * A004903 (n + 1)).toNat

end

end A029862.P14575180233173623872

/-! ## A029862.P2133012893455184299

`A262150(2*n)%A231094(n+1)`
-/

namespace A029862.P2133012893455184299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262150 (2 * n)) (A231094 (n + 1))

end

end A029862.P2133012893455184299

/-!
# A029864: G:=1/product((1-x^(3k-2))*(1-x^(3k-1))^2*(1-x^(3k))^3,k=1..infinity).

The programs for A029864, there is no canonical definition to state claims against.
-/

/-! ## A029864.P8354009521177426334

`A000196(A011971(2*(n+1))*A018066(n))`
-/

namespace A029864.P8354009521177426334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A011971 (2 * (n + 1)) * A018066 n).toNat

end

end A029864.P8354009521177426334

/-!
# A029868: Number of connected functions on n points with a loop of length 5.

The programs for A029868, there is no canonical definition to state claims against.
-/

/-! ## A029868.P11244392527712208339

`A339428(A056000(n)+15)`
-/

namespace A029868.P11244392527712208339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A056000 n + 15).toNat

end

end A029868.P11244392527712208339

/-! ## A029868.P12496269593908951592

`A339428(A000124(n+4)+4)`
-/

namespace A029868.P12496269593908951592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000124 (n + 4) + 4).toNat

end

end A029868.P12496269593908951592

/-! ## A029868.P1086127595769736787

`A339428(A000217(n+4)+5)`
-/

namespace A029868.P1086127595769736787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 4) + 5).toNat

end

end A029868.P1086127595769736787

/-! ## A029868.P10420985875512074780

`A339428(A166136(n+2)+n+3)`
-/

namespace A029868.P10420985875512074780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A166136 (n + 2) + (n + 3 : ℤ)).toNat

end

end A029868.P10420985875512074780

/-! ## A029868.P1291606505115724695

`A339428(A052905(n+3)-(2*n+1))`
-/

namespace A029868.P1291606505115724695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A029868.P1291606505115724695

/-!
# A029869: Number of connected functions on n points with a loop of length 6.

The programs for A029869, there is no canonical definition to state claims against.
-/

/-! ## A029869.P14654530221767635324

`A339428(A167499(n+4)+1)`
-/

namespace A029869.P14654530221767635324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167499 (n + 4) + 1).toNat

end

end A029869.P14654530221767635324

/-! ## A029869.P9180690733952627534

`A339428(A167614(n+4)+3)`
-/

namespace A029869.P9180690733952627534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167614 (n + 4) + 3).toNat

end

end A029869.P9180690733952627534

/-! ## A029869.P10566894911725877439

`A339428(A000096(n+4)+7)`
-/

namespace A029869.P10566894911725877439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000096 (n + 4) + 7).toNat

end

end A029869.P10566894911725877439

/-! ## A029869.P11855177701345916586

`A339428(A000217(n+5)+6)`
-/

namespace A029869.P11855177701345916586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 5) + 6).toNat

end

end A029869.P11855177701345916586

/-! ## A029869.P17891601772151618783

`A339428(A052905(n+2)+11)`
-/

namespace A029869.P17891601772151618783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A052905 (n + 2) + 11).toNat

end

end A029869.P17891601772151618783

/-!
# A029870: Number of connected functions on n points with a loop of length 7.

The programs for A029870, there is no canonical definition to state claims against.
-/

/-! ## A029870.P12056097601658695585

`A339428(A167499(n+5)+2)`
-/

namespace A029870.P12056097601658695585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167499 (n + 5) + 2).toNat

end

end A029870.P12056097601658695585

/-! ## A029870.P9777221851362124808

`A339428(A145018(n+7)+3)`
-/

namespace A029870.P9777221851362124808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A145018 (n + 7) + 3).toNat

end

end A029870.P9777221851362124808

/-! ## A029870.P17739053118107278364

`A339428(A000096(n+5)+8)`
-/

namespace A029870.P17739053118107278364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000096 (n + 5) + 8).toNat

end

end A029870.P17739053118107278364

/-! ## A029870.P8829195926495183284

`A339428(A000217(n+6)+7)`
-/

namespace A029870.P8829195926495183284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 6) + 7).toNat

end

end A029870.P8829195926495183284

/-! ## A029870.P7429973987677609968

`A339428(A038722(A055999(n+4)))`
-/

namespace A029870.P7429973987677609968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A038722 (A055999 (n + 4)).toNat).toNat

end

end A029870.P7429973987677609968

/-!
# A029871: Number of connected functions on n points with a loop of length 8.

The programs for A029871, there is no canonical definition to state claims against.
-/

/-! ## A029871.P7571427769102935014

`A339428(A166136(n+6)+2)`
-/

namespace A029871.P7571427769102935014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A166136 (n + 6) + 2).toNat

end

end A029871.P7571427769102935014

/-! ## A029871.P4044004641986066392

`A339428(A000124(n+7)+7)`
-/

namespace A029871.P4044004641986066392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000124 (n + 7) + 7).toNat

end

end A029871.P4044004641986066392

/-! ## A029871.P244638135521664347

`A339428(A000217(n+7)+8)`
-/

namespace A029871.P244638135521664347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 7) + 8).toNat

end

end A029871.P244638135521664347

/-! ## A029871.P17761507194282892357

`A339428(A167499(n+7)-(n+5))`
-/

namespace A029871.P17761507194282892357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167499 (n + 7) - (n + 5 : ℤ)).toNat

end

end A029871.P17761507194282892357

/-! ## A029871.P7527178155630905776

`A339428(record[A014132(a(n-2))])` with `a(0)=36, a(1)=14`
-/

namespace A029871.P7527178155630905776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36, 14] fun n f1 =>
  A014132 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029871.P7527178155630905776

/-!
# A029872: Low temperature series for spin-1/2 Ising specific heat on 2D square lattice.

The programs for A029872, there is no canonical definition to state claims against.
-/

/-! ## A029872.P6307419652284832732

`-((n+2)*A002909(n+2))`
-/

namespace A029872.P6307419652284832732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * A002909 (n + 2))

end

end A029872.P6307419652284832732

/-! ## A029872.P17049193859705205151

`A001489(n+2)*A002909(n+2)`
-/

namespace A029872.P17049193859705205151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) * A002909 (n + 2)

end

end A029872.P17049193859705205151

/-! ## A029872.P2450113949763898357

`A029873(n)/4`
-/

namespace A029872.P2450113949763898357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029873 n : ℚ) / 4

end

end A029872.P2450113949763898357

/-! ## A029872.P11710610663760909844

`8*A029874(n)`
-/

namespace A029872.P11710610663760909844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A029874 n

end

end A029872.P11710610663760909844

/-!
# A029873: Low temperature series for spin-1/2 Ising specific heat on 2D square lattice, multiplied by 4.

The programs for A029873, there is no canonical definition to state claims against.
-/

/-! ## A029873.P6949714698944107556

`4*A029872(n)`
-/

namespace A029873.P6949714698944107556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A029872 n

end

end A029873.P6949714698944107556

/-! ## A029873.P2419939651079579860

`32*A029874(n)`
-/

namespace A029873.P2419939651079579860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A029874 n

end

end A029873.P2419939651079579860

/-! ## A029873.P10802043158787787847

`4*A001489(n+2)*A002909(n+2)`
-/

namespace A029873.P10802043158787787847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001489 (n + 2) * A002909 (n + 2))

end

end A029873.P10802043158787787847

/-! ## A029873.P7131625780279443199

`A029872(n)/(A000079(n)/A000079(n+1))²`
-/

namespace A029873.P7131625780279443199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029872 n : ℚ) / ((A000079 n : ℚ) / (A000079 (n + 1) : ℚ)) ^ 2

end

end A029873.P7131625780279443199

/-!
# A029874: Low temperature series for spin-1/2 Ising specific heat on 2D square lattice, divided by 8.

The programs for A029874, there is no canonical definition to state claims against.
-/

/-! ## A029874.P4007874268780099869

`A029872(n)/8`
-/

namespace A029874.P4007874268780099869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029872 n : ℚ) / 8

end

end A029874.P4007874268780099869

/-! ## A029874.P11506741792047909555

`A029873(n)/32`
-/

namespace A029874.P11506741792047909555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029873 n : ℚ) / 32

end

end A029874.P11506741792047909555

/-! ## A029874.P11537549910523958835

`A001489(n+2)*A002909(n+2)/8`
-/

namespace A029874.P11537549910523958835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 2) * A002909 (n + 2) : ℚ) / 8

end

end A029874.P11537549910523958835

/-!
# A029877: Euler transform of Thue-Morse sequence A001285.

The programs for A029877, there is no canonical definition to state claims against.
-/

/-! ## A029877.P16118543443426968142

`A055086(A273348(n+1))-A256555(n+1)`
-/

namespace A029877.P16118543443426968142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A273348 (n + 1)).toNat - A256555 (n + 1)

end

end A029877.P16118543443426968142

/-! ## A029877.P9108340576448343335

`A103128(A014480(n))-A053616(2*n+1)`
-/

namespace A029877.P9108340576448343335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A014480 n).toNat - A053616 (2 * n + 1)

end

end A029877.P9108340576448343335

/-! ## A029877.P14878489578693411849

`A007617(A237757(3*n+2))%A322642(n+1)`
-/

namespace A029877.P14878489578693411849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007617 (A237757 (3 * n + 2)).toNat) (A322642 (n + 1))

end

end A029877.P14878489578693411849

/-! ## A029877.P8774597461393172900

`A342522(∑[A350837(n+1)])`
-/

namespace A029877.P8774597461393172900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029877.P8774597461393172900

/-!
# A029879: Binomial transform of Thue-Morse sequence A001285.

The programs for A029879, there is no canonical definition to state claims against.
-/

/-! ## A029879.P15255540095964528569

`A019302(n)+2^n`
-/

namespace A029879.P15255540095964528569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019302 n + (2 ^ n : ℤ)

end

end A029879.P15255540095964528569

/-! ## A029879.P1136585452676179509

`2^(n+1)-A019301(n)`
-/

namespace A029879.P1136585452676179509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A019301 n

end

end A029879.P1136585452676179509

/-! ## A029879.P1479925714681730978

`xor(A000079(n), A019302(n))`
-/

namespace A029879.P1479925714681730978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A019302 n)

end

end A029879.P1479925714681730978

/-! ## A029879.P2063205433060706775

`A000051(n)+A019302(n)-1`
-/

namespace A029879.P2063205433060706775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A019302 n - 1)

end

end A029879.P2063205433060706775

/-! ## A029879.P13984247940411215953

`A034008(n+2)+A019302(n)`
-/

namespace A029879.P13984247940411215953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 2) + A019302 n

end

end A029879.P13984247940411215953

/-! ## A029879.P16017207816381061099

`A019301(n)+2*A019302(n)`
-/

namespace A029879.P16017207816381061099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019301 n + 2 * A019302 n

end

end A029879.P16017207816381061099

/-! ## A029879.P2972525172624651096

`A135318(2*n+1)+A019302(n)`
-/

namespace A029879.P2972525172624651096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n + 1) + A019302 n

end

end A029879.P2972525172624651096

/-! ## A029879.P10297554742810471615

`and(-A019301(n), record[A130330(n)])`
-/

namespace A029879.P10297554742810471615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A019301 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029879.P10297554742810471615

/-! ## A029879.P15242163090519949543

`A130321(A000096(n)-n)+A019302(n)`
-/

namespace A029879.P15242163090519949543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A000096 n - (n : ℤ)).toNat + A019302 n

end

end A029879.P15242163090519949543

/-!
# A029880: Inverse binomial transform of Thue-Morse sequence A001285.

The programs for A029880, there is no canonical definition to state claims against.
-/

/-! ## A029880.P9359121280903114262

`A334921(n)/(2-A280560(n)²)`
-/

namespace A029880.P9359121280903114262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (2 - A280560 n ^ 2 : ℚ)

end

end A029880.P9359121280903114262

/-! ## A029880.P15262544073243745869

`A334921(n)/A062953(A001316(n))`
-/

namespace A029880.P15262544073243745869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (A062953 (A001316 n).toNat : ℚ)

end

end A029880.P15262544073243745869

/-! ## A029880.P7620399534747555693

`A334921(n)/A062953(A034444(n+1))`
-/

namespace A029880.P7620399534747555693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (A062953 (A034444 (n + 1)).toNat : ℚ)

end

end A029880.P7620399534747555693

/-! ## A029880.P15751263058421680983

`A334921(n)/A280560(A092131(n+1))`
-/

namespace A029880.P15751263058421680983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (A280560 (A092131 (n + 1)).toNat : ℚ)

end

end A029880.P15751263058421680983

/-! ## A029880.P5469368897718965534

`A334921(n)/A334921(n/A028310(n))`
-/

namespace A029880.P5469368897718965534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (A334921 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A029880.P5469368897718965534

/-!
# A029881: Möbius transform of Thue-Morse sequence A001285 (when shifted once right).

The programs for A029881, the canonical program `A029881.P9354089517218192674` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029881 has offset 1).

The definition of A029881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029881.P5285032854436815643

`2*A000010(n+1)-A130159(n+1)`
-/

namespace A029881.P5285032854436815643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A130159 (n + 1)

end

end A029881.P5285032854436815643

namespace A029881

/-- `2*A000010(n+1)-A130159(n+1)` -/
def P5285032854436815643.Spec : Prop :=
  ∀ n, P5285032854436815643.a n = A029881 (n + 1)

end A029881

/-! ## A029881.P2189870156743083581

`∑{d}[n+1, A001285(#-1)*A008683((n+1)/#)]`
-/

namespace A029881.P2189870156743083581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001285 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029881.P2189870156743083581

namespace A029881

/-- `∑{d}[n+1, A001285(#-1)*A008683((n+1)/#)]` -/
def P2189870156743083581.Spec : Prop :=
  ∀ n, P2189870156743083581.a n = A029881 (n + 1)

end A029881

/-! ## A029881.P9354089517218192674

`∑{d}[n+1, A007427(#)*A029882((n+1)/#-1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029881

/-- `∑{d}[n+1, A007427(#)*A029882((n+1)/#-1)]` -/
def P9354089517218192674.Spec : Prop :=
  ∀ n, P9354089517218192674.a n = A029881 (n + 1)

theorem P9354089517218192674.correct : P9354089517218192674.Spec := by
  intro n
  simp only [A029881, Nat.add_sub_cancel]

end A029881

/-! ## A029881.P17356545254496283649

`A004277((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-A130159(n+1)`
-/

namespace A029881.P17356545254496283649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat - A130159 (n + 1)

end

end A029881.P17356545254496283649

namespace A029881

/-- `A004277((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-A130159(n+1)` -/
def P17356545254496283649.Spec : Prop :=
  ∀ n, P17356545254496283649.a n = A029881 (n + 1)

end A029881

/-! ## A029881.P6055407075272836584

`A004277(A000010(n+1))-A130159(n+1)`
-/

namespace A029881.P6055407075272836584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000010 (n + 1)).toNat - A130159 (n + 1)

end

end A029881.P6055407075272836584

namespace A029881

/-- `A004277(A000010(n+1))-A130159(n+1)` -/
def P6055407075272836584.Spec : Prop :=
  ∀ n, P6055407075272836584.a n = A029881 (n + 1)

end A029881

/-! ## A029881.P11274562228001714997

`A000267(A000010(n+1)²)-A130159(n+1)`
-/

namespace A029881.P11274562228001714997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A000010 (n + 1) ^ 2).toNat - A130159 (n + 1)

end

end A029881.P11274562228001714997

namespace A029881

/-- `A000267(A000010(n+1)²)-A130159(n+1)` -/
def P11274562228001714997.Spec : Prop :=
  ∀ n, P11274562228001714997.a n = A029881 (n + 1)

end A029881

/-!
# A029882: Inverse Moebius transform of Thue-Morse sequence A001285.

The programs for A029882, the canonical program `A029882.P12571486424567980157` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029882 has offset 0).

The definition of A029882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029882.P12571486424567980157

`∑{d}[n+1, A001285(#-1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029882

/-- `∑{d}[n+1, A001285(#-1)]` -/
def P12571486424567980157.Spec : Prop :=
  ∀ n, P12571486424567980157.a n = A029882 n

theorem P12571486424567980157.correct : P12571486424567980157.Spec := by
  intro n
  simp only [A029882]

end A029882

/-! ## A029882.P16810965061655876410

`∑{d}[n+1, A040001(A000069(#))]`
-/

namespace A029882.P16810965061655876410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A040001 (A000069 d).toNat

end

end A029882.P16810965061655876410

namespace A029882

/-- `∑{d}[n+1, A040001(A000069(#))]` -/
def P16810965061655876410.Spec : Prop :=
  ∀ n, P16810965061655876410.a n = A029882 n

end A029882

/-! ## A029882.P7386099669252314400

`∑{d}[n+1, A000005(#)*A029881((n+1)/#)]`
-/

namespace A029882.P7386099669252314400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A029881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029882.P7386099669252314400

namespace A029882

/-- `∑{d}[n+1, A000005(#)*A029881((n+1)/#)]` -/
def P7386099669252314400.Spec : Prop :=
  ∀ n, P7386099669252314400.a n = A029882 n

end A029882

/-! ## A029882.P2020762226610036945

`∑{d}[n+1, A000034(A001969(#))]`
-/

namespace A029882.P2020762226610036945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (A001969 d).toNat

end

end A029882.P2020762226610036945

namespace A029882

/-- `∑{d}[n+1, A000034(A001969(#))]` -/
def P2020762226610036945.Spec : Prop :=
  ∀ n, P2020762226610036945.a n = A029882 n

end A029882

/-! ## A029882.P8217562815066872495

`∑{d}[n+1, A005680(4*#)]`
-/

namespace A029882.P8217562815066872495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005680 (4 * d)

end

end A029882.P8217562815066872495

namespace A029882

/-- `∑{d}[n+1, A005680(4*#)]` -/
def P8217562815066872495.Spec : Prop :=
  ∀ n, P8217562815066872495.a n = A029882 n

end A029882

/-! ## A029882.P12869356354386501986

`∑{d}[n+1, A001511(A001969(2*#))]`
-/

namespace A029882.P12869356354386501986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 (A001969 (2 * d)).toNat

end

end A029882.P12869356354386501986

namespace A029882

/-- `∑{d}[n+1, A001511(A001969(2*#))]` -/
def P12869356354386501986.Spec : Prop :=
  ∀ n, P12869356354386501986.a n = A029882 n

end A029882

/-! ## A029882.P12199579282774530642

`∑{d}[n+1, A000034(A005836(#))]`
-/

namespace A029882.P12199579282774530642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (A005836 d).toNat

end

end A029882.P12199579282774530642

namespace A029882

/-- `∑{d}[n+1, A000034(A005836(#))]` -/
def P12199579282774530642.Spec : Prop :=
  ∀ n, P12199579282774530642.a n = A029882 n

end A029882

/-! ## A029882.P1739590221348146838

`∑{d}[n+1, A014709(A005823(#))]`
-/

namespace A029882.P1739590221348146838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014709 (A005823 d).toNat

end

end A029882.P1739590221348146838

namespace A029882

/-- `∑{d}[n+1, A014709(A005823(#))]` -/
def P1739590221348146838.Spec : Prop :=
  ∀ n, P1739590221348146838.a n = A029882 n

end A029882

/-!
# A029883: First differences of Thue-Morse sequence A001285.

The programs for A029883, the canonical program `A029883.P16402799982168113119` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029883 has offset 1).

The definition of A029883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029883.P16402799982168113119

`2-A007413(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029883

/-- `2-A007413(n+1)` -/
def P16402799982168113119.Spec : Prop :=
  ∀ n, P16402799982168113119.a n = A029883 (n + 1)

theorem P16402799982168113119.correct : P16402799982168113119.Spec := by
  intro n
  simp only [A029883, Nat.add_sub_cancel]

end A029883

/-! ## A029883.P16414252319131030956

`A000120(n+1)%2-A000120(n)%2`
-/

namespace A029883.P16414252319131030956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (n + 1)) 2 - Int.tmod (A000120 n) 2

end

end A029883.P16414252319131030956

namespace A029883

/-- `A000120(n+1)%2-A000120(n)%2` -/
def P16414252319131030956.Spec : Prop :=
  ∀ n, P16414252319131030956.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P5759953971131582585

`Δ[2/a(and(n, n-1))]` with `a(0)=1`
-/

namespace A029883.P5759953971131582585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P5759953971131582585

namespace A029883

/-- `Δ[2/a(and(n, n-1))]` -/
def P5759953971131582585.Spec : Prop :=
  ∀ n, P5759953971131582585.a n = (A029883 (n + 1) : ℚ)

end A029883

/-! ## A029883.P13748348690764527281

`Δ[abs(1-a(and(n, n-1)))]` with `a(0)=0`
-/

namespace A029883.P13748348690764527281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P13748348690764527281

namespace A029883

/-- `Δ[abs(1-a(and(n, n-1)))]` -/
def P13748348690764527281.Spec : Prop :=
  ∀ n, P13748348690764527281.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P8919462288944986090

`Δ[(1-a(and(n, n-1)))²]` with `a(0)=0`
-/

namespace A029883.P8919462288944986090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P8919462288944986090

namespace A029883

/-- `Δ[(1-a(and(n, n-1)))²]` -/
def P8919462288944986090.Spec : Prop :=
  ∀ n, P8919462288944986090.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P1292896380110151087

`log2(ratio[2/a(and(n, n-1))])` with `a(0)=1`
-/

namespace A029883.P1292896380110151087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) / f1 n : ℝ)

end

end A029883.P1292896380110151087

namespace A029883

/-- `log2(ratio[2/a(and(n, n-1))])` -/
def P1292896380110151087.Spec : Prop :=
  ∀ n, P1292896380110151087.a n = (A029883 (n + 1) : ℝ)

end A029883

/-! ## A029883.P11374037054541466685

`Δ[-(a(and(n, n-1))+1)]` with `a(0)=-1`
-/

namespace A029883.P11374037054541466685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  -(f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P11374037054541466685

namespace A029883

/-- `Δ[-(a(and(n, n-1))+1)]` -/
def P11374037054541466685.Spec : Prop :=
  ∀ n, P11374037054541466685.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P12796121204858722258

`Δ[gcd(2, val(n*a(n-1), 2))]` with `a(0)=1`
-/

namespace A029883.P12796121204858722258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A029883.P12796121204858722258

namespace A029883

/-- `Δ[gcd(2, val(n*a(n-1), 2))]` -/
def P12796121204858722258.Spec : Prop :=
  ∀ n, P12796121204858722258.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P2378651481594150640

`Δ[abs(n%2-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A029883.P2378651481594150640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |((n % 2 : ℕ) : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P2378651481594150640

namespace A029883

/-- `Δ[abs(n%2-a(floor(n/2)))]` -/
def P2378651481594150640.Spec : Prop :=
  ∀ n, P2378651481594150640.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P6404127273622976369

`Δ[A001285(n)]`
-/

namespace A029883.P6404127273622976369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P6404127273622976369

namespace A029883

/-- `Δ[A001285(n)]` -/
def P6404127273622976369.Spec : Prop :=
  ∀ n, P6404127273622976369.a n = A029883 (n + 1)

theorem P6404127273622976369.correct : P6404127273622976369.Spec := by
  intro n
  simp only [A029883, Nat.add_sub_cancel, A029883.P6404127273622976369.f1, A029883.P6404127273622976369.a, A029883.P16402799982168113119.a, A001285, A001285.P11616636227895161122.a, A007413, A007413.P5220170299432131247.a, A010060, A010060.P3080921269106500717.a, A036585, A036585.P17220132576541787484.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029883

/-! ## A029883.P2595791797858495186

`Δ[A010060(n)]`
-/

namespace A029883.P2595791797858495186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P2595791797858495186

namespace A029883

/-- `Δ[A010060(n)]` -/
def P2595791797858495186.Spec : Prop :=
  ∀ n, P2595791797858495186.a n = A029883 (n + 1)

theorem P2595791797858495186.correct : P2595791797858495186.Spec := by
  intro n
  simp only [A029883, Nat.add_sub_cancel, A029883.P2595791797858495186.f1, A029883.P2595791797858495186.a, A029883.P16402799982168113119.a, A007413, A007413.P5220170299432131247.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029883

/-! ## A029883.P18312734646447366098

`1-A036580(n)`
-/

namespace A029883.P18312734646447366098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036580 n

end

end A029883.P18312734646447366098

namespace A029883

/-- `1-A036580(n)` -/
def P18312734646447366098.Spec : Prop :=
  ∀ n, P18312734646447366098.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P3110423921013350253

`Δ[-A010059(n)]`
-/

namespace A029883.P3110423921013350253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P3110423921013350253

namespace A029883

/-- `Δ[-A010059(n)]` -/
def P3110423921013350253.Spec : Prop :=
  ∀ n, P3110423921013350253.a n = A029883 (n + 1)

theorem P3110423921013350253.correct : P3110423921013350253.Spec := by
  intro n
  simp only [A029883, Nat.add_sub_cancel, A029883.P3110423921013350253.f1, A029883.P3110423921013350253.a, A029883.P16402799982168113119.a, A007413, A007413.P5220170299432131247.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A036585, A036585.P17220132576541787484.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029883

/-! ## A029883.P6641370995506971327

`Δ[A254379(2*n)]`
-/

namespace A029883.P6641370995506971327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P6641370995506971327

namespace A029883

/-- `Δ[A254379(2*n)]` -/
def P6641370995506971327.Spec : Prop :=
  ∀ n, P6641370995506971327.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P17881368206579410362

`Δ[A316828(2*n)]`
-/

namespace A029883.P17881368206579410362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P17881368206579410362

namespace A029883

/-- `Δ[A316828(2*n)]` -/
def P17881368206579410362.Spec : Prop :=
  ∀ n, P17881368206579410362.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P12660883652889733375

`Δ[A000120(n)%2]`
-/

namespace A029883.P12660883652889733375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P12660883652889733375

namespace A029883

/-- `Δ[A000120(n)%2]` -/
def P12660883652889733375.Spec : Prop :=
  ∀ n, P12660883652889733375.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P7953392904926780396

`Δ[and(1, A005187(n))]`
-/

namespace A029883.P7953392904926780396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029883.P7953392904926780396

namespace A029883

/-- `Δ[and(1, A005187(n))]` -/
def P7953392904926780396.Spec : Prop :=
  ∀ n, P7953392904926780396.a n = A029883 (n + 1)

end A029883

/-! ## A029883.P8873268796204042508

`A036577(n+1)-1`
-/

namespace A029883.P8873268796204042508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) - 1

end

end A029883.P8873268796204042508

namespace A029883

/-- `A036577(n+1)-1` -/
def P8873268796204042508.Spec : Prop :=
  ∀ n, P8873268796204042508.a n = A029883 (n + 1)

theorem P8873268796204042508.correct : P8873268796204042508.Spec := by
  intro n
  simp only [A029883, Nat.add_sub_cancel, A029883.P8873268796204042508.a, A029883.P16402799982168113119.a, A007413, A007413.P5220170299432131247.a, A036577, A036577.P861720372246105226.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029883

/-!
# A029884: Second differences of Thue-Morse sequence A001285.

The programs for A029884, the canonical program `A029884.P4429559380778062282` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029884 has offset 0).

The definition of A029884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029884.P1863450706788393948

`Δ[-A036580(n)]`
-/

namespace A029884.P1863450706788393948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A036580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P1863450706788393948

namespace A029884

/-- `Δ[-A036580(n)]` -/
def P1863450706788393948.Spec : Prop :=
  ∀ n, P1863450706788393948.a n = A029884 n

end A029884

/-! ## A029884.P4717879468926509202

`A036580(n)-A036580(n+1)`
-/

namespace A029884.P4717879468926509202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n - A036580 (n + 1)

end

end A029884.P4717879468926509202

namespace A029884

/-- `A036580(n)-A036580(n+1)` -/
def P4717879468926509202.Spec : Prop :=
  ∀ n, P4717879468926509202.a n = A029884 n

end A029884

/-! ## A029884.P4429559380778062282

`Δ[A010060(n+1)-A010060(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029884

/-- `Δ[A010060(n+1)-A010060(n)]` -/
def P4429559380778062282.Spec : Prop :=
  ∀ n, P4429559380778062282.a n = A029884 n

theorem P4429559380778062282.correct : P4429559380778062282.Spec := by
  intro n
  simp only [A029884]

end A029884

/-! ## A029884.P16656327390574481942

`(A191254(n+1)+A191254(n+2))*A106400(n+1)`
-/

namespace A029884.P16656327390574481942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191254 (n + 1) + A191254 (n + 2)) * A106400 (n + 1)

end

end A029884.P16656327390574481942

namespace A029884

/-- `(A191254(n+1)+A191254(n+2))*A106400(n+1)` -/
def P16656327390574481942.Spec : Prop :=
  ∀ n, P16656327390574481942.a n = A029884 n

end A029884

/-! ## A029884.P13253703258475551375

`Δ[Δ[gcd(2, val(n*a(n-1), 2))]]` with `a(0)=1`
-/

namespace A029884.P13253703258475551375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f2 (n - 1)) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P13253703258475551375

namespace A029884

/-- `Δ[Δ[gcd(2, val(n*a(n-1), 2))]]` -/
def P13253703258475551375.Spec : Prop :=
  ∀ n, P13253703258475551375.a n = A029884 n

end A029884

/-! ## A029884.P17688102753803013442

`Δ[Δ[A001285(n)]]`
-/

namespace A029884.P17688102753803013442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P17688102753803013442

namespace A029884

/-- `Δ[Δ[A001285(n)]]` -/
def P17688102753803013442.Spec : Prop :=
  ∀ n, P17688102753803013442.a n = A029884 n

theorem P17688102753803013442.correct : P17688102753803013442.Spec := by
  intro n
  simp only [A029884, Nat.add_sub_cancel, A029884.P17688102753803013442.f2, A029884.P17688102753803013442.f1, A029884.P17688102753803013442.a, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A001285, A001285.P11616636227895161122.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029884

/-! ## A029884.P6357515663282763603

`Δ[Δ[A010060(n)]]`
-/

namespace A029884.P6357515663282763603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P6357515663282763603

namespace A029884

/-- `Δ[Δ[A010060(n)]]` -/
def P6357515663282763603.Spec : Prop :=
  ∀ n, P6357515663282763603.a n = A029884 n

theorem P6357515663282763603.correct : P6357515663282763603.Spec := by
  intro n
  simp only [A029884, Nat.add_sub_cancel, A029884.P6357515663282763603.f2, A029884.P6357515663282763603.f1, A029884.P6357515663282763603.a, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, SequenceMachineLib.memo_apply]

end A029884

/-! ## A029884.P4707174393769555225

`Δ[A029883(n+1)]`
-/

namespace A029884.P4707174393769555225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P4707174393769555225

namespace A029884

/-- `Δ[A029883(n+1)]` -/
def P4707174393769555225.Spec : Prop :=
  ∀ n, P4707174393769555225.a n = A029884 n

theorem P4707174393769555225.correct : P4707174393769555225.Spec := by
  intro n
  simp only [A029884, Nat.add_sub_cancel, A029884.P4707174393769555225.f1, A029884.P4707174393769555225.a, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A010060, A010060.P3080921269106500717.a, A029883, A029883.P16402799982168113119.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A007413, A007413.P5220170299432131247.a, A005187, A005187.P3874015513960485494.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029884

/-! ## A029884.P15591974826537324834

`Δ[A036577(n+1)]`
-/

namespace A029884.P15591974826537324834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P15591974826537324834

namespace A029884

/-- `Δ[A036577(n+1)]` -/
def P15591974826537324834.Spec : Prop :=
  ∀ n, P15591974826537324834.a n = A029884 n

end A029884

/-! ## A029884.P6862214219909740732

`Δ[A036585(n+1)]`
-/

namespace A029884.P6862214219909740732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P6862214219909740732

namespace A029884

/-- `Δ[A036585(n+1)]` -/
def P6862214219909740732.Spec : Prop :=
  ∀ n, P6862214219909740732.a n = A029884 n

theorem P6862214219909740732.correct : P6862214219909740732.Spec := by
  intro n
  simp only [A029884, Nat.add_sub_cancel, A029884.P6862214219909740732.f1, A029884.P6862214219909740732.a, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A010060, A010060.P3080921269106500717.a, A036585, A036585.P17220132576541787484.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029884

/-! ## A029884.P8235169137646495127

`Δ[A316826(n+1)]`
-/

namespace A029884.P8235169137646495127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P8235169137646495127

namespace A029884

/-- `Δ[A316826(n+1)]` -/
def P8235169137646495127.Spec : Prop :=
  ∀ n, P8235169137646495127.a n = A029884 n

end A029884

/-! ## A029884.P1754968907833430358

`Δ[-A007413(n+1)]`
-/

namespace A029884.P1754968907833430358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P1754968907833430358

namespace A029884

/-- `Δ[-A007413(n+1)]` -/
def P1754968907833430358.Spec : Prop :=
  ∀ n, P1754968907833430358.a n = A029884 n

theorem P1754968907833430358.correct : P1754968907833430358.Spec := by
  intro n
  simp only [A029884, Nat.add_sub_cancel, A029884.P1754968907833430358.f1, A029884.P1754968907833430358.a, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A007413, A007413.P5220170299432131247.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029884

/-! ## A029884.P6938593264480105447

`Δ[-A354384(n+1)]`
-/

namespace A029884.P6938593264480105447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A354384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P6938593264480105447

namespace A029884

/-- `Δ[-A354384(n+1)]` -/
def P6938593264480105447.Spec : Prop :=
  ∀ n, P6938593264480105447.a n = A029884 n

end A029884

/-! ## A029884.P7693070157750664464

`Δ[Δ[A254379(2*n)]]`
-/

namespace A029884.P7693070157750664464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P7693070157750664464

namespace A029884

/-- `Δ[Δ[A254379(2*n)]]` -/
def P7693070157750664464.Spec : Prop :=
  ∀ n, P7693070157750664464.a n = A029884 n

end A029884

/-! ## A029884.P16820690997546503568

`Δ[Δ[A316828(2*n)]]`
-/

namespace A029884.P16820690997546503568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P16820690997546503568

namespace A029884

/-- `Δ[Δ[A316828(2*n)]]` -/
def P16820690997546503568.Spec : Prop :=
  ∀ n, P16820690997546503568.a n = A029884 n

end A029884

/-! ## A029884.P6094136952126754058

`Δ[Δ[A000120(n)%2]]`
-/

namespace A029884.P6094136952126754058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P6094136952126754058

namespace A029884

/-- `Δ[Δ[A000120(n)%2]]` -/
def P6094136952126754058.Spec : Prop :=
  ∀ n, P6094136952126754058.a n = A029884 n

end A029884

/-! ## A029884.P13271258862254657710

`Δ[Δ[and(1, A005187(n))]]`
-/

namespace A029884.P13271258862254657710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005187 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P13271258862254657710

namespace A029884

/-- `Δ[Δ[and(1, A005187(n))]]` -/
def P13271258862254657710.Spec : Prop :=
  ∀ n, P13271258862254657710.a n = A029884 n

end A029884

/-! ## A029884.P11097539810453617415

`Δ[Δ[xor(1, A010059(n))]]`
-/

namespace A029884.P11097539810453617415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A010059 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029884.P11097539810453617415

namespace A029884

/-- `Δ[Δ[xor(1, A010059(n))]]` -/
def P11097539810453617415.Spec : Prop :=
  ∀ n, P11097539810453617415.a n = A029884 n

end A029884

/-!
# A029885: Boustrophedon transform of 1 followed by Thue-Morse sequence A001285.

The programs for A029885, there is no canonical definition to state claims against.
-/

/-! ## A029885.P17371381109928697811

`A244130(n)+A118810(A108555(n))`
-/

namespace A029885.P17371381109928697811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 n + A118810 (A108555 n).toNat

end

end A029885.P17371381109928697811

/-! ## A029885.P4390218141541833563

`A329149(A051286(n))+A306200(n)²`
-/

namespace A029885.P4390218141541833563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329149 (A051286 n).toNat + A306200 n ^ 2

end

end A029885.P4390218141541833563

/-!
# A029886: Convolution of Thue-Morse sequence A001285 with itself.

The programs for A029886, there is no canonical definition to state claims against.
-/

/-! ## A029886.P17971381414606651862

`A108804(n)+∑[A268676(n)]`
-/

namespace A029886.P17971381414606651862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029886.P17971381414606651862

/-! ## A029886.P3341485409079251549

`A247303(n)+4*A115384(n)`
-/

namespace A029886.P3341485409079251549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 n + 4 * A115384 n

end

end A029886.P3341485409079251549

/-! ## A029886.P2122301017244284303

`A108804(n)+∑[2-A106400(n)]`
-/

namespace A029886.P2122301017244284303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029886.P2122301017244284303

/-! ## A029886.P11176140039543379982

`A108804(n)+A098181(A001969(n+1))`
-/

namespace A029886.P11176140039543379982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + A098181 (A001969 (n + 1)).toNat

end

end A029886.P11176140039543379982

/-! ## A029886.P9635294019006188248

`∑[A268676(n)]+A247303(2*(n+1))-A247303(n+1)`
-/

namespace A029886.P9635294019006188248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A247303 (2 * (n + 1)) - A247303 (n + 1))

end

end A029886.P9635294019006188248

/-!
# A029887: A sum over scaled A000531 related to Catalan numbers C(n).

The programs for A029887, the canonical program `A029887.P13365086827215929725` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029887 has offset 0).

The definition of A029887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029887.P13365086827215929725

`4*a(n-1)+A000531(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029887

/-- `4*a(n-1)+A000531(n+1)` -/
def P13365086827215929725.Spec : Prop :=
  ∀ n, P13365086827215929725.a n = A029887 n

theorem P13365086827215929725.correct : P13365086827215929725.Spec := by
  intro n
  simp only [A029887]

end A029887

/-! ## A029887.P13033102440065615262

`1/24*(n+2)*((n+3)*(n+4)*A000108(n+3)-3*4^(n+2))`
-/

namespace A029887.P13033102440065615262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n + 2 : ℚ) * (((n + 3) * (n + 4) : ℤ) * A000108 (n + 3) - (3 * 4 ^ (n + 2) : ℤ) : ℚ)

end

end A029887.P13033102440065615262

namespace A029887

/-- `1/24*(n+2)*((n+3)*(n+4)*A000108(n+3)-3*4^(n+2))` -/
def P13033102440065615262.Spec : Prop :=
  ∀ n, P13033102440065615262.a n = (A029887 n : ℚ)

end A029887

/-! ## A029887.P2645736620951242309

`1/2*A000184(n+2)`
-/

namespace A029887.P2645736620951242309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000184 (n + 2) : ℚ)

end

end A029887.P2645736620951242309

namespace A029887

/-- `1/2*A000184(n+2)` -/
def P2645736620951242309.Spec : Prop :=
  ∀ n, P2645736620951242309.a n = (A029887 n : ℚ)

theorem P2645736620951242309.correct : P2645736620951242309.Spec := by
  intro n
  simp only [A029887, Nat.add_sub_cancel, A029887.P2645736620951242309.a, A029887.P13365086827215929725.a, A000184, A000184.P18437926326760812806.a, A000531, A000531.P3974317347879618799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029887

/-! ## A029887.P5917491588293746819

`4*a(n-1)+∏[2/(n+1)+4]/2-2*4^n` with `a(0)=1`
-/

namespace A029887.P5917491588293746819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (2 * 4 ^ n : ℚ))

end

end A029887.P5917491588293746819

namespace A029887

/-- `4*a(n-1)+∏[2/(n+1)+4]/2-2*4^n` -/
def P5917491588293746819.Spec : Prop :=
  ∀ n, P5917491588293746819.a n = (A029887 n : ℚ)

end A029887

/-! ## A029887.P11536195269602075527

`A002802(n)+A002802(n)-A018218(n+1)`
-/

namespace A029887.P11536195269602075527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 n + (A002802 n - A018218 (n + 1))

end

end A029887.P11536195269602075527

namespace A029887

/-- `A002802(n)+A002802(n)-A018218(n+1)` -/
def P11536195269602075527.Spec : Prop :=
  ∀ n, P11536195269602075527.a n = A029887 n

end A029887

/-! ## A029887.P6433484737677612173

`A000184(n+2)/2`
-/

namespace A029887.P6433484737677612173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000184 (n + 2) : ℚ) / 2

end

end A029887.P6433484737677612173

namespace A029887

/-- `A000184(n+2)/2` -/
def P6433484737677612173.Spec : Prop :=
  ∀ n, P6433484737677612173.a n = (A029887 n : ℚ)

theorem P6433484737677612173.correct : P6433484737677612173.Spec := by
  intro n
  simp only [A029887, Nat.add_sub_cancel, A029887.P6433484737677612173.a, A029887.P13365086827215929725.a, A000184, A000184.P18437926326760812806.a, A000531, A000531.P3974317347879618799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029887

/-! ## A029887.P2279445661533104524

`A052780(n+2)-A042941(n)`
-/

namespace A029887.P2279445661533104524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052780 (n + 2) - A042941 n

end

end A029887.P2279445661533104524

namespace A029887

/-- `A052780(n+2)-A042941(n)` -/
def P2279445661533104524.Spec : Prop :=
  ∀ n, P2279445661533104524.a n = A029887 n

theorem P2279445661533104524.correct : P2279445661533104524.Spec := by
  intro n
  simp only [A029887, Nat.add_sub_cancel, A029887.P2279445661533104524.a, A029887.P13365086827215929725.a, A000531, A000531.P3974317347879618799.a, A042941, A042941.P11785510614438003329.a, A052780, A052780.P9200570379839772737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A029887

/-! ## A029887.P14769536064362025146

`2*A038845(n)-A042941(n)`
-/

namespace A029887.P14769536064362025146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038845 n - A042941 n

end

end A029887.P14769536064362025146

namespace A029887

/-- `2*A038845(n)-A042941(n)` -/
def P14769536064362025146.Spec : Prop :=
  ∀ n, P14769536064362025146.a n = A029887 n

end A029887

/-! ## A029887.P8139762637477507516

`A046658(∑[n+2]+4)`
-/

namespace A029887.P8139762637477507516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A029887.P8139762637477507516

namespace A029887

/-- `A046658(∑[n+2]+4)` -/
def P8139762637477507516.Spec : Prop :=
  ∀ n, P8139762637477507516.a n = A029887 n

end A029887

/-! ## A029887.P14451527361536542118

`A269920(eq[2, A002262(n)])/2`
-/

namespace A029887.P14451527361536542118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A029887.P14451527361536542118

namespace A029887

/-- `A269920(eq[2, A002262(n)])/2` -/
def P14451527361536542118.Spec : Prop :=
  ∀ n, P14451527361536542118.a n = (A029887 n : ℚ)

end A029887

/-!
# A029888: Convolution of Thue-Morse sequence A001285 with primes.

The programs for A029888, there is no canonical definition to state claims against.
-/

/-! ## A029888.P1185207114779286073

`A029896(n+1)-A001285(n+1)`
-/

namespace A029888.P1185207114779286073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029896 (n + 1) - A001285 (n + 1)

end

end A029888.P1185207114779286073

/-! ## A029888.P14279049197630826068

`∑[Δ[A029896(n)]-A029883(n+1)]`
-/

namespace A029888.P14279049197630826068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029896 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A029883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029888.P14279049197630826068

/-! ## A029888.P7008383489607059736

`A029896(n+1)-Δ[A026430(n+1)]`
-/

namespace A029888.P7008383489607059736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029896 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029888.P7008383489607059736

/-! ## A029888.P12006620325943052149

`A029896(n+1)-(A010060(n+1)+1)`
-/

namespace A029888.P12006620325943052149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029896 (n + 1) - (A010060 (n + 1) + 1)

end

end A029888.P12006620325943052149

/-! ## A029888.P9549716308815021547

`A010059(n+1)+A029896(n+1)-2`
-/

namespace A029888.P9549716308815021547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) + (A029896 (n + 1) - 2)

end

end A029888.P9549716308815021547

/-!
# A029889: Number of graphical partitions (degree-vectors for graphs with n vertices, allowing self-loops which count as degree 1; or possible ordered row-sum vectors for a symmetric 0-1 matrix).

The programs for A029889, there is no canonical definition to state claims against.
-/

/-! ## A029889.P1728712410722116059

`∑[A339843(n)]`
-/

namespace A029889.P1728712410722116059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029889.P1728712410722116059

/-! ## A029889.P15975857535063975230

`A089575(A150841(n))`
-/

namespace A029889.P15975857535063975230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089575 (A150841 n).toNat

end

end A029889.P15975857535063975230

/-! ## A029889.P17166865552481270871

`A089575(A150842(n))`
-/

namespace A029889.P17166865552481270871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089575 (A150842 n).toNat

end

end A029889.P17166865552481270871

/-!
# A029890: Number of odd graphical partitions.

The programs for A029890, there is no canonical definition to state claims against.
-/

/-! ## A029890.P5296407826647828900

`A029889(n+1)-A029891(n+1)`
-/

namespace A029890.P5296407826647828900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 (n + 1) - A029891 (n + 1)

end

end A029890.P5296407826647828900

/-! ## A029890.P452471174969615720

`A261226(A093356(n+1)+A063430(n))`
-/

namespace A029890.P452471174969615720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A093356 (n + 1) + A063430 n).toNat

end

end A029890.P452471174969615720

/-! ## A029890.P8586569279456092408

`A261226(A063430(n)+(A042950(n)+1)*2^n)`
-/

namespace A029890.P8586569279456092408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A063430 n + (A042950 n + 1) * (2 ^ n : ℤ)).toNat

end

end A029890.P8586569279456092408

/-!
# A029891: Number of even graphical partitions.

The programs for A029891, there is no canonical definition to state claims against.
-/

/-! ## A029891.P12729969131502807776

`A029889(n+1)-A029890(n+1)`
-/

namespace A029891.P12729969131502807776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 (n + 1) - A029890 (n + 1)

end

end A029891.P12729969131502807776

/-! ## A029891.P10645569295981223565

`A024417(Δ[A150502(n)])`
-/

namespace A029891.P10645569295981223565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (f1 (n + 1) - f1 n).toNat

end

end A029891.P10645569295981223565

/-!
# A029892: Number of even graphical partitions of order 2n - number of odd graphical partitions of order 2n.

The programs for A029892, there is no canonical definition to state claims against.
-/

/-! ## A029892.P4566123029720780502

`A029891(2*(n+1))-A029890(2*(n+1))`
-/

namespace A029892.P4566123029720780502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029891 (2 * (n + 1)) - A029890 (2 * (n + 1))

end

end A029892.P4566123029720780502

/-! ## A029892.P15384328196290723586

`record[A029891(n+2)-A029890(n+2)]`
-/

namespace A029892.P15384328196290723586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029891 (n + 2) - A029890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029892.P15384328196290723586

/-! ## A029892.P8992995148991832294

`A029889(A113484(2*n+1))%A029890(2*(n+1))`
-/

namespace A029892.P8992995148991832294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029889 (A113484 (2 * n + 1)).toNat) (A029890 (2 * (n + 1)))

end

end A029892.P8992995148991832294

/-!
# A029894: Number of directed (or Gale-Ryser) graphical partitions: degree-vector pairs (in-degree, out-degree) for directed graphs (loops allowed) with n vertices; or possible ordered pair (row-sum, column-sum) vectors for a 0-1 matrix.

The programs for A029894, there is no canonical definition to state claims against.
-/

/-! ## A029894.P7658908628219550834

`A327913(∑[4*n])`
-/

namespace A029894.P7658908628219550834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029894.P7658908628219550834

/-! ## A029894.P10622153532590556988

`record[A327913(A057979(n²))]`
-/

namespace A029894.P10622153532590556988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327913 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029894.P10622153532590556988

/-! ## A029894.P13856130264617574713

`record[A003982(n)*A327913(n)]`
-/

namespace A029894.P13856130264617574713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A327913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029894.P13856130264617574713

/-! ## A029894.P1932316122522076366

`record[gcd(A037012(n), A327913(n))]`
-/

namespace A029894.P1932316122522076366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A327913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029894.P1932316122522076366

/-! ## A029894.P11230276867703004828

`A327913(A008586(∑[n]))/A015936(n)`
-/

namespace A029894.P11230276867703004828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327913 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / (A015936 n : ℚ)

end

end A029894.P11230276867703004828

/-!
# A029895: Number of partitions of floor(n^2/2) with at most n parts and maximal height n.

The programs for A029895, there is no canonical definition to state claims against.
-/

/-! ## A029895.P3260401479724183759

`A277218(2*n)`
-/

namespace A029895.P3260401479724183759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (2 * n)

end

end A029895.P3260401479724183759

/-! ## A029895.P3680663098461162587

`xor(1, xor(1, A277218(n+n)))`
-/

namespace A029895.P3680663098461162587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A277218 (n + n)))

end

end A029895.P3680663098461162587

/-! ## A029895.P11842799270576977403

`A277218(n+n)+A035928(n+1)%2`
-/

namespace A029895.P11842799270576977403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + n) + Int.tmod (A035928 (n + 1)) 2

end

end A029895.P11842799270576977403

/-! ## A029895.P14424520443779472302

`A277218(n+n)+A154263(C(2, C(2, n)))`
-/

namespace A029895.P14424520443779472302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + n) + A154263 (Nat.choose 2 (Nat.choose 2 n))

end

end A029895.P14424520443779472302

/-! ## A029895.P11261462215195310594

`A277218(n+n)+(A102551(n+2)-1)%C(2, C(2, n))`
-/

namespace A029895.P11261462215195310594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + n) + Int.tmod (A102551 (n + 2) - 1) (Nat.choose 2 (Nat.choose 2 n) : ℤ)

end

end A029895.P11261462215195310594

/-! ## A029895.P3847184183932134304

`A277218(n+n)+A008458(n)%A008486(n)`
-/

namespace A029895.P3847184183932134304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + n) + Int.tmod (A008458 n) (A008486 n)

end

end A029895.P3847184183932134304

/-! ## A029895.P12084861539774098417

`A277218(n+n)%(A277218(n+n)+A003215(n))`
-/

namespace A029895.P12084861539774098417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277218 (n + n)) (A277218 (n + n) + A003215 n)

end

end A029895.P12084861539774098417

/-!
# A029896: Convolution of Thue-Morse sequence A001285 with A008578 = {1, primes}.

The programs for A029896, there is no canonical definition to state claims against.
-/

/-! ## A029896.P16662917412416823019

`∑[∑[A212628(A000032(n+1))]]`
-/

namespace A029896.P16662917412416823019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (A000032 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029896.P16662917412416823019

/-! ## A029896.P2230153213377516235

`∑[∑[A212628(A000204(n+1))]]`
-/

namespace A029896.P2230153213377516235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (A000204 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029896.P2230153213377516235

/-! ## A029896.P844523917713850611

`∑[∑[A035931(A354676(n+1))]]`
-/

namespace A029896.P844523917713850611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A354676 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029896.P844523917713850611

/-! ## A029896.P3222330195564822462

`A051953(A309861(n))+A008019(n)`
-/

namespace A029896.P3222330195564822462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A309861 n).toNat + A008019 n

end

end A029896.P3222330195564822462

/-!
# A029898: Pitoun's sequence: a(n+1) is digital root of a(0) + ... + a(n).

The programs for A029898, the canonical program `A029898.P17011348564142529168` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029898 has offset 0).

The definition of A029898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029898.P17011348564142529168

`dr(2*a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029898

/-- `dr(2*a(n-1))` -/
def P17011348564142529168.Spec : Prop :=
  ∀ n, (P17011348564142529168.a n : ℤ) = A029898 n

theorem P17011348564142529168.correct : P17011348564142529168.Spec := by
  intro n
  simp only [A029898]

end A029898

/-!
# A029899: Number of strategic configurations in 3 X n Chomp rectangle.

The programs for A029899, there is no canonical definition to state claims against.
-/

/-! ## A029899.P17210369385867768596

`A157795(n)-A081373(A000177(n))`
-/

namespace A029899.P17210369385867768596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157795 n - A081373 (A000177 n).toNat

end

end A029899.P17210369385867768596

/-! ## A029899.P17155595886169225668

`A157795(n)-A081373(A089299(n))`
-/

namespace A029899.P17155595886169225668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157795 n - A081373 (A089299 n).toNat

end

end A029899.P17155595886169225668

/-! ## A029899.P12143445952038787351

`A002264(A351596(n+1)+A227133(n+1))`
-/

namespace A029899.P12143445952038787351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A351596 (n + 1) + A227133 (n + 1)).toNat

end

end A029899.P12143445952038787351

/-! ## A029899.P18046582014142525732

`A059995(∑[A075663(2*(n+2))])+A057355(n)`
-/

namespace A029899.P18046582014142525732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075663 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A057355 n

end

end A029899.P18046582014142525732

/-! ## A029899.P1305263367329808401

`A195311(n+1)-A379958(A191970(n))`
-/

namespace A029899.P1305263367329808401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195311 (n + 1) - A379958 (A191970 n).toNat

end

end A029899.P1305263367329808401

