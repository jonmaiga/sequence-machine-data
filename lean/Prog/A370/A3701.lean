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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A370100: a(n) = Sum_{k=0..n} binomial(4*n,k) * binomial(2*n-k-1,n-k).

The programs for A370100, there is no canonical definition to state claims against.
-/

/-! ## A370100.P7900354678755524982

`A116395(∑[4*n])`
-/

namespace A370100.P7900354678755524982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116395 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370100.P7900354678755524982

/-!
# A370101: a(n) = Sum_{k=0..n} binomial(4*n,k) * binomial(4*n-k-1,n-k).

The programs for A370101, there is no canonical definition to state claims against.
-/

/-! ## A370101.P7664165229707664451

`A112857(A139277(n))`
-/

namespace A370101.P7664165229707664451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A139277 n).toNat

end

end A370101.P7664165229707664451

/-! ## A370101.P9757937228118161914

`A119258(A139276(n))`
-/

namespace A370101.P9757937228118161914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A139276 n).toNat

end

end A370101.P9757937228118161914

/-! ## A370101.P11010855865045809973

`A193816(A139274(n))`
-/

namespace A370101.P11010855865045809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A139274 n).toNat

end

end A370101.P11010855865045809973

/-! ## A370101.P16868361218343439748

`A119258(A033586(n)-n)`
-/

namespace A370101.P16868361218343439748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A033586 n - (n : ℤ)).toNat

end

end A370101.P16868361218343439748

/-! ## A370101.P613930426987925638

`A112857(A046092(2*n)+n)`
-/

namespace A370101.P613930426987925638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A370101.P613930426987925638

/-!
# A370102: a(n) = Sum_{k=0..n} binomial(4*n,k) * binomial(5*n-k-1,n-k).

The programs for A370102, there is no canonical definition to state claims against.
-/

/-! ## A370102.P1941857778996154942

`A110171(A139277(n))`
-/

namespace A370102.P1941857778996154942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 (A139277 n).toNat

end

end A370102.P1941857778996154942

/-!
# A370104: a(n) = Sum_{k=0..n} (-1)^k * binomial(2*n+k-1,k) * binomial(6*n-k-1,n-k).

The programs for A370104, there is no canonical definition to state claims against.
-/

/-! ## A370104.P1270578213965683274

`A034888(A048435(n+1)+A005329(n))`
-/

namespace A370104.P1270578213965683274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A048435 (n + 1) + A005329 n).toNat

end

end A370104.P1270578213965683274

/-!
# A370105: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k-1,k) * binomial(5*n-k-1,n-k).

The programs for A370105, there is no canonical definition to state claims against.
-/

/-! ## A370105.P14094307234303841420

`A003159(A324171(n)*A344611(n))`
-/

namespace A370105.P14094307234303841420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A324171 n * A344611 n).toNat

end

end A370105.P14094307234303841420

/-!
# A370106: a(n) = Sum_{k=0..n} (-1)^k * binomial(2*n,k) * binomial(3*n,n-k).

The programs for A370106, there is no canonical definition to state claims against.
-/

/-! ## A370106.P17948070620280029299

`A146314(A062728(n))`
-/

namespace A370106.P17948070620280029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146314 (A062728 n).toNat

end

end A370106.P17948070620280029299

/-! ## A370106.P16377379871741179879

`A146314(A081267(n)-1)`
-/

namespace A370106.P16377379871741179879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146314 (A081267 n - 1).toNat

end

end A370106.P16377379871741179879

/-! ## A370106.P10621128357908890333

`A202480(A062725(n)+n)`
-/

namespace A370106.P10621128357908890333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202480 (A062725 n + (n : ℤ)).toNat

end

end A370106.P10621128357908890333

/-! ## A370106.P14281049896038327898

`A202480(A000096(3*n)-n)`
-/

namespace A370106.P14281049896038327898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202480 (A000096 (3 * n) - (n : ℤ)).toNat

end

end A370106.P14281049896038327898

/-! ## A370106.P4895581833866534084

`A202480(A000217(3*n+1)-(n+1))`
-/

namespace A370106.P4895581833866534084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202480 (A000217 (3 * n + 1) - (n + 1 : ℤ)).toNat

end

end A370106.P4895581833866534084

/-!
# A370109: a(n) = n^2*(2*n^2-23).

The programs for A370109, the canonical program `A370109.P5354090342612935699` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370109 has offset 1).

The definition of A370109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*(2*(n+1)²-23)` (program `A370109.P5354090342612935699`, by `A370109.P5354090342612935699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370109.P5354090342612935699

`(n+1)²*(2*(n+1)²-23)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370109

/-- `(n+1)²*(2*(n+1)²-23)` -/
def P5354090342612935699.Spec : Prop :=
  ∀ n, P5354090342612935699.a n = A370109 (n + 1)

theorem P5354090342612935699.correct : P5354090342612935699.Spec := by
  intro n
  simp only [A370109, Nat.add_sub_cancel]

end A370109

/-! ## A370109.P4654488778691916368

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=-21, a(1)=-60, a(2)=-45, a(3)=144, a(4)=675`
-/

namespace A370109.P4654488778691916368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-21, -60, -45, 144, 675] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A370109.P4654488778691916368

namespace A370109

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4654488778691916368.Spec : Prop :=
  ∀ n, P4654488778691916368.a n = A370109 (n + 1)

theorem P4654488778691916368.correct : P4654488778691916368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A370109, Nat.add_sub_cancel, A370109.P4654488778691916368.a, A370109.P5354090342612935699.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A370109, Nat.add_sub_cancel, A370109.P4654488778691916368.a, A370109.P5354090342612935699.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A370109

/-!
# A370110: Number of chordless cycles in the complement of the n X n antelope graph.

The programs for A370110, there is no canonical definition to state claims against.
-/

/-! ## A370110.P4062911968481475778

`A193694(A152404(n)%A152371(n+1))`
-/

namespace A370110.P4062911968481475778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193694 (Int.tmod (A152404 n) (A152371 (n + 1))).toNat

end

end A370110.P4062911968481475778

/-! ## A370110.P17208332571588140387

`A332250(∏[3%comp[∑[n]]+n])`
-/

namespace A370110.P17208332571588140387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332250 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A370110.P17208332571588140387

/-!
# A370114: Numbers k for which A276086(A003415(k)) is a multiple of k, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A370114, there is no canonical definition to state claims against.
-/

/-! ## A370114.P9435787118305735092

`record[A369964(n)]`
-/

namespace A370114.P9435787118305735092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370114.P9435787118305735092

/-! ## A370114.P6174859225712040939

`A000027(eq[n, A369964(n)])`
-/

namespace A370114.P6174859225712040939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A370114.P6174859225712040939

/-! ## A370114.P788439516387872213

`A369964(eq[n, A369964(n)])`
-/

namespace A370114.P788439516387872213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A370114.P788439516387872213

/-! ## A370114.P5737528817426933228

`eq[1, A370116(n)]`
-/

namespace A370114.P5737528817426933228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370114.P5737528817426933228

/-! ## A370114.P10588633148293686064

`record[gcd(n, A327859(n))]`
-/

namespace A370114.P10588633148293686064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A327859 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370114.P10588633148293686064

/-!
# A370115: Numbers k for which k is a multiple of A276086(A003415(k)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A370115, there is no canonical definition to state claims against.
-/

/-! ## A370115.P8534669827435622137

`eq[0, A370120(n)]`
-/

namespace A370115.P8534669827435622137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370115.P8534669827435622137

/-! ## A370115.P11879428076293583162

`eq[1, A370117(n)]`
-/

namespace A370115.P11879428076293583162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370115.P11879428076293583162

/-! ## A370115.P9212888336963120942

`lt[A370120(A028310(n)), 1]`
-/

namespace A370115.P9212888336963120942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370120 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370115.P9212888336963120942

/-! ## A370115.P15941708119281527761

`eq[A327859(n), A369964(n)]`
-/

namespace A370115.P15941708119281527761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370115.P15941708119281527761

/-!
# A370116: Numerator of n/A276086(A003415(n)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A370116, there is no canonical definition to state claims against.
-/

/-! ## A370116.P5557081367806882330

`n/A369964(n)`
-/

namespace A370116.P5557081367806882330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A369964 n : ℚ)

end

end A370116.P5557081367806882330

/-! ## A370116.P17436252607904779957

`n/gcd(n, A276086(A003415(n)))`
-/

namespace A370116.P17436252607904779957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A276086 (A003415 n).toNat) : ℚ)

end

end A370116.P17436252607904779957

/-! ## A370116.P9483216908120797014

`n/gcd(n, A327859(n))`
-/

namespace A370116.P9483216908120797014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A327859 n) : ℚ)

end

end A370116.P9483216908120797014

/-! ## A370116.P9513917284906511932

`n/A327859(n)*A370117(n)`
-/

namespace A370116.P9513917284906511932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A327859 n : ℚ) * (A370117 n : ℚ)

end

end A370116.P9513917284906511932

/-! ## A370116.P17735397310490127362

`val(A001018(n), A001018(A369964(n)))`
-/

namespace A370116.P17735397310490127362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001018 n).toNat (A001018 (A369964 n).toNat).toNat

end

end A370116.P17735397310490127362

/-!
# A370117: Denominator of n/A276086(A003415(n)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A370117, there is no canonical definition to state claims against.
-/

/-! ## A370117.P16844477080958860315

`A327859(n)/A369964(n)`
-/

namespace A370117.P16844477080958860315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327859 n : ℚ) / (A369964 n : ℚ)

end

end A370117.P16844477080958860315

/-! ## A370117.P9070660635680470769

`A276086(A370120(n))`
-/

namespace A370117.P9070660635680470769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A370120 n).toNat

end

end A370117.P9070660635680470769

/-! ## A370117.P5480568808980501653

`A327859(n)/gcd(n, A276086(A003415(n)))`
-/

namespace A370117.P5480568808980501653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327859 n : ℚ) / (Int.gcd (n : ℤ) (A276086 (A003415 n).toNat) : ℚ)

end

end A370117.P5480568808980501653

/-! ## A370117.P7194441115548210500

`A276086(A003415(n))/A369964(n)`
-/

namespace A370117.P7194441115548210500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (A003415 n).toNat : ℚ) / (A369964 n : ℚ)

end

end A370117.P7194441115548210500

/-!
# A370118: a(n) = 1 if the arithmetic derivative of n is a multiple of 9, otherwise 0.

The programs for A370118, the canonical program `A370118.P17328300749575721600` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370118 has offset 0).

The definition of A370118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369669, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370118.P10168580638061713329

`A359430(n)*A370122(n)`
-/

namespace A370118.P10168580638061713329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n * A370122 n

end

end A370118.P10168580638061713329

namespace A370118

/-- `A359430(n)*A370122(n)` -/
def P10168580638061713329.Spec : Prop :=
  ∀ n, P10168580638061713329.a n = A370118 n

end A370118

/-! ## A370118.P7414196471001254116

`A370122(n)-A369658(A003415(n))`
-/

namespace A370118.P7414196471001254116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n - A369658 (A003415 n).toNat

end

end A370118.P7414196471001254116

namespace A370118

/-- `A370122(n)-A369658(A003415(n))` -/
def P7414196471001254116.Spec : Prop :=
  ∀ n, P7414196471001254116.a n = A370118 n

end A370118

/-! ## A370118.P17328300749575721600

`A079978(A369669(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A370118

/-- `A079978(A369669(n))` -/
def P17328300749575721600.Spec : Prop :=
  ∀ n, P17328300749575721600.a n = A370118 n

theorem P17328300749575721600.correct : P17328300749575721600.Spec := by
  intro n
  simp only [A370118]

end A370118

/-! ## A370118.P18096897043360275855

`A267142(A003415(n))`
-/

namespace A370118.P18096897043360275855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A003415 n).toNat

end

end A370118.P18096897043360275855

namespace A370118

/-- `A267142(A003415(n))` -/
def P18096897043360275855.Spec : Prop :=
  ∀ n, P18096897043360275855.a n = A370118 n

end A370118

/-! ## A370118.P15521746516409122373

`char[A370119(n+1)]`
-/

namespace A370118.P15521746516409122373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A370118.P15521746516409122373

namespace A370118

/-- `char[A370119(n+1)]` -/
def P15521746516409122373.Spec : Prop :=
  ∀ n, (P15521746516409122373.a n : ℤ) = A370118 n

end A370118

/-! ## A370118.P10492605381835745191

`A359430(A003415(n))*A359430(n)`
-/

namespace A370118.P10492605381835745191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A003415 n).toNat * A359430 n

end

end A370118.P10492605381835745191

namespace A370118

/-- `A359430(A003415(n))*A359430(n)` -/
def P10492605381835745191.Spec : Prop :=
  ∀ n, P10492605381835745191.a n = A370118 n

end A370118

/-! ## A370118.P12346677903717590947

`A079978(A068346(n))*A359430(n)`
-/

namespace A370118.P12346677903717590947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A068346 n).toNat * A359430 n

end

end A370118.P12346677903717590947

namespace A370118

/-- `A079978(A068346(n))*A359430(n)` -/
def P12346677903717590947.Spec : Prop :=
  ∀ n, P12346677903717590947.a n = A370118 n

end A370118

/-! ## A370118.P8912528945879323001

`A267142(A369669(n)²)`
-/

namespace A370118.P8912528945879323001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A369669 n ^ 2).toNat

end

end A370118.P8912528945879323001

namespace A370118

/-- `A267142(A369669(n)²)` -/
def P8912528945879323001.Spec : Prop :=
  ∀ n, P8912528945879323001.a n = A370118 n

end A370118

/-! ## A370118.P12621854591168945654

`A267142(A369669(n)*A369669(n))`
-/

namespace A370118.P12621854591168945654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A369669 n * A369669 n).toNat

end

end A370118.P12621854591168945654

namespace A370118

/-- `A267142(A369669(n)*A369669(n))` -/
def P12621854591168945654.Spec : Prop :=
  ∀ n, P12621854591168945654.a n = A370118 n

end A370118

/-!
# A370119: Numbers whose arithmetic derivative is a multiple of 9.

The programs for A370119, the canonical program `A370119.P13163184009623574713` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370119 has offset 1).

The definition of A370119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A370119

/-- `lt[0, A370118(n)]` -/
def P13163184009623574713.Spec : Prop :=
  ∀ n, (P13163184009623574713.a n : ℤ) = A370119 (n + 1)

theorem P13163184009623574713.correct : P13163184009623574713.Spec := by
  intro n
  simp only [A370119, Nat.add_sub_cancel]

end A370119

/-! ## A370119.P15903183335353826728

`filter[A327863(n+1), A370118(#)]`
-/

namespace A370119.P15903183335353826728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370118 (f1 j).toNat = 1) n)

end

end A370119.P15903183335353826728

namespace A370119

/-- `filter[A327863(n+1), A370118(#)]` -/
def P15903183335353826728.Spec : Prop :=
  ∀ n, P15903183335353826728.a n = A370119 (n + 1)

end A370119

/-! ## A370119.P2355763870313939279

`filter[A327863(n+1), A370122(#)]`
-/

namespace A370119.P2355763870313939279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370122 (f1 j).toNat = 1) n)

end

end A370119.P2355763870313939279

namespace A370119

/-- `filter[A327863(n+1), A370122(#)]` -/
def P2355763870313939279.Spec : Prop :=
  ∀ n, P2355763870313939279.a n = A370119 (n + 1)

end A370119

/-! ## A370119.P6648110119316652476

`filter[A370123(n+1), A359430(#)]`
-/

namespace A370119.P6648110119316652476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A370119.P6648110119316652476

namespace A370119

/-- `filter[A370123(n+1), A359430(#)]` -/
def P6648110119316652476.Spec : Prop :=
  ∀ n, P6648110119316652476.a n = A370119 (n + 1)

end A370119

/-! ## A370119.P1535144131547352051

`filter[A370123(n+1), A370118(#)]`
-/

namespace A370119.P1535144131547352051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370118 (f1 j).toNat = 1) n)

end

end A370119.P1535144131547352051

namespace A370119

/-- `filter[A370123(n+1), A370118(#)]` -/
def P1535144131547352051.Spec : Prop :=
  ∀ n, P1535144131547352051.a n = A370119 (n + 1)

end A370119

/-! ## A370119.P8487124665770491651

`∩[A327863(n+1), A370123(n+1)]`
-/

namespace A370119.P8487124665770491651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370119.P8487124665770491651

namespace A370119

/-- `∩[A327863(n+1), A370123(n+1)]` -/
def P8487124665770491651.Spec : Prop :=
  ∀ n, (P8487124665770491651.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P3575015518262823005

`filter[A328303(n+1), A370118(#)]`
-/

namespace A370119.P3575015518262823005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370118 (f1 j).toNat = 1) n)

end

end A370119.P3575015518262823005

namespace A370119

/-- `filter[A328303(n+1), A370118(#)]` -/
def P3575015518262823005.Spec : Prop :=
  ∀ n, P3575015518262823005.a n = A370119 (n + 1)

end A370119

/-! ## A370119.P4939126834715332230

`eq[A329684(n), A370118(n)]`
-/

namespace A370119.P4939126834715332230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P4939126834715332230

namespace A370119

/-- `eq[A329684(n), A370118(n)]` -/
def P4939126834715332230.Spec : Prop :=
  ∀ n, (P4939126834715332230.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P8327081180711281518

`eq[A045496(n+1), A370118(n)]`
-/

namespace A370119.P8327081180711281518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P8327081180711281518

namespace A370119

/-- `eq[A045496(n+1), A370118(n)]` -/
def P8327081180711281518.Spec : Prop :=
  ∀ n, (P8327081180711281518.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P898952608893252506

`eq[A059811(n+1), A370118(n)]`
-/

namespace A370119.P898952608893252506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P898952608893252506

namespace A370119

/-- `eq[A059811(n+1), A370118(n)]` -/
def P898952608893252506.Spec : Prop :=
  ∀ n, (P898952608893252506.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P12017235919697617393

`eq[A078315(n+1), A370118(n)]`
-/

namespace A370119.P12017235919697617393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P12017235919697617393

namespace A370119

/-- `eq[A078315(n+1), A370118(n)]` -/
def P12017235919697617393.Spec : Prop :=
  ∀ n, (P12017235919697617393.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P17285991519513849792

`eq[A125846(n+1), A370118(n)]`
-/

namespace A370119.P17285991519513849792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P17285991519513849792

namespace A370119

/-- `eq[A125846(n+1), A370118(n)]` -/
def P17285991519513849792.Spec : Prop :=
  ∀ n, (P17285991519513849792.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P2942609370076236242

`lt[A369658(A003415(n)), A370122(n)]`
-/

namespace A370119.P2942609370076236242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370119.P2942609370076236242

namespace A370119

/-- `lt[A369658(A003415(n)), A370122(n)]` -/
def P2942609370076236242.Spec : Prop :=
  ∀ n, (P2942609370076236242.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P3075036820009564704

`lt[A010878(A003415(n)), 1]`
-/

namespace A370119.P3075036820009564704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A003415 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370119.P3075036820009564704

namespace A370119

/-- `lt[A010878(A003415(n)), 1]` -/
def P3075036820009564704.Spec : Prop :=
  ∀ n, (P3075036820009564704.a n : ℤ) = A370119 (n + 1)

end A370119

/-! ## A370119.P2342564365136475093

`eq[A198254(n), A370118(n)]`
-/

namespace A370119.P2342564365136475093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370119.P2342564365136475093

namespace A370119

/-- `eq[A198254(n), A370118(n)]` -/
def P2342564365136475093.Spec : Prop :=
  ∀ n, (P2342564365136475093.a n : ℤ) = A370119 (n + 1)

end A370119

/-!
# A370120: a(n) = A276085(A370117(n)), where A370117(n) is the denominator of n/A276086(A003415(n)), A003415 is the arithmetic derivative, A276086 is the primorial base exp-function, and A276085 is its inverse, the primorial base log-function.

The programs for A370120, there is no canonical definition to state claims against.
-/

/-! ## A370120.P10828013530536882922

`A003415(n)-A276085(A369964(n))`
-/

namespace A370120.P10828013530536882922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A276085 (A369964 n).toNat

end

end A370120.P10828013530536882922

/-! ## A370120.P7521542826963106719

`A372576(A370117(n))`
-/

namespace A370120.P7521542826963106719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A370117 n).toNat

end

end A370120.P7521542826963106719

/-!
# A370121: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 0 <= k <= n; sums of two primorials, not necessarily distinct.

The programs for A370121, there is no canonical definition to state claims against.
-/

/-! ## A370121.P1024861085073587116

`A277021(A018900(n+1))`
-/

namespace A370121.P1024861085073587116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A018900 (n + 1)).toNat

end

end A370121.P1024861085073587116

/-! ## A370121.P14311180048225082296

`A277021(eq[2, A000120(n)])`
-/

namespace A370121.P14311180048225082296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A370121.P14311180048225082296

/-! ## A370121.P16728163957971792199

`A351576(A066847(n))`
-/

namespace A370121.P16728163957971792199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (A066847 n).toNat

end

end A370121.P16728163957971792199

/-! ## A370121.P16593234665799525169

`A276085(A087112(n+1))`
-/

namespace A370121.P16593234665799525169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A087112 (n + 1)).toNat

end

end A370121.P16593234665799525169

/-! ## A370121.P14760515089951381364

`eq[A134269(A276150(n+4)), A276150(n)]`
-/

namespace A370121.P14760515089951381364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A276150 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370121.P14760515089951381364

/-!
# A370122: a(n) = 1 if the second arithmetic derivative of n is a multiple of 3, otherwise 0.

The programs for A370122, the canonical program `A370122.P7977747716848007061` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370122 has offset 0).

The definition of A370122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370122.P7977747716848007061

`A359430(A003415(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370122

/-- `A359430(A003415(n))` -/
def P7977747716848007061.Spec : Prop :=
  ∀ n, P7977747716848007061.a n = A370122 n

theorem P7977747716848007061.correct : P7977747716848007061.Spec := by
  intro n
  simp only [A370122]

end A370122

/-! ## A370122.P4678117249801029655

`A370118(n)+A369658(A003415(n))`
-/

namespace A370122.P4678117249801029655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n + A369658 (A003415 n).toNat

end

end A370122.P4678117249801029655

namespace A370122

/-- `A370118(n)+A369658(A003415(n))` -/
def P4678117249801029655.Spec : Prop :=
  ∀ n, P4678117249801029655.a n = A370122 n

end A370122

/-! ## A370122.P2331579936455550095

`A079978(A068346(n))`
-/

namespace A370122.P2331579936455550095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A068346 n).toNat

end

end A370122.P2331579936455550095

namespace A370122

/-- `A079978(A068346(n))` -/
def P2331579936455550095.Spec : Prop :=
  ∀ n, P2331579936455550095.a n = A370122 n

end A370122

/-! ## A370122.P3036966675625331601

`char[A370123(n+1)]`
-/

namespace A370122.P3036966675625331601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A370122.P3036966675625331601

namespace A370122

/-- `char[A370123(n+1)]` -/
def P3036966675625331601.Spec : Prop :=
  ∀ n, (P3036966675625331601.a n : ℤ) = A370122 n

end A370122

/-! ## A370122.P14397720722928340066

`A131534(A068346(n)+1)-1`
-/

namespace A370122.P14397720722928340066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A068346 n + 1).toNat - 1

end

end A370122.P14397720722928340066

namespace A370122

/-- `A131534(A068346(n)+1)-1` -/
def P14397720722928340066.Spec : Prop :=
  ∀ n, P14397720722928340066.a n = A370122 n

end A370122

/-! ## A370122.P17652579704978300569

`and(A016813(n), A130196(A068346(n)))`
-/

namespace A370122.P17652579704978300569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016813 n) (A130196 (A068346 n).toNat)

end

end A370122.P17652579704978300569

namespace A370122

/-- `and(A016813(n), A130196(A068346(n)))` -/
def P17652579704978300569.Spec : Prop :=
  ∀ n, P17652579704978300569.a n = A370122 n

end A370122

/-!
# A370123: Numbers whose second arithmetic derivative (A068346) is a multiple of 3.

The programs for A370123, the canonical program `A370123.P8428876455859098462` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370123 has offset 1).

The definition of A370123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370123.P8428876455859098462

`eq[1, A370122(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A370123

/-- `eq[1, A370122(n)]` -/
def P8428876455859098462.Spec : Prop :=
  ∀ n, (P8428876455859098462.a n : ℤ) = A370123 (n + 1)

theorem P8428876455859098462.correct : P8428876455859098462.Spec := by
  intro n
  simp only [A370123, Nat.add_sub_cancel]

end A370123

/-! ## A370123.P5193828615338550050

`lt[A369658(n), 2*A370122(n)]`
-/

namespace A370123.P5193828615338550050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370123.P5193828615338550050

namespace A370123

/-- `lt[A369658(n), 2*A370122(n)]` -/
def P5193828615338550050.Spec : Prop :=
  ∀ n, (P5193828615338550050.a n : ℤ) = A370123 (n + 1)

end A370123

/-! ## A370123.P17749595889317890378

`lt[A370122(3*n+2)/2, A370122(n)]`
-/

namespace A370123.P17749595889317890378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370122 (3 * n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A370123.P17749595889317890378

namespace A370123

/-- `lt[A370122(3*n+2)/2, A370122(n)]` -/
def P17749595889317890378.Spec : Prop :=
  ∀ n, (P17749595889317890378.a n : ℤ) = A370123 (n + 1)

end A370123

/-! ## A370123.P1743206570065559268

`lt[A068346(n)%3, 1]`
-/

namespace A370123.P1743206570065559268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068346 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370123.P1743206570065559268

namespace A370123

/-- `lt[A068346(n)%3, 1]` -/
def P1743206570065559268.Spec : Prop :=
  ∀ n, (P1743206570065559268.a n : ℤ) = A370123 (n + 1)

end A370123

/-! ## A370123.P10148895970029334155

`eq[1, A359430(A003415(n))]`
-/

namespace A370123.P10148895970029334155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370123.P10148895970029334155

namespace A370123

/-- `eq[1, A359430(A003415(n))]` -/
def P10148895970029334155.Spec : Prop :=
  ∀ n, (P10148895970029334155.a n : ℤ) = A370123 (n + 1)

theorem P10148895970029334155.correct : P10148895970029334155.Spec := by
  intro n
  simp only [A370123, Nat.add_sub_cancel, A370123.P10148895970029334155.f1, A370123.P10148895970029334155.f2, A370123.P10148895970029334155.a, A370123.P8428876455859098462.f1, A370123.P8428876455859098462.f2, A370123.P8428876455859098462.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A359430, A359430.P17743289433619034511.a, A370122, A370122.P7977747716848007061.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370123

/-! ## A370123.P11345058711762287554

`lt[0, A370122(n)+A369658(A003415(n))]`
-/

namespace A370123.P11345058711762287554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n + A369658 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370123.P11345058711762287554

namespace A370123

/-- `lt[0, A370122(n)+A369658(A003415(n))]` -/
def P11345058711762287554.Spec : Prop :=
  ∀ n, (P11345058711762287554.a n : ℤ) = A370123 (n + 1)

end A370123

/-! ## A370123.P2603636262551321687

`lt[A008683(A079946(2*(n+2))), A370122(n)]`
-/

namespace A370123.P2603636262551321687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A079946 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370123.P2603636262551321687

namespace A370123

/-- `lt[A008683(A079946(2*(n+2))), A370122(n)]` -/
def P2603636262551321687.Spec : Prop :=
  ∀ n, (P2603636262551321687.a n : ℤ) = A370123 (n + 1)

end A370123

/-! ## A370123.P15900984996387572931

`eq[1, A130196(A068346(n))]`
-/

namespace A370123.P15900984996387572931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370123.P15900984996387572931

namespace A370123

/-- `eq[1, A130196(A068346(n))]` -/
def P15900984996387572931.Spec : Prop :=
  ∀ n, (P15900984996387572931.a n : ℤ) = A370123 (n + 1)

end A370123

/-!
# A370124: a(0) = 0, a(1) = 1, and for n > 1, a(n) = 1 if the least prime dividing the arithmetic derivative of n is equal to the least prime not dividing n, otherwise a(n) = 0.

The programs for A370124, there is no canonical definition to state claims against.
-/

/-! ## A370124.P223202210824321625

`char[A370125(n+1)]`
-/

namespace A370124.P223202210824321625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A370124.P223202210824321625

/-! ## A370124.P93459576197443492

`and(A057427(A061260(3*n+2)), A356305(n))`
-/

namespace A370124.P93459576197443492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (A061260 (3 * n + 2)).toNat) (A356305 n)

end

end A370124.P93459576197443492

/-! ## A370124.P11133926399111901582

`and(A188644(n), A356305(n))`
-/

namespace A370124.P11133926399111901582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188644 n) (A356305 n)

end

end A370124.P11133926399111901582

/-! ## A370124.P403020342929897923

`and(A072982(n+1), A356305(n))`
-/

namespace A370124.P403020342929897923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072982 (n + 1)) (A356305 n)

end

end A370124.P403020342929897923

/-! ## A370124.P12297366304534233177

`and(A275879(n+1), A356305(n))`
-/

namespace A370124.P12297366304534233177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A275879 (n + 1)) (A356305 n)

end

end A370124.P12297366304534233177

/-!
# A370125: Numbers k such that the least prime dividing the arithmetic derivative of k is equal to the least prime not dividing k.

The programs for A370125, there is no canonical definition to state claims against.
-/

/-! ## A370125.P14111808223543589758

`lt[0, A370124(n)]`
-/

namespace A370125.P14111808223543589758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370125.P14111808223543589758

/-! ## A370125.P16734916689742955709

`∪[A046337(n+1), A393065(n+1)]`
-/

namespace A370125.P16734916689742955709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370125.P16734916689742955709

/-! ## A370125.P696865640243573732

`filter[A359821(n+1), A370124(#)]`
-/

namespace A370125.P696865640243573732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P696865640243573732

/-! ## A370125.P5103221179290911614

`eq[A010121(n), A370124(n)]`
-/

namespace A370125.P5103221179290911614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370125.P5103221179290911614

/-! ## A370125.P17281897259538664240

`eq[A010130(n), A370124(n)]`
-/

namespace A370125.P17281897259538664240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370125.P17281897259538664240

/-! ## A370125.P15837056392127065458

`eq[A010153(n), A370124(n)]`
-/

namespace A370125.P15837056392127065458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370125.P15837056392127065458

/-! ## A370125.P14202464370726694815

`eq[A040037(n), A370124(n)]`
-/

namespace A370125.P14202464370726694815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370125.P14202464370726694815

/-! ## A370125.P18211148092435422513

`filter[A356312(n+1), A370124(#)]`
-/

namespace A370125.P18211148092435422513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P18211148092435422513

/-! ## A370125.P2259460526104885547

`filter[A042968(n+1), A370124(#)]`
-/

namespace A370125.P2259460526104885547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P2259460526104885547

/-! ## A370125.P15656277751151488113

`filter[A047588(n+1), A370124(#)]`
-/

namespace A370125.P15656277751151488113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P15656277751151488113

/-! ## A370125.P16268584579255654081

`filter[A047592(n+1), A370124(#)]`
-/

namespace A370125.P16268584579255654081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P16268584579255654081

/-! ## A370125.P2189095353121425818

`filter[A317468(n+1), A370124(#)]`
-/

namespace A370125.P2189095353121425818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P2189095353121425818

/-! ## A370125.P14493575798496903710

`filter[A018252(n+1), A370124(#)]`
-/

namespace A370125.P14493575798496903710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P14493575798496903710

/-! ## A370125.P12825449537586932602

`filter[A056653(n+1), A370124(#)]`
-/

namespace A370125.P12825449537586932602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P12825449537586932602

/-! ## A370125.P2497929858016667327

`filter[A065090(n+1), A370124(#)]`
-/

namespace A370125.P2497929858016667327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P2497929858016667327

/-! ## A370125.P6991937154117327529

`filter[A141468(n+1), A370124(#)]`
-/

namespace A370125.P6991937154117327529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P6991937154117327529

/-! ## A370125.P17292700719234311565

`filter[A171581(n+1), A370124(#)]`
-/

namespace A370125.P17292700719234311565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P17292700719234311565

/-! ## A370125.P14299118600153867642

`filter[A222307(2*n+1), A370124(#)]`
-/

namespace A370125.P14299118600153867642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P14299118600153867642

/-! ## A370125.P5858619240233503287

`filter[A173905(n+1), A370124(#)]`
-/

namespace A370125.P5858619240233503287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P5858619240233503287

/-! ## A370125.P11589250111945531253

`filter[A338924(n+1), A370124(#)]`
-/

namespace A370125.P11589250111945531253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A370125.P11589250111945531253

/-!
# A370126: Numbers k for which k' = x'*y', where k = x + y with x and y composite, and k', x', y' are the arithmetic derivatives of k, x, y.

The programs for A370126, there is no canonical definition to state claims against.
-/

/-! ## A370126.P6726178779254601653

`∩[A189917(n+1), A218011(n+1)]`
-/

namespace A370126.P6726178779254601653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370126.P6726178779254601653

/-! ## A370126.P15830987065104187939

`∩[A218011(n+1), A349521(n+1)]`
-/

namespace A370126.P15830987065104187939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370126.P15830987065104187939

/-!
# A370127: Numbers k such that (A276086(k)/s)^s < k^(s-1), where A276086 is the primorial base exp-function, and s = bigomega(k).

The programs for A370127, there is no canonical definition to state claims against.
-/

/-! ## A370127.P9845834564293331702

`eq[A268238(n), A317836(n)]`
-/

namespace A370127.P9845834564293331702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370127.P9845834564293331702

/-! ## A370127.P14373696148290237746

`lt[A276086(n), A046800(n)²]`
-/

namespace A370127.P14373696148290237746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370127.P14373696148290237746

/-! ## A370127.P16100703271178323576

`lt[A358669(n), A085787(A003415(n))]`
-/

namespace A370127.P16100703271178323576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370127.P16100703271178323576

/-! ## A370127.P12328049803470193553

`lt[A373849(n), A001489(A348497(n+1))]`
-/

namespace A370127.P12328049803470193553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A348497 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370127.P12328049803470193553

/-!
# A370129: Triangle read by rows: T(n,k) = A003415(A002110(n)+A002110(k)), 0 <= k <= n; arithmetic derivatives of the sums of two primorial numbers.

The programs for A370129, there is no canonical definition to state claims against.
-/

/-! ## A370129.P7738439229847655367

`A003415(A370121(n))`
-/

namespace A370129.P7738439229847655367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370121 n).toNat

end

end A370129.P7738439229847655367

/-! ## A370129.P4173055203261078550

`A373842(A087112(n+1))`
-/

namespace A370129.P4173055203261078550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A087112 (n + 1)).toNat

end

end A370129.P4173055203261078550

/-!
# A370130: a(n) = A369669(A276086(n)), where A369669 is the greatest common divisor of the first and second arithmetic derivative of n, and A276086 is the primorial base exp-function.

The programs for A370130, there is no canonical definition to state claims against.
-/

/-! ## A370130.P18054312763230268810

`gcd(A327860(n), A370131(n))`
-/

namespace A370130.P18054312763230268810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327860 n) (A370131 n)

end

end A370130.P18054312763230268810

/-! ## A370130.P15560036417385504854

`A369669(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370130.P15560036417385504854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369669 (A276086 n).toNat

end

end A370130.P15560036417385504854

/-! ## A370130.P12668494655379672042

`A369669(A373849(n)+2*A368921(n)-A368922(n))`
-/

namespace A370130.P12668494655379672042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369669 (A373849 n + (2 * A368921 n - A368922 n)).toNat

end

end A370130.P12668494655379672042

/-! ## A370130.P11924216667880654103

`A369669(A373849(n)+A005843(n)-(n-A168036(n)))`
-/

namespace A370130.P11924216667880654103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369669 (A373849 n + (A005843 n - ((n : ℤ) - A168036 n))).toNat

end

end A370130.P11924216667880654103

/-!
# A370131: a(n) = A068346(A276086(n)), where A068346 is the second arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A370131, there is no canonical definition to state claims against.
-/

/-! ## A370131.P15591264056373307983

`A003415(A327860(n))`
-/

namespace A370131.P15591264056373307983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327860 n).toNat

end

end A370131.P15591264056373307983

/-! ## A370131.P13673543069642335186

`A068346(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370131.P13673543069642335186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A276086 n).toNat

end

end A370131.P13673543069642335186

/-! ## A370131.P2579333547800707998

`∑{d}[A327860(n), A300251(#)]`
-/

namespace A370131.P2579333547800707998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A370131.P2579333547800707998

/-! ## A370131.P6959540637547610673

`A327860(n)-A368921(A276086(n))`
-/

namespace A370131.P6959540637547610673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A368921 (A276086 n).toNat

end

end A370131.P6959540637547610673

/-! ## A370131.P5638026909488018644

`A344026(A277022(n))-A368921(A276086(n))`
-/

namespace A370131.P5638026909488018644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A277022 n).toNat - A368921 (A276086 n).toNat

end

end A370131.P5638026909488018644

/-! ## A370131.P4690053801363761305

`A327860(n)-A368921(A328844(n)+A328843(n))`
-/

namespace A370131.P4690053801363761305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A368921 (A328844 n + A328843 n).toNat

end

end A370131.P4690053801363761305

/-! ## A370131.P17841725278137762011

`A327860(n)-A368921(A327860(n)-A342016(n))`
-/

namespace A370131.P17841725278137762011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A368921 (A327860 n - A342016 n).toNat

end

end A370131.P17841725278137762011

/-! ## A370131.P6975207432508974451

`A327860(n)-A368921(A348949(n)-A348950(n))`
-/

namespace A370131.P6975207432508974451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A368921 (A348949 n - A348950 n).toNat

end

end A370131.P6975207432508974451

/-! ## A370131.P4044507517634448898

`A327860(n)-A368921(A327858(n)*A351231(n))`
-/

namespace A370131.P4044507517634448898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A368921 (A327858 n * A351231 n).toNat

end

end A370131.P4044507517634448898

/-!
# A370132: Numbers with no digit larger than 2 in primorial base, A049345.

The programs for A370132, there is no canonical definition to state claims against.
-/

/-! ## A370132.P13911009671057564549

`lt[A328582(n)-1, 2]`
-/

namespace A370132.P13911009671057564549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P13911009671057564549

/-! ## A370132.P2658231869086958751

`eq[1, A326820(A328582(n))]`
-/

namespace A370132.P2658231869086958751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326820 (A328582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370132.P2658231869086958751

/-! ## A370132.P9937254118189264535

`lt[A328114(n)-1, 2]`
-/

namespace A370132.P9937254118189264535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P9937254118189264535

/-! ## A370132.P6056944919860929025

`eq[1, A000009(A328114(n))]`
-/

namespace A370132.P6056944919860929025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A328114 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370132.P6056944919860929025

/-! ## A370132.P17134791612759049425

`lt[A328842(A328842(n)), 1]`
-/

namespace A370132.P17134791612759049425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A328842 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P17134791612759049425

/-! ## A370132.P210985845509388335

`eq[A324655(n), A328835(n)]`
-/

namespace A370132.P210985845509388335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370132.P210985845509388335

/-! ## A370132.P14250436758325312295

`eq[A328114(n), A328114(A328114(n)²)]`
-/

namespace A370132.P14250436758325312295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328114 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370132.P14250436758325312295

/-! ## A370132.P16867532745470847265

`eq[A328582(n), A328582(A328582(n)²)]`
-/

namespace A370132.P16867532745470847265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 (A328582 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370132.P16867532745470847265

/-! ## A370132.P4897681818744607981

`lt[A008477(A328572(n)), 2]`
-/

namespace A370132.P4897681818744607981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A328572 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P4897681818744607981

/-!
# A370133: Numbers with no digit larger than 3 in primorial base, A049345.

The programs for A370133, there is no canonical definition to state claims against.
-/

/-! ## A370133.P15920512231563652372

`lt[A328114(n), 4]`
-/

namespace A370133.P15920512231563652372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370133.P15920512231563652372

/-! ## A370133.P11285620524402220353

`lt[val(A278226(n), 2), 4]`
-/

namespace A370133.P11285620524402220353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278226 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370133.P11285620524402220353

/-! ## A370133.P6292053420037867309

`eq[A000007(n+1), A383509(A328114(n))]`
-/

namespace A370133.P6292053420037867309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383509 (A328114 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370133.P6292053420037867309

/-! ## A370133.P4734889121450155746

`eq[A057427(n+4), A097592(A328114(n))]`
-/

namespace A370133.P4734889121450155746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A328114 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370133.P4734889121450155746

/-! ## A370133.P9559066150011210545

`eq[A001591(A328114(n)), A007814(2*n+3)]`
-/

namespace A370133.P9559066150011210545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A328114 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370133.P9559066150011210545

/-! ## A370133.P6474218251055757615

`eq[A000007(3*n+4), A237113(A328114(n))]`
-/

namespace A370133.P6474218251055757615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 (A328114 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370133.P6474218251055757615

/-! ## A370133.P542411826975250267

`lt[A054055(A049345(n)), 4]`
-/

namespace A370133.P542411826975250267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370133.P542411826975250267

/-!
# A370134: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 1 <= k <= n; sums of two primorials > 1, not necessarily distinct.

The programs for A370134, there is no canonical definition to state claims against.
-/

/-! ## A370134.P17723007807283849732

`A370121(comp[∑[n]])`
-/

namespace A370134.P17723007807283849732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A370134.P17723007807283849732

/-! ## A370134.P10822997643353320339

`A002110(A002260(n+1))*A370135(n+1)`
-/

namespace A370134.P10822997643353320339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A002260 (n + 1)).toNat * A370135 (n + 1)

end

end A370134.P10822997643353320339

/-! ## A370134.P9271970541450580967

`A277021(2*A018900(n+1))`
-/

namespace A370134.P9271970541450580967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A018900 (n + 1)).toNat

end

end A370134.P9271970541450580967

/-! ## A370134.P3034105296319825661

`A373158(A087112(n+1))`
-/

namespace A370134.P3034105296319825661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373158 (A087112 (n + 1)).toNat

end

end A370134.P3034105296319825661

/-! ## A370134.P3729205069583725079

`∩[2*n, A370121(n+1)]`
-/

namespace A370134.P3729205069583725079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370134.P3729205069583725079

/-!
# A370135: Triangle read by rows: T(n,k) = (A002110(n) + A002110(k)) / A002110(k), 1 <= k <= n.

The programs for A370135, there is no canonical definition to state claims against.
-/

/-! ## A370135.P7396084154153960373

`A370134(n+1)/A002110(A002260(n+1))`
-/

namespace A370135.P7396084154153960373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370134 (n + 1) : ℚ) / (A002110 (A002260 (n + 1)).toNat : ℚ)

end

end A370135.P7396084154153960373

/-! ## A370135.P9144612144903547705

`A096334(comp[∑[n-1]]+1)+1`
-/

namespace A370135.P9144612144903547705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A370135.P9144612144903547705

/-! ## A370135.P5191079281335977083

`A243501(A096334(n))`
-/

namespace A370135.P5191079281335977083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A096334 n).toNat

end

end A370135.P5191079281335977083

/-! ## A370135.P13501475399323341949

`A330098(n+1)+A003961(A096334(n))`
-/

namespace A370135.P13501475399323341949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 1) + A003961 (A096334 n).toNat

end

end A370135.P13501475399323341949

/-! ## A370135.P5953349924385521707

`A003961(A096334(n))-A153881(n+2)`
-/

namespace A370135.P5953349924385521707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A096334 n).toNat - A153881 (n + 2)

end

end A370135.P5953349924385521707

/-!
# A370136: Triangle read by rows: T(n,k) = arithmetic derivative of ((A002110(n) + A002110(k)) / A002110(k)), 1 <= k <= n.

The programs for A370136, there is no canonical definition to state claims against.
-/

/-! ## A370136.P9101358364246055497

`A003415(A370135(n+1))`
-/

namespace A370136.P9101358364246055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370135 (n + 1)).toNat

end

end A370136.P9101358364246055497

/-!
# A370137: Sums of three primorials > 1.

The programs for A370137, there is no canonical definition to state claims against.
-/

/-! ## A370137.P18141423203842214714

`A277021(2*A014311(n+1))`
-/

namespace A370137.P18141423203842214714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A014311 (n + 1)).toNat

end

end A370137.P18141423203842214714

/-! ## A370137.P7144008430205797829

`A174055(n+1)-A040495(A063990(n+1))`
-/

namespace A370137.P7144008430205797829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (n + 1) - A040495 (A063990 (n + 1)).toNat

end

end A370137.P7144008430205797829

/-! ## A370137.P691509216714970017

`A042963(eq[A147986(n+1), A284499(3*n+2)])`
-/

namespace A370137.P691509216714970017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284499 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370137.P691509216714970017

/-! ## A370137.P17326191088944038674

`A073760(lt[A035468(n+1), A290808(n+4)])`
-/

namespace A370137.P17326191088944038674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370137.P17326191088944038674

/-! ## A370137.P16202362342936361662

`A174055(n+1)-A335465(A001615(3*(n+1)))`
-/

namespace A370137.P16202362342936361662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (n + 1) - A335465 (A001615 (3 * (n + 1))).toNat

end

end A370137.P16202362342936361662

/-!
# A370138: Arithmetic derivatives of the sums of three primorials > 1.

The programs for A370138, there is no canonical definition to state claims against.
-/

/-! ## A370138.P16155713201803020346

`A003415(A370137(n+1))`
-/

namespace A370138.P16155713201803020346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370137 (n + 1)).toNat

end

end A370138.P16155713201803020346

/-!
# A370139: Primes p such that the sums of three, five, and seven consecutive primes starting with p are prime.

The programs for A370139, there is no canonical definition to state claims against.
-/

/-! ## A370139.P2419394261772912705

`∩[A180948(n+1), A182121(n+1)]`
-/

namespace A370139.P2419394261772912705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370139.P2419394261772912705

/-! ## A370139.P16753409571174293890

`A000040(A288107(n+1))`
-/

namespace A370139.P16753409571174293890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288107 (n + 1)).toNat

end

end A370139.P16753409571174293890

/-! ## A370139.P14803752293566963442

`A008578(A288107(n+1)+1)`
-/

namespace A370139.P14803752293566963442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A288107 (n + 1) + 1).toNat

end

end A370139.P14803752293566963442

/-! ## A370139.P720215079832926407

`A240960(A288107(n+1)+1)`
-/

namespace A370139.P720215079832926407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (A288107 (n + 1) + 1).toNat

end

end A370139.P720215079832926407

/-!
# A370143: Expansion of g.f. A(x) satisfying Sum_{n>=0} Product_{k=1..n} (x^k + 3*A(x)) = 1 + 4*Sum_{n>=1} x^(n*(n+1)/2).

The programs for A370143, there is no canonical definition to state claims against.
-/

/-! ## A370143.P16573480505477357087

`(-4)^n+1-A133890(A135867(n))`
-/

namespace A370143.P16573480505477357087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n + 1 - A133890 (A135867 n).toNat

end

end A370143.P16573480505477357087

/-!
# A370144: Expansion of g.f. A(x) satisfying Sum_{n>=0} Product_{k=1..n} (x^k + 4*A(x)) = 1 + 5*Sum_{n>=1} x^(n*(n+1)/2).

The programs for A370144, there is no canonical definition to state claims against.
-/

/-! ## A370144.P4710256607985722029

`(-5)^n-A139001(A059435(n)+1)%A000124(n)`
-/

namespace A370144.P4710256607985722029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n - Int.tmod (A139001 (A059435 n + 1).toNat) (A000124 n)

end

end A370144.P4710256607985722029

/-!
# A370150: Expansion of g.f. (1 - theta_4(x))/2 / Product_{n>=1} (1 - x^(2*n))^3.

The programs for A370150, there is no canonical definition to state claims against.
-/

/-! ## A370150.P9872410622264979534

`A370040(∑[n]+1)`
-/

namespace A370150.P9872410622264979534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A370150.P9872410622264979534

/-!
# A370151: Column 1 of triangle A370040.

The programs for A370151, there is no canonical definition to state claims against.
-/

/-! ## A370151.P13606973420990907765

`A370040(∑[n+1]+2)`
-/

namespace A370151.P13606973420990907765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A370151.P13606973420990907765

/-!
# A370152: Column 2 of triangle A370040.

The programs for A370152, there is no canonical definition to state claims against.
-/

/-! ## A370152.P8282868181385978200

`A370040(A167614(n+1))`
-/

namespace A370152.P8282868181385978200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (A167614 (n + 1)).toNat

end

end A370152.P8282868181385978200

/-! ## A370152.P9714149529023965500

`A370040(A055998(n)+6)`
-/

namespace A370152.P9714149529023965500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (A055998 n + 6).toNat

end

end A370152.P9714149529023965500

/-! ## A370152.P9589007917464259314

`A370040(A167499(n)+n)`
-/

namespace A370152.P9589007917464259314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (A167499 n + (n : ℤ)).toNat

end

end A370152.P9589007917464259314

/-! ## A370152.P14595136667045904804

`A370040(A000217(n+3)-n)`
-/

namespace A370152.P14595136667045904804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370040 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A370152.P14595136667045904804

/-!
# A370153: Expansion of g.f. (theta_3(x) - 1)/2 * Product_{n>=1} (1 - x^(4*n-2)) / (1 - x^(4*n)).

The programs for A370153, there is no canonical definition to state claims against.
-/

/-! ## A370153.P7037962518586867648

`A370041(∑[n]+1)`
-/

namespace A370153.P7037962518586867648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A370153.P7037962518586867648

/-! ## A370153.P5506159567955617767

`A370041(A000124(n))%A359671(n)`
-/

namespace A370153.P5506159567955617767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370041 (A000124 n).toNat) (A359671 n)

end

end A370153.P5506159567955617767

/-! ## A370153.P402262584567262194

`or(A000007(n), A370041(A000124(n)))`
-/

namespace A370153.P402262584567262194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370041 (A000124 n).toNat)

end

end A370153.P402262584567262194

/-! ## A370153.P10684160984310452802

`A370041(A000124(n))+A000007(3*(n+1))`
-/

namespace A370153.P10684160984310452802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370041 (A000124 n).toNat + A000007 (3 * (n + 1))

end

end A370153.P10684160984310452802

/-! ## A370153.P13534684272927945703

`A070432(2*n+3)*A370041(A000124(n))`
-/

namespace A370153.P13534684272927945703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (2 * n + 3) * A370041 (A000124 n).toNat

end

end A370153.P13534684272927945703

/-!
# A370154: Column 1 of triangle A370041.

The programs for A370154, there is no canonical definition to state claims against.
-/

/-! ## A370154.P14675768139054354432

`A370041(∑[n+1]+2)`
-/

namespace A370154.P14675768139054354432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370041 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A370154.P14675768139054354432

/-!
# A370155: Column 2 of triangle A370041.

The programs for A370155, there is no canonical definition to state claims against.
-/

/-! ## A370155.P9413996149516411797

`A370041(∑[n+1]+5+n)`
-/

namespace A370155.P9413996149516411797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370041 (∑ j ∈ Finset.range (n + 1), f1 j + 5 + n)

end

end A370155.P9413996149516411797

/-!
# A370156: Primes p such that (p-2)/3 is prime and 3*p+2 is composite.

The programs for A370156, there is no canonical definition to state claims against.
-/

/-! ## A370156.P15251672370365104819

`∩[A094524(n+1), A115058(n+1)]`
-/

namespace A370156.P15251672370365104819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370156.P15251672370365104819

/-! ## A370156.P12463929095359500335

`∩[A115058(n+1), A162337(n+1)]`
-/

namespace A370156.P12463929095359500335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370156.P12463929095359500335

/-! ## A370156.P1307351953062717777

`∩[A094524(n+1), A153170(n+1)]`
-/

namespace A370156.P1307351953062717777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370156.P1307351953062717777

/-! ## A370156.P16620498887301706903

`∩[A153170(n+1), A162337(n+1)]`
-/

namespace A370156.P16620498887301706903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370156.P16620498887301706903

/-!
# A370157: Primes p such that both 3p+2 and (p-2)/3 are composite or 0.

The programs for A370157, the canonical program `A370157.P647091250553800908` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370157 has offset 1).

The definition of A370157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370157.P7724980397436941251

`∩[A115058(n+1), A169647(n+1)]`
-/

namespace A370157.P7724980397436941251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370157.P7724980397436941251

namespace A370157

/-- `∩[A115058(n+1), A169647(n+1)]` -/
def P7724980397436941251.Spec : Prop :=
  ∀ n, (P7724980397436941251.a n : ℤ) = A370157 (n + 1)

end A370157

/-! ## A370157.P647091250553800908

`∩[A153170(n+1), A169647(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A370157

/-- `∩[A153170(n+1), A169647(n+1)]` -/
def P647091250553800908.Spec : Prop :=
  ∀ n, (P647091250553800908.a n : ℤ) = A370157 (n + 1)

theorem P647091250553800908.correct : P647091250553800908.Spec := by
  intro n
  simp only [A370157, Nat.add_sub_cancel]

end A370157

/-!
# A370158: a(n) is the number of prime quadruples of the form {p, p+2, p+6, p+12} with p < 10^n.

The programs for A370158, there is no canonical definition to state claims against.
-/

/-! ## A370158.P1231678009081896010

`A044046(n)+A001222(A000165(n))`
-/

namespace A370158.P1231678009081896010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n + A001222 (A000165 n).toNat

end

end A370158.P1231678009081896010

/-!
# A370159: Coefficient of x^n in the expansion of ( (1+x) * (1+x+x^2)^2 )^n.

The programs for A370159, there is no canonical definition to state claims against.
-/

/-! ## A370159.P3152791556863041519

`A114422(∑[4*n])`
-/

namespace A370159.P3152791556863041519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370159.P3152791556863041519

/-! ## A370159.P6309106658180452466

`and(-1, A114422(A046092(n)))`
-/

namespace A370159.P6309106658180452466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114422 (A046092 n).toNat)

end

end A370159.P6309106658180452466

/-! ## A370159.P10533128527550417143

`record[A003982(n)*A114422(n)]`
-/

namespace A370159.P10533128527550417143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A114422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370159.P10533128527550417143

/-! ## A370159.P712641458207507835

`record[gcd(A003987(n), A114422(n))]`
-/

namespace A370159.P712641458207507835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A114422 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370159.P712641458207507835

/-!
# A370160: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x+x^2)^2 )^n.

The programs for A370160, there is no canonical definition to state claims against.
-/

/-! ## A370160.P12580173920888148374

`A273943(2*A372464(n))`
-/

namespace A370160.P12580173920888148374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A372464 n).toNat

end

end A370160.P12580173920888148374

/-! ## A370160.P1551115477320543624

`A372464(n^A098093(n))`
-/

namespace A370160.P1551115477320543624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372464 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A098093 n : ℤ))).toNat

end

end A370160.P1551115477320543624

/-!
# A370161: a(n) is the dimension of the multilinear part of the free flexible algebra with n generators.

The programs for A370161, there is no canonical definition to state claims against.
-/

/-! ## A370161.P15527040979156524622

`A337721(2*n)-A337683(A337716(n+1))`
-/

namespace A370161.P15527040979156524622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337721 (2 * n) - A337683 (A337716 (n + 1)).toNat

end

end A370161.P15527040979156524622

/-!
# A370162: Semiprimes that are the sum of two successive semiprimes and also the sum of three successive semiprimes.

The programs for A370162, the canonical program `A370162.P16880461024669532714` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370162 has offset 1).

The definition of A370162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370162.P16880461024669532714

`∩[A092192(n+1), A131610(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A370162

/-- `∩[A092192(n+1), A131610(n+1)]` -/
def P16880461024669532714.Spec : Prop :=
  ∀ n, (P16880461024669532714.a n : ℤ) = A370162 (n + 1)

theorem P16880461024669532714.correct : P16880461024669532714.Spec := by
  intro n
  simp only [A370162, Nat.add_sub_cancel]

end A370162

/-! ## A370162.P7908609936302469708

`∩[A118717(n+1), A131610(n+1)]`
-/

namespace A370162.P7908609936302469708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370162.P7908609936302469708

namespace A370162

/-- `∩[A118717(n+1), A131610(n+1)]` -/
def P7908609936302469708.Spec : Prop :=
  ∀ n, (P7908609936302469708.a n : ℤ) = A370162 (n + 1)

end A370162

/-!
# A370163: a(0) = 2, a(n) = (-1)^n + (-2)^n + (1/2) * Sum_{j=1..n} (1-(-1)^j-(-2)^j) * binomial(n,j) * a(n-j) for n > 0.

The programs for A370163, there is no canonical definition to state claims against.
-/

/-! ## A370163.P356592489046640931

`A032742(A375607(n+1)+3)`
-/

namespace A370163.P356592489046640931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A375607 (n + 1) + 3).toNat

end

end A370163.P356592489046640931

/-! ## A370163.P2821174641431478946

`A289439(A375607(n+1)+3)`
-/

namespace A370163.P2821174641431478946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A375607 (n + 1) + 3).toNat

end

end A370163.P2821174641431478946

/-!
# A370165: Number of labeled loop-graphs covering n vertices without a non-loop edge with loops at both ends.

The programs for A370165, there is no canonical definition to state claims against.
-/

/-! ## A370165.P7345420901334378956

`A131881(A052880(n))`
-/

namespace A370165.P7345420901334378956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (A052880 n).toNat

end

end A370165.P7345420901334378956

/-!
# A370166: Number of unlabeled loop-graphs covering n vertices without a non-loop edge with loops at both ends.

The programs for A370166, there is no canonical definition to state claims against.
-/

/-! ## A370166.P5860798773816656749

`A104568(C(n!, 2))`
-/

namespace A370166.P5860798773816656749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104568 (Nat.choose (Nat.factorial n) 2)

end

end A370166.P5860798773816656749

/-! ## A370166.P12567090682356724907

`sqrt(A168221(n!²))`
-/

namespace A370166.P12567090682356724907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168221 (Nat.factorial n ^ 2) : ℝ)

end

end A370166.P12567090682356724907

/-!
# A370167: Irregular triangle read by rows where T(n,k) is the number of unlabeled simple graphs covering n vertices with k = 0..binomial(n,2) edges.

The programs for A370167, there is no canonical definition to state claims against.
-/

/-! ## A370167.P17392602314053944676

`A268318(A054548(n))`
-/

namespace A370167.P17392602314053944676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 (A054548 n).toNat

end

end A370167.P17392602314053944676

/-! ## A370167.P3895870905025283495

`A182907(A054548(n)+1)`
-/

namespace A370167.P3895870905025283495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182907 (A054548 n + 1).toNat

end

end A370167.P3895870905025283495

/-! ## A370167.P1269317369715738161

`A328114(A054548(n)^A239660(n+1))`
-/

namespace A370167.P1269317369715738161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (SequenceMachineLib.roundAway ((A054548 n : ℚ) ^ (A239660 (n + 1) : ℤ))).toNat

end

end A370167.P1269317369715738161

/-! ## A370167.P4939191104965774486

`A122172(n+3)%A237686(A054548(n))`
-/

namespace A370167.P4939191104965774486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122172 (n + 3)) (A237686 (A054548 n).toNat)

end

end A370167.P4939191104965774486

/-! ## A370167.P9436774599442262569

`A328114(A054548(n)%A345919(3*n+1))`
-/

namespace A370167.P9436774599442262569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (Int.tmod (A054548 n) (A345919 (3 * n + 1))).toNat

end

end A370167.P9436774599442262569

/-!
# A370168: Number of unlabeled loop-graphs with n vertices and at most n edges.

The programs for A370168, there is no canonical definition to state claims against.
-/

/-! ## A370168.P17367151804992073191

`A001462(A368576(n)+A334630(n))`
-/

namespace A370168.P17367151804992073191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A368576 n + A334630 n).toNat

end

end A370168.P17367151804992073191

/-! ## A370168.P8327797673744837595

`A001462(A368576(n)+A335602(n))`
-/

namespace A370168.P8327797673744837595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A368576 n + A335602 n).toNat

end

end A370168.P8327797673744837595

/-! ## A370168.P7032164491303530236

`A131267(n)+A064288(A131313(n+1))`
-/

namespace A370168.P7032164491303530236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131267 n + A064288 (A131313 (n + 1)).toNat

end

end A370168.P7032164491303530236

/-!
# A370169: Number of unlabeled loop-graphs covering n vertices with at most n edges.

The programs for A370169, there is no canonical definition to state claims against.
-/

/-! ## A370169.P10148477693377178447

`A094539(n)+A000196(A000984(n))`
-/

namespace A370169.P10148477693377178447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094539 n + A000196 (A000984 n).toNat

end

end A370169.P10148477693377178447

/-! ## A370169.P11399019333211296546

`A290110(ceil(log(n+1))^comp[2*n+3])`
-/

namespace A370169.P11399019333211296546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290110 (⌈Real.log (n + 1 : ℝ)⌉ ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n).toNat

end

end A370169.P11399019333211296546

/-! ## A370169.P4848538790727211408

`A130446(A073063(n))`
-/

namespace A370169.P4848538790727211408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A073063 n).toNat

end

end A370169.P4848538790727211408

/-!
# A370170: Coefficient of x^n in the expansion of (1+x+x^2)^(3*n).

The programs for A370170, there is no canonical definition to state claims against.
-/

/-! ## A370170.P9764578759848193416

`A094531(A062728(n))`
-/

namespace A370170.P9764578759848193416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A062728 n).toNat

end

end A370170.P9764578759848193416

/-! ## A370170.P17658233016972606795

`A111808(A064225(n))`
-/

namespace A370170.P17658233016972606795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (A064225 n).toNat

end

end A370170.P17658233016972606795

/-! ## A370170.P16069224052114310583

`A071675(A139277(n))`
-/

namespace A370170.P16069224052114310583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A139277 n).toNat

end

end A370170.P16069224052114310583

/-! ## A370170.P16487321896700662708

`A078802(A139274(n))`
-/

namespace A370170.P16487321896700662708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A139274 n).toNat

end

end A370170.P16487321896700662708

/-! ## A370170.P9841203820298104846

`A082601(A139276(n))`
-/

namespace A370170.P9841203820298104846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A139276 n).toNat

end

end A370170.P9841203820298104846

/-!
# A370171: Coefficient of x^n in the expansion of ( (1+x) * (1+x+x^2)^3 )^n.

The programs for A370171, there is no canonical definition to state claims against.
-/

/-! ## A370171.P17945571720280038275

`A052330(n)+A001951(A002276(n))`
-/

namespace A370171.P17945571720280038275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 n + A001951 (A002276 n).toNat

end

end A370171.P17945571720280038275

/-!
# A370172: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x+x^2)^3 )^n.

The programs for A370172, there is no canonical definition to state claims against.
-/

/-! ## A370172.P17747982502996767678

`A114422(A062728(n))`
-/

namespace A370172.P17747982502996767678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (A062728 n).toNat

end

end A370172.P17747982502996767678

/-! ## A370172.P8853852921438691497

`A114422(A000217(3*n+1)-(n+1))`
-/

namespace A370172.P8853852921438691497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (A000217 (3 * n + 1) - (n + 1 : ℤ)).toNat

end

end A370172.P8853852921438691497

/-!
# A370173: Riordan array (1-x-x^2, x*(1+x)).

The programs for A370173, the canonical program `A370173.P7127620840381726044` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370173 has offset 0).

The definition of A370173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370173.P7127620840381726044

`Δ[-A026729(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A370173

/-- `Δ[-A026729(n)]` -/
def P7127620840381726044.Spec : Prop :=
  ∀ n, P7127620840381726044.a n = A370173 n

theorem P7127620840381726044.correct : P7127620840381726044.Spec := by
  intro n
  simp only [A370173]

end A370173

/-! ## A370173.P14586116035487208768

`-Δ[abs(A109466(n))]`
-/

namespace A370173.P14586116035487208768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A370173.P14586116035487208768

namespace A370173

/-- `-Δ[abs(A109466(n))]` -/
def P14586116035487208768.Spec : Prop :=
  ∀ n, P14586116035487208768.a n = A370173 n

end A370173

/-! ## A370173.P5215942130560562018

`A026729(n)-A026729(n+1)`
-/

namespace A370173.P5215942130560562018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n - A026729 (n + 1)

end

end A370173.P5215942130560562018

namespace A370173

/-- `A026729(n)-A026729(n+1)` -/
def P5215942130560562018.Spec : Prop :=
  ∀ n, P5215942130560562018.a n = A370173 n

theorem P5215942130560562018.correct : P5215942130560562018.Spec := by
  intro n
  simp only [A370173, Nat.add_sub_cancel, A370173.P5215942130560562018.a, A370173.P7127620840381726044.f1, A370173.P7127620840381726044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A370173

/-! ## A370173.P8021092808605830020

`Δ[A000038(n+1)-A059674(n)*A101688(n)]`
-/

namespace A370173.P8021092808605830020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A059674 n * A101688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P8021092808605830020

namespace A370173

/-- `Δ[A000038(n+1)-A059674(n)*A101688(n)]` -/
def P8021092808605830020.Spec : Prop :=
  ∀ n, P8021092808605830020.a n = A370173 n

end A370173

/-! ## A370173.P2556585431282286557

`Δ[A000038(n+1)-A097807(n)*A109466(n)]`
-/

namespace A370173.P2556585431282286557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A097807 n * A109466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P2556585431282286557

namespace A370173

/-- `Δ[A000038(n+1)-A097807(n)*A109466(n)]` -/
def P2556585431282286557.Spec : Prop :=
  ∀ n, P2556585431282286557.a n = A370173 n

end A370173

/-! ## A370173.P17296829361635571335

`Δ[A000038(n+1)-A109466(n)*A128257(n)]`
-/

namespace A370173.P17296829361635571335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A109466 n * A128257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P17296829361635571335

namespace A370173

/-- `Δ[A000038(n+1)-A109466(n)*A128257(n)]` -/
def P17296829361635571335.Spec : Prop :=
  ∀ n, P17296829361635571335.a n = A370173 n

end A370173

/-! ## A370173.P5705245051974985

`Δ[A059841(2*n)-A026729(n)]`
-/

namespace A370173.P5705245051974985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) - A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P5705245051974985

namespace A370173

/-- `Δ[A059841(2*n)-A026729(n)]` -/
def P5705245051974985.Spec : Prop :=
  ∀ n, P5705245051974985.a n = A370173 n

end A370173

/-! ## A370173.P13351854732749358178

`Δ[A241541(2*n)-A026729(n)]`
-/

namespace A370173.P13351854732749358178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241541 (2 * n) - A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P13351854732749358178

namespace A370173

/-- `Δ[A241541(2*n)-A026729(n)]` -/
def P13351854732749358178.Spec : Prop :=
  ∀ n, P13351854732749358178.a n = A370173 n

end A370173

/-! ## A370173.P430838485122329894

`Δ[A026729(n)*A153881(2*(n+2))]`
-/

namespace A370173.P430838485122329894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A153881 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P430838485122329894

namespace A370173

/-- `Δ[A026729(n)*A153881(2*(n+2))]` -/
def P430838485122329894.Spec : Prop :=
  ∀ n, P430838485122329894.a n = A370173 n

end A370173

/-!
# A370174: Triangle read by rows: Riordan array (1/(1 - x), x*(1 + x)/(1 - x - x^2)).

The programs for A370174, there is no canonical definition to state claims against.
-/

/-! ## A370174.P15164662247165238886

`A295662(A155171(n+2))+A204330(A263859(n+1))`
-/

namespace A370174.P15164662247165238886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (A155171 (n + 2)).toNat + A204330 (A263859 (n + 1)).toNat

end

end A370174.P15164662247165238886

/-! ## A370174.P5330985773123176206

`A228720(A080416(n))`
-/

namespace A370174.P5330985773123176206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A080416 n).toNat

end

end A370174.P5330985773123176206

/-! ## A370174.P2317839203542883433

`A348385(A154372(n))`
-/

namespace A370174.P2317839203542883433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348385 (A154372 n).toNat

end

end A370174.P2317839203542883433

/-! ## A370174.P2008169977698589625

`A278132(n+2)%A294430(n+1)`
-/

namespace A370174.P2008169977698589625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278132 (n + 2)) (A294430 (n + 1))

end

end A370174.P2008169977698589625

/-! ## A370174.P2321272898147109036

`A307598(A109971(n))+A085478(n)`
-/

namespace A370174.P2321272898147109036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A109971 n).toNat + A085478 n

end

end A370174.P2321272898147109036

/-!
# A370175: a(n) = floor(x*a(n-1)) for n > 0 where x = (5+3*sqrt(5))/2, a(0) = 1.

The programs for A370175, the canonical program `A370175.P3786392147285437156` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370175 has offset 0).

The definition of A370175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370175.P3786392147285437156

`6*a(n-1)-5*a(n-3)` with `a(0)=1, a(1)=5, a(2)=29`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370175

/-- `6*a(n-1)-5*a(n-3)` -/
def P3786392147285437156.Spec : Prop :=
  ∀ n, P3786392147285437156.a n = A370175 n

theorem P3786392147285437156.correct : P3786392147285437156.Spec := by
  intro n
  simp only [A370175]

end A370175

/-! ## A370175.P2107136461226371116

`∑[ogf((-1+x+x^2)/(-1+5x+5x^2))]`
-/

namespace A370175.P2107136461226371116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -5, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370175.P2107136461226371116

namespace A370175

/-- `∑[ogf((-1+x+x^2)/(-1+5x+5x^2))]` -/
def P2107136461226371116.Spec : Prop :=
  ∀ n, P2107136461226371116.a n = A370175 n

end A370175

/-! ## A370175.P8813455709054499029

`ogf((1-x-x^2)/(1-6x+5x^3))`
-/

namespace A370175.P8813455709054499029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -6, 0, 5] n

end

end A370175.P8813455709054499029

namespace A370175

/-- `ogf((1-x-x^2)/(1-6x+5x^3))` -/
def P8813455709054499029.Spec : Prop :=
  ∀ n, P8813455709054499029.a n = A370175 n

end A370175

/-! ## A370175.P12858130727057008474

`floor((ϕ+2)*ϕ*a(n-1))` with `a(0)=1`
-/

namespace A370175.P12858130727057008474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.goldenRatio + 2) * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A370175.P12858130727057008474

namespace A370175

/-- `floor((ϕ+2)*ϕ*a(n-1))` -/
def P12858130727057008474.Spec : Prop :=
  ∀ n, P12858130727057008474.a n = A370175 n

end A370175

/-! ## A370175.P10598580371544932800

`floor((ϕ²²-1)*a(n-1))` with `a(0)=1`
-/

namespace A370175.P10598580371544932800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((Real.goldenRatio ^ 2) ^ 2 - 1) * (a (n - 1) : ℝ)⌋

end

end A370175.P10598580371544932800

namespace A370175

/-- `floor((ϕ²²-1)*a(n-1))` -/
def P10598580371544932800.Spec : Prop :=
  ∀ n, P10598580371544932800.a n = A370175 n

end A370175

/-! ## A370175.P13244131290648063826

`5*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=5`
-/

namespace A370175.P13244131290648063826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * (a (n - 1) + a (n - 2)) - 1

end

end A370175.P13244131290648063826

namespace A370175

/-- `5*(a(n-1)+a(n-2))-1` -/
def P13244131290648063826.Spec : Prop :=
  ∀ n, P13244131290648063826.a n = A370175 n

end A370175

/-! ## A370175.P16058390357536291303

`∑[A155119(n)]`
-/

namespace A370175.P16058390357536291303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370175.P16058390357536291303

namespace A370175

/-- `∑[A155119(n)]` -/
def P16058390357536291303.Spec : Prop :=
  ∀ n, P16058390357536291303.a n = A370175 n

end A370175

/-!
# A370176: a(n) = floor(x*a(n-1)) for n > 0 where x = 3+sqrt(15), a(0) = 1.

The programs for A370176, the canonical program `A370176.P13697922646488093336` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370176 has offset 0).

The definition of A370176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370176.P13697922646488093336

`7*a(n-1)-6*a(n-3)` with `a(0)=1, a(1)=6, a(2)=41`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370176

/-- `7*a(n-1)-6*a(n-3)` -/
def P13697922646488093336.Spec : Prop :=
  ∀ n, P13697922646488093336.a n = A370176 n

theorem P13697922646488093336.correct : P13697922646488093336.Spec := by
  intro n
  simp only [A370176]

end A370176

/-! ## A370176.P6373638544685505545

`((30-7*sqrt(15))*(3-sqrt(15))^n+(30+7*sqrt(15))*(3+sqrt(15))^n+6)/66`
-/

namespace A370176.P6373638544685505545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((30 - 7 * Real.sqrt (15 : ℝ)) * (3 - Real.sqrt (15 : ℝ)) ^ n + (30 + 7 * Real.sqrt (15 : ℝ)) * (3 + Real.sqrt (15 : ℝ)) ^ n + 6) / 66

end

end A370176.P6373638544685505545

namespace A370176

/-- `((30-7*sqrt(15))*(3-sqrt(15))^n+(30+7*sqrt(15))*(3+sqrt(15))^n+6)/66` -/
def P6373638544685505545.Spec : Prop :=
  ∀ n, P6373638544685505545.a n = (A370176 n : ℝ)

theorem P6373638544685505545.correct : P6373638544685505545.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A370176, Nat.add_sub_cancel, A370176.P6373638544685505545.a, A370176.P13697922646488093336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A370176, Nat.add_sub_cancel, A370176.P6373638544685505545.a, A370176.P13697922646488093336.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A370176

/-! ## A370176.P3679535136672650094

`∑[ogf((-1+x+x^2)/(-1+6x+6x^2))]`
-/

namespace A370176.P3679535136672650094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -6, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370176.P3679535136672650094

namespace A370176

/-- `∑[ogf((-1+x+x^2)/(-1+6x+6x^2))]` -/
def P3679535136672650094.Spec : Prop :=
  ∀ n, P3679535136672650094.a n = A370176 n

end A370176

/-! ## A370176.P3683883655889718992

`ogf((1-x-x^2)/(1-7x+6x^3))`
-/

namespace A370176.P3683883655889718992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -7, 0, 6] n

end

end A370176.P3683883655889718992

namespace A370176

/-- `ogf((1-x-x^2)/(1-7x+6x^3))` -/
def P3683883655889718992.Spec : Prop :=
  ∀ n, P3683883655889718992.a n = A370176 n

end A370176

/-! ## A370176.P4758526384115793533

`6*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=6`
-/

namespace A370176.P4758526384115793533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * (a (n - 1) + a (n - 2)) - 1

end

end A370176.P4758526384115793533

namespace A370176

/-- `6*(a(n-1)+a(n-2))-1` -/
def P4758526384115793533.Spec : Prop :=
  ∀ n, P4758526384115793533.a n = A370176 n

end A370176

/-! ## A370176.P11963077642145168799

`∑[A155127(n)]`
-/

namespace A370176.P11963077642145168799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370176.P11963077642145168799

namespace A370176

/-- `∑[A155127(n)]` -/
def P11963077642145168799.Spec : Prop :=
  ∀ n, P11963077642145168799.a n = A370176 n

end A370176

/-!
# A370177: a(n) = floor(x*a(n-1)) for n > 0 where x = (7 + sqrt(77))/2, a(0) = 1.

The programs for A370177, the canonical program `A370177.P6279114644926676527` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370177 has offset 0).

The definition of A370177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370177.P6279114644926676527

`8*a(n-1)-7*a(n-3)` with `a(0)=1, a(1)=7, a(2)=55`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370177

/-- `8*a(n-1)-7*a(n-3)` -/
def P6279114644926676527.Spec : Prop :=
  ∀ n, P6279114644926676527.a n = A370177 n

theorem P6279114644926676527.correct : P6279114644926676527.Spec := by
  intro n
  simp only [A370177]

end A370177

/-! ## A370177.P2723432243362398474

`∑[ogf((-1+x+x^2)/(-1+7x+7x^2))]`
-/

namespace A370177.P2723432243362398474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -7, -7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370177.P2723432243362398474

namespace A370177

/-- `∑[ogf((-1+x+x^2)/(-1+7x+7x^2))]` -/
def P2723432243362398474.Spec : Prop :=
  ∀ n, P2723432243362398474.a n = A370177 n

end A370177

/-! ## A370177.P7805623516091034172

`ogf((1-x-x^2)/(1-8x+7x^3))`
-/

namespace A370177.P7805623516091034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -8, 0, 7] n

end

end A370177.P7805623516091034172

namespace A370177

/-- `ogf((1-x-x^2)/(1-8x+7x^3))` -/
def P7805623516091034172.Spec : Prop :=
  ∀ n, P7805623516091034172.a n = A370177 n

end A370177

/-! ## A370177.P10763450901296746887

`7*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=7`
-/

namespace A370177.P10763450901296746887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * (a (n - 1) + a (n - 2)) - 1

end

end A370177.P10763450901296746887

namespace A370177

/-- `7*(a(n-1)+a(n-2))-1` -/
def P10763450901296746887.Spec : Prop :=
  ∀ n, P10763450901296746887.a n = A370177 n

end A370177

/-! ## A370177.P7601474412722261069

`∑[A155130(n)]`
-/

namespace A370177.P7601474412722261069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370177.P7601474412722261069

namespace A370177

/-- `∑[A155130(n)]` -/
def P7601474412722261069.Spec : Prop :=
  ∀ n, P7601474412722261069.a n = A370177 n

end A370177

/-!
# A370178: a(n) = floor(x*a(n-1)) for n > 0 where x = 4 + 2*sqrt(6), a(0) = 1.

The programs for A370178, the canonical program `A370178.P18190965325194108617` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370178 has offset 0).

The definition of A370178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370178.P18190965325194108617

`9*a(n-1)-8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=71`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370178

/-- `9*a(n-1)-8*a(n-3)` -/
def P18190965325194108617.Spec : Prop :=
  ∀ n, P18190965325194108617.a n = A370178 n

theorem P18190965325194108617.correct : P18190965325194108617.Spec := by
  intro n
  simp only [A370178]

end A370178

/-! ## A370178.P15068810237844885651

`∑[ogf((-1+x+x^2)/(-1+8x+8x^2))]`
-/

namespace A370178.P15068810237844885651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -8, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370178.P15068810237844885651

namespace A370178

/-- `∑[ogf((-1+x+x^2)/(-1+8x+8x^2))]` -/
def P15068810237844885651.Spec : Prop :=
  ∀ n, P15068810237844885651.a n = A370178 n

end A370178

/-! ## A370178.P8460395218596066738

`ogf((1-x-x^2)/(1-9x+8x^3))`
-/

namespace A370178.P8460395218596066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -9, 0, 8] n

end

end A370178.P8460395218596066738

namespace A370178

/-- `ogf((1-x-x^2)/(1-9x+8x^3))` -/
def P8460395218596066738.Spec : Prop :=
  ∀ n, P8460395218596066738.a n = A370178 n

end A370178

/-! ## A370178.P15031076372479466724

`8*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=8`
-/

namespace A370178.P15031076372479466724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * (a (n - 1) + a (n - 2)) - 1

end

end A370178.P15031076372479466724

namespace A370178

/-- `8*(a(n-1)+a(n-2))-1` -/
def P15031076372479466724.Spec : Prop :=
  ∀ n, P15031076372479466724.a n = A370178 n

end A370178

/-! ## A370178.P5949523657222363463

`∑[A155132(n)]`
-/

namespace A370178.P5949523657222363463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370178.P5949523657222363463

namespace A370178

/-- `∑[A155132(n)]` -/
def P5949523657222363463.Spec : Prop :=
  ∀ n, P5949523657222363463.a n = A370178 n

end A370178

/-!
# A370179: a(n) = floor(x*a(n-1)) for n > 0 where x = (9 + 3*sqrt(13))/2, a(0) = 1.

The programs for A370179, the canonical program `A370179.P9530412253200602903` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370179 has offset 0).

The definition of A370179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370179.P9530412253200602903

`10*a(n-1)-9*a(n-3)` with `a(0)=1, a(1)=9, a(2)=89`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370179

/-- `10*a(n-1)-9*a(n-3)` -/
def P9530412253200602903.Spec : Prop :=
  ∀ n, P9530412253200602903.a n = A370179 n

theorem P9530412253200602903.correct : P9530412253200602903.Spec := by
  intro n
  simp only [A370179]

end A370179

/-! ## A370179.P12134138983323648534

`∑[ogf((-1+x+x^2)/(-1+9x+9x^2))]`
-/

namespace A370179.P12134138983323648534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -9, -9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370179.P12134138983323648534

namespace A370179

/-- `∑[ogf((-1+x+x^2)/(-1+9x+9x^2))]` -/
def P12134138983323648534.Spec : Prop :=
  ∀ n, P12134138983323648534.a n = A370179 n

end A370179

/-! ## A370179.P9535390418381360508

`ogf((1-x-x^2)/(1-10x+9x^3))`
-/

namespace A370179.P9535390418381360508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -10, 0, 9] n

end

end A370179.P9535390418381360508

namespace A370179

/-- `ogf((1-x-x^2)/(1-10x+9x^3))` -/
def P9535390418381360508.Spec : Prop :=
  ∀ n, P9535390418381360508.a n = A370179 n

end A370179

/-! ## A370179.P3792027336017269224

`∑[A155144(n)]`
-/

namespace A370179.P3792027336017269224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370179.P3792027336017269224

namespace A370179

/-- `∑[A155144(n)]` -/
def P3792027336017269224.Spec : Prop :=
  ∀ n, P3792027336017269224.a n = A370179 n

end A370179

/-! ## A370179.P2250445418298732023

`A155144(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A370179.P2250445418298732023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155144 n + a (A028310 n - 1).toNat

end

end A370179.P2250445418298732023

namespace A370179

/-- `A155144(n)+a(A028310(n)-1)` -/
def P2250445418298732023.Spec : Prop :=
  ∀ n, P2250445418298732023.a n = A370179 n

end A370179

/-!
# A370180: Size of the group Z_3*/(Z_3*)^n, where Z_3 is the ring of 3-adic integers.

The programs for A370180, the canonical program `A370180.P11085315799731063641` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370180 has offset 1).

The definition of A370180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370180.P7930753751446199944

`gcd(n+1, 2*3^dr(n))`
-/

namespace A370180.P7930753751446199944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (2 * 3 ^ SequenceMachineLib.digitalRoot (n : ℤ))

end

end A370180.P7930753751446199944

namespace A370180

/-- `gcd(n+1, 2*3^dr(n))` -/
def P7930753751446199944.Spec : Prop :=
  ∀ n, (P7930753751446199944.a n : ℤ) = A370180 (n + 1)

end A370180

/-! ## A370180.P11085315799731063641

`gcd(n+1, A259364(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370180

/-- `gcd(n+1, A259364(n))` -/
def P11085315799731063641.Spec : Prop :=
  ∀ n, (P11085315799731063641.a n : ℤ) = A370180 (n + 1)

theorem P11085315799731063641.correct : P11085315799731063641.Spec := by
  intro n
  simp only [A370180, Nat.add_sub_cancel]

end A370180

/-! ## A370180.P2724472635268602124

`A370565(n+1)/(n+1)`
-/

namespace A370180.P2724472635268602124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370565 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370180.P2724472635268602124

namespace A370180

/-- `A370565(n+1)/(n+1)` -/
def P2724472635268602124.Spec : Prop :=
  ∀ n, P2724472635268602124.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P10606309110800777880

`A259445(A065331(n+1))`
-/

namespace A370180.P10606309110800777880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (A065331 (n + 1)).toNat

end

end A370180.P10606309110800777880

namespace A370180

/-- `A259445(A065331(n+1))` -/
def P10606309110800777880.Spec : Prop :=
  ∀ n, P10606309110800777880.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P7700199413810276558

`A000034(n)*A038500(n+1)`
-/

namespace A370180.P7700199413810276558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A038500 (n + 1)

end

end A370180.P7700199413810276558

namespace A370180

/-- `A000034(n)*A038500(n+1)` -/
def P7700199413810276558.Spec : Prop :=
  ∀ n, P7700199413810276558.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P16568489528464605610

`gcd(A006047(n), A259445(n+1))`
-/

namespace A370180.P16568489528464605610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006047 n) (A259445 (n + 1))

end

end A370180.P16568489528464605610

namespace A370180

/-- `gcd(A006047(n), A259445(n+1))` -/
def P16568489528464605610.Spec : Prop :=
  ∀ n, (P16568489528464605610.a n : ℤ) = A370180 (n + 1)

end A370180

/-! ## A370180.P7972321281037668984

`(A000035(n)+1)*A038500(n+1)`
-/

namespace A370180.P7972321281037668984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A038500 (n + 1)

end

end A370180.P7972321281037668984

namespace A370180

/-- `(A000035(n)+1)*A038500(n+1)` -/
def P7972321281037668984.Spec : Prop :=
  ∀ n, P7972321281037668984.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P1007801344934378647

`A065331(n+1)/A160467(n+1)`
-/

namespace A370180.P1007801344934378647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ)

end

end A370180.P1007801344934378647

namespace A370180

/-- `A065331(n+1)/A160467(n+1)` -/
def P1007801344934378647.Spec : Prop :=
  ∀ n, P1007801344934378647.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P16976718155039832534

`A259445(n+1)/A065330(n+1)`
-/

namespace A370180.P16976718155039832534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A065330 (n + 1) : ℚ)

end

end A370180.P16976718155039832534

namespace A370180

/-- `A259445(n+1)/A065330(n+1)` -/
def P16976718155039832534.Spec : Prop :=
  ∀ n, P16976718155039832534.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P12381058861895116823

`(n+1)/A384042(A038502(n+1))`
-/

namespace A370180.P12381058861895116823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A384042 (A038502 (n + 1)).toNat : ℚ)

end

end A370180.P12381058861895116823

namespace A370180

/-- `(n+1)/A384042(A038502(n+1))` -/
def P12381058861895116823.Spec : Prop :=
  ∀ n, P12381058861895116823.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P13887870376997492313

`A038500(n+1)*A100661(A006519(n+1))`
-/

namespace A370180.P13887870376997492313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A100661 (A006519 (n + 1)).toNat

end

end A370180.P13887870376997492313

namespace A370180

/-- `A038500(n+1)*A100661(A006519(n+1))` -/
def P13887870376997492313.Spec : Prop :=
  ∀ n, P13887870376997492313.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P1684279005136757927

`A000265(n+1)/A065330(n+1)*A000034(n)`
-/

namespace A370180.P1684279005136757927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A065330 (n + 1) : ℚ) * (A000034 n : ℚ)

end

end A370180.P1684279005136757927

namespace A370180

/-- `A000265(n+1)/A065330(n+1)*A000034(n)` -/
def P1684279005136757927.Spec : Prop :=
  ∀ n, P1684279005136757927.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P17289594903131460577

`A065331(n+1)/A006519(n+1)*A000034(n)`
-/

namespace A370180.P17289594903131460577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ) * (A000034 n : ℚ)

end

end A370180.P17289594903131460577

namespace A370180

/-- `A065331(n+1)/A006519(n+1)*A000034(n)` -/
def P17289594903131460577.Spec : Prop :=
  ∀ n, P17289594903131460577.a n = (A370180 (n + 1) : ℚ)

end A370180

/-! ## A370180.P9647718341003355290

`(A001651(n+2)-A001651(n+1))*A038500(n+1)`
-/

namespace A370180.P9647718341003355290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 2) - A001651 (n + 1)) * A038500 (n + 1)

end

end A370180.P9647718341003355290

namespace A370180

/-- `(A001651(n+2)-A001651(n+1))*A038500(n+1)` -/
def P9647718341003355290.Spec : Prop :=
  ∀ n, P9647718341003355290.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P6669143999503965092

`gcd(A274601(n+1), A274601(A274601(n+1)))`
-/

namespace A370180.P6669143999503965092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274601 (n + 1)) (A274601 (A274601 (n + 1)).toNat)

end

end A370180.P6669143999503965092

namespace A370180

/-- `gcd(A274601(n+1), A274601(A274601(n+1)))` -/
def P6669143999503965092.Spec : Prop :=
  ∀ n, (P6669143999503965092.a n : ℤ) = A370180 (n + 1)

end A370180

/-! ## A370180.P14021083642372563105

`A038500(n+1)*A100661(A240226(n+1))`
-/

namespace A370180.P14021083642372563105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A100661 (A240226 (n + 1)).toNat

end

end A370180.P14021083642372563105

namespace A370180

/-- `A038500(n+1)*A100661(A240226(n+1))` -/
def P14021083642372563105.Spec : Prop :=
  ∀ n, P14021083642372563105.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P7824533030685216533

`abs(Δ[A343766(n)])`
-/

namespace A370180.P7824533030685216533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A370180.P7824533030685216533

namespace A370180

/-- `abs(Δ[A343766(n)])` -/
def P7824533030685216533.Spec : Prop :=
  ∀ n, P7824533030685216533.a n = A370180 (n + 1)

end A370180

/-! ## A370180.P931396618169816190

`gcd(A006000(n), A038754(n))`
-/

namespace A370180.P931396618169816190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006000 n) (A038754 n)

end

end A370180.P931396618169816190

namespace A370180

/-- `gcd(A006000(n), A038754(n))` -/
def P931396618169816190.Spec : Prop :=
  ∀ n, (P931396618169816190.a n : ℤ) = A370180 (n + 1)

end A370180

/-! ## A370180.P580739250349200614

`gcd(A053717(n), A117855(n+1))`
-/

namespace A370180.P580739250349200614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053717 n) (A117855 (n + 1))

end

end A370180.P580739250349200614

namespace A370180

/-- `gcd(A053717(n), A117855(n+1))` -/
def P580739250349200614.Spec : Prop :=
  ∀ n, (P580739250349200614.a n : ℤ) = A370180 (n + 1)

end A370180

/-! ## A370180.P3492749992775324795

`gcd(A091574(n), A225367(n+1))`
-/

namespace A370180.P3492749992775324795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091574 n) (A225367 (n + 1))

end

end A370180.P3492749992775324795

namespace A370180

/-- `gcd(A091574(n), A225367(n+1))` -/
def P3492749992775324795.Spec : Prop :=
  ∀ n, (P3492749992775324795.a n : ℤ) = A370180 (n + 1)

end A370180

/-!
# A370181: Size of the group Z_5*/(Z_5*)^n, where Z_5 is the ring of 5-adic integers.

The programs for A370181, the canonical program `A370181.P1112331727695384531` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370181 has offset 1).

The definition of A370181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370181.P2617707206799108871

`A370566(n+1)/(n+1)`
-/

namespace A370181.P2617707206799108871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370566 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370181.P2617707206799108871

namespace A370181

/-- `A370566(n+1)/(n+1)` -/
def P2617707206799108871.Spec : Prop :=
  ∀ n, P2617707206799108871.a n = (A370181 (n + 1) : ℚ)

end A370181

/-! ## A370181.P17894903583000190385

`A377518(A132741(n+1))`
-/

namespace A370181.P17894903583000190385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (A132741 (n + 1)).toNat

end

end A370181.P17894903583000190385

namespace A370181

/-- `A377518(A132741(n+1))` -/
def P17894903583000190385.Spec : Prop :=
  ∀ n, P17894903583000190385.a n = A370181 (n + 1)

end A370181

/-! ## A370181.P5365036283542644619

`gcd(A017273(n), A377518(n+1))`
-/

namespace A370181.P5365036283542644619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017273 n) (A377518 (n + 1))

end

end A370181.P5365036283542644619

namespace A370181

/-- `gcd(A017273(n), A377518(n+1))` -/
def P5365036283542644619.Spec : Prop :=
  ∀ n, (P5365036283542644619.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P1112331727695384531

`lcm(A060904(n+1), A133186(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A370181

/-- `lcm(A060904(n+1), A133186(n))` -/
def P1112331727695384531.Spec : Prop :=
  ∀ n, (P1112331727695384531.a n : ℤ) = A370181 (n + 1)

theorem P1112331727695384531.correct : P1112331727695384531.Spec := by
  intro n
  simp only [A370181, Nat.add_sub_cancel]

end A370181

/-! ## A370181.P14344555161146873380

`(n+1)/A132739(A060819(n+1))`
-/

namespace A370181.P14344555161146873380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A060819 (n + 1)).toNat : ℚ)

end

end A370181.P14344555161146873380

namespace A370181

/-- `(n+1)/A132739(A060819(n+1))` -/
def P14344555161146873380.Spec : Prop :=
  ∀ n, P14344555161146873380.a n = (A370181 (n + 1) : ℚ)

end A370181

/-! ## A370181.P3355491129849895044

`(n+1)/A132739(A106621(n+1))`
-/

namespace A370181.P3355491129849895044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A106621 (n + 1)).toNat : ℚ)

end

end A370181.P3355491129849895044

namespace A370181

/-- `(n+1)/A132739(A106621(n+1))` -/
def P3355491129849895044.Spec : Prop :=
  ∀ n, P3355491129849895044.a n = (A370181 (n + 1) : ℚ)

end A370181

/-! ## A370181.P3998692853425566254

`gcd(A038502(n+1), A140730(n))`
-/

namespace A370181.P3998692853425566254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038502 (n + 1)) (A140730 n)

end

end A370181.P3998692853425566254

namespace A370181

/-- `gcd(A038502(n+1), A140730(n))` -/
def P3998692853425566254.Spec : Prop :=
  ∀ n, (P3998692853425566254.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P15984023604772773380

`gcd(A072436(n+1), A223346(A072436(n+1)))`
-/

namespace A370181.P15984023604772773380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072436 (n + 1)) (A223346 (A072436 (n + 1)).toNat)

end

end A370181.P15984023604772773380

namespace A370181

/-- `gcd(A072436(n+1), A223346(A072436(n+1)))` -/
def P15984023604772773380.Spec : Prop :=
  ∀ n, (P15984023604772773380.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P4125749993591432602

`gcd(n+1, A133632(n+1))`
-/

namespace A370181.P4125749993591432602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A133632 (n + 1))

end

end A370181.P4125749993591432602

namespace A370181

/-- `gcd(n+1, A133632(n+1))` -/
def P4125749993591432602.Spec : Prop :=
  ∀ n, (P4125749993591432602.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P16683472196560629578

`gcd(A005915(n), A117857(n+1))`
-/

namespace A370181.P16683472196560629578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005915 n) (A117857 (n + 1))

end

end A370181.P16683472196560629578

namespace A370181

/-- `gcd(A005915(n), A117857(n+1))` -/
def P16683472196560629578.Spec : Prop :=
  ∀ n, (P16683472196560629578.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P11331250313062987076

`gcd(A072436(n+1), A223346(n+1))`
-/

namespace A370181.P11331250313062987076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072436 (n + 1)) (A223346 (n + 1))

end

end A370181.P11331250313062987076

namespace A370181

/-- `gcd(A072436(n+1), A223346(n+1))` -/
def P11331250313062987076.Spec : Prop :=
  ∀ n, (P11331250313062987076.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P6112229397669872693

`gcd(A099603(n), A140730(n))`
-/

namespace A370181.P6112229397669872693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099603 n) (A140730 n)

end

end A370181.P6112229397669872693

namespace A370181

/-- `gcd(A099603(n), A140730(n))` -/
def P6112229397669872693.Spec : Prop :=
  ∀ n, (P6112229397669872693.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P4645474124176721174

`gcd(A003163(n), A132741(n+1))`
-/

namespace A370181.P4645474124176721174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003163 n) (A132741 (n + 1))

end

end A370181.P4645474124176721174

namespace A370181

/-- `gcd(A003163(n), A132741(n+1))` -/
def P4645474124176721174.Spec : Prop :=
  ∀ n, (P4645474124176721174.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P847985387447745230

`gcd(n+1, A005054(n))`
-/

namespace A370181.P847985387447745230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005054 n)

end

end A370181.P847985387447745230

namespace A370181

/-- `gcd(n+1, A005054(n))` -/
def P847985387447745230.Spec : Prop :=
  ∀ n, (P847985387447745230.a n : ℤ) = A370181 (n + 1)

end A370181

/-! ## A370181.P4216361556629137373

`gcd(A007948(n+1), A161125(n))`
-/

namespace A370181.P4216361556629137373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007948 (n + 1)) (A161125 n)

end

end A370181.P4216361556629137373

namespace A370181

/-- `gcd(A007948(n+1), A161125(n))` -/
def P4216361556629137373.Spec : Prop :=
  ∀ n, (P4216361556629137373.a n : ℤ) = A370181 (n + 1)

end A370181

/-!
# A370182: Size of the group Z_7*/(Z_7*)^n, where Z_7 is the ring of 7-adic integers.

The programs for A370182, the canonical program `A370182.P17915311671938409757` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370182 has offset 1).

The definition of A370182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370182.P18244523135590086717

`A370567(n+1)/(n+1)`
-/

namespace A370182.P18244523135590086717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370567 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370182.P18244523135590086717

namespace A370182

/-- `A370567(n+1)/(n+1)` -/
def P18244523135590086717.Spec : Prop :=
  ∀ n, P18244523135590086717.a n = (A370182 (n + 1) : ℚ)

end A370182

/-! ## A370182.P15096354784640744173

`A385555(n+1)/A242603(n+1)`
-/

namespace A370182.P15096354784640744173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385555 (n + 1) : ℚ) / (A242603 (n + 1) : ℚ)

end

end A370182.P15096354784640744173

namespace A370182

/-- `A385555(n+1)/A242603(n+1)` -/
def P15096354784640744173.Spec : Prop :=
  ∀ n, P15096354784640744173.a n = (A370182 (n + 1) : ℚ)

end A370182

/-! ## A370182.P17915311671938409757

`gcd(n+1, A055272(A001227(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370182

/-- `gcd(n+1, A055272(A001227(n+1)))` -/
def P17915311671938409757.Spec : Prop :=
  ∀ n, (P17915311671938409757.a n : ℤ) = A370182 (n + 1)

theorem P17915311671938409757.correct : P17915311671938409757.Spec := by
  intro n
  simp only [A370182, Nat.add_sub_cancel]

end A370182

/-! ## A370182.P12053613886577837631

`gcd(n+1, A055272(A003056(n)))`
-/

namespace A370182.P12053613886577837631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055272 (A003056 n).toNat)

end

end A370182.P12053613886577837631

namespace A370182

/-- `gcd(n+1, A055272(A003056(n)))` -/
def P12053613886577837631.Spec : Prop :=
  ∀ n, (P12053613886577837631.a n : ℤ) = A370182 (n + 1)

end A370182

/-! ## A370182.P15678524939828900998

`gcd(xor(n, -1), A085538(A016777(2*(n+2))))`
-/

namespace A370182.P15678524939828900998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A085538 (A016777 (2 * (n + 2))).toNat)

end

end A370182.P15678524939828900998

namespace A370182

/-- `gcd(xor(n, -1), A085538(A016777(2*(n+2))))` -/
def P15678524939828900998.Spec : Prop :=
  ∀ n, (P15678524939828900998.a n : ℤ) = A370182 (n + 1)

end A370182

/-! ## A370182.P5610953927815990061

`gcd(A027849(n), A117859(n+1))`
-/

namespace A370182.P5610953927815990061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027849 n) (A117859 (n + 1))

end

end A370182.P5610953927815990061

namespace A370182

/-- `gcd(A027849(n), A117859(n+1))` -/
def P5610953927815990061.Spec : Prop :=
  ∀ n, (P5610953927815990061.a n : ℤ) = A370182 (n + 1)

end A370182

/-! ## A370182.P16666785321289656279

`gcd(n+1, A055272(n))`
-/

namespace A370182.P16666785321289656279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055272 n)

end

end A370182.P16666785321289656279

namespace A370182

/-- `gcd(n+1, A055272(n))` -/
def P16666785321289656279.Spec : Prop :=
  ∀ n, (P16666785321289656279.a n : ℤ) = A370182 (n + 1)

end A370182

/-! ## A370182.P16213845338522418168

`A370050(A000096(n+3)-2)`
-/

namespace A370182.P16213845338522418168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370050 (A000096 (n + 3) - 2).toNat

end

end A370182.P16213845338522418168

namespace A370182

/-- `A370050(A000096(n+3)-2)` -/
def P16213845338522418168.Spec : Prop :=
  ∀ n, P16213845338522418168.a n = A370182 (n + 1)

end A370182

/-! ## A370182.P12661573884205691516

`A370050((n+3)²-A000124(n+1))`
-/

namespace A370182.P12661573884205691516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370050 (((n + 3) ^ 2 : ℤ) - A000124 (n + 1)).toNat

end

end A370182.P12661573884205691516

namespace A370182

/-- `A370050((n+3)²-A000124(n+1))` -/
def P12661573884205691516.Spec : Prop :=
  ∀ n, P12661573884205691516.a n = A370182 (n + 1)

end A370182

/-! ## A370182.P5257480238066917581

`gcd(A000027(n+1), A272139(A074328(n+1)))`
-/

namespace A370182.P5257480238066917581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A272139 (A074328 (n + 1)).toNat)

end

end A370182.P5257480238066917581

namespace A370182

/-- `gcd(A000027(n+1), A272139(A074328(n+1)))` -/
def P5257480238066917581.Spec : Prop :=
  ∀ n, (P5257480238066917581.a n : ℤ) = A370182 (n + 1)

end A370182

/-!
# A370183: Coefficient of x^n in the expansion of ( (1+x) * (1+x+x^3) )^n.

The programs for A370183, there is no canonical definition to state claims against.
-/

/-! ## A370183.P7340068102298375728

`A157271(A151127(n))`
-/

namespace A370183.P7340068102298375728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A151127 n).toNat

end

end A370183.P7340068102298375728

/-! ## A370183.P2831288843955753722

`A034973(A045379(n)+1)`
-/

namespace A370183.P2831288843955753722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A045379 n + 1).toNat

end

end A370183.P2831288843955753722

/-!
# A370184: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x+x^3) )^n.

The programs for A370184, there is no canonical definition to state claims against.
-/

/-! ## A370184.P7129450397679328479

`∑[A117910(A249639(n+1))]`
-/

namespace A370184.P7129450397679328479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A249639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370184.P7129450397679328479

/-!
# A370185: Coefficient of x^n in the expansion of (1+x+x^3)^(2*n).

The programs for A370185, there is no canonical definition to state claims against.
-/

/-! ## A370185.P11200126534202023293

`A192440(2*n)`
-/

namespace A370185.P11200126534202023293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192440 (2 * n)

end

end A370185.P11200126534202023293

/-! ## A370185.P3280947724769635284

`record[A192440(n)/(-1)^n]`
-/

namespace A370185.P3280947724769635284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192440 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370185.P3280947724769635284

/-! ## A370185.P8927634047598359298

`A038717(6*n²)`
-/

namespace A370185.P8927634047598359298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (6 * n ^ 2)

end

end A370185.P8927634047598359298

/-!
# A370186: Coefficient of x^n in the expansion of ( (1+x) * (1+x+x^3)^2 )^n.

The programs for A370186, there is no canonical definition to state claims against.
-/

/-! ## A370186.P5767831207504043235

`A020725(A181067(n+1))-A000142(n)`
-/

namespace A370186.P5767831207504043235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A181067 (n + 1)).toNat - A000142 n

end

end A370186.P5767831207504043235

/-!
# A370187: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x+x^3)^2 )^n.

The programs for A370187, there is no canonical definition to state claims against.
-/

/-! ## A370187.P11546273653886381388

`A073526(A090017(n+1))`
-/

namespace A370187.P11546273653886381388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (A090017 (n + 1)).toNat

end

end A370187.P11546273653886381388

/-!
# A370188: a(n) = sqrt((A114052(n)^2 - 1)/27)/5.

The programs for A370188, the canonical program `A370188.P15568161150400754513` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370188 has offset 0).

The definition of A370188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370188.P15568161150400754513

`sqrt((A114052(n)²-1)/27)/5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370188

/-- `sqrt((A114052(n)²-1)/27)/5` -/
def P15568161150400754513.Spec : Prop :=
  ∀ n, P15568161150400754513.a n = (A370188 n : ℝ)

end A370188

/-! ## A370188.P96032736224012860

`52*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A370188.P96032736224012860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  52 * a (n - 1) - a (n - 2)

end

end A370188.P96032736224012860

namespace A370188

/-- `52*a(n-1)-a(n-2)` -/
def P96032736224012860.Spec : Prop :=
  ∀ n, P96032736224012860.a n = A370188 n

end A370188

/-! ## A370188.P8781434917460829952

`A001353(3*n)/15`
-/

namespace A370188.P8781434917460829952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (3 * n) : ℚ) / 15

end

end A370188.P8781434917460829952

namespace A370188

/-- `A001353(3*n)/15` -/
def P8781434917460829952.Spec : Prop :=
  ∀ n, P8781434917460829952.a n = (A370188 n : ℚ)

end A370188

/-! ## A370188.P16671178350867643903

`A052530(3*n)/30`
-/

namespace A370188.P16671178350867643903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052530 (3 * n) : ℚ) / 30

end

end A370188.P16671178350867643903

namespace A370188

/-- `A052530(3*n)/30` -/
def P16671178350867643903.Spec : Prop :=
  ∀ n, P16671178350867643903.a n = (A370188 n : ℚ)

end A370188

/-! ## A370188.P3954136952850770548

`∑[A041043(2*n)]-A041043(2*n)`
-/

namespace A370188.P3954136952850770548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041043 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A041043 (2 * n)

end

end A370188.P3954136952850770548

namespace A370188

/-- `∑[A041043(2*n)]-A041043(2*n)` -/
def P3954136952850770548.Spec : Prop :=
  ∀ n, P3954136952850770548.a n = A370188 n

end A370188

/-! ## A370188.P18089194657060995928

`A042299(2*n+1)-A042299(2*n)`
-/

namespace A370188.P18089194657060995928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042299 (2 * n + 1) - A042299 (2 * n)

end

end A370188.P18089194657060995928

namespace A370188

/-- `A042299(2*n+1)-A042299(2*n)` -/
def P18089194657060995928.Spec : Prop :=
  ∀ n, P18089194657060995928.a n = A370188 n

end A370188

/-!
# A370189: Imaginary part of (1 + n*i)^n, where i is the imaginary unit.

The programs for A370189, there is no canonical definition to state claims against.
-/

/-! ## A370189.P12012295190208601505

`n*A349041(A195211(n))`
-/

namespace A370189.P12012295190208601505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A349041 (A195211 n).toNat

end

end A370189.P12012295190208601505

/-!
# A370191: a(n) is the numerator of the real part of 1/(1+i/2)^n, where i is the imaginary unit.

The programs for A370191, the canonical program `A370191.P15879030152017860517` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370191 has offset 0).

The definition of A370191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370191.P10541178542015006094

`ogf((1-4x)/(1-8x+20x^2))`
-/

namespace A370191.P10541178542015006094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 20] n

end

end A370191.P10541178542015006094

namespace A370191

/-- `ogf((1-4x)/(1-8x+20x^2))` -/
def P10541178542015006094.Spec : Prop :=
  ∀ n, P10541178542015006094.a n = A370191 n

end A370191

/-! ## A370191.P15879030152017860517

`8*a(n-1)-20*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370191

/-- `8*a(n-1)-20*a(n-2)` -/
def P15879030152017860517.Spec : Prop :=
  ∀ n, P15879030152017860517.a n = A370191 n

theorem P15879030152017860517.correct : P15879030152017860517.Spec := by
  intro n
  simp only [A370191]

end A370191

/-! ## A370191.P5221949231224429643

`2^n*A139011(n)`
-/

namespace A370191.P5221949231224429643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A139011 n

end

end A370191.P5221949231224429643

namespace A370191

/-- `2^n*A139011(n)` -/
def P5221949231224429643.Spec : Prop :=
  ∀ n, P5221949231224429643.a n = A370191 n

end A370191

/-! ## A370191.P863387366019298078

`A139011(n)*A152166(2*n)`
-/

namespace A370191.P863387366019298078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n * A152166 (2 * n)

end

end A370191.P863387366019298078

namespace A370191

/-- `A139011(n)*A152166(2*n)` -/
def P863387366019298078.Spec : Prop :=
  ∀ n, P863387366019298078.a n = A370191 n

end A370191

/-! ## A370191.P11083660449748286675

`A139011(n)*A303727(A000217(n+1))`
-/

namespace A370191.P11083660449748286675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n * A303727 (A000217 (n + 1)).toNat

end

end A370191.P11083660449748286675

namespace A370191

/-- `A139011(n)*A303727(A000217(n+1))` -/
def P11083660449748286675.Spec : Prop :=
  ∀ n, P11083660449748286675.a n = A370191 n

end A370191

/-!
# A370192: a(n) is the numerator of the imaginary part of 1/(1+i/2)^n, where i is the imaginary unit.

The programs for A370192, the canonical program `A370192.P17544403639133625234` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370192 has offset 0).

The definition of A370192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370192.P4336511319577685218

`ogf(-2x/(1-8x+20x^2))`
-/

namespace A370192.P4336511319577685218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -2] [1, -8, 20] n

end

end A370192.P4336511319577685218

namespace A370192

/-- `ogf(-2x/(1-8x+20x^2))` -/
def P4336511319577685218.Spec : Prop :=
  ∀ n, P4336511319577685218.a n = A370192 n

end A370192

/-! ## A370192.P17544403639133625234

`8*a(n-1)-20*a(n-2)` with `a(0)=0, a(1)=-2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370192

/-- `8*a(n-1)-20*a(n-2)` -/
def P17544403639133625234.Spec : Prop :=
  ∀ n, P17544403639133625234.a n = A370192 n

theorem P17544403639133625234.correct : P17544403639133625234.Spec := by
  intro n
  simp only [A370192]

end A370192

/-!
# A370194: Coefficient of x^n in the expansion of ( (1+x) * (1+x^2)^2 )^n.

The programs for A370194, there is no canonical definition to state claims against.
-/

/-! ## A370194.P11605427457180333624

`A116382(∑[4*n])`
-/

namespace A370194.P11605427457180333624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116382 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370194.P11605427457180333624

/-! ## A370194.P10958478749437258330

`A116382(A046092(n))%A099262(n+3)`
-/

namespace A370194.P10958478749437258330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116382 (A046092 n).toNat) (A099262 (n + 3))

end

end A370194.P10958478749437258330

/-!
# A370195: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x^2)^2 )^n.

The programs for A370195, there is no canonical definition to state claims against.
-/

/-! ## A370195.P12882339010615042678

`A213742(∑[4*n])`
-/

namespace A370195.P12882339010615042678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370195.P12882339010615042678

/-! ## A370195.P11264616813059410995

`A008287(6*n²)`
-/

namespace A370195.P11264616813059410995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (6 * n ^ 2)

end

end A370195.P11264616813059410995

/-! ## A370195.P10891806130873165396

`A213887(A062728(n))`
-/

namespace A370195.P10891806130873165396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A062728 n).toNat

end

end A370195.P10891806130873165396

/-! ## A370195.P11198196962212330804

`A295555(A062728(2*n)+n)`
-/

namespace A370195.P11198196962212330804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295555 (A062728 (2 * n) + (n : ℤ)).toNat

end

end A370195.P11198196962212330804

/-! ## A370195.P155077568550317706

`A295555(A062725(2*n)-n)`
-/

namespace A370195.P155077568550317706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295555 (A062725 (2 * n) - (n : ℤ)).toNat

end

end A370195.P155077568550317706

/-!
# A370196: Coefficient of x^n in the expansion of ( (1+x)^2 * (1+x^3) )^n.

The programs for A370196, there is no canonical definition to state claims against.
-/

/-! ## A370196.P4342144706736045480

`A370213(A001096(n))`
-/

namespace A370196.P4342144706736045480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370213 (A001096 n).toNat

end

end A370196.P4342144706736045480

/-! ## A370196.P3988882955058035215

`∑[A261585(A030221(n))]`
-/

namespace A370196.P3988882955058035215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A030221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370196.P3988882955058035215

/-!
# A370197: a(n) is the number of ways to place n indistinguishable balls into n distinguishable boxes with at least 4 boxes remaining empty.

The programs for A370197, there is no canonical definition to state claims against.
-/

/-! ## A370197.P5282285350439752447

`A179792(n+1)%A374618(A108917(n))`
-/

namespace A370197.P5282285350439752447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179792 (n + 1)) (A374618 (A108917 n).toNat)

end

end A370197.P5282285350439752447

/-!
# A370199: a(n) is the number of odd polyominoes with n cells.

The programs for A370199, there is no canonical definition to state claims against.
-/

/-! ## A370199.P15656636336758609162

`A267302(floor(5*2^n/3)-n)`
-/

namespace A370199.P15656636336758609162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267302 (⌊5 * ((2 ^ n : ℚ) / 3)⌋ - (n : ℤ)).toNat

end

end A370199.P15656636336758609162

/-! ## A370199.P15556952582250052796

`∩[A356395(n+1), A386488(n+1)]`
-/

namespace A370199.P15556952582250052796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370199.P15556952582250052796

