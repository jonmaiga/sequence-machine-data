import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A295700: Numbers that have exactly ten representations as a sum of six positive squares.

The programs for A295700, there is no canonical definition to state claims against.
-/

/-! ## A295700.P11557279375333353722

`eq[10, A025430(n)]`
-/

namespace A295700.P11557279375333353722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295700.P11557279375333353722

/-! ## A295700.P2896429327749978242

`eq[10, A000177(n)-A000174(n)]`
-/

namespace A295700.P2896429327749978242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295700.P2896429327749978242

/-! ## A295700.P1464319615677864457

`eq[10, A243148(A184218(n+1)+7)]`
-/

namespace A295700.P1464319615677864457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A184218 (n + 1) + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295700.P1464319615677864457

/-! ## A295700.P7276713555359149927

`lt[A256277(abs(4-A025430(n)²)+1), 1]`
-/

namespace A295700.P7276713555359149927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256277 (|4 - A025430 n ^ 2| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295700.P7276713555359149927

/-! ## A295700.P8152964888257773841

`lt[A212793(n+1), A290081(A025430(n))]`
-/

namespace A295700.P8152964888257773841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (A025430 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295700.P8152964888257773841

/-!
# A295704: Number of equivalence classes of 132-avoiding permutations of [n], where two permutations are equivalent if they have the same set of pure descents.

The programs for A295704, there is no canonical definition to state claims against.
-/

/-! ## A295704.P18096680884032875112

`A096182(A318910(n))`
-/

namespace A295704.P18096680884032875112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A318910 n).toNat

end

end A295704.P18096680884032875112

/-! ## A295704.P17217210197245929327

`A096182(A186546(n+1))`
-/

namespace A295704.P17217210197245929327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A186546 (n + 1)).toNat

end

end A295704.P17217210197245929327

/-! ## A295704.P7371427386131312859

`Δ[A038567(n*A030266(n))]`
-/

namespace A295704.P7371427386131312859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 ((n : ℤ) * A030266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295704.P7371427386131312859

/-! ## A295704.P13620036463137007515

`ceil(∑[A000006(A192623(n))]/3)`
-/

namespace A295704.P13620036463137007515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A192623 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A295704.P13620036463137007515

/-!
# A295705: The first of a pair of alternate primes the difference between which is twice a prime.

The programs for A295705, the canonical program `A295705.P1140010899799709872` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295705 has offset 1).

The definition of A295705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295705.P13166880832641386591

`record[A065091(n+1)/A001222(A052288(n+1))]`
-/

namespace A295705.P13166880832641386591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) / (A001222 (A052288 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295705.P13166880832641386591

namespace A295705

/-- `record[A065091(n+1)/A001222(A052288(n+1))]` -/
def P13166880832641386591.Spec : Prop :=
  ∀ n, P13166880832641386591.a n = (A295705 (n + 1) : ℚ)

end A295705

/-! ## A295705.P1140010899799709872

`p?[A000040(n+2)*A001222(A052288(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A295705

/-- `p?[A000040(n+2)*A001222(A052288(n+1))]` -/
def P1140010899799709872.Spec : Prop :=
  ∀ n, P1140010899799709872.a n = A295705 (n + 1)

theorem P1140010899799709872.correct : P1140010899799709872.Spec := by
  intro n
  simp only [A295705, Nat.add_sub_cancel]

end A295705

/-! ## A295705.P5716824914332434453

`eq[A001222(A105161(n)), A053204(n)]`
-/

namespace A295705.P5716824914332434453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105161 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295705.P5716824914332434453

namespace A295705

/-- `eq[A001222(A105161(n)), A053204(n)]` -/
def P5716824914332434453.Spec : Prop :=
  ∀ n, (P5716824914332434453.a n : ℤ) = A295705 (n + 1)

end A295705

/-! ## A295705.P1368863295024415274

`p?[A117358(A001748(n+1)*A031131(n+1))]`
-/

namespace A295705.P1368863295024415274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A001748 (n + 1) * A031131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295705.P1368863295024415274

namespace A295705

/-- `p?[A117358(A001748(n+1)*A031131(n+1))]` -/
def P1368863295024415274.Spec : Prop :=
  ∀ n, P1368863295024415274.a n = A295705 (n + 1)

end A295705

/-! ## A295705.P6722498179141903742

`record[A014673(A052288(n+1)*A065091(n+1))]`
-/

namespace A295705.P6722498179141903742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A052288 (n + 1) * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295705.P6722498179141903742

namespace A295705

/-- `record[A014673(A052288(n+1)*A065091(n+1))]` -/
def P6722498179141903742.Spec : Prop :=
  ∀ n, P6722498179141903742.a n = A295705 (n + 1)

end A295705

/-! ## A295705.P17305207056133706854

`p?[A032742(A052288(n+1)*A065091(n+1))]`
-/

namespace A295705.P17305207056133706854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A052288 (n + 1) * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295705.P17305207056133706854

namespace A295705

/-- `p?[A032742(A052288(n+1)*A065091(n+1))]` -/
def P17305207056133706854.Spec : Prop :=
  ∀ n, P17305207056133706854.a n = A295705 (n + 1)

end A295705

/-! ## A295705.P17007443714026150442

`p?[A117818(A052288(n+1)*A065091(n+1))]`
-/

namespace A295705.P17007443714026150442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A052288 (n + 1) * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295705.P17007443714026150442

namespace A295705

/-- `p?[A117818(A052288(n+1)*A065091(n+1))]` -/
def P17007443714026150442.Spec : Prop :=
  ∀ n, P17007443714026150442.a n = A295705 (n + 1)

end A295705

/-! ## A295705.P16957954731634733077

`eq[A001222(A105161(n)), A152061(n)]`
-/

namespace A295705.P16957954731634733077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105161 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295705.P16957954731634733077

namespace A295705

/-- `eq[A001222(A105161(n)), A152061(n)]` -/
def P16957954731634733077.Spec : Prop :=
  ∀ n, (P16957954731634733077.a n : ℤ) = A295705 (n + 1)

end A295705

/-!
# A295710: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1's.

The programs for A295710, there is no canonical definition to state claims against.
-/

/-! ## A295710.P10283727400838453695

`A295716(∑[4*n]+1)`
-/

namespace A295710.P10283727400838453695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295710.P10283727400838453695

/-! ## A295710.P7387872549022169799

`record[A003982(n)*A295716(n+1)]`
-/

namespace A295710.P7387872549022169799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295710.P7387872549022169799

/-! ## A295710.P13362913139317360743

`record[gcd(A003987(n), A295716(n+1))]`
-/

namespace A295710.P13362913139317360743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A295716 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295710.P13362913139317360743

/-! ## A295710.P2397471443290454804

`A295716(A001844(n))+A025469(n)`
-/

namespace A295710.P2397471443290454804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A001844 n).toNat + A025469 n

end

end A295710.P2397471443290454804

/-! ## A295710.P8941174888442964723

`lcm(A031178(n), A295716(A001844(n)))`
-/

namespace A295710.P8941174888442964723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031178 n) (A295716 (A001844 n).toNat)

end

end A295710.P8941174888442964723

/-!
# A295711: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1s.

The programs for A295711, there is no canonical definition to state claims against.
-/

/-! ## A295711.P7704573545610140000

`A295716(∑[n+2]+4)`
-/

namespace A295711.P7704573545610140000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295711.P7704573545610140000

/-! ## A295711.P8019324166446173217

`A295716(A167614(n+1))+A011743(n)`
-/

namespace A295711.P8019324166446173217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A167614 (n + 1)).toNat + A011743 n

end

end A295711.P8019324166446173217

/-! ## A295711.P15233250669504477100

`lcm(A033999(n), A295716(A167614(n+1)))`
-/

namespace A295711.P15233250669504477100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295716 (A167614 (n + 1)).toNat)

end

end A295711.P15233250669504477100

/-! ## A295711.P5598663493301523944

`A295716(A167614(n+1))%A207129(n+1)`
-/

namespace A295711.P5598663493301523944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295716 (A167614 (n + 1)).toNat) (A207129 (n + 1))

end

end A295711.P5598663493301523944

/-!
# A295712: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1s.

The programs for A295712, there is no canonical definition to state claims against.
-/

/-! ## A295712.P17244420996662298343

`A295716(A374004(n+1))`
-/

namespace A295712.P17244420996662298343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A374004 (n + 1)).toNat

end

end A295712.P17244420996662298343

/-! ## A295712.P5072959436843411950

`A295716(A141214(n)+7)`
-/

namespace A295712.P5072959436843411950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A141214 n + 7).toNat

end

end A295712.P5072959436843411950

/-! ## A295712.P251033544222314710

`A295716(A052905(n)+9)`
-/

namespace A295712.P251033544222314710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A052905 n + 9).toNat

end

end A295712.P251033544222314710

/-! ## A295712.P10204771712247984813

`A295716(A055999(n)+10)`
-/

namespace A295712.P10204771712247984813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A055999 n + 10).toNat

end

end A295712.P10204771712247984813

/-! ## A295712.P3385895896521574701

`A295716(A167614(n+2)+1)`
-/

namespace A295712.P3385895896521574701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A167614 (n + 2) + 1).toNat

end

end A295712.P3385895896521574701

/-!
# A295713: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1s.

The programs for A295713, there is no canonical definition to state claims against.
-/

/-! ## A295713.P15446193800218358451

`A295716(A374005(n+1))`
-/

namespace A295713.P15446193800218358451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A374005 (n + 1)).toNat

end

end A295713.P15446193800218358451

/-! ## A295713.P13098170465508644875

`A295716(A167499(n+3))`
-/

namespace A295713.P13098170465508644875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A167499 (n + 3)).toNat

end

end A295713.P13098170465508644875

/-! ## A295713.P10290225546497320659

`A295716(A046691(n+3))`
-/

namespace A295713.P10290225546497320659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A046691 (n + 3)).toNat

end

end A295713.P10290225546497320659

/-! ## A295713.P14473591394712775878

`A295716(eq[4, A193592(n)])`
-/

namespace A295713.P14473591394712775878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295713.P14473591394712775878

/-! ## A295713.P15913171348922360734

`A295716(Δ[A023545(n+1)])`
-/

namespace A295713.P15913171348922360734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (f1 (n + 1) - f1 n).toNat

end

end A295713.P15913171348922360734

/-!
# A295714: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1s.

The programs for A295714, there is no canonical definition to state claims against.
-/

/-! ## A295714.P15254813643095277416

`A295716(A374007(n+1))`
-/

namespace A295714.P15254813643095277416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A374007 (n + 1)).toNat

end

end A295714.P15254813643095277416

/-! ## A295714.P13762601117657410855

`A295716(A056115(n)+21)`
-/

namespace A295714.P13762601117657410855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A056115 n + 21).toNat

end

end A295714.P13762601117657410855

/-! ## A295714.P18117666476565419719

`A295716(eq[7, A131818(n+1)])`
-/

namespace A295714.P18117666476565419719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295714.P18117666476565419719

/-! ## A295714.P4013721273034722617

`A295716(Δ[A023545(n+1)]+10)`
-/

namespace A295714.P4013721273034722617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (f1 (n + 1) - f1 n + 10).toNat

end

end A295714.P4013721273034722617

/-! ## A295714.P2213307013373706375

`A295716(A052905(n+3))`
-/

namespace A295714.P2213307013373706375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A052905 (n + 3)).toNat

end

end A295714.P2213307013373706375

/-!
# A295715: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 2 or 4 1s.

The programs for A295715, there is no canonical definition to state claims against.
-/

/-! ## A295715.P7404228441903156871

`A295716(A374008(n+1))`
-/

namespace A295715.P7404228441903156871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A374008 (n + 1)).toNat

end

end A295715.P7404228441903156871

/-! ## A295715.P8797428233108199226

`A295716(A056119(n)+28)`
-/

namespace A295715.P8797428233108199226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A056119 n + 28).toNat

end

end A295715.P8797428233108199226

/-! ## A295715.P13631151804529842519

`A295716(eq[8, A131818(n+1)])`
-/

namespace A295715.P13631151804529842519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295715.P13631151804529842519

/-! ## A295715.P3783082651303943425

`A295716(A000124(n+7)-(n+1))`
-/

namespace A295715.P3783082651303943425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A295715.P3783082651303943425

/-! ## A295715.P374187236398903552

`A295716(A055999(n+4))`
-/

namespace A295715.P374187236398903552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A055999 (n + 4)).toNat

end

end A295715.P374187236398903552

/-!
# A295717: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = 3, a(2) = 5, a(3) = 7.

The programs for A295717, the canonical program `A295717.P13414992717580965932` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295717 has offset 0).

The definition of A295717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295717.P13414992717580965932`, by `A295717.P13414992717580965932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295717.P13414992717580965932

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295717

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P13414992717580965932.Spec : Prop :=
  ∀ n, P13414992717580965932.a n = A295717 n

theorem P13414992717580965932.correct : P13414992717580965932.Spec := by
  intro n
  simp only [A295717]

end A295717

/-! ## A295717.P15066635771033186271

`A295723(n)+A295619(n)`
-/

namespace A295717.P15066635771033186271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + A295619 n

end

end A295717.P15066635771033186271

namespace A295717

/-- `A295723(n)+A295619(n)` -/
def P15066635771033186271.Spec : Prop :=
  ∀ n, P15066635771033186271.a n = A295717 n

end A295717

/-! ## A295717.P11200157846783309697

`A295724(n)+A295718(n)`
-/

namespace A295717.P11200157846783309697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A295718 n

end

end A295717.P11200157846783309697

namespace A295717

/-- `A295724(n)+A295718(n)` -/
def P11200157846783309697.Spec : Prop :=
  ∀ n, P11200157846783309697.a n = A295717 n

end A295717

/-! ## A295717.P11499260268566046521

`A295729(n)+A164090(n+1)`
-/

namespace A295717.P11499260268566046521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + A164090 (n + 1)

end

end A295717.P11499260268566046521

namespace A295717

/-- `A295729(n)+A164090(n+1)` -/
def P11499260268566046521.Spec : Prop :=
  ∀ n, P11499260268566046521.a n = A295717 n

end A295717

/-! ## A295717.P16532935515299844004

`A295856(n)+A164073(n+1)`
-/

namespace A295717.P16532935515299844004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n + A164073 (n + 1)

end

end A295717.P16532935515299844004

namespace A295717

/-- `A295856(n)+A164073(n+1)` -/
def P16532935515299844004.Spec : Prop :=
  ∀ n, P16532935515299844004.a n = A295717 n

end A295717

/-! ## A295717.P9463534387698089451

`A001060(n)-A097896(n+1)`
-/

namespace A295717.P9463534387698089451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - A097896 (n + 1)

end

end A295717.P9463534387698089451

namespace A295717

/-- `A001060(n)-A097896(n+1)` -/
def P9463534387698089451.Spec : Prop :=
  ∀ n, P9463534387698089451.a n = A295717 n

end A295717

/-! ## A295717.P7304520722587427066

`A000032(n)+A295727(n)+A000045(n)`
-/

namespace A295717.P7304520722587427066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A295727 n + A000045 n)

end

end A295717.P7304520722587427066

namespace A295717

/-- `A000032(n)+A295727(n)+A000045(n)` -/
def P7304520722587427066.Spec : Prop :=
  ∀ n, P7304520722587427066.a n = A295717 n

end A295717

/-! ## A295717.P5730674235328146851

`A000032(n)+A295860(n)+A016116(n)`
-/

namespace A295717.P5730674235328146851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A295860 n + A016116 n)

end

end A295717.P5730674235328146851

namespace A295717

/-- `A000032(n)+A295860(n)+A016116(n)` -/
def P5730674235328146851.Spec : Prop :=
  ∀ n, P5730674235328146851.a n = A295717 n

end A295717

/-! ## A295717.P8342736654989656552

`A005672(n+1)+A295718(n)+A005672(n)`
-/

namespace A295717.P8342736654989656552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295718 n + A005672 n)

end

end A295717.P8342736654989656552

namespace A295717

/-- `A005672(n+1)+A295718(n)+A005672(n)` -/
def P8342736654989656552.Spec : Prop :=
  ∀ n, P8342736654989656552.a n = A295717 n

end A295717

/-! ## A295717.P57523785851639021

`A000045(n+1)+A295727(n)+A000045(n+1)`
-/

namespace A295717.P57523785851639021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295727 n + A000045 (n + 1))

end

end A295717.P57523785851639021

namespace A295717

/-- `A000045(n+1)+A295727(n)+A000045(n+1)` -/
def P57523785851639021.Spec : Prop :=
  ∀ n, P57523785851639021.a n = A295717 n

end A295717

/-! ## A295717.P4712887221200350176

`A027557(n)-A295733(n)`
-/

namespace A295717.P4712887221200350176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n - A295733 n

end

end A295717.P4712887221200350176

namespace A295717

/-- `A027557(n)-A295733(n)` -/
def P4712887221200350176.Spec : Prop :=
  ∀ n, P4712887221200350176.a n = A295717 n

end A295717

/-! ## A295717.P2276003081668319276

`A295719(n)-A295730(n+1)`
-/

namespace A295717.P2276003081668319276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n - A295730 (n + 1)

end

end A295717.P2276003081668319276

namespace A295717

/-- `A295719(n)-A295730(n+1)` -/
def P2276003081668319276.Spec : Prop :=
  ∀ n, P2276003081668319276.a n = A295717 n

end A295717

/-! ## A295717.P7076310415214919833

`A295719(n)+A295723(n)-∑[A295723(n)]`
-/

namespace A295717.P7076310415214919833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n + (A295723 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295717.P7076310415214919833

namespace A295717

/-- `A295719(n)+A295723(n)-∑[A295723(n)]` -/
def P7076310415214919833.Spec : Prop :=
  ∀ n, P7076310415214919833.a n = A295717 n

end A295717

/-! ## A295717.P10029872745228860025

`A295735(n+1)+A295718(n)-A295730(n)`
-/

namespace A295717.P10029872745228860025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) + (A295718 n - A295730 n)

end

end A295717.P10029872745228860025

namespace A295717

/-- `A295735(n+1)+A295718(n)-A295730(n)` -/
def P10029872745228860025.Spec : Prop :=
  ∀ n, P10029872745228860025.a n = A295717 n

end A295717

/-!
# A295718: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = 3, a(2) = 4, a(3) = 5.

The programs for A295718, the canonical program `A295718.P8205418940995138743` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295718 has offset 0).

The definition of A295718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295718.P8205418940995138743`, by `A295718.P8205418940995138743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295718.P8205418940995138743

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295718

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P8205418940995138743.Spec : Prop :=
  ∀ n, P8205418940995138743.a n = A295718 n

theorem P8205418940995138743.correct : P8205418940995138743.Spec := by
  intro n
  simp only [A295718]

end A295718

/-! ## A295718.P9351570381274092530

`A016116(n+2)-A152163(n)`
-/

namespace A295718.P9351570381274092530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 2) - A152163 n

end

end A295718.P9351570381274092530

namespace A295718

/-- `A016116(n+2)-A152163(n)` -/
def P9351570381274092530.Spec : Prop :=
  ∀ n, P9351570381274092530.a n = A295718 n

end A295718

/-! ## A295718.P5137737118416781831

`2*A016116(n)-A152163(n)`
-/

namespace A295718.P5137737118416781831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016116 n - A152163 n

end

end A295718.P5137737118416781831

namespace A295718

/-- `2*A016116(n)-A152163(n)` -/
def P5137737118416781831.Spec : Prop :=
  ∀ n, P5137737118416781831.a n = A295718 n

end A295718

/-! ## A295718.P16501888823917757942

`A295619(n)+A295619(n)-A000045(n+1)`
-/

namespace A295718.P16501888823917757942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 n + (A295619 n - A000045 (n + 1))

end

end A295718.P16501888823917757942

namespace A295718

/-- `A295619(n)+A295619(n)-A000045(n+1)` -/
def P16501888823917757942.Spec : Prop :=
  ∀ n, P16501888823917757942.a n = A295718 n

end A295718

/-! ## A295718.P16146726860548394405

`A295619(n+2)-A000032(n)`
-/

namespace A295718.P16146726860548394405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 (n + 2) - A000032 n

end

end A295718.P16146726860548394405

namespace A295718

/-- `A295619(n+2)-A000032(n)` -/
def P16146726860548394405.Spec : Prop :=
  ∀ n, P16146726860548394405.a n = A295718 n

end A295718

/-! ## A295718.P17327141474577988673

`A000045(n+1)+A295727(n+1)-A295737(n)`
-/

namespace A295718.P17327141474577988673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295727 (n + 1) - A295737 n)

end

end A295718.P17327141474577988673

namespace A295718

/-- `A000045(n+1)+A295727(n+1)-A295737(n)` -/
def P17327141474577988673.Spec : Prop :=
  ∀ n, P17327141474577988673.a n = A295718 n

end A295718

/-! ## A295718.P16502024213456702379

`A295717(n)-A295724(n)`
-/

namespace A295718.P16502024213456702379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - A295724 n

end

end A295718.P16502024213456702379

namespace A295718

/-- `A295717(n)-A295724(n)` -/
def P16502024213456702379.Spec : Prop :=
  ∀ n, P16502024213456702379.a n = A295718 n

end A295718

/-! ## A295718.P9253073250824939327

`A295717(n)-(A005672(n+1)+A005672(n))`
-/

namespace A295718.P9253073250824939327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - (A005672 (n + 1) + A005672 n)

end

end A295718.P9253073250824939327

namespace A295718

/-- `A295717(n)-(A005672(n+1)+A005672(n))` -/
def P9253073250824939327.Spec : Prop :=
  ∀ n, P9253073250824939327.a n = A295718 n

end A295718

/-!
# A295719: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = 3, a(2) = 6, a(3) = 10.

The programs for A295719, the canonical program `A295719.P13434384281620773853` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295719 has offset 0).

The definition of A295719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295719.P13434384281620773853`, by `A295719.P13434384281620773853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295719.P13434384281620773853

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295719

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P13434384281620773853.Spec : Prop :=
  ∀ n, P13434384281620773853.a n = A295719 n

theorem P13434384281620773853.correct : P13434384281620773853.Spec := by
  intro n
  simp only [A295719]

end A295719

/-! ## A295719.P3954332034528612629

`2*(A006355(n)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A295719.P3954332034528612629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (A006355 n + a (n - 2))

end

end A295719.P3954332034528612629

namespace A295719

/-- `2*(A006355(n)+a(n-2))` -/
def P3954332034528612629.Spec : Prop :=
  ∀ n, P3954332034528612629.a n = A295719 n

end A295719

/-! ## A295719.P8095271592313595586

`A295726(n)+A000285(n)`
-/

namespace A295719.P8095271592313595586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n + A000285 n

end

end A295719.P8095271592313595586

namespace A295719

/-- `A295726(n)+A000285(n)` -/
def P8095271592313595586.Spec : Prop :=
  ∀ n, P8095271592313595586.a n = A295719 n

end A295719

/-! ## A295719.P8966580171663327618

`A295857(n)+A000032(n+1)`
-/

namespace A295719.P8966580171663327618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + A000032 (n + 1)

end

end A295719.P8966580171663327618

namespace A295719

/-- `A295857(n)+A000032(n+1)` -/
def P8966580171663327618.Spec : Prop :=
  ∀ n, P8966580171663327618.a n = A295719 n

end A295719

/-! ## A295719.P10154802324938474680

`A295857(n)+A000204(n+1)`
-/

namespace A295719.P10154802324938474680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + A000204 (n + 1)

end

end A295719.P10154802324938474680

namespace A295719

/-- `A295857(n)+A000204(n+1)` -/
def P10154802324938474680.Spec : Prop :=
  ∀ n, P10154802324938474680.a n = A295719 n

end A295719

/-! ## A295719.P9239066915215872921

`A295730(n+1)+A295717(n)`
-/

namespace A295719.P9239066915215872921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + A295717 n

end

end A295719.P9239066915215872921

namespace A295719

/-- `A295730(n+1)+A295717(n)` -/
def P9239066915215872921.Spec : Prop :=
  ∀ n, P9239066915215872921.a n = A295719 n

end A295719

/-! ## A295719.P6621304646324774570

`A391682(n+1)+A295723(n)`
-/

namespace A295719.P6621304646324774570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) + A295723 n

end

end A295719.P6621304646324774570

namespace A295719

/-- `A391682(n+1)+A295723(n)` -/
def P6621304646324774570.Spec : Prop :=
  ∀ n, P6621304646324774570.a n = A295719 n

end A295719

/-! ## A295719.P10617062947165171330

`A000032(n+1)+A295726(n)+A000045(n)`
-/

namespace A295719.P10617062947165171330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A295726 n + A000045 n)

end

end A295719.P10617062947165171330

namespace A295719

/-- `A000032(n+1)+A295726(n)+A000045(n)` -/
def P10617062947165171330.Spec : Prop :=
  ∀ n, P10617062947165171330.a n = A295719 n

end A295719

/-! ## A295719.P7367145896419635731

`A295728(n+1)+A295728(n)+A295718(n)`
-/

namespace A295719.P7367145896419635731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A295728 n + A295718 n)

end

end A295719.P7367145896419635731

namespace A295719

/-- `A295728(n+1)+A295728(n)+A295718(n)` -/
def P7367145896419635731.Spec : Prop :=
  ∀ n, P7367145896419635731.a n = A295719 n

end A295719

/-! ## A295719.P8177885996079381753

`A295730(n+1)+A295724(n)+A295718(n)`
-/

namespace A295719.P8177885996079381753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295724 n + A295718 n)

end

end A295719.P8177885996079381753

namespace A295719

/-- `A295730(n+1)+A295724(n)+A295718(n)` -/
def P8177885996079381753.Spec : Prop :=
  ∀ n, P8177885996079381753.a n = A295719 n

end A295719

/-! ## A295719.P624659462569990240

`A295718(n+1)+A295733(n+1)+A295730(n)`
-/

namespace A295719.P624659462569990240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295718 (n + 1) + (A295733 (n + 1) + A295730 n)

end

end A295719.P624659462569990240

namespace A295719

/-- `A295718(n+1)+A295733(n+1)+A295730(n)` -/
def P624659462569990240.Spec : Prop :=
  ∀ n, P624659462569990240.a n = A295719 n

end A295719

/-! ## A295719.P4550383085546465306

`A027557(n+1)+A000045(n)-A079289(n+1)`
-/

namespace A295719.P4550383085546465306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 (n + 1) + (A000045 n - A079289 (n + 1))

end

end A295719.P4550383085546465306

namespace A295719

/-- `A027557(n+1)+A000045(n)-A079289(n+1)` -/
def P4550383085546465306.Spec : Prop :=
  ∀ n, P4550383085546465306.a n = A295719 n

end A295719

/-! ## A295719.P9362332166722523217

`A295720(n)-A295730(n+2)`
-/

namespace A295719.P9362332166722523217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295720 n - A295730 (n + 2)

end

end A295719.P9362332166722523217

namespace A295719

/-- `A295720(n)-A295730(n+2)` -/
def P9362332166722523217.Spec : Prop :=
  ∀ n, P9362332166722523217.a n = A295719 n

end A295719

/-!
# A295720: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = 4, a(2) = 9, a(3) = 16.

The programs for A295720, the canonical program `A295720.P4074664113970877538` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295720 has offset 0).

The definition of A295720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295720.P4074664113970877538`, by `A295720.P4074664113970877538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295720.P4074664113970877538

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295720

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P4074664113970877538.Spec : Prop :=
  ∀ n, P4074664113970877538.a n = A295720 n

theorem P4074664113970877538.correct : P4074664113970877538.Spec := by
  intro n
  simp only [A295720]

end A295720

/-! ## A295720.P5820464709515897576

`A295719(n)+∑[A295723(n)]`
-/

namespace A295720.P5820464709515897576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295720.P5820464709515897576

namespace A295720

/-- `A295719(n)+∑[A295723(n)]` -/
def P5820464709515897576.Spec : Prop :=
  ∀ n, P5820464709515897576.a n = A295720 n

end A295720

/-! ## A295720.P13705133342311644589

`A295850(n)+record[A295728(n)]`
-/

namespace A295720.P13705133342311644589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295720.P13705133342311644589

namespace A295720

/-- `A295850(n)+record[A295728(n)]` -/
def P13705133342311644589.Spec : Prop :=
  ∀ n, P13705133342311644589.a n = A295720 n

end A295720

/-! ## A295720.P3679596685619839397

`A295730(n+2)+A295719(n)`
-/

namespace A295720.P3679596685619839397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 2) + A295719 n

end

end A295720.P3679596685619839397

namespace A295720

/-- `A295730(n+2)+A295719(n)` -/
def P3679596685619839397.Spec : Prop :=
  ∀ n, P3679596685619839397.a n = A295720 n

end A295720

/-! ## A295720.P11504129948689453295

`record[A295728(n)]+Δ[A295732(n)]`
-/

namespace A295720.P11504129948689453295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A295720.P11504129948689453295

namespace A295720

/-- `record[A295728(n)]+Δ[A295732(n)]` -/
def P11504129948689453295.Spec : Prop :=
  ∀ n, P11504129948689453295.a n = A295720 n

end A295720

/-!
# A295721: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = 2, a(2) = 3, a(3) = 4.

The programs for A295721, the canonical program `A295721.P3379632860584706296` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295721 has offset 0).

The definition of A295721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295721.P3379632860584706296`, by `A295721.P3379632860584706296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295721.P3379632860584706296

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295721

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3379632860584706296.Spec : Prop :=
  ∀ n, P3379632860584706296.a n = A295721 n

theorem P3379632860584706296.correct : P3379632860584706296.Spec := by
  intro n
  simp only [A295721]

end A295721

/-! ## A295721.P5234266705854033538

`A295727(n)+A295723(n)`
-/

namespace A295721.P5234266705854033538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + A295723 n

end

end A295721.P5234266705854033538

namespace A295721

/-- `A295727(n)+A295723(n)` -/
def P5234266705854033538.Spec : Prop :=
  ∀ n, P5234266705854033538.a n = A295721 n

end A295721

/-! ## A295721.P7003839270499128578

`A022088(n)-A164073(n+1)`
-/

namespace A295721.P7003839270499128578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n - A164073 (n + 1)

end

end A295721.P7003839270499128578

namespace A295721

/-- `A022088(n)-A164073(n+1)` -/
def P7003839270499128578.Spec : Prop :=
  ∀ n, P7003839270499128578.a n = A295721 n

end A295721

/-! ## A295721.P8416021553312900499

`5*A000045(n)-A164073(n+1)`
-/

namespace A295721.P8416021553312900499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n - A164073 (n + 1)

end

end A295721.P8416021553312900499

namespace A295721

/-- `5*A000045(n)-A164073(n+1)` -/
def P8416021553312900499.Spec : Prop :=
  ∀ n, P8416021553312900499.a n = A295721 n

end A295721

/-! ## A295721.P14239319963896079345

`∑[A295727(n+1)]-Δ[A295727(n)]`
-/

namespace A295721.P14239319963896079345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A295721.P14239319963896079345

namespace A295721

/-- `∑[A295727(n+1)]-Δ[A295727(n)]` -/
def P14239319963896079345.Spec : Prop :=
  ∀ n, P14239319963896079345.a n = A295721 n

end A295721

/-! ## A295721.P8783009560964163965

`A005672(n+1)+A295727(n)+A000045(n)`
-/

namespace A295721.P8783009560964163965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295727 n + A000045 n)

end

end A295721.P8783009560964163965

namespace A295721

/-- `A005672(n+1)+A295727(n)+A000045(n)` -/
def P8783009560964163965.Spec : Prop :=
  ∀ n, P8783009560964163965.a n = A295721 n

end A295721

/-! ## A295721.P8397295483163313047

`A000032(n+1)+A295850(n)-A000032(n)`
-/

namespace A295721.P8397295483163313047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A295850 n - A000032 n)

end

end A295721.P8397295483163313047

namespace A295721

/-- `A000032(n+1)+A295850(n)-A000032(n)` -/
def P8397295483163313047.Spec : Prop :=
  ∀ n, P8397295483163313047.a n = A295721 n

end A295721

/-! ## A295721.P2799549743049674537

`A295724(n+1)+A005672(n)-A295737(n)`
-/

namespace A295721.P2799549743049674537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) + (A005672 n - A295737 n)

end

end A295721.P2799549743049674537

namespace A295721

/-- `A295724(n+1)+A005672(n)-A295737(n)` -/
def P2799549743049674537.Spec : Prop :=
  ∀ n, P2799549743049674537.a n = A295721 n

end A295721

/-! ## A295721.P14921476819805368589

`A005672(n+1)+A295728(n+1)-A295733(n)`
-/

namespace A295721.P14921476819805368589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295728 (n + 1) - A295733 n)

end

end A295721.P14921476819805368589

namespace A295721

/-- `A005672(n+1)+A295728(n+1)-A295733(n)` -/
def P14921476819805368589.Spec : Prop :=
  ∀ n, P14921476819805368589.a n = A295721 n

end A295721

/-! ## A295721.P7090364388422744090

`2*Δ[A295735(n)]-A028892(n)`
-/

namespace A295721.P7090364388422744090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A028892 n

end

end A295721.P7090364388422744090

namespace A295721

/-- `2*Δ[A295735(n)]-A028892(n)` -/
def P7090364388422744090.Spec : Prop :=
  ∀ n, P7090364388422744090.a n = A295721 n

end A295721

/-! ## A295721.P15376855499631590652

`Δ[A295730(n+1)+Δ[A295730(n)]]`
-/

namespace A295721.P15376855499631590652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295721.P15376855499631590652

namespace A295721

/-- `Δ[A295730(n+1)+Δ[A295730(n)]]` -/
def P15376855499631590652.Spec : Prop :=
  ∀ n, P15376855499631590652.a n = A295721 n

end A295721

/-!
# A295722: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = -1, a(2) = 2, a(3) = 3.

The programs for A295722, the canonical program `A295722.P4852131437209648384` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295722 has offset 0).

The definition of A295722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295722.P4852131437209648384`, by `A295722.P4852131437209648384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295722.P4852131437209648384

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295722

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P4852131437209648384.Spec : Prop :=
  ∀ n, P4852131437209648384.a n = A295722 n

theorem P4852131437209648384.correct : P4852131437209648384.Spec := by
  intro n
  simp only [A295722]

end A295722

/-! ## A295722.P899455725475524097

`∑[A295856(n)]-1`
-/

namespace A295722.P899455725475524097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295722.P899455725475524097

namespace A295722

/-- `∑[A295856(n)]-1` -/
def P899455725475524097.Spec : Prop :=
  ∀ n, P899455725475524097.a n = A295722 n

end A295722

/-! ## A295722.P13894910008371401227

`A298158(n)+A000045(n)`
-/

namespace A295722.P13894910008371401227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298158 n + A000045 n

end

end A295722.P13894910008371401227

namespace A295722

/-- `A298158(n)+A000045(n)` -/
def P13894910008371401227.Spec : Prop :=
  ∀ n, P13894910008371401227.a n = A295722 n

end A295722

/-! ## A295722.P9322258406863225011

`∑[A295729(n)+A077957(n)]-1`
-/

namespace A295722.P9322258406863225011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295722.P9322258406863225011

namespace A295722

/-- `∑[A295729(n)+A077957(n)]-1` -/
def P9322258406863225011.Spec : Prop :=
  ∀ n, P9322258406863225011.a n = A295722 n

end A295722

/-! ## A295722.P12031396410626496687

`∑[A000285(n)-A143095(n)]-1`
-/

namespace A295722.P12031396410626496687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295722.P12031396410626496687

namespace A295722

/-- `∑[A000285(n)-A143095(n)]-1` -/
def P12031396410626496687.Spec : Prop :=
  ∀ n, P12031396410626496687.a n = A295722 n

end A295722

/-! ## A295722.P5697810152442288054

`A295732(n+1)+A005672(n+1)`
-/

namespace A295722.P5697810152442288054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) + A005672 (n + 1)

end

end A295722.P5697810152442288054

namespace A295722

/-- `A295732(n+1)+A005672(n+1)` -/
def P5697810152442288054.Spec : Prop :=
  ∀ n, P5697810152442288054.a n = A295722 n

end A295722

/-! ## A295722.P17729701677955037676

`A295731(n+1)+A295725(n+1)`
-/

namespace A295722.P17729701677955037676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 1) + A295725 (n + 1)

end

end A295722.P17729701677955037676

namespace A295722

/-- `A295731(n+1)+A295725(n+1)` -/
def P17729701677955037676.Spec : Prop :=
  ∀ n, P17729701677955037676.a n = A295722 n

end A295722

/-! ## A295722.P12490977459267776961

`A295733(n+1)+A295730(n+1)`
-/

namespace A295722.P12490977459267776961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + A295730 (n + 1)

end

end A295722.P12490977459267776961

namespace A295722

/-- `A295733(n+1)+A295730(n+1)` -/
def P12490977459267776961.Spec : Prop :=
  ∀ n, P12490977459267776961.a n = A295722 n

end A295722

/-! ## A295722.P16793053324155149518

`A295857(n+2)-A000032(n+2)`
-/

namespace A295722.P16793053324155149518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 (n + 2) - A000032 (n + 2)

end

end A295722.P16793053324155149518

namespace A295722

/-- `A295857(n+2)-A000032(n+2)` -/
def P16793053324155149518.Spec : Prop :=
  ∀ n, P16793053324155149518.a n = A295722 n

end A295722

/-! ## A295722.P16832177831106606250

`A295858(n+2)-A000045(n+2)`
-/

namespace A295722.P16832177831106606250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 (n + 2) - A000045 (n + 2)

end

end A295722.P16832177831106606250

namespace A295722

/-- `A295858(n+2)-A000045(n+2)` -/
def P16832177831106606250.Spec : Prop :=
  ∀ n, P16832177831106606250.a n = A295722 n

end A295722

/-! ## A295722.P702286290235608326

`A295721(n+2)-A295718(n+2)`
-/

namespace A295722.P702286290235608326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 (n + 2) - A295718 (n + 2)

end

end A295722.P702286290235608326

namespace A295722

/-- `A295721(n+2)-A295718(n+2)` -/
def P702286290235608326.Spec : Prop :=
  ∀ n, P702286290235608326.a n = A295722 n

end A295722

/-! ## A295722.P10779358281153850693

`A295728(n)+A295730(n)+A295729(n)`
-/

namespace A295722.P10779358281153850693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295730 n + A295729 n)

end

end A295722.P10779358281153850693

namespace A295722

/-- `A295728(n)+A295730(n)+A295729(n)` -/
def P10779358281153850693.Spec : Prop :=
  ∀ n, P10779358281153850693.a n = A295722 n

end A295722

/-! ## A295722.P9200031468035477006

`A005672(n+1)+A295730(n)+A295726(n)`
-/

namespace A295722.P9200031468035477006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295730 n + A295726 n)

end

end A295722.P9200031468035477006

namespace A295722

/-- `A005672(n+1)+A295730(n)+A295726(n)` -/
def P9200031468035477006.Spec : Prop :=
  ∀ n, P9200031468035477006.a n = A295722 n

end A295722

/-! ## A295722.P13659644944816470408

`A295857(n)+A295857(n)-A000045(n+1)`
-/

namespace A295722.P13659644944816470408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + (A295857 n - A000045 (n + 1))

end

end A295722.P13659644944816470408

namespace A295722

/-- `A295857(n)+A295857(n)-A000045(n+1)` -/
def P13659644944816470408.Spec : Prop :=
  ∀ n, P13659644944816470408.a n = A295722 n

end A295722

/-! ## A295722.P4675723865646143252

`A167616(n+5)+A000045(n)-A079360(n)`
-/

namespace A295722.P4675723865646143252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 5) + (A000045 n - A079360 n)

end

end A295722.P4675723865646143252

namespace A295722

/-- `A167616(n+5)+A000045(n)-A079360(n)` -/
def P4675723865646143252.Spec : Prop :=
  ∀ n, P4675723865646143252.a n = A295722 n

end A295722

/-! ## A295722.P12126248150796505459

`A005672(n+1)+A295731(n)+A005672(n+1)`
-/

namespace A295722.P12126248150796505459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295731 n + A005672 (n + 1))

end

end A295722.P12126248150796505459

namespace A295722

/-- `A005672(n+1)+A295731(n)+A005672(n+1)` -/
def P12126248150796505459.Spec : Prop :=
  ∀ n, P12126248150796505459.a n = A295722 n

end A295722

/-! ## A295722.P13722750448227765364

`A295730(n+1)+A295737(n+1)+A295725(n)`
-/

namespace A295722.P13722750448227765364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295737 (n + 1) + A295725 n)

end

end A295722.P13722750448227765364

namespace A295722

/-- `A295730(n+1)+A295737(n+1)+A295725(n)` -/
def P13722750448227765364.Spec : Prop :=
  ∀ n, P13722750448227765364.a n = A295722 n

end A295722

/-! ## A295722.P6808720278654557697

`A295729(n+1)+A295737(n+1)-A000045(n)`
-/

namespace A295722.P6808720278654557697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (n + 1) + (A295737 (n + 1) - A000045 n)

end

end A295722.P6808720278654557697

namespace A295722

/-- `A295729(n+1)+A295737(n+1)-A000045(n)` -/
def P6808720278654557697.Spec : Prop :=
  ∀ n, P6808720278654557697.a n = A295722 n

end A295722

/-! ## A295722.P12104782538539025611

`A000071(n+2)+A298158(n)-A000071(n+1)`
-/

namespace A295722.P12104782538539025611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A298158 n - A000071 (n + 1))

end

end A295722.P12104782538539025611

namespace A295722

/-- `A000071(n+2)+A298158(n)-A000071(n+1)` -/
def P12104782538539025611.Spec : Prop :=
  ∀ n, P12104782538539025611.a n = A295722 n

end A295722

/-!
# A295723: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 1, a(2) = 2, a(3) = 3.

The programs for A295723, the canonical program `A295723.P13283734477630448909` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295723 has offset 0).

The definition of A295723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295723.P13283734477630448909`, by `A295723.P13283734477630448909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295723.P13283734477630448909

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295723

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P13283734477630448909.Spec : Prop :=
  ∀ n, P13283734477630448909.a n = A295723 n

theorem P13283734477630448909.correct : P13283734477630448909.Spec := by
  intro n
  simp only [A295723]

end A295723

/-! ## A295723.P17665406167478463999

`∑[A295727(n)]+1`
-/

namespace A295723.P17665406167478463999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295723.P17665406167478463999

namespace A295723

/-- `∑[A295727(n)]+1` -/
def P17665406167478463999.Spec : Prop :=
  ∀ n, P17665406167478463999.a n = A295723 n

end A295723

/-! ## A295723.P7340049217892592777

`A192727(n)+A062114(n)`
-/

namespace A295723.P7340049217892592777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 n + A062114 n

end

end A295723.P7340049217892592777

namespace A295723

/-- `A192727(n)+A062114(n)` -/
def P7340049217892592777.Spec : Prop :=
  ∀ n, P7340049217892592777.a n = A295723 n

end A295723

/-! ## A295723.P14984489732811269189

`A295730(n)+A016116(n)`
-/

namespace A295723.P14984489732811269189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + A016116 n

end

end A295723.P14984489732811269189

namespace A295723

/-- `A295730(n)+A016116(n)` -/
def P14984489732811269189.Spec : Prop :=
  ∀ n, P14984489732811269189.a n = A295723 n

end A295723

/-! ## A295723.P1427435435439639976

`A295860(n)+A118658(n)`
-/

namespace A295723.P1427435435439639976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 n + A118658 n

end

end A295723.P1427435435439639976

namespace A295723

/-- `A295860(n)+A118658(n)` -/
def P1427435435439639976.Spec : Prop :=
  ∀ n, P1427435435439639976.a n = A295723 n

end A295723

/-! ## A295723.P3343350734371465294

`A079284(n)-A212804(n)`
-/

namespace A295723.P3343350734371465294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n - A212804 n

end

end A295723.P3343350734371465294

namespace A295723

/-- `A079284(n)-A212804(n)` -/
def P3343350734371465294.Spec : Prop :=
  ∀ n, P3343350734371465294.a n = A295723 n

end A295723

/-! ## A295723.P15130129770534280916

`A005672(n+1)+A000045(n)`
-/

namespace A295723.P15130129770534280916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + A000045 n

end

end A295723.P15130129770534280916

namespace A295723

/-- `A005672(n+1)+A000045(n)` -/
def P15130129770534280916.Spec : Prop :=
  ∀ n, P15130129770534280916.a n = A295723 n

end A295723

/-! ## A295723.P10129793923343901200

`A000204(n+1)-A060546(n)`
-/

namespace A295723.P10129793923343901200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A060546 n

end

end A295723.P10129793923343901200

namespace A295723

/-- `A000204(n+1)-A060546(n)` -/
def P10129793923343901200.Spec : Prop :=
  ∀ n, P10129793923343901200.a n = A295723 n

end A295723

/-! ## A295723.P6610297354219318057

`A174959(n)+A000071(n+2)`
-/

namespace A295723.P6610297354219318057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 n + A000071 (n + 2)

end

end A295723.P6610297354219318057

namespace A295723

/-- `A174959(n)+A000071(n+2)` -/
def P6610297354219318057.Spec : Prop :=
  ∀ n, P6610297354219318057.a n = A295723 n

end A295723

/-! ## A295723.P5145829106895490551

`A005672(n+2)-A295725(n)`
-/

namespace A295723.P5145829106895490551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 2) - A295725 n

end

end A295723.P5145829106895490551

namespace A295723

/-- `A005672(n+2)-A295725(n)` -/
def P5145829106895490551.Spec : Prop :=
  ∀ n, P5145829106895490551.a n = A295723 n

end A295723

/-! ## A295723.P15440574702247059588

`A000032(n+1)-A016116(n+1)`
-/

namespace A295723.P15440574702247059588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A016116 (n + 1)

end

end A295723.P15440574702247059588

namespace A295723

/-- `A000032(n+1)-A016116(n+1)` -/
def P15440574702247059588.Spec : Prop :=
  ∀ n, P15440574702247059588.a n = A295723 n

end A295723

/-! ## A295723.P16160572630747250637

`A028892(n+1)+2*A000045(n)`
-/

namespace A295723.P16160572630747250637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + 2 * A000045 n

end

end A295723.P16160572630747250637

namespace A295723

/-- `A028892(n+1)+2*A000045(n)` -/
def P16160572630747250637.Spec : Prop :=
  ∀ n, P16160572630747250637.a n = A295723 n

end A295723

/-! ## A295723.P11010168538787320817

`A000045(n)-(A005672(n)-A295724(n))`
-/

namespace A295723.P11010168538787320817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A005672 n - A295724 n)

end

end A295723.P11010168538787320817

namespace A295723

/-- `A000045(n)-(A005672(n)-A295724(n))` -/
def P11010168538787320817.Spec : Prop :=
  ∀ n, P11010168538787320817.a n = A295723 n

end A295723

/-! ## A295723.P2087058879163915810

`A000045(n)+A079284(n)-A000045(n+1)`
-/

namespace A295723.P2087058879163915810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A079284 n - A000045 (n + 1))

end

end A295723.P2087058879163915810

namespace A295723

/-- `A000045(n)+A079284(n)-A000045(n+1)` -/
def P2087058879163915810.Spec : Prop :=
  ∀ n, P2087058879163915810.a n = A295723 n

end A295723

/-! ## A295723.P15412994886671186084

`A295717(n)-A295619(n)`
-/

namespace A295723.P15412994886671186084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - A295619 n

end

end A295723.P15412994886671186084

namespace A295723

/-- `A295717(n)-A295619(n)` -/
def P15412994886671186084.Spec : Prop :=
  ∀ n, P15412994886671186084.a n = A295723 n

end A295723

/-! ## A295723.P15072080990432233519

`A295721(n)-A295727(n)`
-/

namespace A295723.P15072080990432233519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 n - A295727 n

end

end A295723.P15072080990432233519

namespace A295723

/-- `A295721(n)-A295727(n)` -/
def P15072080990432233519.Spec : Prop :=
  ∀ n, P15072080990432233519.a n = A295723 n

end A295723

/-! ## A295723.P13119691649849534872

`A295724(n+1)-2*A005672(n)`
-/

namespace A295723.P13119691649849534872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - 2 * A005672 n

end

end A295723.P13119691649849534872

namespace A295723

/-- `A295724(n+1)-2*A005672(n)` -/
def P13119691649849534872.Spec : Prop :=
  ∀ n, P13119691649849534872.a n = A295723 n

end A295723

/-! ## A295723.P9715081869183310227

`A295718(n)+A295735(n)-A000045(n+1)`
-/

namespace A295723.P9715081869183310227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295718 n + (A295735 n - A000045 (n + 1))

end

end A295723.P9715081869183310227

namespace A295723

/-- `A295718(n)+A295735(n)-A000045(n+1)` -/
def P9715081869183310227.Spec : Prop :=
  ∀ n, P9715081869183310227.a n = A295723 n

end A295723

/-! ## A295723.P17746076222140367175

`Δ[A295730(n+1)]`
-/

namespace A295723.P17746076222140367175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295723.P17746076222140367175

namespace A295723

/-- `Δ[A295730(n+1)]` -/
def P17746076222140367175.Spec : Prop :=
  ∀ n, P17746076222140367175.a n = A295723 n

end A295723

/-!
# A295724: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = 1, a(3) = 2.

The programs for A295724, the canonical program `A295724.P6874627718881574676` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295724 has offset 0).

The definition of A295724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295724.P6874627718881574676`, by `A295724.P6874627718881574676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295724.P6874627718881574676

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295724

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P6874627718881574676.Spec : Prop :=
  ∀ n, P6874627718881574676.a n = A295724 n

theorem P6874627718881574676.correct : P6874627718881574676.Spec := by
  intro n
  simp only [A295724]

end A295724

/-! ## A295724.P12018184498163132289

`A000045(n)+2*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A295724.P12018184498163132289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000045 n + 2 * a (n - 2)

end

end A295724.P12018184498163132289

namespace A295724

/-- `A000045(n)+2*a(n-2)` -/
def P12018184498163132289.Spec : Prop :=
  ∀ n, P12018184498163132289.a n = A295724 n

end A295724

/-! ## A295724.P17059782773252513858

`A295730(n)+A212804(n)`
-/

namespace A295724.P17059782773252513858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + A212804 n

end

end A295724.P17059782773252513858

namespace A295724

/-- `A295730(n)+A212804(n)` -/
def P17059782773252513858.Spec : Prop :=
  ∀ n, P17059782773252513858.a n = A295724 n

end A295724

/-! ## A295724.P725680028919084021

`A295850(n)+A295725(n)`
-/

namespace A295724.P725680028919084021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n + A295725 n

end

end A295724.P725680028919084021

namespace A295724

/-- `A295850(n)+A295725(n)` -/
def P725680028919084021.Spec : Prop :=
  ∀ n, P725680028919084021.a n = A295724 n

end A295724

/-! ## A295724.P4622360843940865752

`A079284(n)-A016116(n)`
-/

namespace A295724.P4622360843940865752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n - A016116 n

end

end A295724.P4622360843940865752

namespace A295724

/-- `A079284(n)-A016116(n)` -/
def P4622360843940865752.Spec : Prop :=
  ∀ n, P4622360843940865752.a n = A295724 n

end A295724

/-! ## A295724.P2152497917169310803

`A295728(n)-A152163(n)`
-/

namespace A295724.P2152497917169310803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n - A152163 n

end

end A295724.P2152497917169310803

namespace A295724

/-- `A295728(n)-A152163(n)` -/
def P2152497917169310803.Spec : Prop :=
  ∀ n, P2152497917169310803.a n = A295724 n

end A295724

/-! ## A295724.P9459680346746199780

`A005673(n)+A000071(n+1)`
-/

namespace A295724.P9459680346746199780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 n + A000071 (n + 1)

end

end A295724.P9459680346746199780

namespace A295724

/-- `A005673(n)+A000071(n+1)` -/
def P9459680346746199780.Spec : Prop :=
  ∀ n, P9459680346746199780.a n = A295724 n

end A295724

/-! ## A295724.P13214488113314902423

`A005672(n+1)+A005672(n)`
-/

namespace A295724.P13214488113314902423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + A005672 n

end

end A295724.P13214488113314902423

namespace A295724

/-- `A005672(n+1)+A005672(n)` -/
def P13214488113314902423.Spec : Prop :=
  ∀ n, P13214488113314902423.a n = A295724 n

end A295724

/-! ## A295724.P14198643622226859302

`A001911(n)+1-A052955(n)`
-/

namespace A295724.P14198643622226859302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - A052955 n)

end

end A295724.P14198643622226859302

namespace A295724

/-- `A001911(n)+1-A052955(n)` -/
def P14198643622226859302.Spec : Prop :=
  ∀ n, P14198643622226859302.a n = A295724 n

end A295724

/-! ## A295724.P6889165136640439961

`A071679(n+1)-A063759(n)`
-/

namespace A295724.P6889165136640439961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - A063759 n

end

end A295724.P6889165136640439961

namespace A295724

/-- `A071679(n+1)-A063759(n)` -/
def P6889165136640439961.Spec : Prop :=
  ∀ n, P6889165136640439961.a n = A295724 n

end A295724

/-! ## A295724.P5799251949315950879

`A079289(n+1)-A060546(n)`
-/

namespace A295724.P5799251949315950879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (n + 1) - A060546 n

end

end A295724.P5799251949315950879

namespace A295724

/-- `A079289(n+1)-A060546(n)` -/
def P5799251949315950879.Spec : Prop :=
  ∀ n, P5799251949315950879.a n = A295724 n

end A295724

/-! ## A295724.P13515526381056085757

`A020695(n)-A164090(n+1)`
-/

namespace A295724.P13515526381056085757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A164090 (n + 1)

end

end A295724.P13515526381056085757

namespace A295724

/-- `A020695(n)-A164090(n+1)` -/
def P13515526381056085757.Spec : Prop :=
  ∀ n, P13515526381056085757.a n = A295724 n

end A295724

/-! ## A295724.P5815501558586208221

`A018910(n)-A209722(n+1)`
-/

namespace A295724.P5815501558586208221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - A209722 (n + 1)

end

end A295724.P5815501558586208221

namespace A295724

/-- `A018910(n)-A209722(n+1)` -/
def P5815501558586208221.Spec : Prop :=
  ∀ n, P5815501558586208221.a n = A295724 n

end A295724

/-! ## A295724.P84042302221572993

`A048577(n)-A209721(n+1)`
-/

namespace A295724.P84042302221572993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A209721 (n + 1)

end

end A295724.P84042302221572993

namespace A295724

/-- `A048577(n)-A209721(n+1)` -/
def P84042302221572993.Spec : Prop :=
  ∀ n, P84042302221572993.a n = A295724 n

end A295724

/-! ## A295724.P8952428646093323560

`A000071(n+3)-A052955(n)`
-/

namespace A295724.P8952428646093323560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A052955 n

end

end A295724.P8952428646093323560

namespace A295724

/-- `A000071(n+3)-A052955(n)` -/
def P8952428646093323560.Spec : Prop :=
  ∀ n, P8952428646093323560.a n = A295724 n

end A295724

/-! ## A295724.P5506994064997444552

`∑[∑[A212804(n)]]-A052955(n)`
-/

namespace A295724.P5506994064997444552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052955 n

end

end A295724.P5506994064997444552

namespace A295724

/-- `∑[∑[A212804(n)]]-A052955(n)` -/
def P5506994064997444552.Spec : Prop :=
  ∀ n, P5506994064997444552.a n = A295724 n

end A295724

/-! ## A295724.P849761059642367304

`∑[A000045(n+1)]-A052955(n)`
-/

namespace A295724.P849761059642367304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052955 n

end

end A295724.P849761059642367304

namespace A295724

/-- `∑[A000045(n+1)]-A052955(n)` -/
def P849761059642367304.Spec : Prop :=
  ∀ n, P849761059642367304.a n = A295724 n

end A295724

/-! ## A295724.P4357005575515552255

`A079289(n+1)-A016116(n+1)`
-/

namespace A295724.P4357005575515552255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (n + 1) - A016116 (n + 1)

end

end A295724.P4357005575515552255

namespace A295724

/-- `A079289(n+1)-A016116(n+1)` -/
def P4357005575515552255.Spec : Prop :=
  ∀ n, P4357005575515552255.a n = A295724 n

end A295724

/-! ## A295724.P4739830380849161160

`A163227(2*(n+1))-A052955(n)`
-/

namespace A295724.P4739830380849161160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (2 * (n + 1)) - A052955 n

end

end A295724.P4739830380849161160

namespace A295724

/-- `A163227(2*(n+1))-A052955(n)` -/
def P4739830380849161160.Spec : Prop :=
  ∀ n, P4739830380849161160.a n = A295724 n

end A295724

/-! ## A295724.P4767959897772643032

`A005672(n)-(A000045(n)-A295723(n))`
-/

namespace A295724.P4767959897772643032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n - (A000045 n - A295723 n)

end

end A295724.P4767959897772643032

namespace A295724

/-- `A005672(n)-(A000045(n)-A295723(n))` -/
def P4767959897772643032.Spec : Prop :=
  ∀ n, P4767959897772643032.a n = A295724 n

end A295724

/-!
# A295725: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = -1, a(3) = 1.

The programs for A295725, the canonical program `A295725.P15870256712798276768` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295725 has offset 0).

The definition of A295725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295725.P15870256712798276768`, by `A295725.P15870256712798276768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295725.P15870256712798276768

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295725

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P15870256712798276768.Spec : Prop :=
  ∀ n, P15870256712798276768.a n = A295725 n

theorem P15870256712798276768.correct : P15870256712798276768.Spec := by
  intro n
  simp only [A295725]

end A295725

/-! ## A295725.P2994831321887023527

`A212804(n)-A077957(n)`
-/

namespace A295725.P2994831321887023527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A077957 n

end

end A295725.P2994831321887023527

namespace A295725

/-- `A212804(n)-A077957(n)` -/
def P2994831321887023527.Spec : Prop :=
  ∀ n, P2994831321887023527.a n = A295725 n

end A295725

/-! ## A295725.P14646129512047447196

`A212804(n)-Δ[A016116(n+1)]`
-/

namespace A295725.P14646129512047447196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - (f1 (n + 1) - f1 n)

end

end A295725.P14646129512047447196

namespace A295725

/-- `A212804(n)-Δ[A016116(n+1)]` -/
def P14646129512047447196.Spec : Prop :=
  ∀ n, P14646129512047447196.a n = A295725 n

end A295725

/-! ## A295725.P4684882318153070925

`Δ[A016116(n)]-(A016116(n)-A212804(n))`
-/

namespace A295725.P4684882318153070925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A016116 n - A212804 n)

end

end A295725.P4684882318153070925

namespace A295725

/-- `Δ[A016116(n)]-(A016116(n)-A212804(n))` -/
def P4684882318153070925.Spec : Prop :=
  ∀ n, P4684882318153070925.a n = A295725 n

end A295725

/-! ## A295725.P3166570134072577098

`A152166(n+1)+A152166(n)-A152163(n+1)`
-/

namespace A295725.P3166570134072577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (n + 1) + (A152166 n - A152163 (n + 1))

end

end A295725.P3166570134072577098

namespace A295725

/-- `A152166(n+1)+A152166(n)-A152163(n+1)` -/
def P3166570134072577098.Spec : Prop :=
  ∀ n, P3166570134072577098.a n = A295725 n

end A295725

/-! ## A295725.P5778030849168827620

`A135530(A109613(n))+A212804(n)-A135530(n)`
-/

namespace A295725.P5778030849168827620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A109613 n).toNat + (A212804 n - A135530 n)

end

end A295725.P5778030849168827620

namespace A295725

/-- `A135530(A109613(n))+A212804(n)-A135530(n)` -/
def P5778030849168827620.Spec : Prop :=
  ∀ n, P5778030849168827620.a n = A295725 n

end A295725

/-! ## A295725.P8977689536017205613

`A000045(n)-A016116(n)-a(n-1)` with `a(0)=0`
-/

namespace A295725.P8977689536017205613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 n - A016116 n - a (n - 1)

end

end A295725.P8977689536017205613

namespace A295725

/-- `A000045(n)-A016116(n)-a(n-1)` -/
def P8977689536017205613.Spec : Prop :=
  ∀ n, P8977689536017205613.a n = A295725 n

end A295725

/-! ## A295725.P6274569103798639448

`Δ[A174959(n)]`
-/

namespace A295725.P6274569103798639448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P6274569103798639448

namespace A295725

/-- `Δ[A174959(n)]` -/
def P6274569103798639448.Spec : Prop :=
  ∀ n, P6274569103798639448.a n = A295725 n

end A295725

/-! ## A295725.P17789000027187911613

`Δ[A001611(n)-A060546(n)]`
-/

namespace A295725.P17789000027187911613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P17789000027187911613

namespace A295725

/-- `Δ[A001611(n)-A060546(n)]` -/
def P17789000027187911613.Spec : Prop :=
  ∀ n, P17789000027187911613.a n = A295725 n

end A295725

/-! ## A295725.P11262817479485848829

`A174959(n+1)-A174959(n)`
-/

namespace A295725.P11262817479485848829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 (n + 1) - A174959 n

end

end A295725.P11262817479485848829

namespace A295725

/-- `A174959(n+1)-A174959(n)` -/
def P11262817479485848829.Spec : Prop :=
  ∀ n, P11262817479485848829.a n = A295725 n

end A295725

/-! ## A295725.P13442444454296593790

`A097896(n+1)-A295619(n)`
-/

namespace A295725.P13442444454296593790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097896 (n + 1) - A295619 n

end

end A295725.P13442444454296593790

namespace A295725

/-- `A097896(n+1)-A295619(n)` -/
def P13442444454296593790.Spec : Prop :=
  ∀ n, P13442444454296593790.a n = A295725 n

end A295725

/-! ## A295725.P639669053033474292

`Δ[A001611(n)-∑[A131575(n)]]`
-/

namespace A295725.P639669053033474292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P639669053033474292

namespace A295725

/-- `Δ[A001611(n)-∑[A131575(n)]]` -/
def P639669053033474292.Spec : Prop :=
  ∀ n, P639669053033474292.a n = A295725 n

end A295725

/-! ## A295725.P12987949347538669500

`Δ[A000045(n)-Δ[A027383(n)]]`
-/

namespace A295725.P12987949347538669500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P12987949347538669500

namespace A295725

/-- `Δ[A000045(n)-Δ[A027383(n)]]` -/
def P12987949347538669500.Spec : Prop :=
  ∀ n, P12987949347538669500.a n = A295725 n

end A295725

/-! ## A295725.P2512526445902748978

`Δ[A001611(n)-Δ[A027383(n)]]`
-/

namespace A295725.P2512526445902748978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P2512526445902748978

namespace A295725

/-- `Δ[A001611(n)-Δ[A027383(n)]]` -/
def P2512526445902748978.Spec : Prop :=
  ∀ n, P2512526445902748978.a n = A295725 n

end A295725

/-! ## A295725.P2660243385767504359

`Δ[A000045(n)-A016116(n+1)]`
-/

namespace A295725.P2660243385767504359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P2660243385767504359

namespace A295725

/-- `Δ[A000045(n)-A016116(n+1)]` -/
def P2660243385767504359.Spec : Prop :=
  ∀ n, P2660243385767504359.a n = A295725 n

end A295725

/-! ## A295725.P9779702304530196356

`Δ[A001611(n)-A016116(n+1)]`
-/

namespace A295725.P9779702304530196356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P9779702304530196356

namespace A295725

/-- `Δ[A001611(n)-A016116(n+1)]` -/
def P9779702304530196356.Spec : Prop :=
  ∀ n, P9779702304530196356.a n = A295725 n

end A295725

/-! ## A295725.P15750609198641897385

`Δ[A001611(n)]-A131575(n+1)`
-/

namespace A295725.P15750609198641897385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131575 (n + 1)

end

end A295725.P15750609198641897385

namespace A295725

/-- `Δ[A001611(n)]-A131575(n+1)` -/
def P15750609198641897385.Spec : Prop :=
  ∀ n, P15750609198641897385.a n = A295725 n

end A295725

/-! ## A295725.P4227009779945296860

`Δ[A000045(n)-Δ[A163978(n+1)]]`
-/

namespace A295725.P4227009779945296860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P4227009779945296860

namespace A295725

/-- `Δ[A000045(n)-Δ[A163978(n+1)]]` -/
def P4227009779945296860.Spec : Prop :=
  ∀ n, P4227009779945296860.a n = A295725 n

end A295725

/-! ## A295725.P2207152241834746016

`Δ[A001611(n)-Δ[A163978(n+1)]]`
-/

namespace A295725.P2207152241834746016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295725.P2207152241834746016

namespace A295725

/-- `Δ[A001611(n)-Δ[A163978(n+1)]]` -/
def P2207152241834746016.Spec : Prop :=
  ∀ n, P2207152241834746016.a n = A295725 n

end A295725

/-!
# A295726: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = -1, a(2) = 1, a(3) = 1.

The programs for A295726, the canonical program `A295726.P14168090925821926102` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295726 has offset 0).

The definition of A295726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295726.P14168090925821926102`, by `A295726.P14168090925821926102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295726.P14168090925821926102

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295726

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P14168090925821926102.Spec : Prop :=
  ∀ n, P14168090925821926102.a n = A295726 n

theorem P14168090925821926102.correct : P14168090925821926102.Spec := by
  intro n
  simp only [A295726]

end A295726

/-! ## A295726.P16206769477698791309

`A295732(n)+A077957(n)`
-/

namespace A295726.P16206769477698791309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 n + A077957 n

end

end A295726.P16206769477698791309

namespace A295726

/-- `A295732(n)+A077957(n)` -/
def P16206769477698791309.Spec : Prop :=
  ∀ n, P16206769477698791309.a n = A295726 n

end A295726

/-! ## A295726.P7600854821328427839

`A295857(n)-A000045(n)`
-/

namespace A295726.P7600854821328427839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n - A000045 n

end

end A295726.P7600854821328427839

namespace A295726

/-- `A295857(n)-A000045(n)` -/
def P7600854821328427839.Spec : Prop :=
  ∀ n, P7600854821328427839.a n = A295726 n

end A295726

/-! ## A295726.P16917468603829419369

`A295731(n)-A028892(n)`
-/

namespace A295726.P16917468603829419369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n - A028892 n

end

end A295726.P16917468603829419369

namespace A295726

/-- `A295731(n)-A028892(n)` -/
def P16917468603829419369.Spec : Prop :=
  ∀ n, P16917468603829419369.a n = A295726 n

end A295726

/-! ## A295726.P13140016638884823392

`A295734(n+1)+A295734(n)`
-/

namespace A295726.P13140016638884823392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 (n + 1) + A295734 n

end

end A295726.P13140016638884823392

namespace A295726

/-- `A295734(n+1)+A295734(n)` -/
def P13140016638884823392.Spec : Prop :=
  ∀ n, P13140016638884823392.a n = A295726 n

end A295726

/-! ## A295726.P18427506711270824317

`A295730(n+1)-A077957(n+1)/2`
-/

namespace A295726.P18427506711270824317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295730 (n + 1) : ℚ) - (A077957 (n + 1) : ℚ) / 2

end

end A295726.P18427506711270824317

namespace A295726

/-- `A295730(n+1)-A077957(n+1)/2` -/
def P18427506711270824317.Spec : Prop :=
  ∀ n, P18427506711270824317.a n = (A295726 n : ℚ)

end A295726

/-! ## A295726.P895268775206846667

`A295728(n)+A295730(n)-A005672(n)`
-/

namespace A295726.P895268775206846667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295730 n - A005672 n)

end

end A295726.P895268775206846667

namespace A295726

/-- `A295728(n)+A295730(n)-A005672(n)` -/
def P895268775206846667.Spec : Prop :=
  ∀ n, P895268775206846667.a n = A295726 n

end A295726

/-! ## A295726.P4982452824973283255

`A295735(n)+A295735(n)-A295733(n)`
-/

namespace A295726.P4982452824973283255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + (A295735 n - A295733 n)

end

end A295726.P4982452824973283255

namespace A295726

/-- `A295735(n)+A295735(n)-A295733(n)` -/
def P4982452824973283255.Spec : Prop :=
  ∀ n, P4982452824973283255.a n = A295726 n

end A295726

/-! ## A295726.P2662692328660612960

`A295724(n)+A295724(n)-Δ[A295724(n)]`
-/

namespace A295726.P2662692328660612960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + (A295724 n - (f1 (n + 1) - f1 n))

end

end A295726.P2662692328660612960

namespace A295726

/-- `A295724(n)+A295724(n)-Δ[A295724(n)]` -/
def P2662692328660612960.Spec : Prop :=
  ∀ n, P2662692328660612960.a n = A295726 n

end A295726

/-! ## A295726.P14278363585959511138

`A005672(n+1)+A295724(n)-A000045(n)`
-/

namespace A295726.P14278363585959511138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295724 n - A000045 n)

end

end A295726.P14278363585959511138

namespace A295726

/-- `A005672(n+1)+A295724(n)-A000045(n)` -/
def P14278363585959511138.Spec : Prop :=
  ∀ n, P14278363585959511138.a n = A295726 n

end A295726

/-! ## A295726.P9639418131171862554

`A005672(n+1)+A295735(n)-A005672(n)`
-/

namespace A295726.P9639418131171862554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295735 n - A005672 n)

end

end A295726.P9639418131171862554

namespace A295726

/-- `A005672(n+1)+A295735(n)-A005672(n)` -/
def P9639418131171862554.Spec : Prop :=
  ∀ n, P9639418131171862554.a n = A295726 n

end A295726

/-! ## A295726.P4133028450792239989

`A005672(n+1)+A295731(n)-A295730(n)`
-/

namespace A295726.P4133028450792239989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295731 n - A295730 n)

end

end A295726.P4133028450792239989

namespace A295726

/-- `A005672(n+1)+A295731(n)-A295730(n)` -/
def P4133028450792239989.Spec : Prop :=
  ∀ n, P4133028450792239989.a n = A295726 n

end A295726

/-! ## A295726.P9384216981682687934

`A295728(n)+A295729(n)-A005672(n+1)`
-/

namespace A295726.P9384216981682687934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295729 n - A005672 (n + 1))

end

end A295726.P9384216981682687934

namespace A295726

/-- `A295728(n)+A295729(n)-A005672(n+1)` -/
def P9384216981682687934.Spec : Prop :=
  ∀ n, P9384216981682687934.a n = A295726 n

end A295726

/-! ## A295726.P9564224598639979309

`A295733(n+1)+A295737(n)-A295733(n)`
-/

namespace A295726.P9564224598639979309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (A295737 n - A295733 n)

end

end A295726.P9564224598639979309

namespace A295726

/-- `A295733(n+1)+A295737(n)-A295733(n)` -/
def P9564224598639979309.Spec : Prop :=
  ∀ n, P9564224598639979309.a n = A295726 n

end A295726

/-! ## A295726.P3609436674290372401

`A000071(n+1)+A295857(n)-A000071(n+2)`
-/

namespace A295726.P3609436674290372401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A295857 n - A000071 (n + 2))

end

end A295726.P3609436674290372401

namespace A295726

/-- `A000071(n+1)+A295857(n)-A000071(n+2)` -/
def P3609436674290372401.Spec : Prop :=
  ∀ n, P3609436674290372401.a n = A295726 n

end A295726

/-! ## A295726.P7959417207348792381

`A295719(n)-A000285(n)`
-/

namespace A295726.P7959417207348792381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n - A000285 n

end

end A295726.P7959417207348792381

namespace A295726

/-- `A295719(n)-A000285(n)` -/
def P7959417207348792381.Spec : Prop :=
  ∀ n, P7959417207348792381.a n = A295726 n

end A295726

/-! ## A295726.P13427868197693006910

`A295732(n+1)-A295730(n)`
-/

namespace A295726.P13427868197693006910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - A295730 n

end

end A295726.P13427868197693006910

namespace A295726

/-- `A295732(n+1)-A295730(n)` -/
def P13427868197693006910.Spec : Prop :=
  ∀ n, P13427868197693006910.a n = A295726 n

end A295726

/-! ## A295726.P5530827682949580077

`2*A295735(n)-A295733(n)`
-/

namespace A295726.P5530827682949580077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295735 n - A295733 n

end

end A295726.P5530827682949580077

namespace A295726

/-- `2*A295735(n)-A295733(n)` -/
def P5530827682949580077.Spec : Prop :=
  ∀ n, P5530827682949580077.a n = A295726 n

end A295726

/-! ## A295726.P615595325581616192

`2*A295724(n)-Δ[A295724(n)]`
-/

namespace A295726.P615595325581616192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295724 n - (f1 (n + 1) - f1 n)

end

end A295726.P615595325581616192

namespace A295726

/-- `2*A295724(n)-Δ[A295724(n)]` -/
def P615595325581616192.Spec : Prop :=
  ∀ n, P615595325581616192.a n = A295726 n

end A295726

/-!
# A295727: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = 1, a(2) = 1, a(3) = 1.

The programs for A295727, the canonical program `A295727.P3336808629913119030` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295727 has offset 0).

The definition of A295727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295727.P3336808629913119030`, by `A295727.P3336808629913119030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295727.P3336808629913119030

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295727

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3336808629913119030.Spec : Prop :=
  ∀ n, P3336808629913119030.a n = A295727 n

theorem P3336808629913119030.correct : P3336808629913119030.Spec := by
  intro n
  simp only [A295727]

end A295727

/-! ## A295727.P7865151836478146556

`A295860(n)-A028892(n)`
-/

namespace A295727.P7865151836478146556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 n - A028892 n

end

end A295727.P7865151836478146556

namespace A295727

/-- `A295860(n)-A028892(n)` -/
def P7865151836478146556.Spec : Prop :=
  ∀ n, P7865151836478146556.a n = A295727 n

end A295727

/-! ## A295727.P10184922658767205976

`A016116(n)+A295860(n)-A000045(n)`
-/

namespace A295727.P10184922658767205976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A295860 n - A000045 n)

end

end A295727.P10184922658767205976

namespace A295727

/-- `A016116(n)+A295860(n)-A000045(n)` -/
def P10184922658767205976.Spec : Prop :=
  ∀ n, P10184922658767205976.a n = A295727 n

end A295727

/-! ## A295727.P12447824508961271642

`Δ[A295723(abs(1-n))]`
-/

namespace A295727.P12447824508961271642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295727.P12447824508961271642

namespace A295727

/-- `Δ[A295723(abs(1-n))]` -/
def P12447824508961271642.Spec : Prop :=
  ∀ n, P12447824508961271642.a n = A295727 n

end A295727

/-! ## A295727.P13556250679473312982

`Δ[A000211(n)-A016116(n)]`
-/

namespace A295727.P13556250679473312982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295727.P13556250679473312982

namespace A295727

/-- `Δ[A000211(n)-A016116(n)]` -/
def P13556250679473312982.Spec : Prop :=
  ∀ n, P13556250679473312982.a n = A295727 n

end A295727

/-! ## A295727.P10214391979832001339

`A022086(n)-A097896(n+1)`
-/

namespace A295727.P10214391979832001339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - A097896 (n + 1)

end

end A295727.P10214391979832001339

namespace A295727

/-- `A022086(n)-A097896(n+1)` -/
def P10214391979832001339.Spec : Prop :=
  ∀ n, P10214391979832001339.a n = A295727 n

end A295727

/-! ## A295727.P9565258324422924966

`A000045(n)+A295733(n)-A295737(n)`
-/

namespace A295727.P9565258324422924966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295733 n - A295737 n)

end

end A295727.P9565258324422924966

namespace A295727

/-- `A000045(n)+A295733(n)-A295737(n)` -/
def P9565258324422924966.Spec : Prop :=
  ∀ n, P9565258324422924966.a n = A295727 n

end A295727

/-! ## A295727.P15467459130723372452

`A005672(n)+A295730(n)-A295733(n)`
-/

namespace A295727.P15467459130723372452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295730 n - A295733 n)

end

end A295727.P15467459130723372452

namespace A295727

/-- `A005672(n)+A295730(n)-A295733(n)` -/
def P15467459130723372452.Spec : Prop :=
  ∀ n, P15467459130723372452.a n = A295727 n

end A295727

/-! ## A295727.P7140973404216339556

`A005672(n+1)+A005672(n+1)-A295728(n)`
-/

namespace A295727.P7140973404216339556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A005672 (n + 1) - A295728 n)

end

end A295727.P7140973404216339556

namespace A295727

/-- `A005672(n+1)+A005672(n+1)-A295728(n)` -/
def P7140973404216339556.Spec : Prop :=
  ∀ n, P7140973404216339556.a n = A295727 n

end A295727

/-! ## A295727.P13090353723105978030

`A295721(n)-A295723(n)`
-/

namespace A295727.P13090353723105978030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 n - A295723 n

end

end A295727.P13090353723105978030

namespace A295727

/-- `A295721(n)-A295723(n)` -/
def P13090353723105978030.Spec : Prop :=
  ∀ n, P13090353723105978030.a n = A295727 n

end A295727

/-! ## A295727.P18234009112493065206

`2*A295730(n)-A295732(n)`
-/

namespace A295727.P18234009112493065206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295730 n - A295732 n

end

end A295727.P18234009112493065206

namespace A295727

/-- `2*A295730(n)-A295732(n)` -/
def P18234009112493065206.Spec : Prop :=
  ∀ n, P18234009112493065206.a n = A295727 n

end A295727

/-! ## A295727.P9402321663649914445

`A295717(n)-(A000045(n)+A000032(n))`
-/

namespace A295727.P9402321663649914445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - (A000045 n + A000032 n)

end

end A295727.P9402321663649914445

namespace A295727

/-- `A295717(n)-(A000045(n)+A000032(n))` -/
def P9402321663649914445.Spec : Prop :=
  ∀ n, P9402321663649914445.a n = A295727 n

end A295727

/-! ## A295727.P17622325399732404159

`A295721(n)-(A005672(n+1)+A000045(n))`
-/

namespace A295727.P17622325399732404159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 n - (A005672 (n + 1) + A000045 n)

end

end A295727.P17622325399732404159

namespace A295727

/-- `A295721(n)-(A005672(n+1)+A000045(n))` -/
def P17622325399732404159.Spec : Prop :=
  ∀ n, P17622325399732404159.a n = A295727 n

end A295727

/-! ## A295727.P919379119997311321

`A005672(n+1)+A295730(n)-A295735(n)`
-/

namespace A295727.P919379119997311321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295730 n - A295735 n)

end

end A295727.P919379119997311321

namespace A295727

/-- `A005672(n+1)+A295730(n)-A295735(n)` -/
def P919379119997311321.Spec : Prop :=
  ∀ n, P919379119997311321.a n = A295727 n

end A295727

/-! ## A295727.P1978137864461396897

`A295730(n+1)-(A295728(n)+A295725(n))`
-/

namespace A295727.P1978137864461396897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) - (A295728 n + A295725 n)

end

end A295727.P1978137864461396897

namespace A295727

/-- `A295730(n+1)-(A295728(n)+A295725(n))` -/
def P1978137864461396897.Spec : Prop :=
  ∀ n, P1978137864461396897.a n = A295727 n

end A295727

/-! ## A295727.P5609708219328411788

`A295723(n)+A295730(n)-A295730(n+1)`
-/

namespace A295727.P5609708219328411788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + (A295730 n - A295730 (n + 1))

end

end A295727.P5609708219328411788

namespace A295727

/-- `A295723(n)+A295730(n)-A295730(n+1)` -/
def P5609708219328411788.Spec : Prop :=
  ∀ n, P5609708219328411788.a n = A295727 n

end A295727

/-! ## A295727.P869031436011259502

`A295717(n)-(A000045(n+1)+A000045(n+1))`
-/

namespace A295727.P869031436011259502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - (A000045 (n + 1) + A000045 (n + 1))

end

end A295727.P869031436011259502

namespace A295727

/-- `A295717(n)-(A000045(n+1)+A000045(n+1))` -/
def P869031436011259502.Spec : Prop :=
  ∀ n, P869031436011259502.a n = A295727 n

end A295727

/-! ## A295727.P12838897906972798159

`Δ[Δ[A295730(n)]]`
-/

namespace A295727.P12838897906972798159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295727.P12838897906972798159

namespace A295727

/-- `Δ[Δ[A295730(n)]]` -/
def P12838897906972798159.Spec : Prop :=
  ∀ n, P12838897906972798159.a n = A295727 n

end A295727

/-! ## A295727.P15285202157277303315

`Δ[Δ[A001610(n)-A052955(n)]]`
-/

namespace A295727.P15285202157277303315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A052955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295727.P15285202157277303315

namespace A295727

/-- `Δ[Δ[A001610(n)-A052955(n)]]` -/
def P15285202157277303315.Spec : Prop :=
  ∀ n, P15285202157277303315.a n = A295727 n

end A295727

/-!
# A295728: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = -1, a(2) = 1, a(3) = 1.

The programs for A295728, the canonical program `A295728.P2238248468902708364` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295728 has offset 0).

The definition of A295728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295728.P2238248468902708364`, by `A295728.P2238248468902708364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295728.P2238248468902708364

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295728

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P2238248468902708364.Spec : Prop :=
  ∀ n, P2238248468902708364.a n = A295728 n

theorem P2238248468902708364.correct : P2238248468902708364.Spec := by
  intro n
  simp only [A295728]

end A295728

/-! ## A295728.P702139975542121692

`A295733(n)+A077957(n)`
-/

namespace A295728.P702139975542121692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 n + A077957 n

end

end A295728.P702139975542121692

namespace A295728

/-- `A295733(n)+A077957(n)` -/
def P702139975542121692.Spec : Prop :=
  ∀ n, P702139975542121692.a n = A295728 n

end A295728

/-! ## A295728.P11836682919229437693

`A295724(n)+A152163(n)`
-/

namespace A295728.P11836682919229437693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A152163 n

end

end A295728.P11836682919229437693

namespace A295728

/-- `A295724(n)+A152163(n)` -/
def P11836682919229437693.Spec : Prop :=
  ∀ n, P11836682919229437693.a n = A295728 n

end A295728

/-! ## A295728.P7164478435460084817

`A013655(n)-A164090(n+1)`
-/

namespace A295728.P7164478435460084817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - A164090 (n + 1)

end

end A295728.P7164478435460084817

namespace A295728

/-- `A013655(n)-A164090(n+1)` -/
def P7164478435460084817.Spec : Prop :=
  ∀ n, P7164478435460084817.a n = A295728 n

end A295728

/-! ## A295728.P4345552461245511894

`A295724(n)-Δ[Δ[A000045(n)]]`
-/

namespace A295728.P4345552461245511894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - (f1 (n + 1) - f1 n)

end

end A295728.P4345552461245511894

namespace A295728

/-- `A295724(n)-Δ[Δ[A000045(n)]]` -/
def P4345552461245511894.Spec : Prop :=
  ∀ n, P4345552461245511894.a n = A295728 n

end A295728

/-! ## A295728.P9788681236016225598

`A295860(n+1)-Δ[A016116(n)]`
-/

namespace A295728.P9788681236016225598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295728.P9788681236016225598

namespace A295728

/-- `A295860(n+1)-Δ[A016116(n)]` -/
def P9788681236016225598.Spec : Prop :=
  ∀ n, P9788681236016225598.a n = A295728 n

end A295728

/-! ## A295728.P513279118976233446

`A028892(n+1)+A000032(n)-A016116(n)`
-/

namespace A295728.P513279118976233446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (A000032 n - A016116 n)

end

end A295728.P513279118976233446

namespace A295728

/-- `A028892(n+1)+A000032(n)-A016116(n)` -/
def P513279118976233446.Spec : Prop :=
  ∀ n, P513279118976233446.a n = A295728 n

end A295728

/-! ## A295728.P5153674299210638514

`A000071(n+1)+A000032(n)-A052955(n)`
-/

namespace A295728.P5153674299210638514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A000032 n - A052955 n)

end

end A295728.P5153674299210638514

namespace A295728

/-- `A000071(n+1)+A000032(n)-A052955(n)` -/
def P5153674299210638514.Spec : Prop :=
  ∀ n, P5153674299210638514.a n = A295728 n

end A295728

/-! ## A295728.P6470277190916711585

`A005672(n+1)+A005672(n+1)-A295727(n)`
-/

namespace A295728.P6470277190916711585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A005672 (n + 1) - A295727 n)

end

end A295728.P6470277190916711585

namespace A295728

/-- `A005672(n+1)+A005672(n+1)-A295727(n)` -/
def P6470277190916711585.Spec : Prop :=
  ∀ n, P6470277190916711585.a n = A295728 n

end A295728

/-! ## A295728.P9533128198294188332

`A295860(n+1)+A016116(n)-A016116(n+1)`
-/

namespace A295728.P9533128198294188332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 1) + (A016116 n - A016116 (n + 1))

end

end A295728.P9533128198294188332

namespace A295728

/-- `A295860(n+1)+A016116(n)-A016116(n+1)` -/
def P9533128198294188332.Spec : Prop :=
  ∀ n, P9533128198294188332.a n = A295728 n

end A295728

/-! ## A295728.P4483078124518702163

`A000045(n+1)+A000032(n)-A029744(n+2)`
-/

namespace A295728.P4483078124518702163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000032 n - A029744 (n + 2))

end

end A295728.P4483078124518702163

namespace A295728

/-- `A000045(n+1)+A000032(n)-A029744(n+2)` -/
def P4483078124518702163.Spec : Prop :=
  ∀ n, P4483078124518702163.a n = A295728 n

end A295728

/-! ## A295728.P3897144887079206501

`A295735(n)-A028892(n)`
-/

namespace A295728.P3897144887079206501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n - A028892 n

end

end A295728.P3897144887079206501

namespace A295728

/-- `A295735(n)-A028892(n)` -/
def P3897144887079206501.Spec : Prop :=
  ∀ n, P3897144887079206501.a n = A295728 n

end A295728

/-! ## A295728.P227114956661013029

`A391682(n+1)-A022086(n)`
-/

namespace A295728.P227114956661013029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) - A022086 n

end

end A295728.P227114956661013029

namespace A295728

/-- `A391682(n+1)-A022086(n)` -/
def P227114956661013029.Spec : Prop :=
  ∀ n, P227114956661013029.a n = A295728 n

end A295728

/-! ## A295728.P1713852981631740371

`A295732(n)-2*A028892(n)`
-/

namespace A295728.P1713852981631740371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 n - 2 * A028892 n

end

end A295728.P1713852981631740371

namespace A295728

/-- `A295732(n)-2*A028892(n)` -/
def P1713852981631740371.Spec : Prop :=
  ∀ n, P1713852981631740371.a n = A295728 n

end A295728

/-! ## A295728.P5439747265595189096

`A079284(n)+A079284(n)-A295717(n)`
-/

namespace A295728.P5439747265595189096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n + (A079284 n - A295717 n)

end

end A295728.P5439747265595189096

namespace A295728

/-- `A079284(n)+A079284(n)-A295717(n)` -/
def P5439747265595189096.Spec : Prop :=
  ∀ n, P5439747265595189096.a n = A295728 n

end A295728

/-! ## A295728.P13276351986971142890

`A005672(n)+A295726(n)-A295730(n)`
-/

namespace A295728.P13276351986971142890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295726 n - A295730 n)

end

end A295728.P13276351986971142890

namespace A295728

/-- `A005672(n)+A295726(n)-A295730(n)` -/
def P13276351986971142890.Spec : Prop :=
  ∀ n, P13276351986971142890.a n = A295728 n

end A295728

/-! ## A295728.P5216319057264140967

`A295735(n)+A295735(n)-A295732(n)`
-/

namespace A295728.P5216319057264140967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + (A295735 n - A295732 n)

end

end A295728.P5216319057264140967

namespace A295728

/-- `A295735(n)+A295735(n)-A295732(n)` -/
def P5216319057264140967.Spec : Prop :=
  ∀ n, P5216319057264140967.a n = A295728 n

end A295728

/-! ## A295728.P1563080384711373851

`A005672(n+1)+A295735(n)-A295730(n)`
-/

namespace A295728.P1563080384711373851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295735 n - A295730 n)

end

end A295728.P1563080384711373851

namespace A295728

/-- `A005672(n+1)+A295735(n)-A295730(n)` -/
def P1563080384711373851.Spec : Prop :=
  ∀ n, P1563080384711373851.a n = A295728 n

end A295728

/-! ## A295728.P9009316238081208877

`2*A079284(n)-A295717(n)`
-/

namespace A295728.P9009316238081208877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079284 n - A295717 n

end

end A295728.P9009316238081208877

namespace A295728

/-- `2*A079284(n)-A295717(n)` -/
def P9009316238081208877.Spec : Prop :=
  ∀ n, P9009316238081208877.a n = A295728 n

end A295728

/-!
# A295729: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = 0, a(2) = 1, a(3) = 1.

The programs for A295729, the canonical program `A295729.P6866657277444082549` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295729 has offset 0).

The definition of A295729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295729.P6866657277444082549`, by `A295729.P6866657277444082549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295729.P6866657277444082549

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295729

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P6866657277444082549.Spec : Prop :=
  ∀ n, P6866657277444082549.a n = A295729 n

theorem P6866657277444082549.correct : P6866657277444082549.Spec := by
  intro n
  simp only [A295729]

end A295729

/-! ## A295729.P5852915631538374338

`A295850(n)+A028892(n)`
-/

namespace A295729.P5852915631538374338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n + A028892 n

end

end A295729.P5852915631538374338

namespace A295729

/-- `A295850(n)+A028892(n)` -/
def P5852915631538374338.Spec : Prop :=
  ∀ n, P5852915631538374338.a n = A295729 n

end A295729

/-! ## A295729.P16116882841755148744

`A295858(n)-A028892(n)`
-/

namespace A295729.P16116882841755148744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 n - A028892 n

end

end A295729.P16116882841755148744

namespace A295729

/-- `A295858(n)-A028892(n)` -/
def P16116882841755148744.Spec : Prop :=
  ∀ n, P16116882841755148744.a n = A295729 n

end A295729

/-! ## A295729.P1938412567435814062

`A295856(n)-A077957(n)`
-/

namespace A295729.P1938412567435814062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n - A077957 n

end

end A295729.P1938412567435814062

namespace A295729

/-- `A295856(n)-A077957(n)` -/
def P1938412567435814062.Spec : Prop :=
  ∀ n, P1938412567435814062.a n = A295729 n

end A295729

/-! ## A295729.P2721063003542502174

`A295717(n)-A164090(n+1)`
-/

namespace A295729.P2721063003542502174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - A164090 (n + 1)

end

end A295729.P2721063003542502174

namespace A295729

/-- `A295717(n)-A164090(n+1)` -/
def P2721063003542502174.Spec : Prop :=
  ∀ n, P2721063003542502174.a n = A295729 n

end A295729

/-! ## A295729.P17076102118235221028

`A000285(n)-Δ[A090989(n+2)]`
-/

namespace A295729.P17076102118235221028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - (f1 (n + 1) - f1 n)

end

end A295729.P17076102118235221028

namespace A295729

/-- `A000285(n)-Δ[A090989(n+2)]` -/
def P17076102118235221028.Spec : Prop :=
  ∀ n, P17076102118235221028.a n = A295729 n

end A295729

/-! ## A295729.P6561983786513663547

`A295724(n+1)-A295727(n+1)`
-/

namespace A295729.P6561983786513663547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - A295727 (n + 1)

end

end A295729.P6561983786513663547

namespace A295729

/-- `A295724(n+1)-A295727(n+1)` -/
def P6561983786513663547.Spec : Prop :=
  ∀ n, P6561983786513663547.a n = A295729 n

end A295729

/-! ## A295729.P5254972251069846888

`A295737(n+1)-A295725(n+1)`
-/

namespace A295729.P5254972251069846888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) - A295725 (n + 1)

end

end A295729.P5254972251069846888

namespace A295729

/-- `A295737(n+1)-A295725(n+1)` -/
def P5254972251069846888.Spec : Prop :=
  ∀ n, P5254972251069846888.a n = A295729 n

end A295729

/-! ## A295729.P12734233970364103030

`A295860(n+2)-A000045(n+1)`
-/

namespace A295729.P12734233970364103030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 2) - A000045 (n + 1)

end

end A295729.P12734233970364103030

namespace A295729

/-- `A295860(n+2)-A000045(n+1)` -/
def P12734233970364103030.Spec : Prop :=
  ∀ n, P12734233970364103030.a n = A295729 n

end A295729

/-! ## A295729.P11629251179663319305

`A005672(n)+A295730(n)-A295725(n)`
-/

namespace A295729.P11629251179663319305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295730 n - A295725 n)

end

end A295729.P11629251179663319305

namespace A295729

/-- `A005672(n)+A295730(n)-A295725(n)` -/
def P11629251179663319305.Spec : Prop :=
  ∀ n, P11629251179663319305.a n = A295729 n

end A295729

/-! ## A295729.P14811449870019803414

`A005672(n+1)+A295730(n)-A005672(n)`
-/

namespace A295729.P14811449870019803414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295730 n - A005672 n)

end

end A295729.P14811449870019803414

namespace A295729

/-- `A005672(n+1)+A295730(n)-A005672(n)` -/
def P14811449870019803414.Spec : Prop :=
  ∀ n, P14811449870019803414.a n = A295729 n

end A295729

/-! ## A295729.P4901007808249469151

`A005672(n+1)+A295726(n)-A295728(n)`
-/

namespace A295729.P4901007808249469151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295726 n - A295728 n)

end

end A295729.P4901007808249469151

namespace A295729

/-- `A005672(n+1)+A295726(n)-A295728(n)` -/
def P4901007808249469151.Spec : Prop :=
  ∀ n, P4901007808249469151.a n = A295729 n

end A295729

/-! ## A295729.P12280705762952565413

`A005672(n+1)+A295723(n)-A000045(n+1)`
-/

namespace A295729.P12280705762952565413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295723 n - A000045 (n + 1))

end

end A295729.P12280705762952565413

namespace A295729

/-- `A005672(n+1)+A295723(n)-A000045(n+1)` -/
def P12280705762952565413.Spec : Prop :=
  ∀ n, P12280705762952565413.a n = A295729 n

end A295729

/-! ## A295729.P4159025029310952376

`A295733(n+1)+A000045(n)-A005672(n+1)`
-/

namespace A295729.P4159025029310952376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (A000045 n - A005672 (n + 1))

end

end A295729.P4159025029310952376

namespace A295729

/-- `A295733(n+1)+A000045(n)-A005672(n+1)` -/
def P4159025029310952376.Spec : Prop :=
  ∀ n, P4159025029310952376.a n = A295729 n

end A295729

/-! ## A295729.P8826071893747895821

`A295730(n+1)+A000045(n)-A295727(n+1)`
-/

namespace A295729.P8826071893747895821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A000045 n - A295727 (n + 1))

end

end A295729.P8826071893747895821

namespace A295729

/-- `A295730(n+1)+A000045(n)-A295727(n+1)` -/
def P8826071893747895821.Spec : Prop :=
  ∀ n, P8826071893747895821.a n = A295729 n

end A295729

/-! ## A295729.P3870977512130449760

`A000045(n+1)+A000032(n+1)-A295718(n+1)`
-/

namespace A295729.P3870977512130449760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000032 (n + 1) - A295718 (n + 1))

end

end A295729.P3870977512130449760

namespace A295729

/-- `A000045(n+1)+A000032(n+1)-A295718(n+1)` -/
def P3870977512130449760.Spec : Prop :=
  ∀ n, P3870977512130449760.a n = A295729 n

end A295729

/-! ## A295729.P7072557990239300544

`A295725(n+1)+A295728(n+1)-A005672(n+1)`
-/

namespace A295729.P7072557990239300544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (n + 1) + (A295728 (n + 1) - A005672 (n + 1))

end

end A295729.P7072557990239300544

namespace A295729

/-- `A295725(n+1)+A295728(n+1)-A005672(n+1)` -/
def P7072557990239300544.Spec : Prop :=
  ∀ n, P7072557990239300544.a n = A295729 n

end A295729

/-! ## A295729.P6632201735802886734

`A295732(n+1)-A295735(n)`
-/

namespace A295729.P6632201735802886734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - A295735 n

end

end A295729.P6632201735802886734

namespace A295729

/-- `A295732(n+1)-A295735(n)` -/
def P6632201735802886734.Spec : Prop :=
  ∀ n, P6632201735802886734.a n = A295729 n

end A295729

/-! ## A295729.P2805014898866279556

`A028892(n+1)+Δ[A295735(n)]`
-/

namespace A295729.P2805014898866279556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (f1 (n + 1) - f1 n)

end

end A295729.P2805014898866279556

namespace A295729

/-- `A028892(n+1)+Δ[A295735(n)]` -/
def P2805014898866279556.Spec : Prop :=
  ∀ n, P2805014898866279556.a n = A295729 n

end A295729

/-!
# A295730: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = 0, a(2) = 0, a(3) = 1.

The programs for A295730, the canonical program `A295730.P16489745520247904694` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295730 has offset 0).

The definition of A295730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295730.P16489745520247904694`, by `A295730.P16489745520247904694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295730.P16489745520247904694

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295730

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P16489745520247904694.Spec : Prop :=
  ∀ n, P16489745520247904694.a n = A295730 n

theorem P16489745520247904694.correct : P16489745520247904694.Spec := by
  intro n
  simp only [A295730]

end A295730

/-! ## A295730.P11658654846776299844

`A001610(n)-A052955(n)`
-/

namespace A295730.P11658654846776299844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A052955 n

end

end A295730.P11658654846776299844

namespace A295730

/-- `A001610(n)-A052955(n)` -/
def P11658654846776299844.Spec : Prop :=
  ∀ n, P11658654846776299844.a n = A295730 n

end A295730

/-! ## A295730.P6408703631467433835

`A295723(n)-A016116(n)`
-/

namespace A295730.P6408703631467433835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - A016116 n

end

end A295730.P6408703631467433835

namespace A295730

/-- `A295723(n)-A016116(n)` -/
def P6408703631467433835.Spec : Prop :=
  ∀ n, P6408703631467433835.a n = A295730 n

end A295730

/-! ## A295730.P7107727682585895641

`A295850(n)-A077957(n)`
-/

namespace A295730.P7107727682585895641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n - A077957 n

end

end A295730.P7107727682585895641

namespace A295730

/-- `A295850(n)-A077957(n)` -/
def P7107727682585895641.Spec : Prop :=
  ∀ n, P7107727682585895641.a n = A295730 n

end A295730

/-! ## A295730.P14886257616086609336

`A295724(n)-A212804(n)`
-/

namespace A295730.P14886257616086609336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - A212804 n

end

end A295730.P14886257616086609336

namespace A295730

/-- `A295724(n)-A212804(n)` -/
def P14886257616086609336.Spec : Prop :=
  ∀ n, P14886257616086609336.a n = A295730 n

end A295730

/-! ## A295730.P2416656159537841915

`A295724(n)-Δ[A000045(n)]`
-/

namespace A295730.P2416656159537841915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - (f1 (n + 1) - f1 n)

end

end A295730.P2416656159537841915

namespace A295730

/-- `A295724(n)-Δ[A000045(n)]` -/
def P2416656159537841915.Spec : Prop :=
  ∀ n, P2416656159537841915.a n = A295730 n

end A295730

/-! ## A295730.P3302609906261791760

`A295724(n)+A152163(n+1)`
-/

namespace A295730.P3302609906261791760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A152163 (n + 1)

end

end A295730.P3302609906261791760

namespace A295730

/-- `A295724(n)+A152163(n+1)` -/
def P3302609906261791760.Spec : Prop :=
  ∀ n, P3302609906261791760.a n = A295730 n

end A295730

/-! ## A295730.P17798855043589876967

`A001610(n)-∑[A158780(n+1)]`
-/

namespace A295730.P17798855043589876967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295730.P17798855043589876967

namespace A295730

/-- `A001610(n)-∑[A158780(n+1)]` -/
def P17798855043589876967.Spec : Prop :=
  ∀ n, P17798855043589876967.a n = A295730 n

end A295730

/-! ## A295730.P10701137157831638564

`A000204(n+1)-A164090(n+1)`
-/

namespace A295730.P10701137157831638564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A164090 (n + 1)

end

end A295730.P10701137157831638564

namespace A295730

/-- `A000204(n+1)-A164090(n+1)` -/
def P10701137157831638564.Spec : Prop :=
  ∀ n, P10701137157831638564.a n = A295730 n

end A295730

/-! ## A295730.P13379769324770303028

`A386707(n+1)-A209724(n+1)`
-/

namespace A295730.P13379769324770303028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386707 (n + 1) - A209724 (n + 1)

end

end A295730.P13379769324770303028

namespace A295730

/-- `A386707(n+1)-A209724(n+1)` -/
def P13379769324770303028.Spec : Prop :=
  ∀ n, P13379769324770303028.a n = A295730 n

end A295730

/-! ## A295730.P8934870477374691736

`A000032(n+1)-A029744(n+2)`
-/

namespace A295730.P8934870477374691736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A029744 (n + 2)

end

end A295730.P8934870477374691736

namespace A295730

/-- `A000032(n+1)-A029744(n+2)` -/
def P8934870477374691736.Spec : Prop :=
  ∀ n, P8934870477374691736.a n = A295730 n

end A295730

/-! ## A295730.P4155159130659137595

`A000204(n+1)-A029744(n+2)`
-/

namespace A295730.P4155159130659137595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A029744 (n + 2)

end

end A295730.P4155159130659137595

namespace A295730

/-- `A000204(n+1)-A029744(n+2)` -/
def P4155159130659137595.Spec : Prop :=
  ∀ n, P4155159130659137595.a n = A295730 n

end A295730

/-! ## A295730.P6694181995259493300

`A000045(n)+∑[A000045(n)]-A052955(n)`
-/

namespace A295730.P6694181995259493300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (∑ j ∈ Finset.range (n + 1), f1 j - A052955 n)

end

end A295730.P6694181995259493300

namespace A295730

/-- `A000045(n)+∑[A000045(n)]-A052955(n)` -/
def P6694181995259493300.Spec : Prop :=
  ∀ n, P6694181995259493300.a n = A295730 n

end A295730

/-! ## A295730.P13546023333392349436

`A028892(n+1)+A028892(n)+A000045(n)`
-/

namespace A295730.P13546023333392349436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (A028892 n + A000045 n)

end

end A295730.P13546023333392349436

namespace A295730

/-- `A028892(n+1)+A028892(n)+A000045(n)` -/
def P13546023333392349436.Spec : Prop :=
  ∀ n, P13546023333392349436.a n = A295730 n

end A295730

/-! ## A295730.P503925035862947707

`A000045(n)+A295724(n)-A000045(n+1)`
-/

namespace A295730.P503925035862947707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295724 n - A000045 (n + 1))

end

end A295730.P503925035862947707

namespace A295730

/-- `A000045(n)+A295724(n)-A000045(n+1)` -/
def P503925035862947707.Spec : Prop :=
  ∀ n, P503925035862947707.a n = A295730 n

end A295730

/-! ## A295730.P555834192572770676

`A005672(n)+A295723(n)-A000045(n+1)`
-/

namespace A295730.P555834192572770676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295723 n - A000045 (n + 1))

end

end A295730.P555834192572770676

namespace A295730

/-- `A005672(n)+A295723(n)-A000045(n+1)` -/
def P555834192572770676.Spec : Prop :=
  ∀ n, P555834192572770676.a n = A295730 n

end A295730

/-! ## A295730.P3228015185659046371

`A000071(n+2)+A000045(n)-A052955(n)`
-/

namespace A295730.P3228015185659046371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000045 n - A052955 n)

end

end A295730.P3228015185659046371

namespace A295730

/-- `A000071(n+2)+A000045(n)-A052955(n)` -/
def P3228015185659046371.Spec : Prop :=
  ∀ n, P3228015185659046371.a n = A295730 n

end A295730

/-! ## A295730.P15180012616914044197

`A000071(n+2)+A174959(n)-A016116(n)`
-/

namespace A295730.P15180012616914044197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A174959 n - A016116 n)

end

end A295730.P15180012616914044197

namespace A295730

/-- `A000071(n+2)+A174959(n)-A016116(n)` -/
def P15180012616914044197.Spec : Prop :=
  ∀ n, P15180012616914044197.a n = A295730 n

end A295730

/-! ## A295730.P15712913018962836462

`A000032(n+1)-(A016116(n+1)+A016116(n))`
-/

namespace A295730.P15712913018962836462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (A016116 (n + 1) + A016116 n)

end

end A295730.P15712913018962836462

namespace A295730

/-- `A000032(n+1)-(A016116(n+1)+A016116(n))` -/
def P15712913018962836462.Spec : Prop :=
  ∀ n, P15712913018962836462.a n = A295730 n

end A295730

/-!
# A295731: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = -1, a(2) = 0, a(3) = 1.

The programs for A295731, the canonical program `A295731.P5536216358514769439` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295731 has offset 0).

The definition of A295731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295731.P5536216358514769439`, by `A295731.P5536216358514769439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295731.P5536216358514769439

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295731

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P5536216358514769439.Spec : Prop :=
  ∀ n, P5536216358514769439.a n = A295731 n

theorem P5536216358514769439.correct : P5536216358514769439.Spec := by
  intro n
  simp only [A295731]

end A295731

/-! ## A295731.P11703137475049755943

`A005673(n+2)-1`
-/

namespace A295731.P11703137475049755943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (n + 2) - 1

end

end A295731.P11703137475049755943

namespace A295731

/-- `A005673(n+2)-1` -/
def P11703137475049755943.Spec : Prop :=
  ∀ n, P11703137475049755943.a n = A295731 n

end A295731

/-! ## A295731.P422217528218115757

`∑[A005672(n+1)]-1`
-/

namespace A295731.P422217528218115757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295731.P422217528218115757

namespace A295731

/-- `∑[A005672(n+1)]-1` -/
def P422217528218115757.Spec : Prop :=
  ∀ n, P422217528218115757.a n = A295731 n

end A295731

/-! ## A295731.P6641764278647548840

`A295726(n)+A028892(n)`
-/

namespace A295731.P6641764278647548840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n + A028892 n

end

end A295731.P6641764278647548840

namespace A295731

/-- `A295726(n)+A028892(n)` -/
def P6641764278647548840.Spec : Prop :=
  ∀ n, P6641764278647548840.a n = A295731 n

end A295731

/-! ## A295731.P3678905913044096242

`A295857(n)-A016116(n)`
-/

namespace A295731.P3678905913044096242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n - A016116 n

end

end A295731.P3678905913044096242

namespace A295731

/-- `A295857(n)-A016116(n)` -/
def P3678905913044096242.Spec : Prop :=
  ∀ n, P3678905913044096242.a n = A295731 n

end A295731

/-! ## A295731.P17911304289429793849

`A295851(n)-A077957(n)`
-/

namespace A295731.P17911304289429793849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295851 n - A077957 n

end

end A295731.P17911304289429793849

namespace A295731

/-- `A295851(n)-A077957(n)` -/
def P17911304289429793849.Spec : Prop :=
  ∀ n, P17911304289429793849.a n = A295731 n

end A295731

/-! ## A295731.P1433826408898088631

`A295733(n+1)+A295725(n)`
-/

namespace A295731.P1433826408898088631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + A295725 n

end

end A295731.P1433826408898088631

namespace A295731

/-- `A295733(n+1)+A295725(n)` -/
def P1433826408898088631.Spec : Prop :=
  ∀ n, P1433826408898088631.a n = A295731 n

end A295731

/-! ## A295731.P11095619341206485373

`A020701(n)-A090989(n+1)`
-/

namespace A295731.P11095619341206485373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A090989 (n + 1)

end

end A295731.P11095619341206485373

namespace A295731

/-- `A020701(n)-A090989(n+1)` -/
def P11095619341206485373.Spec : Prop :=
  ∀ n, P11095619341206485373.a n = A295731 n

end A295731

/-! ## A295731.P8477964185590559243

`A020701(n)-A063759(n+2)`
-/

namespace A295731.P8477964185590559243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A063759 (n + 2)

end

end A295731.P8477964185590559243

namespace A295731

/-- `A020701(n)-A063759(n+2)` -/
def P8477964185590559243.Spec : Prop :=
  ∀ n, P8477964185590559243.a n = A295731 n

end A295731

/-! ## A295731.P4413805118528267947

`A020701(n)-A163978(n+2)`
-/

namespace A295731.P4413805118528267947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A163978 (n + 2)

end

end A295731.P4413805118528267947

namespace A295731

/-- `A020701(n)-A163978(n+2)` -/
def P4413805118528267947.Spec : Prop :=
  ∀ n, P4413805118528267947.a n = A295731 n

end A295731

/-! ## A295731.P10345722395870791909

`A020701(n)-A164090(n+3)`
-/

namespace A295731.P10345722395870791909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A164090 (n + 3)

end

end A295731.P10345722395870791909

namespace A295731

/-- `A020701(n)-A164090(n+3)` -/
def P10345722395870791909.Spec : Prop :=
  ∀ n, P10345722395870791909.a n = A295731 n

end A295731

/-! ## A295731.P66863742453982457

`A020701(n)-A029744(n+4)`
-/

namespace A295731.P66863742453982457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A029744 (n + 4)

end

end A295731.P66863742453982457

namespace A295731

/-- `A020701(n)-A029744(n+4)` -/
def P66863742453982457.Spec : Prop :=
  ∀ n, P66863742453982457.a n = A295731 n

end A295731

/-! ## A295731.P16367222325025354456

`A006327(n+4)-A136252(n)`
-/

namespace A295731.P16367222325025354456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) - A136252 n

end

end A295731.P16367222325025354456

namespace A295731

/-- `A006327(n+4)-A136252(n)` -/
def P16367222325025354456.Spec : Prop :=
  ∀ n, P16367222325025354456.a n = A295731 n

end A295731

/-! ## A295731.P11434322527532320632

`2*A295723(n)-A295718(n)`
-/

namespace A295731.P11434322527532320632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295723 n - A295718 n

end

end A295731.P11434322527532320632

namespace A295731

/-- `2*A295723(n)-A295718(n)` -/
def P11434322527532320632.Spec : Prop :=
  ∀ n, P11434322527532320632.a n = A295731 n

end A295731

/-! ## A295731.P14704707043334236684

`A001911(n+1)-A027383(n+1)`
-/

namespace A295731.P14704707043334236684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - A027383 (n + 1)

end

end A295731.P14704707043334236684

namespace A295731

/-- `A001911(n+1)-A027383(n+1)` -/
def P14704707043334236684.Spec : Prop :=
  ∀ n, P14704707043334236684.a n = A295731 n

end A295731

/-! ## A295731.P8432538979713972872

`A295724(n+1)-A016116(n+1)`
-/

namespace A295731.P8432538979713972872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - A016116 (n + 1)

end

end A295731.P8432538979713972872

namespace A295731

/-- `A295724(n+1)-A016116(n+1)` -/
def P8432538979713972872.Spec : Prop :=
  ∀ n, P8432538979713972872.a n = A295731 n

end A295731

/-! ## A295731.P1072111137154697416

`A391682(n+1)-A164090(n+1)`
-/

namespace A295731.P1072111137154697416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) - A164090 (n + 1)

end

end A295731.P1072111137154697416

namespace A295731

/-- `A391682(n+1)-A164090(n+1)` -/
def P1072111137154697416.Spec : Prop :=
  ∀ n, P1072111137154697416.a n = A295731 n

end A295731

/-! ## A295731.P1789676441606346128

`A000045(n+4)-A090989(n+1)`
-/

namespace A295731.P1789676441606346128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - A090989 (n + 1)

end

end A295731.P1789676441606346128

namespace A295731

/-- `A000045(n+4)-A090989(n+1)` -/
def P1789676441606346128.Spec : Prop :=
  ∀ n, P1789676441606346128.a n = A295731 n

end A295731

/-! ## A295731.P1847636123117425990

`A000045(n+4)-A163978(n+2)`
-/

namespace A295731.P1847636123117425990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - A163978 (n + 2)

end

end A295731.P1847636123117425990

namespace A295731

/-- `A000045(n+4)-A163978(n+2)` -/
def P1847636123117425990.Spec : Prop :=
  ∀ n, P1847636123117425990.a n = A295731 n

end A295731

/-! ## A295731.P8189702549022361487

`A000045(n+4)-A029744(n+4)`
-/

namespace A295731.P8189702549022361487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - A029744 (n + 4)

end

end A295731.P8189702549022361487

namespace A295731

/-- `A000045(n+4)-A029744(n+4)` -/
def P8189702549022361487.Spec : Prop :=
  ∀ n, P8189702549022361487.a n = A295731 n

end A295731

/-!
# A295732: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = -1, a(2) = -1, a(3) = 1.

The programs for A295732, the canonical program `A295732.P11054702197522957929` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295732 has offset 0).

The definition of A295732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295732.P11054702197522957929`, by `A295732.P11054702197522957929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295732.P11054702197522957929

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295732

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P11054702197522957929.Spec : Prop :=
  ∀ n, P11054702197522957929.a n = A295732 n

theorem P11054702197522957929.correct : P11054702197522957929.Spec := by
  intro n
  simp only [A295732]

end A295732

/-! ## A295732.P9866585276690773823

`∑[A295850(lcm(n%2+1, n-1))]-1`
-/

namespace A295732.P9866585276690773823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 (Int.lcm ((n % 2 + 1 : ℕ) : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295732.P9866585276690773823

namespace A295732

/-- `∑[A295850(lcm(n%2+1, n-1))]-1` -/
def P9866585276690773823.Spec : Prop :=
  ∀ n, P9866585276690773823.a n = A295732 n

end A295732

/-! ## A295732.P7913053513735477846

`A295735(n)+A028892(n)`
-/

namespace A295732.P7913053513735477846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + A028892 n

end

end A295732.P7913053513735477846

namespace A295732

/-- `A295735(n)+A028892(n)` -/
def P7913053513735477846.Spec : Prop :=
  ∀ n, P7913053513735477846.a n = A295732 n

end A295732

/-! ## A295732.P9857826839211550585

`A295726(n)-A077957(n)`
-/

namespace A295732.P9857826839211550585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n - A077957 n

end

end A295732.P9857826839211550585

namespace A295732

/-- `A295726(n)-A077957(n)` -/
def P9857826839211550585.Spec : Prop :=
  ∀ n, P9857826839211550585.a n = A295732 n

end A295732

/-! ## A295732.P4859625074982475805

`A295730(n+1)-A016116(n)`
-/

namespace A295732.P4859625074982475805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) - A016116 n

end

end A295732.P4859625074982475805

namespace A295732

/-- `A295730(n+1)-A016116(n)` -/
def P4859625074982475805.Spec : Prop :=
  ∀ n, P4859625074982475805.a n = A295732 n

end A295732

/-! ## A295732.P14655274546584694549

`A295728(n)+2*A028892(n)`
-/

namespace A295732.P14655274546584694549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + 2 * A028892 n

end

end A295732.P14655274546584694549

namespace A295732

/-- `A295728(n)+2*A028892(n)` -/
def P14655274546584694549.Spec : Prop :=
  ∀ n, P14655274546584694549.a n = A295732 n

end A295732

/-! ## A295732.P6924541653439488418

`2*A295730(n)-A295727(n)`
-/

namespace A295732.P6924541653439488418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295730 n - A295727 n

end

end A295732.P6924541653439488418

namespace A295732

/-- `2*A295730(n)-A295727(n)` -/
def P6924541653439488418.Spec : Prop :=
  ∀ n, P6924541653439488418.a n = A295732 n

end A295732

/-! ## A295732.P4521005924881165539

`A005672(n)+∑[A005672(n)]-1`
-/

namespace A295732.P4521005924881165539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A295732.P4521005924881165539

namespace A295732

/-- `A005672(n)+∑[A005672(n)]-1` -/
def P4521005924881165539.Spec : Prop :=
  ∀ n, P4521005924881165539.a n = A295732 n

end A295732

/-! ## A295732.P1759125136890427786

`A295730(n)+A295733(n)-A005672(n)`
-/

namespace A295732.P1759125136890427786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + (A295733 n - A005672 n)

end

end A295732.P1759125136890427786

namespace A295732

/-- `A295730(n)+A295733(n)-A005672(n)` -/
def P1759125136890427786.Spec : Prop :=
  ∀ n, P1759125136890427786.a n = A295732 n

end A295732

/-! ## A295732.P2451957159659364648

`A295735(n)+A295735(n)-A295728(n)`
-/

namespace A295732.P2451957159659364648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + (A295735 n - A295728 n)

end

end A295732.P2451957159659364648

namespace A295732

/-- `A295735(n)+A295735(n)-A295728(n)` -/
def P2451957159659364648.Spec : Prop :=
  ∀ n, P2451957159659364648.a n = A295732 n

end A295732

/-! ## A295732.P7336593324231492130

`A005672(n)+A295731(n)-A005672(n+1)`
-/

namespace A295732.P7336593324231492130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295731 n - A005672 (n + 1))

end

end A295732.P7336593324231492130

namespace A295732

/-- `A005672(n)+A295731(n)-A005672(n+1)` -/
def P7336593324231492130.Spec : Prop :=
  ∀ n, P7336593324231492130.a n = A295732 n

end A295732

/-! ## A295732.P16754695653374298637

`A295730(n)+A295735(n)-A005672(n+1)`
-/

namespace A295732.P16754695653374298637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + (A295735 n - A005672 (n + 1))

end

end A295732.P16754695653374298637

namespace A295732

/-- `A295730(n)+A295735(n)-A005672(n+1)` -/
def P16754695653374298637.Spec : Prop :=
  ∀ n, P16754695653374298637.a n = A295732 n

end A295732

/-! ## A295732.P1149037974462480652

`A295730(n+1)+A295730(n)-A295723(n)`
-/

namespace A295732.P1149037974462480652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295730 n - A295723 n)

end

end A295732.P1149037974462480652

namespace A295732

/-- `A295730(n+1)+A295730(n)-A295723(n)` -/
def P1149037974462480652.Spec : Prop :=
  ∀ n, P1149037974462480652.a n = A295732 n

end A295732

/-! ## A295732.P27168770630584154

`A295733(n+1)+A295737(n)-A295728(n)`
-/

namespace A295732.P27168770630584154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (A295737 n - A295728 n)

end

end A295732.P27168770630584154

namespace A295732

/-- `A295733(n+1)+A295737(n)-A295728(n)` -/
def P27168770630584154.Spec : Prop :=
  ∀ n, P27168770630584154.a n = A295732 n

end A295732

/-! ## A295732.P9356946004239369474

`A295730(n+1)+A005672(n)-A000045(n+1)`
-/

namespace A295732.P9356946004239369474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A005672 n - A000045 (n + 1))

end

end A295732.P9356946004239369474

namespace A295732

/-- `A295730(n+1)+A005672(n)-A000045(n+1)` -/
def P9356946004239369474.Spec : Prop :=
  ∀ n, P9356946004239369474.a n = A295732 n

end A295732

/-! ## A295732.P11487366933146262482

`A295850(n+1)+A295850(n)-A000032(n+1)`
-/

namespace A295732.P11487366933146262482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 (n + 1) + (A295850 n - A000032 (n + 1))

end

end A295732.P11487366933146262482

namespace A295732

/-- `A295850(n+1)+A295850(n)-A000032(n+1)` -/
def P11487366933146262482.Spec : Prop :=
  ∀ n, P11487366933146262482.a n = A295732 n

end A295732

/-! ## A295732.P1528195233223064890

`A295850(n+1)+A295850(n)-A000204(n+1)`
-/

namespace A295732.P1528195233223064890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 (n + 1) + (A295850 n - A000204 (n + 1))

end

end A295732.P1528195233223064890

namespace A295732

/-- `A295850(n+1)+A295850(n)-A000204(n+1)` -/
def P1528195233223064890.Spec : Prop :=
  ∀ n, P1528195233223064890.a n = A295732 n

end A295732

/-! ## A295732.P5934474936027403677

`2*A295735(n)-A295728(n)`
-/

namespace A295732.P5934474936027403677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295735 n - A295728 n

end

end A295732.P5934474936027403677

namespace A295732

/-- `2*A295735(n)-A295728(n)` -/
def P5934474936027403677.Spec : Prop :=
  ∀ n, P5934474936027403677.a n = A295732 n

end A295732

/-! ## A295732.P5016336035193996303

`∑[A295850(n)]-(A295850(n)+1)`
-/

namespace A295732.P5016336035193996303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A295850 n + 1)

end

end A295732.P5016336035193996303

namespace A295732

/-- `∑[A295850(n)]-(A295850(n)+1)` -/
def P5016336035193996303.Spec : Prop :=
  ∀ n, P5016336035193996303.a n = A295732 n

end A295732

/-!
# A295733: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = -1, a(2) = -1, a(3) = 1.

The programs for A295733, the canonical program `A295733.P3338413264248857186` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295733 has offset 0).

The definition of A295733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295733.P3338413264248857186`, by `A295733.P3338413264248857186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295733.P3338413264248857186

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295733

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3338413264248857186.Spec : Prop :=
  ∀ n, P3338413264248857186.a n = A295733 n

theorem P3338413264248857186.correct : P3338413264248857186.Spec := by
  intro n
  simp only [A295733]

end A295733

/-! ## A295733.P14315410692086344872

`A295728(n)-A077957(n)`
-/

namespace A295733.P14315410692086344872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n - A077957 n

end

end A295733.P14315410692086344872

namespace A295733

/-- `A295728(n)-A077957(n)` -/
def P14315410692086344872.Spec : Prop :=
  ∀ n, P14315410692086344872.a n = A295733 n

end A295733

/-! ## A295733.P12492206419496858520

`A295860(n+1)-A016116(n)`
-/

namespace A295733.P12492206419496858520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 1) - A016116 n

end

end A295733.P12492206419496858520

namespace A295733

/-- `A295860(n+1)-A016116(n)` -/
def P12492206419496858520.Spec : Prop :=
  ∀ n, P12492206419496858520.a n = A295733 n

end A295733

/-! ## A295733.P5634852025031081922

`A013655(n)-3*A016116(n)`
-/

namespace A295733.P5634852025031081922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - 3 * A016116 n

end

end A295733.P5634852025031081922

namespace A295733

/-- `A013655(n)-3*A016116(n)` -/
def P5634852025031081922.Spec : Prop :=
  ∀ n, P5634852025031081922.a n = A295733 n

end A295733

/-! ## A295733.P3023999368752362407

`A013655(n)-A007283(A004526(n))`
-/

namespace A295733.P3023999368752362407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - A007283 (A004526 n).toNat

end

end A295733.P3023999368752362407

namespace A295733

/-- `A013655(n)-A007283(A004526(n))` -/
def P3023999368752362407.Spec : Prop :=
  ∀ n, P3023999368752362407.a n = A295733 n

end A295733

/-! ## A295733.P4865705973998009577

`A013655(n)-A003945(A008619(n))`
-/

namespace A295733.P4865705973998009577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - A003945 (A008619 n).toNat

end

end A295733.P4865705973998009577

namespace A295733

/-- `A013655(n)-A003945(A008619(n))` -/
def P4865705973998009577.Spec : Prop :=
  ∀ n, P4865705973998009577.a n = A295733 n

end A295733

/-! ## A295733.P6245420449179739161

`A295727(n)+A295737(n)-A000045(n)`
-/

namespace A295733.P6245420449179739161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + (A295737 n - A000045 n)

end

end A295733.P6245420449179739161

namespace A295733

/-- `A295727(n)+A295737(n)-A000045(n)` -/
def P6245420449179739161.Spec : Prop :=
  ∀ n, P6245420449179739161.a n = A295733 n

end A295733

/-! ## A295733.P14196653224649471092

`A005672(n)+A295730(n)-A295727(n)`
-/

namespace A295733.P14196653224649471092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295730 n - A295727 n)

end

end A295733.P14196653224649471092

namespace A295733

/-- `A005672(n)+A295730(n)-A295727(n)` -/
def P14196653224649471092.Spec : Prop :=
  ∀ n, P14196653224649471092.a n = A295733 n

end A295733

/-! ## A295733.P5836419662987599685

`A005672(n)+A295732(n)-A295730(n)`
-/

namespace A295733.P5836419662987599685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295732 n - A295730 n)

end

end A295733.P5836419662987599685

namespace A295733

/-- `A005672(n)+A295732(n)-A295730(n)` -/
def P5836419662987599685.Spec : Prop :=
  ∀ n, P5836419662987599685.a n = A295733 n

end A295733

/-! ## A295733.P15189755075533093800

`A005672(n)+A295735(n)-A005672(n+1)`
-/

namespace A295733.P15189755075533093800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295735 n - A005672 (n + 1))

end

end A295733.P15189755075533093800

namespace A295733

/-- `A005672(n)+A295735(n)-A005672(n+1)` -/
def P15189755075533093800.Spec : Prop :=
  ∀ n, P15189755075533093800.a n = A295733 n

end A295733

/-! ## A295733.P15315770632502443695

`A295723(n+1)-(A295718(n)+A005672(n))`
-/

namespace A295733.P15315770632502443695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 1) - (A295718 n + A005672 n)

end

end A295733.P15315770632502443695

namespace A295733

/-- `A295723(n+1)-(A295718(n)+A005672(n))` -/
def P15315770632502443695.Spec : Prop :=
  ∀ n, P15315770632502443695.a n = A295733 n

end A295733

/-! ## A295733.P8171026540653192485

`A295730(n+1)+A005672(n)-A295723(n)`
-/

namespace A295733.P8171026540653192485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A005672 n - A295723 n)

end

end A295733.P8171026540653192485

namespace A295733

/-- `A295730(n+1)+A005672(n)-A295723(n)` -/
def P8171026540653192485.Spec : Prop :=
  ∀ n, P8171026540653192485.a n = A295733 n

end A295733

/-! ## A295733.P13761880467307929369

`A005672(n+1)+A295728(n+1)-A295721(n)`
-/

namespace A295733.P13761880467307929369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295728 (n + 1) - A295721 n)

end

end A295733.P13761880467307929369

namespace A295733

/-- `A005672(n+1)+A295728(n+1)-A295721(n)` -/
def P13761880467307929369.Spec : Prop :=
  ∀ n, P13761880467307929369.a n = A295733 n

end A295733

/-! ## A295733.P11789456348840219824

`A027557(n)-A295717(n)`
-/

namespace A295733.P11789456348840219824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n - A295717 n

end

end A295733.P11789456348840219824

namespace A295733

/-- `A027557(n)-A295717(n)` -/
def P11789456348840219824.Spec : Prop :=
  ∀ n, P11789456348840219824.a n = A295733 n

end A295733

/-! ## A295733.P7329345299564034530

`(A295736(n)+A295730(n))/2`
-/

namespace A295733.P7329345299564034530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295736 n + A295730 n : ℚ) / 2

end

end A295733.P7329345299564034530

namespace A295733

/-- `(A295736(n)+A295730(n))/2` -/
def P7329345299564034530.Spec : Prop :=
  ∀ n, P7329345299564034530.a n = (A295733 n : ℚ)

end A295733

/-! ## A295733.P3803297183184049418

`A295721(n+1)-(A295730(n)+A295718(n+1))`
-/

namespace A295733.P3803297183184049418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 (n + 1) - (A295730 n + A295718 (n + 1))

end

end A295733.P3803297183184049418

namespace A295733

/-- `A295721(n+1)-(A295730(n)+A295718(n+1))` -/
def P3803297183184049418.Spec : Prop :=
  ∀ n, P3803297183184049418.a n = A295733 n

end A295733

/-!
# A295734: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = -1, a(3) = 2.

The programs for A295734, the canonical program `A295734.P3626441159553712081` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295734 has offset 0).

The definition of A295734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295734.P3626441159553712081`, by `A295734.P3626441159553712081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295734.P3626441159553712081

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295734

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3626441159553712081.Spec : Prop :=
  ∀ n, P3626441159553712081.a n = A295734 n

theorem P3626441159553712081.correct : P3626441159553712081.Spec := by
  intro n
  simp only [A295734]

end A295734

/-! ## A295734.P15738033696540655509

`A000032(n)-Δ[record[2*a(n-3)]]` with `a(0)=3, a(1)=0, a(2)=5`
-/

namespace A295734.P15738033696540655509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 5] fun n f2 =>
  2 * f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A295734.P15738033696540655509

namespace A295734

/-- `A000032(n)-Δ[record[2*a(n-3)]]` -/
def P15738033696540655509.Spec : Prop :=
  ∀ n, P15738033696540655509.a n = A295734 n

end A295734

/-! ## A295734.P6329357683648621443

`A295725(n)+A005672(n)`
-/

namespace A295734.P6329357683648621443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 n + A005672 n

end

end A295734.P6329357683648621443

namespace A295734

/-- `A295725(n)+A005672(n)` -/
def P6329357683648621443.Spec : Prop :=
  ∀ n, P6329357683648621443.a n = A295734 n

end A295734

/-! ## A295734.P12600786861352633431

`A000032(n)-A135530(n)`
-/

namespace A295734.P12600786861352633431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A135530 n

end

end A295734.P12600786861352633431

namespace A295734

/-- `A000032(n)-A135530(n)` -/
def P12600786861352633431.Spec : Prop :=
  ∀ n, P12600786861352633431.a n = A295734 n

end A295734

/-! ## A295734.P5179042268817023816

`A098600(n)-A140407(n)`
-/

namespace A295734.P5179042268817023816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n - A140407 n

end

end A295734.P5179042268817023816

namespace A295734

/-- `A098600(n)-A140407(n)` -/
def P5179042268817023816.Spec : Prop :=
  ∀ n, P5179042268817023816.a n = A295734 n

end A295734

/-! ## A295734.P4977832985544768248

`A001612(n)-(A135530(n)+1)`
-/

namespace A295734.P4977832985544768248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - (A135530 n + 1)

end

end A295734.P4977832985544768248

namespace A295734

/-- `A001612(n)-(A135530(n)+1)` -/
def P4977832985544768248.Spec : Prop :=
  ∀ n, P4977832985544768248.a n = A295734 n

end A295734

/-! ## A295734.P15924703220020386584

`A295727(n+1)-A016116(n)`
-/

namespace A295734.P15924703220020386584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1) - A016116 n

end

end A295734.P15924703220020386584

namespace A295734

/-- `A295727(n+1)-A016116(n)` -/
def P15924703220020386584.Spec : Prop :=
  ∀ n, P15924703220020386584.a n = A295734 n

end A295734

/-! ## A295734.P12765701940175501222

`A000032(n)-A076736(n+4)`
-/

namespace A295734.P12765701940175501222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A076736 (n + 4)

end

end A295734.P12765701940175501222

namespace A295734

/-- `A000032(n)-A076736(n+4)` -/
def P12765701940175501222.Spec : Prop :=
  ∀ n, P12765701940175501222.a n = A295734 n

end A295734

/-! ## A295734.P9341426871424568669

`A000032(n)-A000079(A028242(n))`
-/

namespace A295734.P9341426871424568669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A000079 (A028242 n).toNat

end

end A295734.P9341426871424568669

namespace A295734

/-- `A000032(n)-A000079(A028242(n))` -/
def P9341426871424568669.Spec : Prop :=
  ∀ n, P9341426871424568669.a n = A295734 n

end A295734

/-! ## A295734.P15561060532982788209

`A212804(n)+∑[A212804(n)]-A135530(n)`
-/

namespace A295734.P15561060532982788209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (∑ j ∈ Finset.range (n + 1), f1 j - A135530 n)

end

end A295734.P15561060532982788209

namespace A295734

/-- `A212804(n)+∑[A212804(n)]-A135530(n)` -/
def P15561060532982788209.Spec : Prop :=
  ∀ n, P15561060532982788209.a n = A295734 n

end A295734

/-! ## A295734.P14408187427683134752

`A212804(n)+A000045(n+1)-A135530(n)`
-/

namespace A295734.P14408187427683134752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A000045 (n + 1) - A135530 n

end

end A295734.P14408187427683134752

namespace A295734

/-- `A212804(n)+A000045(n+1)-A135530(n)` -/
def P14408187427683134752.Spec : Prop :=
  ∀ n, P14408187427683134752.a n = A295734 n

end A295734

/-! ## A295734.P15158313148727371727

`Δ[A001611(n)]+A000045(n+1)-A135530(n)`
-/

namespace A295734.P15158313148727371727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1) - A135530 n

end

end A295734.P15158313148727371727

namespace A295734

/-- `Δ[A001611(n)]+A000045(n+1)-A135530(n)` -/
def P15158313148727371727.Spec : Prop :=
  ∀ n, P15158313148727371727.a n = A295734 n

end A295734

/-! ## A295734.P2526499383549945788

`A295727(n+1)+A005672(n)-A000045(n+1)`
-/

namespace A295734.P2526499383549945788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1) + (A005672 n - A000045 (n + 1))

end

end A295734.P2526499383549945788

namespace A295734

/-- `A295727(n+1)+A005672(n)-A000045(n+1)` -/
def P2526499383549945788.Spec : Prop :=
  ∀ n, P2526499383549945788.a n = A295734 n

end A295734

/-! ## A295734.P2969215006110776376

`A000071(n+1)+A212804(n)+1-A135530(n)`
-/

namespace A295734.P2969215006110776376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A212804 n + 1) - A135530 n

end

end A295734.P2969215006110776376

namespace A295734

/-- `A000071(n+1)+A212804(n)+1-A135530(n)` -/
def P2969215006110776376.Spec : Prop :=
  ∀ n, P2969215006110776376.a n = A295734 n

end A295734

/-! ## A295734.P2276414780111698731

`A295726(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A295734.P2276414780111698731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295726 (n - 1) - a (n - 1)

end

end A295734.P2276414780111698731

namespace A295734

/-- `A295726(n-1)-a(n-1)` -/
def P2276414780111698731.Spec : Prop :=
  ∀ n, P2276414780111698731.a n = A295734 n

end A295734

/-! ## A295734.P1830361906583038338

`A000045(n)+A295733(n)-A005672(n+1)`
-/

namespace A295734.P1830361906583038338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295733 n - A005672 (n + 1))

end

end A295734.P1830361906583038338

namespace A295734

/-- `A000045(n)+A295733(n)-A005672(n+1)` -/
def P1830361906583038338.Spec : Prop :=
  ∀ n, P1830361906583038338.a n = A295734 n

end A295734

/-! ## A295734.P12517448437189566447

`A005672(n+1)+A295737(n)-A295728(n)`
-/

namespace A295734.P12517448437189566447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295737 n - A295728 n)

end

end A295734.P12517448437189566447

namespace A295734

/-- `A005672(n+1)+A295737(n)-A295728(n)` -/
def P12517448437189566447.Spec : Prop :=
  ∀ n, P12517448437189566447.a n = A295734 n

end A295734

/-! ## A295734.P4824685718730967688

`A295727(n)+A295737(n)-A005672(n+1)`
-/

namespace A295734.P4824685718730967688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + (A295737 n - A005672 (n + 1))

end

end A295734.P4824685718730967688

namespace A295734

/-- `A295727(n)+A295737(n)-A005672(n+1)` -/
def P4824685718730967688.Spec : Prop :=
  ∀ n, P4824685718730967688.a n = A295734 n

end A295734

/-! ## A295734.P9390902028771311153

`A295857(n)-A295856(n)`
-/

namespace A295734.P9390902028771311153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n - A295856 n

end

end A295734.P9390902028771311153

namespace A295734

/-- `A295857(n)-A295856(n)` -/
def P9390902028771311153.Spec : Prop :=
  ∀ n, P9390902028771311153.a n = A295734 n

end A295734

/-!
# A295735: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = -1, a(2) = 0, a(3) = 1.

The programs for A295735, the canonical program `A295735.P14099339525112978363` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295735 has offset 0).

The definition of A295735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295735.P14099339525112978363`, by `A295735.P14099339525112978363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295735.P14099339525112978363

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295735

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P14099339525112978363.Spec : Prop :=
  ∀ n, P14099339525112978363.a n = A295735 n

theorem P14099339525112978363.correct : P14099339525112978363.Spec := by
  intro n
  simp only [A295735]

end A295735

/-! ## A295735.P11298702003180409423

`A295728(n)+A028892(n)`
-/

namespace A295735.P11298702003180409423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + A028892 n

end

end A295735.P11298702003180409423

namespace A295735

/-- `A295728(n)+A028892(n)` -/
def P11298702003180409423.Spec : Prop :=
  ∀ n, P11298702003180409423.a n = A295735 n

end A295735

/-! ## A295735.P1572923506633136831

`A111314(n)-A027383(n)`
-/

namespace A295735.P1572923506633136831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n - A027383 n

end

end A295735.P1572923506633136831

namespace A295735

/-- `A111314(n)-A027383(n)` -/
def P1572923506633136831.Spec : Prop :=
  ∀ n, P1572923506633136831.a n = A295735 n

end A295735

/-! ## A295735.P11652974328472643986

`A295732(n)-A028892(n)`
-/

namespace A295735.P11652974328472643986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 n - A028892 n

end

end A295735.P11652974328472643986

namespace A295735

/-- `A295732(n)-A028892(n)` -/
def P11652974328472643986.Spec : Prop :=
  ∀ n, P11652974328472643986.a n = A295735 n

end A295735

/-! ## A295735.P9211815117365623829

`A295730(n+1)-A000045(n)`
-/

namespace A295735.P9211815117365623829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) - A000045 n

end

end A295735.P9211815117365623829

namespace A295735

/-- `A295730(n+1)-A000045(n)` -/
def P9211815117365623829.Spec : Prop :=
  ∀ n, P9211815117365623829.a n = A295735 n

end A295735

/-! ## A295735.P11063381274840152712

`A000032(n)+∑[A028892(n)]-1`
-/

namespace A295735.P11063381274840152712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A295735.P11063381274840152712

namespace A295735

/-- `A000032(n)+∑[A028892(n)]-1` -/
def P11063381274840152712.Spec : Prop :=
  ∀ n, P11063381274840152712.a n = A295735 n

end A295735

/-! ## A295735.P1158498968892095343

`A295730(n+1)-A212804(n+1)`
-/

namespace A295735.P1158498968892095343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) - A212804 (n + 1)

end

end A295735.P1158498968892095343

namespace A295735

/-- `A295730(n+1)-A212804(n+1)` -/
def P1158498968892095343.Spec : Prop :=
  ∀ n, P1158498968892095343.a n = A295735 n

end A295735

/-! ## A295735.P12853931799286437356

`A295724(n+1)-2*A000045(n)`
-/

namespace A295735.P12853931799286437356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - 2 * A000045 n

end

end A295735.P12853931799286437356

namespace A295735

/-- `A295724(n+1)-2*A000045(n)` -/
def P12853931799286437356.Spec : Prop :=
  ∀ n, P12853931799286437356.a n = A295735 n

end A295735

/-! ## A295735.P11923029890468180697

`A295724(n+1)-2*A212804(n+1)`
-/

namespace A295735.P11923029890468180697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - 2 * A212804 (n + 1)

end

end A295735.P11923029890468180697

namespace A295735

/-- `A295724(n+1)-2*A212804(n+1)` -/
def P11923029890468180697.Spec : Prop :=
  ∀ n, P11923029890468180697.a n = A295735 n

end A295735

/-! ## A295735.P17390202020559905705

`A005672(n)+A295724(n)-A000045(n)`
-/

namespace A295735.P17390202020559905705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295724 n - A000045 n)

end

end A295735.P17390202020559905705

namespace A295735

/-- `A005672(n)+A295724(n)-A000045(n)` -/
def P17390202020559905705.Spec : Prop :=
  ∀ n, P17390202020559905705.a n = A295735 n

end A295735

/-! ## A295735.P6299804533889820353

`A005672(n)+A295731(n)-A295730(n)`
-/

namespace A295735.P6299804533889820353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295731 n - A295730 n)

end

end A295735.P6299804533889820353

namespace A295735

/-- `A005672(n)+A295731(n)-A295730(n)` -/
def P6299804533889820353.Spec : Prop :=
  ∀ n, P6299804533889820353.a n = A295735 n

end A295735

/-! ## A295735.P17645554848153455353

`A005672(n+1)+A295733(n)-A005672(n)`
-/

namespace A295735.P17645554848153455353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295733 n - A005672 n)

end

end A295735.P17645554848153455353

namespace A295735

/-- `A005672(n+1)+A295733(n)-A005672(n)` -/
def P17645554848153455353.Spec : Prop :=
  ∀ n, P17645554848153455353.a n = A295735 n

end A295735

/-! ## A295735.P11434558137545193427

`A005672(n)+A295726(n)-A005672(n+1)`
-/

namespace A295735.P11434558137545193427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295726 n - A005672 (n + 1))

end

end A295735.P11434558137545193427

namespace A295735

/-- `A005672(n)+A295726(n)-A005672(n+1)` -/
def P11434558137545193427.Spec : Prop :=
  ∀ n, P11434558137545193427.a n = A295735 n

end A295735

/-! ## A295735.P122475659339935490

`A000045(n+1)+A295723(n)-A295718(n)`
-/

namespace A295735.P122475659339935490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295723 n - A295718 n)

end

end A295735.P122475659339935490

namespace A295735

/-- `A000045(n+1)+A295723(n)-A295718(n)` -/
def P122475659339935490.Spec : Prop :=
  ∀ n, P122475659339935490.a n = A295735 n

end A295735

/-! ## A295735.P16852465659834518149

`A005672(n+1)+A295730(n)-A295727(n)`
-/

namespace A295735.P16852465659834518149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295730 n - A295727 n)

end

end A295735.P16852465659834518149

namespace A295735

/-- `A005672(n+1)+A295730(n)-A295727(n)` -/
def P16852465659834518149.Spec : Prop :=
  ∀ n, P16852465659834518149.a n = A295735 n

end A295735

/-! ## A295735.P15746968255037698588

`A005672(n+1)+A295732(n)-A295730(n)`
-/

namespace A295735.P15746968255037698588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295732 n - A295730 n)

end

end A295735.P15746968255037698588

namespace A295735

/-- `A005672(n+1)+A295732(n)-A295730(n)` -/
def P15746968255037698588.Spec : Prop :=
  ∀ n, P15746968255037698588.a n = A295735 n

end A295735

/-! ## A295735.P4195348617879200971

`A295728(n)+A295730(n)-A005672(n+1)`
-/

namespace A295735.P4195348617879200971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295730 n - A005672 (n + 1))

end

end A295735.P4195348617879200971

namespace A295735

/-- `A295728(n)+A295730(n)-A005672(n+1)` -/
def P4195348617879200971.Spec : Prop :=
  ∀ n, P4195348617879200971.a n = A295735 n

end A295735

/-! ## A295735.P7822613253740916784

`A295728(n+1)+A000032(n)-A000032(n+1)`
-/

namespace A295735.P7822613253740916784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A000032 n - A000032 (n + 1))

end

end A295735.P7822613253740916784

namespace A295735

/-- `A295728(n+1)+A000032(n)-A000032(n+1)` -/
def P7822613253740916784.Spec : Prop :=
  ∀ n, P7822613253740916784.a n = A295735 n

end A295735

/-! ## A295735.P18243496220027136223

`A295860(n+1)+A000045(n)-A016116(n+1)`
-/

namespace A295735.P18243496220027136223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 1) + (A000045 n - A016116 (n + 1))

end

end A295735.P18243496220027136223

namespace A295735

/-- `A295860(n+1)+A000045(n)-A016116(n+1)` -/
def P18243496220027136223.Spec : Prop :=
  ∀ n, P18243496220027136223.a n = A295735 n

end A295735

/-!
# A295736: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = -2, a(2) = -2, a(3) = 1.

The programs for A295736, the canonical program `A295736.P6165838987960836245` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295736 has offset 0).

The definition of A295736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295736.P6165838987960836245`, by `A295736.P6165838987960836245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295736.P6165838987960836245

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=-2, a(2)=-2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295736

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P6165838987960836245.Spec : Prop :=
  ∀ n, P6165838987960836245.a n = A295736 n

theorem P6165838987960836245.correct : P6165838987960836245.Spec := by
  intro n
  simp only [A295736]

end A295736

/-! ## A295736.P170586763272197886

`A005672(n)+A295737(n)-A000045(n)`
-/

namespace A295736.P170586763272197886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295737 n - A000045 n)

end

end A295736.P170586763272197886

namespace A295736

/-- `A005672(n)+A295737(n)-A000045(n)` -/
def P170586763272197886.Spec : Prop :=
  ∀ n, P170586763272197886.a n = A295736 n

end A295736

/-! ## A295736.P9252954051674778801

`A295724(n)+A295737(n)-A295723(n)`
-/

namespace A295736.P9252954051674778801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + (A295737 n - A295723 n)

end

end A295736.P9252954051674778801

namespace A295736

/-- `A295724(n)+A295737(n)-A295723(n)` -/
def P9252954051674778801.Spec : Prop :=
  ∀ n, P9252954051674778801.a n = A295736 n

end A295736

/-! ## A295736.P16046055854979581545

`A295733(n)+A295733(n)-A295730(n)`
-/

namespace A295736.P16046055854979581545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 n + (A295733 n - A295730 n)

end

end A295736.P16046055854979581545

namespace A295736

/-- `A295733(n)+A295733(n)-A295730(n)` -/
def P16046055854979581545.Spec : Prop :=
  ∀ n, P16046055854979581545.a n = A295736 n

end A295736

/-! ## A295736.P10107220661003336884

`A295725(n)+A295735(n)-A295727(n)`
-/

namespace A295736.P10107220661003336884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 n + (A295735 n - A295727 n)

end

end A295736.P10107220661003336884

namespace A295736

/-- `A295725(n)+A295735(n)-A295727(n)` -/
def P10107220661003336884.Spec : Prop :=
  ∀ n, P10107220661003336884.a n = A295736 n

end A295736

/-! ## A295736.P12876801462450433101

`A295733(n)+A295735(n)-A295729(n)`
-/

namespace A295736.P12876801462450433101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 n + (A295735 n - A295729 n)

end

end A295736.P12876801462450433101

namespace A295736

/-- `A295733(n)+A295735(n)-A295729(n)` -/
def P12876801462450433101.Spec : Prop :=
  ∀ n, P12876801462450433101.a n = A295736 n

end A295736

/-! ## A295736.P16808893159998862402

`A295858(n+1)-A295721(n)`
-/

namespace A295736.P16808893159998862402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 (n + 1) - A295721 n

end

end A295736.P16808893159998862402

namespace A295736

/-- `A295858(n+1)-A295721(n)` -/
def P16808893159998862402.Spec : Prop :=
  ∀ n, P16808893159998862402.a n = A295736 n

end A295736

/-! ## A295736.P9145098547759346439

`2*A295733(n)-A295730(n)`
-/

namespace A295736.P9145098547759346439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295733 n - A295730 n

end

end A295736.P9145098547759346439

namespace A295736

/-- `2*A295733(n)-A295730(n)` -/
def P9145098547759346439.Spec : Prop :=
  ∀ n, P9145098547759346439.a n = A295736 n

end A295736

/-! ## A295736.P7355467787548236579

`Δ[A295859(n)]-A164073(n+1)`
-/

namespace A295736.P7355467787548236579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164073 (n + 1)

end

end A295736.P7355467787548236579

namespace A295736

/-- `Δ[A295859(n)]-A164073(n+1)` -/
def P7355467787548236579.Spec : Prop :=
  ∀ n, P7355467787548236579.a n = A295736 n

end A295736

/-!
# A295737: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = -1, a(2) = -1, a(3) = 2.

The programs for A295737, the canonical program `A295737.P8369836296426354131` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295737 has offset 0).

The definition of A295737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295737.P8369836296426354131`, by `A295737.P8369836296426354131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295737.P8369836296426354131

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295737

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P8369836296426354131.Spec : Prop :=
  ∀ n, P8369836296426354131.a n = A295737 n

theorem P8369836296426354131.correct : P8369836296426354131.Spec := by
  intro n
  simp only [A295737]

end A295737

/-! ## A295737.P3984779829600091393

`A000045(n)+A295736(n)-A005672(n)`
-/

namespace A295737.P3984779829600091393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295736 n - A005672 n)

end

end A295737.P3984779829600091393

namespace A295737

/-- `A000045(n)+A295736(n)-A005672(n)` -/
def P3984779829600091393.Spec : Prop :=
  ∀ n, P3984779829600091393.a n = A295737 n

end A295737

/-! ## A295737.P395353265186986638

`A000045(n+1)+A295727(n+1)-A295718(n)`
-/

namespace A295737.P395353265186986638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295727 (n + 1) - A295718 n)

end

end A295737.P395353265186986638

namespace A295737

/-- `A000045(n+1)+A295727(n+1)-A295718(n)` -/
def P395353265186986638.Spec : Prop :=
  ∀ n, P395353265186986638.a n = A295737 n

end A295737

/-! ## A295737.P2799587808912439549

`A295728(n+1)-2*A295727(n)`
-/

namespace A295737.P2799587808912439549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) - 2 * A295727 n

end

end A295737.P2799587808912439549

namespace A295737

/-- `A295728(n+1)-2*A295727(n)` -/
def P2799587808912439549.Spec : Prop :=
  ∀ n, P2799587808912439549.a n = A295737 n

end A295737

/-! ## A295737.P1357683651796219915

`Δ[A295858(n)]-A016116(n)`
-/

namespace A295737.P1357683651796219915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016116 n

end

end A295737.P1357683651796219915

namespace A295737

/-- `Δ[A295858(n)]-A016116(n)` -/
def P1357683651796219915.Spec : Prop :=
  ∀ n, P1357683651796219915.a n = A295737 n

end A295737

/-! ## A295737.P5093371103478007915

`Δ[A295858(n)-A052955(n)]`
-/

namespace A295737.P5093371103478007915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 n - A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295737.P5093371103478007915

namespace A295737

/-- `Δ[A295858(n)-A052955(n)]` -/
def P5093371103478007915.Spec : Prop :=
  ∀ n, P5093371103478007915.a n = A295737 n

end A295737

/-! ## A295737.P6220196836122619643

`A295721(n+1)-(A000045(n)+A000032(n+1))`
-/

namespace A295737.P6220196836122619643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 (n + 1) - (A000045 n + A000032 (n + 1))

end

end A295737.P6220196836122619643

namespace A295737

/-- `A295721(n+1)-(A000045(n)+A000032(n+1))` -/
def P6220196836122619643.Spec : Prop :=
  ∀ n, P6220196836122619643.a n = A295737 n

end A295737

/-! ## A295737.P11376668858542347875

`Δ[A295861(n)-A001595(n)]`
-/

namespace A295737.P11376668858542347875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295861 n - A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295737.P11376668858542347875

namespace A295737

/-- `Δ[A295861(n)-A001595(n)]` -/
def P11376668858542347875.Spec : Prop :=
  ∀ n, P11376668858542347875.a n = A295737 n

end A295737

/-! ## A295737.P17755752819375851575

`Δ[A295861(n)]-2*A000045(n)`
-/

namespace A295737.P17755752819375851575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A000045 n

end

end A295737.P17755752819375851575

namespace A295737

/-- `Δ[A295861(n)]-2*A000045(n)` -/
def P17755752819375851575.Spec : Prop :=
  ∀ n, P17755752819375851575.a n = A295737 n

end A295737

/-!
# A295738: a(1)=2, a(2)=3; for n > 2, a(n) is the smallest prime number greater than a(n-1) which has the form a(n-2)*2^k - a(n-1) for some integer k.

The programs for A295738, there is no canonical definition to state claims against.
-/

/-! ## A295738.P6659543965461487794

`∩[A106639(n+1), A337567(n)]`
-/

namespace A295738.P6659543965461487794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295738.P6659543965461487794

/-! ## A295738.P14384467176379844190

`p?[∑[A008621(A174094(n+1))]]`
-/

namespace A295738.P14384467176379844190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A174094 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295738.P14384467176379844190

/-! ## A295738.P1685429664237074631

`p?[∑[A008621(A174094(n))]-1]`
-/

namespace A295738.P1685429664237074631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A174094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295738.P1685429664237074631

/-!
# A295739: Expansion of e.g.f. exp(Sum_{k>=1} d(k)*x^k/k!), where d(k) is the number of divisors of k (A000005).

The programs for A295739, there is no canonical definition to state claims against.
-/

/-! ## A295739.P17930926384870141230

`A269805(a(n-1))-floor(n²/e+n)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A295739.P17930926384870141230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A269805 (a (n - 1)).toNat - ⌊(n ^ 2 : ℝ) / Real.exp 1 + (n : ℝ)⌋

end

end A295739.P17930926384870141230

/-! ## A295739.P2798577893041322672

`A221490(A259357(2*n+1))+A130497(A323788(n)+1)`
-/

namespace A295739.P2798577893041322672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (A259357 (2 * n + 1)).toNat + A130497 (A323788 n + 1).toNat

end

end A295739.P2798577893041322672

/-! ## A295739.P10016375493344110502

`A003074(4*A178119(n))+A240065(n)-A003074(n+1)`
-/

namespace A295739.P10016375493344110502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (4 * A178119 n).toNat + (A240065 n - A003074 (n + 1))

end

end A295739.P10016375493344110502

/-!
# A295746: Distinct second differences in the sequence of primes in order of appearance.

The programs for A295746, there is no canonical definition to state claims against.
-/

/-! ## A295746.P6265919642077610781

`A036263(A376656(n+1))`
-/

namespace A295746.P6265919642077610781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (A376656 (n + 1)).toNat

end

end A295746.P6265919642077610781

/-! ## A295746.P10396921198081198732

`A093667(A376656(n+1))-A295973(n+1)`
-/

namespace A295746.P10396921198081198732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A376656 (n + 1)).toNat - A295973 (n + 1)

end

end A295746.P10396921198081198732

/-! ## A295746.P12100956236556606088

`A093667(A376656(n+1))-A000040(A376656(n+1)+1)`
-/

namespace A295746.P12100956236556606088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A376656 (n + 1)).toNat - A000040 (A376656 (n + 1) + 1).toNat

end

end A295746.P12100956236556606088

/-! ## A295746.P4320266974108541204

`A093667(A376656(n+1))-A008578(A376656(n+1)+2)`
-/

namespace A295746.P4320266974108541204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A376656 (n + 1)).toNat - A008578 (A376656 (n + 1) + 2).toNat

end

end A295746.P4320266974108541204

/-!
# A295752: Smallest number with exactly n representations as a sum of seven nonnegative squares.

The programs for A295752, there is no canonical definition to state claims against.
-/

/-! ## A295752.P9884719000366594938

`A016825(n)-A060990(A122448(n))`
-/

namespace A295752.P9884719000366594938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A060990 (A122448 n).toNat

end

end A295752.P9884719000366594938

/-! ## A295752.P3145637686205748299

`A313534(n)-A000188(A052945(n))`
-/

namespace A295752.P3145637686205748299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313534 n - A000188 (A052945 n).toNat

end

end A295752.P3145637686205748299

/-! ## A295752.P4495001240854432897

`A311898(A276142(n+1))-4`
-/

namespace A295752.P4495001240854432897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311898 (A276142 (n + 1)).toNat - 4

end

end A295752.P4495001240854432897

/-! ## A295752.P18432432030918471338

`A056169(A101052(n))+4*n`
-/

namespace A295752.P18432432030918471338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A101052 n).toNat + (4 * n : ℤ)

end

end A295752.P18432432030918471338

/-! ## A295752.P8322500434289559185

`A092452(n)+A029837(A092424(2*n))`
-/

namespace A295752.P8322500434289559185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092452 n + A029837 (A092424 (2 * n)).toNat

end

end A295752.P8322500434289559185

/-!
# A295753: The longest side of a minimal rectangle made from n squares.

The programs for A295753, there is no canonical definition to state claims against.
-/

/-! ## A295753.P11874140493862409949

`A014709(A304912(n))+A000196(n)`
-/

namespace A295753.P11874140493862409949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A304912 n).toNat + A000196 n

end

end A295753.P11874140493862409949

/-! ## A295753.P8564523389768094244

`A043558(A007913(n+1)*A183782(n+1))`
-/

namespace A295753.P8564523389768094244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A007913 (n + 1) * A183782 (n + 1)).toNat

end

end A295753.P8564523389768094244

/-! ## A295753.P16543065802119532676

`A001221(A030101(2*n+3)*A143176(n+1))`
-/

namespace A295753.P16543065802119532676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A030101 (2 * n + 3) * A143176 (n + 1)).toNat

end

end A295753.P16543065802119532676

/-! ## A295753.P13954475573132857884

`A007895(∑[A213398(A056964(n))])`
-/

namespace A295753.P13954475573132857884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 (A056964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295753.P13954475573132857884

/-! ## A295753.P2344077368591037581

`A316844(A326989(n+1)+A187829(n+1))`
-/

namespace A295753.P2344077368591037581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (A326989 (n + 1) + A187829 (n + 1)).toNat

end

end A295753.P2344077368591037581

/-!
# A295754: Solution of the complementary equation a(n) = a(n-1) + a(n-3) + a(n-4) + b(n-4), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295754, there is no canonical definition to state claims against.
-/

/-! ## A295754.P15899753155841662165

`A004277(A295755(n))-A295756(n)`
-/

namespace A295754.P15899753155841662165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295755 n).toNat - A295756 n

end

end A295754.P15899753155841662165

/-!
# A295755: Solution of the complementary equation a(n) = a(n-1) + a(n-3) + a(n-4) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295755, there is no canonical definition to state claims against.
-/

/-! ## A295755.P3950113281093378036

`A295756(n)-A004526(A126116(n))`
-/

namespace A295755.P3950113281093378036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295756 n - A004526 (A126116 n).toNat

end

end A295755.P3950113281093378036

/-! ## A295755.P7245690965772516548

`A295756(n)-A060143(A074677(n))`
-/

namespace A295755.P7245690965772516548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295756 n - A060143 (A074677 n).toNat

end

end A295755.P7245690965772516548

/-! ## A295755.P15003576662219447741

`A295757(n)-2*A060143(A074677(n))`
-/

namespace A295755.P15003576662219447741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295757 n - 2 * A060143 (A074677 n).toNat

end

end A295755.P15003576662219447741

/-! ## A295755.P9511477231287663257

`A014682(A295756(n)+A295754(n))`
-/

namespace A295755.P9511477231287663257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A295756 n + A295754 n).toNat

end

end A295755.P9511477231287663257

/-! ## A295755.P17912166451406498255

`A273943(A295756(n)+A295754(n))`
-/

namespace A295755.P17912166451406498255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A295756 n + A295754 n).toNat

end

end A295755.P17912166451406498255

/-!
# A295756: Solution of the complementary equation a(n) = a(n-1) + a(n-3) + a(n-4) + b(n-2), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295756, there is no canonical definition to state claims against.
-/

/-! ## A295756.P6188774612199336544

`A295755(n)+A004526(A126116(n))`
-/

namespace A295756.P6188774612199336544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295755 n + A004526 (A126116 n).toNat

end

end A295756.P6188774612199336544

/-! ## A295756.P11974896027019940176

`A295755(n)+A060143(A074677(n))`
-/

namespace A295756.P11974896027019940176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295755 n + A060143 (A074677 n).toNat

end

end A295756.P11974896027019940176

/-! ## A295756.P13491578057284374652

`A295757(n)-A004526(A126116(n))`
-/

namespace A295756.P13491578057284374652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295757 n - A004526 (A126116 n).toNat

end

end A295756.P13491578057284374652

/-! ## A295756.P16035686599565842780

`A295757(n)-A060143(A074677(n))`
-/

namespace A295756.P16035686599565842780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295757 n - A060143 (A074677 n).toNat

end

end A295756.P16035686599565842780

/-! ## A295756.P5808223279420401484

`(A295757(n)+A295755(n))/A001222(A282344(n+1))`
-/

namespace A295756.P5808223279420401484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295757 n + A295755 n : ℚ) / (A001222 (A282344 (n + 1)).toNat : ℚ)

end

end A295756.P5808223279420401484

/-!
# A295757: Solution of the complementary equation a(n) = a(n-1) + a(n-3) + a(n-4) + b(n-1), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295757, there is no canonical definition to state claims against.
-/

/-! ## A295757.P161355312648308764

`A295756(n)+A004526(A126116(n))`
-/

namespace A295757.P161355312648308764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295756 n + A004526 (A126116 n).toNat

end

end A295757.P161355312648308764

/-! ## A295757.P8521797561265944171

`A295756(n)+A060143(A074677(n))`
-/

namespace A295757.P8521797561265944171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295756 n + A060143 (A074677 n).toNat

end

end A295757.P8521797561265944171

/-! ## A295757.P523989968140537468

`A004277(A295756(n))-A295755(n)`
-/

namespace A295757.P523989968140537468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295756 n).toNat - A295755 n

end

end A295757.P523989968140537468

/-!
# A295758: O.g.f.: Sum_{n>=0} Product_{k=1..n} tan( (2*k-1)*arctan(x) ).

The programs for A295758, there is no canonical definition to state claims against.
-/

/-! ## A295758.P16370846741028432103

`A304804(A305207(n))-2`
-/

namespace A295758.P16370846741028432103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (A305207 n).toNat - 2

end

end A295758.P16370846741028432103

/-! ## A295758.P13228543462781668945

`or(1, A008619(A340904(n)))`
-/

namespace A295758.P13228543462781668945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008619 (A340904 n).toNat)

end

end A295758.P13228543462781668945

/-!
# A295759: O.g.f.: Sum_{n>=0} Product_{k=1..n} tan( (2*k)*arctan(x) ).

The programs for A295759, there is no canonical definition to state claims against.
-/

/-! ## A295759.P1147290775688100713

`A058864(n+1)+A051908(A066195(n))`
-/

namespace A295759.P1147290775688100713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058864 (n + 1) + A051908 (A066195 n).toNat

end

end A295759.P1147290775688100713

/-! ## A295759.P13505750795140522015

`A230121(A000172(n))+A038052(n+1)`
-/

namespace A295759.P13505750795140522015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230121 (A000172 n).toNat + A038052 (n + 1)

end

end A295759.P13505750795140522015

/-!
# A295760: G.f. A(x) satisfies: A(x - A(x^2)) = x + A(x^2).

The programs for A295760, there is no canonical definition to state claims against.
-/

/-! ## A295760.P7319258622474024678

`A007947(A000302(n))*A271844(n+1)`
-/

namespace A295760.P7319258622474024678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000302 n).toNat * A271844 (n + 1)

end

end A295760.P7319258622474024678

/-! ## A295760.P4667549905071731839

`A020639(A006318(n))*A271844(n+1)`
-/

namespace A295760.P4667549905071731839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006318 n).toNat * A271844 (n + 1)

end

end A295760.P4667549905071731839

/-! ## A295760.P11200147921834631554

`A034444(A000244(n))*A271844(n+1)`
-/

namespace A295760.P11200147921834631554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000244 n).toNat * A271844 (n + 1)

end

end A295760.P11200147921834631554

/-! ## A295760.P12634850089508828829

`A020639(A047009(n))*A271844(n+1)`
-/

namespace A295760.P12634850089508828829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047009 n).toNat * A271844 (n + 1)

end

end A295760.P12634850089508828829

/-!
# A295761: G.f. A(x) satisfies: A(x - A(x^2)) = x + 2*A(x^2).

The programs for A295761, there is no canonical definition to state claims against.
-/

/-! ## A295761.P11275136651643090146

`A088637(A058766(n))`
-/

namespace A295761.P11275136651643090146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088637 (A058766 n).toNat

end

end A295761.P11275136651643090146

/-! ## A295761.P6601026558294614333

`∑[A366028(∑[A006882(n)])]`
-/

namespace A295761.P6601026558294614333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366028 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295761.P6601026558294614333

/-!
# A295762: G.f. A(x) satisfies: A(x - 2*A(x^2)) = x + A(x^2).

The programs for A295762, there is no canonical definition to state claims against.
-/

/-! ## A295762.P14033678087414053871

`A008612(4^n+7^n+1)`
-/

namespace A295762.P14033678087414053871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (4 ^ n + (7 ^ n + 1))

end

end A295762.P14033678087414053871

/-!
# A295763: G.f. satisfies: A(x) = Sum_{n>=0} binomial(n*(n+1),n)/(n+1) * x^n/A(x)^n.

The programs for A295763, there is no canonical definition to state claims against.
-/

/-! ## A295763.P15041132981803960478

`n!*A048263(n!)`
-/

namespace A295763.P15041132981803960478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048263 (Nat.factorial n)

end

end A295763.P15041132981803960478

/-!
# A295764: G.f. satisfies: A(x) = Sum_{n>=0} binomial((n+1)^2,n)/(n+1) * x^n/A(x)^n.

The programs for A295764, there is no canonical definition to state claims against.
-/

/-! ## A295764.P17697866492358224245

`A210062(A187647(n))`
-/

namespace A295764.P17697866492358224245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (A187647 n).toNat

end

end A295764.P17697866492358224245

/-!
# A295765: G.f. satisfies: A(x) = Sum_{n>=0} binomial((n+1)^2,n)/(n+1)^2 * x^n/A(x)^n.

The programs for A295765, there is no canonical definition to state claims against.
-/

/-! ## A295765.P6445801061772955779

`A129646(A087223(n))`
-/

namespace A295765.P6445801061772955779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (A087223 n).toNat

end

end A295765.P6445801061772955779

/-!
# A295766: G.f. A(x) satisfies: [x^(n-1)] A(x)^(n^2)/n^2 = [x^(n-2)] A(x)^(n^2) for n>=2 with A'(0) = 1.

The programs for A295766, there is no canonical definition to state claims against.
-/

/-! ## A295766.P11669969720467161778

`A060151(A006121(n))-n`
-/

namespace A295766.P11669969720467161778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (A006121 n).toNat - (n : ℤ)

end

end A295766.P11669969720467161778

/-!
# A295767: G.f. A(x) satisfies: A(x + A(x)*A(-x)) = x - A(x)*A(-x).

The programs for A295767, there is no canonical definition to state claims against.
-/

/-! ## A295767.P10617918309943050509

`∑[A193231(A317079(n))]`
-/

namespace A295767.P10617918309943050509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A317079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295767.P10617918309943050509

/-! ## A295767.P1498866648123322204

`round(1/acot(n))*A134478(A162053(n+1))`
-/

namespace A295767.P1498866648123322204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A134478 (A162053 (n + 1)).toNat

end

end A295767.P1498866648123322204

/-!
# A295768: Triangular numbers that can be represented as a sum of two distinct triangular numbers, and as a product of two triangular numbers greater than 1.

The programs for A295768, there is no canonical definition to state claims against.
-/

/-! ## A295768.P2130044879639115518

`filter[A188630(n+1), A288213(#)]`
-/

namespace A295768.P2130044879639115518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288213 (f1 j).toNat = 1) n)

end

end A295768.P2130044879639115518

/-!
# A295769: Triangular numbers that can be represented as a product of two triangular numbers greater than 1, and as a product of three triangular numbers greater than 1.

The programs for A295769, there is no canonical definition to state claims against.
-/

/-! ## A295769.P8175733710167445128

`∩[A188630(n+1), A225440(n+1)]`
-/

namespace A295769.P8175733710167445128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295769.P8175733710167445128

/-! ## A295769.P5536067889232639049

`∩[A225440(n+1), A264961(n+1)]`
-/

namespace A295769.P5536067889232639049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295769.P5536067889232639049

/-!
# A295771: a(n) is the minimum size of a planar additive basis for the square [0,n]^2.

The programs for A295771, there is no canonical definition to state claims against.
-/

/-! ## A295771.P1738675167992777984

`char[∏{p}[n, 2-#]]+2*n`
-/

namespace A295771.P1738675167992777984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (p : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * n

end

end A295771.P1738675167992777984

/-! ## A295771.P14768453542690635487

`or(2*n, char[∏{p}[n, 2-#]])`
-/

namespace A295771.P14768453542690635487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (p : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A295771.P14768453542690635487

/-! ## A295771.P7768759425836044365

`n!²%(n+2)+2*n`
-/

namespace A295771.P7768759425836044365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 % (n + 2) + 2 * n

end

end A295771.P7768759425836044365

/-! ## A295771.P12237181917188627566

`round(acot(∑{e}[n+2, #])+2*n)`
-/

namespace A295771.P12237181917188627566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) + (2 * n : ℝ))

end

end A295771.P12237181917188627566

/-! ## A295771.P14772875161157907030

`C(2, ∑{e}[(n+2)², #])+2*n`
-/

namespace A295771.P14772875161157907030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 2 * n

end

end A295771.P14772875161157907030

/-!
# A295772: a(n) = Sum_{k=0..n} binomial((n-k)*k, k).

The programs for A295772, there is no canonical definition to state claims against.
-/

/-! ## A295772.P15262054381746643475

`floor(root(A202026(n+1), 7))`
-/

namespace A295772.P15262054381746643475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202026 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A295772.P15262054381746643475

/-! ## A295772.P858257489981883916

`A024417(A067340(n!))`
-/

namespace A295772.P858257489981883916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A067340 (Nat.factorial n)).toNat

end

end A295772.P858257489981883916

/-! ## A295772.P2752989766231159502

`A091226(A002873(n)+1)`
-/

namespace A295772.P2752989766231159502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A002873 n + 1).toNat

end

end A295772.P2752989766231159502

/-!
# A295773: a(n) = Sum_{k=0..n} binomial(k^2, k).

The programs for A295773, there is no canonical definition to state claims against.
-/

/-! ## A295773.P15548385866121541060

`∑[C(n², n)]`
-/

namespace A295773.P15548385866121541060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295773.P15548385866121541060

/-! ## A295773.P13620886541433019435

`a(n-1)+C(n², n)` with `a(0)=1`
-/

namespace A295773.P13620886541433019435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n ^ 2) n

end

end A295773.P13620886541433019435

/-! ## A295773.P3972939588564940001

`∑[A014062(n)]`
-/

namespace A295773.P3972939588564940001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295773.P3972939588564940001

/-! ## A295773.P18012587019566439829

`∑[A055789(n²)]`
-/

namespace A295773.P18012587019566439829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295773.P18012587019566439829

/-! ## A295773.P11858622834365123613

`∑[A102366(n²)]`
-/

namespace A295773.P11858622834365123613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295773.P11858622834365123613

/-!
# A295775: Number of n X n 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1's.

The programs for A295775, there is no canonical definition to state claims against.
-/

/-! ## A295775.P4809021513351426241

`A295781(∑[4*n]+1)`
-/

namespace A295775.P4809021513351426241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295775.P4809021513351426241

/-! ## A295775.P5201190038376733552

`record[A295781(A330613(n+1))]`
-/

namespace A295775.P5201190038376733552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295775.P5201190038376733552

/-! ## A295775.P4991748662784181141

`record[A003982(n)*A295781(n+1)]`
-/

namespace A295775.P4991748662784181141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295775.P4991748662784181141

/-! ## A295775.P12939869275702231547

`record[gcd(A049581(n), A295781(n+1))]`
-/

namespace A295775.P12939869275702231547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A295781 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295775.P12939869275702231547

/-! ## A295775.P7479696749521304820

`A308975(n)+A295781(A001844(n))`
-/

namespace A295775.P7479696749521304820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A295781 (A001844 n).toNat

end

end A295775.P7479696749521304820

/-!
# A295776: Number of n X 3 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295776, there is no canonical definition to state claims against.
-/

/-! ## A295776.P15103465165516080869

`A295781(∑[n+2]+4)`
-/

namespace A295776.P15103465165516080869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295776.P15103465165516080869

/-! ## A295776.P12972642922366009091

`lcm(A106400(n), A295781(A167614(n+1)))`
-/

namespace A295776.P12972642922366009091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A295781 (A167614 (n + 1)).toNat)

end

end A295776.P12972642922366009091

/-! ## A295776.P14000912945987121826

`or(A000007(n), A295781(A167614(n+1)))`
-/

namespace A295776.P14000912945987121826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295781 (A167614 (n + 1)).toNat)

end

end A295776.P14000912945987121826

/-! ## A295776.P10836624609484182324

`or(A016389(n), A295781(A167614(n+1)))`
-/

namespace A295776.P10836624609484182324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A295781 (A167614 (n + 1)).toNat)

end

end A295776.P10836624609484182324

/-! ## A295776.P1036586281841304385

`or(A063524(n), A295781(A167614(n+1)))`
-/

namespace A295776.P1036586281841304385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A295781 (A167614 (n + 1)).toNat)

end

end A295776.P1036586281841304385

/-!
# A295777: Number of nX4 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295777, there is no canonical definition to state claims against.
-/

/-! ## A295777.P11785800682238506083

`A295781(A374004(n+1))`
-/

namespace A295777.P11785800682238506083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A374004 (n + 1)).toNat

end

end A295777.P11785800682238506083

/-! ## A295777.P14453397327099774240

`A295781(A141214(n)+7)`
-/

namespace A295777.P14453397327099774240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A141214 n + 7).toNat

end

end A295777.P14453397327099774240

/-! ## A295777.P4986310856566060759

`A295781(A052905(n)+9)`
-/

namespace A295777.P4986310856566060759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A052905 n + 9).toNat

end

end A295777.P4986310856566060759

/-! ## A295777.P1329398783724847404

`A295781(A055999(n)+10)`
-/

namespace A295777.P1329398783724847404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A055999 n + 10).toNat

end

end A295777.P1329398783724847404

/-! ## A295777.P14847885826800270726

`A295781(A167614(n+2)+1)`
-/

namespace A295777.P14847885826800270726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A167614 (n + 2) + 1).toNat

end

end A295777.P14847885826800270726

/-!
# A295778: Number of nX5 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295778, there is no canonical definition to state claims against.
-/

/-! ## A295778.P17800483331553523253

`A295781(∑[n+4]+11)`
-/

namespace A295778.P17800483331553523253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A295778.P17800483331553523253

/-! ## A295778.P1688770546406885719

`A007913((n+1)²)*A295781(A155212(n)+13)`
-/

namespace A295778.P1688770546406885719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2) * A295781 (A155212 n + 13).toNat

end

end A295778.P1688770546406885719

/-! ## A295778.P14621718988049949329

`A003557(A006530(n+1))*A295781(A155212(n)+13)`
-/

namespace A295778.P14621718988049949329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A006530 (n + 1)).toNat * A295781 (A155212 n + 13).toNat

end

end A295778.P14621718988049949329

/-! ## A295778.P2239804359829245655

`A001221(A000961(n+2))*A295781(A155212(n)+13)`
-/

namespace A295778.P2239804359829245655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 2)).toNat * A295781 (A155212 n + 13).toNat

end

end A295778.P2239804359829245655

/-! ## A295778.P8440721015234123189

`A005361(A006530(n+2))*A295781(A155212(n)+13)`
-/

namespace A295778.P8440721015234123189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A006530 (n + 2)).toNat * A295781 (A155212 n + 13).toNat

end

end A295778.P8440721015234123189

/-!
# A295779: Number of nX6 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295779, there is no canonical definition to state claims against.
-/

/-! ## A295779.P3626760525268035010

`A295781(A374007(n+1))`
-/

namespace A295779.P3626760525268035010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A374007 (n + 1)).toNat

end

end A295779.P3626760525268035010

/-! ## A295779.P11306414805158745966

`A295781(eq[7, A131818(n+1)])`
-/

namespace A295779.P11306414805158745966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295779.P11306414805158745966

/-! ## A295779.P18432615318688677864

`A295781(A052905(n+3))`
-/

namespace A295779.P18432615318688677864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A052905 (n + 3)).toNat

end

end A295779.P18432615318688677864

/-! ## A295779.P11814322360601096125

`A295781(eq[5, A193592(n)])`
-/

namespace A295779.P11814322360601096125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295779.P11814322360601096125

/-! ## A295779.P14416547079900187482

`A295781(eq[8, A258709(n)])`
-/

namespace A295779.P14416547079900187482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295779.P14416547079900187482

/-!
# A295780: Number of nX7 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295780, there is no canonical definition to state claims against.
-/

/-! ## A295780.P17919950922314444225

`A295781(A374008(n+1))`
-/

namespace A295780.P17919950922314444225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A374008 (n + 1)).toNat

end

end A295780.P17919950922314444225

/-! ## A295780.P13177065150135050736

`A295781(eq[11, A066657(n)])`
-/

namespace A295780.P13177065150135050736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295780.P13177065150135050736

/-! ## A295780.P516344891945388188

`A295781(eq[8, A131818(n+1)])`
-/

namespace A295780.P516344891945388188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295780.P516344891945388188

/-! ## A295780.P11448195435046537680

`A295781(A055999(n+4))`
-/

namespace A295780.P11448195435046537680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A055999 (n + 4)).toNat

end

end A295780.P11448195435046537680

/-! ## A295780.P8800624886211981558

`A295781(eq[6, A193592(n)])`
-/

namespace A295780.P8800624886211981558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295780.P8800624886211981558

/-!
# A295781: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 0 or 2 king-move neighboring 1s.

The programs for A295781, there is no canonical definition to state claims against.
-/

/-! ## A295781.P11527341840484933338

`or(A295051(n+1), A360113(A005248(n)))`
-/

namespace A295781.P11527341840484933338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295051 (n + 1)) (A360113 (A005248 n).toNat)

end

end A295781.P11527341840484933338

/-! ## A295781.P16344202827583717864

`or(A295379(n+1), A360113(A005248(n)))`
-/

namespace A295781.P16344202827583717864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295379 (n + 1)) (A360113 (A005248 n).toNat)

end

end A295781.P16344202827583717864

/-! ## A295781.P8572445761513283002

`A295051(n+1)+A280710(A078224(n+1))`
-/

namespace A295781.P8572445761513283002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) + A280710 (A078224 (n + 1)).toNat

end

end A295781.P8572445761513283002

/-! ## A295781.P16510200828046425289

`A295379(n+1)+A280710(A078224(n+1))`
-/

namespace A295781.P16510200828046425289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) + A280710 (A078224 (n + 1)).toNat

end

end A295781.P16510200828046425289

/-! ## A295781.P3868036137983445022

`A212213(n+2)+A089867(A295051(n+1))`
-/

namespace A295781.P3868036137983445022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212213 (n + 2) + A089867 (A295051 (n + 1)).toNat

end

end A295781.P3868036137983445022

/-!
# A295782: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is the number of coprime pairs (a,b) with -n <= a <= n, -k <= b <= k.

The programs for A295782, there is no canonical definition to state claims against.
-/

/-! ## A295782.P14434962624354617910

`4*(A135646(n+1)+1)`
-/

namespace A295782.P14434962624354617910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A135646 (n + 1) + 1)

end

end A295782.P14434962624354617910

/-! ## A295782.P1312966856455332282

`A192544(A135646(n+1))`
-/

namespace A295782.P1312966856455332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (A135646 (n + 1)).toNat

end

end A295782.P1312966856455332282

/-! ## A295782.P16318697097646280497

`A008574(A135646(n+1)+1)`
-/

namespace A295782.P16318697097646280497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A135646 (n + 1) + 1).toNat

end

end A295782.P16318697097646280497

/-! ## A295782.P14241749704626427374

`A008586(A135646(n+1)+1)`
-/

namespace A295782.P14241749704626427374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A135646 (n + 1) + 1).toNat

end

end A295782.P14241749704626427374

/-! ## A295782.P7256114073774519872

`A059558(A135646(n+1)+1)`
-/

namespace A295782.P7256114073774519872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (A135646 (n + 1) + 1).toNat

end

end A295782.P7256114073774519872

/-! ## A295782.P9334282234818767749

`A135646(n+1)+A016777(A135646(n+1)+1)`
-/

namespace A295782.P9334282234818767749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (n + 1) + A016777 (A135646 (n + 1) + 1).toNat

end

end A295782.P9334282234818767749

/-!
# A295783: First differences of A293160.

The programs for A295783, there is no canonical definition to state claims against.
-/

/-! ## A295783.P14509212439125618391

`Δ[A293160(n)]`
-/

namespace A295783.P14509212439125618391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295783.P14509212439125618391

/-! ## A295783.P3395119488049650985

`Δ[A294443(n)]`
-/

namespace A295783.P3395119488049650985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295783.P3395119488049650985

/-! ## A295783.P5607870530339485299

`Δ[A293165(n+1)]`
-/

namespace A295783.P5607870530339485299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295783.P5607870530339485299

/-! ## A295783.P15859380784732400896

`A293160(n+1)-A293160(n)`
-/

namespace A295783.P15859380784732400896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 (n + 1) - A293160 n

end

end A295783.P15859380784732400896

/-! ## A295783.P7704550998553886446

`A294443(n+1)-A294443(n)`
-/

namespace A295783.P7704550998553886446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294443 (n + 1) - A294443 n

end

end A295783.P7704550998553886446

/-!
# A295784: Length of the longest arithmetic progression in squares mod n with slope coprime to n.

The programs for A295784, there is no canonical definition to state claims against.
-/

/-! ## A295784.P10428733844801429605

`A297033(A090370(n+4)^3)`
-/

namespace A295784.P10428733844801429605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A090370 (n + 4) ^ 3).toNat

end

end A295784.P10428733844801429605

/-! ## A295784.P13948968258686455937

`A297033(A090370(n+4)²*A090370(n+4))`
-/

namespace A295784.P13948968258686455937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A090370 (n + 4) ^ 2 * A090370 (n + 4)).toNat

end

end A295784.P13948968258686455937

/-! ## A295784.P937174146521208479

`A001222((A090370(n+4)-2)*A000043(n+1))`
-/

namespace A295784.P937174146521208479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A090370 (n + 4) - 2) * A000043 (n + 1)).toNat

end

end A295784.P937174146521208479

/-! ## A295784.P8349069525403980480

`A001222((A090370(n+4)-2)*A059846(n+1))`
-/

namespace A295784.P8349069525403980480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A090370 (n + 4) - 2) * A059846 (n + 1)).toNat

end

end A295784.P8349069525403980480

/-! ## A295784.P16675895004966981270

`A137734(A245689(n+3)+A072189(n))`
-/

namespace A295784.P16675895004966981270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A245689 (n + 3) + A072189 n).toNat

end

end A295784.P16675895004966981270

/-!
# A295785: a(n) = A179926(A025487(n)).

The programs for A295785, there is no canonical definition to state claims against.
-/

/-! ## A295785.P11605632663337704843

`A179926(A025487(n+1))`
-/

namespace A295785.P11605632663337704843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A025487 (n + 1)).toNat

end

end A295785.P11605632663337704843

/-! ## A295785.P7382381545306661393

`A179926(A333964(n+1))`
-/

namespace A295785.P7382381545306661393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A333964 (n + 1)).toNat

end

end A295785.P7382381545306661393

/-! ## A295785.P7401833035170165423

`A179926(record[A046523(n+1)])`
-/

namespace A295785.P7401833035170165423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295785.P7401833035170165423

/-! ## A295785.P6731158707993943291

`A179926(record[A328479(n+1)])`
-/

namespace A295785.P6731158707993943291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295785.P6731158707993943291

/-! ## A295785.P4833694217026476710

`A179926(record[A329899(n+1)])`
-/

namespace A295785.P4833694217026476710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295785.P4833694217026476710

/-!
# A295786: a(n) = A173675(A025487(n)).

The programs for A295786, there is no canonical definition to state claims against.
-/

/-! ## A295786.P9752104949035206755

`A173675(A025487(n+1))`
-/

namespace A295786.P9752104949035206755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A025487 (n + 1)).toNat

end

end A295786.P9752104949035206755

/-! ## A295786.P816754326741079951

`A173675(A333964(n+1))`
-/

namespace A295786.P816754326741079951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A333964 (n + 1)).toNat

end

end A295786.P816754326741079951

/-! ## A295786.P11125315716827555545

`A173675(record[A046523(n+1)])`
-/

namespace A295786.P11125315716827555545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295786.P11125315716827555545

/-! ## A295786.P2924375208070371053

`A173675(record[A328479(n+1)])`
-/

namespace A295786.P2924375208070371053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295786.P2924375208070371053

/-! ## A295786.P578331126050524745

`A173675(record[A329899(n+1)])`
-/

namespace A295786.P578331126050524745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295786.P578331126050524745

/-! ## A295786.P2329038941071151478

`A173675(record[A051466(n+2)])`
-/

namespace A295786.P2329038941071151478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295786.P2329038941071151478

/-!
# A295787: Positive integers m such that m, m + 1 and m + 2 are a sum of a positive square and a positive cube.

The programs for A295787, there is no canonical definition to state claims against.
-/

/-! ## A295787.P3424995672025167853

`∩[A329808(n+1)-1, A329808(n+1)]`
-/

namespace A295787.P3424995672025167853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295787.P3424995672025167853

/-! ## A295787.P13277555724565669233

`∩[A329808(n+1), A023443(A329808(n+1))]`
-/

namespace A295787.P13277555724565669233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A329808 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295787.P13277555724565669233

/-! ## A295787.P9543357818406140576

`∩[A329808(n+1), A233583(A329808(n+3))]`
-/

namespace A295787.P9543357818406140576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A329808 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295787.P9543357818406140576

/-!
# A295794: Expansion of e.g.f. Product_{k>=1} exp(x^k/(1 + x^k)).

The programs for A295794, there is no canonical definition to state claims against.
-/

/-! ## A295794.P11295376459597224707

`A004277(A356628(n))-A356629(n)`
-/

namespace A295794.P11295376459597224707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A356628 n).toNat - A356629 n

end

end A295794.P11295376459597224707

/-! ## A295794.P3643135114363203538

`2*lcm(n, A019554(n^n)-n)+1`
-/

namespace A295794.P3643135114363203538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (n : ℤ) (A019554 (n ^ n) - (n : ℤ)) + 1

end

end A295794.P3643135114363203538

/-!
# A295797: Numbers that have exactly one representation as a sum of seven positive squares.

The programs for A295797, there is no canonical definition to state claims against.
-/

/-! ## A295797.P4695266198624427180

`eq[1, A025431(n)]`
-/

namespace A295797.P4695266198624427180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295797.P4695266198624427180

/-! ## A295797.P10796118852660606750

`lt[0, A178333(A025431(n)²)]`
-/

namespace A295797.P10796118852660606750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A025431 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295797.P10796118852660606750

/-! ## A295797.P169734289396073633

`lt[A000032(A025431(n)²), 2]`
-/

namespace A295797.P169734289396073633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025431 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295797.P169734289396073633

/-! ## A295797.P15104849618063342516

`lt[A204922(A025431(n)+2), 2]`
-/

namespace A295797.P15104849618063342516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A025431 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295797.P15104849618063342516

/-! ## A295797.P4220824587774605495

`eq[A000177(n)+1, A025422(n)]`
-/

namespace A295797.P4220824587774605495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295797.P4220824587774605495

