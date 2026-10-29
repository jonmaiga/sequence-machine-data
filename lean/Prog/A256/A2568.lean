import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256800: Numbers k such that 3*R_k + 50 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256800, there is no canonical definition to state claims against.
-/

/-! ## A256800.P7496951961849164239

`∑[dr(A220708(A289769(n)))]`
-/

namespace A256800.P7496951961849164239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A220708 (A289769 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256800.P7496951961849164239

/-! ## A256800.P1430220426670073544

`eq[A337108(n+1), A337260(n+4)]`
-/

namespace A256800.P1430220426670073544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256800.P1430220426670073544

/-! ## A256800.P7055490167259838660

`A055008(n+1)-A001221(A000142(n))`
-/

namespace A256800.P7055490167259838660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055008 (n + 1) - A001221 (A000142 n).toNat

end

end A256800.P7055490167259838660

/-!
# A256801: Numbers k such that 7*R_k - 60 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256801, there is no canonical definition to state claims against.
-/

/-! ## A256801.P18351425795509674447

`xor(A178225(n), A259732(A019546(n+1)))`
-/

namespace A256801.P18351425795509674447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178225 n) (A259732 (A019546 (n + 1)).toNat)

end

end A256801.P18351425795509674447

/-! ## A256801.P11807574651249935742

`A329607(n+1)+A066201(A264509(n+1))`
-/

namespace A256801.P11807574651249935742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1) + A066201 (A264509 (n + 1)).toNat

end

end A256801.P11807574651249935742

/-!
# A256802: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256802, there is no canonical definition to state claims against.
-/

/-! ## A256802.P9967544587043920244

`A256810(∑[4*n]+1)`
-/

namespace A256802.P9967544587043920244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256802.P9967544587043920244

/-! ## A256802.P10683505499142890603

`record[A003982(n)*A256810(n+1)]`
-/

namespace A256802.P10683505499142890603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256802.P10683505499142890603

/-! ## A256802.P5594723197031616511

`record[A214505(n)*A256810(n+1)]`
-/

namespace A256802.P5594723197031616511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A256810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256802.P5594723197031616511

/-! ## A256802.P16946234671185195230

`record[gcd(A114327(n), A256810(n+1))]`
-/

namespace A256802.P16946234671185195230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A256810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256802.P16946234671185195230

/-! ## A256802.P10972346106105727369

`record[root(A256810(n+1), A256790(2*n+1))]`
-/

namespace A256802.P10972346106105727369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256810 (n + 1) : ℝ) ^ (1 / (A256790 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256802.P10972346106105727369

/-!
# A256803: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256803, the canonical program `A256803.P8960170746581162142` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256803 has offset 1).

The definition of A256803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256803.P8960170746581162142

`ogf((32+54x+119x^2+94x^3+27x^4-39x^5-86x^6-26x^7)/(1-x-x^2-7x^3-7x^4-3x^5+x^6+6x^7+2x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256803

/-- `ogf((32+54x+119x^2+94x^3+27x^4-39x^5-86x^6-26x^7)/(1-x-x^2-7x^3-7x^4-3x^5+x^6+6x^7+2x^8))` -/
def P8960170746581162142.Spec : Prop :=
  ∀ n, P8960170746581162142.a n = A256803 (n + 1)

theorem P8960170746581162142.correct : P8960170746581162142.Spec := by
  intro n
  simp only [A256803, Nat.add_sub_cancel]

end A256803

/-! ## A256803.P9196840568196301223

`A256810(∑[n]+1)`
-/

namespace A256803.P9196840568196301223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256803.P9196840568196301223

namespace A256803

/-- `A256810(∑[n]+1)` -/
def P9196840568196301223.Spec : Prop :=
  ∀ n, P9196840568196301223.a n = A256803 (n + 1)

end A256803

/-! ## A256803.P1162054129409401760

`record[A010054(n)*A256810(n+1)]`
-/

namespace A256803.P1162054129409401760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A256810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256803.P1162054129409401760

namespace A256803

/-- `record[A010054(n)*A256810(n+1)]` -/
def P1162054129409401760.Spec : Prop :=
  ∀ n, P1162054129409401760.a n = A256803 (n + 1)

end A256803

/-! ## A256803.P5382617305438864994

`record[gcd(A256810(n+1), A317741(n+1))]`
-/

namespace A256803.P5382617305438864994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256810 (n + 1)) (A317741 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256803.P5382617305438864994

namespace A256803

/-- `record[gcd(A256810(n+1), A317741(n+1))]` -/
def P5382617305438864994.Spec : Prop :=
  ∀ n, (P5382617305438864994.a n : ℤ) = A256803 (n + 1)

end A256803

/-! ## A256803.P13573475934674249049

`lcm(A033999(n), A256810(A000124(n)))`
-/

namespace A256803.P13573475934674249049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A256810 (A000124 n).toNat)

end

end A256803.P13573475934674249049

namespace A256803

/-- `lcm(A033999(n), A256810(A000124(n)))` -/
def P13573475934674249049.Spec : Prop :=
  ∀ n, (P13573475934674249049.a n : ℤ) = A256803 (n + 1)

end A256803

/-!
# A256804: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256804, there is no canonical definition to state claims against.
-/

/-! ## A256804.P15723526606492763238

`A256810(∑[n+1]+2)`
-/

namespace A256804.P15723526606492763238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256804.P15723526606492763238

/-! ## A256804.P11012284701666947455

`record[A010054(n)*A256810(n+2)]`
-/

namespace A256804.P11012284701666947455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A256810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256804.P11012284701666947455

/-! ## A256804.P14135686787827661487

`record[A256810(A133263(A008624(n)))]`
-/

namespace A256804.P14135686787827661487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256804.P14135686787827661487

/-! ## A256804.P15133415571515458986

`record[A256810(A133263(A123108(n)))]`
-/

namespace A256804.P15133415571515458986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A133263 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256804.P15133415571515458986

/-! ## A256804.P17718369873466162390

`A256810(A000096(n)+3)/A291168(n)`
-/

namespace A256804.P17718369873466162390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256810 (A000096 n + 3).toNat : ℚ) / (A291168 n : ℚ)

end

end A256804.P17718369873466162390

/-!
# A256805: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256805, there is no canonical definition to state claims against.
-/

/-! ## A256805.P2961720363702329541

`A256810(∑[n+2]+4)`
-/

namespace A256805.P2961720363702329541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256805.P2961720363702329541

/-! ## A256805.P17137114393527251905

`or(1, A256810(A167614(n+1)))`
-/

namespace A256805.P17137114393527251905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256810 (A167614 (n + 1)).toNat)

end

end A256805.P17137114393527251905

/-! ## A256805.P10794291311571199209

`or(1, A256810(A167499(n)+n))`
-/

namespace A256805.P10794291311571199209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256810 (A167499 n + (n : ℤ)).toNat)

end

end A256805.P10794291311571199209

/-! ## A256805.P14831335298324594822

`A256810(A167614(n+1))+char[A053743(n)]`
-/

namespace A256805.P14831335298324594822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A256805.P14831335298324594822

/-! ## A256805.P2626332588449857894

`log2(A020639(2*(n+1)))*A256810(A167614(n+1))`
-/

namespace A256805.P2626332588449857894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A256810 (A167614 (n + 1)).toNat : ℝ)

end

end A256805.P2626332588449857894

/-!
# A256806: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256806, there is no canonical definition to state claims against.
-/

/-! ## A256806.P10674802207639495232

`A256810(A374004(n+1))`
-/

namespace A256806.P10674802207639495232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A374004 (n + 1)).toNat

end

end A256806.P10674802207639495232

/-! ## A256806.P15564756879707031196

`A256810(A052905(n)+9)`
-/

namespace A256806.P15564756879707031196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A052905 n + 9).toNat

end

end A256806.P15564756879707031196

/-! ## A256806.P15536137513118786418

`A256810(A167614(n+2)+1)`
-/

namespace A256806.P15536137513118786418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A167614 (n + 2) + 1).toNat

end

end A256806.P15536137513118786418

/-! ## A256806.P8326111145931675776

`A256810(Δ[A264443(n)-n²])`
-/

namespace A256806.P8326111145931675776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (f1 (n + 1) - f1 n).toNat

end

end A256806.P8326111145931675776

/-! ## A256806.P1135308842368981243

`A256810(A141214(n+1))`
-/

namespace A256806.P1135308842368981243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A141214 (n + 1)).toNat

end

end A256806.P1135308842368981243

/-!
# A256807: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256807, there is no canonical definition to state claims against.
-/

/-! ## A256807.P191050639478719198

`A256810(A374005(n+1))`
-/

namespace A256807.P191050639478719198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A374005 (n + 1)).toNat

end

end A256807.P191050639478719198

/-! ## A256807.P12071001824285946246

`A256810(A056000(n)+15)`
-/

namespace A256807.P12071001824285946246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A056000 n + 15).toNat

end

end A256807.P12071001824285946246

/-! ## A256807.P16652392684633644557

`A256810(A167614(n+3)+2)`
-/

namespace A256807.P16652392684633644557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A167614 (n + 3) + 2).toNat

end

end A256807.P16652392684633644557

/-! ## A256807.P2536538297237649501

`A256810(eq[6, A131818(n+1)])`
-/

namespace A256807.P2536538297237649501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256807.P2536538297237649501

/-! ## A256807.P13067416630460674581

`A256810(Δ[A264443(n)])`
-/

namespace A256807.P13067416630460674581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (f1 (n + 1) - f1 n).toNat

end

end A256807.P13067416630460674581

/-!
# A256808: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256808, there is no canonical definition to state claims against.
-/

/-! ## A256808.P135998798213501290

`A256810(A374007(n+1))`
-/

namespace A256808.P135998798213501290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A374007 (n + 1)).toNat

end

end A256808.P135998798213501290

/-! ## A256808.P12397278005772167030

`A256810(Δ[A264443(n)]+10)`
-/

namespace A256808.P12397278005772167030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (f1 (n + 1) - f1 n + 10).toNat

end

end A256808.P12397278005772167030

/-! ## A256808.P3786765607510897482

`A256810(eq[7, A131818(n+1)])`
-/

namespace A256808.P3786765607510897482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256808.P3786765607510897482

/-! ## A256808.P12009505378142472495

`A256810(eq[3, A219347(n)])`
-/

namespace A256808.P12009505378142472495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256808.P12009505378142472495

/-! ## A256808.P10267355682556977826

`A256810(eq[5, A193592(n)])`
-/

namespace A256808.P10267355682556977826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256808.P10267355682556977826

/-!
# A256809: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A256809, there is no canonical definition to state claims against.
-/

/-! ## A256809.P1854696956958236187

`A256810(A374008(n+1))`
-/

namespace A256809.P1854696956958236187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (A374008 (n + 1)).toNat

end

end A256809.P1854696956958236187

/-! ## A256809.P17152493394665644901

`A256810(eq[11, A066657(n)])`
-/

namespace A256809.P17152493394665644901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256809.P17152493394665644901

/-! ## A256809.P9907784673784393701

`A256810(eq[8, A131818(n+1)])`
-/

namespace A256809.P9907784673784393701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256809.P9907784673784393701

/-! ## A256809.P7045843749639770327

`A256810(eq[4, A219347(n)])`
-/

namespace A256809.P7045843749639770327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256809.P7045843749639770327

/-! ## A256809.P10715630414278819645

`A256810(eq[6, A193592(n)])`
-/

namespace A256809.P10715630414278819645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256809.P10715630414278819645

/-!
# A256813: Number of length n+5 0..1 arrays with at most two downsteps in every 5 consecutive neighbor pairs.

The programs for A256813, the canonical program `A256813.P18114220793153057654` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256813 has offset 1).

The definition of A256813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256813.P18114220793153057654

`ogf((63-2x+60x^2-8x^3+48x^4-32x^5)/(1-2x+x^2-2x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256813

/-- `ogf((63-2x+60x^2-8x^3+48x^4-32x^5)/(1-2x+x^2-2x^3+x^4-2x^5+x^6))` -/
def P18114220793153057654.Spec : Prop :=
  ∀ n, P18114220793153057654.a n = A256813 (n + 1)

theorem P18114220793153057654.correct : P18114220793153057654.Spec := by
  intro n
  simp only [A256813, Nat.add_sub_cancel]

end A256813

/-! ## A256813.P7014908904925573839

`A164352(n+7)/3`
-/

namespace A256813.P7014908904925573839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164352 (n + 7) : ℚ) / 3

end

end A256813.P7014908904925573839

namespace A256813

/-- `A164352(n+7)/3` -/
def P7014908904925573839.Spec : Prop :=
  ∀ n, P7014908904925573839.a n = (A256813 (n + 1) : ℚ)

end A256813

/-! ## A256813.P5240808622138458704

`A256816(∑[n+5]+6)`
-/

namespace A256813.P5240808622138458704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A256813.P5240808622138458704

namespace A256813

/-- `A256816(∑[n+5]+6)` -/
def P5240808622138458704.Spec : Prop :=
  ∀ n, P5240808622138458704.a n = A256813 (n + 1)

end A256813

/-! ## A256813.P1435985947501559961

`or(A000007(n), A256816(A000124(n+5)-5))`
-/

namespace A256813.P1435985947501559961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256816 (A000124 (n + 5) - 5).toNat)

end

end A256813.P1435985947501559961

namespace A256813

/-- `or(A000007(n), A256816(A000124(n+5)-5))` -/
def P1435985947501559961.Spec : Prop :=
  ∀ n, P1435985947501559961.a n = A256813 (n + 1)

end A256813

/-! ## A256813.P2101176002290039744

`or(A000038(n), A256816(A000124(n+5)-5))`
-/

namespace A256813.P2101176002290039744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A256816 (A000124 (n + 5) - 5).toNat)

end

end A256813.P2101176002290039744

namespace A256813

/-- `or(A000038(n), A256816(A000124(n+5)-5))` -/
def P2101176002290039744.Spec : Prop :=
  ∀ n, P2101176002290039744.a n = A256813 (n + 1)

end A256813

/-! ## A256813.P14342589352761972395

`A256816(A046691(n+3))+A000038(A331252(n+1))`
-/

namespace A256813.P14342589352761972395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A046691 (n + 3)).toNat + A000038 (A331252 (n + 1)).toNat

end

end A256813.P14342589352761972395

namespace A256813

/-- `A256816(A046691(n+3))+A000038(A331252(n+1))` -/
def P14342589352761972395.Spec : Prop :=
  ∀ n, P14342589352761972395.a n = A256813 (n + 1)

end A256813

/-!
# A256814: Number of length n+6 0..1 arrays with at most two downsteps in every 6 consecutive neighbor pairs.

The programs for A256814, there is no canonical definition to state claims against.
-/

/-! ## A256814.P3672419616679891736

`A256816(A052905(n+3))`
-/

namespace A256814.P3672419616679891736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A052905 (n + 3)).toNat

end

end A256814.P3672419616679891736

/-! ## A256814.P17975965550948321117

`A256816(A000217(n+6)-5)`
-/

namespace A256814.P17975965550948321117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 6) - 5).toNat

end

end A256814.P17975965550948321117

/-! ## A256814.P13553981358539422003

`A256816(A000124(n+6)-6)`
-/

namespace A256814.P13553981358539422003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000124 (n + 6) - 6).toNat

end

end A256814.P13553981358539422003

/-! ## A256814.P15016706878463089690

`A256816(Δ[Δ[A006504(n+1)]])`
-/

namespace A256814.P15016706878463089690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (f1 (n + 1) - f1 n).toNat

end

end A256814.P15016706878463089690

/-! ## A256814.P11017743980888873264

`A256816(Δ[A023545(n+2)]-1)`
-/

namespace A256814.P11017743980888873264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (f1 (n + 1) - f1 n - 1).toNat

end

end A256814.P11017743980888873264

/-! ## A256814.P3805983421942061142

`A256816(A167499(n+6)-A020710(n+12))`
-/

namespace A256814.P3805983421942061142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 (n + 6) - A020710 (n + 12)).toNat

end

end A256814.P3805983421942061142

/-!
# A256815: Number of length n+7 0..1 arrays with at most two downsteps in every 7 consecutive neighbor pairs.

The programs for A256815, there is no canonical definition to state claims against.
-/

/-! ## A256815.P14732239168928718537

`A256816(A055999(n+4))`
-/

namespace A256815.P14732239168928718537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A055999 (n + 4)).toNat

end

end A256815.P14732239168928718537

/-! ## A256815.P4492391361071825917

`A256816(A000217(n+7)-6)`
-/

namespace A256815.P4492391361071825917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 7) - 6).toNat

end

end A256815.P4492391361071825917

/-! ## A256815.P12750890576056821519

`A256816(A000124(n+7)-7)`
-/

namespace A256815.P12750890576056821519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000124 (n + 7) - 7).toNat

end

end A256815.P12750890576056821519

/-! ## A256815.P4781957735065170283

`A256816(eq[6, A004736(n+1)]+n+7)`
-/

namespace A256815.P4781957735065170283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A256815.P4781957735065170283

/-! ## A256815.P17542536034876771513

`A256816(A167499(n+7)-A020710(n+14))`
-/

namespace A256815.P17542536034876771513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 (n + 7) - A020710 (n + 14)).toNat

end

end A256815.P17542536034876771513

/-!
# A256816: T(n,k) = Number of length n+k 0..1 arrays with at most two downsteps in every k consecutive neighbor pairs.

The programs for A256816, there is no canonical definition to state claims against.
-/

/-! ## A256816.P2129109228061307561

`2^(comp[∑[n]]-n)-A324870((n+1)*Δ[n^3])`
-/

namespace A256816.P2129109228061307561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (A324870 ((n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat : ℚ)

end

end A256816.P2129109228061307561

/-! ## A256816.P3815641529149532148

`2^(comp[∑[n]]-n)-A341027((n+1)²/∏{p}[n+1, #])`
-/

namespace A256816.P3815641529149532148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (A341027 ((SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))).toNat + 220) : ℚ)

end

end A256816.P3815641529149532148

/-! ## A256816.P16241608664696963091

`2^(comp[∑[n]]-n)-A307598(3^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A256816.P16241608664696963091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (A307598 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat : ℚ)

end

end A256816.P16241608664696963091

/-! ## A256816.P5396021888001112986

`A355467(A204985(n+1))`
-/

namespace A256816.P5396021888001112986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355467 (A204985 (n + 1)).toNat

end

end A256816.P5396021888001112986

/-! ## A256816.P11131776642727589520

`A046523(5^(comp[∑[n]]-n))`
-/

namespace A256816.P11131776642727589520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A256816.P11131776642727589520

/-!
# A256817: Number of length n+2 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256817, the canonical program `A256817.P8517774556824550253` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256817 has offset 1).

The definition of A256817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256817.P8517774556824550253

`∑[∑[∑[∑[n]]+1]+n²+4]+3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256817

/-- `∑[∑[∑[∑[n]]+1]+n²+4]+3` -/
def P8517774556824550253.Spec : Prop :=
  ∀ n, (P8517774556824550253.a n : ℤ) = A256817 (n + 1)

theorem P8517774556824550253.correct : P8517774556824550253.Spec := by
  intro n
  simp only [A256817, Nat.add_sub_cancel]

end A256817

/-! ## A256817.P4071948567826570044

`ogf((8-32x+56x^2-48x^3+20x^4-3x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A256817.P4071948567826570044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -32, 56, -48, 20, -3] [1, -6, 15, -20, 15, -6, 1] n

end

end A256817.P4071948567826570044

namespace A256817

/-- `ogf((8-32x+56x^2-48x^3+20x^4-3x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4071948567826570044.Spec : Prop :=
  ∀ n, P4071948567826570044.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P1906505996175227281

`Δ[A008859(n+3)+C(n, 4)]`
-/

namespace A256817.P1906505996175227281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (n + 3) + (Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256817.P1906505996175227281

namespace A256817

/-- `Δ[A008859(n+3)+C(n, 4)]` -/
def P1906505996175227281.Spec : Prop :=
  ∀ n, P1906505996175227281.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P9177114590367114035

`Δ[A008859(n+3)+A000332(n)]`
-/

namespace A256817.P9177114590367114035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (n + 3) + A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256817.P9177114590367114035

namespace A256817

/-- `Δ[A008859(n+3)+A000332(n)]` -/
def P9177114590367114035.Spec : Prop :=
  ∀ n, P9177114590367114035.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P1585862341148808351

`Δ[A115567(n+3)+C(n, 4)]`
-/

namespace A256817.P1585862341148808351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 (n + 3) + (Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256817.P1585862341148808351

namespace A256817

/-- `Δ[A115567(n+3)+C(n, 4)]` -/
def P1585862341148808351.Spec : Prop :=
  ∀ n, P1585862341148808351.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P916570576241102260

`Δ[A115567(n+3)+A000332(n)]`
-/

namespace A256817.P916570576241102260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 (n + 3) + A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256817.P916570576241102260

namespace A256817

/-- `Δ[A115567(n+3)+A000332(n)]` -/
def P916570576241102260.Spec : Prop :=
  ∀ n, P916570576241102260.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P17004160948645263250

`A256816(∑[n+1]+2)`
-/

namespace A256817.P17004160948645263250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256817.P17004160948645263250

namespace A256817

/-- `A256816(∑[n+1]+2)` -/
def P17004160948645263250.Spec : Prop :=
  ∀ n, P17004160948645263250.a n = A256817 (n + 1)

end A256817

/-! ## A256817.P7158638387566076449

`A256816(A000217(n+1)+2)%A256815(n+1)`
-/

namespace A256817.P7158638387566076449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256816 (A000217 (n + 1) + 2).toNat) (A256815 (n + 1))

end

end A256817.P7158638387566076449

namespace A256817

/-- `A256816(A000217(n+1)+2)%A256815(n+1)` -/
def P7158638387566076449.Spec : Prop :=
  ∀ n, P7158638387566076449.a n = A256817 (n + 1)

end A256817

/-!
# A256818: Number of length n+3 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256818, the canonical program `A256818.P14358715179569900207` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256818 has offset 1).

The definition of A256818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256818.P14358715179569900207

`ogf((16-64x+112x^2-96x^3+37x^4-4x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256818

/-- `ogf((16-64x+112x^2-96x^3+37x^4-4x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14358715179569900207.Spec : Prop :=
  ∀ n, P14358715179569900207.a n = A256818 (n + 1)

theorem P14358715179569900207.correct : P14358715179569900207.Spec := by
  intro n
  simp only [A256818, Nat.add_sub_cancel]

end A256818

/-! ## A256818.P7742646827170064069

`A256816(∑[n+2]+4)`
-/

namespace A256818.P7742646827170064069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256818.P7742646827170064069

namespace A256818

/-- `A256816(∑[n+2]+4)` -/
def P7742646827170064069.Spec : Prop :=
  ∀ n, P7742646827170064069.a n = A256818 (n + 1)

end A256818

/-! ## A256818.P6095433355904889265

`abs(1-A256816(A055998(n)+6))+1`
-/

namespace A256818.P6095433355904889265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A256816 (A055998 n + 6).toNat| + 1

end

end A256818.P6095433355904889265

namespace A256818

/-- `abs(1-A256816(A055998(n)+6))+1` -/
def P6095433355904889265.Spec : Prop :=
  ∀ n, P6095433355904889265.a n = A256818 (n + 1)

end A256818

/-! ## A256818.P8521178164525624413

`A256816(A055998(n)+6)%A256815(n+1)`
-/

namespace A256818.P8521178164525624413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256816 (A055998 n + 6).toNat) (A256815 (n + 1))

end

end A256818.P8521178164525624413

namespace A256818

/-- `A256816(A055998(n)+6)%A256815(n+1)` -/
def P8521178164525624413.Spec : Prop :=
  ∀ n, P8521178164525624413.a n = A256818 (n + 1)

end A256818

/-! ## A256818.P8147862692481605488

`A256816(A167499(n)+n)%A183792(n+1)`
-/

namespace A256818.P8147862692481605488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256816 (A167499 n + (n : ℤ)).toNat) (A183792 (n + 1))

end

end A256818.P8147862692481605488

namespace A256818

/-- `A256816(A167499(n)+n)%A183792(n+1)` -/
def P8147862692481605488.Spec : Prop :=
  ∀ n, P8147862692481605488.a n = A256818 (n + 1)

end A256818

/-! ## A256818.P10771220265728292202

`A256816(A167499(n)+n)+A114099(9*n+3)`
-/

namespace A256818.P10771220265728292202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 n + (n : ℤ)).toNat + A114099 (9 * n + 3)

end

end A256818.P10771220265728292202

namespace A256818

/-- `A256816(A167499(n)+n)+A114099(9*n+3)` -/
def P10771220265728292202.Spec : Prop :=
  ∀ n, P10771220265728292202.a n = A256818 (n + 1)

end A256818

/-! ## A256818.P9429584156210650578

`A256816(A055998(n)+6)^log2(A020639(2*(n+1)))`
-/

namespace A256818.P9429584156210650578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256816 (A055998 n + 6).toNat : ℝ) ^ (Real.logb 2 (A020639 (2 * (n + 1)) : ℝ))

end

end A256818.P9429584156210650578

namespace A256818

/-- `A256816(A055998(n)+6)^log2(A020639(2*(n+1)))` -/
def P9429584156210650578.Spec : Prop :=
  ∀ n, P9429584156210650578.a n = (A256818 (n + 1) : ℝ)

end A256818

/-! ## A256818.P12335682509917802185

`A256816(A055998(n)+6)^(A000040(6*n+3)%2)`
-/

namespace A256818.P12335682509917802185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256816 (A055998 n + 6).toNat : ℚ) ^ (Int.tmod (A000040 (6 * n + 3)) 2 : ℤ)

end

end A256818.P12335682509917802185

namespace A256818

/-- `A256816(A055998(n)+6)^(A000040(6*n+3)%2)` -/
def P12335682509917802185.Spec : Prop :=
  ∀ n, P12335682509917802185.a n = (A256818 (n + 1) : ℚ)

end A256818

/-! ## A256818.P18131009731249940613

`A014963(A000217(n+4))*A256816(A167499(n)+n)`
-/

namespace A256818.P18131009731249940613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A256816 (A167499 n + (n : ℤ)).toNat

end

end A256818.P18131009731249940613

namespace A256818

/-- `A014963(A000217(n+4))*A256816(A167499(n)+n)` -/
def P18131009731249940613.Spec : Prop :=
  ∀ n, P18131009731249940613.a n = A256818 (n + 1)

end A256818

/-!
# A256819: Number of length n+4 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256819, there is no canonical definition to state claims against.
-/

/-! ## A256819.P14657173090131025830

`A256816(A052905(n)+9)`
-/

namespace A256819.P14657173090131025830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A052905 n + 9).toNat

end

end A256819.P14657173090131025830

/-! ## A256819.P17821145999579802485

`A256816(A055999(n)+10)`
-/

namespace A256819.P17821145999579802485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A055999 n + 10).toNat

end

end A256819.P17821145999579802485

/-! ## A256819.P17825117465200350730

`A256816(A167614(n+2)+1)`
-/

namespace A256819.P17825117465200350730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167614 (n + 2) + 1).toNat

end

end A256819.P17825117465200350730

/-! ## A256819.P6982273468844544221

`A256816(A166136(n+2)-2)`
-/

namespace A256819.P6982273468844544221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A166136 (n + 2) - 2).toNat

end

end A256819.P6982273468844544221

/-! ## A256819.P7124894560810932485

`A256816(A000217(n+3)+4)`
-/

namespace A256819.P7124894560810932485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 3) + 4).toNat

end

end A256819.P7124894560810932485

/-! ## A256819.P134382295224235075

`A256816(A166136(n+1)+1+n)`
-/

namespace A256819.P134382295224235075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A256819.P134382295224235075

/-! ## A256819.P11036572764593388647

`A256816(Δ[A023545(n+1)-n²])`
-/

namespace A256819.P11036572764593388647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (f1 (n + 1) - f1 n).toNat

end

end A256819.P11036572764593388647

/-!
# A256820: Number of length n+5 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256820, there is no canonical definition to state claims against.
-/

/-! ## A256820.P14898934690846501084

`A256816(A167499(n+3))`
-/

namespace A256820.P14898934690846501084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 (n + 3)).toNat

end

end A256820.P14898934690846501084

/-! ## A256820.P12031857526198354366

`A256816(A077169(n+5))`
-/

namespace A256820.P12031857526198354366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A077169 (n + 5)).toNat

end

end A256820.P12031857526198354366

/-! ## A256820.P17221451568489006790

`A256816(A056000(n)+15)`
-/

namespace A256820.P17221451568489006790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A056000 n + 15).toNat

end

end A256820.P17221451568489006790

/-! ## A256820.P4162542681350455071

`A256816(A000217(n+4)+5)`
-/

namespace A256820.P4162542681350455071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 4) + 5).toNat

end

end A256820.P4162542681350455071

/-! ## A256820.P16084339709831470627

`A256816((n+4)²-A052905(n))`
-/

namespace A256820.P16084339709831470627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A256820.P16084339709831470627

/-! ## A256820.P13950827971448113244

`A256816(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A256820.P13950827971448113244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A256820.P13950827971448113244

/-!
# A256821: Number of length n+6 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256821, there is no canonical definition to state claims against.
-/

/-! ## A256821.P15749792985510005809

`A256816(A167499(n+4)+1)`
-/

namespace A256821.P15749792985510005809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 (n + 4) + 1).toNat

end

end A256821.P15749792985510005809

/-! ## A256821.P1907545664254605879

`A256816(A000124(n+5)+5)`
-/

namespace A256821.P1907545664254605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000124 (n + 5) + 5).toNat

end

end A256821.P1907545664254605879

/-! ## A256821.P8589741931695700491

`A256816(A000217(n+5)+6)`
-/

namespace A256821.P8589741931695700491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 5) + 6).toNat

end

end A256821.P8589741931695700491

/-! ## A256821.P5684253529491648781

`A256816(A052905(n+4)-A005843(n+1))`
-/

namespace A256821.P5684253529491648781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A052905 (n + 4) - A005843 (n + 1)).toNat

end

end A256821.P5684253529491648781

/-! ## A256821.P12347691939155556558

`A256816(A034856(n+6)+A001489(2*n+5))`
-/

namespace A256821.P12347691939155556558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A034856 (n + 6) + A001489 (2 * n + 5)).toNat

end

end A256821.P12347691939155556558

/-!
# A256822: Number of length n+7 0..1 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A256822, there is no canonical definition to state claims against.
-/

/-! ## A256822.P908305581305883650

`A256816(A166136(n+5)+1)`
-/

namespace A256822.P908305581305883650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A166136 (n + 5) + 1).toNat

end

end A256822.P908305581305883650

/-! ## A256822.P7480226331302294621

`A256816(A000217(n+6)+7)`
-/

namespace A256822.P7480226331302294621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A000217 (n + 6) + 7).toNat

end

end A256822.P7480226331302294621

/-! ## A256822.P6985939663789672905

`A256816(A055998(n+4)+10)`
-/

namespace A256822.P6985939663789672905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A055998 (n + 4) + 10).toNat

end

end A256822.P6985939663789672905

/-! ## A256822.P12391269847772047987

`A256816(A155212(n+2)+15)`
-/

namespace A256822.P12391269847772047987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A155212 (n + 2) + 15).toNat

end

end A256822.P12391269847772047987

/-! ## A256822.P164118290578584022

`A256816(A167499(n+4)+n+8)`
-/

namespace A256822.P164118290578584022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A167499 (n + 4) + (n + 8 : ℤ)).toNat

end

end A256822.P164118290578584022

/-! ## A256822.P15368573965158287370

`A256816(A034856(n+7)+A001489(2*(n+3)))`
-/

namespace A256822.P15368573965158287370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A034856 (n + 7) + A001489 (2 * (n + 3))).toNat

end

end A256822.P15368573965158287370

/-!
# A256825: Numbers with digits in strictly decreasing order containing digit 1.

The programs for A256825, there is no canonical definition to state claims against.
-/

/-! ## A256825.P3147664450593650148

`record[A262557(A263327(n)+2)]`
-/

namespace A256825.P3147664450593650148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A263327 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256825.P3147664450593650148

/-! ## A256825.P3877641200903431314

`record[A262557(or(2, A263327(n)))]`
-/

namespace A256825.P3877641200903431314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (Int.lor 2 (A263327 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256825.P3877641200903431314

/-! ## A256825.P4793913420633073686

`∩[A009995(n+1), A277588(n+1)]`
-/

namespace A256825.P4793913420633073686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256825.P4793913420633073686

/-! ## A256825.P3079938849231122647

`∩[A009995(n+1), A298849(n+1)]`
-/

namespace A256825.P3079938849231122647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256825.P3079938849231122647

/-! ## A256825.P16084329010038053424

`eq[n, A381527(A227362(n))]`
-/

namespace A256825.P16084329010038053424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256825.P16084329010038053424

/-! ## A256825.P2656679369693130976

`∩[A009995(n+1), A011531(n+1)]`
-/

namespace A256825.P2656679369693130976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256825.P2656679369693130976

/-! ## A256825.P16360778653869115352

`∩[A009995(n+1), A043493(n+1)]`
-/

namespace A256825.P16360778653869115352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256825.P16360778653869115352

/-! ## A256825.P3091101084062497864

`eq[n, A317180(A227362(A028310(n)))]`
-/

namespace A256825.P3091101084062497864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317180 (A227362 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256825.P3091101084062497864

/-!
# A256827: a(n) = maximum number of minus balls for which it is better not to quit when you have n plus balls in the Shepp Urn game.

The programs for A256827, there is no canonical definition to state claims against.
-/

/-! ## A256827.P12808270921438819026

`comp[round((A214671(2*(n+1))+1)*n/5)]`
-/

namespace A256827.P12808270921438819026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214671 (2 * (n + 1)) + 1 : ℚ) * ((n : ℚ) / 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P12808270921438819026

/-! ## A256827.P13221134923388933941

`comp[round((n-1)*A194386(3*n+2)/5)]`
-/

namespace A256827.P13221134923388933941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((A194386 (3 * n + 2) : ℚ) / 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P13221134923388933941

/-! ## A256827.P8148569991762200216

`comp[A195119(∑[A029919(n)])]`
-/

namespace A256827.P8148569991762200216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P8148569991762200216

/-! ## A256827.P11820687953307781169

`A000196(A247964(n))+n+1`
-/

namespace A256827.P11820687953307781169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A247964 n).toNat + (n + 1 : ℤ)

end

end A256827.P11820687953307781169

/-! ## A256827.P349630635837441418

`A003059(A371170(n+1))+n`
-/

namespace A256827.P349630635837441418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A371170 (n + 1)).toNat + (n : ℤ)

end

end A256827.P349630635837441418

/-! ## A256827.P139106270706116272

`A008621(A121856(3*n+1))+n`
-/

namespace A256827.P139106270706116272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A121856 (3 * n + 1)).toNat + (n : ℤ)

end

end A256827.P139106270706116272

/-! ## A256827.P18133356258000444581

`comp[∑[A369450(A372306(3*n+1))]]`
-/

namespace A256827.P18133356258000444581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369450 (A372306 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P18133356258000444581

/-! ## A256827.P16899276052924234514

`comp[A003022(n+2)-A124976(n+3)]`
-/

namespace A256827.P16899276052924234514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2) - A124976 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P16899276052924234514

/-! ## A256827.P9232046297653178023

`comp[A106683(C(n+3, 2))-A124976(n+3)]`
-/

namespace A256827.P9232046297653178023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (Nat.choose (n + 3) 2) - A124976 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P9232046297653178023

/-! ## A256827.P13689746697408268517

`comp[A106683(∑[n+2]+1)-A124976(n+3)]`
-/

namespace A256827.P13689746697408268517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - A124976 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256827.P13689746697408268517

/-!
# A256828: Numbers k such that 7*R_k - 40 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256828, there is no canonical definition to state claims against.
-/

/-! ## A256828.P1414623552824942985

`A035026(∑[2*4^n+4^n+7^n-1]+1)`
-/

namespace A256828.P1414623552824942985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) + ((4 ^ n : ℤ) + ((7 ^ n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A256828.P1414623552824942985

/-!
# A256829: Numbers k such that 7*R_k - 30 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256829, there is no canonical definition to state claims against.
-/

/-! ## A256829.P10657639555938268291

`A114883(A330979(n+1))+A000203(n+1)`
-/

namespace A256829.P10657639555938268291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114883 (A330979 (n + 1)).toNat + A000203 (n + 1)

end

end A256829.P10657639555938268291

/-!
# A256830: Numbers k such that 7*R_k - 20 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256830, there is no canonical definition to state claims against.
-/

/-! ## A256830.P9539465052445566612

`record[A212737(A283323(n+1))]`
-/

namespace A256830.P9539465052445566612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A283323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256830.P9539465052445566612

/-!
# A256833: a(n) = (4*n+3)*(4*n+2).

The programs for A256833, the canonical program `A256833.P10297936977861740275` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256833 has offset 0).

The definition of A256833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)*(4*n+2)` (program `A256833.P10297936977861740275`, by `A256833.P10297936977861740275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256833.P10583015010298627302

`ogf((6+24x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A256833.P10583015010298627302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 2] [1, -3, 3, -1] n

end

end A256833.P10583015010298627302

namespace A256833

/-- `ogf((6+24x+2x^2)/(1-3x+3x^2-x^3))` -/
def P10583015010298627302.Spec : Prop :=
  ∀ n, P10583015010298627302.a n = A256833 n

end A256833

/-! ## A256833.P2929339747467811279

`16*n²+20*n+6`
-/

namespace A256833.P2929339747467811279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 2 + 20 * n + 6

end

end A256833.P2929339747467811279

namespace A256833

/-- `16*n²+20*n+6` -/
def P2929339747467811279.Spec : Prop :=
  ∀ n, (P2929339747467811279.a n : ℤ) = A256833 n

theorem P2929339747467811279.correct : P2929339747467811279.Spec := by
  intro n
  simp only [A256833, Nat.add_sub_cancel, A256833.P2929339747467811279.a, A256833.P10297936977861740275.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A256833

/-! ## A256833.P10297936977861740275

`(4*n+3)*(4*n+2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256833

/-- `(4*n+3)*(4*n+2)` -/
def P10297936977861740275.Spec : Prop :=
  ∀ n, (P10297936977861740275.a n : ℤ) = A256833 n

theorem P10297936977861740275.correct : P10297936977861740275.Spec := by
  intro n
  simp only [A256833]

end A256833

/-! ## A256833.P3826055302331138067

`A002378(4*n+2)`
-/

namespace A256833.P3826055302331138067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (4 * n + 2)

end

end A256833.P3826055302331138067

namespace A256833

/-- `A002378(4*n+2)` -/
def P3826055302331138067.Spec : Prop :=
  ∀ n, P3826055302331138067.a n = A256833 n

theorem P3826055302331138067.correct : P3826055302331138067.Spec := by
  intro n
  simp only [A256833, Nat.add_sub_cancel, A256833.P3826055302331138067.a, A256833.P10297936977861740275.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256833

/-! ## A256833.P4620873940358639647

`or(2, ∑[32*n+4])`
-/

namespace A256833.P4620873940358639647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256833.P4620873940358639647

namespace A256833

/-- `or(2, ∑[32*n+4])` -/
def P4620873940358639647.Spec : Prop :=
  ∀ n, (P4620873940358639647.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P15138519069767513598

`xor(2, ∑[32*n+4])`
-/

namespace A256833.P15138519069767513598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256833.P15138519069767513598

namespace A256833

/-- `xor(2, ∑[32*n+4])` -/
def P15138519069767513598.Spec : Prop :=
  ∀ n, (P15138519069767513598.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P11188546799969031840

`record[(n+2)*xor(3, n)]`
-/

namespace A256833.P11188546799969031840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256833.P11188546799969031840

namespace A256833

/-- `record[(n+2)*xor(3, n)]` -/
def P11188546799969031840.Spec : Prop :=
  ∀ n, (P11188546799969031840.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P18045735650449351431

`record[lcm(n+2, xor(3, n))]`
-/

namespace A256833.P18045735650449351431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.xor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256833.P18045735650449351431

namespace A256833

/-- `record[lcm(n+2, xor(3, n))]` -/
def P18045735650449351431.Spec : Prop :=
  ∀ n, (P18045735650449351431.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P10210209608685739890

`∑[a(n-1)+32]` with `a(0)=6, a(1)=36`
-/

namespace A256833.P10210209608685739890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 36] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256833.P10210209608685739890

namespace A256833

/-- `∑[a(n-1)+32]` -/
def P10210209608685739890.Spec : Prop :=
  ∀ n, (P10210209608685739890.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P4104705318940245912

`floor(or(5, 8*n)²/4)`
-/

namespace A256833.P4104705318940245912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 5 (8 * n) ^ 2 : ℚ) / 4⌋

end

end A256833.P4104705318940245912

namespace A256833

/-- `floor(or(5, 8*n)²/4)` -/
def P4104705318940245912.Spec : Prop :=
  ∀ n, P4104705318940245912.a n = A256833 n

end A256833

/-! ## A256833.P5194573749072994547

`round(or(5, 8*n)²/4)`
-/

namespace A256833.P5194573749072994547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 5 (8 * n) ^ 2 : ℚ) / 4)

end

end A256833.P5194573749072994547

namespace A256833

/-- `round(or(5, 8*n)²/4)` -/
def P5194573749072994547.Spec : Prop :=
  ∀ n, P5194573749072994547.a n = A256833 n

end A256833

/-! ## A256833.P430899085775496675

`record[or(3, n)²-(n+3)]`
-/

namespace A256833.P430899085775496675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n ^ 2 : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256833.P430899085775496675

namespace A256833

/-- `record[or(3, n)²-(n+3)]` -/
def P430899085775496675.Spec : Prop :=
  ∀ n, P430899085775496675.a n = A256833 n

end A256833

/-! ## A256833.P9032587583531587710

`record[xor(3, n)²-(n+3)]`
-/

namespace A256833.P9032587583531587710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2 : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256833.P9032587583531587710

namespace A256833

/-- `record[xor(3, n)²-(n+3)]` -/
def P9032587583531587710.Spec : Prop :=
  ∀ n, P9032587583531587710.a n = A256833 n

end A256833

/-! ## A256833.P15219975020024824213

`∑[ogf((6+24x+2x^2)/(1-2x+x^2))]`
-/

namespace A256833.P15219975020024824213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256833.P15219975020024824213

namespace A256833

/-- `∑[ogf((6+24x+2x^2)/(1-2x+x^2))]` -/
def P15219975020024824213.Spec : Prop :=
  ∀ n, P15219975020024824213.a n = A256833 n

end A256833

/-! ## A256833.P12947987439504954133

`(A017126(n)-1)/4`
-/

namespace A256833.P12947987439504954133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017126 n - 1 : ℚ) / 4

end

end A256833.P12947987439504954133

namespace A256833

/-- `(A017126(n)-1)/4` -/
def P12947987439504954133.Spec : Prop :=
  ∀ n, P12947987439504954133.a n = (A256833 n : ℚ)

theorem P12947987439504954133.correct : P12947987439504954133.Spec := by
  intro n
  simp only [A256833, Nat.add_sub_cancel, A256833.P12947987439504954133.a, A256833.P10297936977861740275.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256833

/-! ## A256833.P389707464622437092

`(A146301(n)+3)/4`
-/

namespace A256833.P389707464622437092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146301 n + 3 : ℚ) / 4

end

end A256833.P389707464622437092

namespace A256833

/-- `(A146301(n)+3)/4` -/
def P389707464622437092.Spec : Prop :=
  ∀ n, P389707464622437092.a n = (A256833 n : ℚ)

theorem P389707464622437092.correct : P389707464622437092.Spec := by
  intro n
  simp only [A256833, Nat.add_sub_cancel, A256833.P389707464622437092.a, A256833.P10297936977861740275.a, A146301, A146301.P6561632266534080762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256833

/-! ## A256833.P6448245308355630781

`A001505(n)/A016813(n)`
-/

namespace A256833.P6448245308355630781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001505 n : ℚ) / (A016813 n : ℚ)

end

end A256833.P6448245308355630781

namespace A256833

/-- `A001505(n)/A016813(n)` -/
def P6448245308355630781.Spec : Prop :=
  ∀ n, P6448245308355630781.a n = (A256833 n : ℚ)

end A256833

/-! ## A256833.P11238827766797347969

`lcm(A004767(n), A016825(n))`
-/

namespace A256833.P11238827766797347969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004767 n) (A016825 n)

end

end A256833.P11238827766797347969

namespace A256833

/-- `lcm(A004767(n), A016825(n))` -/
def P11238827766797347969.Spec : Prop :=
  ∀ n, (P11238827766797347969.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P5138729918404793207

`lcm(A017137(n), A157142(n))`
-/

namespace A256833.P5138729918404793207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017137 n) (A157142 n)

end

end A256833.P5138729918404793207

namespace A256833

/-- `lcm(A017137(n), A157142(n))` -/
def P5138729918404793207.Spec : Prop :=
  ∀ n, (P5138729918404793207.a n : ℤ) = A256833 n

end A256833

/-! ## A256833.P18195334676692132432

`A016970(n)%A158491(n+1)`
-/

namespace A256833.P18195334676692132432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016970 n) (A158491 (n + 1))

end

end A256833.P18195334676692132432

namespace A256833

/-- `A016970(n)%A158491(n+1)` -/
def P18195334676692132432.Spec : Prop :=
  ∀ n, P18195334676692132432.a n = A256833 n

end A256833

/-!
# A256835: Primes of form n^2 + 2401.

The programs for A256835, there is no canonical definition to state claims against.
-/

/-! ## A256835.P240520452685133236

`A002144(eq[49, A002330(n+1)])`
-/

namespace A256835.P240520452685133236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256835.P240520452685133236

/-!
# A256852: Number of ways to write prime(n) = a^2 + b^4.

The programs for A256852, there is no canonical definition to state claims against.
-/

/-! ## A256852.P474155498911983132

`A363711(Δ[A007504(n)])`
-/

namespace A256852.P474155498911983132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (f1 (n + 1) - f1 n).toNat

end

end A256852.P474155498911983132

/-! ## A256852.P15716510985094788160

`A363711(A000040(n+1))`
-/

namespace A256852.P15716510985094788160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (A000040 (n + 1)).toNat

end

end A256852.P15716510985094788160

/-! ## A256852.P14701284191807817087

`A363711(A063884(n+1))`
-/

namespace A256852.P14701284191807817087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (A063884 (n + 1)).toNat

end

end A256852.P14701284191807817087

/-! ## A256852.P10236966540229169679

`A363711(A008578(n+2))`
-/

namespace A256852.P10236966540229169679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (A008578 (n + 2)).toNat

end

end A256852.P10236966540229169679

/-! ## A256852.P12276380487447130485

`A363711(∑{p}[A001248(n+1), #])`
-/

namespace A256852.P12276380487447130485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256852.P12276380487447130485

/-! ## A256852.P13721615423819140683

`A363711(A383578(n+1))`
-/

namespace A256852.P13721615423819140683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (A383578 (n + 1)).toNat

end

end A256852.P13721615423819140683

/-!
# A256855: Number of ordered ways to write n as x*(3*x-1)/2 + y*(3*y+1)/2 + z*(3*z+1), where x and y are nonnegative integers and z is an integer.

The programs for A256855, there is no canonical definition to state claims against.
-/

/-! ## A256855.P14790747518108783178

`A378123(A287607(n))`
-/

namespace A256855.P14790747518108783178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378123 (A287607 n).toNat

end

end A256855.P14790747518108783178

/-! ## A256855.P8569775276873737247

`∑{e}[A005041(A033960(n)), #]`
-/

namespace A256855.P8569775276873737247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A033960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A256855.P8569775276873737247

/-! ## A256855.P6628877904888028036

`∑{e}[A031490(A126646(n)), #]`
-/

namespace A256855.P6628877904888028036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031490 (A126646 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A256855.P6628877904888028036

/-! ## A256855.P18329639977964498832

`A349281(∑[A133675(n+1)])`
-/

namespace A256855.P18329639977964498832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256855.P18329639977964498832

/-! ## A256855.P15231256182732611112

`A001222(A031490(∑[2^n]))`
-/

namespace A256855.P15231256182732611112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031490 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A256855.P15231256182732611112

/-!
# A256857: a(n) = n*(n^2 + 3*n - 2)/2.

The programs for A256857, the canonical program `A256857.P1021632217472229442` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256857 has offset 0).

The definition of A256857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+3*n-2)/2` (program `A256857.P16106581871430100185`, by `A256857.P16106581871430100185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256857.P5414041995114453447

`ogf((x+4x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A256857.P5414041995114453447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -2] [1, -4, 6, -4, 1] n

end

end A256857.P5414041995114453447

namespace A256857

/-- `ogf((x+4x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5414041995114453447.Spec : Prop :=
  ∀ n, P5414041995114453447.a n = A256857 n

end A256857

/-! ## A256857.P16106581871430100185

`n*(n²+3*n-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256857.P16106581871430100185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 2) : ℚ) / 2

end

end A256857.P16106581871430100185

namespace A256857

/-- `n*(n²+3*n-2)/2` -/
def P16106581871430100185.Spec : Prop :=
  ∀ n, P16106581871430100185.a n = (A256857 n : ℚ)

theorem P16106581871430100185.correct : P16106581871430100185.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256857, Nat.add_sub_cancel, A256857.P16106581871430100185.a, A256857.P1021632217472229442.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A256857, Nat.add_sub_cancel, A256857.P16106581871430100185.a, A256857.P1021632217472229442.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256857

/-! ## A256857.P4736467691582160036

`n^3-3*C(n, 3)`
-/

namespace A256857.P4736467691582160036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (3 * Nat.choose n 3 : ℤ)

end

end A256857.P4736467691582160036

namespace A256857

/-- `n^3-3*C(n, 3)` -/
def P4736467691582160036.Spec : Prop :=
  ∀ n, P4736467691582160036.a n = A256857 n

end A256857

/-! ## A256857.P2081248293441015610

`(n+4)*C(n, 2)+n`
-/

namespace A256857.P2081248293441015610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * Nat.choose n 2 + n

end

end A256857.P2081248293441015610

namespace A256857

/-- `(n+4)*C(n, 2)+n` -/
def P2081248293441015610.Spec : Prop :=
  ∀ n, (P2081248293441015610.a n : ℤ) = A256857 n

end A256857

/-! ## A256857.P5255268514467536479

`floor(n/acot(∑[n+1]-2))`
-/

namespace A256857.P5255268514467536479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℝ)⌋

end

end A256857.P5255268514467536479

namespace A256857

/-- `floor(n/acot(∑[n+1]-2))` -/
def P5255268514467536479.Spec : Prop :=
  ∀ n, P5255268514467536479.a n = A256857 n

end A256857

/-! ## A256857.P3352748037730538196

`round(n/acot(∑[n+1]-2))`
-/

namespace A256857.P3352748037730538196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℝ))

end

end A256857.P3352748037730538196

namespace A256857

/-- `round(n/acot(∑[n+1]-2))` -/
def P3352748037730538196.Spec : Prop :=
  ∀ n, P3352748037730538196.a n = A256857 n

end A256857

/-! ## A256857.P3808385798878223139

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A256857.P3808385798878223139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256857.P3808385798878223139

namespace A256857

/-- `∑[∑[a(n-1)+3]]` -/
def P3808385798878223139.Spec : Prop :=
  ∀ n, (P3808385798878223139.a n : ℤ) = A256857 n

end A256857

/-! ## A256857.P7329506755679604493

`∑[3*n]-(2-a(n-1))` with `a(0)=0`
-/

namespace A256857.P7329506755679604493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 - a (n - 1))

end

end A256857.P7329506755679604493

namespace A256857

/-- `∑[3*n]-(2-a(n-1))` -/
def P7329506755679604493.Spec : Prop :=
  ∀ n, P7329506755679604493.a n = A256857 n

end A256857

/-! ## A256857.P14616709575656957077

`2-∑[∑[a(n-1)-3]]` with `a(0)=2, a(1)=-3`
-/

namespace A256857.P14616709575656957077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -3] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256857.P14616709575656957077

namespace A256857

/-- `2-∑[∑[a(n-1)-3]]` -/
def P14616709575656957077.Spec : Prop :=
  ∀ n, P14616709575656957077.a n = A256857 n

end A256857

/-! ## A256857.P7510925346499061689

`3*n²+a(n-2)-4` with `a(0)=0, a(1)=1`
-/

namespace A256857.P7510925346499061689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 * n ^ 2 : ℤ) + (a (n - 2) - 4)

end

end A256857.P7510925346499061689

namespace A256857

/-- `3*n²+a(n-2)-4` -/
def P7510925346499061689.Spec : Prop :=
  ∀ n, P7510925346499061689.a n = A256857 n

end A256857

/-! ## A256857.P6181940576060730707

`a(n-2)-(4-3*n²)` with `a(0)=0, a(1)=1`
-/

namespace A256857.P6181940576060730707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (4 - (3 * n ^ 2 : ℤ))

end

end A256857.P6181940576060730707

namespace A256857

/-- `a(n-2)-(4-3*n²)` -/
def P6181940576060730707.Spec : Prop :=
  ∀ n, P6181940576060730707.a n = A256857 n

theorem P6181940576060730707.correct : P6181940576060730707.Spec := by
  intro n
  simp only [A256857, Nat.add_sub_cancel, A256857.P6181940576060730707.a, A256857.P1021632217472229442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A256857

/-! ## A256857.P1021632217472229442

`a(n-2)+3*n*n-4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256857

/-- `a(n-2)+3*n*n-4` -/
def P1021632217472229442.Spec : Prop :=
  ∀ n, P1021632217472229442.a n = A256857 n

theorem P1021632217472229442.correct : P1021632217472229442.Spec := by
  intro n
  simp only [A256857]

end A256857

/-! ## A256857.P15661926424474754463

`lcm(n+1, n*(n+2))/2-2*n`
-/

namespace A256857.P15661926424474754463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 2 - (2 * n : ℚ)

end

end A256857.P15661926424474754463

namespace A256857

/-- `lcm(n+1, n*(n+2))/2-2*n` -/
def P15661926424474754463.Spec : Prop :=
  ∀ n, P15661926424474754463.a n = (A256857 n : ℚ)

end A256857

/-! ## A256857.P18193928536398641646

`n*(A000096(n)-1)`
-/

namespace A256857.P18193928536398641646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000096 n - 1)

end

end A256857.P18193928536398641646

namespace A256857

/-- `n*(A000096(n)-1)` -/
def P18193928536398641646.Spec : Prop :=
  ∀ n, P18193928536398641646.a n = A256857 n

end A256857

/-! ## A256857.P9057921703106209848

`3*A005581(n)+n`
-/

namespace A256857.P9057921703106209848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005581 n + (n : ℤ)

end

end A256857.P9057921703106209848

namespace A256857

/-- `3*A005581(n)+n` -/
def P9057921703106209848.Spec : Prop :=
  ∀ n, P9057921703106209848.a n = A256857 n

end A256857

/-! ## A256857.P514597996934684501

`A027480(n)-2*n`
-/

namespace A256857.P514597996934684501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - (2 * n : ℤ)

end

end A256857.P514597996934684501

namespace A256857

/-- `A027480(n)-2*n` -/
def P514597996934684501.Spec : Prop :=
  ∀ n, P514597996934684501.a n = A256857 n

end A256857

/-! ## A256857.P6358599943307900604

`n*(A253145(n)-2)`
-/

namespace A256857.P6358599943307900604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A253145 n - 2)

end

end A256857.P6358599943307900604

namespace A256857

/-- `n*(A253145(n)-2)` -/
def P6358599943307900604.Spec : Prop :=
  ∀ n, P6358599943307900604.a n = A256857 n

end A256857

/-! ## A256857.P1214778612335987858

`A366151(n)/2-n`
-/

namespace A256857.P1214778612335987858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366151 n : ℚ) / 2 - (n : ℚ)

end

end A256857.P1214778612335987858

namespace A256857

/-- `A366151(n)/2-n` -/
def P1214778612335987858.Spec : Prop :=
  ∀ n, P1214778612335987858.a n = (A256857 n : ℚ)

theorem P1214778612335987858.correct : P1214778612335987858.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256857, Nat.add_sub_cancel, A256857.P1214778612335987858.a, A256857.P1021632217472229442.a, A366151, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A256857, Nat.add_sub_cancel, A256857.P1214778612335987858.a, A256857.P1021632217472229442.a, A366151, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A256857

/-! ## A256857.P13138042443528328041

`n*(A046691(n)-n)`
-/

namespace A256857.P13138042443528328041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A046691 n - (n : ℤ))

end

end A256857.P13138042443528328041

namespace A256857

/-- `n*(A046691(n)-n)` -/
def P13138042443528328041.Spec : Prop :=
  ∀ n, P13138042443528328041.a n = A256857 n

end A256857

/-! ## A256857.P13017501015270234883

`∑[n]²-A239352(n)`
-/

namespace A256857.P13017501015270234883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A239352 n

end

end A256857.P13017501015270234883

namespace A256857

/-- `∑[n]²-A239352(n)` -/
def P13017501015270234883.Spec : Prop :=
  ∀ n, P13017501015270234883.a n = A256857 n

end A256857

/-!
# A256859: a(n) = n*(n + 1)*(n + 2)*(n^2 - n + 4)/24.

The programs for A256859, the canonical program `A256859.P13446523280758156629` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256859 has offset 1).

The definition of A256859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*((n+1)²-(n+1)+4)/24` (program `A256859.P10780097334924934560`, by `A256859.P10780097334924934560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256859.P14041539083321305413

`ogf((1+4x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A256859.P14041539083321305413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4] [1, -6, 15, -20, 15, -6, 1] n

end

end A256859.P14041539083321305413

namespace A256859

/-- `ogf((1+4x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14041539083321305413.Spec : Prop :=
  ∀ n, P14041539083321305413.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P10780097334924934560

`(n+1)*(n+2)*(n+3)*((n+1)²-(n+1)+4)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256859.P10780097334924934560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 4) : ℚ) / 24

end

end A256859.P10780097334924934560

namespace A256859

/-- `(n+1)*(n+2)*(n+3)*((n+1)²-(n+1)+4)/24` -/
def P10780097334924934560.Spec : Prop :=
  ∀ n, P10780097334924934560.a n = (A256859 (n + 1) : ℚ)

theorem P10780097334924934560.correct : P10780097334924934560.Spec := by
  intro n
  simp only [A256859, Nat.add_sub_cancel, A256859.P10780097334924934560.a, A256859.P13446523280758156629.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256859

/-! ## A256859.P13446523280758156629

`4*A000389(n+3)+A000389(n+5)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256859

/-- `4*A000389(n+3)+A000389(n+5)` -/
def P13446523280758156629.Spec : Prop :=
  ∀ n, P13446523280758156629.a n = A256859 (n + 1)

theorem P13446523280758156629.correct : P13446523280758156629.Spec := by
  intro n
  simp only [A256859, Nat.add_sub_cancel]

end A256859

/-! ## A256859.P14302702919749209843

`(∑[n/2]+1)*C(n+3, 3)`
-/

namespace A256859.P14302702919749209843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (Nat.choose (n + 3) 3 : ℚ)

end

end A256859.P14302702919749209843

namespace A256859

/-- `(∑[n/2]+1)*C(n+3, 3)` -/
def P14302702919749209843.Spec : Prop :=
  ∀ n, P14302702919749209843.a n = (A256859 (n + 1) : ℚ)

end A256859

/-! ## A256859.P14060013351063903160

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=1, a(1)=2`
-/

namespace A256859.P14060013351063903160
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P14060013351063903160

namespace A256859

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P14060013351063903160.Spec : Prop :=
  ∀ n, (P14060013351063903160.a n : ℤ) = A256859 (n + 1)

end A256859

/-! ## A256859.P17746537737742394192

`∑[∑[∑[4-∑[a(n-1)-5]]]]` with `a(0)=3`
-/

namespace A256859.P17746537737742394192
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) - 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P17746537737742394192

namespace A256859

/-- `∑[∑[∑[4-∑[a(n-1)-5]]]]` -/
def P17746537737742394192.Spec : Prop :=
  ∀ n, P17746537737742394192.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P9205498001305107699

`∑[∑[∑[A005476(n)+1]]]`
-/

namespace A256859.P9205498001305107699
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P9205498001305107699

namespace A256859

/-- `∑[∑[∑[A005476(n)+1]]]` -/
def P9205498001305107699.Spec : Prop :=
  ∀ n, P9205498001305107699.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P14293915811378991426

`∑[∑[∑[A140066(n+1)]]]`
-/

namespace A256859.P14293915811378991426
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P14293915811378991426

namespace A256859

/-- `∑[∑[∑[A140066(n+1)]]]` -/
def P14293915811378991426.Spec : Prop :=
  ∀ n, P14293915811378991426.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P7200088807722487715

`∑[∑[∑[A116668(n)-n]]]`
-/

namespace A256859.P7200088807722487715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P7200088807722487715

namespace A256859

/-- `∑[∑[∑[A116668(n)-n]]]` -/
def P7200088807722487715.Spec : Prop :=
  ∀ n, P7200088807722487715.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P6700857699331136681

`A027800(n)-A033488(n)`
-/

namespace A256859.P6700857699331136681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n - A033488 n

end

end A256859.P6700857699331136681

namespace A256859

/-- `A027800(n)-A033488(n)` -/
def P6700857699331136681.Spec : Prop :=
  ∀ n, P6700857699331136681.a n = A256859 (n + 1)

theorem P6700857699331136681.correct : P6700857699331136681.Spec := by
  intro n
  simp only [A256859, Nat.add_sub_cancel, A256859.P6700857699331136681.a, A256859.P13446523280758156629.a, A000389, A000389.P15450220129395289428.a, A027800, A027800.P6346572312768476247.a, A033488, A033488.P5263045204408268705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256859

/-! ## A256859.P16132524728314804826

`A271662(n)-∑[A033488(n)]`
-/

namespace A256859.P16132524728314804826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P16132524728314804826

namespace A256859

/-- `A271662(n)-∑[A033488(n)]` -/
def P16132524728314804826.Spec : Prop :=
  ∀ n, P16132524728314804826.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P2043018325935545509

`A174002(n)-A059302(n+2)`
-/

namespace A256859.P2043018325935545509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n - A059302 (n + 2)

end

end A256859.P2043018325935545509

namespace A256859

/-- `A174002(n)-A059302(n+2)` -/
def P2043018325935545509.Spec : Prop :=
  ∀ n, P2043018325935545509.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P5992025100023913447

`2*A271663(n)-A051877(n)`
-/

namespace A256859.P5992025100023913447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271663 n - A051877 n

end

end A256859.P5992025100023913447

namespace A256859

/-- `2*A271663(n)-A051877(n)` -/
def P5992025100023913447.Spec : Prop :=
  ∀ n, P5992025100023913447.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P6164265849186444912

`∑[A002418(n)+A000292(n+1)]`
-/

namespace A256859.P6164265849186444912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n + A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P6164265849186444912

namespace A256859

/-- `∑[A002418(n)+A000292(n+1)]` -/
def P6164265849186444912.Spec : Prop :=
  ∀ n, P6164265849186444912.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P13819308397030766368

`A244882(n)-∑[2*A000292(n)]`
-/

namespace A256859.P13819308397030766368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P13819308397030766368

namespace A256859

/-- `A244882(n)-∑[2*A000292(n)]` -/
def P13819308397030766368.Spec : Prop :=
  ∀ n, P13819308397030766368.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P7870756498911837155

`A271662(n)-2*A277935(n+1)`
-/

namespace A256859.P7870756498911837155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - 2 * A277935 (n + 1)

end

end A256859.P7870756498911837155

namespace A256859

/-- `A271662(n)-2*A277935(n+1)` -/
def P7870756498911837155.Spec : Prop :=
  ∀ n, P7870756498911837155.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P16744023213477567726

`A002415(n+1)+A301973(n+1)+A000292(n)`
-/

namespace A256859.P16744023213477567726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A301973 (n + 1) + A000292 n)

end

end A256859.P16744023213477567726

namespace A256859

/-- `A002415(n+1)+A301973(n+1)+A000292(n)` -/
def P16744023213477567726.Spec : Prop :=
  ∀ n, P16744023213477567726.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P8483324671361383

`A174002(n+1)-(A033488(n+1)+A033488(n))`
-/

namespace A256859.P8483324671361383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (n + 1) - (A033488 (n + 1) + A033488 n)

end

end A256859.P8483324671361383

namespace A256859

/-- `A174002(n+1)-(A033488(n+1)+A033488(n))` -/
def P8483324671361383.Spec : Prop :=
  ∀ n, P8483324671361383.a n = A256859 (n + 1)

theorem P8483324671361383.correct : P8483324671361383.Spec := by
  intro n
  simp only [A256859, Nat.add_sub_cancel, A256859.P8483324671361383.a, A256859.P13446523280758156629.a, A000389, A000389.P15450220129395289428.a, A033488, A033488.P5263045204408268705.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256859

/-! ## A256859.P7766598177345339057

`A301973(n+2)-A004255(n+2)`
-/

namespace A256859.P7766598177345339057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301973 (n + 2) - A004255 (n + 2)

end

end A256859.P7766598177345339057

namespace A256859

/-- `A301973(n+2)-A004255(n+2)` -/
def P7766598177345339057.Spec : Prop :=
  ∀ n, P7766598177345339057.a n = A256859 (n + 1)

end A256859

/-! ## A256859.P13067220687981273707

`∑[∑[A173196(2*n)+A004006(n+1)]]`
-/

namespace A256859.P13067220687981273707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * n) + A004006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256859.P13067220687981273707

namespace A256859

/-- `∑[∑[A173196(2*n)+A004006(n+1)]]` -/
def P13067220687981273707.Spec : Prop :=
  ∀ n, P13067220687981273707.a n = A256859 (n + 1)

end A256859

/-!
# A256860: a(n) = n*(n + 1)*(n + 2)*(n + 3)*(n^2 - n + 5)/120.

The programs for A256860, the canonical program `A256860.P17673781534175106502` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256860 has offset 1).

The definition of A256860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²-(n+1)+5)/120` (program `A256860.P10947505866312668170`, by `A256860.P10947505866312668170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256860.P4495585372156324178

`ogf((1+5x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A256860.P4495585372156324178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A256860.P4495585372156324178

namespace A256860

/-- `ogf((1+5x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P4495585372156324178.Spec : Prop :=
  ∀ n, P4495585372156324178.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P10947505866312668170

`(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²-(n+1)+5)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256860.P10947505866312668170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) * (n + 4) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 5) : ℚ) / 120

end

end A256860.P10947505866312668170

namespace A256860

/-- `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²-(n+1)+5)/120` -/
def P10947505866312668170.Spec : Prop :=
  ∀ n, P10947505866312668170.a n = (A256860 (n + 1) : ℚ)

theorem P10947505866312668170.correct : P10947505866312668170.Spec := by
  intro n
  simp only [A256860, Nat.add_sub_cancel, A256860.P10947505866312668170.a, A256860.P17673781534175106502.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256860

/-! ## A256860.P17673781534175106502

`5*A000579(n+4)+A000579(n+6)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256860

/-- `5*A000579(n+4)+A000579(n+6)` -/
def P17673781534175106502.Spec : Prop :=
  ∀ n, P17673781534175106502.a n = A256860 (n + 1)

theorem P17673781534175106502.correct : P17673781534175106502.Spec := by
  intro n
  simp only [A256860, Nat.add_sub_cancel]

end A256860

/-! ## A256860.P3523752597461004465

`A027810(n)-A174002(n)`
-/

namespace A256860.P3523752597461004465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027810 n - A174002 n

end

end A256860.P3523752597461004465

namespace A256860

/-- `A027810(n)-A174002(n)` -/
def P3523752597461004465.Spec : Prop :=
  ∀ n, P3523752597461004465.a n = A256860 (n + 1)

theorem P3523752597461004465.correct : P3523752597461004465.Spec := by
  intro n
  simp only [A256860, Nat.add_sub_cancel, A256860.P3523752597461004465.a, A256860.P17673781534175106502.a, A000579, A000579.P13663713855180125612.a, A027810, A027810.P9915959440047895634.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256860

/-! ## A256860.P1271121252146555957

`A257200(n+1)+A034264(n)`
-/

namespace A256860.P1271121252146555957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + A034264 n

end

end A256860.P1271121252146555957

namespace A256860

/-- `A257200(n+1)+A034264(n)` -/
def P1271121252146555957.Spec : Prop :=
  ∀ n, P1271121252146555957.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P257020680479412442

`A034264(n)+∑[A257199(n+1)]`
-/

namespace A256860.P257020680479412442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256860.P257020680479412442

namespace A256860

/-- `A034264(n)+∑[A257199(n+1)]` -/
def P257020680479412442.Spec : Prop :=
  ∀ n, P257020680479412442.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P12788101467621209436

`A101094(n+1)-∑[A033488(n)]`
-/

namespace A256860.P12788101467621209436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256860.P12788101467621209436

namespace A256860

/-- `A101094(n+1)-∑[A033488(n)]` -/
def P12788101467621209436.Spec : Prop :=
  ∀ n, P12788101467621209436.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P17108115535222453400

`A257200(n+1)+∑[∑[A002418(n)]]`
-/

namespace A256860.P17108115535222453400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256860.P17108115535222453400

namespace A256860

/-- `A257200(n+1)+∑[∑[A002418(n)]]` -/
def P17108115535222453400.Spec : Prop :=
  ∀ n, P17108115535222453400.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P17370087269256162059

`A213563(n+1)-∑[∑[A027480(n)]]`
-/

namespace A256860.P17370087269256162059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213563 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256860.P17370087269256162059

namespace A256860

/-- `A213563(n+1)-∑[∑[A027480(n)]]` -/
def P17370087269256162059.Spec : Prop :=
  ∀ n, P17370087269256162059.a n = A256860 (n + 1)

end A256860

/-! ## A256860.P14857666842192609662

`(n+1)*A005583(n+1)-A051880(n)`
-/

namespace A256860.P14857666842192609662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005583 (n + 1) - A051880 n

end

end A256860.P14857666842192609662

namespace A256860

/-- `(n+1)*A005583(n+1)-A051880(n)` -/
def P14857666842192609662.Spec : Prop :=
  ∀ n, P14857666842192609662.a n = A256860 (n + 1)

end A256860

/-!
# A256861: a(n) = n*(n + 1)*(n + 2)*(n + 3)*(n + 4)*(n^2 - n + 6)/720.

The programs for A256861, the canonical program `A256861.P5535518076765391892` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256861 has offset 1).

The definition of A256861 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A256861.anchor (n : ℕ) : (A256861 (n + 1) : ℚ) = (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℚ) / 720` in `Proof.A256.A256861`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256861.P2242411731134214200

`ogf((1+6x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A256861.P2242411731134214200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 6] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A256861.P2242411731134214200

namespace A256861

/-- `ogf((1+6x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P2242411731134214200.Spec : Prop :=
  ∀ n, P2242411731134214200.a n = A256861 (n + 1)

end A256861

/-! ## A256861.P5535518076765391892

`(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*((n+1)²-(n+1)+6)/720`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256861

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(n+5)*((n+1)²-(n+1)+6)/720` -/
def P5535518076765391892.Spec : Prop :=
  ∀ n, P5535518076765391892.a n = (A256861 (n + 1) : ℚ)

end A256861

/-! ## A256861.P17565420658819933964

`∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]]` with `a(0)=1, a(1)=2`
-/

namespace A256861.P17565420658819933964
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f6 =>
  f6 (n - 1) + 7

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256861.P17565420658819933964

namespace A256861

/-- `∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]]` -/
def P17565420658819933964.Spec : Prop :=
  ∀ n, (P17565420658819933964.a n : ℤ) = A256861 (n + 1)

end A256861

/-! ## A256861.P4061588576723305151

`A027818(n)-∑[∑[A033487(n)]]`
-/

namespace A256861.P4061588576723305151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256861.P4061588576723305151

namespace A256861

/-- `A027818(n)-∑[∑[A033487(n)]]` -/
def P4061588576723305151.Spec : Prop :=
  ∀ n, P4061588576723305151.a n = A256861 (n + 1)

end A256861

/-! ## A256861.P6766850644208995985

`∑[A050403(n)-∑[A033487(n)]]`
-/

namespace A256861.P6766850644208995985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050403 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256861.P6766850644208995985

namespace A256861

/-- `∑[A050403(n)-∑[A033487(n)]]` -/
def P6766850644208995985.Spec : Prop :=
  ∀ n, P6766850644208995985.a n = A256861 (n + 1)

end A256861

/-! ## A256861.P16428197133893925796

`∑[∑[A051877(n)-A033487(n)]]`
-/

namespace A256861.P16428197133893925796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n - A033487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256861.P16428197133893925796

namespace A256861

/-- `∑[∑[A051877(n)-A033487(n)]]` -/
def P16428197133893925796.Spec : Prop :=
  ∀ n, P16428197133893925796.a n = A256861 (n + 1)

end A256861

/-! ## A256861.P2381805856541725415

`A027818(n)+A040977(n)-A050404(n)`
-/

namespace A256861.P2381805856541725415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n + (A040977 n - A050404 n)

end

end A256861.P2381805856541725415

namespace A256861

/-- `A027818(n)+A040977(n)-A050404(n)` -/
def P2381805856541725415.Spec : Prop :=
  ∀ n, P2381805856541725415.a n = A256861 (n + 1)

end A256861

/-!
# A256862: a(1)=1, then a(n) = least number > a(n-1) such that 2*a(n-1)+a(n) is prime.

The programs for A256862, the canonical program `A256862.P1813085850284359841` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256862 has offset 1).

The definition of A256862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256862.P1813085850284359841

`A013632(3*a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256862

/-- `A013632(3*a(n-1))+a(n-1)` -/
def P1813085850284359841.Spec : Prop :=
  ∀ n, P1813085850284359841.a n = A256862 (n + 1)

theorem P1813085850284359841.correct : P1813085850284359841.Spec := by
  intro n
  simp only [A256862, Nat.add_sub_cancel]

end A256862

/-! ## A256862.P12433523531733331389

`A013632(A008458(a(n-1))/2)+a(n-1)` with `a(0)=1`
-/

namespace A256862.P12433523531733331389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (SequenceMachineLib.roundAway ((A008458 (a (n - 1)).toNat : ℚ) / 2)).toNat + a (n - 1)

end

end A256862.P12433523531733331389

namespace A256862

/-- `A013632(A008458(a(n-1))/2)+a(n-1)` -/
def P12433523531733331389.Spec : Prop :=
  ∀ n, P12433523531733331389.a n = A256862 (n + 1)

end A256862

/-! ## A256862.P6579462190634688654

`A333175(A195936(3*n+5))+A024893(n+1)`
-/

namespace A256862.P6579462190634688654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (A195936 (3 * n + 5)).toNat + A024893 (n + 1)

end

end A256862.P6579462190634688654

namespace A256862

/-- `A333175(A195936(3*n+5))+A024893(n+1)` -/
def P6579462190634688654.Spec : Prop :=
  ∀ n, P6579462190634688654.a n = A256862 (n + 1)

end A256862

/-! ## A256862.P12376058396599725095

`A087370(n+1)%A111441(n+1)+1`
-/

namespace A256862.P12376058396599725095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087370 (n + 1)) (A111441 (n + 1)) + 1

end

end A256862.P12376058396599725095

namespace A256862

/-- `A087370(n+1)%A111441(n+1)+1` -/
def P12376058396599725095.Spec : Prop :=
  ∀ n, P12376058396599725095.a n = A256862 (n + 1)

end A256862

/-! ## A256862.P5603471157254905077

`lt[A006368(n), A056239(A298029(n))]`
-/

namespace A256862.P5603471157254905077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A298029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256862.P5603471157254905077

namespace A256862

/-- `lt[A006368(n), A056239(A298029(n))]` -/
def P5603471157254905077.Spec : Prop :=
  ∀ n, (P5603471157254905077.a n : ℤ) = A256862 (n + 1)

end A256862

/-!
# A256863: Primes that can't be written in form a^2 + b^4.

The programs for A256863, there is no canonical definition to state claims against.
-/

/-! ## A256863.P17473302403685679696

`p?[p?[2*n+1]-A256852(n+2)]`
-/

namespace A256863.P17473302403685679696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A256852 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256863.P17473302403685679696

/-! ## A256863.P15850902285678205000

`A000040(eq[0, A256852(n+1)]+1)`
-/

namespace A256863.P15850902285678205000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256863.P15850902285678205000

/-! ## A256863.P7149854405039501927

`p?[A111909(n+1)]`
-/

namespace A256863.P7149854405039501927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256863.P7149854405039501927

/-! ## A256863.P6689857642657198031

`record[A006530(A111909(n+2))]`
-/

namespace A256863.P6689857642657198031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111909 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256863.P6689857642657198031

/-! ## A256863.P11801387709847513501

`filter[A111909(n+1), A010051(#)]`
-/

namespace A256863.P11801387709847513501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A256863.P11801387709847513501

/-! ## A256863.P1618440300144810753

`∩[A000040(n+1), A111909(n+1)]`
-/

namespace A256863.P1618440300144810753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P1618440300144810753

/-! ## A256863.P15527333189956440855

`∩[A004139(n+1), A111909(n+1)]`
-/

namespace A256863.P15527333189956440855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P15527333189956440855

/-! ## A256863.P6779330082506260491

`∩[A045319(n+1), A111909(n+1)]`
-/

namespace A256863.P6779330082506260491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P6779330082506260491

/-! ## A256863.P7195607786364856942

`∩[A065091(n+1), A111909(n+1)]`
-/

namespace A256863.P7195607786364856942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P7195607786364856942

/-! ## A256863.P2991053075292398016

`∩[A070303(n+1), A111909(n+1)]`
-/

namespace A256863.P2991053075292398016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P2991053075292398016

/-! ## A256863.P2033802672895114337

`∩[A111909(n+1), A182986(n+1)]`
-/

namespace A256863.P2033802672895114337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P2033802672895114337

/-! ## A256863.P11496246442177849977

`∩[A111909(n+1), A216285(n+1)]`
-/

namespace A256863.P11496246442177849977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256863.P11496246442177849977

/-! ## A256863.P3318790489827623547

`p?[(n+1)%(A266152(n)+n)]`
-/

namespace A256863.P3318790489827623547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A266152 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256863.P3318790489827623547

/-! ## A256863.P16102996497579684205

`filter[A111909(n+2), A080339(#)]`
-/

namespace A256863.P16102996497579684205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A256863.P16102996497579684205

/-! ## A256863.P4454225945780761156

`filter[A111909(n+2), A080545(#)]`
-/

namespace A256863.P4454225945780761156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A256863.P4454225945780761156

/-!
# A256864: Primes not occurring in A084721.

The programs for A256864, there is no canonical definition to state claims against.
-/

/-! ## A256864.P15088547022067990160

`p?[(2*n+1)%A070846(A083569(n+1))]`
-/

namespace A256864.P15088547022067990160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A070846 (A083569 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256864.P15088547022067990160

/-! ## A256864.P6627317159798919930

`record[A051698(A335940(3*n+1)+A178225(3*(n+1)))]`
-/

namespace A256864.P6627317159798919930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A335940 (3 * n + 1) + A178225 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256864.P6627317159798919930

/-! ## A256864.P7013342617297494398

`p?[lcm(4-gcd(3, n), A113006(n+1))]`
-/

namespace A256864.P7013342617297494398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 - (Nat.gcd 3 n : ℤ)) (A113006 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256864.P7013342617297494398

/-! ## A256864.P6483749213831187545

`A088524(A290371(n+1))`
-/

namespace A256864.P6483749213831187545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088524 (A290371 (n + 1)).toNat

end

end A256864.P6483749213831187545

/-! ## A256864.P1596052877778155023

`p?[or(A190500(n+1), A245980(n))]`
-/

namespace A256864.P1596052877778155023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190500 (n + 1)) (A245980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256864.P1596052877778155023

/-!
# A256865: Numbers divisible by prime(d+1) for each digit d of their base-5 representation.

The programs for A256865, there is no canonical definition to state claims against.
-/

/-! ## A256865.P6534596678963093617

`∑[A107983(n)%A260356(n+1)]`
-/

namespace A256865.P6534596678963093617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107983 n) (A260356 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256865.P6534596678963093617

/-!
# A256866: Numbers divisible by prime(d+1) for each digit d of their base-6 representation.

The programs for A256866, there is no canonical definition to state claims against.
-/

/-! ## A256866.P17130097038174782727

`A063691(∑[10*a(and(n, n-1))])` with `a(0)=32, a(1)=1`
-/

namespace A256866.P17130097038174782727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32, 1] fun n f1 =>
  10 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256866.P17130097038174782727

/-! ## A256866.P12523670860133618596

`A284988(n+1)%A165828(A008847(n+1))`
-/

namespace A256866.P12523670860133618596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284988 (n + 1)) (A165828 (A008847 (n + 1)).toNat)

end

end A256866.P12523670860133618596

/-!
# A256867: Numbers divisible by prime(d+1) for each digit d of their base-7 representation.

The programs for A256867, there is no canonical definition to state claims against.
-/

/-! ## A256867.P2384707064110659745

`A300836(A134289(n))+A293435(n+1)`
-/

namespace A256867.P2384707064110659745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (A134289 n).toNat + A293435 (n + 1)

end

end A256867.P2384707064110659745

/-!
# A256869: Numbers divisible by prime(d+1) for each digit d of their base-9 representation.

The programs for A256869, there is no canonical definition to state claims against.
-/

/-! ## A256869.P13810031859256994894

`lcm(∑[n], A162821(A162688(n+1)))`
-/

namespace A256869.P13810031859256994894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A162821 (A162688 (n + 1)).toNat)

end

end A256869.P13810031859256994894

/-!
# A256870: Numbers divisible by prime(d+1) for each digit d of their base-10 representation.

The programs for A256870, there is no canonical definition to state claims against.
-/

/-! ## A256870.P5994890907315351042

`A349080((n+1)*∑{d}[n+1, #])-A341451(n+4)`
-/

namespace A256870.P5994890907315351042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349080 ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) - A341451 (n + 4)

end

end A256870.P5994890907315351042

/-!
# A256871: a(n) = 2^(n-1)*(2^n+11).

The programs for A256871, the canonical program `A256871.P17432401676680563634` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256871 has offset 0).

The definition of A256871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(2^n+11)` (program `A256871.P2824392963908863615`, by `A256871.P2824392963908863615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256871.P10931941497690645118

`ogf((6-23x)/(1-6x+8x^2))`
-/

namespace A256871.P10931941497690645118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -23] [1, -6, 8] n

end

end A256871.P10931941497690645118

namespace A256871

/-- `ogf((6-23x)/(1-6x+8x^2))` -/
def P10931941497690645118.Spec : Prop :=
  ∀ n, P10931941497690645118.a n = A256871 n

end A256871

/-! ## A256871.P2824392963908863615

`2^(n-1)*(2^n+11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256871.P2824392963908863615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 11 : ℚ)

end

end A256871.P2824392963908863615

namespace A256871

/-- `2^(n-1)*(2^n+11)` -/
def P2824392963908863615.Spec : Prop :=
  ∀ n, P2824392963908863615.a n = (A256871 n : ℚ)

theorem P2824392963908863615.correct : P2824392963908863615.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256871, Nat.add_sub_cancel, A256871.P2824392963908863615.a, A256871.P17432401676680563634.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A256871, Nat.add_sub_cancel, A256871.P2824392963908863615.a, A256871.P17432401676680563634.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A256871

/-! ## A256871.P17432401676680563634

`6*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=13`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256871

/-- `6*a(n-1)-8*a(n-2)` -/
def P17432401676680563634.Spec : Prop :=
  ∀ n, P17432401676680563634.a n = A256871 n

theorem P17432401676680563634.correct : P17432401676680563634.Spec := by
  intro n
  simp only [A256871]

end A256871

/-! ## A256871.P17917442623460272523

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=6`
-/

namespace A256871.P17917442623460272523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A256871.P17917442623460272523

namespace A256871

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P17917442623460272523.Spec : Prop :=
  ∀ n, P17917442623460272523.a n = (A256871 n : ℚ)

end A256871

/-! ## A256871.P3521369077554810109

`A257272(n)+2^(n+1)`
-/

namespace A256871.P3521369077554810109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n + (2 ^ (n + 1) : ℤ)

end

end A256871.P3521369077554810109

namespace A256871

/-- `A257272(n)+2^(n+1)` -/
def P3521369077554810109.Spec : Prop :=
  ∀ n, P3521369077554810109.a n = A256871 n

end A256871

/-! ## A256871.P7881204291823420115

`A257273(n)+2^(n+2)`
-/

namespace A256871.P7881204291823420115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + (2 ^ (n + 2) : ℤ)

end

end A256871.P7881204291823420115

namespace A256871

/-- `A257273(n)+2^(n+2)` -/
def P7881204291823420115.Spec : Prop :=
  ∀ n, P7881204291823420115.a n = A256871 n

end A256871

/-! ## A256871.P13144029307114993731

`A256873(n)+3*2^n`
-/

namespace A256871.P13144029307114993731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n + (3 * 2 ^ n : ℤ)

end

end A256871.P13144029307114993731

namespace A256871

/-- `A256873(n)+3*2^n` -/
def P13144029307114993731.Spec : Prop :=
  ∀ n, P13144029307114993731.a n = A256871 n

end A256871

/-! ## A256871.P11310276333200450473

`A006516(n)+6*2^n`
-/

namespace A256871.P11310276333200450473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (6 * 2 ^ n : ℤ)

end

end A256871.P11310276333200450473

namespace A256871

/-- `A006516(n)+6*2^n` -/
def P11310276333200450473.Spec : Prop :=
  ∀ n, P11310276333200450473.a n = A256871 n

end A256871

/-! ## A256871.P15453333965089606051

`A020714(n)+A007582(n)`
-/

namespace A256871.P15453333965089606051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n + A007582 n

end

end A256871.P15453333965089606051

namespace A256871

/-- `A020714(n)+A007582(n)` -/
def P15453333965089606051.Spec : Prop :=
  ∀ n, P15453333965089606051.a n = A256871 n

end A256871

/-! ## A256871.P14035902396042593264

`A134057(n)+A086224(n)`
-/

namespace A256871.P14035902396042593264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 n + A086224 n

end

end A256871.P14035902396042593264

namespace A256871

/-- `A134057(n)+A086224(n)` -/
def P14035902396042593264.Spec : Prop :=
  ∀ n, P14035902396042593264.a n = A256871 n

end A256871

/-! ## A256871.P13627654239503271068

`A281481(n)+A153894(n)`
-/

namespace A256871.P13627654239503271068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A153894 n

end

end A256871.P13627654239503271068

namespace A256871

/-- `A281481(n)+A153894(n)` -/
def P13627654239503271068.Spec : Prop :=
  ∀ n, P13627654239503271068.a n = A256871 n

end A256871

/-! ## A256871.P11269230489156699957

`A188129(n)-A281481(n)`
-/

namespace A256871.P11269230489156699957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188129 n - A281481 n

end

end A256871.P11269230489156699957

namespace A256871

/-- `A188129(n)-A281481(n)` -/
def P11269230489156699957.Spec : Prop :=
  ∀ n, P11269230489156699957.a n = A256871 n

end A256871

/-! ## A256871.P6852309292429365694

`A239679(n)-A394960(n)`
-/

namespace A256871.P6852309292429365694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239679 n - A394960 n

end

end A256871.P6852309292429365694

namespace A256871

/-- `A239679(n)-A394960(n)` -/
def P6852309292429365694.Spec : Prop :=
  ∀ n, P6852309292429365694.a n = A256871 n

end A256871

/-! ## A256871.P8413815964085587132

`A007283(n+1)+A006516(n)`
-/

namespace A256871.P8413815964085587132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) + A006516 n

end

end A256871.P8413815964085587132

namespace A256871

/-- `A007283(n+1)+A006516(n)` -/
def P8413815964085587132.Spec : Prop :=
  ∀ n, P8413815964085587132.a n = A256871 n

end A256871

/-! ## A256871.P3486888567263694079

`A091629(n+1)+A006516(n)`
-/

namespace A256871.P3486888567263694079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 1) + A006516 n

end

end A256871.P3486888567263694079

namespace A256871

/-- `A091629(n+1)+A006516(n)` -/
def P3486888567263694079.Spec : Prop :=
  ∀ n, P3486888567263694079.a n = A256871 n

end A256871

/-! ## A256871.P5361952095277159033

`A153893(n+1)+A134169(n)`
-/

namespace A256871.P5361952095277159033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (n + 1) + A134169 n

end

end A256871.P5361952095277159033

namespace A256871

/-- `A153893(n+1)+A134169(n)` -/
def P5361952095277159033.Spec : Prop :=
  ∀ n, P5361952095277159033.a n = A256871 n

end A256871

/-! ## A256871.P1383977197073738616

`2*A256873(n)-A006516(n)`
-/

namespace A256871.P1383977197073738616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256873 n - A006516 n

end

end A256871.P1383977197073738616

namespace A256871

/-- `2*A256873(n)-A006516(n)` -/
def P1383977197073738616.Spec : Prop :=
  ∀ n, P1383977197073738616.a n = A256871 n

end A256871

/-! ## A256871.P18286649098100512318

`2*A257272(n)-A257273(n)`
-/

namespace A256871.P18286649098100512318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257272 n - A257273 n

end

end A256871.P18286649098100512318

namespace A256871

/-- `2*A257272(n)-A257273(n)` -/
def P18286649098100512318.Spec : Prop :=
  ∀ n, P18286649098100512318.a n = A256871 n

end A256871

/-! ## A256871.P8008371655075429954

`(A005015(n)+A000079(n)²)/2`
-/

namespace A256871.P8008371655075429954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005015 n + A000079 n ^ 2 : ℚ) / 2

end

end A256871.P8008371655075429954

namespace A256871

/-- `(A005015(n)+A000079(n)²)/2` -/
def P8008371655075429954.Spec : Prop :=
  ∀ n, P8008371655075429954.a n = (A256871 n : ℚ)

theorem P8008371655075429954.correct : P8008371655075429954.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256871, Nat.add_sub_cancel, A256871.P8008371655075429954.a, A256871.P17432401676680563634.a, A000079, A000079.P10855139691139572931.a, A005015, A005015.P14859435765551798402.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A256871, Nat.add_sub_cancel, A256871.P8008371655075429954.a, A256871.P17432401676680563634.a, A000079, A000079.P10855139691139572931.a, A005015, A005015.P14859435765551798402.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A256871

/-! ## A256871.P9841292940756889547

`(A198274(n)+A000225(n)²)/2`
-/

namespace A256871.P9841292940756889547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198274 n + A000225 n ^ 2 : ℚ) / 2

end

end A256871.P9841292940756889547

namespace A256871

/-- `(A198274(n)+A000225(n)²)/2` -/
def P9841292940756889547.Spec : Prop :=
  ∀ n, P9841292940756889547.a n = (A256871 n : ℚ)

theorem P9841292940756889547.correct : P9841292940756889547.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256871, Nat.add_sub_cancel, A256871.P9841292940756889547.a, A256871.P17432401676680563634.a, A000225, A000225.P6535533121115206393.a, A198274, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A256871, Nat.add_sub_cancel, A256871.P9841292940756889547.a, A256871.P17432401676680563634.a, A000225, A000225.P6535533121115206393.a, A198274, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A256871

/-!
# A256873: a(n) = 2^(n-1)*(2^n+5).

The programs for A256873, the canonical program `A256873.P17064703439970435902` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256873 has offset 0).

The definition of A256873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(2^n+5)` (program `A256873.P5965330858701745732`, by `A256873.P5965330858701745732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256873.P8543565317858151528

`ogf((3-11x)/(1-6x+8x^2))`
-/

namespace A256873.P8543565317858151528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11] [1, -6, 8] n

end

end A256873.P8543565317858151528

namespace A256873

/-- `ogf((3-11x)/(1-6x+8x^2))` -/
def P8543565317858151528.Spec : Prop :=
  ∀ n, P8543565317858151528.a n = A256873 n

end A256873

/-! ## A256873.P5965330858701745732

`2^(n-1)*(2^n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256873.P5965330858701745732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 5 : ℚ)

end

end A256873.P5965330858701745732

namespace A256873

/-- `2^(n-1)*(2^n+5)` -/
def P5965330858701745732.Spec : Prop :=
  ∀ n, P5965330858701745732.a n = (A256873 n : ℚ)

theorem P5965330858701745732.correct : P5965330858701745732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256873, Nat.add_sub_cancel, A256873.P5965330858701745732.a, A256873.P17064703439970435902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A256873, Nat.add_sub_cancel, A256873.P5965330858701745732.a, A256873.P17064703439970435902.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A256873

/-! ## A256873.P17064703439970435902

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256873

/-- `6*a(n-1)-8*a(n-2)` -/
def P17064703439970435902.Spec : Prop :=
  ∀ n, P17064703439970435902.a n = A256873 n

theorem P17064703439970435902.correct : P17064703439970435902.Spec := by
  intro n
  simp only [A256873]

end A256873

/-! ## A256873.P4543256106073488665

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=3`
-/

namespace A256873.P4543256106073488665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A256873.P4543256106073488665

namespace A256873

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P4543256106073488665.Spec : Prop :=
  ∀ n, P4543256106073488665.a n = (A256873 n : ℚ)

end A256873

/-! ## A256873.P9991635049948976631

`xor(ceil(4^n/2), Δ[ceil(2^(n-1))])+2^(n+1)`
-/

namespace A256873.P9991635049948976631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(4 ^ n : ℚ) / 2⌉ (f1 (n + 1) - f1 n) + (2 ^ (n + 1) : ℤ)

end

end A256873.P9991635049948976631

namespace A256873

/-- `xor(ceil(4^n/2), Δ[ceil(2^(n-1))])+2^(n+1)` -/
def P9991635049948976631.Spec : Prop :=
  ∀ n, P9991635049948976631.a n = A256873 n

end A256873

/-! ## A256873.P15899630459071460857

`A257273(n)+2^n`
-/

namespace A256873.P15899630459071460857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + (2 ^ n : ℤ)

end

end A256873.P15899630459071460857

namespace A256873

/-- `A257273(n)+2^n` -/
def P15899630459071460857.Spec : Prop :=
  ∀ n, P15899630459071460857.a n = A256873 n

end A256873

/-! ## A256873.P1398765902510348494

`A257272(n)-2^n`
-/

namespace A256873.P1398765902510348494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n - (2 ^ n : ℤ)

end

end A256873.P1398765902510348494

namespace A256873

/-- `A257272(n)-2^n` -/
def P1398765902510348494.Spec : Prop :=
  ∀ n, P1398765902510348494.a n = A256873 n

end A256873

/-! ## A256873.P4079060676835220207

`A007582(n)+2^(n+1)`
-/

namespace A256873.P4079060676835220207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + (2 ^ (n + 1) : ℤ)

end

end A256873.P4079060676835220207

namespace A256873

/-- `A007582(n)+2^(n+1)` -/
def P4079060676835220207.Spec : Prop :=
  ∀ n, P4079060676835220207.a n = A256873 n

end A256873

/-! ## A256873.P4495616313358917085

`2^n*A168614(n)/2`
-/

namespace A256873.P4495616313358917085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A168614 n : ℚ) / 2

end

end A256873.P4495616313358917085

namespace A256873

/-- `2^n*A168614(n)/2` -/
def P4495616313358917085.Spec : Prop :=
  ∀ n, P4495616313358917085.a n = (A256873 n : ℚ)

theorem P4495616313358917085.correct : P4495616313358917085.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A256873, Nat.add_sub_cancel, A256873.P4495616313358917085.a, A256873.P17064703439970435902.a, A168614, A168614.P8565637346810562881.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A256873, Nat.add_sub_cancel, A256873.P4495616313358917085.a, A256873.P17064703439970435902.a, A168614, A168614.P8565637346810562881.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A256873

/-! ## A256873.P10938448826614784516

`∑[2^n]+A170938(n)/2`
-/

namespace A256873.P10938448826614784516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A170938 n : ℚ) / 2

end

end A256873.P10938448826614784516

namespace A256873

/-- `∑[2^n]+A170938(n)/2` -/
def P10938448826614784516.Spec : Prop :=
  ∀ n, P10938448826614784516.a n = (A256873 n : ℚ)

end A256873

/-! ## A256873.P10345446648735944976

`A131577(n)²+2*a(n-1)` with `a(0)=3`
-/

namespace A256873.P10345446648735944976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A131577 n ^ 2 + 2 * a (n - 1)

end

end A256873.P10345446648735944976

namespace A256873

/-- `A131577(n)²+2*a(n-1)` -/
def P10345446648735944976.Spec : Prop :=
  ∀ n, P10345446648735944976.a n = A256873 n

end A256873

/-! ## A256873.P1814747936770402816

`A000302(n-1)+2*a(n-1)` with `a(0)=3`
-/

namespace A256873.P1814747936770402816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000302 (n - 1) + 2 * a (n - 1)

end

end A256873.P1814747936770402816

namespace A256873

/-- `A000302(n-1)+2*a(n-1)` -/
def P1814747936770402816.Spec : Prop :=
  ∀ n, P1814747936770402816.a n = A256873 n

end A256873

/-! ## A256873.P7118653652898182394

`A032263(n+1)+2^n+∑[3^n]+1`
-/

namespace A256873.P7118653652898182394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + ((2 ^ n + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ)

end

end A256873.P7118653652898182394

namespace A256873

/-- `A032263(n+1)+2^n+∑[3^n]+1` -/
def P7118653652898182394.Spec : Prop :=
  ∀ n, P7118653652898182394.a n = A256873 n

end A256873

/-! ## A256873.P2143028792132347622

`A007283(n)+A006516(n)`
-/

namespace A256873.P2143028792132347622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n + A006516 n

end

end A256873.P2143028792132347622

namespace A256873

/-- `A007283(n)+A006516(n)` -/
def P2143028792132347622.Spec : Prop :=
  ∀ n, P2143028792132347622.a n = A256873 n

end A256873

/-! ## A256873.P16511358025049857795

`A084869(n)+A007689(n)`
-/

namespace A256873.P16511358025049857795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A007689 n

end

end A256873.P16511358025049857795

namespace A256873

/-- `A084869(n)+A007689(n)` -/
def P16511358025049857795.Spec : Prop :=
  ∀ n, P16511358025049857795.a n = A256873 n

end A256873

/-! ## A256873.P2599624717002394533

`A133789(n)+A001550(n)`
-/

namespace A256873.P2599624717002394533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + A001550 n

end

end A256873.P2599624717002394533

namespace A256873

/-- `A133789(n)+A001550(n)` -/
def P2599624717002394533.Spec : Prop :=
  ∀ n, P2599624717002394533.a n = A256873 n

end A256873

/-! ## A256873.P11964267212971467585

`A134165(n)+A034472(n)`
-/

namespace A256873.P11964267212971467585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n + A034472 n

end

end A256873.P11964267212971467585

namespace A256873

/-- `A134165(n)+A034472(n)` -/
def P11964267212971467585.Spec : Prop :=
  ∀ n, P11964267212971467585.a n = A256873 n

end A256873

/-! ## A256873.P1579193883141797554

`A134018(n)+A067771(n)`
-/

namespace A256873.P1579193883141797554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + A067771 n

end

end A256873.P1579193883141797554

namespace A256873

/-- `A134018(n)+A067771(n)` -/
def P1579193883141797554.Spec : Prop :=
  ∀ n, P1579193883141797554.a n = A256873 n

end A256873

/-! ## A256873.P8361964625847655097

`A134168(n)+A099754(n)`
-/

namespace A256873.P8361964625847655097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n + A099754 n

end

end A256873.P8361964625847655097

namespace A256873

/-- `A134168(n)+A099754(n)` -/
def P8361964625847655097.Spec : Prop :=
  ∀ n, P8361964625847655097.a n = A256873 n

end A256873

/-! ## A256873.P7819545875311811445

`A153893(n)+A134169(n)`
-/

namespace A256873.P7819545875311811445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + A134169 n

end

end A256873.P7819545875311811445

namespace A256873

/-- `A153893(n)+A134169(n)` -/
def P7819545875311811445.Spec : Prop :=
  ∀ n, P7819545875311811445.a n = A256873 n

end A256873

/-!
# A256875: Numbers divisible by prime(d) for each digit d in their base-5 representation, none of which may be zero.

The programs for A256875, there is no canonical definition to state claims against.
-/

/-! ## A256875.P3110943320885758440

`∩[A032926(n+1), A353530(n+1)]`
-/

namespace A256875.P3110943320885758440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256875.P3110943320885758440

/-! ## A256875.P15338847001837681719

`∩[A032926(n+1), A231567(n+1)]`
-/

namespace A256875.P15338847001837681719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256875.P15338847001837681719

/-!
# A256880: n*n!/round(n/2).

The programs for A256880, the canonical program `A256880.P14070058359968905077` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256880 has offset 1).

The definition of A256880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256880.P14070058359968905077

`(n+1)*(n+1)!/round((n+1)/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256880

/-- `(n+1)*(n+1)!/round((n+1)/2)` -/
def P14070058359968905077.Spec : Prop :=
  ∀ n, P14070058359968905077.a n = (A256880 (n + 1) : ℚ)

end A256880

/-! ## A256880.P15707476841525843980

`Δ[(n+1)!]/(floor(n/2)+1)`
-/

namespace A256880.P15707476841525843980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A256880.P15707476841525843980

namespace A256880

/-- `Δ[(n+1)!]/(floor(n/2)+1)` -/
def P15707476841525843980.Spec : Prop :=
  ∀ n, P15707476841525843980.a n = (A256880 (n + 1) : ℚ)

end A256880

/-! ## A256880.P10244171619658415993

`∏[(n+1)²/ceil(a(n-1))]` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A256880.P10244171619658415993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n + 1) ^ 2 : ℚ) / (⌈f1 (n - 1)⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256880.P10244171619658415993

namespace A256880

/-- `∏[(n+1)²/ceil(a(n-1))]` -/
def P10244171619658415993.Spec : Prop :=
  ∀ n, P10244171619658415993.a n = (A256880 (n + 1) : ℚ)

end A256880

/-! ## A256880.P3954384012929234436

`(n+1)*∏[n+1]/∑[char[2*n]]`
-/

namespace A256880.P3954384012929234436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))

end

end A256880.P3954384012929234436

namespace A256880

/-- `(n+1)*∏[n+1]/∑[char[2*n]]` -/
def P3954384012929234436.Spec : Prop :=
  ∀ n, P3954384012929234436.a n = (A256880 (n + 1) : ℚ)

end A256880

/-! ## A256880.P6000878261992424719

`A059837(n+2)/A001405(n)`
-/

namespace A256880.P6000878261992424719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059837 (n + 2) : ℚ) / (A001405 n : ℚ)

end

end A256880.P6000878261992424719

namespace A256880

/-- `A059837(n+2)/A001405(n)` -/
def P6000878261992424719.Spec : Prop :=
  ∀ n, P6000878261992424719.a n = (A256880 (n + 1) : ℚ)

end A256880

/-!
# A256881: a(n) = n!/ceiling(n/2).

The programs for A256881, the canonical program `A256881.P11679336560666736273` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256881 has offset 1).

The definition of A256881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256881.P11679336560666736273

`(n+1)!/ceil((n+1)/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256881

/-- `(n+1)!/ceil((n+1)/2)` -/
def P11679336560666736273.Spec : Prop :=
  ∀ n, P11679336560666736273.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P17736011782629860421

`n!*ratio[C(n, floor(n/2))]`
-/

namespace A256881.P17736011782629860421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A256881.P17736011782629860421

namespace A256881

/-- `n!*ratio[C(n, floor(n/2))]` -/
def P17736011782629860421.Spec : Prop :=
  ∀ n, P17736011782629860421.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P7761239615541343104

`(n+1)/∑[char[2*n]]*n!`
-/

namespace A256881.P7761239615541343104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A256881.P7761239615541343104

namespace A256881

/-- `(n+1)/∑[char[2*n]]*n!` -/
def P7761239615541343104.Spec : Prop :=
  ∀ n, P7761239615541343104.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P12435657899731125660

`n!*ratio[A001405(n)]`
-/

namespace A256881.P12435657899731125660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A256881.P12435657899731125660

namespace A256881

/-- `n!*ratio[A001405(n)]` -/
def P12435657899731125660.Spec : Prop :=
  ∀ n, P12435657899731125660.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P8413142443344685632

`(n+1)*A107991(n+1)`
-/

namespace A256881.P8413142443344685632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107991 (n + 1)

end

end A256881.P8413142443344685632

namespace A256881

/-- `(n+1)*A107991(n+1)` -/
def P8413142443344685632.Spec : Prop :=
  ∀ n, P8413142443344685632.a n = A256881 (n + 1)

end A256881

/-! ## A256881.P10157669538855113767

`ratio[C(n, floor(n/2))]*A000142(n)`
-/

namespace A256881.P10157669538855113767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000142 n : ℚ)

end

end A256881.P10157669538855113767

namespace A256881

/-- `ratio[C(n, floor(n/2))]*A000142(n)` -/
def P10157669538855113767.Spec : Prop :=
  ∀ n, P10157669538855113767.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P12735112525948591337

`(n+1)*n!/(A004526(n)+1)`
-/

namespace A256881.P12735112525948591337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial n : ℚ) / (A004526 n + 1 : ℚ))

end

end A256881.P12735112525948591337

namespace A256881

/-- `(n+1)*n!/(A004526(n)+1)` -/
def P12735112525948591337.Spec : Prop :=
  ∀ n, P12735112525948591337.a n = (A256881 (n + 1) : ℚ)

end A256881

/-! ## A256881.P107981040876188673

`A077012(A080827(n+1))`
-/

namespace A256881.P107981040876188673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A080827 (n + 1)).toNat

end

end A256881.P107981040876188673

namespace A256881

/-- `A077012(A080827(n+1))` -/
def P107981040876188673.Spec : Prop :=
  ∀ n, P107981040876188673.a n = A256881 (n + 1)

end A256881

/-! ## A256881.P3276989824652146062

`A077012(A099392(n+2))`
-/

namespace A256881.P3276989824652146062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A099392 (n + 2)).toNat

end

end A256881.P3276989824652146062

namespace A256881

/-- `A077012(A099392(n+2))` -/
def P3276989824652146062.Spec : Prop :=
  ∀ n, P3276989824652146062.a n = A256881 (n + 1)

end A256881

/-! ## A256881.P8588276783245539683

`ratio[A001405(n)]*A000142(n)`
-/

namespace A256881.P8588276783245539683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000142 n : ℚ)

end

end A256881.P8588276783245539683

namespace A256881

/-- `ratio[A001405(n)]*A000142(n)` -/
def P8588276783245539683.Spec : Prop :=
  ∀ n, P8588276783245539683.a n = (A256881 (n + 1) : ℚ)

end A256881

/-!
# A256882: Numbers divisible by prime(d+1) for each digit d of their base-2 representation.

The programs for A256882, the canonical program `A256882.P10199819956929038243` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256882 has offset 1).

The definition of A256882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256882.P6501019502949240181

`3*∪[2*n, ∑[4^n]]`
-/

namespace A256882.P6501019502949240181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A256882.P6501019502949240181

namespace A256882

/-- `3*∪[2*n, ∑[4^n]]` -/
def P6501019502949240181.Spec : Prop :=
  ∀ n, (P6501019502949240181.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P18125707384870210008

`∪[A008588(n), A024036(n)]`
-/

namespace A256882.P18125707384870210008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256882.P18125707384870210008

namespace A256882

/-- `∪[A008588(n), A024036(n)]` -/
def P18125707384870210008.Spec : Prop :=
  ∀ n, (P18125707384870210008.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P16154755562766489178

`∪[A008588(n), A192171(n+1)]`
-/

namespace A256882.P16154755562766489178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256882.P16154755562766489178

namespace A256882

/-- `∪[A008588(n), A192171(n+1)]` -/
def P16154755562766489178.Spec : Prop :=
  ∀ n, (P16154755562766489178.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P10199819956929038243

`lt[lcm(6, n), 2^floor(log2(n+1))+n+1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256882

/-- `lt[lcm(6, n), 2^floor(log2(n+1))+n+1]` -/
def P10199819956929038243.Spec : Prop :=
  ∀ n, (P10199819956929038243.a n : ℤ) = A256882 (n + 1)

theorem P10199819956929038243.correct : P10199819956929038243.Spec := by
  intro n
  simp only [A256882, Nat.add_sub_cancel]

end A256882

/-! ## A256882.P17535099168807534189

`eq[(n+2)%3-1, A001221(n^(n%2)+1)]`
-/

namespace A256882.P17535099168807534189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 3 : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ (n % 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P17535099168807534189

namespace A256882

/-- `eq[(n+2)%3-1, A001221(n^(n%2)+1)]` -/
def P17535099168807534189.Spec : Prop :=
  ∀ n, (P17535099168807534189.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P7313720839508618546

`record[and(A298026(n)+1, 3*n)]`
-/

namespace A256882.P7313720839508618546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298026 n + 1) (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256882.P7313720839508618546

namespace A256882

/-- `record[and(A298026(n)+1, 3*n)]` -/
def P7313720839508618546.Spec : Prop :=
  ∀ n, P7313720839508618546.a n = A256882 (n + 1)

end A256882

/-! ## A256882.P4350677578132745100

`record[gcd(3*n, A245092(3*n))]`
-/

namespace A256882.P4350677578132745100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (A245092 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256882.P4350677578132745100

namespace A256882

/-- `record[gcd(3*n, A245092(3*n))]` -/
def P4350677578132745100.Spec : Prop :=
  ∀ n, (P4350677578132745100.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P18236785678905067231

`eq[n, A349876(A245092(n))]`
-/

namespace A256882.P18236785678905067231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349876 (A245092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256882.P18236785678905067231

namespace A256882

/-- `eq[n, A349876(A245092(n))]` -/
def P18236785678905067231.Spec : Prop :=
  ∀ n, (P18236785678905067231.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P7886613617980338921

`eq[A049347(n), A086767(n)]`
-/

namespace A256882.P7886613617980338921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P7886613617980338921

namespace A256882

/-- `eq[A049347(n), A086767(n)]` -/
def P7886613617980338921.Spec : Prop :=
  ∀ n, (P7886613617980338921.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P2729322368274171010

`eq[A057078(n), A086767(n)]`
-/

namespace A256882.P2729322368274171010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P2729322368274171010

namespace A256882

/-- `eq[A057078(n), A086767(n)]` -/
def P2729322368274171010.Spec : Prop :=
  ∀ n, (P2729322368274171010.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P8471012509310999383

`eq[A069705(n), A086767(n)]`
-/

namespace A256882.P8471012509310999383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P8471012509310999383

namespace A256882

/-- `eq[A069705(n), A086767(n)]` -/
def P8471012509310999383.Spec : Prop :=
  ∀ n, (P8471012509310999383.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P17919761708435146835

`eq[A079978(n), A086767(n)]`
-/

namespace A256882.P17919761708435146835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P17919761708435146835

namespace A256882

/-- `eq[A079978(n), A086767(n)]` -/
def P17919761708435146835.Spec : Prop :=
  ∀ n, (P17919761708435146835.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P6403521903190292504

`eq[A086767(n), A100402(n)]`
-/

namespace A256882.P6403521903190292504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P6403521903190292504

namespace A256882

/-- `eq[A086767(n), A100402(n)]` -/
def P6403521903190292504.Spec : Prop :=
  ∀ n, (P6403521903190292504.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P3678011571370963070

`eq[A086767(n), A130196(n)]`
-/

namespace A256882.P3678011571370963070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P3678011571370963070

namespace A256882

/-- `eq[A086767(n), A130196(n)]` -/
def P3678011571370963070.Spec : Prop :=
  ∀ n, (P3678011571370963070.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P12715205763257897733

`eq[A086767(n), A130784(n)]`
-/

namespace A256882.P12715205763257897733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P12715205763257897733

namespace A256882

/-- `eq[A086767(n), A130784(n)]` -/
def P12715205763257897733.Spec : Prop :=
  ∀ n, (P12715205763257897733.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P4854726165260029409

`eq[A086767(n), A130793(n)]`
-/

namespace A256882.P4854726165260029409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P4854726165260029409

namespace A256882

/-- `eq[A086767(n), A130793(n)]` -/
def P4854726165260029409.Spec : Prop :=
  ∀ n, (P4854726165260029409.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P5699052245308652062

`eq[A086767(n), A132677(n)]`
-/

namespace A256882.P5699052245308652062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P5699052245308652062

namespace A256882

/-- `eq[A086767(n), A132677(n)]` -/
def P5699052245308652062.Spec : Prop :=
  ∀ n, (P5699052245308652062.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P1858680453656822466

`eq[A086767(n), A138189(n)]`
-/

namespace A256882.P1858680453656822466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P1858680453656822466

namespace A256882

/-- `eq[A086767(n), A138189(n)]` -/
def P1858680453656822466.Spec : Prop :=
  ∀ n, (P1858680453656822466.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P18096605741465709151

`eq[A086767(n), A145644(n)]`
-/

namespace A256882.P18096605741465709151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P18096605741465709151

namespace A256882

/-- `eq[A086767(n), A145644(n)]` -/
def P18096605741465709151.Spec : Prop :=
  ∀ n, (P18096605741465709151.a n : ℤ) = A256882 (n + 1)

end A256882

/-! ## A256882.P1671572578833764895

`eq[A086767(n), A153727(n)]`
-/

namespace A256882.P1671572578833764895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256882.P1671572578833764895

namespace A256882

/-- `eq[A086767(n), A153727(n)]` -/
def P1671572578833764895.Spec : Prop :=
  ∀ n, (P1671572578833764895.a n : ℤ) = A256882 (n + 1)

end A256882

/-!
# A256885: a(n) = n*(n + 1)/2 - pi(n), where pi(n) = A000720(n) is the prime counting function.

The programs for A256885, the canonical program `A256885.P9321230901606883254` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256885 has offset 1).

The definition of A256885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256885.P9321230901606883254

`(n+1)*(n+2)/2-A000720(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256885

/-- `(n+1)*(n+2)/2-A000720(n+1)` -/
def P9321230901606883254.Spec : Prop :=
  ∀ n, P9321230901606883254.a n = (A256885 (n + 1) : ℚ)

end A256885

/-! ## A256885.P12997072761219789735

`∑[∏{p}[n+1, C(#%n, #)]+n]`
-/

namespace A256885.P12997072761219789735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P12997072761219789735

namespace A256885

/-- `∑[∏{p}[n+1, C(#%n, #)]+n]` -/
def P12997072761219789735.Spec : Prop :=
  ∀ n, (P12997072761219789735.a n : ℤ) = A256885 (n + 1)

end A256885

/-! ## A256885.P4017366776810235237

`∑[n+1-∑{p}[n+1, val(#, n+1)]]`
-/

namespace A256885.P4017366776810235237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P4017366776810235237

namespace A256885

/-- `∑[n+1-∑{p}[n+1, val(#, n+1)]]` -/
def P4017366776810235237.Spec : Prop :=
  ∀ n, P4017366776810235237.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P1377038062440745160

`∑[n+1-∑{p}[n+1, C(#, n+1)]]`
-/

namespace A256885.P1377038062440745160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P1377038062440745160

namespace A256885

/-- `∑[n+1-∑{p}[n+1, C(#, n+1)]]` -/
def P1377038062440745160.Spec : Prop :=
  ∀ n, P1377038062440745160.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P10157793478235092393

`∑[A014684(n+1)]`
-/

namespace A256885.P10157793478235092393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P10157793478235092393

namespace A256885

/-- `∑[A014684(n+1)]` -/
def P10157793478235092393.Spec : Prop :=
  ∀ n, P10157793478235092393.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P16000256825708917613

`A333996(n+1)+1`
-/

namespace A256885.P16000256825708917613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333996 (n + 1) + 1

end

end A256885.P16000256825708917613

namespace A256885

/-- `A333996(n+1)+1` -/
def P16000256825708917613.Spec : Prop :=
  ∀ n, P16000256825708917613.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P471088434745727596

`∑[A113636(n+1)-1]`
-/

namespace A256885.P471088434745727596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P471088434745727596

namespace A256885

/-- `∑[A113636(n+1)-1]` -/
def P471088434745727596.Spec : Prop :=
  ∀ n, P471088434745727596.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P2780304575069360296

`∑[A005171(n+1)+n]`
-/

namespace A256885.P2780304575069360296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P2780304575069360296

namespace A256885

/-- `∑[A005171(n+1)+n]` -/
def P2780304575069360296.Spec : Prop :=
  ∀ n, P2780304575069360296.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P11843387054880735015

`A062298(n+1)+∑[n]`
-/

namespace A256885.P11843387054880735015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256885.P11843387054880735015

namespace A256885

/-- `A062298(n+1)+∑[n]` -/
def P11843387054880735015.Spec : Prop :=
  ∀ n, P11843387054880735015.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P10196501530694724309

`A065855(n+1)+∑[n]+1`
-/

namespace A256885.P10196501530694724309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A256885.P10196501530694724309

namespace A256885

/-- `A065855(n+1)+∑[n]+1` -/
def P10196501530694724309.Spec : Prop :=
  ∀ n, P10196501530694724309.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P7273739318319752208

`∑[A066247(n+1)+n]+1`
-/

namespace A256885.P7273739318319752208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256885.P7273739318319752208

namespace A256885

/-- `∑[A066247(n+1)+n]+1` -/
def P7273739318319752208.Spec : Prop :=
  ∀ n, P7273739318319752208.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P15882198817173656152

`∑[1-A010051(n+1)+n]`
-/

namespace A256885.P15882198817173656152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P15882198817173656152

namespace A256885

/-- `∑[1-A010051(n+1)+n]` -/
def P15882198817173656152.Spec : Prop :=
  ∀ n, P15882198817173656152.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P3580737761085738617

`C(n+2, 2)-A000720(n+1)`
-/

namespace A256885.P3580737761085738617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - A000720 (n + 1)

end

end A256885.P3580737761085738617

namespace A256885

/-- `C(n+2, 2)-A000720(n+1)` -/
def P3580737761085738617.Spec : Prop :=
  ∀ n, P3580737761085738617.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P15412095695519783439

`(n+1)²-∑[A113637(n+1)]`
-/

namespace A256885.P15412095695519783439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P15412095695519783439

namespace A256885

/-- `(n+1)²-∑[A113637(n+1)]` -/
def P15412095695519783439.Spec : Prop :=
  ∀ n, P15412095695519783439.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P2914483946569188588

`∑[n+1-A129950(n+1)²]`
-/

namespace A256885.P2914483946569188588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A129950 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P2914483946569188588

namespace A256885

/-- `∑[n+1-A129950(n+1)²]` -/
def P2914483946569188588.Spec : Prop :=
  ∀ n, P2914483946569188588.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P17565530991695544987

`∑[n+1-A227625(n+1)²]`
-/

namespace A256885.P17565530991695544987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A227625 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P17565530991695544987

namespace A256885

/-- `∑[n+1-A227625(n+1)²]` -/
def P17565530991695544987.Spec : Prop :=
  ∀ n, P17565530991695544987.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P12546670303005939373

`∑[char[A018252(n+1)-1]+n]`
-/

namespace A256885.P12546670303005939373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P12546670303005939373

namespace A256885

/-- `∑[char[A018252(n+1)-1]+n]` -/
def P12546670303005939373.Spec : Prop :=
  ∀ n, (P12546670303005939373.a n : ℤ) = A256885 (n + 1)

end A256885

/-! ## A256885.P14605520742186839578

`∑[n+1-char[record[A000010(n+1)]]]`
-/

namespace A256885.P14605520742186839578
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P14605520742186839578

namespace A256885

/-- `∑[n+1-char[record[A000010(n+1)]]]` -/
def P14605520742186839578.Spec : Prop :=
  ∀ n, P14605520742186839578.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P2247295661689552821

`∑[floor(atan(A001222(n+1)))+n]+1`
-/

namespace A256885.P2247295661689552821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 (n + 1) : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256885.P2247295661689552821

namespace A256885

/-- `∑[floor(atan(A001222(n+1)))+n]+1` -/
def P2247295661689552821.Spec : Prop :=
  ∀ n, P2247295661689552821.a n = A256885 (n + 1)

end A256885

/-! ## A256885.P16319712092961708040

`∑[1-char[A000040(n+1)-1]+n]`
-/

namespace A256885.P16319712092961708040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256885.P16319712092961708040

namespace A256885

/-- `∑[1-char[A000040(n+1)-1]+n]` -/
def P16319712092961708040.Spec : Prop :=
  ∀ n, P16319712092961708040.a n = A256885 (n + 1)

end A256885

/-!
# A256886: Smallest multiple of prime(n) whose digits sum is divisible by prime(n).

The programs for A256886, there is no canonical definition to state claims against.
-/

/-! ## A256886.P13878538093117136012

`A002998(A000040(n+1))`
-/

namespace A256886.P13878538093117136012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (A000040 (n + 1)).toNat

end

end A256886.P13878538093117136012

/-! ## A256886.P12135766899906996836

`A002998(p?[comp[n²]])`
-/

namespace A256886.P12135766899906996836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A256886.P12135766899906996836

/-! ## A256886.P3125650848189298380

`A002998(Δ[A007504(n)])`
-/

namespace A256886.P3125650848189298380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f1 (n + 1) - f1 n).toNat

end

end A256886.P3125650848189298380

/-! ## A256886.P2373619748430113327

`A002998(A049551(n+1))`
-/

namespace A256886.P2373619748430113327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (A049551 (n + 1)).toNat

end

end A256886.P2373619748430113327

/-! ## A256886.P13679902216604636778

`A002998(A049569(n+1))`
-/

namespace A256886.P13679902216604636778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (A049569 (n + 1)).toNat

end

end A256886.P13679902216604636778

/-!
# A256888: Continued fraction expansion of 1 + sqrt(64 / 37).

The programs for A256888, the canonical program `A256888.P9775364604617384599` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256888 has offset 0).

The definition of A256888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256888.P9775364604617384599

`a(n-10)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=1, a(4)=3, a(5)=1, a(6)=3, a(7)=1, a(8)=5, a(9)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256888

/-- `a(n-10)` -/
def P9775364604617384599.Spec : Prop :=
  ∀ n, (P9775364604617384599.a n : ℤ) = A256888 n

theorem P9775364604617384599.correct : P9775364604617384599.Spec := by
  intro n
  simp only [A256888]

end A256888

/-!
# A256890: Triangle T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = x + 2.

The programs for A256890, the canonical program `A256890.P13623998439806287185` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256890 has offset 0).

The definition of A256890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256890.P13623998439806287185

`(row(n)+2-col(n))*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256890

/-- `(row(n)+2-col(n))*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` -/
def P13623998439806287185.Spec : Prop :=
  ∀ n, P13623998439806287185.a n = A256890 n

theorem P13623998439806287185.correct : P13623998439806287185.Spec := by
  intro n
  simp only [A256890]

end A256890

/-! ## A256890.P6757431653429652541

`A144696(n+2)+A144697(n+4)-A144696(n+3)`
-/

namespace A256890.P6757431653429652541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144696 (n + 2) + (A144697 (n + 4) - A144696 (n + 3))

end

end A256890.P6757431653429652541

namespace A256890

/-- `A144696(n+2)+A144697(n+4)-A144696(n+3)` -/
def P6757431653429652541.Spec : Prop :=
  ∀ n, P6757431653429652541.a n = A256890 n

end A256890

/-! ## A256890.P5865266804763508790

`A257613(n)/A137688(n)`
-/

namespace A256890.P5865266804763508790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A137688 n : ℚ)

end

end A256890.P5865266804763508790

namespace A256890

/-- `A257613(n)/A137688(n)` -/
def P5865266804763508790.Spec : Prop :=
  ∀ n, P5865266804763508790.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P14539956326390834542

`A257613(n)/Δ[A007664(n)]`
-/

namespace A256890.P14539956326390834542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A256890.P14539956326390834542

namespace A256890

/-- `A257613(n)/Δ[A007664(n)]` -/
def P14539956326390834542.Spec : Prop :=
  ∀ n, P14539956326390834542.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P6476799030200931350

`2/A140513(n)*A257613(n)`
-/

namespace A256890.P6476799030200931350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A140513 n : ℚ) * (A257613 n : ℚ)

end

end A256890.P6476799030200931350

namespace A256890

/-- `2/A140513(n)*A257613(n)` -/
def P6476799030200931350.Spec : Prop :=
  ∀ n, P6476799030200931350.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P9195827816868018301

`A257613(n)/A000079(A003056(n))`
-/

namespace A256890.P9195827816868018301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A000079 (A003056 n).toNat : ℚ)

end

end A256890.P9195827816868018301

namespace A256890

/-- `A257613(n)/A000079(A003056(n))` -/
def P9195827816868018301.Spec : Prop :=
  ∀ n, P9195827816868018301.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P15898446024791265746

`A257613(n)/A004175(A057944(n))`
-/

namespace A256890.P15898446024791265746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A004175 (A057944 n).toNat : ℚ)

end

end A256890.P15898446024791265746

namespace A256890

/-- `A257613(n)/A004175(A057944(n))` -/
def P15898446024791265746.Spec : Prop :=
  ∀ n, P15898446024791265746.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P1237828266654493693

`A257626(n)/A098355(n)`
-/

namespace A256890.P1237828266654493693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257626 n : ℚ) / (A098355 n : ℚ)

end

end A256890.P1237828266654493693

namespace A256890

/-- `A257626(n)/A098355(n)` -/
def P1237828266654493693.Spec : Prop :=
  ∀ n, P1237828266654493693.a n = (A256890 n : ℚ)

end A256890

/-! ## A256890.P16303480158821828579

`gcd(A257613(n), A257626(n))`
-/

namespace A256890.P16303480158821828579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257613 n) (A257626 n)

end

end A256890.P16303480158821828579

namespace A256890

/-- `gcd(A257613(n), A257626(n))` -/
def P16303480158821828579.Spec : Prop :=
  ∀ n, (P16303480158821828579.a n : ℤ) = A256890 n

end A256890

/-! ## A256890.P2727811907203150434

`A257613(n)/A000010(A140513(n))`
-/

namespace A256890.P2727811907203150434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A000010 (A140513 n).toNat : ℚ)

end

end A256890.P2727811907203150434

namespace A256890

/-- `A257613(n)/A000010(A140513(n))` -/
def P2727811907203150434.Spec : Prop :=
  ∀ n, P2727811907203150434.a n = (A256890 n : ℚ)

end A256890

/-!
# A256892: Triangular array read by rows, the matrix product of the unsigned Lah numbers and the Stirling set numbers, T(n,k) for n>=0 and 0<=k<=n.

The programs for A256892, there is no canonical definition to state claims against.
-/

/-! ## A256892.P12180408769587194698

`A356654(n)/A233543(n)`
-/

namespace A256892.P12180408769587194698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356654 n : ℚ) / (A233543 n : ℚ)

end

end A256892.P12180408769587194698

/-! ## A256892.P10678316141489100379

`A256893(n)-A000122(A022115(n))`
-/

namespace A256892.P10678316141489100379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 n - A000122 (A022115 n).toNat

end

end A256892.P10678316141489100379

/-! ## A256892.P12286670422915540131

`A256893(n)-A010893(A060637(n))`
-/

namespace A256892.P12286670422915540131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 n - A010893 ((A060637 n).toNat + 13)

end

end A256892.P12286670422915540131

/-! ## A256892.P14316593046424036118

`A256893(n)-A083915(A000055(n))`
-/

namespace A256892.P14316593046424036118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 n - A083915 (A000055 n).toNat

end

end A256892.P14316593046424036118

/-! ## A256892.P10432560232010749629

`A256893(n)-A010893(A094816(n))`
-/

namespace A256892.P10432560232010749629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 n - A010893 ((A094816 n).toNat + 13)

end

end A256892.P10432560232010749629

/-!
# A256893: Exponential Riordan array [1, 1/(2-e^x)-1].

The programs for A256893, there is no canonical definition to state claims against.
-/

/-! ## A256893.P8742905024183842367

`A256892(n)+A000122(A022115(n))`
-/

namespace A256893.P8742905024183842367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256892 n + A000122 (A022115 n).toNat

end

end A256893.P8742905024183842367

/-! ## A256893.P7162693239403931522

`or(A256892(n), A321537(A037955(n)))`
-/

namespace A256893.P7162693239403931522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256892 n) (A321537 (A037955 n).toNat)

end

end A256893.P7162693239403931522

/-! ## A256893.P16980661984585807453

`or(A108611(A265435(n)), A256892(n))`
-/

namespace A256893.P16980661984585807453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108611 (A265435 n).toNat) (A256892 n)

end

end A256893.P16980661984585807453

/-! ## A256893.P17907207586041496632

`or(A256892(n), A350847(A267392(n+1)))`
-/

namespace A256893.P17907207586041496632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256892 n) (A350847 (A267392 (n + 1)).toNat)

end

end A256893.P17907207586041496632

/-!
# A256894: Triangle read by rows, T(n,k) = Sum_{j=0..n-k+1} C(n-1,j-1)*T(n-j,k-1) if k != 0 else 1, n>=0, 0<=k<=n.

The programs for A256894, the canonical program `A256894.P5600349354748773070` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256894 has offset 0).

The definition of A256894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256894.P5600349354748773070

`A048993(n+1)+A048993(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256894

/-- `A048993(n+1)+A048993(n)` -/
def P5600349354748773070.Spec : Prop :=
  ∀ n, P5600349354748773070.a n = A256894 n

theorem P5600349354748773070.correct : P5600349354748773070.Spec := by
  intro n
  simp only [A256894]

end A256894

/-! ## A256894.P596232346988356912

`abs(Δ[A033999(n)*A048993(n)])`
-/

namespace A256894.P596232346988356912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256894.P596232346988356912

namespace A256894

/-- `abs(Δ[A033999(n)*A048993(n)])` -/
def P596232346988356912.Spec : Prop :=
  ∀ n, P596232346988356912.a n = A256894 n

end A256894

/-! ## A256894.P16944558418789440038

`abs(Δ[A048993(n)*A097807(n)])`
-/

namespace A256894.P16944558418789440038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A097807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256894.P16944558418789440038

namespace A256894

/-- `abs(Δ[A048993(n)*A097807(n)])` -/
def P16944558418789440038.Spec : Prop :=
  ∀ n, P16944558418789440038.a n = A256894 n

end A256894

/-! ## A256894.P4281771254931234827

`abs(Δ[A048993(n)*A165326(n)])`
-/

namespace A256894.P4281771254931234827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256894.P4281771254931234827

namespace A256894

/-- `abs(Δ[A048993(n)*A165326(n)])` -/
def P4281771254931234827.Spec : Prop :=
  ∀ n, P4281771254931234827.a n = A256894 n

end A256894

/-! ## A256894.P13677653201848985952

`A133611(n+1)-A133611(n+3)%A133611(n+2)`
-/

namespace A256894.P13677653201848985952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (n + 1) - Int.tmod (A133611 (n + 3)) (A133611 (n + 2))

end

end A256894.P13677653201848985952

namespace A256894

/-- `A133611(n+1)-A133611(n+3)%A133611(n+2)` -/
def P13677653201848985952.Spec : Prop :=
  ∀ n, P13677653201848985952.a n = A256894 n

end A256894

/-! ## A256894.P9580521813358207079

`abs(Δ[A090683(n)/A130595(n)])`
-/

namespace A256894.P9580521813358207079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256894.P9580521813358207079

namespace A256894

/-- `abs(Δ[A090683(n)/A130595(n)])` -/
def P9580521813358207079.Spec : Prop :=
  ∀ n, P9580521813358207079.a n = (A256894 n : ℚ)

end A256894

/-!
# A256895: Triangle read by rows, T(n,k) = Sum_{j=0..n-k+1} j!*C(n-1,j-1)*T(n-j,k-1) if k != 0 else 1, n>=0, 0<=k<=n.

The programs for A256895, there is no canonical definition to state claims against.
-/

/-! ## A256895.P4444459184314038933

`A330236(A103997(n))`
-/

namespace A256895.P4444459184314038933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A103997 n).toNat

end

end A256895.P4444459184314038933

/-! ## A256895.P14088832012599458703

`A112231(A343804(n))`
-/

namespace A256895.P14088832012599458703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (A343804 n).toNat

end

end A256895.P14088832012599458703

/-! ## A256895.P18182043471968370276

`A225859(A294609(n+1))`
-/

namespace A256895.P18182043471968370276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A294609 (n + 1)).toNat

end

end A256895.P18182043471968370276

/-! ## A256895.P17412966391460042274

`A225859(A294950(n+1))`
-/

namespace A256895.P17412966391460042274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A294950 (n + 1)).toNat

end

end A256895.P17412966391460042274

/-! ## A256895.P15034858187849631632

`A143700(A210218(n+2))`
-/

namespace A256895.P15034858187849631632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143700 (A210218 (n + 2)).toNat

end

end A256895.P15034858187849631632

/-!
# A256896: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256896, there is no canonical definition to state claims against.
-/

/-! ## A256896.P13494524354415979618

`A256904(∑[4*n]+1)`
-/

namespace A256896.P13494524354415979618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256896.P13494524354415979618

/-! ## A256896.P6834602013967976357

`record[A256904(A152271((n+1)²))]`
-/

namespace A256896.P6834602013967976357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A152271 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256896.P6834602013967976357

/-! ## A256896.P3142038506270474048

`record[A003982(n)*A256904(n+1)]`
-/

namespace A256896.P3142038506270474048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256896.P3142038506270474048

/-! ## A256896.P8332147975316523263

`record[gcd(A003987(n), A256904(n+1))]`
-/

namespace A256896.P8332147975316523263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A256904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256896.P8332147975316523263

/-! ## A256896.P15322583262901722138

`A000035(A014861(n+1))*A256904(A001844(n))`
-/

namespace A256896.P15322583262901722138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014861 (n + 1)).toNat * A256904 (A001844 n).toNat

end

end A256896.P15322583262901722138

/-!
# A256897: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256897, there is no canonical definition to state claims against.
-/

/-! ## A256897.P17564508772339084236

`A259006(∑[n]+1)`
-/

namespace A256897.P17564508772339084236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256897.P17564508772339084236

/-! ## A256897.P7066414535030547333

`record[A259006(n+1)]`
-/

namespace A256897.P7066414535030547333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256897.P7066414535030547333

/-! ## A256897.P17936944200119912521

`lcm((-1)^n, A259006(A000217(n)+1))`
-/

namespace A256897.P17936944200119912521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A259006 (A000217 n + 1).toNat)

end

end A256897.P17936944200119912521

/-! ## A256897.P4052202004503639805

`A259006(A000124(n))+A000007(n+1)`
-/

namespace A256897.P4052202004503639805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 n).toNat + A000007 (n + 1)

end

end A256897.P4052202004503639805

/-! ## A256897.P3702887779500298711

`A264668(n)+A259006(A000217(n)+1)`
-/

namespace A256897.P3702887779500298711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A259006 (A000217 n + 1).toNat

end

end A256897.P3702887779500298711

/-! ## A256897.P14645926825251434957

`A259006(A000124(n))-n*A000007(n)`
-/

namespace A256897.P14645926825251434957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 n).toNat - (n : ℤ) * A000007 n

end

end A256897.P14645926825251434957

/-! ## A256897.P4913025872908961832

`xor(A000038((n+1)²), A259006(A000217(n)+1))`
-/

namespace A256897.P4913025872908961832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 ((n + 1) ^ 2)) (A259006 (A000217 n + 1).toNat)

end

end A256897.P4913025872908961832

/-! ## A256897.P6446888734620700025

`A259006(A000124(n))+A006927(A096500(n+1))`
-/

namespace A256897.P6446888734620700025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A000124 n).toNat + A006927 (A096500 (n + 1)).toNat

end

end A256897.P6446888734620700025

/-! ## A256897.P12646004086423999156

`A032742(A000040(n+1))*A259006(A000124(n))`
-/

namespace A256897.P12646004086423999156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000040 (n + 1)).toNat * A259006 (A000124 n).toNat

end

end A256897.P12646004086423999156

/-! ## A256897.P10963977987414048573

`lcm((-1)^n, A259006(A000217(n+1)))`
-/

namespace A256897.P10963977987414048573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A259006 (A000217 (n + 1)).toNat)

end

end A256897.P10963977987414048573

/-!
# A256898: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256898, there is no canonical definition to state claims against.
-/

/-! ## A256898.P435213669703139223

`A256904(∑[n+1]+2)`
-/

namespace A256898.P435213669703139223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256898.P435213669703139223

/-! ## A256898.P464819521267298475

`A260190(3*n+1)+A256904(C(n+2, 2)+2)`
-/

namespace A256898.P464819521267298475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (3 * n + 1) + A256904 (Nat.choose (n + 2) 2 + 2)

end

end A256898.P464819521267298475

/-! ## A256898.P10428405408237777797

`gcd(23, A179938(n+1))*A256904(C(n+2, 2)+2)`
-/

namespace A256898.P10428405408237777797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 23 (A179938 (n + 1)) : ℤ) * A256904 (Nat.choose (n + 2) 2 + 2)

end

end A256898.P10428405408237777797

/-! ## A256898.P10261316459452219229

`((n+1)%2)!*A256904(A000096(n+1))`
-/

namespace A256898.P10261316459452219229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) % 2) : ℤ) * A256904 (A000096 (n + 1)).toNat

end

end A256898.P10261316459452219229

/-! ## A256898.P6538113933090739383

`record[A256904(A000096(A274640(n)))]`
-/

namespace A256898.P6538113933090739383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256898.P6538113933090739383

/-! ## A256898.P13852104594519068909

`A256904(A000096(n+1))%A256899(n+1)`
-/

namespace A256898.P13852104594519068909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256904 (A000096 (n + 1)).toNat) (A256899 (n + 1))

end

end A256898.P13852104594519068909

/-! ## A256898.P9429541980702893131

`A256904(A000096(n+1))+A024000(A024000(n)+n)`
-/

namespace A256898.P9429541980702893131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A000096 (n + 1)).toNat + A024000 (A024000 n + (n : ℤ)).toNat

end

end A256898.P9429541980702893131

/-!
# A256899: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A256899, there is no canonical definition to state claims against.
-/

/-! ## A256899.P8470853124425712392

`A256904(record[∑[n-3]+9])`
-/

namespace A256899.P8470853124425712392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256899.P8470853124425712392

/-! ## A256899.P2497773029238830573

`A256904(∑[n]+2*n+6)`
-/

namespace A256899.P2497773029238830573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n + 6)

end

end A256899.P2497773029238830573

/-! ## A256899.P842296643960182404

`lcm(A033999(n), A256904(A167614(n+1)))`
-/

namespace A256899.P842296643960182404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A256904 (A167614 (n + 1)).toNat)

end

end A256899.P842296643960182404

/-! ## A256899.P3498543116076936124

`A256904(A167614(n+1))%A256900(2*n+1)`
-/

namespace A256899.P3498543116076936124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256904 (A167614 (n + 1)).toNat) (A256900 (2 * n + 1))

end

end A256899.P3498543116076936124

/-! ## A256899.P17539711338827648393

`record[A256904(A101881(n+2))]`
-/

namespace A256899.P17539711338827648393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256904 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256899.P17539711338827648393

