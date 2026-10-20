import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A270802: Primes p of the form 14*k+1 for which there is a solution to x^7 == 2 mod p.

The programs for A270802, there is no canonical definition to state claims against.
-/

/-! ## A270802.P7792841858049443083

`∩[7*n+8, A042966(n+1)]`
-/

namespace A270802.P7792841858049443083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270802.P7792841858049443083

/-! ## A270802.P16254098319339942604

`∩[A042966(n+5), A045465(n+1)]`
-/

namespace A270802.P16254098319339942604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270802.P16254098319339942604

/-! ## A270802.P9385502263043931359

`∩[A042966(n+1), A016993(n)]`
-/

namespace A270802.P9385502263043931359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270802.P9385502263043931359

/-! ## A270802.P5079254458398392181

`∩[A042966(n+1), A047351(A017089(n))]`
-/

namespace A270802.P5079254458398392181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (A017089 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270802.P5079254458398392181

/-!
# A270803: Formal inverse of Thue-Morse sequence A010060.

The programs for A270803, the canonical program `A270803.P9719610015116545739` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270803 has offset 0).

The definition of A270803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270803.P6438891795017280634

`char[A270804(n+1)]`
-/

namespace A270803.P6438891795017280634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A270803.P6438891795017280634

namespace A270803

/-- `char[A270804(n+1)]` -/
def P6438891795017280634.Spec : Prop :=
  ∀ n, (P6438891795017280634.a n : ℤ) = A270803 n

end A270803

/-! ## A270803.P7486587440893250013

`C(1-char[n²], A063694(n+1))`
-/

namespace A270803.P7486587440893250013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (A063694 (n + 1)).toNat

end

end A270803.P7486587440893250013

namespace A270803

/-- `C(1-char[n²], A063694(n+1))` -/
def P7486587440893250013.Spec : Prop :=
  ∀ n, (P7486587440893250013.a n : ℤ) = A270803 n

end A270803

/-! ## A270803.P3122679702407165453

`and(A028871(n+1), A151666(ceil(n/2)))`
-/

namespace A270803.P3122679702407165453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028871 (n + 1)) (A151666 ⌈(n : ℚ) / 2⌉.toNat)

end

end A270803.P3122679702407165453

namespace A270803

/-- `and(A028871(n+1), A151666(ceil(n/2)))` -/
def P3122679702407165453.Spec : Prop :=
  ∀ n, P3122679702407165453.a n = A270803 n

end A270803

/-! ## A270803.P9719610015116545739

`and(A151666(ceil(n/2)), A251720(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270803

/-- `and(A151666(ceil(n/2)), A251720(n+1))` -/
def P9719610015116545739.Spec : Prop :=
  ∀ n, P9719610015116545739.a n = A270803 n

theorem P9719610015116545739.correct : P9719610015116545739.Spec := by
  intro n
  simp only [A270803]

end A270803

/-! ## A270803.P18155764927413313071

`and(A004273(n), A151666(A110654(n)))`
-/

namespace A270803.P18155764927413313071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 n) (A151666 (A110654 n).toNat)

end

end A270803.P18155764927413313071

namespace A270803

/-- `and(A004273(n), A151666(A110654(n)))` -/
def P18155764927413313071.Spec : Prop :=
  ∀ n, P18155764927413313071.a n = A270803 n

end A270803

/-! ## A270803.P14277784055809324218

`and(A089981(n+1), A151666(A110654(n)))`
-/

namespace A270803.P14277784055809324218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089981 (n + 1)) (A151666 (A110654 n).toNat)

end

end A270803.P14277784055809324218

namespace A270803

/-- `and(A089981(n+1), A151666(A110654(n)))` -/
def P14277784055809324218.Spec : Prop :=
  ∀ n, P14277784055809324218.a n = A270803 n

end A270803

/-! ## A270803.P471393511738826950

`abs(Δ[char[A062880(n+1)]])`
-/

namespace A270803.P471393511738826950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A270803.P471393511738826950

namespace A270803

/-- `abs(Δ[char[A062880(n+1)]])` -/
def P471393511738826950.Spec : Prop :=
  ∀ n, P471393511738826950.a n = A270803 n

end A270803

/-! ## A270803.P12562485891453281348

`C(A048993(C(2, n²)), A059905(n+1))`
-/

namespace A270803.P12562485891453281348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048993 (Nat.choose 2 (n ^ 2))).toNat (A059905 (n + 1)).toNat

end

end A270803.P12562485891453281348

namespace A270803

/-- `C(A048993(C(2, n²)), A059905(n+1))` -/
def P12562485891453281348.Spec : Prop :=
  ∀ n, (P12562485891453281348.a n : ℤ) = A270803 n

end A270803

/-! ## A270803.P5526276011172834038

`C(A059905(A059905(n+1)%(n+1)), A059905(n+1))`
-/

namespace A270803.P5526276011172834038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059905 (Int.tmod (A059905 (n + 1)) (n + 1 : ℤ)).toNat).toNat (A059905 (n + 1)).toNat

end

end A270803.P5526276011172834038

namespace A270803

/-- `C(A059905(A059905(n+1)%(n+1)), A059905(n+1))` -/
def P5526276011172834038.Spec : Prop :=
  ∀ n, (P5526276011172834038.a n : ℤ) = A270803 n

end A270803

/-! ## A270803.P3661112418122146517

`char[lt[A059905(n+1), 2]]*A132126(n+1)`
-/

namespace A270803.P3661112418122146517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A132126 (n + 1)

end

end A270803.P3661112418122146517

namespace A270803

/-- `char[lt[A059905(n+1), 2]]*A132126(n+1)` -/
def P3661112418122146517.Spec : Prop :=
  ∀ n, P3661112418122146517.a n = A270803 n

end A270803

/-! ## A270803.P3776326194815766074

`and(1, and(A000040(n+1), A073709(n+1)))`
-/

namespace A270803.P3776326194815766074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.land (A000040 (n + 1)) (A073709 (n + 1)))

end

end A270803.P3776326194815766074

namespace A270803

/-- `and(1, and(A000040(n+1), A073709(n+1)))` -/
def P3776326194815766074.Spec : Prop :=
  ∀ n, P3776326194815766074.a n = A270803 n

end A270803

/-! ## A270803.P1584668111043009984

`A167371(A054239(n+1))`
-/

namespace A270803.P1584668111043009984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 (A054239 (n + 1)).toNat

end

end A270803.P1584668111043009984

namespace A270803

/-- `A167371(A054239(n+1))` -/
def P1584668111043009984.Spec : Prop :=
  ∀ n, P1584668111043009984.a n = A270803 n

end A270803

/-! ## A270803.P6556689833524304553

`and(A059906(2*(n+1))!, A057427(n))`
-/

namespace A270803.P6556689833524304553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A059906 (2 * (n + 1))).toNat : ℤ) (A057427 n)

end

end A270803.P6556689833524304553

namespace A270803

/-- `and(A059906(2*(n+1))!, A057427(n))` -/
def P6556689833524304553.Spec : Prop :=
  ∀ n, P6556689833524304553.a n = A270803 n

end A270803

/-! ## A270803.P7636433586923627748

`A167371(A163234(n+1))`
-/

namespace A270803.P7636433586923627748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 (A163234 (n + 1)).toNat

end

end A270803.P7636433586923627748

namespace A270803

/-- `A167371(A163234(n+1))` -/
def P7636433586923627748.Spec : Prop :=
  ∀ n, P7636433586923627748.a n = A270803 n

end A270803

/-! ## A270803.P4303141945549970403

`and(A054977(n), A352044(n))`
-/

namespace A270803.P4303141945549970403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A352044 n)

end

end A270803.P4303141945549970403

namespace A270803

/-- `and(A054977(n), A352044(n))` -/
def P4303141945549970403.Spec : Prop :=
  ∀ n, P4303141945549970403.a n = A270803 n

end A270803

/-! ## A270803.P7808788604468065228

`and(A057427(n), A352044(n))`
-/

namespace A270803.P7808788604468065228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A352044 n)

end

end A270803.P7808788604468065228

namespace A270803

/-- `and(A057427(n), A352044(n))` -/
def P7808788604468065228.Spec : Prop :=
  ∀ n, P7808788604468065228.a n = A270803 n

end A270803

/-! ## A270803.P2302317547235267628

`and(A257680(n), A352044(n))`
-/

namespace A270803.P2302317547235267628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257680 n) (A352044 n)

end

end A270803.P2302317547235267628

namespace A270803

/-- `and(A257680(n), A352044(n))` -/
def P2302317547235267628.Spec : Prop :=
  ∀ n, P2302317547235267628.a n = A270803 n

end A270803

/-! ## A270803.P11318560420864193378

`and(A265333(n), A352044(n))`
-/

namespace A270803.P11318560420864193378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265333 n) (A352044 n)

end

end A270803.P11318560420864193378

namespace A270803

/-- `and(A265333(n), A352044(n))` -/
def P11318560420864193378.Spec : Prop :=
  ∀ n, P11318560420864193378.a n = A270803 n

end A270803

/-!
# A270804: 0 followed by the positions of the 1's in the inverse Thue-Morse sequence A270803.

The programs for A270804, the canonical program `A270804.P2348475646438394615` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270804 has offset 0).

The definition of A270804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270804.P2348475646438394615

`ceil(∑[ceil((xor(n, n+1)+1)²/6)]/2)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270804

/-- `ceil(∑[ceil((xor(n, n+1)+1)²/6)]/2)-1` -/
def P2348475646438394615.Spec : Prop :=
  ∀ n, P2348475646438394615.a n = A270804 n

theorem P2348475646438394615.correct : P2348475646438394615.Spec := by
  intro n
  simp only [A270804]

end A270804

/-! ## A270804.P423035172299171244

`floor((∑[(∑{d}[2^val(n+1, 2), #²]+1)/2]-1)/2)`
-/

namespace A270804.P423035172299171244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 + 1 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j - 1) / 2⌋

end

end A270804.P423035172299171244

namespace A270804

/-- `floor((∑[(∑{d}[2^val(n+1, 2), #²]+1)/2]-1)/2)` -/
def P423035172299171244.Spec : Prop :=
  ∀ n, P423035172299171244.a n = A270804 n

end A270804

/-! ## A270804.P15212402707524329385

`xor(3*a(n-1)+2, a(n-1))-(a(n-1)+1)` with `a(0)=0`
-/

namespace A270804.P15212402707524329385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (3 * a (n - 1) + 2) (a (n - 1)) - (a (n - 1) + 1)

end

end A270804.P15212402707524329385

namespace A270804

/-- `xor(3*a(n-1)+2, a(n-1))-(a(n-1)+1)` -/
def P15212402707524329385.Spec : Prop :=
  ∀ n, P15212402707524329385.a n = A270804 n

end A270804

/-! ## A270804.P12942641074345188812

`record[n*A270803(n)]`
-/

namespace A270804.P12942641074345188812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270804.P12942641074345188812

namespace A270804

/-- `record[n*A270803(n)]` -/
def P12942641074345188812.Spec : Prop :=
  ∀ n, P12942641074345188812.a n = A270804 n

end A270804

/-! ## A270804.P9192183854840020613

`eq[A132126(n+1), A270803(n)]`
-/

namespace A270804.P9192183854840020613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P9192183854840020613

namespace A270804

/-- `eq[A132126(n+1), A270803(n)]` -/
def P9192183854840020613.Spec : Prop :=
  ∀ n, (P9192183854840020613.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P3725218172610671559

`eq[A318702(n+1)², A318702(n+1)]`
-/

namespace A270804.P3725218172610671559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P3725218172610671559

namespace A270804

/-- `eq[A318702(n+1)², A318702(n+1)]` -/
def P3725218172610671559.Spec : Prop :=
  ∀ n, (P3725218172610671559.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P6402964207326058860

`eq[A071992(n+1), A085405(n)]`
-/

namespace A270804.P6402964207326058860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P6402964207326058860

namespace A270804

/-- `eq[A071992(n+1), A085405(n)]` -/
def P6402964207326058860.Spec : Prop :=
  ∀ n, (P6402964207326058860.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P6701305976619292755

`eq[A071992(n+1), A374646(n)]`
-/

namespace A270804.P6701305976619292755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P6701305976619292755

namespace A270804

/-- `eq[A071992(n+1), A374646(n)]` -/
def P6701305976619292755.Spec : Prop :=
  ∀ n, (P6701305976619292755.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P1754506953387767133

`lt[A059905(n+1), 2]`
-/

namespace A270804.P1754506953387767133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270804.P1754506953387767133

namespace A270804

/-- `lt[A059905(n+1), 2]` -/
def P1754506953387767133.Spec : Prop :=
  ∀ n, (P1754506953387767133.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P9587338124178971734

`lt[A063694(n+1), 2]`
-/

namespace A270804.P9587338124178971734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270804.P9587338124178971734

namespace A270804

/-- `lt[A063694(n+1), 2]` -/
def P9587338124178971734.Spec : Prop :=
  ∀ n, (P9587338124178971734.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P16632912219852369242

`lt[A004514(n+1), 3]`
-/

namespace A270804.P16632912219852369242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270804.P16632912219852369242

namespace A270804

/-- `lt[A004514(n+1), 3]` -/
def P16632912219852369242.Spec : Prop :=
  ∀ n, (P16632912219852369242.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P17610424983982309553

`lt[n, A090569(n+2)]`
-/

namespace A270804.P17610424983982309553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270804.P17610424983982309553

namespace A270804

/-- `lt[n, A090569(n+2)]` -/
def P17610424983982309553.Spec : Prop :=
  ∀ n, (P17610424983982309553.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P1954929149302292971

`eq[A020990(n), A085405(n)]`
-/

namespace A270804.P1954929149302292971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P1954929149302292971

namespace A270804

/-- `eq[A020990(n), A085405(n)]` -/
def P1954929149302292971.Spec : Prop :=
  ∀ n, (P1954929149302292971.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P16493391618174099371

`eq[A020990(n), A236677(n)]`
-/

namespace A270804.P16493391618174099371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P16493391618174099371

namespace A270804

/-- `eq[A020990(n), A236677(n)]` -/
def P16493391618174099371.Spec : Prop :=
  ∀ n, (P16493391618174099371.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P11137603453550274558

`eq[A057427(n), A270803(n)]`
-/

namespace A270804.P11137603453550274558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P11137603453550274558

namespace A270804

/-- `eq[A057427(n), A270803(n)]` -/
def P11137603453550274558.Spec : Prop :=
  ∀ n, (P11137603453550274558.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P7587928134408120843

`lt[A088442(A002265(n+1)), 2]`
-/

namespace A270804.P7587928134408120843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 (A002265 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270804.P7587928134408120843

namespace A270804

/-- `lt[A088442(A002265(n+1)), 2]` -/
def P7587928134408120843.Spec : Prop :=
  ∀ n, (P7587928134408120843.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P4601579265341068489

`eq[A036988(n), A071992(n+1)]`
-/

namespace A270804.P4601579265341068489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P4601579265341068489

namespace A270804

/-- `eq[A036988(n), A071992(n+1)]` -/
def P4601579265341068489.Spec : Prop :=
  ∀ n, (P4601579265341068489.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P14123272082841386976

`eq[A071992(n+1), A091949(n)]`
-/

namespace A270804.P14123272082841386976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P14123272082841386976

namespace A270804

/-- `eq[A071992(n+1), A091949(n)]` -/
def P14123272082841386976.Spec : Prop :=
  ∀ n, (P14123272082841386976.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P12348913542606714374

`eq[A071992(n+1), A108357(n)]`
-/

namespace A270804.P12348913542606714374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P12348913542606714374

namespace A270804

/-- `eq[A071992(n+1), A108357(n)]` -/
def P12348913542606714374.Spec : Prop :=
  ∀ n, (P12348913542606714374.a n : ℤ) = A270804 n

end A270804

/-! ## A270804.P14650419436757774576

`eq[A071992(n+1), A236677(n)]`
-/

namespace A270804.P14650419436757774576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270804.P14650419436757774576

namespace A270804

/-- `eq[A071992(n+1), A236677(n)]` -/
def P14650419436757774576.Spec : Prop :=
  ∀ n, (P14650419436757774576.a n : ℤ) = A270804 n

end A270804

/-!
# A270805: Number of regular tetrahedra in an n-node-per-edge tetrahedral grid that have all four vertices on the boundary of the parent grid.

The programs for A270805, there is no canonical definition to state claims against.
-/

/-! ## A270805.P5491992919616596629

`A269747(n)-A270806(n)`
-/

namespace A270805.P5491992919616596629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269747 n - A270806 n

end

end A270805.P5491992919616596629

/-!
# A270806: A269747(n) - A270805(n).

The programs for A270806, there is no canonical definition to state claims against.
-/

/-! ## A270806.P11196003591793219103

`A269747(n)-A270805(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270806.P11196003591793219103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269747 n - A270805 n

end

end A270806.P11196003591793219103

/-!
# A270807: Trajectory of 1 under the map n -> n + n/gpf(n) + 1 (see A269304).

The programs for A270807, the canonical program `A270807.P1509187675414497600` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270807 has offset 1).

The definition of A270807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270807.P1509187675414497600

`a(n-1)+a(n-1)/A006530(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A270807

/-- `a(n-1)+a(n-1)/A006530(a(n-1))+1` -/
def P1509187675414497600.Spec : Prop :=
  ∀ n, P1509187675414497600.a n = (A270807 (n + 1) : ℚ)

end A270807

/-! ## A270807.P9361379910143550148

`A335876(a(n-1))+1` with `a(0)=1`
-/

namespace A270807.P9361379910143550148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335876 (a (n - 1)).toNat + 1

end

end A270807.P9361379910143550148

namespace A270807

/-- `A335876(a(n-1))+1` -/
def P9361379910143550148.Spec : Prop :=
  ∀ n, P9361379910143550148.a n = A270807 (n + 1)

end A270807

/-! ## A270807.P6141581576962827239

`A269304(a(n-1))` with `a(0)=1`
-/

namespace A270807.P6141581576962827239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269304 (a (n - 1)).toNat

end

end A270807.P6141581576962827239

namespace A270807

/-- `A269304(a(n-1))` -/
def P6141581576962827239.Spec : Prop :=
  ∀ n, P6141581576962827239.a n = A270807 (n + 1)

end A270807

/-! ## A270807.P16175186242597345282

`a(n-1)+A052126(a(n-1))+1` with `a(0)=1`
-/

namespace A270807.P16175186242597345282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A052126 (a (n - 1)).toNat + 1)

end

end A270807.P16175186242597345282

namespace A270807

/-- `a(n-1)+A052126(a(n-1))+1` -/
def P16175186242597345282.Spec : Prop :=
  ∀ n, P16175186242597345282.a n = A270807 (n + 1)

end A270807

/-! ## A270807.P2022808859593943486

`a(n-1)+A338669(a(n-1))+1` with `a(0)=1`
-/

namespace A270807.P2022808859593943486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A338669 (a (n - 1)).toNat + 1)

end

end A270807.P2022808859593943486

namespace A270807

/-- `a(n-1)+A338669(a(n-1))+1` -/
def P2022808859593943486.Spec : Prop :=
  ∀ n, P2022808859593943486.a n = A270807 (n + 1)

end A270807

/-! ## A270807.P14658099662642603331

`eq[1, A271418(n+1)]+1`
-/

namespace A270807.P14658099662642603331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270807.P14658099662642603331

namespace A270807

/-- `eq[1, A271418(n+1)]+1` -/
def P14658099662642603331.Spec : Prop :=
  ∀ n, (P14658099662642603331.a n : ℤ) = A270807 (n + 1)

end A270807

/-!
# A270808: First differences of A270807, divided by 2.

The programs for A270808, the canonical program `A270808.P8100728408651604526` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270808 has offset 0).

The definition of A270808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270808.P8100728408651604526

`Δ[A270807(n+1)/2]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A270808

/-- `Δ[A270807(n+1)/2]` -/
def P8100728408651604526.Spec : Prop :=
  ∀ n, P8100728408651604526.a n = (A270808 n : ℚ)

end A270808

/-! ## A270808.P3792445181171947860

`A032742(Δ[A270807(n+1)])`
-/

namespace A270808.P3792445181171947860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A270808.P3792445181171947860

namespace A270808

/-- `A032742(Δ[A270807(n+1)])` -/
def P3792445181171947860.Spec : Prop :=
  ∀ n, P3792445181171947860.a n = A270808 n

end A270808

/-! ## A270808.P5850357469173145937

`A110654(Δ[A270807(n+1)])`
-/

namespace A270808.P5850357469173145937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A270808.P5850357469173145937

namespace A270808

/-- `A110654(Δ[A270807(n+1)])` -/
def P5850357469173145937.Spec : Prop :=
  ∀ n, P5850357469173145937.a n = A270808 n

end A270808

/-! ## A270808.P14314104001370234979

`A026741(A270807(n+2)-A270807(n+1))`
-/

namespace A270808.P14314104001370234979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A270807 (n + 2) - A270807 (n + 1)).toNat

end

end A270808.P14314104001370234979

namespace A270808

/-- `A026741(A270807(n+2)-A270807(n+1))` -/
def P14314104001370234979.Spec : Prop :=
  ∀ n, P14314104001370234979.a n = A270808 n

end A270808

/-! ## A270808.P17911391939321945738

`Δ[a(n-1)+a(n-1)/A006530(a(n-1))+1]/2` with `a(0)=1`
-/

namespace A270808.P17911391939321945738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) / (A006530 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ) + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A270808.P17911391939321945738

namespace A270808

/-- `Δ[a(n-1)+a(n-1)/A006530(a(n-1))+1]/2` -/
def P17911391939321945738.Spec : Prop :=
  ∀ n, P17911391939321945738.a n = (A270808 n : ℚ)

end A270808

/-! ## A270808.P4425106169640261943

`Δ[A269304(a(n-1))]/2` with `a(0)=1`
-/

namespace A270808.P4425106169640261943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269304 (f1 (n - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A270808.P4425106169640261943

namespace A270808

/-- `Δ[A269304(a(n-1))]/2` -/
def P4425106169640261943.Spec : Prop :=
  ∀ n, P4425106169640261943.a n = (A270808 n : ℚ)

end A270808

/-!
# A270809: a(n) = n^3/3 - 7*n/3 + 4.

The programs for A270809, the canonical program `A270809.P8978152464662253856` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270809 has offset 0).

The definition of A270809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270809.P8978152464662253856

`n^3/3-7*n/3+4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270809

/-- `n^3/3-7*n/3+4` -/
def P8978152464662253856.Spec : Prop :=
  ∀ n, P8978152464662253856.a n = (A270809 n : ℚ)

end A270809

/-! ## A270809.P9797880280605914980

`2*(∑[C(n, 2)-1]+3)`
-/

namespace A270809.P9797880280605914980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A270809.P9797880280605914980

namespace A270809

/-- `2*(∑[C(n, 2)-1]+3)` -/
def P9797880280605914980.Spec : Prop :=
  ∀ n, P9797880280605914980.a n = A270809 n

end A270809

/-! ## A270809.P14854857287234725474

`abs(2*(n-2-C(n+1, 3)))`
-/

namespace A270809.P14854857287234725474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) - 2 - (Nat.choose (n + 1) 3 : ℤ))|

end

end A270809.P14854857287234725474

namespace A270809

/-- `abs(2*(n-2-C(n+1, 3)))` -/
def P14854857287234725474.Spec : Prop :=
  ∀ n, P14854857287234725474.a n = A270809 n

end A270809

/-! ## A270809.P7143196111227235573

`-(2*(n-2-C(n+1, 3)))`
-/

namespace A270809.P7143196111227235573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * ((n : ℤ) - 2 - (Nat.choose (n + 1) 3 : ℤ)))

end

end A270809.P7143196111227235573

namespace A270809

/-- `-(2*(n-2-C(n+1, 3)))` -/
def P7143196111227235573.Spec : Prop :=
  ∀ n, P7143196111227235573.a n = A270809 n

end A270809

/-! ## A270809.P15481777129667783087

`∑[a(n-1)+2*(n-1)]` with `a(0)=4, a(1)=-2`
-/

namespace A270809.P15481777129667783087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -2] fun n f1 =>
  f1 (n - 1) + 2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270809.P15481777129667783087

namespace A270809

/-- `∑[a(n-1)+2*(n-1)]` -/
def P15481777129667783087.Spec : Prop :=
  ∀ n, P15481777129667783087.a n = A270809 n

end A270809

/-! ## A270809.P1433606676235043142

`2*(3-A254749(n+1))`
-/

namespace A270809.P1433606676235043142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - A254749 (n + 1))

end

end A270809.P1433606676235043142

namespace A270809

/-- `2*(3-A254749(n+1))` -/
def P1433606676235043142.Spec : Prop :=
  ∀ n, P1433606676235043142.a n = A270809 n

end A270809

/-!
# A270810: Expansion of (x - x^2 + 2*x^3 + 2*x^4)/(1 - 3*x + 2*x^2).

The programs for A270810, the canonical program `A270810.P8587742924493596411` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270810 has offset 0).

The definition of A270810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2+2x^3+2x^4)/(1-3x+2x^2))` (program `A270810.P8587742924493596411`, by `A270810.P8587742924493596411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270810.P8587742924493596411

`ogf((x-x^2+2x^3+2x^4)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270810

/-- `ogf((x-x^2+2x^3+2x^4)/(1-3x+2x^2))` -/
def P8587742924493596411.Spec : Prop :=
  ∀ n, P8587742924493596411.a n = A270810 n

theorem P8587742924493596411.correct : P8587742924493596411.Spec := by
  intro n
  simp only [A270810]

end A270810

/-! ## A270810.P13301872525461130569

`2*a(n-1)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A270810.P13301872525461130569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  2 * a (n - 1) + 4

end

end A270810.P13301872525461130569

namespace A270810

/-- `2*a(n-1)+4` -/
def P13301872525461130569.Spec : Prop :=
  ∀ n, (P13301872525461130569.a n : ℤ) = A270810 n

end A270810

/-! ## A270810.P10205192713009709992

`a(n-1)+a(n-1)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A270810.P10205192713009709992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A270810.P10205192713009709992

namespace A270810

/-- `a(n-1)+a(n-1)+4` -/
def P10205192713009709992.Spec : Prop :=
  ∀ n, (P10205192713009709992.a n : ℤ) = A270810 n

end A270810

/-! ## A270810.P1310490635537401657

`2*(2-floor(2/a(n-1)-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A270810.P1310490635537401657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (2 - ⌊2 / (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋)

end

end A270810.P1310490635537401657

namespace A270810

/-- `2*(2-floor(2/a(n-1)-a(n-1)))` -/
def P1310490635537401657.Spec : Prop :=
  ∀ n, P1310490635537401657.a n = A270810 n

end A270810

/-! ## A270810.P1689389009565560874

`a(n-1)-(xor(-2, a(n-1))-2%a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A270810.P1689389009565560874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.xor (-2) (a (n - 1)) - Int.tmod 2 (a (n - 1)))

end

end A270810.P1689389009565560874

namespace A270810

/-- `a(n-1)-(xor(-2, a(n-1))-2%a(n-1))` -/
def P1689389009565560874.Spec : Prop :=
  ∀ n, P1689389009565560874.a n = A270810 n

end A270810

/-! ## A270810.P12350549657771629455

`A257113(n+1)-A300404(n)`
-/

namespace A270810.P12350549657771629455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) - A300404 n

end

end A270810.P12350549657771629455

namespace A270810

/-- `A257113(n+1)-A300404(n)` -/
def P12350549657771629455.Spec : Prop :=
  ∀ n, P12350549657771629455.a n = A270810 n

end A270810

/-!
# A270811: Records in A266569.

The programs for A270811, there is no canonical definition to state claims against.
-/

/-! ## A270811.P168459078619662331

`A266569(A270812(n+1))`
-/

namespace A270811.P168459078619662331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266569 (A270812 (n + 1)).toNat

end

end A270811.P168459078619662331

/-! ## A270811.P12727515384874274928

`record[A266569(n+1)]`
-/

namespace A270811.P12727515384874274928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270811.P12727515384874274928

/-! ## A270811.P16377398564595180347

`record[ratio[A266569(A193592(n))]]`
-/

namespace A270811.P16377398564595180347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266569 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270811.P16377398564595180347

/-! ## A270811.P12699333783419795933

`A266569(lt[A272016(n), A092094(n+4)]+1)`
-/

namespace A270811.P12699333783419795933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092094 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A270811.P12699333783419795933

/-! ## A270811.P11599294931047459758

`A266569(lt[A241810(n+1), n])`
-/

namespace A270811.P11599294931047459758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A270811.P11599294931047459758

/-!
# A270812: Where records occur in A266569.

The programs for A270812, there is no canonical definition to state claims against.
-/

/-! ## A270812.P12659164377334824020

`∑[A034444(∏[A000688(n+5)])]`
-/

namespace A270812.P12659164377334824020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270812.P12659164377334824020

/-! ## A270812.P9031579055368298295

`∑[∏[A000001(A013646(2*n+1))]]`
-/

namespace A270812.P9031579055368298295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A013646 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270812.P9031579055368298295

/-! ## A270812.P18014668239453250373

`∑[∏[A062557(A276783(3*n+1))]]`
-/

namespace A270812.P18014668239453250373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A276783 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270812.P18014668239453250373

/-! ## A270812.P18207839564499651721

`lt[A175628(n+1), A188134(A019433(n))]`
-/

namespace A270812.P18207839564499651721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A019433 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270812.P18207839564499651721

/-! ## A270812.P1683695347366508613

`∑[A036453(A000930(n))^A038605(n+1)]`
-/

namespace A270812.P1683695347366508613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036453 (A000930 n).toNat : ℚ) ^ (A038605 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270812.P1683695347366508613

/-!
# A270813: First differences of A003022.

The programs for A270813, there is no canonical definition to state claims against.
-/

/-! ## A270813.P10835488860617098432

`Δ[A003022(n+2)]`
-/

namespace A270813.P10835488860617098432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270813.P10835488860617098432

/-! ## A270813.P16846394556016132253

`Δ[A227590(n+2)]`
-/

namespace A270813.P16846394556016132253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270813.P16846394556016132253

/-! ## A270813.P2285778412615137529

`Δ[A232234(n+2)/2]`
-/

namespace A270813.P2285778412615137529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232234 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270813.P2285778412615137529

/-! ## A270813.P9851049186683839413

`Δ[A106683(C(n+3, 2))]`
-/

namespace A270813.P9851049186683839413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (Nat.choose (n + 3) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270813.P9851049186683839413

/-!
# A270814: a(1)=0; thereafter a(2k)=k+a(k), a(2k+1)=6k+4+a(6k+4).

The programs for A270814, there is no canonical definition to state claims against.
-/

/-! ## A270814.P7780827928229719587

`A033493(n+1)-(n+1)`
-/

namespace A270814.P7780827928229719587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - (n + 1 : ℤ)

end

end A270814.P7780827928229719587

/-! ## A270814.P4006099668005484140

`A213916(n+1)+A213909(n+1)-(n+1)`
-/

namespace A270814.P4006099668005484140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (n + 1) + A213909 (n + 1) - (n + 1 : ℤ)

end

end A270814.P4006099668005484140

/-! ## A270814.P12563132570649462803

`abs(A033493(A006370(n+1))*A057428(n))`
-/

namespace A270814.P12563132570649462803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033493 (A006370 (n + 1)).toNat * A057428 n|

end

end A270814.P12563132570649462803

/-! ## A270814.P11272254370792860561

`A033493(A006370(n+1))%A056105(n)²`
-/

namespace A270814.P11272254370792860561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033493 (A006370 (n + 1)).toNat) (A056105 n ^ 2)

end

end A270814.P11272254370792860561

/-! ## A270814.P8002294361451149988

`A033493(A006370(n+1))*A294619(A030101(n))`
-/

namespace A270814.P8002294361451149988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A006370 (n + 1)).toNat * A294619 (A030101 n).toNat

end

end A270814.P8002294361451149988

/-! ## A270814.P13819284976706817540

`A033493(A006370(n+1))*A294619(A057944(n))`
-/

namespace A270814.P13819284976706817540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A006370 (n + 1)).toNat * A294619 (A057944 n).toNat

end

end A270814.P13819284976706817540

/-! ## A270814.P14630237290491789688

`A033493(A006370(n+1))*A294619(n²)`
-/

namespace A270814.P14630237290491789688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A006370 (n + 1)).toNat * A294619 (n ^ 2)

end

end A270814.P14630237290491789688

/-!
# A270817: Integers k such that (2^k - 1) + (3^k - 1) + (5^k - 1) is prime.

The programs for A270817, there is no canonical definition to state claims against.
-/

/-! ## A270817.P1201980399239756262

`A091276(A152225(n))+A047229(n+1)`
-/

namespace A270817.P1201980399239756262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091276 (A152225 n).toNat + A047229 (n + 1)

end

end A270817.P1201980399239756262

/-! ## A270817.P11368020889471167360

`A077767(A038665(n))/A303386(n+2)`
-/

namespace A270817.P11368020889471167360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077767 (A038665 n).toNat : ℚ) / (A303386 (n + 2) : ℚ)

end

end A270817.P11368020889471167360

/-!
# A270819: a(n) is the number of arithmetic progressions of length 3 among the quadratic residues modulo prime(n).

The programs for A270819, the canonical program `A270819.P9082800308901195485` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270819 has offset 1).

The definition of A270819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270819.P9082800308901195485

`floor((p?[round(8*n/7)]-2)/8)*A006093(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270819

/-- `floor((p?[round(8*n/7)]-2)/8)*A006093(n+1)` -/
def P9082800308901195485.Spec : Prop :=
  ∀ n, P9082800308901195485.a n = A270819 (n + 1)

theorem P9082800308901195485.correct : P9082800308901195485.Spec := by
  intro n
  simp only [A270819, Nat.add_sub_cancel]

end A270819

/-! ## A270819.P15452348513070250212

`floor(A040976(n+1)/8)*A006093(n+1)`
-/

namespace A270819.P15452348513070250212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 1) : ℚ) / 8⌋ * A006093 (n + 1)

end

end A270819.P15452348513070250212

namespace A270819

/-- `floor(A040976(n+1)/8)*A006093(n+1)` -/
def P15452348513070250212.Spec : Prop :=
  ∀ n, P15452348513070250212.a n = A270819 (n + 1)

end A270819

/-! ## A270819.P3709514757322985385

`A006093(n+1)*A132292(A006093(n+1))`
-/

namespace A270819.P3709514757322985385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A132292 (A006093 (n + 1)).toNat

end

end A270819.P3709514757322985385

namespace A270819

/-- `A006093(n+1)*A132292(A006093(n+1))` -/
def P3709514757322985385.Spec : Prop :=
  ∀ n, P3709514757322985385.a n = A270819 (n + 1)

end A270819

/-! ## A270819.P14707052256235496076

`A039915(n+1)*A132292(A039915(n+1))`
-/

namespace A270819.P14707052256235496076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) * A132292 (A039915 (n + 1)).toNat

end

end A270819.P14707052256235496076

namespace A270819

/-- `A039915(n+1)*A132292(A039915(n+1))` -/
def P14707052256235496076.Spec : Prop :=
  ∀ n, P14707052256235496076.a n = A270819 (n + 1)

end A270819

/-! ## A270819.P6659912415527691281

`(A110656(A156037(n+1))-1)*A156037(n+1)`
-/

namespace A270819.P6659912415527691281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110656 (A156037 (n + 1)).toNat - 1) * A156037 (n + 1)

end

end A270819.P6659912415527691281

namespace A270819

/-- `(A110656(A156037(n+1))-1)*A156037(n+1)` -/
def P6659912415527691281.Spec : Prop :=
  ∀ n, P6659912415527691281.a n = A270819 (n + 1)

end A270819

/-! ## A270819.P15969123401371537497

`(A000040(n+1)-1)*A132292(A000040(n+1)-1)`
-/

namespace A270819.P15969123401371537497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A132292 (A000040 (n + 1) - 1).toNat

end

end A270819.P15969123401371537497

namespace A270819

/-- `(A000040(n+1)-1)*A132292(A000040(n+1)-1)` -/
def P15969123401371537497.Spec : Prop :=
  ∀ n, P15969123401371537497.a n = A270819 (n + 1)

end A270819

/-!
# A270820: Prime powers p^k (p prime, k > 1) that are not of the form x^2 + y^2 + z^2 where x, y and z are integers.

The programs for A270820, there is no canonical definition to state claims against.
-/

/-! ## A270820.P5181927772649072758

`∩[A025475(n+1), A267321(n+1)]`
-/

namespace A270820.P5181927772649072758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270820.P5181927772649072758

/-! ## A270820.P18115690874379099102

`∩[A056824(n+1), A267321(n+1)]`
-/

namespace A270820.P18115690874379099102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270820.P18115690874379099102

/-! ## A270820.P11897978161583240828

`∩[A073540(n+1), A267321(n+1)]`
-/

namespace A270820.P11897978161583240828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270820.P11897978161583240828

/-! ## A270820.P11444875447523124396

`∩[A088247(n+1), A267321(n+1)]`
-/

namespace A270820.P11444875447523124396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270820.P11444875447523124396

/-! ## A270820.P16624358212313560070

`∩[A088248(n+1), A267321(n+1)]`
-/

namespace A270820.P16624358212313560070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270820.P16624358212313560070

/-!
# A270822: Expansion of 1/((1-4*x^2)^(3/2)-2*x*(1-4*x^2)).

The programs for A270822, there is no canonical definition to state claims against.
-/

/-! ## A270822.P2118763363944334784

`A327550(n)+A273496(A000085(n))`
-/

namespace A270822.P2118763363944334784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327550 n + A273496 (A000085 n).toNat

end

end A270822.P2118763363944334784

/-! ## A270822.P11204477285814111415

`xor(A000244(n), A262311(A379193(n)))`
-/

namespace A270822.P11204477285814111415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 n) (A262311 (A379193 n).toNat)

end

end A270822.P11204477285814111415

/-!
# A270823: Period 16: repeat [0,2,3,1,1,3,2,0,1,3,2,0,0,2,3,1].

The programs for A270823, there is no canonical definition to state claims against.
-/

/-! ## A270823.P9580187831922604415

`and(9, A004475(n))%6`
-/

namespace A270823.P9580187831922604415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 9 (A004475 n)) 6

end

end A270823.P9580187831922604415

/-!
# A270824: Period 16: repeat [0, 1, 1, 0, 2, 3, 3, 2, 3, 2, 2, 3, 1, 0, 0, 1].

The programs for A270824, the canonical program `A270824.P2294550948083592688` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270824 has offset 0).

The definition of A270824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270824.P2294550948083592688

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2, a(5)=3, a(6)=3, a(7)=2, a(8)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270824

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P2294550948083592688.Spec : Prop :=
  ∀ n, P2294550948083592688.a n = A270824 n

theorem P2294550948083592688.correct : P2294550948083592688.Spec := by
  intro n
  simp only [A270824]

end A270824

/-!
# A270825: a(n) = Sum_{i=0..n} (-1)^floor(i/2)*floor(sqrt(i)).

The programs for A270825, the canonical program `A270825.P2006449404480140817` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270825 has offset 0).

The definition of A270825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270825.P2006449404480140817

`∑[(1-and(2, n))*floor(sqrt(n))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270825

/-- `∑[(1-and(2, n))*floor(sqrt(n))]` -/
def P2006449404480140817.Spec : Prop :=
  ∀ n, P2006449404480140817.a n = A270825 n

theorem P2006449404480140817.correct : P2006449404480140817.Spec := by
  intro n
  simp only [A270825]

end A270825

/-! ## A270825.P4793637041549038051

`∑[floor(sqrt(n))/(1-and(2, n))]`
-/

namespace A270825.P4793637041549038051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270825.P4793637041549038051

namespace A270825

/-- `∑[floor(sqrt(n))/(1-and(2, n))]` -/
def P4793637041549038051.Spec : Prop :=
  ∀ n, P4793637041549038051.a n = (A270825 n : ℚ)

end A270825

/-! ## A270825.P14195695056074276788

`∑[(or(2, n)-(n+1))*floor(sqrt(n))]`
-/

namespace A270825.P14195695056074276788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n : ℤ) - (n + 1 : ℤ)) * (Nat.sqrt n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270825.P14195695056074276788

namespace A270825

/-- `∑[(or(2, n)-(n+1))*floor(sqrt(n))]` -/
def P14195695056074276788.Spec : Prop :=
  ∀ n, P14195695056074276788.a n = A270825 n

end A270825

/-! ## A270825.P8189176301013962902

`∑[floor(sqrt(n))/(or(2, n)-(n+1))]`
-/

namespace A270825.P8189176301013962902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) / ((Nat.lor 2 n : ℤ) - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270825.P8189176301013962902

namespace A270825

/-- `∑[floor(sqrt(n))/(or(2, n)-(n+1))]` -/
def P8189176301013962902.Spec : Prop :=
  ∀ n, P8189176301013962902.a n = (A270825 n : ℚ)

end A270825

/-! ## A270825.P527028627874864586

`∑[(-1)^floor(n/2)*floor(sqrt(n))]`
-/

namespace A270825.P527028627874864586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (Nat.sqrt n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270825.P527028627874864586

namespace A270825

/-- `∑[(-1)^floor(n/2)*floor(sqrt(n))]` -/
def P527028627874864586.Spec : Prop :=
  ∀ n, P527028627874864586.a n = (A270825 n : ℚ)

end A270825

/-! ## A270825.P13384775778312662232

`ceil(∑[A000196(n)/A057077(n)])`
-/

namespace A270825.P13384775778312662232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 n : ℚ) / (A057077 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A270825.P13384775778312662232

namespace A270825

/-- `ceil(∑[A000196(n)/A057077(n)])` -/
def P13384775778312662232.Spec : Prop :=
  ∀ n, P13384775778312662232.a n = A270825 n

end A270825

/-!
# A270826: Maximum number of iterations needed in the Euclid algorithm for gcd(x,y) in [1..n].

The programs for A270826, the canonical program `A270826.P16777518768429564501` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270826 has offset 1).

The definition of A270826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270826.P16777518768429564501

`ceil(log((n+1)*sqrt(5))/log((sqrt(5)+1)/2))-2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270826

/-- `ceil(log((n+1)*sqrt(5))/log((sqrt(5)+1)/2))-2` -/
def P16777518768429564501.Spec : Prop :=
  ∀ n, P16777518768429564501.a n = A270826 (n + 1)

theorem P16777518768429564501.correct : P16777518768429564501.Spec := by
  intro n
  simp only [A270826, Nat.add_sub_cancel]

end A270826

/-! ## A270826.P5250166171905635134

`floor(record[log2(xor(n, 2*n)+1)])`
-/

namespace A270826.P5250166171905635134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (2 * n) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A270826.P5250166171905635134

namespace A270826

/-- `floor(record[log2(xor(n, 2*n)+1)])` -/
def P5250166171905635134.Spec : Prop :=
  ∀ n, P5250166171905635134.a n = A270826 (n + 1)

end A270826

/-! ## A270826.P10454555749158992560

`ceil(log2(record[xor(n, 2*n)/2]+1))`
-/

namespace A270826.P10454555749158992560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ)⌉

end

end A270826.P10454555749158992560

namespace A270826

/-- `ceil(log2(record[xor(n, 2*n)/2]+1))` -/
def P10454555749158992560.Spec : Prop :=
  ∀ n, P10454555749158992560.a n = A270826 (n + 1)

end A270826

/-! ## A270826.P5100102369131248512

`floor(log2(A048297(n)))`
-/

namespace A270826.P5100102369131248512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048297 n).toNat

end

end A270826.P5100102369131248512

namespace A270826

/-- `floor(log2(A048297(n)))` -/
def P5100102369131248512.Spec : Prop :=
  ∀ n, (P5100102369131248512.a n : ℤ) = A270826 (n + 1)

end A270826

/-! ## A270826.P1918881856154077667

`floor(log2(A277335(n)+1))`
-/

namespace A270826.P1918881856154077667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A277335 n + 1).toNat

end

end A270826.P1918881856154077667

namespace A270826

/-- `floor(log2(A277335(n)+1))` -/
def P1918881856154077667.Spec : Prop :=
  ∀ n, (P1918881856154077667.a n : ℤ) = A270826 (n + 1)

end A270826

/-! ## A270826.P3480921558812422420

`ceil(log2(A060138(n)+1))`
-/

namespace A270826.P3480921558812422420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060138 n + 1 : ℝ)⌉

end

end A270826.P3480921558812422420

namespace A270826

/-- `ceil(log2(A060138(n)+1))` -/
def P3480921558812422420.Spec : Prop :=
  ∀ n, P3480921558812422420.a n = A270826 (n + 1)

end A270826

/-! ## A270826.P11657351234783197881

`ceil(log2(A060142(n+1)))`
-/

namespace A270826.P11657351234783197881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060142 (n + 1) : ℝ)⌉

end

end A270826.P11657351234783197881

namespace A270826

/-- `ceil(log2(A060142(n+1)))` -/
def P11657351234783197881.Spec : Prop :=
  ∀ n, P11657351234783197881.a n = A270826 (n + 1)

end A270826

/-!
# A270827: a(n) is the smallest k such that k^8 = 16 (mod 2*n-1).

The programs for A270827, there is no canonical definition to state claims against.
-/

/-! ## A270827.P3686929725730260839

`A334441(A027907(3*n+2)+n)`
-/

namespace A270827.P3686929725730260839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334441 (A027907 (3 * n + 2) + (n : ℤ)).toNat

end

end A270827.P3686929725730260839

/-! ## A270827.P5740527937251662031

`A218828(A088761(n+1))`
-/

namespace A270827.P5740527937251662031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (A088761 (n + 1)).toNat

end

end A270827.P5740527937251662031

/-!
# A270828: a(n) = (Sum_{k=1..2n-1} prime(k)) mod prime(n).

The programs for A270828, the canonical program `A270828.P4533327443574597261` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270828 has offset 1).

The definition of A270828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270828.P5262530152806871037

`A109723(n)%Δ[A007504(n)]`
-/

namespace A270828.P5262530152806871037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109723 n) (f1 (n + 1) - f1 n)

end

end A270828.P5262530152806871037

namespace A270828

/-- `A109723(n)%Δ[A007504(n)]` -/
def P5262530152806871037.Spec : Prop :=
  ∀ n, P5262530152806871037.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P14887703030363296599

`A007504(Δ[n²])%A000040(n+1)`
-/

namespace A270828.P14887703030363296599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000040 (n + 1))

end

end A270828.P14887703030363296599

namespace A270828

/-- `A007504(Δ[n²])%A000040(n+1)` -/
def P14887703030363296599.Spec : Prop :=
  ∀ n, P14887703030363296599.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P985891881842030535

`A007504(2*n+1)%Δ[A007504(n)]`
-/

namespace A270828.P985891881842030535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A270828.P985891881842030535

namespace A270828

/-- `A007504(2*n+1)%Δ[A007504(n)]` -/
def P985891881842030535.Spec : Prop :=
  ∀ n, P985891881842030535.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P4711723009254875519

`A007504(A005408(n))%sqrt(A001248(n+1))`
-/

namespace A270828.P4711723009254875519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A005408 n).toNat) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A270828.P4711723009254875519

namespace A270828

/-- `A007504(A005408(n))%sqrt(A001248(n+1))` -/
def P4711723009254875519.Spec : Prop :=
  ∀ n, P4711723009254875519.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P14855245838193191936

`A007504(A000027(2*n+1))%(A006093(n+1)+1)`
-/

namespace A270828.P14855245838193191936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A000027 (2 * n + 1)).toNat) (A006093 (n + 1) + 1)

end

end A270828.P14855245838193191936

namespace A270828

/-- `A007504(A000027(2*n+1))%(A006093(n+1)+1)` -/
def P14855245838193191936.Spec : Prop :=
  ∀ n, P14855245838193191936.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P11370762650312567682

`A007504(A000265(2*n+1))%(A006093(n+1)+1)`
-/

namespace A270828.P11370762650312567682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A000265 (2 * n + 1)).toNat) (A006093 (n + 1) + 1)

end

end A270828.P11370762650312567682

namespace A270828

/-- `A007504(A000265(2*n+1))%(A006093(n+1)+1)` -/
def P11370762650312567682.Spec : Prop :=
  ∀ n, P11370762650312567682.a n = A270828 (n + 1)

end A270828

/-! ## A270828.P4533327443574597261

`∑[A011974(2*n+1)]%A000040(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270828

/-- `∑[A011974(2*n+1)]%A000040(n+1)` -/
def P4533327443574597261.Spec : Prop :=
  ∀ n, P4533327443574597261.a n = A270828 (n + 1)

theorem P4533327443574597261.correct : P4533327443574597261.Spec := by
  intro n
  simp only [A270828, Nat.add_sub_cancel]

end A270828

/-! ## A270828.P6166995183951746503

`A007504(A023443(2*(n+1)))%sqrt(A001248(n+1))`
-/

namespace A270828.P6166995183951746503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A023443 (2 * (n + 1))).toNat) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A270828.P6166995183951746503

namespace A270828

/-- `A007504(A023443(2*(n+1)))%sqrt(A001248(n+1))` -/
def P6166995183951746503.Spec : Prop :=
  ∀ n, P6166995183951746503.a n = A270828 (n + 1)

end A270828

/-!
# A270831: Numbers k such that (7*10^k + 71)/3 is prime.

The programs for A270831, there is no canonical definition to state claims against.
-/

/-! ## A270831.P2262874963218799723

`lt[Δ[A032561(n+3)], A036470(n)]`
-/

namespace A270831.P2262874963218799723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032561 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A270831.P2262874963218799723

/-! ## A270831.P17393532452278907415

`lt[Δ[A032561(n+3)], A064986(2*n)]`
-/

namespace A270831.P17393532452278907415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032561 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A270831.P17393532452278907415

/-! ## A270831.P6426569531085835581

`∑[∏{e}[A281781(A060742(n+1)), #+1]]`
-/

namespace A270831.P6426569531085835581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281781 (A060742 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270831.P6426569531085835581

/-! ## A270831.P11284640331309423559

`eq[A074206(n), A362784(A000115(n))]`
-/

namespace A270831.P11284640331309423559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362784 (A000115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270831.P11284640331309423559

/-! ## A270831.P16712304772457262478

`eq[A198339(A204892(n+5)), A318717(n)]`
-/

namespace A270831.P16712304772457262478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198339 (A204892 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270831.P16712304772457262478

/-!
# A270832: Number of bases in which n is written using more than 1 digit, all of which are distinct.

The programs for A270832, there is no canonical definition to state claims against.
-/

/-! ## A270832.P11089744124508702320

`n-A288157(n+1)`
-/

namespace A270832.P11089744124508702320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A288157 (n + 1)

end

end A270832.P11089744124508702320

/-! ## A270832.P13660640155150916109

`-(A288157(n+1)+A001489(n))`
-/

namespace A270832.P13660640155150916109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A288157 (n + 1) + A001489 n)

end

end A270832.P13660640155150916109

/-! ## A270832.P4043536946657680368

`(A175224(n+1)+n)%(A288157(n+1)+A175224(n+1))`
-/

namespace A270832.P4043536946657680368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175224 (n + 1) + (n : ℤ)) (A288157 (n + 1) + A175224 (n + 1))

end

end A270832.P4043536946657680368

/-! ## A270832.P7557028280008969547

`A033566(n)%(A033566(n)+A288157(n+1)+A001489(n))`
-/

namespace A270832.P7557028280008969547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033566 n) (A033566 n + (A288157 (n + 1) + A001489 n))

end

end A270832.P7557028280008969547

/-! ## A270832.P15928302116482597817

`A208117(n+1)%(A208117(n+1)+A288157(n+1)+A001489(n))`
-/

namespace A270832.P15928302116482597817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208117 (n + 1)) (A208117 (n + 1) + (A288157 (n + 1) + A001489 n))

end

end A270832.P15928302116482597817

/-! ## A270832.P13518950956544174590

`(A178748(n)+n)%(A288157(n+1)+A178748(n))`
-/

namespace A270832.P13518950956544174590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178748 n + (n : ℤ)) (A288157 (n + 1) + A178748 n)

end

end A270832.P13518950956544174590

/-! ## A270832.P10474641305870674072

`A025581(A288157(n+1)+∑[n])`
-/

namespace A270832.P10474641305870674072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A288157 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A270832.P10474641305870674072

/-!
# A270834: Numbers n such that A256832(n)/A000129(n-1) is not divisible by n.

The programs for A270834, there is no canonical definition to state claims against.
-/

/-! ## A270834.P2489801763084134486

`eq[A000009(A360459(n+1)), A359895(n)]`
-/

namespace A270834.P2489801763084134486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A360459 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270834.P2489801763084134486

/-! ## A270834.P9427133056132481533

`eq[A279360(n)+2, A175851(n+1)]`
-/

namespace A270834.P9427133056132481533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279360 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270834.P9427133056132481533

/-! ## A270834.P9472137349781276845

`eq[A279360(n)+2, A305300(n+1)]`
-/

namespace A270834.P9472137349781276845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279360 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270834.P9472137349781276845

/-! ## A270834.P8342983773342585073

`∩[A028237(n+1), A050150(n+1)]`
-/

namespace A270834.P8342983773342585073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270834.P8342983773342585073

/-! ## A270834.P5646511243383657988

`∩[A028237(n+1), A379318(n+1)]`
-/

namespace A270834.P5646511243383657988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270834.P5646511243383657988

/-!
# A270835: a(n) = smallest k such that A004431(n) +/ - k are both positive squares.

The programs for A270835, there is no canonical definition to state claims against.
-/

/-! ## A270835.P10329911210043004991

`A272063(A076084(n+1))`
-/

namespace A270835.P10329911210043004991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272063 (A076084 (n + 1)).toNat

end

end A270835.P10329911210043004991

/-! ## A270835.P7287403596308240579

`A272063(A151764(n+1))`
-/

namespace A270835.P7287403596308240579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272063 (A151764 (n + 1)).toNat

end

end A270835.P7287403596308240579

/-! ## A270835.P4092646500360152141

`A272063(n+1)%p?[A272087(n)]`
-/

namespace A270835.P4092646500360152141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272063 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A270835.P4092646500360152141

/-! ## A270835.P4213812908597139193

`A272063(n+1)+A000007(A000285(n))`
-/

namespace A270835.P4213812908597139193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272063 (n + 1) + A000007 (A000285 n).toNat

end

end A270835.P4213812908597139193

/-! ## A270835.P16353503806291227822

`A001221(A272075(n+1))*A272063(n+1)`
-/

namespace A270835.P16353503806291227822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A272075 (n + 1)).toNat * A272063 (n + 1)

end

end A270835.P16353503806291227822

/-!
# A270836: Numbers k such that sigma(k-1) - phi(k-1) = (3*k-5)/2.

The programs for A270836, there is no canonical definition to state claims against.
-/

/-! ## A270836.P18133823804173830022

`eq[A001651(n+1), A051612(n+1)]+2`
-/

namespace A270836.P18133823804173830022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A270836.P18133823804173830022

/-! ## A270836.P4444666376870951517

`A110657(∪[A006438(n+2), A000051(n+3)])`
-/

namespace A270836.P4444666376870951517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006438 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A270836.P4444666376870951517

/-! ## A270836.P9205551881058461827

`A006671(A262242(n+2))`
-/

namespace A270836.P9205551881058461827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006671 (A262242 (n + 2)).toNat

end

end A270836.P9205551881058461827

/-!
# A270837: Numbers k such that sigma(k-1) + phi(k-1) = (5*k-7)/2.

The programs for A270837, there is no canonical definition to state claims against.
-/

/-! ## A270837.P14781799592939040019

`2*eq[n, A051709(2*(n+1))]+3`
-/

namespace A270837.P14781799592939040019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A270837.P14781799592939040019

/-! ## A270837.P10293133609079220608

`eq[n/2, A051709(n+2)]+3`
-/

namespace A270837.P10293133609079220608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 3

end

end A270837.P10293133609079220608

/-! ## A270837.P13099799702462722806

`A005408(record[A048675(A239452(n+1))])`
-/

namespace A270837.P13099799702462722806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A239452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270837.P13099799702462722806

/-! ## A270837.P11941667458906380090

`record[A349126(A181821(n+1))+A122111(n+1)]`
-/

namespace A270837.P11941667458906380090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (A181821 (n + 1)).toNat + A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270837.P11941667458906380090

/-! ## A270837.P14362048849505217645

`eq[A047262(n+1), A209187(n+1)]+2`
-/

namespace A270837.P14362048849505217645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A270837.P14362048849505217645

/-!
# A270839: Integers k such that (A003266(k)/A000045(k-1)) is not divisible by k.

The programs for A270839, there is no canonical definition to state claims against.
-/

/-! ## A270839.P1158516443976117945

`A165031(A014137(n))+A032302(n)`
-/

namespace A270839.P1158516443976117945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (A014137 n).toNat + A032302 n

end

end A270839.P1158516443976117945

/-! ## A270839.P858500693316911828

`eq[A000035(A070333(n)), A082023(n)]`
-/

namespace A270839.P858500693316911828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A070333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270839.P858500693316911828

/-! ## A270839.P2758952355900884232

`eq[A001316(A242434(n)), A032741(n)]`
-/

namespace A270839.P2758952355900884232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A242434 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270839.P2758952355900884232

/-! ## A270839.P13260243500942266127

`eq[A032741(n), A247004(A271052(n))]`
-/

namespace A270839.P13260243500942266127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247004 (A271052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270839.P13260243500942266127

/-! ## A270839.P9390627361952664552

`eq[A321721(A008619(n)+1), A321721(n)]`
-/

namespace A270839.P9390627361952664552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 (A008619 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270839.P9390627361952664552

/-!
# A270840: Numbers n such that n^3 + 1 is a 2-pseudoprime (or Sarrus number).

The programs for A270840, there is no canonical definition to state claims against.
-/

/-! ## A270840.P12796665405938631988

`A265653(n+1)-1`
-/

namespace A270840.P12796665405938631988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265653 (n + 1) - 1

end

end A270840.P12796665405938631988

/-! ## A270840.P7188171531256453601

`xor(1, A265653(C(n+1, n)))`
-/

namespace A270840.P7188171531256453601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A265653 (Nat.choose (n + 1) n))

end

end A270840.P7188171531256453601

/-! ## A270840.P10910731237435699569

`xor(1, A265653(1-(n-2*n)))`
-/

namespace A270840.P10910731237435699569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A265653 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A270840.P10910731237435699569

/-! ## A270840.P12801979495563766696

`and(-2, A265653(A000027(n+1)))`
-/

namespace A270840.P12801979495563766696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A265653 (A000027 (n + 1)).toNat)

end

end A270840.P12801979495563766696

/-! ## A270840.P13077609900478830495

`xor(A265653(n+1), A352894(2*n+5))`
-/

namespace A270840.P13077609900478830495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A265653 (n + 1)) (A352894 (2 * n + 5))

end

end A270840.P13077609900478830495

/-!
# A270841: a(1) = 5; a(n) is the sum of |a(m) - m| for m < n.

The programs for A270841, the canonical program `A270841.P9883317146432737060` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270841 has offset 1).

The definition of A270841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270841.P9883317146432737060

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=5, a(1)=4, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270841

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P9883317146432737060.Spec : Prop :=
  ∀ n, P9883317146432737060.a n = A270841 (n + 1)

theorem P9883317146432737060.correct : P9883317146432737060.Spec := by
  intro n
  simp only [A270841, Nat.add_sub_cancel]

end A270841

/-! ## A270841.P1498701482084625012

`2*a(n-1)-n` with `a(0)=5, a(1)=4`
-/

namespace A270841.P1498701482084625012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n a =>
  2 * a (n - 1) - (n : ℤ)

end

end A270841.P1498701482084625012

namespace A270841

/-- `2*a(n-1)-n` -/
def P1498701482084625012.Spec : Prop :=
  ∀ n, P1498701482084625012.a n = A270841 (n + 1)

end A270841

/-! ## A270841.P14008886830946657767

`abs(1-n)+ceil(2^(n-1))+3`
-/

namespace A270841.P14008886830946657767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 3)

end

end A270841.P14008886830946657767

namespace A270841

/-- `abs(1-n)+ceil(2^(n-1))+3` -/
def P14008886830946657767.Spec : Prop :=
  ∀ n, P14008886830946657767.a n = A270841 (n + 1)

end A270841

/-! ## A270841.P4910471819491446401

`abs(A157823(n)-A114637(n+1))`
-/

namespace A270841.P4910471819491446401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157823 n - A114637 (n + 1)|

end

end A270841.P4910471819491446401

namespace A270841

/-- `abs(A157823(n)-A114637(n+1))` -/
def P4910471819491446401.Spec : Prop :=
  ∀ n, P4910471819491446401.a n = A270841 (n + 1)

end A270841

/-! ## A270841.P18258961626199780603

`Δ[A213191(A133263(n+1))+A133263(n+1)]`
-/

namespace A270841.P18258961626199780603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A133263 (n + 1)).toNat + A133263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270841.P18258961626199780603

namespace A270841

/-- `Δ[A213191(A133263(n+1))+A133263(n+1)]` -/
def P18258961626199780603.Spec : Prop :=
  ∀ n, P18258961626199780603.a n = A270841 (n + 1)

end A270841

/-!
# A270842: Number of nonisomorphic edge colorings of the Petersen graph with at most n colors.

The programs for A270842, the canonical program `A270842.P3676441555523045513` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270842 has offset 1).

The definition of A270842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270842.P3676441555523045513

`(n+1)^15/120+5*(n+1)^9/24+5*(n+1)^5/12+11*(n+1)^3/30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270842

/-- `(n+1)^15/120+5*(n+1)^9/24+5*(n+1)^5/12+11*(n+1)^3/30` -/
def P3676441555523045513.Spec : Prop :=
  ∀ n, P3676441555523045513.a n = (A270842 (n + 1) : ℚ)

end A270842

/-!
# A270844: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A270844, there is no canonical definition to state claims against.
-/

/-! ## A270844.P1135984735839699348

`Δ[A272256(n)]`
-/

namespace A270844.P1135984735839699348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270844.P1135984735839699348

/-! ## A270844.P4186292059978783437

`A272256(n+1)-A272256(n)`
-/

namespace A270844.P4186292059978783437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (n + 1) - A272256 n

end

end A270844.P4186292059978783437

/-! ## A270844.P1072960515696998388

`A270688(n)+A008683(A154252(n))`
-/

namespace A270844.P1072960515696998388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270688 n + A008683 (A154252 n).toNat

end

end A270844.P1072960515696998388

/-! ## A270844.P13715819374220112418

`A272255(n)+A008683(A154252(n))`
-/

namespace A270844.P13715819374220112418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272255 n + A008683 (A154252 n).toNat

end

end A270844.P13715819374220112418

/-! ## A270844.P17652327575514161434

`A008683(A154252(n))+Δ[A270685(n)]`
-/

namespace A270844.P17652327575514161434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A154252 n).toNat + (f1 (n + 1) - f1 n)

end

end A270844.P17652327575514161434

/-!
# A270845: Number of nXnXn triangular 0..3 arrays with some element plus some adjacent element totalling 3+1, 3 or 3-1 exactly once.

The programs for A270845, there is no canonical definition to state claims against.
-/

/-! ## A270845.P8789029880358801040

`2*A270503(n+1)`
-/

namespace A270845.P8789029880358801040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270503 (n + 1)

end

end A270845.P8789029880358801040

/-! ## A270845.P16892351717073135794

`record[2*A270503(A324533(n))]`
-/

namespace A270845.P16892351717073135794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270503 (A324533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270845.P16892351717073135794

/-! ## A270845.P11683729605167838189

`A270503(n+1)+record[A270503(A324533(n))]`
-/

namespace A270845.P11683729605167838189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270503 (A324533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270503 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270845.P11683729605167838189

/-! ## A270845.P4501530898384914373

`A270503(A187829(n+1))+A270503(n+1)`
-/

namespace A270845.P4501530898384914373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270503 (A187829 (n + 1)).toNat + A270503 (n + 1)

end

end A270845.P4501530898384914373

/-! ## A270845.P60903385577870334

`A270850(∑[n+3]+1)`
-/

namespace A270845.P60903385577870334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270845.P60903385577870334

/-!
# A270846: Number of nXnXn triangular 0..4 arrays with some element plus some adjacent element totalling 4+1, 4 or 4-1 exactly once.

The programs for A270846, there is no canonical definition to state claims against.
-/

/-! ## A270846.P14249740684769173373

`A270850(A141214(n+1))`
-/

namespace A270846.P14249740684769173373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A141214 (n + 1)).toNat

end

end A270846.P14249740684769173373

/-! ## A270846.P478135907515462558

`A270850(A056000(n)+7)`
-/

namespace A270846.P478135907515462558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A056000 n + 7).toNat

end

end A270846.P478135907515462558

/-! ## A270846.P12901218344121938792

`A270850(eq[2, A152157(n)])`
-/

namespace A270846.P12901218344121938792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270846.P12901218344121938792

/-! ## A270846.P1285426828677197126

`A270850(eq[3, A193592(n)])`
-/

namespace A270846.P1285426828677197126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270846.P1285426828677197126

/-! ## A270846.P9103640406929977406

`A270850(eq[4, A052509(n)])`
-/

namespace A270846.P9103640406929977406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270846.P9103640406929977406

/-!
# A270847: Number of nXnXn triangular 0..5 arrays with some element plus some adjacent element totalling 5+1, 5 or 5-1 exactly once.

The programs for A270847, there is no canonical definition to state claims against.
-/

/-! ## A270847.P18166653935900453031

`A270850(Δ[A264443(n)])`
-/

namespace A270847.P18166653935900453031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (f1 (n + 1) - f1 n).toNat

end

end A270847.P18166653935900453031

/-! ## A270847.P6187059611942869520

`A270850(eq[3, A152157(n)])`
-/

namespace A270847.P6187059611942869520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270847.P6187059611942869520

/-! ## A270847.P17336637181740764158

`A270850(eq[4, A193592(n)])`
-/

namespace A270847.P17336637181740764158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270847.P17336637181740764158

/-! ## A270847.P16861002290962332573

`A270850(Δ[A023545(n+1)])`
-/

namespace A270847.P16861002290962332573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (f1 (n + 1) - f1 n).toNat

end

end A270847.P16861002290962332573

/-! ## A270847.P17809707978479168293

`A270850(eq[5, A194921(n+1)])`
-/

namespace A270847.P17809707978479168293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270847.P17809707978479168293

/-!
# A270848: Number of nXnXn triangular 0..6 arrays with some element plus some adjacent element totalling 6+1, 6 or 6-1 exactly once.

The programs for A270848, there is no canonical definition to state claims against.
-/

/-! ## A270848.P5245766816480706348

`A270850(eq[3, A219347(n)])`
-/

namespace A270848.P5245766816480706348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270848.P5245766816480706348

/-! ## A270848.P9328870263913979634

`A270850(eq[5, A152157(n)])`
-/

namespace A270848.P9328870263913979634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270848.P9328870263913979634

/-! ## A270848.P17215197425831408165

`A270850(eq[5, A193592(n)])`
-/

namespace A270848.P17215197425831408165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270848.P17215197425831408165

/-! ## A270848.P16016543345021396658

`A270850(eq[6, A200370(n+1)])`
-/

namespace A270848.P16016543345021396658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270848.P16016543345021396658

/-! ## A270848.P17129931333744567417

`A270850(eq[8, A185782(n+1)])`
-/

namespace A270848.P17129931333744567417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270848.P17129931333744567417

/-!
# A270849: Number of nXnXn triangular 0..7 arrays with some element plus some adjacent element totalling 7+1, 7 or 7-1 exactly once.

The programs for A270849, there is no canonical definition to state claims against.
-/

/-! ## A270849.P3998261089103472385

`A270850(eq[4, A219347(n)])`
-/

namespace A270849.P3998261089103472385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270849.P3998261089103472385

/-! ## A270849.P5900074571459677541

`A270850(eq[6, A193592(n)])`
-/

namespace A270849.P5900074571459677541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270849.P5900074571459677541

/-! ## A270849.P12542002475677972449

`A270850(eq[7, A200370(n+1)])`
-/

namespace A270849.P12542002475677972449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270849.P12542002475677972449

/-!
# A270851: Number of 2X2X2 triangular 0..n arrays with some element plus some adjacent element totalling n+1, n or n-1 exactly once.

The programs for A270851, the canonical program `A270851.P10013925135396364396` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270851 has offset 1).

The definition of A270851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270851.P10013925135396364396

`∑[∑[6*xor(3, n²)%(n+1)]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270851

/-- `∑[∑[6*xor(3, n²)%(n+1)]]` -/
def P10013925135396364396.Spec : Prop :=
  ∀ n, (P10013925135396364396.a n : ℤ) = A270851 (n + 1)

theorem P10013925135396364396.correct : P10013925135396364396.Spec := by
  intro n
  simp only [A270851, Nat.add_sub_cancel]

end A270851

/-! ## A270851.P14884488711138890718

`3*∑[∑[∑[ogf((2x^2+4x^3+6x^4)/(1+x))]]]`
-/

namespace A270851.P14884488711138890718
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 4, 6] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270851.P14884488711138890718

namespace A270851

/-- `3*∑[∑[∑[ogf((2x^2+4x^3+6x^4)/(1+x))]]]` -/
def P14884488711138890718.Spec : Prop :=
  ∀ n, P14884488711138890718.a n = A270851 (n + 1)

end A270851

/-! ## A270851.P18348184344092699238

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=24, a(4)=66`
-/

namespace A270851.P18348184344092699238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 24, 66] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A270851.P18348184344092699238

namespace A270851

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18348184344092699238.Spec : Prop :=
  ∀ n, P18348184344092699238.a n = A270851 (n + 1)

end A270851

/-! ## A270851.P17352135616624250148

`6*(A032528(n)-A004273(A004273(n)))`
-/

namespace A270851.P17352135616624250148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A032528 n - A004273 (A004273 n).toNat)

end

end A270851.P17352135616624250148

namespace A270851

/-- `6*(A032528(n)-A004273(A004273(n)))` -/
def P17352135616624250148.Spec : Prop :=
  ∀ n, P17352135616624250148.a n = A270851 (n + 1)

end A270851

/-! ## A270851.P9634367269696727213

`A008588(∑[a(n-2)+6])` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A270851.P9634367269696727213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270851.P9634367269696727213

namespace A270851

/-- `A008588(∑[a(n-2)+6])` -/
def P9634367269696727213.Spec : Prop :=
  ∀ n, P9634367269696727213.a n = A270851 (n + 1)

end A270851

/-! ## A270851.P17883232106990922545

`A008588(∑[∑[6-a(n-1)]])` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A270851.P17883232106990922545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270851.P17883232106990922545

namespace A270851

/-- `A008588(∑[∑[6-a(n-1)]])` -/
def P17883232106990922545.Spec : Prop :=
  ∀ n, P17883232106990922545.a n = A270851 (n + 1)

end A270851

/-!
# A270852: Number of 3X3X3 triangular 0..n arrays with some element plus some adjacent element totalling n+1, n or n-1 exactly once.

The programs for A270852, there is no canonical definition to state claims against.
-/

/-! ## A270852.P2471452755575306762

`A270850(∑[n+2]+4)`
-/

namespace A270852.P2471452755575306762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270852.P2471452755575306762

/-! ## A270852.P6986069114181425984

`lcm(2, A270850(A167614(n+1)))`
-/

namespace A270852.P6986069114181425984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270850 (A167614 (n + 1)).toNat)

end

end A270852.P6986069114181425984

/-! ## A270852.P9822992984407118505

`A057427(n)*A270850(A167614(n+1))`
-/

namespace A270852.P9822992984407118505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A270850 (A167614 (n + 1)).toNat

end

end A270852.P9822992984407118505

/-! ## A270852.P845419943587725508

`A060576(n)*A270850(A167614(n+1))`
-/

namespace A270852.P845419943587725508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A270850 (A167614 (n + 1)).toNat

end

end A270852.P845419943587725508

/-! ## A270852.P3415521273192502649

`A178334(n)*A270850(A167614(n+1))`
-/

namespace A270852.P3415521273192502649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A270850 (A167614 (n + 1)).toNat

end

end A270852.P3415521273192502649

/-!
# A270853: Number of 4X4X4 triangular 0..n arrays with some element plus some adjacent element totalling n+1, n or n-1 exactly once.

The programs for A270853, there is no canonical definition to state claims against.
-/

/-! ## A270853.P14987051454341350268

`A270850(A141214(n)+7)`
-/

namespace A270853.P14987051454341350268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A141214 n + 7).toNat

end

end A270853.P14987051454341350268

/-! ## A270853.P4405836911921753177

`A270850(A052905(n)+9)`
-/

namespace A270853.P4405836911921753177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A052905 n + 9).toNat

end

end A270853.P4405836911921753177

/-! ## A270853.P3169382369680238448

`A270850(A055999(n)+10)`
-/

namespace A270853.P3169382369680238448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A055999 n + 10).toNat

end

end A270853.P3169382369680238448

/-! ## A270853.P3636340240540916387

`A270850(eq[5, A066657(n)])`
-/

namespace A270853.P3636340240540916387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270853.P3636340240540916387

/-! ## A270853.P15184336216928905609

`A270850(A167614(n+2)+1)`
-/

namespace A270853.P15184336216928905609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A167614 (n + 2) + 1).toNat

end

end A270853.P15184336216928905609

/-!
# A270854: Number of 5 X 5 X 5 triangular 0..n arrays with some element plus some adjacent element totaling n+1, n or n-1 exactly once.

The programs for A270854, there is no canonical definition to state claims against.
-/

/-! ## A270854.P8620138909959164987

`A270850(A155212(n)+13)`
-/

namespace A270854.P8620138909959164987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A155212 n + 13).toNat

end

end A270854.P8620138909959164987

/-! ## A270854.P16470568048608937766

`A270850(A056000(n)+15)`
-/

namespace A270854.P16470568048608937766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A056000 n + 15).toNat

end

end A270854.P16470568048608937766

/-! ## A270854.P14078802532750763893

`A270850(eq[7, A066657(n)])`
-/

namespace A270854.P14078802532750763893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270854.P14078802532750763893

/-! ## A270854.P18008017414981544389

`A270850(A034856(n+3)+7)`
-/

namespace A270854.P18008017414981544389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A034856 (n + 3) + 7).toNat

end

end A270854.P18008017414981544389

/-! ## A270854.P910769759586605906

`A270850(eq[6, A131818(n+1)])`
-/

namespace A270854.P910769759586605906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270854.P910769759586605906

/-!
# A270855: Number of 6 X 6 X 6 triangular 0..n arrays with some element plus some adjacent element totalling n+1, n or n-1 exactly once.

The programs for A270855, there is no canonical definition to state claims against.
-/

/-! ## A270855.P4016173556043983802

`A270850(A034856(n+4)+8)`
-/

namespace A270855.P4016173556043983802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A034856 (n + 4) + 8).toNat

end

end A270855.P4016173556043983802

/-! ## A270855.P14959763283871430990

`A270850(eq[5, A002262(n)]+1)`
-/

namespace A270855.P14959763283871430990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270855.P14959763283871430990

/-! ## A270855.P16904681012786198090

`A270850(eq[6, A130270(n+1)])`
-/

namespace A270855.P16904681012786198090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270855.P16904681012786198090

/-! ## A270855.P12479231427970544071

`A270850(eq[7, A131818(n+1)])`
-/

namespace A270855.P12479231427970544071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270855.P12479231427970544071

/-! ## A270855.P13723184864702524375

`A270850(Δ[A023545(n+1)]+10)`
-/

namespace A270855.P13723184864702524375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (f1 (n + 1) - f1 n + 10).toNat

end

end A270855.P13723184864702524375

/-!
# A270856: Number of 7 X 7 X 7 triangular 0..n arrays with some element plus some adjacent element totalling n+1, n or n-1 exactly once.

The programs for A270856, there is no canonical definition to state claims against.
-/

/-! ## A270856.P16013146062430151477

`A270850(eq[8, A131818(n+1)])`
-/

namespace A270856.P16013146062430151477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270856.P16013146062430151477

/-!
# A270862: Number of polycubes with n cells, allowing edge connections as well as face connections, distinguishing mirror images.

The programs for A270862, there is no canonical definition to state claims against.
-/

/-! ## A270862.P4506187858486665990

`A008619(round(13^(n-1)))+n`
-/

namespace A270862.P4506187858486665990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((13 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + (n : ℤ)

end

end A270862.P4506187858486665990

/-!
# A270863: Self-composition of the Fibonacci sequence.

The programs for A270863, the canonical program `A270863.P15786675601983479138` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270863 has offset 0).

The definition of A270863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270863.P15786675601983479138

`3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270863

/-- `3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` -/
def P15786675601983479138.Spec : Prop :=
  ∀ n, P15786675601983479138.a n = A270863 n

theorem P15786675601983479138.correct : P15786675601983479138.Spec := by
  intro n
  simp only [A270863]

end A270863

/-! ## A270863.P17692968819082215180

`ogf((x-x^2-x^3)/(1-3x-x^2+3x^3+x^4))`
-/

namespace A270863.P17692968819082215180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -3, -1, 3, 1] n

end

end A270863.P17692968819082215180

namespace A270863

/-- `ogf((x-x^2-x^3)/(1-3x-x^2+3x^3+x^4))` -/
def P17692968819082215180.Spec : Prop :=
  ∀ n, P17692968819082215180.a n = A270863 n

end A270863

/-! ## A270863.P12323788515395165937

`A002264(A179781(n+1)+A027914(n))`
-/

namespace A270863.P12323788515395165937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A179781 (n + 1) + A027914 n).toNat

end

end A270863.P12323788515395165937

namespace A270863

/-- `A002264(A179781(n+1)+A027914(n))` -/
def P12323788515395165937.Spec : Prop :=
  ∀ n, P12323788515395165937.a n = A270863 n

end A270863

/-! ## A270863.P16643371783867326629

`A057427(n)*A286012(A347553(n+3))`
-/

namespace A270863.P16643371783867326629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A286012 (A347553 (n + 3)).toNat

end

end A270863.P16643371783867326629

namespace A270863

/-- `A057427(n)*A286012(A347553(n+3))` -/
def P16643371783867326629.Spec : Prop :=
  ∀ n, P16643371783867326629.a n = A270863 n

end A270863

/-!
# A270867: a(n) = n^3 + 2*n^2 + 4*n + 1.

The programs for A270867, the canonical program `A270867.P787811205969112274` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270867 has offset 0).

The definition of A270867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+2*n²+4*n+1` (program `A270867.P787811205969112274`, by `A270867.P787811205969112274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270867.P787811205969112274

`n^3+2*n²+4*n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270867

/-- `n^3+2*n²+4*n+1` -/
def P787811205969112274.Spec : Prop :=
  ∀ n, (P787811205969112274.a n : ℤ) = A270867 n

theorem P787811205969112274.correct : P787811205969112274.Spec := by
  intro n
  simp only [A270867]

end A270867

/-! ## A270867.P917904166831731805

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=6, a(2)=10`
-/

namespace A270867.P917904166831731805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 10] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270867.P917904166831731805

namespace A270867

/-- `∑[∑[a(n-1)+6]]` -/
def P917904166831731805.Spec : Prop :=
  ∀ n, (P917904166831731805.a n : ℤ) = A270867 n

end A270867

/-! ## A270867.P4695399437522167905

`∑[∑[ogf((1+4x-x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A270867.P4695399437522167905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270867.P4695399437522167905

namespace A270867

/-- `∑[∑[ogf((1+4x-x^2+2x^3)/(1-2x+x^2))]]` -/
def P4695399437522167905.Spec : Prop :=
  ∀ n, P4695399437522167905.a n = A270867 n

end A270867

/-! ## A270867.P15699639307038798508

`abs((n+1)^3-lcm(n, n-1))`
-/

namespace A270867.P15699639307038798508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 3 : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)|

end

end A270867.P15699639307038798508

namespace A270867

/-- `abs((n+1)^3-lcm(n, n-1))` -/
def P15699639307038798508.Spec : Prop :=
  ∀ n, P15699639307038798508.a n = A270867 n

end A270867

/-! ## A270867.P6222559213372080934

`abs(1-A221574(n+1))`
-/

namespace A270867.P6222559213372080934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A221574 (n + 1)|

end

end A270867.P6222559213372080934

namespace A270867

/-- `abs(1-A221574(n+1))` -/
def P6222559213372080934.Spec : Prop :=
  ∀ n, P6222559213372080934.a n = A270867 n

end A270867

/-! ## A270867.P2431356953346867615

`abs(A056220(n+1)+n^3)`
-/

namespace A270867.P2431356953346867615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 (n + 1) + (n ^ 3 : ℤ)|

end

end A270867.P2431356953346867615

namespace A270867

/-- `abs(A056220(n+1)+n^3)` -/
def P2431356953346867615.Spec : Prop :=
  ∀ n, P2431356953346867615.a n = A270867 n

end A270867

/-! ## A270867.P15105233599367703198

`∑[A141631(n+1)-abs(1-n)]`
-/

namespace A270867.P15105233599367703198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141631 (n + 1) - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270867.P15105233599367703198

namespace A270867

/-- `∑[A141631(n+1)-abs(1-n)]` -/
def P15105233599367703198.Spec : Prop :=
  ∀ n, P15105233599367703198.a n = A270867 n

end A270867

/-! ## A270867.P3456777140699127336

`abs(A000578(n+1)+n-n²)`
-/

namespace A270867.P3456777140699127336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 (n + 1) + (n : ℤ) - (n ^ 2 : ℤ)|

end

end A270867.P3456777140699127336

namespace A270867

/-- `abs(A000578(n+1)+n-n²)` -/
def P3456777140699127336.Spec : Prop :=
  ∀ n, P3456777140699127336.a n = A270867 n

end A270867

/-! ## A270867.P139855801523253929

`floor(A005843(n)+(n+1)/Δ[atan(n)])`
-/

namespace A270867.P139855801523253929
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 n : ℝ) + (n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A270867.P139855801523253929

namespace A270867

/-- `floor(A005843(n)+(n+1)/Δ[atan(n)])` -/
def P139855801523253929.Spec : Prop :=
  ∀ n, P139855801523253929.a n = A270867 n

end A270867

/-! ## A270867.P12540662854443618138

`xor(A176040(n), A221574(n+1))`
-/

namespace A270867.P12540662854443618138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176040 n) (A221574 (n + 1))

end

end A270867.P12540662854443618138

namespace A270867

/-- `xor(A176040(n), A221574(n+1))` -/
def P12540662854443618138.Spec : Prop :=
  ∀ n, P12540662854443618138.a n = A270867 n

end A270867

/-! ## A270867.P3768805300138298094

`abs(A002414(n+1)-A000326(n))`
-/

namespace A270867.P3768805300138298094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002414 (n + 1) - A000326 n|

end

end A270867.P3768805300138298094

namespace A270867

/-- `abs(A002414(n+1)-A000326(n))` -/
def P3768805300138298094.Spec : Prop :=
  ∀ n, P3768805300138298094.a n = A270867 n

end A270867

/-! ## A270867.P7669670415582210253

`abs(A000290(n)-(A000578(n+1)+n))`
-/

namespace A270867.P7669670415582210253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - (A000578 (n + 1) + (n : ℤ))|

end

end A270867.P7669670415582210253

namespace A270867

/-- `abs(A000290(n)-(A000578(n+1)+n))` -/
def P7669670415582210253.Spec : Prop :=
  ∀ n, P7669670415582210253.a n = A270867 n

end A270867

/-! ## A270867.P16615897958237876829

`(A304159(n+1)+A054000(n+1))/2`
-/

namespace A270867.P16615897958237876829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304159 (n + 1) + A054000 (n + 1) : ℚ) / 2

end

end A270867.P16615897958237876829

namespace A270867

/-- `(A304159(n+1)+A054000(n+1))/2` -/
def P16615897958237876829.Spec : Prop :=
  ∀ n, P16615897958237876829.a n = (A270867 n : ℚ)

end A270867

/-! ## A270867.P233851418921473680

`(A221574(n+1)-1)%A290631(n+1)`
-/

namespace A270867.P233851418921473680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221574 (n + 1) - 1) (A290631 (n + 1))

end

end A270867.P233851418921473680

namespace A270867

/-- `(A221574(n+1)-1)%A290631(n+1)` -/
def P233851418921473680.Spec : Prop :=
  ∀ n, P233851418921473680.a n = A270867 n

end A270867

/-! ## A270867.P11598267829609340152

`xor(A221574(n+1), A265283(∑[(-1)^n]))`
-/

namespace A270867.P11598267829609340152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A221574 (n + 1)) (A265283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A270867.P11598267829609340152

namespace A270867

/-- `xor(A221574(n+1), A265283(∑[(-1)^n]))` -/
def P11598267829609340152.Spec : Prop :=
  ∀ n, P11598267829609340152.a n = A270867 n

end A270867

/-! ## A270867.P16766211427407901232

`Δ[∑[n]²-A007290(n)]`
-/

namespace A270867.P16766211427407901232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270867.P16766211427407901232

namespace A270867

/-- `Δ[∑[n]²-A007290(n)]` -/
def P16766211427407901232.Spec : Prop :=
  ∀ n, P16766211427407901232.a n = A270867 n

end A270867

/-! ## A270867.P7728391613146646496

`abs(A062158(n+1)+Δ[n²])`
-/

namespace A270867.P7728391613146646496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062158 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A270867.P7728391613146646496

namespace A270867

/-- `abs(A062158(n+1)+Δ[n²])` -/
def P7728391613146646496.Spec : Prop :=
  ∀ n, P7728391613146646496.a n = A270867 n

end A270867

/-! ## A270867.P7337523569468102079

`abs(∑[A000567(n+1)-n]+n-n²)`
-/

namespace A270867.P7337523569468102079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (n ^ 2 : ℤ)|

end

end A270867.P7337523569468102079

namespace A270867

/-- `abs(∑[A000567(n+1)-n]+n-n²)` -/
def P7337523569468102079.Spec : Prop :=
  ∀ n, P7337523569468102079.a n = A270867 n

end A270867

/-! ## A270867.P4341902950089951746

`∑[A003215(n)-A097141(2*n)]`
-/

namespace A270867.P4341902950089951746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A097141 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270867.P4341902950089951746

namespace A270867

/-- `∑[A003215(n)-A097141(2*n)]` -/
def P4341902950089951746.Spec : Prop :=
  ∀ n, P4341902950089951746.a n = A270867 n

end A270867

/-! ## A270867.P2100306400570651452

`∑[A295089(n)%A295053(2*n+1)]`
-/

namespace A270867.P2100306400570651452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295089 n) (A295053 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270867.P2100306400570651452

namespace A270867

/-- `∑[A295089(n)%A295053(2*n+1)]` -/
def P2100306400570651452.Spec : Prop :=
  ∀ n, P2100306400570651452.a n = A270867 n

end A270867

/-!
# A270868: a(n) = n^4 + 3*n^3 + 8*n^2 + 9*n + 2.

The programs for A270868, the canonical program `A270868.P820105942268167776` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270868 has offset 0).

The definition of A270868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+3*n^3+8*n²+9*n+2` (program `A270868.P820105942268167776`, by `A270868.P820105942268167776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270868.P820105942268167776

`n^4+3*n^3+8*n²+9*n+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270868

/-- `n^4+3*n^3+8*n²+9*n+2` -/
def P820105942268167776.Spec : Prop :=
  ∀ n, (P820105942268167776.a n : ℤ) = A270868 n

theorem P820105942268167776.correct : P820105942268167776.Spec := by
  intro n
  simp only [A270868]

end A270868

/-!
# A270869: a(n) = n^5 + 4*n^4 + 13*n^3 + 23*n^2 + 25*n + 3.

The programs for A270869, the canonical program `A270869.P11944496650098442854` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270869 has offset 0).

The definition of A270869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+4*n^4+13*n^3+23*n²+25*n+3` (program `A270869.P11944496650098442854`, by `A270869.P11944496650098442854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270869.P11944496650098442854

`n^5+4*n^4+13*n^3+23*n²+25*n+3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270869

/-- `n^5+4*n^4+13*n^3+23*n²+25*n+3` -/
def P11944496650098442854.Spec : Prop :=
  ∀ n, (P11944496650098442854.a n : ℤ) = A270869 n

theorem P11944496650098442854.correct : P11944496650098442854.Spec := by
  intro n
  simp only [A270869]

end A270869

/-!
# A270870: a(n) = n^6 + 5*n^5 + 19*n^4 + 44*n^3 + 72*n^2 + 69*n + 5.

The programs for A270870, the canonical program `A270870.P2339960067447307307` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270870 has offset 0).

The definition of A270870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+5*n^5+19*n^4+44*n^3+72*n²+69*n+5` (program `A270870.P2339960067447307307`, by `A270870.P2339960067447307307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270870.P2339960067447307307

`n^6+5*n^5+19*n^4+44*n^3+72*n²+69*n+5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270870

/-- `n^6+5*n^5+19*n^4+44*n^3+72*n²+69*n+5` -/
def P2339960067447307307.Spec : Prop :=
  ∀ n, (P2339960067447307307.a n : ℤ) = A270870 n

theorem P2339960067447307307.correct : P2339960067447307307.Spec := by
  intro n
  simp only [A270870]

end A270870

/-!
# A270875: Number of subsets of {1,...,n} with sum of elements equal to least common multiple of elements and at least two elements.

The programs for A270875, there is no canonical definition to state claims against.
-/

/-! ## A270875.P11077432313751470835

`A270970(n+1)-(n+1)`
-/

namespace A270875.P11077432313751470835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270970 (n + 1) - (n + 1 : ℤ)

end

end A270875.P11077432313751470835

/-! ## A270875.P636641558233163706

`A270970(Δ[n²]-n)-1-n`
-/

namespace A270875.P636641558233163706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A270875.P636641558233163706

/-! ## A270875.P14332145310084750196

`A023443(A270970(n+1)-n)`
-/

namespace A270875.P14332145310084750196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A270970 (n + 1) - (n : ℤ)).toNat

end

end A270875.P14332145310084750196

/-! ## A270875.P14527236541923869538

`abs(A270970(n+1)+A001478(n+1))`
-/

namespace A270875.P14527236541923869538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A270970 (n + 1) + A001478 (n + 1)|

end

end A270875.P14527236541923869538

/-! ## A270875.P160144240797276558

`(A270970(n+1)+A006002(n))%A000124(n)`
-/

namespace A270875.P160144240797276558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270970 (n + 1) + A006002 n) (A000124 n)

end

end A270875.P160144240797276558

/-! ## A270875.P8136429130720121707

`(A270970(n+1)+A001478(n+1))*A178334(n)`
-/

namespace A270875.P8136429130720121707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270970 (n + 1) + A001478 (n + 1)) * A178334 n

end

end A270875.P8136429130720121707

/-! ## A270875.P2858718158141097641

`(A276187(n+1)+A270970(n+1))%A187106(n+1)`
-/

namespace A270875.P2858718158141097641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276187 (n + 1) + A270970 (n + 1)) (A187106 (n + 1))

end

end A270875.P2858718158141097641

/-!
# A270877: Numbers surviving a decaying sieve.

The programs for A270877, there is no canonical definition to state claims against.
-/

/-! ## A270877.P14166907051843998338

`eq[A051904(n+1), A296150(A342332(n))]`
-/

namespace A270877.P14166907051843998338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A342332 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270877.P14166907051843998338

/-! ## A270877.P18114431763714602764

`lt[A193798(n), A002322(A231451(n+1))]`
-/

namespace A270877.P18114431763714602764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A231451 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270877.P18114431763714602764

/-! ## A270877.P17697676893446715992

`lt[A087242(A030725(n+1)), A123556(2*(n+2))]`
-/

namespace A270877.P17697676893446715992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087242 (A030725 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270877.P17697676893446715992

/-! ## A270877.P6069898762371259442

`lt[A105535(n+4), A225597(A134413(2*n+3))]`
-/

namespace A270877.P6069898762371259442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (A134413 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270877.P6069898762371259442

/-!
# A270878: Record differences between record prime gaps, that is, terms of A053695 that set a record.

The programs for A270878, there is no canonical definition to state claims against.
-/

/-! ## A270878.P877680870053694848

`record[A053695(n+1)]`
-/

namespace A270878.P877680870053694848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270878.P877680870053694848

/-! ## A270878.P10627590057803106407

`record[Δ[A005250(n+1)]]`
-/

namespace A270878.P10627590057803106407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270878.P10627590057803106407

/-! ## A270878.P6766845551996339398

`record[Δ[record[A014320(n+1)]]]`
-/

namespace A270878.P6766845551996339398
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270878.P6766845551996339398

/-! ## A270878.P15050035339703360469

`record[Δ[A131055(A008996(n+1))]]`
-/

namespace A270878.P15050035339703360469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A008996 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270878.P15050035339703360469

/-!
# A270879: Expansion of (x+4*x^4)/(1-x-x^2-x^4-2*x^5-x^8).

The programs for A270879, the canonical program `A270879.P4929789387078002573` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270879 has offset 0).

The definition of A270879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^4)/(1-x-x^2-x^4-2x^5-x^8))` (program `A270879.P4929789387078002573`, by `A270879.P4929789387078002573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270879.P4929789387078002573

`ogf((x+4x^4)/(1-x-x^2-x^4-2x^5-x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270879

/-- `ogf((x+4x^4)/(1-x-x^2-x^4-2x^5-x^8))` -/
def P4929789387078002573.Spec : Prop :=
  ∀ n, P4929789387078002573.a n = A270879 n

theorem P4929789387078002573.correct : P4929789387078002573.Spec := by
  intro n
  simp only [A270879]

end A270879

/-!
# A270880: Triangle read by rows: T(n,m) is the number of direct-sum decompositions of a finite vector space of dimension n with m blocks over GF(2).

The programs for A270880, there is no canonical definition to state claims against.
-/

/-! ## A270880.P15575293664167582431

`A303535(n)/A233543(n)`
-/

namespace A270880.P15575293664167582431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303535 n : ℚ) / (A233543 n : ℚ)

end

end A270880.P15575293664167582431

/-! ## A270880.P6935084831938405931

`A303535(n)/A002262(n)!`
-/

namespace A270880.P6935084831938405931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303535 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A270880.P6935084831938405931

/-! ## A270880.P5892969178590134864

`A303535(n)/A163351(n)!`
-/

namespace A270880.P5892969178590134864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303535 n : ℚ) / (Nat.factorial (A163351 n).toNat : ℚ)

end

end A270880.P5892969178590134864

/-! ## A270880.P9972544278257428741

`A303535(n)/A166352(n)!`
-/

namespace A270880.P9972544278257428741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303535 n : ℚ) / (Nat.factorial (A166352 n).toNat : ℚ)

end

end A270880.P9972544278257428741

/-! ## A270880.P2434697145579325104

`A303535(n)/A025668(n+1)!`
-/

namespace A270880.P2434697145579325104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303535 n : ℚ) / (Nat.factorial (A025668 (n + 1)).toNat : ℚ)

end

end A270880.P2434697145579325104

/-!
# A270881: Row sums of triangle A270880. Number of direct-sum decompositions of a finite vector space of n dimensions over GF(2).

The programs for A270881, there is no canonical definition to state claims against.
-/

/-! ## A270881.P7177750358404101468

`A298561(∑[a(n-1)+1])` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A270881.P7177750358404101468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270881.P7177750358404101468

/-! ## A270881.P14074643659822483779

`A298561(or(round((n+3)*(n+6)/30), ∑[n]))`
-/

namespace A270881.P14074643659822483779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298561 (Int.lor (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 6 : ℚ) / 30))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A270881.P14074643659822483779

/-! ## A270881.P8829279867699205841

`A298561(A028310(∑[n]))`
-/

namespace A270881.P8829279867699205841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298561 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270881.P8829279867699205841

/-! ## A270881.P17519561773061775483

`A298561(∑[A222210(n)])`
-/

namespace A270881.P17519561773061775483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270881.P17519561773061775483

/-!
# A270882: Triangle read by rows: D*(n,m) is the number of direct-sum decompositions of a finite vector space of dimension n with m blocks over GF(2) with a block containing any given nonzero vector.

The programs for A270882, there is no canonical definition to state claims against.
-/

/-! ## A270882.P10606261628826042053

`A050142(A340556(n))*A340556(n)`
-/

namespace A270882.P10606261628826042053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050142 (A340556 n).toNat * A340556 n

end

end A270882.P10606261628826042053

/-! ## A270882.P149619199403021053

`A187213(A287315(n))`
-/

namespace A270882.P149619199403021053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 (A287315 n).toNat

end

end A270882.P149619199403021053

/-! ## A270882.P13871483352747370626

`A282865(A256311(n))`
-/

namespace A270882.P13871483352747370626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282865 (A256311 n).toNat

end

end A270882.P13871483352747370626

/-! ## A270882.P15569868518333694210

`A059442(A135313(n))-2`
-/

namespace A270882.P15569868518333694210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059442 (A135313 n).toNat - 2

end

end A270882.P15569868518333694210

/-! ## A270882.P2855663531461181765

`A340556(n)*A351014(A107357(n+1))`
-/

namespace A270882.P2855663531461181765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 n * A351014 (A107357 (n + 1)).toNat

end

end A270882.P2855663531461181765

/-!
# A270883: Row sums of triangle A270882. Number of direct-sum decompositions of an n-dimensional vector space over GF(2) with any given nonzero vector in a block.

The programs for A270883, there is no canonical definition to state claims against.
-/

/-! ## A270883.P2599350195200487873

`A000010(n*a(n-1)*a(n-1)+2)+1` with `a(0)=1, a(1)=1`
-/

namespace A270883.P2599350195200487873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000010 ((n : ℤ) * a (n - 1) * a (n - 1) + 2).toNat + 1

end

end A270883.P2599350195200487873

/-!
# A270885: Irregular triangle read by rows, listing the digits 1,0,-1 in the representation of n > 0 in the binary balanced system (cf. comment in A268411).

The programs for A270885, there is no canonical definition to state claims against.
-/

/-! ## A270885.P7090666371687216531

`Δ[A284683(A026741(n)+A006094(n+1))]`
-/

namespace A270885.P7090666371687216531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A026741 n + A006094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270885.P7090666371687216531

/-! ## A270885.P8118129807623775754

`Δ[A098725(n*A124506(n+1))]`
-/

namespace A270885.P8118129807623775754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 ((n : ℤ) * A124506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270885.P8118129807623775754

/-! ## A270885.P13170176679716449238

`Δ[and(A118245(2*n+5), A118249(n))]`
-/

namespace A270885.P13170176679716449238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118245 (2 * n + 5)) (A118249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270885.P13170176679716449238

/-! ## A270885.P5833506461819078899

`Δ[A285565(A000204(n+1))]`
-/

namespace A270885.P5833506461819078899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285565 (A000204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270885.P5833506461819078899

/-! ## A270885.P5141288708098744759

`Δ[A127015(A127018(n+1))]`
-/

namespace A270885.P5141288708098744759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127015 (A127018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270885.P5141288708098744759

/-!
# A270886: Numbers written in binary balanced system (A270885) that have exactly one zero.

The programs for A270886, there is no canonical definition to state claims against.
-/

/-! ## A270886.P15957945628917820519

`eq[A000034(n), A227185(n)]`
-/

namespace A270886.P15957945628917820519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270886.P15957945628917820519

/-! ## A270886.P15194933786073071832

`eq[A084642(n), A227185(n)]`
-/

namespace A270886.P15194933786073071832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270886.P15194933786073071832

/-! ## A270886.P1998127733446670425

`eq[A277561(n), A364567(n)]`
-/

namespace A270886.P1998127733446670425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270886.P1998127733446670425

/-! ## A270886.P2894865903005640826

`eq[1, A037861(A292272(n))+1]`
-/

namespace A270886.P2894865903005640826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A292272 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270886.P2894865903005640826

/-! ## A270886.P361711201240951455

`eq[A007456(n+1), A088748(n)]`
-/

namespace A270886.P361711201240951455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270886.P361711201240951455

/-!
# A270887: Numbers written in binary balanced system (A270885) that have exactly two zeros.

The programs for A270887, there is no canonical definition to state claims against.
-/

/-! ## A270887.P5091220833372323755

`eq[2, A092339(2*n)]`
-/

namespace A270887.P5091220833372323755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P5091220833372323755

/-! ## A270887.P17569694187227155890

`eq[3, A227185(2*n)]`
-/

namespace A270887.P17569694187227155890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P17569694187227155890

/-! ## A270887.P16767348459668930569

`eq[2, A023416(xor(n, 2*n))]`
-/

namespace A270887.P16767348459668930569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P16767348459668930569

/-! ## A270887.P6721813079148020305

`eq[2, A080791(xor(n, 2*n))]`
-/

namespace A270887.P6721813079148020305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P6721813079148020305

/-! ## A270887.P16581388170192982286

`eq[2, A037861(and(2*n, -n))]`
-/

namespace A270887.P16581388170192982286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P16581388170192982286

/-! ## A270887.P9376093922989111696

`eq[2, A023416(A048724(n))]`
-/

namespace A270887.P9376093922989111696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P9376093922989111696

/-! ## A270887.P4235787276732117804

`eq[2, A037861(A213064(n))]`
-/

namespace A270887.P4235787276732117804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P4235787276732117804

/-! ## A270887.P14812858694130972790

`eq[3, A023416(A048726(n))]`
-/

namespace A270887.P14812858694130972790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P14812858694130972790

/-! ## A270887.P13889922901064280771

`eq[3, A046819(A265716(n))]`
-/

namespace A270887.P13889922901064280771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046819 (A265716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270887.P13889922901064280771

/-! ## A270887.P4478544287626678971

`eq[A277561(n)², A053644(n)]`
-/

namespace A270887.P4478544287626678971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270887.P4478544287626678971

/-!
# A270888: Numbers written in binary balanced system (A270885) have exactly three zeros.

The programs for A270888, there is no canonical definition to state claims against.
-/

/-! ## A270888.P3596079403012054297

`eq[3, A092339(2*n)]`
-/

namespace A270888.P3596079403012054297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P3596079403012054297

/-! ## A270888.P14819801762350221928

`eq[4, A227185(2*n)]`
-/

namespace A270888.P14819801762350221928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P14819801762350221928

/-! ## A270888.P15016303895577585064

`eq[3, A227185(n)-n%2]`
-/

namespace A270888.P15016303895577585064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P15016303895577585064

/-! ## A270888.P5840558768021472540

`eq[3, A023416(xor(n, 2*n))]`
-/

namespace A270888.P5840558768021472540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P5840558768021472540

/-! ## A270888.P9302898522495000513

`eq[3, A080791(xor(n, 2*n))]`
-/

namespace A270888.P9302898522495000513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P9302898522495000513

/-! ## A270888.P5981027723218742092

`eq[3, A037861(and(2*n, -n))]`
-/

namespace A270888.P5981027723218742092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P5981027723218742092

/-! ## A270888.P6738810674811444996

`eq[2, A037861(A292272(n))]`
-/

namespace A270888.P6738810674811444996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P6738810674811444996

/-! ## A270888.P7397881569241866186

`eq[3, A023416(A048724(n))]`
-/

namespace A270888.P7397881569241866186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P7397881569241866186

/-! ## A270888.P13880373886979261813

`eq[4, A023416(A048726(n))]`
-/

namespace A270888.P13880373886979261813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270888.P13880373886979261813

/-! ## A270888.P18088377897028591457

`eq[A092339(n), A174296(n)]`
-/

namespace A270888.P18088377897028591457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270888.P18088377897028591457

/-!
# A270889: Integers n such that the circular graph C_n has a square size deficiency.

The programs for A270889, the canonical program `A270889.P5588106501415036233` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270889 has offset 0).

The definition of A270889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270889.P5588106501415036233

`6*a(n-1)-a(n-2)-6` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A270889

/-- `6*a(n-1)-a(n-2)-6` -/
def P5588106501415036233.Spec : Prop :=
  ∀ n, P5588106501415036233.a n = A270889 n

theorem P5588106501415036233.correct : P5588106501415036233.Spec := by
  intro n
  simp only [A270889]

end A270889

/-! ## A270889.P3147555861705046914

`3*A055997(n+1)`
-/

namespace A270889.P3147555861705046914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055997 (n + 1)

end

end A270889.P3147555861705046914

namespace A270889

/-- `3*A055997(n+1)` -/
def P3147555861705046914.Spec : Prop :=
  ∀ n, P3147555861705046914.a n = A270889 n

end A270889

/-! ## A270889.P3753867396455567797

`3*cosh(log((sqrt(2)+1)^n))²`
-/

namespace A270889.P3753867396455567797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2

end

end A270889.P3753867396455567797

namespace A270889

/-- `3*cosh(log((sqrt(2)+1)^n))²` -/
def P3753867396455567797.Spec : Prop :=
  ∀ n, P3753867396455567797.a n = (A270889 n : ℝ)

end A270889

/-! ## A270889.P17273500425918609183

`∑[ogf((1-3x+4x^2)/(1-6x+x^2))]+2`
-/

namespace A270889.P17273500425918609183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A270889.P17273500425918609183

namespace A270889

/-- `∑[ogf((1-3x+4x^2)/(1-6x+x^2))]+2` -/
def P17273500425918609183.Spec : Prop :=
  ∀ n, P17273500425918609183.a n = A270889 n

end A270889

/-! ## A270889.P2664704323726516391

`3*∑[ogf((1-5x+2x^2)/(1-6x+x^2))]`
-/

namespace A270889.P2664704323726516391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 2] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270889.P2664704323726516391

namespace A270889

/-- `3*∑[ogf((1-5x+2x^2)/(1-6x+x^2))]` -/
def P2664704323726516391.Spec : Prop :=
  ∀ n, P2664704323726516391.a n = A270889 n

end A270889

/-! ## A270889.P11039953249912996008

`or(2, ∑[ogf((1-3x+4x^2)/(1-6x+x^2))])`
-/

namespace A270889.P11039953249912996008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270889.P11039953249912996008

namespace A270889

/-- `or(2, ∑[ogf((1-3x+4x^2)/(1-6x+x^2))])` -/
def P11039953249912996008.Spec : Prop :=
  ∀ n, P11039953249912996008.a n = A270889 n

end A270889

/-! ## A270889.P3951394672119604063

`xor(2, ∑[ogf((1-3x+4x^2)/(1-6x+x^2))])`
-/

namespace A270889.P3951394672119604063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270889.P3951394672119604063

namespace A270889

/-- `xor(2, ∑[ogf((1-3x+4x^2)/(1-6x+x^2))])` -/
def P3951394672119604063.Spec : Prop :=
  ∀ n, P3951394672119604063.a n = A270889 n

end A270889

/-! ## A270889.P15328737251002199212

`3*(2+(3-2*sqrt(2))^n+(3+2*sqrt(2))^n)/4`
-/

namespace A270889.P15328737251002199212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((2 + (3 - 2 * Real.sqrt (2 : ℝ)) ^ n + (3 + 2 * Real.sqrt (2 : ℝ)) ^ n) / 4)

end

end A270889.P15328737251002199212

namespace A270889

/-- `3*(2+(3-2*sqrt(2))^n+(3+2*sqrt(2))^n)/4` -/
def P15328737251002199212.Spec : Prop :=
  ∀ n, P15328737251002199212.a n = (A270889 n : ℝ)

end A270889

/-! ## A270889.P11952740995113401964

`A072221(n)+2`
-/

namespace A270889.P11952740995113401964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n + 2

end

end A270889.P11952740995113401964

namespace A270889

/-- `A072221(n)+2` -/
def P11952740995113401964.Spec : Prop :=
  ∀ n, P11952740995113401964.a n = A270889 n

end A270889

/-! ## A270889.P1669499736296005813

`A033539(Δ[n²])+2`
-/

namespace A270889.P1669499736296005813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A270889.P1669499736296005813

namespace A270889

/-- `A033539(Δ[n²])+2` -/
def P1669499736296005813.Spec : Prop :=
  ∀ n, P1669499736296005813.a n = A270889 n

end A270889

/-! ## A270889.P10599464360990171882

`(A106329(n+1)+3)/2`
-/

namespace A270889.P10599464360990171882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106329 (n + 1) + 3 : ℚ) / 2

end

end A270889.P10599464360990171882

namespace A270889

/-- `(A106329(n+1)+3)/2` -/
def P10599464360990171882.Spec : Prop :=
  ∀ n, P10599464360990171882.a n = (A270889 n : ℚ)

end A270889

/-! ## A270889.P17304107926685680215

`3*A099938(n+1)/2`
-/

namespace A270889.P17304107926685680215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A099938 (n + 1) : ℚ) / 2

end

end A270889.P17304107926685680215

namespace A270889

/-- `3*A099938(n+1)/2` -/
def P17304107926685680215.Spec : Prop :=
  ∀ n, P17304107926685680215.a n = (A270889 n : ℚ)

end A270889

/-! ## A270889.P15008290587038784542

`A081555(n)-A001108(n)`
-/

namespace A270889.P15008290587038784542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081555 n - A001108 n

end

end A270889.P15008290587038784542

namespace A270889

/-- `A081555(n)-A001108(n)` -/
def P15008290587038784542.Spec : Prop :=
  ∀ n, P15008290587038784542.a n = A270889 n

end A270889

/-! ## A270889.P15795752621065920699

`A001108(n)+A001541(n)+2`
-/

namespace A270889.P15795752621065920699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (A001541 n + 2)

end

end A270889.P15795752621065920699

namespace A270889

/-- `A001108(n)+A001541(n)+2` -/
def P15795752621065920699.Spec : Prop :=
  ∀ n, P15795752621065920699.a n = A270889 n

end A270889

/-! ## A270889.P8348193692710806573

`A051927(2*n)-A001108(n)`
-/

namespace A270889.P8348193692710806573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (2 * n) - A001108 n

end

end A270889.P8348193692710806573

namespace A270889

/-- `A051927(2*n)-A001108(n)` -/
def P8348193692710806573.Spec : Prop :=
  ∀ n, P8348193692710806573.a n = A270889 n

end A270889

/-! ## A270889.P5394820620200832350

`A081555(n)-A097076(2*n)`
-/

namespace A270889.P5394820620200832350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081555 n - A097076 (2 * n)

end

end A270889.P5394820620200832350

namespace A270889

/-- `A081555(n)-A097076(2*n)` -/
def P5394820620200832350.Spec : Prop :=
  ∀ n, P5394820620200832350.a n = A270889 n

end A270889

/-! ## A270889.P12246628256927722117

`A001108(n)+Δ[A182435(n)]+2`
-/

namespace A270889.P12246628256927722117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (f1 (n + 1) - f1 n + 2)

end

end A270889.P12246628256927722117

namespace A270889

/-- `A001108(n)+Δ[A182435(n)]+2` -/
def P12246628256927722117.Spec : Prop :=
  ∀ n, P12246628256927722117.a n = A270889 n

end A270889

/-! ## A270889.P10930173355419655420

`Δ[A001109(n)]+2-A182435(n)`
-/

namespace A270889.P10930173355419655420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A182435 n)

end

end A270889.P10930173355419655420

namespace A270889

/-- `Δ[A001109(n)]+2-A182435(n)` -/
def P10930173355419655420.Spec : Prop :=
  ∀ n, P10930173355419655420.a n = A270889 n

end A270889

/-! ## A270889.P11830455583796298274

`record[A077985(n)+2]-A182435(n)`
-/

namespace A270889.P11830455583796298274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A182435 n

end

end A270889.P11830455583796298274

namespace A270889

/-- `record[A077985(n)+2]-A182435(n)` -/
def P11830455583796298274.Spec : Prop :=
  ∀ n, P11830455583796298274.a n = A270889 n

end A270889

/-! ## A270889.P6944815067048302134

`A051927(2*n)-A097076(2*n)`
-/

namespace A270889.P6944815067048302134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (2 * n) - A097076 (2 * n)

end

end A270889.P6944815067048302134

namespace A270889

/-- `A051927(2*n)-A097076(2*n)` -/
def P6944815067048302134.Spec : Prop :=
  ∀ n, P6944815067048302134.a n = A270889 n

end A270889

/-!
# A270890: Numbers k such that (8*10^k + 49)/3 is prime.

The programs for A270890, there is no canonical definition to state claims against.
-/

/-! ## A270890.P9156955689203696923

`eq[A311147(n), A311176(n)]`
-/

namespace A270890.P9156955689203696923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270890.P9156955689203696923

/-! ## A270890.P5015450372488962535

`lt[A036762(A352549(n+1)), 3*n+2]`
-/

namespace A270890.P5015450372488962535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (A352549 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270890.P5015450372488962535

/-! ## A270890.P18004200011970699977

`eq[A119326(3*n+4), A172528(A279967(n+1))]`
-/

namespace A270890.P18004200011970699977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172528 (A279967 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270890.P18004200011970699977

/-! ## A270890.P16555761444961894468

`lt[A214498(3*(n+1)), A004523(A051624(n+4))]`
-/

namespace A270890.P16555761444961894468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214498 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A051624 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270890.P16555761444961894468

/-! ## A270890.P13012458467210604702

`lt[A124056(A124086(n+3)), 10]`
-/

namespace A270890.P13012458467210604702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124056 (A124086 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270890.P13012458467210604702

/-!
# A270891: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A270891, there is no canonical definition to state claims against.
-/

/-! ## A270891.P4384325407068397434

`A270894(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270891.P4384325407068397434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270894 (n - 1) + a (n - 1)

end

end A270891.P4384325407068397434

/-! ## A270891.P10392438940423047382

`A270894(n-1)-ceil(-a(A028310(n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A270891.P10392438940423047382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270894 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A270891.P10392438940423047382

/-! ## A270891.P12484298093037245486

`∑[A270894(n)]+1-A270894(n)`
-/

namespace A270891.P12484298093037245486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270894 n)

end

end A270891.P12484298093037245486

/-! ## A270891.P971186017130117204

`Δ[A270893(n)]-A270894(n)`
-/

namespace A270891.P971186017130117204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270894 n

end

end A270891.P971186017130117204

/-! ## A270891.P7574335950637537962

`A270893(n+1)-(A270894(n)+A270893(n))`
-/

namespace A270891.P7574335950637537962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270893 (n + 1) - (A270894 n + A270893 n)

end

end A270891.P7574335950637537962

/-!
# A270892: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A270892, there is no canonical definition to state claims against.
-/

/-! ## A270892.P18219290059170215685

`A270891(2^n-1)`
-/

namespace A270892.P18219290059170215685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (2 ^ n - 1)

end

end A270892.P18219290059170215685

/-! ## A270892.P888688180501739938

`record[A270891(A255067(n))]`
-/

namespace A270892.P888688180501739938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270892.P888688180501739938

/-! ## A270892.P10214401986805212731

`record[A270891(A303765(n))]`
-/

namespace A270892.P10214401986805212731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270892.P10214401986805212731

/-! ## A270892.P16305668652136256923

`record[A270891(Δ[A228693(n)])]`
-/

namespace A270892.P16305668652136256923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270892.P16305668652136256923

/-! ## A270892.P17408549463539786325

`record[A270891(A243071(n+1))]`
-/

namespace A270892.P17408549463539786325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270892.P17408549463539786325

/-!
# A270893: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A270893, there is no canonical definition to state claims against.
-/

/-! ## A270893.P13487084236959995119

`∑[A270891(n)]`
-/

namespace A270893.P13487084236959995119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270893.P13487084236959995119

/-! ## A270893.P1947030574699400913

`∑[A270894(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270893.P1947030574699400913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270894 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270893.P1947030574699400913

/-! ## A270893.P2574234783332014828

`a(n-1)+A057427(n)*A270891(n)` with `a(0)=1`
-/

namespace A270893.P2574234783332014828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270891 n

end

end A270893.P2574234783332014828

/-! ## A270893.P4832897724475204907

`a(n-1)+A270891(n)%A007531(n+4)` with `a(0)=1`
-/

namespace A270893.P4832897724475204907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270891 n) (A007531 (n + 4))

end

end A270893.P4832897724475204907

/-! ## A270893.P10297138507168544217

`A270891(n)+a(A004524(A004273(n)))` with `a(0)=1`
-/

namespace A270893.P10297138507168544217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270891 n + a (A004524 (A004273 n).toNat).toNat

end

end A270893.P10297138507168544217

/-! ## A270893.P5307410887345772957

`A270891(n)+a(A123108(A004275(n)))` with `a(0)=1`
-/

namespace A270893.P5307410887345772957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270891 n + a (A123108 (A004275 n).toNat).toNat

end

end A270893.P5307410887345772957

/-!
# A270894: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A270894, there is no canonical definition to state claims against.
-/

/-! ## A270894.P1437300164250758073

`Δ[A270891(n)]`
-/

namespace A270894.P1437300164250758073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270894.P1437300164250758073

/-! ## A270894.P7522117561310182433

`A270891(n+1)-A270891(n)`
-/

namespace A270894.P7522117561310182433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270891 (n + 1) - A270891 n

end

end A270894.P7522117561310182433

/-!
# A270895: Sierpiński numbers that are squares.

The programs for A270895, there is no canonical definition to state claims against.
-/

/-! ## A270895.P12549291783678115033

`A270896(n+1)²`
-/

namespace A270895.P12549291783678115033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270896 (n + 1) ^ 2

end

end A270895.P12549291783678115033

/-! ## A270895.P10258272603788625134

`record[A270896(A028920(n))²]`
-/

namespace A270895.P10258272603788625134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270896 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270895.P10258272603788625134

/-! ## A270895.P13648005472531440979

`record[A270896(A328399(n))²]`
-/

namespace A270895.P13648005472531440979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270896 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270895.P13648005472531440979

/-! ## A270895.P13815195564389144804

`A270896(n+1)^ratio[A000079(n)]`
-/

namespace A270895.P13815195564389144804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A270896 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A270895.P13815195564389144804

/-! ## A270895.P12479780810120291630

`A270896(A002264(3*n+4))^2`
-/

namespace A270895.P12479780810120291630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270896 (A002264 (3 * n + 4)).toNat ^ 2

end

end A270895.P12479780810120291630

/-!
# A270896: Values of n for which n^2 is a Sierpiński number.

The programs for A270896, there is no canonical definition to state claims against.
-/

/-! ## A270896.P2567552035172754476

`sqrt(A270895(n+1))`
-/

namespace A270896.P2567552035172754476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A270895 (n + 1) : ℝ)

end

end A270896.P2567552035172754476

/-! ## A270896.P1900286692524695545

`root(A270895(n+1), ratio[A000079(n)])`
-/

namespace A270896.P1900286692524695545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A270895 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A270896.P1900286692524695545

/-! ## A270896.P6043685918889718185

`root(A270895(n+1), p?[A276729(n)])`
-/

namespace A270896.P6043685918889718185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A270895 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A270896.P6043685918889718185

/-! ## A270896.P18052085891471222788

`root(A270895(n+1), A020639(2*(n+1)))`
-/

namespace A270896.P18052085891471222788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A270895 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A270896.P18052085891471222788

/-!
# A270897: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A270897, there is no canonical definition to state claims against.
-/

/-! ## A270897.P4583881023367680048

`∑[A270900(abs(1-n))]+1`
-/

namespace A270897.P4583881023367680048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270900 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270897.P4583881023367680048

/-! ## A270897.P3891192117985174731

`A270900(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270897.P3891192117985174731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270900 (n - 1) + a (n - 1)

end

end A270897.P3891192117985174731

/-! ## A270897.P11381171447944059672

`Δ[A270899(n)]-A270900(n)`
-/

namespace A270897.P11381171447944059672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270900 n

end

end A270897.P11381171447944059672

/-! ## A270897.P3905279495503687821

`A270900(n-1)-floor(-a(n-A057428(n)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A270897.P3905279495503687821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270900 (n - 1) - (-a ((n : ℤ) - A057428 n - 2).toNat)

end

end A270897.P3905279495503687821

/-! ## A270897.P15536450950819565200

`A270899(n+1)-(A270900(n)+A270899(n))`
-/

namespace A270897.P15536450950819565200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270899 (n + 1) - (A270900 n + A270899 n)

end

end A270897.P15536450950819565200

/-! ## A270897.P8424546739566288447

`1-A001489(∑[A270900(abs(1-n))])`
-/

namespace A270897.P8424546739566288447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270900 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270897.P8424546739566288447

/-!
# A270898: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A270898, there is no canonical definition to state claims against.
-/

/-! ## A270898.P7991735875860803477

`A270897(2^n-1)`
-/

namespace A270898.P7991735875860803477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (2 ^ n - 1)

end

end A270898.P7991735875860803477

/-! ## A270898.P2956198554038224040

`record[A270897(A091264(n))]`
-/

namespace A270898.P2956198554038224040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270898.P2956198554038224040

/-! ## A270898.P4333776791713962607

`record[A270897(A173787(n))]`
-/

namespace A270898.P4333776791713962607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270898.P4333776791713962607

/-! ## A270898.P12135311010589349227

`record[A270897(A232751(n))]`
-/

namespace A270898.P12135311010589349227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270898.P12135311010589349227

/-! ## A270898.P6903119222675371294

`record[A270897(A257250(n))]`
-/

namespace A270898.P6903119222675371294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270898.P6903119222675371294

/-!
# A270899: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A270899, there is no canonical definition to state claims against.
-/

/-! ## A270899.P17606890044752336702

`∑[∑[A270900(abs(1-n))]+1]`
-/

namespace A270899.P17606890044752336702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270900 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270899.P17606890044752336702

/-! ## A270899.P12685410835498239445

`∑[A270900(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270899.P12685410835498239445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270900 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270899.P12685410835498239445

/-! ## A270899.P15101967354060371462

`∑[A270897(n)]`
-/

namespace A270899.P15101967354060371462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270899.P15101967354060371462

/-! ## A270899.P6199793996949852255

`a(n-1)+A270897(n)+A000007(n)` with `a(0)=1`
-/

namespace A270899.P6199793996949852255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270897 n + A000007 n)

end

end A270899.P6199793996949852255

/-! ## A270899.P3184848536555916739

`a(n-1)+A270897(n)%A016863(n)` with `a(0)=1`
-/

namespace A270899.P3184848536555916739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270897 n) (A016863 n)

end

end A270899.P3184848536555916739

/-! ## A270899.P15223301332357145950

`A270897(n%A034694(n))+a(n-1)` with `a(0)=1`
-/

namespace A270899.P15223301332357145950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270897 (Int.tmod (n : ℤ) (A034694 n)).toNat + a (n - 1)

end

end A270899.P15223301332357145950

/-! ## A270899.P14727698287190117359

`A270897(A330492(2*(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A270899.P14727698287190117359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270897 (A330492 (2 * (n + 1))).toNat + a (n - 1)

end

end A270899.P14727698287190117359

