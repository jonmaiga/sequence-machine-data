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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A363800: Expansion of Product_{k>0} (1 - x^(7*k-5)) * (1 - x^(7*k-2)) * (1 - x^(7*k)).

The programs for A363800, there is no canonical definition to state claims against.
-/

/-! ## A363800.P6130673794849805948

`A116915(A259225(n)+n)`
-/

namespace A363800.P6130673794849805948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116915 (A259225 n + (n : ℤ)).toNat

end

end A363800.P6130673794849805948

/-! ## A363800.P4701110615634824904

`A133985(A238344(2*n)+∪[2*(n+1)², (n+1)²])`
-/

namespace A363800.P4701110615634824904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (A238344 (2 * n) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)).toNat

end

end A363800.P4701110615634824904

/-! ## A363800.P8311897406177242520

`A010815(A124574(n+2)+A095402(n+4))`
-/

namespace A363800.P8311897406177242520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A124574 (n + 2) + A095402 (n + 4)).toNat

end

end A363800.P8311897406177242520

/-! ## A363800.P18166464952472055607

`A167374(A340150(n+1)+A008292(n+5))`
-/

namespace A363800.P18166464952472055607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A340150 (n + 1) + A008292 (n + 5)).toNat

end

end A363800.P18166464952472055607

/-! ## A363800.P14357863560306789956

`A010815(A000720(n+1)*A132813(n+4))`
-/

namespace A363800.P14357863560306789956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000720 (n + 1) * A132813 (n + 4)).toNat

end

end A363800.P14357863560306789956

/-!
# A363801: Expansion of Product_{k>0} (1 - x^(7*k-4)) * (1 - x^(7*k-3)) * (1 - x^(7*k)).

The programs for A363801, there is no canonical definition to state claims against.
-/

/-! ## A363801.P7225651559441376223

`A363800(9*n)`
-/

namespace A363801.P7225651559441376223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363800 (9 * n)

end

end A363801.P7225651559441376223

/-! ## A363801.P11915460721309066413

`A232714(5*5*n)`
-/

namespace A363801.P11915460721309066413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232714 (5 * (5 * n))

end

end A363801.P11915460721309066413

/-! ## A363801.P16002892744512873629

`char[A057570(n+1)]*A057077(A057570(2*n+3))`
-/

namespace A363801.P16002892744512873629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057570 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057077 (A057570 (2 * n + 3)).toNat

end

end A363801.P16002892744512873629

/-! ## A363801.P14209445507975005781

`A010815(A145204(n+1)%A180514(n+1))`
-/

namespace A363801.P14209445507975005781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A145204 (n + 1)) (A180514 (n + 1))).toNat

end

end A363801.P14209445507975005781

/-!
# A363803: a(n) = Sum_{d|n, d == 0, 2, or 5 mod 7} d.

The programs for A363803, there is no canonical definition to state claims against.
-/

/-! ## A363803.P15349276467890452384

`A133394(A390761(n+1))`
-/

namespace A363803.P15349276467890452384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133394 (A390761 (n + 1)).toNat

end

end A363803.P15349276467890452384

/-! ## A363803.P1467097583734516026

`A133394(n+1)%A000203(A162221(n))`
-/

namespace A363803.P1467097583734516026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133394 (n + 1)) (A000203 (A162221 n).toNat)

end

end A363803.P1467097583734516026

/-!
# A363804: a(n) = Sum_{d|n, d == 0, 3, or 4 mod 7} d.

The programs for A363804, there is no canonical definition to state claims against.
-/

/-! ## A363804.P1898335770976257083

`A050443(A004918(n+2))`
-/

namespace A363804.P1898335770976257083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050443 (A004918 (n + 2)).toNat

end

end A363804.P1898335770976257083

/-! ## A363804.P18145244285206005322

`A050443(C(A061921(n+1), n))`
-/

namespace A363804.P18145244285206005322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050443 (Nat.choose (A061921 (n + 1)).toNat n)

end

end A363804.P18145244285206005322

/-! ## A363804.P518375506891152022

`A050443(n%A362457(n+1)+1)`
-/

namespace A363804.P518375506891152022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050443 (Int.tmod (n : ℤ) (A362457 (n + 1)) + 1).toNat

end

end A363804.P518375506891152022

/-! ## A363804.P5752549627542749182

`A050443(n+1)%A076188(2*(n+2))`
-/

namespace A363804.P5752549627542749182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050443 (n + 1)) (A076188 (2 * (n + 2)))

end

end A363804.P5752549627542749182

/-! ## A363804.P14113881583759563717

`A135133(A341109(n))+A050443(n+1)`
-/

namespace A363804.P14113881583759563717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135133 (A341109 n).toNat + A050443 (n + 1)

end

end A363804.P14113881583759563717

/-!
# A363805: Number of divisors of n of the form 7*k + 3.

The programs for A363805, the canonical program `A363805.P6055793300366355232` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363805 has offset 1).

The definition of A363805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363805.P6055793300366355232

`∑{d}[n+1, A082784(#+4)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363805

/-- `∑{d}[n+1, A082784(#+4)]` -/
def P6055793300366355232.Spec : Prop :=
  ∀ n, P6055793300366355232.a n = A363805 (n + 1)

theorem P6055793300366355232.correct : P6055793300366355232.Spec := by
  intro n
  simp only [A363805, Nat.add_sub_cancel]

end A363805

/-! ## A363805.P14037795179376338755

`A363808(2*(n+1))-A363808((n+1)/2^val(n+1, 2))`
-/

namespace A363805.P14037795179376338755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (2 * (n + 1)) - A363808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363805.P14037795179376338755

namespace A363805

/-- `A363808(2*(n+1))-A363808((n+1)/2^val(n+1, 2))` -/
def P14037795179376338755.Spec : Prop :=
  ∀ n, P14037795179376338755.a n = A363805 (n + 1)

end A363805

/-! ## A363805.P11280705737656833999

`A371735(A284444(n+1)*A371735(3*n))`
-/

namespace A363805.P11280705737656833999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 (A284444 (n + 1) * A371735 (3 * n)).toNat

end

end A363805.P11280705737656833999

namespace A363805

/-- `A371735(A284444(n+1)*A371735(3*n))` -/
def P11280705737656833999.Spec : Prop :=
  ∀ n, P11280705737656833999.a n = A363805 (n + 1)

end A363805

/-! ## A363805.P4761108175629627452

`A125203(n+3)+A101638(A195522(n+1))`
-/

namespace A363805.P4761108175629627452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 3) + A101638 (A195522 (n + 1)).toNat

end

end A363805.P4761108175629627452

namespace A363805

/-- `A125203(n+3)+A101638(A195522(n+1))` -/
def P4761108175629627452.Spec : Prop :=
  ∀ n, P4761108175629627452.a n = A363805 (n + 1)

end A363805

/-! ## A363805.P10863345415225149290

`A124766(A284444(n+1)%A375400(3*n+4))`
-/

namespace A363805.P10863345415225149290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A284444 (n + 1)) (A375400 (3 * n + 4))).toNat

end

end A363805.P10863345415225149290

namespace A363805

/-- `A124766(A284444(n+1)%A375400(3*n+4))` -/
def P10863345415225149290.Spec : Prop :=
  ∀ n, P10863345415225149290.a n = A363805 (n + 1)

end A363805

/-!
# A363806: Number of divisors of n of the form 7*k + 4.

The programs for A363806, the canonical program `A363806.P10301958111429027824` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363806 has offset 1).

The definition of A363806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363806.P10301958111429027824

`A279061(2*(n+1))-A279061((n+1)/2^val(n+1, 2))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363806

/-- `A279061(2*(n+1))-A279061((n+1)/2^val(n+1, 2))` -/
def P10301958111429027824.Spec : Prop :=
  ∀ n, P10301958111429027824.a n = A363806 (n + 1)

theorem P10301958111429027824.correct : P10301958111429027824.Spec := by
  intro n
  simp only [A363806, Nat.add_sub_cancel]

end A363806

/-! ## A363806.P18362235676831124660

`A352516(lcm(A284445(n+1), A347456(2*(n+1))))`
-/

namespace A363806.P18362235676831124660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (Int.lcm (A284445 (n + 1)) (A347456 (2 * (n + 1))))

end

end A363806.P18362235676831124660

namespace A363806

/-- `A352516(lcm(A284445(n+1), A347456(2*(n+1))))` -/
def P18362235676831124660.Spec : Prop :=
  ∀ n, P18362235676831124660.a n = A363806 (n + 1)

end A363806

/-! ## A363806.P2674412389682571231

`A352516(A284445(n+1)%A340932(2*n+3))`
-/

namespace A363806.P2674412389682571231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (Int.tmod (A284445 (n + 1)) (A340932 (2 * n + 3))).toNat

end

end A363806.P2674412389682571231

namespace A363806

/-- `A352516(A284445(n+1)%A340932(2*n+3))` -/
def P2674412389682571231.Spec : Prop :=
  ∀ n, P2674412389682571231.a n = A363806 (n + 1)

end A363806

/-! ## A363806.P17626565068002008748

`ceil(A284445(n+1)/A096518(n+1))`
-/

namespace A363806.P17626565068002008748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284445 (n + 1) : ℚ) / (A096518 (n + 1) : ℚ)⌉

end

end A363806.P17626565068002008748

namespace A363806

/-- `ceil(A284445(n+1)/A096518(n+1))` -/
def P17626565068002008748.Spec : Prop :=
  ∀ n, P17626565068002008748.a n = A363806 (n + 1)

end A363806

/-! ## A363806.P4516423432259897451

`ceil(A284445(n+1)/A213356(n+1))`
-/

namespace A363806.P4516423432259897451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284445 (n + 1) : ℚ) / (A213356 (n + 1) : ℚ)⌉

end

end A363806.P4516423432259897451

namespace A363806

/-- `ceil(A284445(n+1)/A213356(n+1))` -/
def P4516423432259897451.Spec : Prop :=
  ∀ n, P4516423432259897451.a n = A363806 (n + 1)

end A363806

/-!
# A363807: Number of divisors of n of the form 7*k + 5.

The programs for A363807, there is no canonical definition to state claims against.
-/

/-! ## A363807.P1766640469903797626

`A219189(A284446(n+1))`
-/

namespace A363807.P1766640469903797626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219189 (A284446 (n + 1)).toNat

end

end A363807.P1766640469903797626

/-! ## A363807.P15331911148128180484

`A057427(C(A284446(n+1), 3))`
-/

namespace A363807.P15331911148128180484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A284446 (n + 1)).toNat 3)

end

end A363807.P15331911148128180484

/-! ## A363807.P13399978254436292921

`ceil(A284446(n+1)/A175559(2*n+3))`
-/

namespace A363807.P13399978254436292921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284446 (n + 1) : ℚ) / (A175559 (2 * n + 3) : ℚ)⌉

end

end A363807.P13399978254436292921

/-! ## A363807.P10429777104672909580

`A019430(A000009(n)*A284446(n+1))`
-/

namespace A363807.P10429777104672909580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A000009 n * A284446 (n + 1)).toNat

end

end A363807.P10429777104672909580

/-! ## A363807.P14079941339194551028

`A057427(A000118(n)*A284446(n+1))`
-/

namespace A363807.P14079941339194551028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000118 n * A284446 (n + 1)).toNat

end

end A363807.P14079941339194551028

/-!
# A363808: Number of divisors of n of the form 7*k + 6.

The programs for A363808, the canonical program `A363808.P3028635677623268450` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363808 has offset 1).

The definition of A363808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363808.P3028635677623268450

`∑{d}[n+1, C(#, 6)%7]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A363808

/-- `∑{d}[n+1, C(#, 6)%7]` -/
def P3028635677623268450.Spec : Prop :=
  ∀ n, (P3028635677623268450.a n : ℤ) = A363808 (n + 1)

theorem P3028635677623268450.correct : P3028635677623268450.Spec := by
  intro n
  simp only [A363808, Nat.add_sub_cancel]

end A363808

/-! ## A363808.P11567249566061803919

`∑{d}[n+1, A082784(#+1)]`
-/

namespace A363808.P11567249566061803919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082784 (d + 1)

end

end A363808.P11567249566061803919

namespace A363808

/-- `∑{d}[n+1, A082784(#+1)]` -/
def P11567249566061803919.Spec : Prop :=
  ∀ n, P11567249566061803919.a n = A363808 (n + 1)

end A363808

/-! ## A363808.P5170292774248400746

`A363807(2*(n+1))-A363807((n+1)/2^val(n+1, 2))`
-/

namespace A363808.P5170292774248400746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (2 * (n + 1)) - A363807 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363808.P5170292774248400746

namespace A363808

/-- `A363807(2*(n+1))-A363807((n+1)/2^val(n+1, 2))` -/
def P5170292774248400746.Spec : Prop :=
  ∀ n, P5170292774248400746.a n = A363808 (n + 1)

end A363808

/-! ## A363808.P12772139896140445576

`A240314(A284105(n+1))%2`
-/

namespace A363808.P12772139896140445576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240314 (A284105 (n + 1)).toNat) 2

end

end A363808.P12772139896140445576

namespace A363808

/-- `A240314(A284105(n+1))%2` -/
def P12772139896140445576.Spec : Prop :=
  ∀ n, P12772139896140445576.a n = A363808 (n + 1)

end A363808

/-! ## A363808.P5687713632447870329

`A057427((2*A284105(n+1))²)`
-/

namespace A363808.P5687713632447870329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((2 * A284105 (n + 1)) ^ 2).toNat

end

end A363808.P5687713632447870329

namespace A363808

/-- `A057427((2*A284105(n+1))²)` -/
def P5687713632447870329.Spec : Prop :=
  ∀ n, P5687713632447870329.a n = A363808 (n + 1)

end A363808

/-!
# A363809: Number of permutations of [n] that avoid the patterns 2-41-3, 3-14-2, and 2-1-3-5-4.

The programs for A363809, there is no canonical definition to state claims against.
-/

/-! ## A363809.P15136133065803954132

`A366701(A109085(n))`
-/

namespace A363809.P15136133065803954132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366701 (A109085 n).toNat

end

end A363809.P15136133065803954132

/-! ## A363809.P1520970219375693679

`A138311(A165541(n))`
-/

namespace A363809.P1520970219375693679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165541 n).toNat

end

end A363809.P1520970219375693679

/-! ## A363809.P11675727550431517081

`A195174(A151057(n))`
-/

namespace A363809.P11675727550431517081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A151057 n).toNat

end

end A363809.P11675727550431517081

/-!
# A363810: Number of permutations of [n] that avoid the patterns 2-41-3, 3-14-2, 2-14-3, and 4-5-3-1-2.

The programs for A363810, there is no canonical definition to state claims against.
-/

/-! ## A363810.P190565237770843033

`A008616(A266868(n+1))`
-/

namespace A363810.P190565237770843033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266868 (n + 1)).toNat

end

end A363810.P190565237770843033

/-! ## A363810.P204672700370914088

`A261585(A149952(n+1))`
-/

namespace A363810.P204672700370914088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A149952 (n + 1)).toNat

end

end A363810.P204672700370914088

/-! ## A363810.P7784664909170529455

`A033321(n)-A000120(A182371(n+1))`
-/

namespace A363810.P7784664909170529455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A000120 (A182371 (n + 1)).toNat

end

end A363810.P7784664909170529455

/-!
# A363811: Number of permutations of [n] that avoid the patterns 2-41-3, 3-14-2, 2-1-3-5-4, and 4-5-3-1-2.

The programs for A363811, there is no canonical definition to state claims against.
-/

/-! ## A363811.P7774700038016678195

`A138311(A165536(n))`
-/

namespace A363811.P7774700038016678195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165536 n).toNat

end

end A363811.P7774700038016678195

/-! ## A363811.P9676124160896534117

`A081753(A149673(n+1))`
-/

namespace A363811.P9676124160896534117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A149673 (n + 1)).toNat

end

end A363811.P9676124160896534117

/-! ## A363811.P1549848603673357619

`A320536(A225305(n+1))`
-/

namespace A363811.P1549848603673357619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A225305 (n + 1)).toNat

end

end A363811.P1549848603673357619

/-!
# A363812: Number of permutations of [n] that avoid the patterns 2-41-3, 3-14-2, 2-1-4-3, and 3-41-2.

The programs for A363812, there is no canonical definition to state claims against.
-/

/-! ## A363812.P16106160621280225234

`A110656(A218251(n+1))`
-/

namespace A363812.P16106160621280225234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A218251 (n + 1)).toNat

end

end A363812.P16106160621280225234

/-! ## A363812.P9726070304771989589

`A083895(A003319(n))+A078483(n)`
-/

namespace A363812.P9726070304771989589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A003319 n).toNat + A078483 n

end

end A363812.P9726070304771989589

/-! ## A363812.P1536325784376131496

`A078483(n)+A011730(A256200(n))`
-/

namespace A363812.P1536325784376131496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078483 n + A011730 (A256200 n).toNat

end

end A363812.P1536325784376131496

/-! ## A363812.P2858731566765219332

`A083919(A347568(n+1))+A078483(n)`
-/

namespace A363812.P2858731566765219332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A347568 (n + 1)).toNat + A078483 n

end

end A363812.P2858731566765219332

/-!
# A363813: Number of permutations of [n] that avoid the patterns 2-41-3, 3-14-2, 2-1-4-3, and 4-5-3-1-2.

The programs for A363813, there is no canonical definition to state claims against.
-/

/-! ## A363813.P9810812581773228279

`A110655(A029857(n+1)-A090748(n+1))`
-/

namespace A363813.P9810812581773228279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A029857 (n + 1) - A090748 (n + 1)).toNat

end

end A363813.P9810812581773228279

/-! ## A363813.P5920167161936484523

`A076885(A376791(n))`
-/

namespace A363813.P5920167161936484523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A376791 n).toNat

end

end A363813.P5920167161936484523

/-!
# A363814: Intersection of A126706 and A055932.

The programs for A363814, there is no canonical definition to state claims against.
-/

/-! ## A363814.P16913677150741600145

`∪[A056808(n+1), A364710(n+1)]`
-/

namespace A363814.P16913677150741600145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P16913677150741600145

/-! ## A363814.P9529584161401830088

`∪[A369374(n+1), A380543(n+1)]`
-/

namespace A363814.P9529584161401830088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P9529584161401830088

/-! ## A363814.P7783574186232407948

`filter[A055932(n+1), A355447(#)]`
-/

namespace A363814.P7783574186232407948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363814.P7783574186232407948

/-! ## A363814.P6784568046911826761

`filter[A087245(n+1), A341629(#)]`
-/

namespace A363814.P6784568046911826761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A363814.P6784568046911826761

/-! ## A363814.P11690841421467258512

`∩[A055932(n+1), A087245(n+1)]`
-/

namespace A363814.P11690841421467258512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P11690841421467258512

/-! ## A363814.P3396960619413677995

`filter[A284342(n+1), A341629(#)]`
-/

namespace A363814.P3396960619413677995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A363814.P3396960619413677995

/-! ## A363814.P5749391410678638340

`∩[A055932(n+1), A284342(n+1)]`
-/

namespace A363814.P5749391410678638340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P5749391410678638340

/-! ## A363814.P5412443470008935828

`filter[A363101(n+1), A137794(#)]`
-/

namespace A363814.P5412443470008935828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A363814.P5412443470008935828

/-! ## A363814.P17960614757183736646

`filter[A363101(n+1), A341629(#)]`
-/

namespace A363814.P17960614757183736646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A363814.P17960614757183736646

/-! ## A363814.P14999747602341645

`∩[A055932(n+1), A363101(n+1)]`
-/

namespace A363814.P14999747602341645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P14999747602341645

/-! ## A363814.P15086425286791991255

`∩[A066311(n+1), A363101(n+1)]`
-/

namespace A363814.P15086425286791991255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P15086425286791991255

/-! ## A363814.P4355522545553446749

`∩[A073491(n+1), A363101(n+1)]`
-/

namespace A363814.P4355522545553446749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P4355522545553446749

/-! ## A363814.P2459906406882977341

`filter[A126706(n+1), A341629(#)]`
-/

namespace A363814.P2459906406882977341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A363814.P2459906406882977341

/-! ## A363814.P3711544893194871369

`∩[A055932(n+1), A126706(n+1)]`
-/

namespace A363814.P3711544893194871369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P3711544893194871369

/-! ## A363814.P5353029687209799126

`∩[A066312(n+1), A363101(n+1)]`
-/

namespace A363814.P5353029687209799126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363814.P5353029687209799126

/-!
# A363816: G.f. satisfies A(x) = (1 + x/A(x))/(1 - x)^2.

The programs for A363816, there is no canonical definition to state claims against.
-/

/-! ## A363816.P1548999509051973618

`∑[A366356(n)]`
-/

namespace A363816.P1548999509051973618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363816.P1548999509051973618

/-! ## A363816.P16809520241074594697

`A366356(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A363816.P16809520241074594697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366356 n + a (A028310 n - 1).toNat

end

end A363816.P16809520241074594697

/-!
# A363818: G.f. satisfies A(x) = (1 + x/A(x)^2)/(1 - x)^2.

The programs for A363818, there is no canonical definition to state claims against.
-/

/-! ## A363818.P15172143687379873074

`A383166(n)+A073792(A293606(2*n+1))`
-/

namespace A363818.P15172143687379873074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383166 n + A073792 (A293606 (2 * n + 1)).toNat

end

end A363818.P15172143687379873074

/-!
# A363819: G.f. satisfies A(x) = (1 + x/A(x)^2)/(1 - x)^3.

The programs for A363819, there is no canonical definition to state claims against.
-/

/-! ## A363819.P5249735997579238775

`A280362(2*(n+1))-A302545(A215758(n))`
-/

namespace A363819.P5249735997579238775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (2 * (n + 1)) - A302545 (A215758 n).toNat

end

end A363819.P5249735997579238775

/-!
# A363820: Moving the rightmost digit of a number to place it furthest to the left adds 9 to the number.

The programs for A363820, the canonical program `A363820.P3566701227845072726` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363820 has offset 1).

The definition of A363820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363820.P3566701227845072726

`A014181(n+2)-10`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363820

/-- `A014181(n+2)-10` -/
def P3566701227845072726.Spec : Prop :=
  ∀ n, P3566701227845072726.a n = A363820 (n + 1)

theorem P3566701227845072726.correct : P3566701227845072726.Spec := by
  intro n
  simp only [A363820, Nat.add_sub_cancel]

end A363820

/-! ## A363820.P8860734391824639667

`A228157(A051885(n+1))`
-/

namespace A363820.P8860734391824639667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (A051885 (n + 1)).toNat

end

end A363820.P8860734391824639667

namespace A363820

/-- `A228157(A051885(n+1))` -/
def P8860734391824639667.Spec : Prop :=
  ∀ n, P8860734391824639667.a n = A363820 (n + 1)

end A363820

/-! ## A363820.P7758338691642325769

`A023452(A014181(n+2))`
-/

namespace A363820.P7758338691642325769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A014181 (n + 2)).toNat

end

end A363820.P7758338691642325769

namespace A363820

/-- `A023452(A014181(n+2))` -/
def P7758338691642325769.Spec : Prop :=
  ∀ n, P7758338691642325769.a n = A363820 (n + 1)

end A363820

/-! ## A363820.P6839454444665858172

`eq[A043545(n), A178049(n)]`
-/

namespace A363820.P6839454444665858172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178049 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363820.P6839454444665858172

namespace A363820

/-- `eq[A043545(n), A178049(n)]` -/
def P6839454444665858172.Spec : Prop :=
  ∀ n, (P6839454444665858172.a n : ℤ) = A363820 (n + 1)

end A363820

/-! ## A363820.P2741741919391556719

`eq[A060576(n), A178049(n)]`
-/

namespace A363820.P2741741919391556719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178049 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363820.P2741741919391556719

namespace A363820

/-- `eq[A060576(n), A178049(n)]` -/
def P2741741919391556719.Spec : Prop :=
  ∀ n, (P2741741919391556719.a n : ℤ) = A363820 (n + 1)

end A363820

/-!
# A363821: Lesser of 2 successive squarefree semiprimes (k, k+4) sandwiching 3 consecutive nonsquarefree numbers.

The programs for A363821, there is no canonical definition to state claims against.
-/

/-! ## A363821.P8803597924032289348

`∩[A264044(n+1), A349231(n+1)]`
-/

namespace A363821.P8803597924032289348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363821.P8803597924032289348

/-!
# A363823: Moving the rightmost digit of a number to place it furthest to the left adds 18 to the number.

The programs for A363823, there is no canonical definition to state claims against.
-/

/-! ## A363823.P7932263185449199265

`∩[A033088(n+1), A376297(n+1)]`
-/

namespace A363823.P7932263185449199265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363823.P7932263185449199265

/-! ## A363823.P4021463224765864631

`∩[A266912(n+1), A350445(n+1)]`
-/

namespace A363823.P4021463224765864631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363823.P4021463224765864631

/-!
# A363824: a(0) = 0; for n > 0, a(n) is the total number of other numbers, being constructed on a square spiral, that are visible from a(n-1) that equal a(n-1).

The programs for A363824, there is no canonical definition to state claims against.
-/

/-! ## A363824.P8265702340300741625

`A129283(A189076(n))%A263017(n)`
-/

namespace A363824.P8265702340300741625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 (A189076 n).toNat) (A263017 n)

end

end A363824.P8265702340300741625

/-! ## A363824.P11240651830477660905

`A352514(A115653(n+1)+n+2)`
-/

namespace A363824.P11240651830477660905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A115653 (n + 1) + (n + 2 : ℤ)).toNat

end

end A363824.P11240651830477660905

/-! ## A363824.P385042382764939282

`A081603(A300858(n+1)+A033877(3*n+2))`
-/

namespace A363824.P385042382764939282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A300858 (n + 1) + A033877 (3 * n + 2)).toNat

end

end A363824.P385042382764939282

/-! ## A363824.P4937359372791858582

`∑[A072554(Δ[n²])]%A070940(n+1)`
-/

namespace A363824.P4937359372791858582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072554 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A070940 (n + 1))

end

end A363824.P4937359372791858582

/-! ## A363824.P8381185648991827144

`∑[A260687(3*(n+1))]%A003963(n+1)`
-/

namespace A363824.P8381185648991827144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260687 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A003963 (n + 1))

end

end A363824.P8381185648991827144

/-!
# A363825: The number of infinitary divisors of n that are exponentially odd numbers (A268335).

The programs for A363825, there is no canonical definition to state claims against.
-/

/-! ## A363825.P17451342868817474886

`A365551(A071975(n+1)%A247086(n+1))`
-/

namespace A363825.P17451342868817474886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365551 (Int.tmod (A071975 (n + 1)) (A247086 (n + 1))).toNat

end

end A363825.P17451342868817474886

/-! ## A363825.P12209075702797630362

`A000001(A008578(3*n+2))*A073184(A350389(n+1))`
-/

namespace A363825.P12209075702797630362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A008578 (3 * n + 2)).toNat * A073184 (A350389 (n + 1)).toNat

end

end A363825.P12209075702797630362

/-! ## A363825.P16964746665342914719

`∏{e}[floor(sqrt((n+1)^6+3)), A237271(#)]`
-/

namespace A363825.P16964746665342914719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) ^ 6 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A237271 (Nat.factorization (f1 n) p)

end

end A363825.P16964746665342914719

/-! ## A363825.P16978006892032644357

`∏{e}[floor(sqrt((n+1)^6+3)), A257695(#)]`
-/

namespace A363825.P16978006892032644357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) ^ 6 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A257695 (Nat.factorization (f1 n) p)

end

end A363825.P16978006892032644357

/-! ## A363825.P13786598951343325084

`A294931(n+1)%A164930(n+1)`
-/

namespace A363825.P13786598951343325084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294931 (n + 1)) (A164930 (n + 1))

end

end A363825.P13786598951343325084

/-! ## A363825.P12186742887807125467

`A073184(A350389(n+1))%A160217(n+1)`
-/

namespace A363825.P12186742887807125467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073184 (A350389 (n + 1)).toNat) (A160217 (n + 1))

end

end A363825.P12186742887807125467

/-! ## A363825.P15458438441827327054

`A007877(A337234(n+4))*A073184(A350389(n+1))`
-/

namespace A363825.P15458438441827327054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A337234 (n + 4)).toNat * A073184 (A350389 (n + 1)).toNat

end

end A363825.P15458438441827327054

/-!
# A363826: Triangular array, read by rows: T(n,k) = coefficients of the polynomial (-1)^(n+1)/(n+1)! N(x), where N(x) is the numerator of the (n-1)st derivative of 1/(1-x-x^2), for k = 1..n.

The programs for A363826, there is no canonical definition to state claims against.
-/

/-! ## A363826.P18191929414414972958

`gcd(A094440(n+1), A333543(n+5))`
-/

namespace A363826.P18191929414414972958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094440 (n + 1)) (A333543 (n + 5))

end

end A363826.P18191929414414972958

/-! ## A363826.P14923910209746719458

`gcd(A000118(A000079(n)), A094440(n+1))`
-/

namespace A363826.P14923910209746719458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000118 (A000079 n).toNat) (A094440 (n + 1))

end

end A363826.P14923910209746719458

/-! ## A363826.P12018355506389947248

`A065331(A094440(n+1)*A175914(2*n+5))`
-/

namespace A363826.P12018355506389947248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A094440 (n + 1) * A175914 (2 * n + 5)).toNat

end

end A363826.P12018355506389947248

/-!
# A363827: Highest power of 2 dividing n which is <= sqrt(n).

The programs for A363827, the canonical program `A363827.P5433554095545495330` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363827 has offset 1).

The definition of A363827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363827.P5433554095545495330

`A006519(A072504(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363827

/-- `A006519(A072504(n+1))` -/
def P5433554095545495330.Spec : Prop :=
  ∀ n, P5433554095545495330.a n = A363827 (n + 1)

theorem P5433554095545495330.correct : P5433554095545495330.Spec := by
  intro n
  simp only [A363827, Nat.add_sub_cancel]

end A363827

/-! ## A363827.P4232898008716649715

`A000079(val(A072504(n+1), 2))`
-/

namespace A363827.P4232898008716649715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A072504 (n + 1)).toNat 2)

end

end A363827.P4232898008716649715

namespace A363827

/-- `A000079(val(A072504(n+1), 2))` -/
def P4232898008716649715.Spec : Prop :=
  ∀ n, P4232898008716649715.a n = A363827 (n + 1)

end A363827

/-! ## A363827.P16917662624974028488

`A230579(val(A072504(n+1), 2))`
-/

namespace A363827.P16917662624974028488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230579 (SequenceMachineLib.valuation (A072504 (n + 1)).toNat 2)

end

end A363827.P16917662624974028488

namespace A363827

/-- `A230579(val(A072504(n+1), 2))` -/
def P16917662624974028488.Spec : Prop :=
  ∀ n, P16917662624974028488.a n = A363827 (n + 1)

end A363827

/-! ## A363827.P2936504149644059932

`gcd(A016784(n), A072504(n+1))`
-/

namespace A363827.P2936504149644059932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016784 n) (A072504 (n + 1))

end

end A363827.P2936504149644059932

namespace A363827

/-- `gcd(A016784(n), A072504(n+1))` -/
def P2936504149644059932.Spec : Prop :=
  ∀ n, (P2936504149644059932.a n : ℤ) = A363827 (n + 1)

end A363827

/-! ## A363827.P8349260819692330261

`gcd(A035327(n), A053644(A033676(n+1)))`
-/

namespace A363827.P8349260819692330261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A053644 (A033676 (n + 1)).toNat)

end

end A363827.P8349260819692330261

namespace A363827

/-- `gcd(A035327(n), A053644(A033676(n+1)))` -/
def P8349260819692330261.Spec : Prop :=
  ∀ n, (P8349260819692330261.a n : ℤ) = A363827 (n + 1)

end A363827

/-! ## A363827.P2423154878316940612

`gcd(A002805(A033676(n+1)), A055975(n+1))`
-/

namespace A363827.P2423154878316940612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (A033676 (n + 1)).toNat) (A055975 (n + 1))

end

end A363827.P2423154878316940612

namespace A363827

/-- `gcd(A002805(A033676(n+1)), A055975(n+1))` -/
def P2423154878316940612.Spec : Prop :=
  ∀ n, (P2423154878316940612.a n : ℤ) = A363827 (n + 1)

end A363827

/-! ## A363827.P10228662618407339895

`gcd(A001107(n+1), A302032(A217871(n+1)))`
-/

namespace A363827.P10228662618407339895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001107 (n + 1)) (A302032 (A217871 (n + 1)).toNat)

end

end A363827.P10228662618407339895

namespace A363827

/-- `gcd(A001107(n+1), A302032(A217871(n+1)))` -/
def P10228662618407339895.Spec : Prop :=
  ∀ n, (P10228662618407339895.a n : ℤ) = A363827 (n + 1)

end A363827

/-! ## A363827.P176181366288346108

`A363828(A337909(n+2))`
-/

namespace A363827.P176181366288346108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363828 (A337909 (n + 2)).toNat

end

end A363827.P176181366288346108

namespace A363827

/-- `A363828(A337909(n+2))` -/
def P176181366288346108.Spec : Prop :=
  ∀ n, P176181366288346108.a n = A363827 (n + 1)

end A363827

/-! ## A363827.P4078929127153889465

`A363828(A135416(2*n+1)+n+1)`
-/

namespace A363827.P4078929127153889465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363828 (A135416 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A363827.P4078929127153889465

namespace A363827

/-- `A363828(A135416(2*n+1)+n+1)` -/
def P4078929127153889465.Spec : Prop :=
  ∀ n, P4078929127153889465.a n = A363827 (n + 1)

end A363827

/-! ## A363827.P9612453939184855008

`gcd(A005451(n+1), A133012(n+1))`
-/

namespace A363827.P9612453939184855008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A133012 (n + 1))

end

end A363827.P9612453939184855008

namespace A363827

/-- `gcd(A005451(n+1), A133012(n+1))` -/
def P9612453939184855008.Spec : Prop :=
  ∀ n, (P9612453939184855008.a n : ℤ) = A363827 (n + 1)

end A363827

/-!
# A363828: Highest power of 2 dividing n which is < sqrt(n), for n >= 2; a(1) = 1.

The programs for A363828, the canonical program `A363828.P14035750330722355806` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363828 has offset 1).

The definition of A363828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363828.P6533736367693054720

`gcd(n+1, A000003(2^ceil(log2(n+1))))`
-/

namespace A363828.P6533736367693054720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000003 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A363828.P6533736367693054720

namespace A363828

/-- `gcd(n+1, A000003(2^ceil(log2(n+1))))` -/
def P6533736367693054720.Spec : Prop :=
  ∀ n, (P6533736367693054720.a n : ℤ) = A363828 (n + 1)

end A363828

/-! ## A363828.P14035750330722355806

`A363827(A048671(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363828

/-- `A363827(A048671(n+1))` -/
def P14035750330722355806.Spec : Prop :=
  ∀ n, P14035750330722355806.a n = A363828 (n + 1)

theorem P14035750330722355806.correct : P14035750330722355806.Spec := by
  intro n
  simp only [A363828, Nat.add_sub_cancel]

end A363828

/-! ## A363828.P2243739664778525052

`gcd(n+1, A053644(A000196(n)))`
-/

namespace A363828.P2243739664778525052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053644 (A000196 n).toNat)

end

end A363828.P2243739664778525052

namespace A363828

/-- `gcd(n+1, A053644(A000196(n)))` -/
def P2243739664778525052.Spec : Prop :=
  ∀ n, (P2243739664778525052.a n : ℤ) = A363828 (n + 1)

end A363828

/-! ## A363828.P5145868848821406427

`gcd(2^val(n+1, 2), A000902(A070939(n)))`
-/

namespace A363828.P5145868848821406427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A000902 (A070939 n).toNat)

end

end A363828.P5145868848821406427

namespace A363828

/-- `gcd(2^val(n+1, 2), A000902(A070939(n)))` -/
def P5145868848821406427.Spec : Prop :=
  ∀ n, (P5145868848821406427.a n : ℤ) = A363828 (n + 1)

end A363828

/-! ## A363828.P463784551111873981

`gcd(A006519(n+1), A010554(A083662(n)))`
-/

namespace A363828.P463784551111873981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006519 (n + 1)) (A010554 (A083662 n).toNat)

end

end A363828.P463784551111873981

namespace A363828

/-- `gcd(A006519(n+1), A010554(A083662(n)))` -/
def P463784551111873981.Spec : Prop :=
  ∀ n, (P463784551111873981.a n : ℤ) = A363828 (n + 1)

end A363828

/-! ## A363828.P3120369010496246598

`gcd(A001107(3*(n+1)), A302032(A217871(n)))`
-/

namespace A363828.P3120369010496246598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001107 (3 * (n + 1))) (A302032 (A217871 n).toNat)

end

end A363828.P3120369010496246598

namespace A363828

/-- `gcd(A001107(3*(n+1)), A302032(A217871(n)))` -/
def P3120369010496246598.Spec : Prop :=
  ∀ n, (P3120369010496246598.a n : ℤ) = A363828 (n + 1)

end A363828

/-! ## A363828.P7585407123189253918

`gcd(A171683(n), A363827(n+1))`
-/

namespace A363828.P7585407123189253918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171683 n) (A363827 (n + 1))

end

end A363828.P7585407123189253918

namespace A363828

/-- `gcd(A171683(n), A363827(n+1))` -/
def P7585407123189253918.Spec : Prop :=
  ∀ n, (P7585407123189253918.a n : ℤ) = A363828 (n + 1)

end A363828

/-!
# A363829: Sum of the divisors of A000129(n) (Pell numbers).

The programs for A363829, there is no canonical definition to state claims against.
-/

/-! ## A363829.P3170925877924053259

`∑{d}[round((sqrt(2)+1)*a(n-1)), #]` with `a(0)=1`
-/

namespace A363829.P3170925877924053259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A363829.P3170925877924053259

/-! ## A363829.P14912818738738135173

`∑{d}[-floor((sqrt(2)+1)*a(n-1)), #]` with `a(0)=1`
-/

namespace A363829.P14912818738738135173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A363829.P14912818738738135173

/-! ## A363829.P18257340798586904305

`∑{d}[A077985(n), #]`
-/

namespace A363829.P18257340798586904305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A363829.P18257340798586904305

/-! ## A363829.P911754701495555910

`∑{d}[∑[A001333(n)], #]`
-/

namespace A363829.P911754701495555910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A363829.P911754701495555910

/-! ## A363829.P2823123217334009034

`∑{d}[A106513(∑[n]), #]`
-/

namespace A363829.P2823123217334009034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A363829.P2823123217334009034

/-!
# A363831: Number of divisors of A000129(n) (Pell numbers).

The programs for A363831, there is no canonical definition to state claims against.
-/

/-! ## A363831.P7374548257247488630

`∏{e}[A077985(n), #+1]`
-/

namespace A363831.P7374548257247488630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363831.P7374548257247488630

/-! ## A363831.P11685012216066803201

`∏{e}[∑[A001333(n)], #+1]`
-/

namespace A363831.P11685012216066803201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363831.P11685012216066803201

/-! ## A363831.P5212669163714730812

`∏{e}[A000129(n+1), #+1]`
-/

namespace A363831.P5212669163714730812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363831.P5212669163714730812

/-! ## A363831.P10004309823014722107

`∏{e}[A228405(∑[n+2]), #+1]`
-/

namespace A363831.P10004309823014722107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363831.P10004309823014722107

/-! ## A363831.P12582456623920809931

`∏{e}[A002965(2*(n+1)), #+1]`
-/

namespace A363831.P12582456623920809931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363831.P12582456623920809931

/-!
# A363832: Number of digits left of the radix point of n when written in base e using a greedy algorithm representation.

The programs for A363832, the canonical program `A363832.P17035605753939624858` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363832 has offset 0).

The definition of A363832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363832.P17035605753939624858

`ceil(abs(log(acot(n))))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A363832

/-- `ceil(abs(log(acot(n))))` -/
def P17035605753939624858.Spec : Prop :=
  ∀ n, P17035605753939624858.a n = A363832 n

theorem P17035605753939624858.correct : P17035605753939624858.Spec := by
  intro n
  simp only [A363832]

end A363832

/-! ## A363832.P8968303751680161870

`ceil(log(acot(n)+n))`
-/

namespace A363832.P8968303751680161870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))⌉

end

end A363832.P8968303751680161870

namespace A363832

/-- `ceil(log(acot(n)+n))` -/
def P8968303751680161870.Spec : Prop :=
  ∀ n, P8968303751680161870.a n = A363832 n

end A363832

/-! ## A363832.P15253264664485300680

`abs(floor(log(tanh(acot(n)))))`
-/

namespace A363832.P15253264664485300680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.log (Real.tanh (SequenceMachineLib.acot (n : ℝ)))⌋|

end

end A363832.P15253264664485300680

namespace A363832

/-- `abs(floor(log(tanh(acot(n)))))` -/
def P15253264664485300680.Spec : Prop :=
  ∀ n, P15253264664485300680.a n = A363832 n

end A363832

/-! ## A363832.P11249447200875140991

`-floor(log(tanh(acot(n))))`
-/

namespace A363832.P11249447200875140991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.log (Real.tanh (SequenceMachineLib.acot (n : ℝ)))⌋

end

end A363832.P11249447200875140991

namespace A363832

/-- `-floor(log(tanh(acot(n))))` -/
def P11249447200875140991.Spec : Prop :=
  ∀ n, P11249447200875140991.a n = A363832 n

end A363832

/-! ## A363832.P1783859460820396346

`ceil(-log(tanh(acot(n))))`
-/

namespace A363832.P1783859460820396346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.log (Real.tanh (SequenceMachineLib.acot (n : ℝ)))⌉

end

end A363832.P1783859460820396346

namespace A363832

/-- `ceil(-log(tanh(acot(n))))` -/
def P1783859460820396346.Spec : Prop :=
  ∀ n, P1783859460820396346.a n = A363832 n

end A363832

/-! ## A363832.P7230899228957977247

`ceil(log(n²+2)/2)`
-/

namespace A363832.P7230899228957977247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n ^ 2 + 2 : ℝ) / 2⌉

end

end A363832.P7230899228957977247

namespace A363832

/-- `ceil(log(n²+2)/2)` -/
def P7230899228957977247.Spec : Prop :=
  ∀ n, P7230899228957977247.a n = A363832 n

end A363832

/-! ## A363832.P8068709627509962556

`A004233(A233583(n+1))`
-/

namespace A363832.P8068709627509962556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A233583 (n + 1)).toNat

end

end A363832.P8068709627509962556

namespace A363832

/-- `A004233(A233583(n+1))` -/
def P8068709627509962556.Spec : Prop :=
  ∀ n, P8068709627509962556.a n = A363832 n

end A363832

/-! ## A363832.P12851565583977257255

`A258198(A283968(n))`
-/

namespace A363832.P12851565583977257255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A283968 n).toNat

end

end A363832.P12851565583977257255

namespace A363832

/-- `A258198(A283968(n))` -/
def P12851565583977257255.Spec : Prop :=
  ∀ n, P12851565583977257255.a n = A363832 n

end A363832

/-! ## A363832.P7800245219453487424

`A390766(A007095(n²))`
-/

namespace A363832.P7800245219453487424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390766 (A007095 (n ^ 2)).toNat

end

end A363832.P7800245219453487424

namespace A363832

/-- `A390766(A007095(n²))` -/
def P7800245219453487424.Spec : Prop :=
  ∀ n, P7800245219453487424.a n = A363832 n

end A363832

/-! ## A363832.P8774684997386107468

`A055642(A105116(n))`
-/

namespace A363832.P8774684997386107468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A105116 n).toNat

end

end A363832.P8774684997386107468

namespace A363832

/-- `A055642(A105116(n))` -/
def P8774684997386107468.Spec : Prop :=
  ∀ n, P8774684997386107468.a n = A363832 n

end A363832

/-!
# A363833: Number of prime factors of A000129(n) (Pell numbers) (counted with multiplicity).

The programs for A363833, there is no canonical definition to state claims against.
-/

/-! ## A363833.P18288316620882858240

`∑{e}[A077985(n), #]`
-/

namespace A363833.P18288316620882858240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363833.P18288316620882858240

/-! ## A363833.P11998363037534985938

`∑{e}[∑[A001333(n)], #]`
-/

namespace A363833.P11998363037534985938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363833.P11998363037534985938

/-! ## A363833.P1151071019921231855

`∑{e}[A054456(∑[n]), #]`
-/

namespace A363833.P1151071019921231855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363833.P1151071019921231855

/-! ## A363833.P17695135053651512870

`∑{e}[A106513(∑[n]), #]`
-/

namespace A363833.P17695135053651512870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363833.P17695135053651512870

/-! ## A363833.P14826760972510589320

`∑{e}[Δ[A024537(n)], #]`
-/

namespace A363833.P14826760972510589320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363833.P14826760972510589320

/-!
# A363837: Numbers k such that k-th Jacobsthal number A001045(k) is a semiprime.

The programs for A363837, there is no canonical definition to state claims against.
-/

/-! ## A363837.P5986810553985466221

`eq[2, A366770(n+1)]+1`
-/

namespace A363837.P5986810553985466221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363837.P5986810553985466221

/-! ## A363837.P13857711200568022188

`eq[3, A286565(n+1)]+1`
-/

namespace A363837.P13857711200568022188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363837.P13857711200568022188

/-! ## A363837.P17123713450331743901

`eq[2, A366770(A028310(n))]`
-/

namespace A363837.P17123713450331743901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363837.P17123713450331743901

/-! ## A363837.P15919522431203161894

`eq[3, A286565(A065033(2*n))]`
-/

namespace A363837.P15919522431203161894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363837.P15919522431203161894

/-! ## A363837.P13825923362562090096

`eq[5, A195663(a(A366770(n)-1))]` with `a(0)=24, a(1)=31, a(2)=96`
-/

namespace A363837.P13825923362562090096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [24, 31, 96] fun n f2 =>
  A195663 (f2 (A366770 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363837.P13825923362562090096

/-!
# A363838: a(n) = Product_{b=2..n} b^gamma(n, b) where gamma(n, b) = Sum_{i>=1} floor(n/b^i).

The programs for A363838, there is no canonical definition to state claims against.
-/

/-! ## A363838.P2637943541229702618

`a(n-1)*A364813(n)` with `a(0)=1`
-/

namespace A363838.P2637943541229702618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A364813 n

end

end A363838.P2637943541229702618

/-! ## A363838.P381506902069168080

`∏[A364813(n+1)]/A364813(n+1)`
-/

namespace A363838.P381506902069168080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364813 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A364813 (n + 1) : ℚ)

end

end A363838.P381506902069168080

/-! ## A363838.P5203705238923010491

`∏[n^∑{e}[n, #!!]]`
-/

namespace A363838.P5203705238923010491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorial (Nat.factorization (f2 n) p)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A363838.P5203705238923010491

/-! ## A363838.P16828138929150847826

`∏[∏{e}[n, n^#!!]]`
-/

namespace A363838.P16828138929150847826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n ^ Nat.factorial (Nat.factorial (Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A363838.P16828138929150847826

/-!
# A363844: Number of k <= P(n) such that gcd(k,P(n)) > 1, yet there is a prime q | k that does not divide P(n), where P(n) = A002110(n).

The programs for A363844, there is no canonical definition to state claims against.
-/

/-! ## A363844.P2313651418763722661

`A002110(n)-A005867(n)-A363061(n)+1`
-/

namespace A363844.P2313651418763722661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A005867 n - A363061 n + 1

end

end A363844.P2313651418763722661

/-! ## A363844.P12132929988308444172

`A243823(A002110(n))`
-/

namespace A363844.P12132929988308444172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A002110 n).toNat

end

end A363844.P12132929988308444172

/-!
# A363845: Triangle read by rows: T(n,k) = number of connected n-node graphs with k nodes in distinguished bipartite block, k = 0..n.

The programs for A363845, there is no canonical definition to state claims against.
-/

/-! ## A363845.P2416051505554973395

`A007895(C(A007318(n), A003056(n)))`
-/

namespace A363845.P2416051505554973395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose (A007318 n).toNat (A003056 n).toNat)

end

end A363845.P2416051505554973395

/-! ## A363845.P4220976487084063022

`A007895(C(A007318(n), A117707(n)))`
-/

namespace A363845.P4220976487084063022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose (A007318 n).toNat (A117707 n).toNat)

end

end A363845.P4220976487084063022

/-! ## A363845.P18136283341233311040

`A055363(gcd(n, A284872(n+1)))`
-/

namespace A363845.P18136283341233311040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (Int.gcd (n : ℤ) (A284872 (n + 1)))

end

end A363845.P18136283341233311040

/-! ## A363845.P15282777958770389499

`A055363(C(A277239(3*(n+1)), n²)+n)`
-/

namespace A363845.P15282777958770389499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (Nat.choose (A277239 (3 * (n + 1))).toNat (n ^ 2) + n)

end

end A363845.P15282777958770389499

/-! ## A363845.P7560588740510327072

`A186034(A022167(n))+A051168(n)`
-/

namespace A363845.P7560588740510327072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (A022167 n).toNat + A051168 n

end

end A363845.P7560588740510327072

/-!
# A363846: Number of connected bipartite graphs on 2n nodes with a marked bipartite set of size n.

The programs for A363846, there is no canonical definition to state claims against.
-/

/-! ## A363846.P3232339343949627844

`A363845(∑[4*n])`
-/

namespace A363846.P3232339343949627844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363846.P3232339343949627844

/-!
# A363847: Numbers k such that Omega(m*(m+1)) < Omega(k*(k+1)) for all m < k, where Omega(k) is the number of prime divisors of k counted with multiplicity (A001222).

The programs for A363847, there is no canonical definition to state claims against.
-/

/-! ## A363847.P18025490225507544441

`A076550(record[A069904(n+1)])`
-/

namespace A363847.P18025490225507544441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363847.P18025490225507544441

/-! ## A363847.P7278974428044981713

`A076550(record[A193295(2*n+3)-3])`
-/

namespace A363847.P7278974428044981713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (2 * n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363847.P7278974428044981713

/-! ## A363847.P9896255045067499251

`filter[A076550(n), A106465(#)]`
-/

namespace A363847.P9896255045067499251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A363847.P9896255045067499251

/-! ## A363847.P414366868392456343

`A076550(lt[A321451(n), A169845(3*n+1)])`
-/

namespace A363847.P414366868392456343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169845 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363847.P414366868392456343

/-! ## A363847.P2116620948213911510

`A076550(lt[A296712(n+1), A365783(2*(n+2))])`
-/

namespace A363847.P2116620948213911510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365783 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363847.P2116620948213911510

/-!
# A363849: Triangular array read by rows. T(n,k) is the number of Green's H-classes of rank k in the semigroup of partial transformations, n >= 0, 0 <= k <= n.

The programs for A363849, there is no canonical definition to state claims against.
-/

/-! ## A363849.P8190127848351148127

`A007318(n)*A008277(n+1)`
-/

namespace A363849.P8190127848351148127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008277 (n + 1)

end

end A363849.P8190127848351148127

/-! ## A363849.P7168976064656221376

`A007318(n)*A048993(comp[∑[n]])`
-/

namespace A363849.P7168976064656221376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A363849.P7168976064656221376

/-! ## A363849.P8874116101878609717

`abs(A008277(n+1)*A108086(n))`
-/

namespace A363849.P8874116101878609717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008277 (n + 1) * A108086 n|

end

end A363849.P8874116101878609717

/-! ## A363849.P8404154251477645304

`abs(A008277(n+1)*A117440(n))`
-/

namespace A363849.P8404154251477645304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008277 (n + 1) * A117440 n|

end

end A363849.P8404154251477645304

/-! ## A363849.P3065671965198465044

`abs(A008277(n+1)*A130595(n))`
-/

namespace A363849.P3065671965198465044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008277 (n + 1) * A130595 n|

end

end A363849.P3065671965198465044

/-! ## A363849.P17215609393937535828

`sqrt(A008459(n))*A008277(n+1)`
-/

namespace A363849.P17215609393937535828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A008277 (n + 1) : ℝ)

end

end A363849.P17215609393937535828

/-! ## A363849.P13787634790854087621

`A048743(n+1)/A166350(n+1)`
-/

namespace A363849.P13787634790854087621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048743 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A363849.P13787634790854087621

/-! ## A363849.P16419005028902153940

`(A189232(n+1)+A001263(n+1))*A007318(n)`
-/

namespace A363849.P16419005028902153940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189232 (n + 1) + A001263 (n + 1)) * A007318 n

end

end A363849.P16419005028902153940

/-!
# A363850: Number of divisors of 7*n-3 of form 7*k+1.

The programs for A363850, there is no canonical definition to state claims against.
-/

/-! ## A363850.P14757249082076158953

`A375149(n)+A363855(n+1)`
-/

namespace A363850.P14757249082076158953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375149 n + A363855 (n + 1)

end

end A363850.P14757249082076158953

/-! ## A363850.P10128592100478019511

`A363806(7*n+4)`
-/

namespace A363850.P10128592100478019511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * n + 4)

end

end A363850.P10128592100478019511

/-! ## A363850.P7448099162613588300

`A279061(A017029(n))`
-/

namespace A363850.P7448099162613588300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017029 n).toNat

end

end A363850.P7448099162613588300

/-! ## A363850.P6726939164788223526

`A279061(A017017(n)+1)`
-/

namespace A363850.P6726939164788223526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017017 n + 1).toNat

end

end A363850.P6726939164788223526

/-! ## A363850.P13612077559183989507

`A279061(A047883(n+1))`
-/

namespace A363850.P13612077559183989507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A047883 (n + 1)).toNat

end

end A363850.P13612077559183989507

/-! ## A363850.P1213054789022026840

`A279061(A017005(n)+2)`
-/

namespace A363850.P1213054789022026840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017005 n + 2).toNat

end

end A363850.P1213054789022026840

/-! ## A363850.P13991573206276613011

`A279061(A017041(n)-1)`
-/

namespace A363850.P13991573206276613011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017041 n - 1).toNat

end

end A363850.P13991573206276613011

/-! ## A363850.P2970764585783859156

`A279061(A017053(n)-2)`
-/

namespace A363850.P2970764585783859156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017053 n - 2).toNat

end

end A363850.P2970764585783859156

/-! ## A363850.P9497685952517561735

`A279061(A016993(2*n+1)/2)`
-/

namespace A363850.P9497685952517561735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (SequenceMachineLib.roundAway ((A016993 (2 * n + 1) : ℚ) / 2)).toNat

end

end A363850.P9497685952517561735

/-!
# A363851: Number of divisors of 7*n-4 of form 7*k+1.

The programs for A363851, there is no canonical definition to state claims against.
-/

/-! ## A363851.P2895368290084710293

`A375106(n)+A363856(n+1)`
-/

namespace A363851.P2895368290084710293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375106 n + A363856 (n + 1)

end

end A363851.P2895368290084710293

/-! ## A363851.P14476065586820600174

`A279061(7*n+3)`
-/

namespace A363851.P14476065586820600174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * n + 3)

end

end A363851.P14476065586820600174

/-! ## A363851.P5526909920324324145

`A363805(A017005(n)+1)`
-/

namespace A363851.P5526909920324324145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017005 n + 1).toNat

end

end A363851.P5526909920324324145

/-! ## A363851.P9069450037992745025

`A363805(A016993(n)+2)`
-/

namespace A363851.P9069450037992745025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A016993 n + 2).toNat

end

end A363851.P9069450037992745025

/-! ## A363851.P17837788189557604582

`A363805(A017029(n)-1)`
-/

namespace A363851.P17837788189557604582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017029 n - 1).toNat

end

end A363851.P17837788189557604582

/-! ## A363851.P11523166847477670376

`A363805(A017041(n)-2)`
-/

namespace A363851.P11523166847477670376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017041 n - 2).toNat

end

end A363851.P11523166847477670376

/-!
# A363852: Number of divisors of 7*n-5 of form 7*k+1.

The programs for A363852, there is no canonical definition to state claims against.
-/

/-! ## A363852.P6207140714920680224

`A375148(n)+A363857(n+1)`
-/

namespace A363852.P6207140714920680224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375148 n + A363857 (n + 1)

end

end A363852.P6207140714920680224

/-! ## A363852.P238564630235492560

`A279061(7*n+2)`
-/

namespace A363852.P238564630235492560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * n + 2)

end

end A363852.P238564630235492560

/-! ## A363852.P17710212285424672408

`A363795(A016993(n)+1)`
-/

namespace A363852.P17710212285424672408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A016993 n + 1).toNat

end

end A363852.P17710212285424672408

/-! ## A363852.P18332252458798871235

`A363795(A017017(n)-1)`
-/

namespace A363852.P18332252458798871235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017017 n - 1).toNat

end

end A363852.P18332252458798871235

/-! ## A363852.P13988224655150173041

`A363795(A017029(n)-2)`
-/

namespace A363852.P13988224655150173041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017029 n - 2).toNat

end

end A363852.P13988224655150173041

/-! ## A363852.P17441508567014629479

`A363795(A017029(2*n)/2)`
-/

namespace A363852.P17441508567014629479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (SequenceMachineLib.roundAway ((A017029 (2 * n) : ℚ) / 2)).toNat

end

end A363852.P17441508567014629479

/-!
# A363853: Number of divisors of 7*n-6 of form 7*k+1.

The programs for A363853, there is no canonical definition to state claims against.
-/

/-! ## A363853.P13215560682834830793

`A374900(n)+A363858(n+1)`
-/

namespace A363853.P13215560682834830793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374900 n + A363858 (n + 1)

end

end A363853.P13215560682834830793

/-! ## A363853.P9885637421854095851

`A279061(7*n+1)`
-/

namespace A363853.P9885637421854095851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * n + 1)

end

end A363853.P9885637421854095851

/-! ## A363853.P14529050395548034780

`A279061(A016993(n))%A016825(n)`
-/

namespace A363853.P14529050395548034780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279061 (A016993 n).toNat) (A016825 n)

end

end A363853.P14529050395548034780

/-! ## A363853.P11078680322933747985

`A279061(A016993(n))^(A374359(A016825(n)+1)/5)`
-/

namespace A363853.P11078680322933747985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279061 (A016993 n).toNat : ℝ) ^ ((A374359 (A016825 n + 1).toNat : ℚ) / 5 : ℝ)

end

end A363853.P11078680322933747985

/-! ## A363853.P7317369976021032306

`A374900(n)+A359241(A007310(n+1))%A347406(2*n+5)`
-/

namespace A363853.P7317369976021032306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374900 n + Int.tmod (A359241 (A007310 (n + 1)).toNat) (A347406 (2 * n + 5))

end

end A363853.P7317369976021032306

/-!
# A363854: Number of divisors of 7*n-2 of form 7*k+6.

The programs for A363854, there is no canonical definition to state claims against.
-/

/-! ## A363854.P5028894585749871784

`A362845(n+1)-A375150(n)`
-/

namespace A363854.P5028894585749871784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362845 (n + 1) - A375150 n

end

end A363854.P5028894585749871784

/-! ## A363854.P1502781432411432087

`A363795(A017041(n))`
-/

namespace A363854.P1502781432411432087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017041 n).toNat

end

end A363854.P1502781432411432087

/-! ## A363854.P10052798235469821707

`A363795(A017029(n)+1)`
-/

namespace A363854.P10052798235469821707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017029 n + 1).toNat

end

end A363854.P10052798235469821707

/-! ## A363854.P706528410238866564

`A363795(A017017(n)+2)`
-/

namespace A363854.P706528410238866564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017017 n + 2).toNat

end

end A363854.P706528410238866564

/-! ## A363854.P9139689326857526093

`A363795(A017053(n)-1)`
-/

namespace A363854.P9139689326857526093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017053 n - 1).toNat

end

end A363854.P9139689326857526093

/-! ## A363854.P12173027104857788235

`A363808(lt[n, A284105(n+1)])`
-/

namespace A363854.P12173027104857788235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363854.P12173027104857788235

/-! ## A363854.P8015165002065399129

`A363808(A016813(2*n+1)-n)`
-/

namespace A363854.P8015165002065399129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A016813 (2 * n + 1) - (n : ℤ)).toNat

end

end A363854.P8015165002065399129

/-! ## A363854.P14886878039782062400

`A363795(A047480(3*n+2)-n)`
-/

namespace A363854.P14886878039782062400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A047480 (3 * n + 2) - (n : ℤ)).toNat

end

end A363854.P14886878039782062400

/-! ## A363854.P456576574184441057

`A363808(lt[n, A284445(2*n+1)])`
-/

namespace A363854.P456576574184441057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284445 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363854.P456576574184441057

/-!
# A363855: Number of divisors of 7*n-3 of form 7*k+6.

The programs for A363855, there is no canonical definition to state claims against.
-/

/-! ## A363855.P13440892672000575350

`A363850(n+1)-A375149(n)`
-/

namespace A363855.P13440892672000575350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363850 (n + 1) - A375149 n

end

end A363855.P13440892672000575350

/-! ## A363855.P15816092598162125222

`A363805(A017029(n))`
-/

namespace A363855.P15816092598162125222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017029 n).toNat

end

end A363855.P15816092598162125222

/-! ## A363855.P5619442921451523069

`A363805(A017005(n)+2)`
-/

namespace A363855.P5619442921451523069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017005 n + 2).toNat

end

end A363855.P5619442921451523069

/-! ## A363855.P15285153680110955184

`A363805(A017041(n)-1)`
-/

namespace A363855.P15285153680110955184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017041 n - 1).toNat

end

end A363855.P15285153680110955184

/-! ## A363855.P9044840229599774537

`A363805(A016993(2*n+1)/2)`
-/

namespace A363855.P9044840229599774537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (SequenceMachineLib.roundAway ((A016993 (2 * n + 1) : ℚ) / 2)).toNat

end

end A363855.P9044840229599774537

/-! ## A363855.P12172958954768686201

`A363808(A016993(2*n+1)/2)`
-/

namespace A363855.P12172958954768686201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.roundAway ((A016993 (2 * n + 1) : ℚ) / 2)).toNat

end

end A363855.P12172958954768686201

/-! ## A363855.P945505986931765305

`A363808(lt[n, A284105(n+2)])`
-/

namespace A363855.P945505986931765305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363855.P945505986931765305

/-!
# A363856: Number of divisors of 7*n-4 of form 7*k+6.

The programs for A363856, there is no canonical definition to state claims against.
-/

/-! ## A363856.P12083174847840134991

`A363851(n+1)-A375106(n)`
-/

namespace A363856.P12083174847840134991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363851 (n + 1) - A375106 n

end

end A363856.P12083174847840134991

/-! ## A363856.P13794952488183436606

`A363806(7*n+3)`
-/

namespace A363856.P13794952488183436606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * n + 3)

end

end A363856.P13794952488183436606

/-! ## A363856.P13272582786201382715

`A363808(A016993(n)+2)`
-/

namespace A363856.P13272582786201382715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A016993 n + 2).toNat

end

end A363856.P13272582786201382715

/-! ## A363856.P6883442504388012946

`A363808(A016921(n)+n+2)`
-/

namespace A363856.P6883442504388012946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A016921 n + (n + 2 : ℤ)).toNat

end

end A363856.P6883442504388012946

/-! ## A363856.P7772375517985068480

`A363808(lt[n, A284445(n+1)])`
-/

namespace A363856.P7772375517985068480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363856.P7772375517985068480

/-! ## A363856.P9562802807764639738

`A363808(A005408(2*n)+A000027(3*n+2))`
-/

namespace A363856.P9562802807764639738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A005408 (2 * n) + A000027 (3 * n + 2)).toNat

end

end A363856.P9562802807764639738

/-!
# A363857: Number of divisors of 7*n-5 of form 7*k+6.

The programs for A363857, there is no canonical definition to state claims against.
-/

/-! ## A363857.P14591088251600387640

`A363852(n+1)-A375148(n)`
-/

namespace A363857.P14591088251600387640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363852 (n + 1) - A375148 n

end

end A363857.P14591088251600387640

/-! ## A363857.P12478340205843101337

`A363807(A017005(n))`
-/

namespace A363857.P12478340205843101337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017005 n).toNat

end

end A363857.P12478340205843101337

/-! ## A363857.P7941603244305029927

`A363808(A016993(n)+1)`
-/

namespace A363857.P7941603244305029927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A016993 n + 1).toNat

end

end A363857.P7941603244305029927

/-! ## A363857.P5993944001941831181

`A363807(A017029(n)-2)`
-/

namespace A363857.P5993944001941831181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017029 n - 2).toNat

end

end A363857.P5993944001941831181

/-! ## A363857.P10885676177885033504

`A363807(A017029(2*n)/2)`
-/

namespace A363857.P10885676177885033504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (SequenceMachineLib.roundAway ((A017029 (2 * n) : ℚ) / 2)).toNat

end

end A363857.P10885676177885033504

/-! ## A363857.P10394226204910916917

`A363808(lt[n, A284444(n+1)])`
-/

namespace A363857.P10394226204910916917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363857.P10394226204910916917

/-! ## A363857.P12923421144277327037

`A363808(lt[n, A284445(n+2)])`
-/

namespace A363857.P12923421144277327037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363857.P12923421144277327037

/-!
# A363858: Number of divisors of 7*n-6 of form 7*k+6.

The programs for A363858, the canonical program `A363858.P18348092328397908733` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363858 has offset 1).

The definition of A363858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363858.P18348092328397908733

`A363808(7*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363858

/-- `A363808(7*n+1)` -/
def P18348092328397908733.Spec : Prop :=
  ∀ n, P18348092328397908733.a n = A363858 (n + 1)

theorem P18348092328397908733.correct : P18348092328397908733.Spec := by
  intro n
  simp only [A363858, Nat.add_sub_cancel]

end A363858

/-! ## A363858.P15044138229221572226

`A363853(n+1)-A374900(n)`
-/

namespace A363858.P15044138229221572226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (n + 1) - A374900 n

end

end A363858.P15044138229221572226

namespace A363858

/-- `A363853(n+1)-A374900(n)` -/
def P15044138229221572226.Spec : Prop :=
  ∀ n, P15044138229221572226.a n = A363858 (n + 1)

end A363858

/-! ## A363858.P11424566737555454099

`A359241(A007310(n+1))%A347406(2*n+5)`
-/

namespace A363858.P11424566737555454099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359241 (A007310 (n + 1)).toNat) (A347406 (2 * n + 5))

end

end A363858.P11424566737555454099

namespace A363858

/-- `A359241(A007310(n+1))%A347406(2*n+5)` -/
def P11424566737555454099.Spec : Prop :=
  ∀ n, P11424566737555454099.a n = A363858 (n + 1)

end A363858

/-! ## A363858.P3566692242572601134

`A342808(A064455(n+1))%ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A363858.P3566692242572601134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342808 (A064455 (n + 1)).toNat) ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A363858.P3566692242572601134

namespace A363858

/-- `A342808(A064455(n+1))%ceil(∏{e}[n+1, #+1]/2)` -/
def P3566692242572601134.Spec : Prop :=
  ∀ n, P3566692242572601134.a n = A363858 (n + 1)

end A363858

/-! ## A363858.P6684669813434998798

`A359241(A007310(n+1)%A031634(n+1))`
-/

namespace A363858.P6684669813434998798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359241 (Int.tmod (A007310 (n + 1)) (A031634 (n + 1))).toNat

end

end A363858.P6684669813434998798

namespace A363858

/-- `A359241(A007310(n+1)%A031634(n+1))` -/
def P6684669813434998798.Spec : Prop :=
  ∀ n, P6684669813434998798.a n = A363858 (n + 1)

end A363858

/-!
# A363859: Number of divisors of 7*n-1 of the form 7*k+2.

The programs for A363859, there is no canonical definition to state claims against.
-/

/-! ## A363859.P8440155157620602842

`A375107(n)+A363860(n+1)`
-/

namespace A363859.P8440155157620602842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375107 n + A363860 (n + 1)

end

end A363859.P8440155157620602842

/-! ## A363859.P13115372438239759841

`A363795(A017053(n))`
-/

namespace A363859.P13115372438239759841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017053 n).toNat

end

end A363859.P13115372438239759841

/-! ## A363859.P484247202167057742

`A363795(A017041(n)+1)`
-/

namespace A363859.P484247202167057742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017041 n + 1).toNat

end

end A363859.P484247202167057742

/-! ## A363859.P9227990883154491087

`A363805(A017041(n)+1)`
-/

namespace A363859.P9227990883154491087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017041 n + 1).toNat

end

end A363859.P9227990883154491087

/-! ## A363859.P9270633592009784939

`A363795(A017029(n)+2)`
-/

namespace A363859.P9270633592009784939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017029 n + 2).toNat

end

end A363859.P9270633592009784939

/-! ## A363859.P456649977213255928

`A363805(A017029(n)+2)`
-/

namespace A363859.P456649977213255928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017029 n + 2).toNat

end

end A363859.P456649977213255928

/-! ## A363859.P4111561327758153266

`A363795(A016993(n+1)-2)`
-/

namespace A363859.P4111561327758153266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A016993 (n + 1) - 2).toNat

end

end A363859.P4111561327758153266

/-! ## A363859.P17249846558575898660

`A363805(A016993(n+1)-2)`
-/

namespace A363859.P17249846558575898660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A016993 (n + 1) - 2).toNat

end

end A363859.P17249846558575898660

/-!
# A363860: Number of divisors of 7*n-1 of form 7*k+4.

The programs for A363860, there is no canonical definition to state claims against.
-/

/-! ## A363860.P3338204242423061478

`A363859(n+1)-A375107(n)`
-/

namespace A363860.P3338204242423061478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (n + 1) - A375107 n

end

end A363860.P3338204242423061478

/-! ## A363860.P12789430743160800685

`A363806(7*n+6)`
-/

namespace A363860.P12789430743160800685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * n + 6)

end

end A363860.P12789430743160800685

/-! ## A363860.P2317016162863027126

`A363807(lt[(n+1)/7^val(n+1, 7), n])`
-/

namespace A363860.P2317016162863027126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A363860.P2317016162863027126

/-! ## A363860.P11496099663791156756

`A363807(A017029(n)+2)`
-/

namespace A363860.P11496099663791156756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017029 n + 2).toNat

end

end A363860.P11496099663791156756

/-! ## A363860.P10501433625608486425

`A363807(A017017(n)+3)`
-/

namespace A363860.P10501433625608486425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017017 n + 3).toNat

end

end A363860.P10501433625608486425

/-! ## A363860.P2066925365164808774

`A363807(A016969(n)+n+1)`
-/

namespace A363860.P2066925365164808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A016969 n + (n + 1 : ℤ)).toNat

end

end A363860.P2066925365164808774

/-!
# A363861: Sequence related to chains in type D noncrossing partitions.

The programs for A363861, there is no canonical definition to state claims against.
-/

/-! ## A363861.P6235725803340221203

`A300236((n+2)^(A183567(n)+3))`
-/

namespace A363861.P6235725803340221203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A183567 (n + 10) + 3 : ℤ))).toNat

end

end A363861.P6235725803340221203

/-! ## A363861.P2444527010324249425

`A174824(A302569(n+1)^(A028242(n)+1))`
-/

namespace A363861.P2444527010324249425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (SequenceMachineLib.roundAway ((A302569 (n + 1) : ℚ) ^ (A028242 n + 1 : ℤ))).toNat

end

end A363861.P2444527010324249425

/-!
# A363862: Number of equivalence classes of unimodular n X n matrices with elements {0, 1}.

The programs for A363862, there is no canonical definition to state claims against.
-/

/-! ## A363862.P14649792540782334071

`A307452(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A363862.P14649792540782334071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A307452 (a (n - 1)).toNat + 2

end

end A363862.P14649792540782334071

/-!
# A363863: Numbers expressible as j^2 - k^2, 1 <= k <= j-2 ("squares with a square hole").

The programs for A363863, the canonical program `A363863.P16896874626965199202` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363863 has offset 1).

The definition of A363863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363863.P15131466656845187328

`∪[A156683(n+1), A246549(n+1)]`
-/

namespace A363863.P15131466656845187328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P15131466656845187328

namespace A363863

/-- `∪[A156683(n+1), A246549(n+1)]` -/
def P15131466656845187328.Spec : Prop :=
  ∀ n, (P15131466656845187328.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P16896874626965199202

`∪[A192544(n+1), A226025(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363863

/-- `∪[A192544(n+1), A226025(n+1)]` -/
def P16896874626965199202.Spec : Prop :=
  ∀ n, (P16896874626965199202.a n : ℤ) = A363863 (n + 1)

theorem P16896874626965199202.correct : P16896874626965199202.Spec := by
  intro n
  simp only [A363863, Nat.add_sub_cancel]

end A363863

/-! ## A363863.P11679997671285305919

`∪[A156683(n+1), A320966(n+1)]`
-/

namespace A363863.P11679997671285305919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P11679997671285305919

namespace A363863

/-- `∪[A156683(n+1), A320966(n+1)]` -/
def P11679997671285305919.Spec : Prop :=
  ∀ n, (P11679997671285305919.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P15845323624554549711

`∪[A156683(n+1), A365866(n+1)]`
-/

namespace A363863.P15845323624554549711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P15845323624554549711

namespace A363863

/-- `∪[A156683(n+1), A365866(n+1)]` -/
def P15845323624554549711.Spec : Prop :=
  ∀ n, (P15845323624554549711.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P8682000978013964149

`∪[A156683(n+1), A377847(n+1)]`
-/

namespace A363863.P8682000978013964149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P8682000978013964149

namespace A363863

/-- `∪[A156683(n+1), A377847(n+1)]` -/
def P8682000978013964149.Spec : Prop :=
  ∀ n, (P8682000978013964149.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P13560676621534895443

`∪[A156683(n+1), A390540(n+1)]`
-/

namespace A363863.P13560676621534895443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P13560676621534895443

namespace A363863

/-- `∪[A156683(n+1), A390540(n+1)]` -/
def P13560676621534895443.Spec : Prop :=
  ∀ n, (P13560676621534895443.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P18172838928956609774

`filter[A080257(n+1), A152822(#)]`
-/

namespace A363863.P18172838928956609774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A363863.P18172838928956609774

namespace A363863

/-- `filter[A080257(n+1), A152822(#)]` -/
def P18172838928956609774.Spec : Prop :=
  ∀ n, P18172838928956609774.a n = A363863 (n + 1)

end A363863

/-! ## A363863.P1422692810098171644

`∩[A080257(n+1), A107750(n)]`
-/

namespace A363863.P1422692810098171644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P1422692810098171644

namespace A363863

/-- `∩[A080257(n+1), A107750(n)]` -/
def P1422692810098171644.Spec : Prop :=
  ∀ n, (P1422692810098171644.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P14796581579827958107

`∩[A024352(n+1), A080257(n+1)]`
-/

namespace A363863.P14796581579827958107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P14796581579827958107

namespace A363863

/-- `∩[A024352(n+1), A080257(n+1)]` -/
def P14796581579827958107.Spec : Prop :=
  ∀ n, (P14796581579827958107.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P12191293680494982491

`∩[A042965(n+1), A080257(n+1)]`
-/

namespace A363863.P12191293680494982491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363863.P12191293680494982491

namespace A363863

/-- `∩[A042965(n+1), A080257(n+1)]` -/
def P12191293680494982491.Spec : Prop :=
  ∀ n, (P12191293680494982491.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P1659004133418222279

`lt[(n+2)², A064027(n+1)]+1`
-/

namespace A363863.P1659004133418222279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363863.P1659004133418222279

namespace A363863

/-- `lt[(n+2)², A064027(n+1)]+1` -/
def P1659004133418222279.Spec : Prop :=
  ∀ n, (P1659004133418222279.a n : ℤ) = A363863 (n + 1)

end A363863

/-! ## A363863.P10478108132732062703

`lt[and(1, n+1), A100073(n+1)]+1`
-/

namespace A363863.P10478108132732062703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363863.P10478108132732062703

namespace A363863

/-- `lt[and(1, n+1), A100073(n+1)]+1` -/
def P10478108132732062703.Spec : Prop :=
  ∀ n, (P10478108132732062703.a n : ℤ) = A363863 (n + 1)

end A363863

/-!
# A363864: a(n) = A143007(2*n,n).

The programs for A363864, there is no canonical definition to state claims against.
-/

/-! ## A363864.P2308266899638345467

`A143007(C(3*n+1, 2)+n)`
-/

namespace A363864.P2308266899638345467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (Nat.choose (3 * n + 1) 2 + n)

end

end A363864.P2308266899638345467

/-! ## A363864.P612694954962296615

`A143007(A062725(n))`
-/

namespace A363864.P612694954962296615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A062725 n).toNat

end

end A363864.P612694954962296615

/-! ## A363864.P11042629037987733178

`A143007(A062728(n))`
-/

namespace A363864.P11042629037987733178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A062728 n).toNat

end

end A363864.P11042629037987733178

/-! ## A363864.P13576533946388830822

`A143007(A000217(3*n)+n)`
-/

namespace A363864.P13576533946388830822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A363864.P13576533946388830822

/-! ## A363864.P1732711077145516705

`A143007(A161680(3*n+1)+n)`
-/

namespace A363864.P1732711077145516705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A161680 (3 * n + 1) + (n : ℤ)).toNat

end

end A363864.P1732711077145516705

/-!
# A363865: a(n) = A143007(3*n,n).

The programs for A363865, there is no canonical definition to state claims against.
-/

/-! ## A363865.P17266442430713574758

`A143007(∑[6*n]+5*n²)`
-/

namespace A363865.P17266442430713574758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (∑ j ∈ Finset.range (n + 1), f1 j + 5 * n ^ 2)

end

end A363865.P17266442430713574758

/-! ## A363865.P8590964973091756638

`A143007(A139277(n))+char[A139277(n+3)]`
-/

namespace A363865.P8590964973091756638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A139277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363865.P8590964973091756638

/-! ## A363865.P6954266744896323524

`A143007(A139277(n))/A008459(A033585(n))`
-/

namespace A363865.P6954266744896323524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143007 (A139277 n).toNat : ℚ) / (A008459 (A033585 n).toNat : ℚ)

end

end A363865.P6954266744896323524

/-!
# A363866: a(n) = A143007(3*n,2*n).

The programs for A363866, there is no canonical definition to state claims against.
-/

/-! ## A363866.P912811972008739931

`A143007(A000326(3*n+1)-A028387(n))`
-/

namespace A363866.P912811972008739931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A000326 (3 * n + 1) - A028387 n).toNat

end

end A363866.P912811972008739931

/-!
# A363867: a(n) = A108625(n,2*n).

The programs for A363867, there is no canonical definition to state claims against.
-/

/-! ## A363867.P15966274422215970831

`A108625(A062728(n))`
-/

namespace A363867.P15966274422215970831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A062728 n).toNat

end

end A363867.P15966274422215970831

/-! ## A363867.P11920147701373695371

`A108625(A062725(n)+n)`
-/

namespace A363867.P11920147701373695371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A062725 n + (n : ℤ)).toNat

end

end A363867.P11920147701373695371

/-! ## A363867.P9021780000171976729

`A108625(A060544(n+1)-(n+1))`
-/

namespace A363867.P9021780000171976729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A060544 (n + 1) - (n + 1 : ℤ)).toNat

end

end A363867.P9021780000171976729

/-! ## A363867.P17765002458331442319

`A108625(A000217(3*n+1)-(n+1))`
-/

namespace A363867.P17765002458331442319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A000217 (3 * n + 1) - (n + 1 : ℤ)).toNat

end

end A363867.P17765002458331442319

/-! ## A363867.P16133732207771645875

`A108625(A028895(n)+A000217(2*n))`
-/

namespace A363867.P16133732207771645875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A028895 n + A000217 (2 * n)).toNat

end

end A363867.P16133732207771645875

/-!
# A363868: a(n) = A108625(3*n, n).

The programs for A363868, there is no canonical definition to state claims against.
-/

/-! ## A363868.P4033872659540402265

`A108625(A139276(n))`
-/

namespace A363868.P4033872659540402265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A139276 n).toNat

end

end A363868.P4033872659540402265

/-! ## A363868.P17310101661352335212

`A108625(A033585(n)+n)`
-/

namespace A363868.P17310101661352335212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A033585 n + (n : ℤ)).toNat

end

end A363868.P17310101661352335212

/-! ## A363868.P2334065289978404407

`A108625(A033586(n)-n)`
-/

namespace A363868.P2334065289978404407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A033586 n - (n : ℤ)).toNat

end

end A363868.P2334065289978404407

/-! ## A363868.P15456258660356020563

`A108625(A046092(2*n)-n)`
-/

namespace A363868.P15456258660356020563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A046092 (2 * n) - (n : ℤ)).toNat

end

end A363868.P15456258660356020563

/-! ## A363868.P2476740209166669331

`A108625(n*A004767(2*n))`
-/

namespace A363868.P2476740209166669331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 ((n : ℤ) * A004767 (2 * n)).toNat

end

end A363868.P2476740209166669331

/-!
# A363869: a(n) = A108625(3*n, 2*n).

The programs for A363869, there is no canonical definition to state claims against.
-/

/-! ## A363869.P10657607170845283037

`A108625(A056119(n)+A049450(2*n))`
-/

namespace A363869.P10657607170845283037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A056119 n + A049450 (2 * n)).toNat

end

end A363869.P10657607170845283037

/-!
# A363870: a(n) = A108625(n, 3*n).

The programs for A363870, there is no canonical definition to state claims against.
-/

/-! ## A363870.P5767345525697680815

`A108625(A139277(n))`
-/

namespace A363870.P5767345525697680815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A139277 n).toNat

end

end A363870.P5767345525697680815

/-! ## A363870.P17414831544506743859

`A108625(A033586(n)+n)`
-/

namespace A363870.P17414831544506743859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A033586 n + (n : ℤ)).toNat

end

end A363870.P17414831544506743859

/-! ## A363870.P251774200604418935

`A108625(A102083(n)+n-1)`
-/

namespace A363870.P251774200604418935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A102083 n + ((n : ℤ) - 1)).toNat

end

end A363870.P251774200604418935

/-! ## A363870.P16685072621483902993

`A108625(A046092(2*n)+n)`
-/

namespace A363870.P16685072621483902993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A363870.P16685072621483902993

/-! ## A363870.P5553826444592241487

`A108625(n*A016813(2*n+1))`
-/

namespace A363870.P5553826444592241487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 ((n : ℤ) * A016813 (2 * n + 1)).toNat

end

end A363870.P5553826444592241487

/-!
# A363875: Numbers k such that there is no odd number whose aliquot sequence contains k.

The programs for A363875, there is no canonical definition to state claims against.
-/

/-! ## A363875.P8822663294020163931

`∑[A033722(A232010(2^n+1)-1)]`
-/

namespace A363875.P8822663294020163931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033722 (A232010 (2 ^ n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363875.P8822663294020163931

/-!
# A363877: Number of divisors of 7*n-2 of form 7*k+3.

The programs for A363877, the canonical program `A363877.P5318186038474391426` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363877 has offset 1).

The definition of A363877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363877.P5318186038474391426

`A363805(A017041(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363877

/-- `A363805(A017041(n))` -/
def P5318186038474391426.Spec : Prop :=
  ∀ n, P5318186038474391426.a n = A363877 (n + 1)

theorem P5318186038474391426.correct : P5318186038474391426.Spec := by
  intro n
  simp only [A363877, Nat.add_sub_cancel]

end A363877

/-! ## A363877.P5743123536376334016

`A363806(Δ[A186029(n)])`
-/

namespace A363877.P5743123536376334016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (f1 (n + 1) - f1 n).toNat

end

end A363877.P5743123536376334016

namespace A363877

/-- `A363806(Δ[A186029(n)])` -/
def P5743123536376334016.Spec : Prop :=
  ∀ n, P5743123536376334016.a n = A363877 (n + 1)

end A363877

/-! ## A363877.P9490580622823228532

`A363805(A017029(n)+1)`
-/

namespace A363877.P9490580622823228532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017029 n + 1).toNat

end

end A363877.P9490580622823228532

namespace A363877

/-- `A363805(A017029(n)+1)` -/
def P9490580622823228532.Spec : Prop :=
  ∀ n, P9490580622823228532.a n = A363877 (n + 1)

end A363877

/-! ## A363877.P2051064205052669622

`A363806(A017017(n)+2)`
-/

namespace A363877.P2051064205052669622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A017017 n + 2).toNat

end

end A363877.P2051064205052669622

namespace A363877

/-- `A363806(A017017(n)+2)` -/
def P2051064205052669622.Spec : Prop :=
  ∀ n, P2051064205052669622.a n = A363877 (n + 1)

end A363877

/-! ## A363877.P13958970567513106143

`A363806(A017053(n)-1)`
-/

namespace A363877.P13958970567513106143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A017053 n - 1).toNat

end

end A363877.P13958970567513106143

namespace A363877

/-- `A363806(A017053(n)-1)` -/
def P13958970567513106143.Spec : Prop :=
  ∀ n, P13958970567513106143.a n = A363877 (n + 1)

end A363877

/-!
# A363878: Number of divisors of 7*n-4 of form 7*k+2.

The programs for A363878, the canonical program `A363878.P8371790707819796797` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363878 has offset 1).

The definition of A363878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363878.P8371790707819796797

`A363795(A017017(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363878

/-- `A363795(A017017(n))` -/
def P8371790707819796797.Spec : Prop :=
  ∀ n, P8371790707819796797.a n = A363878 (n + 1)

theorem P8371790707819796797.correct : P8371790707819796797.Spec := by
  intro n
  simp only [A363878, Nat.add_sub_cancel]

end A363878

/-! ## A363878.P12608868036816238798

`A363807(A017005(n)+1)`
-/

namespace A363878.P12608868036816238798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017005 n + 1).toNat

end

end A363878.P12608868036816238798

namespace A363878

/-- `A363807(A017005(n)+1)` -/
def P12608868036816238798.Spec : Prop :=
  ∀ n, P12608868036816238798.a n = A363878 (n + 1)

end A363878

/-! ## A363878.P17272373561218486608

`A363795(A016993(n)+2)`
-/

namespace A363878.P17272373561218486608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A016993 n + 2).toNat

end

end A363878.P17272373561218486608

namespace A363878

/-- `A363795(A016993(n)+2)` -/
def P17272373561218486608.Spec : Prop :=
  ∀ n, P17272373561218486608.a n = A363878 (n + 1)

end A363878

/-! ## A363878.P10933379840603748911

`A363795(A017029(n)-1)`
-/

namespace A363878.P10933379840603748911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017029 n - 1).toNat

end

end A363878.P10933379840603748911

namespace A363878

/-- `A363795(A017029(n)-1)` -/
def P10933379840603748911.Spec : Prop :=
  ∀ n, P10933379840603748911.a n = A363878 (n + 1)

end A363878

/-! ## A363878.P1304336197704075505

`A363807(A017029(n)-1)`
-/

namespace A363878.P1304336197704075505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017029 n - 1).toNat

end

end A363878.P1304336197704075505

namespace A363878

/-- `A363807(A017029(n)-1)` -/
def P1304336197704075505.Spec : Prop :=
  ∀ n, P1304336197704075505.a n = A363878 (n + 1)

end A363878

/-! ## A363878.P13394377671124516862

`A363795(A017041(n)-2)`
-/

namespace A363878.P13394377671124516862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017041 n - 2).toNat

end

end A363878.P13394377671124516862

namespace A363878

/-- `A363795(A017041(n)-2)` -/
def P13394377671124516862.Spec : Prop :=
  ∀ n, P13394377671124516862.a n = A363878 (n + 1)

end A363878

/-! ## A363878.P9854616435629850931

`A363795(A017053(2*n)/2)`
-/

namespace A363878.P9854616435629850931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (SequenceMachineLib.roundAway ((A017053 (2 * n) : ℚ) / 2)).toNat

end

end A363878.P9854616435629850931

namespace A363878

/-- `A363795(A017053(2*n)/2)` -/
def P9854616435629850931.Spec : Prop :=
  ∀ n, P9854616435629850931.a n = A363878 (n + 1)

end A363878

/-!
# A363879: Number of divisors of 7*n-6 of form 7*k+2.

The programs for A363879, the canonical program `A363879.P16011273899818667065` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363879 has offset 1).

The definition of A363879 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363879.P16011273899818667065

`A363795(7*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363879

/-- `A363795(7*n+1)` -/
def P16011273899818667065.Spec : Prop :=
  ∀ n, P16011273899818667065.a n = A363879 (n + 1)

theorem P16011273899818667065.correct : P16011273899818667065.Spec := by
  intro n
  simp only [A363879, Nat.add_sub_cancel]

end A363879

/-! ## A363879.P17442358116878583984

`A363806(7*n+1)`
-/

namespace A363879.P17442358116878583984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * n + 1)

end

end A363879.P17442358116878583984

namespace A363879

/-- `A363806(7*n+1)` -/
def P17442358116878583984.Spec : Prop :=
  ∀ n, P17442358116878583984.a n = A363879 (n + 1)

end A363879

/-! ## A363879.P4404315010660701321

`A380833(A268385(n+1))`
-/

namespace A363879.P4404315010660701321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380833 (A268385 (n + 1)).toNat

end

end A363879.P4404315010660701321

namespace A363879

/-- `A380833(A268385(n+1))` -/
def P4404315010660701321.Spec : Prop :=
  ∀ n, P4404315010660701321.a n = A363879 (n + 1)

end A363879

/-! ## A363879.P8293908631340732722

`A380833(A355264(n+1))`
-/

namespace A363879.P8293908631340732722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380833 (A355264 (n + 1)).toNat

end

end A363879.P8293908631340732722

namespace A363879

/-- `A380833(A355264(n+1))` -/
def P8293908631340732722.Spec : Prop :=
  ∀ n, P8293908631340732722.a n = A363879 (n + 1)

end A363879

/-! ## A363879.P11723466487116999408

`A007814(A019276(n+1)*A336314(n+1))`
-/

namespace A363879.P11723466487116999408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A019276 (n + 1) * A336314 (n + 1)).toNat

end

end A363879.P11723466487116999408

namespace A363879

/-- `A007814(A019276(n+1)*A336314(n+1))` -/
def P11723466487116999408.Spec : Prop :=
  ∀ n, P11723466487116999408.a n = A363879 (n + 1)

end A363879

/-!
# A363880: Number of divisors of 7*n-6 of form 7*k+3.

The programs for A363880, the canonical program `A363880.P7390810091035147557` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363880 has offset 1).

The definition of A363880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363880.P7390810091035147557

`A363805(7*n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363880

/-- `A363805(7*n+1)` -/
def P7390810091035147557.Spec : Prop :=
  ∀ n, P7390810091035147557.a n = A363880 (n + 1)

theorem P7390810091035147557.correct : P7390810091035147557.Spec := by
  intro n
  simp only [A363880, Nat.add_sub_cancel]

end A363880

/-! ## A363880.P6618798681088221548

`A363807(7*n+1)`
-/

namespace A363880.P6618798681088221548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (7 * n + 1)

end

end A363880.P6618798681088221548

namespace A363880

/-- `A363807(7*n+1)` -/
def P6618798681088221548.Spec : Prop :=
  ∀ n, P6618798681088221548.a n = A363880 (n + 1)

end A363880

/-! ## A363880.P17627471791631176093

`A331782(A228166(n+2))%A067760(2*(n+1))`
-/

namespace A363880.P17627471791631176093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331782 (A228166 (n + 2)).toNat) (A067760 (2 * (n + 1)))

end

end A363880.P17627471791631176093

namespace A363880

/-- `A331782(A228166(n+2))%A067760(2*(n+1))` -/
def P17627471791631176093.Spec : Prop :=
  ∀ n, P17627471791631176093.a n = A363880 (n + 1)

end A363880

/-! ## A363880.P5152420307159659669

`A324198(A052335(2*(n+2)))%A050412(n+5)`
-/

namespace A363880.P5152420307159659669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324198 (A052335 (2 * (n + 2))).toNat) (A050412 (n + 5))

end

end A363880.P5152420307159659669

namespace A363880

/-- `A324198(A052335(2*(n+2)))%A050412(n+5)` -/
def P5152420307159659669.Spec : Prop :=
  ∀ n, P5152420307159659669.a n = A363880 (n + 1)

end A363880

/-! ## A363880.P13850031338135510455

`A083913(n+1)+A045698(A064278(n+3))`
-/

namespace A363880.P13850031338135510455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (n + 1) + A045698 (A064278 (n + 3)).toNat

end

end A363880.P13850031338135510455

namespace A363880

/-- `A083913(n+1)+A045698(A064278(n+3))` -/
def P13850031338135510455.Spec : Prop :=
  ∀ n, P13850031338135510455.a n = A363880 (n + 1)

end A363880

/-!
# A363882: Take 2 copies of Pascal's triangle. One copy has one inch between the terms of each row and the other copy has two inches between the terms of each row. Put one on top of the other so that the 1's at the very top of each copy coincide. Sequence is a triangle giving the differences between the overlapping terms.

The programs for A363882, there is no canonical definition to state claims against.
-/

/-! ## A363882.P13070743482951562185

`A007318(n)-A204293(n)`
-/

namespace A363882.P13070743482951562185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A204293 n

end

end A363882.P13070743482951562185

/-! ## A363882.P9470598922371232952

`abs(A130595(n)-A204293(n))`
-/

namespace A363882.P9470598922371232952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n - A204293 n|

end

end A363882.P9470598922371232952

/-! ## A363882.P13169967703810784228

`A007318(n)-A057211(n+1)*A178112(n)`
-/

namespace A363882.P13169967703810784228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A057211 (n + 1) * A178112 n

end

end A363882.P13169967703810784228

/-! ## A363882.P2759042241596729058

`Δ[A102363(n)]-A057211(n+1)*A178112(n)`
-/

namespace A363882.P2759042241596729058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057211 (n + 1) * A178112 n

end

end A363882.P2759042241596729058

/-! ## A363882.P5366928132544397582

`A007318(n)-A057211(n+1)*A179181(n+1)`
-/

namespace A363882.P5366928132544397582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A057211 (n + 1) * A179181 (n + 1)

end

end A363882.P5366928132544397582

/-! ## A363882.P7862431978167818063

`A028326(n)/2-A057211(n+1)*A178112(n)`
-/

namespace A363882.P7862431978167818063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A057211 (n + 1) * A178112 n : ℚ)

end

end A363882.P7862431978167818063

/-! ## A363882.P14618105026951775142

`Δ[A102363(n)]-A057211(n+1)*A179181(n+1)`
-/

namespace A363882.P14618105026951775142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057211 (n + 1) * A179181 (n + 1)

end

end A363882.P14618105026951775142

/-! ## A363882.P16969761152857452719

`A007318(n)-A178112(A057944(n))*A178112(n)`
-/

namespace A363882.P16969761152857452719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A178112 (A057944 n).toNat * A178112 n

end

end A363882.P16969761152857452719

/-! ## A363882.P15271493324756340084

`A007318(n)-A051159(A127739(n+1)+1)*A051159(n)`
-/

namespace A363882.P15271493324756340084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A051159 (A127739 (n + 1) + 1).toNat * A051159 n

end

end A363882.P15271493324756340084

/-!
# A363884: Number of connected bipartite graphs on 2n nodes with a distinguished partite set of size n and with a unimodular reduced adjacency matrix.

The programs for A363884, there is no canonical definition to state claims against.
-/

/-! ## A363884.P12161841739115914225

`A133493(A218135(n))`
-/

namespace A363884.P12161841739115914225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133493 (A218135 n).toNat

end

end A363884.P12161841739115914225

/-!
# A363885: Number of divisors of 7*n-3 of form 7*k+2.

The programs for A363885, there is no canonical definition to state claims against.
-/

/-! ## A363885.P9920955474385231501

`A375158(n)+A363886(n+1)`
-/

namespace A363885.P9920955474385231501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375158 n + A363886 (n + 1)

end

end A363885.P9920955474385231501

/-! ## A363885.P12975454623392370774

`A363795(A017029(n))`
-/

namespace A363885.P12975454623392370774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017029 n).toNat

end

end A363885.P12975454623392370774

/-! ## A363885.P6985476065392206937

`A363795(A017017(n)+1)`
-/

namespace A363885.P6985476065392206937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017017 n + 1).toNat

end

end A363885.P6985476065392206937

/-! ## A363885.P2409540994182704134

`A363795(A017041(n)-1)`
-/

namespace A363885.P2409540994182704134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017041 n - 1).toNat

end

end A363885.P2409540994182704134

/-! ## A363885.P1412477170561028676

`A363795(A017053(n)-2)`
-/

namespace A363885.P1412477170561028676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017053 n - 2).toNat

end

end A363885.P1412477170561028676

/-! ## A363885.P3348345757216842249

`A363795(A016993(2*n+1)/2)`
-/

namespace A363885.P3348345757216842249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (SequenceMachineLib.roundAway ((A016993 (2 * n + 1) : ℚ) / 2)).toNat

end

end A363885.P3348345757216842249

/-!
# A363886: Number of divisors of 7*n-3 of form 7*k+5.

The programs for A363886, there is no canonical definition to state claims against.
-/

/-! ## A363886.P6491274246193198993

`A363885(n+1)-A375158(n)`
-/

namespace A363886.P6491274246193198993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363885 (n + 1) - A375158 n

end

end A363886.P6491274246193198993

/-! ## A363886.P4698702400541157780

`A363807(A017029(n))`
-/

namespace A363886.P4698702400541157780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017029 n).toNat

end

end A363886.P4698702400541157780

/-! ## A363886.P12426214493350351698

`A363807(A017005(n)+2)`
-/

namespace A363886.P12426214493350351698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A017005 n + 2).toNat

end

end A363886.P12426214493350351698

/-! ## A363886.P1668918942466499286

`A363807(A016957(n)+n)`
-/

namespace A363886.P1668918942466499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A016957 n + (n : ℤ)).toNat

end

end A363886.P1668918942466499286

/-! ## A363886.P3255914895456236830

`A363807(A016945(n)+n+1)`
-/

namespace A363886.P3255914895456236830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A016945 n + (n + 1 : ℤ)).toNat

end

end A363886.P3255914895456236830

/-! ## A363886.P1924052826722308046

`A363807(A004767(2*n+1)-(n+3))`
-/

namespace A363886.P1924052826722308046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A004767 (2 * n + 1) - (n + 3 : ℤ)).toNat

end

end A363886.P1924052826722308046

/-!
# A363887: Number of divisors of 7*n-5 of form 7*k+3.

The programs for A363887, the canonical program `A363887.P16209446916537058336` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363887 has offset 1).

The definition of A363887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363887.P16209446916537058336

`A363805(xor(1, 8*n)-(n-1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363887

/-- `A363805(xor(1, 8*n)-(n-1))` -/
def P16209446916537058336.Spec : Prop :=
  ∀ n, P16209446916537058336.a n = A363887 (n + 1)

theorem P16209446916537058336.correct : P16209446916537058336.Spec := by
  intro n
  simp only [A363887, Nat.add_sub_cancel]

end A363887

/-! ## A363887.P5951737826958950258

`A363805(A017005(n))`
-/

namespace A363887.P5951737826958950258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017005 n).toNat

end

end A363887.P5951737826958950258

namespace A363887

/-- `A363805(A017005(n))` -/
def P5951737826958950258.Spec : Prop :=
  ∀ n, P5951737826958950258.a n = A363887 (n + 1)

end A363887

/-! ## A363887.P5114709343090584852

`A363805(A016993(n)+1)`
-/

namespace A363887.P5114709343090584852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A016993 n + 1).toNat

end

end A363887.P5114709343090584852

namespace A363887

/-- `A363805(A016993(n)+1)` -/
def P5114709343090584852.Spec : Prop :=
  ∀ n, P5114709343090584852.a n = A363887 (n + 1)

end A363887

/-! ## A363887.P8792925063071207677

`A363805(A017029(n)-2)`
-/

namespace A363887.P8792925063071207677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017029 n - 2).toNat

end

end A363887.P8792925063071207677

namespace A363887

/-- `A363805(A017029(n)-2)` -/
def P8792925063071207677.Spec : Prop :=
  ∀ n, P8792925063071207677.a n = A363887 (n + 1)

end A363887

/-! ## A363887.P4905264105494768643

`A363805(A017029(2*n)/2)`
-/

namespace A363887.P4905264105494768643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (SequenceMachineLib.roundAway ((A017029 (2 * n) : ℚ) / 2)).toNat

end

end A363887.P4905264105494768643

namespace A363887

/-- `A363805(A017029(2*n)/2)` -/
def P4905264105494768643.Spec : Prop :=
  ∀ n, P4905264105494768643.a n = A363887 (n + 1)

end A363887

/-!
# A363888: Number of divisors of 7*n-5 of form 7*k+4.

The programs for A363888, the canonical program `A363888.P18254920220913849060` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363888 has offset 1).

The definition of A363888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363888.P18254920220913849060

`A363806(A017005(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363888

/-- `A363806(A017005(n))` -/
def P18254920220913849060.Spec : Prop :=
  ∀ n, P18254920220913849060.a n = A363888 (n + 1)

theorem P18254920220913849060.correct : P18254920220913849060.Spec := by
  intro n
  simp only [A363888, Nat.add_sub_cancel]

end A363888

/-! ## A363888.P11541226999837120269

`A363806(A016993(n)+1)`
-/

namespace A363888.P11541226999837120269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A016993 n + 1).toNat

end

end A363888.P11541226999837120269

namespace A363888

/-- `A363806(A016993(n)+1)` -/
def P11541226999837120269.Spec : Prop :=
  ∀ n, P11541226999837120269.a n = A363888 (n + 1)

end A363888

/-! ## A363888.P1439467217841372303

`A363806(A017017(n)-1)`
-/

namespace A363888.P1439467217841372303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A017017 n - 1).toNat

end

end A363888.P1439467217841372303

namespace A363888

/-- `A363806(A017017(n)-1)` -/
def P1439467217841372303.Spec : Prop :=
  ∀ n, P1439467217841372303.a n = A363888 (n + 1)

end A363888

/-! ## A363888.P11199208402763138274

`A363806(A017053(n)-4)`
-/

namespace A363888.P11199208402763138274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A017053 n - 4).toNat

end

end A363888.P11199208402763138274

namespace A363888

/-- `A363806(A017053(n)-4)` -/
def P11199208402763138274.Spec : Prop :=
  ∀ n, P11199208402763138274.a n = A363888 (n + 1)

end A363888

/-! ## A363888.P16710813775853762342

`A363806(sqrt(sqrt(A017008(n))))`
-/

namespace A363888.P16710813775853762342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A017008 n : ℝ)))).toNat

end

end A363888.P16710813775853762342

namespace A363888

/-- `A363806(sqrt(sqrt(A017008(n))))` -/
def P16710813775853762342.Spec : Prop :=
  ∀ n, P16710813775853762342.a n = A363888 (n + 1)

end A363888

/-! ## A363888.P2564262916464998159

`A363806(A047275(3*n+2)+1)`
-/

namespace A363888.P2564262916464998159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A047275 (3 * n + 2) + 1).toNat

end

end A363888.P2564262916464998159

namespace A363888

/-- `A363806(A047275(3*n+2)+1)` -/
def P2564262916464998159.Spec : Prop :=
  ∀ n, P2564262916464998159.a n = A363888 (n + 1)

end A363888

/-!
# A363889: Sum of divisors of 3*n-2 of form 3*k+1.

The programs for A363889, the canonical program `A363889.P3675962826148467053` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363889 has offset 1).

The definition of A363889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363889.P3675962826148467053

`A078181(3*n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363889

/-- `A078181(3*n+1)` -/
def P3675962826148467053.Spec : Prop :=
  ∀ n, P3675962826148467053.a n = A363889 (n + 1)

theorem P3675962826148467053.correct : P3675962826148467053.Spec := by
  intro n
  simp only [A363889, Nat.add_sub_cancel]

end A363889

/-! ## A363889.P4759222210857015235

`A144614(n)-A363891(n+1)`
-/

namespace A363889.P4759222210857015235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 n - A363891 (n + 1)

end

end A363889.P4759222210857015235

namespace A363889

/-- `A144614(n)-A363891(n+1)` -/
def P4759222210857015235.Spec : Prop :=
  ∀ n, P4759222210857015235.a n = A363889 (n + 1)

end A363889

/-! ## A363889.P399482592271920149

`A082051(3*n+1)`
-/

namespace A363889.P399482592271920149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082051 (3 * n + 1)

end

end A363889.P399482592271920149

namespace A363889

/-- `A082051(3*n+1)` -/
def P399482592271920149.Spec : Prop :=
  ∀ n, P399482592271920149.a n = A363889 (n + 1)

end A363889

/-! ## A363889.P11644763305224706921

`A326399(3*n+1)`
-/

namespace A363889.P11644763305224706921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (3 * n + 1)

end

end A363889.P11644763305224706921

namespace A363889

/-- `A326399(3*n+1)` -/
def P11644763305224706921.Spec : Prop :=
  ∀ n, P11644763305224706921.a n = A363889 (n + 1)

end A363889

/-! ## A363889.P12197966164189116801

`A293897(A008486(2*n)+A008486(n+1))`
-/

namespace A363889.P12197966164189116801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293897 (A008486 (2 * n) + A008486 (n + 1)).toNat

end

end A363889.P12197966164189116801

namespace A363889

/-- `A293897(A008486(2*n)+A008486(n+1))` -/
def P12197966164189116801.Spec : Prop :=
  ∀ n, P12197966164189116801.a n = A363889 (n + 1)

end A363889

/-!
# A363890: Sum of divisors of 3*n-1 of form 3*k+2.

The programs for A363890, the canonical program `A363890.P2710752947543390885` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363890 has offset 1).

The definition of A363890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363890.P2710752947543390885

`A144615(n)-A363514(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363890

/-- `A144615(n)-A363514(n+1)` -/
def P2710752947543390885.Spec : Prop :=
  ∀ n, P2710752947543390885.a n = A363890 (n + 1)

theorem P2710752947543390885.correct : P2710752947543390885.Spec := by
  intro n
  simp only [A363890, Nat.add_sub_cancel]

end A363890

/-! ## A363890.P16778052447070383550

`A078182(3*n+2)`
-/

namespace A363890.P16778052447070383550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (3 * n + 2)

end

end A363890.P16778052447070383550

namespace A363890

/-- `A078182(3*n+2)` -/
def P16778052447070383550.Spec : Prop :=
  ∀ n, P16778052447070383550.a n = A363890 (n + 1)

end A363890

/-! ## A363890.P50442243248601405

`A082050(3*n+2)`
-/

namespace A363890.P50442243248601405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (3 * n + 2)

end

end A363890.P50442243248601405

namespace A363890

/-- `A082050(3*n+2)` -/
def P50442243248601405.Spec : Prop :=
  ∀ n, P50442243248601405.a n = A363890 (n + 1)

end A363890

/-! ## A363890.P7700262348327845628

`A326399(3*n+2)`
-/

namespace A363890.P7700262348327845628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (3 * n + 2)

end

end A363890.P7700262348327845628

namespace A363890

/-- `A326399(3*n+2)` -/
def P7700262348327845628.Spec : Prop :=
  ∀ n, P7700262348327845628.a n = A363890 (n + 1)

end A363890

/-! ## A363890.P8898801877858702618

`A293898(9*n+6)`
-/

namespace A363890.P8898801877858702618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293898 (9 * n + 6)

end

end A363890.P8898801877858702618

namespace A363890

/-- `A293898(9*n+6)` -/
def P8898801877858702618.Spec : Prop :=
  ∀ n, P8898801877858702618.a n = A363890 (n + 1)

end A363890

/-!
# A363891: Sum of divisors of 3*n-2 of form 3*k+2.

The programs for A363891, the canonical program `A363891.P3580145014683779225` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363891 has offset 1).

The definition of A363891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363891.P3580145014683779225

`A078182(3*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363891

/-- `A078182(3*n+1)` -/
def P3580145014683779225.Spec : Prop :=
  ∀ n, P3580145014683779225.a n = A363891 (n + 1)

theorem P3580145014683779225.correct : P3580145014683779225.Spec := by
  intro n
  simp only [A363891, Nat.add_sub_cancel]

end A363891

/-! ## A363891.P5766902026925778578

`A144614(n)-A363889(n+1)`
-/

namespace A363891.P5766902026925778578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 n - A363889 (n + 1)

end

end A363891.P5766902026925778578

namespace A363891

/-- `A144614(n)-A363889(n+1)` -/
def P5766902026925778578.Spec : Prop :=
  ∀ n, P5766902026925778578.a n = A363891 (n + 1)

end A363891

/-! ## A363891.P4197706840477328332

`A293898(3*n+1)`
-/

namespace A363891.P4197706840477328332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293898 (3 * n + 1)

end

end A363891.P4197706840477328332

namespace A363891

/-- `A293898(3*n+1)` -/
def P4197706840477328332.Spec : Prop :=
  ∀ n, P4197706840477328332.a n = A363891 (n + 1)

end A363891

/-! ## A363891.P4788980303322356335

`A082050(3*n+1)`
-/

namespace A363891.P4788980303322356335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (3 * n + 1)

end

end A363891.P4788980303322356335

namespace A363891

/-- `A082050(3*n+1)` -/
def P4788980303322356335.Spec : Prop :=
  ∀ n, P4788980303322356335.a n = A363891 (n + 1)

end A363891

/-! ## A363891.P17465663692256363850

`A326400(3*n+1)`
-/

namespace A363891.P17465663692256363850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326400 (3 * n + 1)

end

end A363891.P17465663692256363850

namespace A363891

/-- `A326400(3*n+1)` -/
def P17465663692256363850.Spec : Prop :=
  ∀ n, P17465663692256363850.a n = A363891 (n + 1)

end A363891

/-!
# A363893: Number of weakly connected components of an addsub configuration graph with respect to integers mod n over a path with two vertices.

The programs for A363893, there is no canonical definition to state claims against.
-/

/-! ## A363893.P8137712031608494886

`A374741(A038548(n+1)*A241916(n+1))`
-/

namespace A363893.P8137712031608494886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (A038548 (n + 1) * A241916 (n + 1)).toNat

end

end A363893.P8137712031608494886

/-! ## A363893.P15946859680379199246

`A211100(A199402(n+3))-A072608(n+5)`
-/

namespace A363893.P15946859680379199246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A199402 (n + 3)).toNat - A072608 (n + 5)

end

end A363893.P15946859680379199246

/-!
# A363895: Floor of the average of the distinct prime factors of n.

The programs for A363895, the canonical program `A363895.P17868009645910452837` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363895 has offset 2).

The definition of A363895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323171, A323172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363895.P17868009645910452837

`floor(A323171(n+2)/A323172(n+2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363895

/-- `floor(A323171(n+2)/A323172(n+2))` -/
def P17868009645910452837.Spec : Prop :=
  ∀ n, P17868009645910452837.a n = A363895 (n + 2)

theorem P17868009645910452837.correct : P17868009645910452837.Spec := by
  intro n
  simp only [A363895, Nat.add_sub_cancel]

end A363895

/-! ## A363895.P2726684444735055789

`A126594(∏{p}[n+2, #])`
-/

namespace A363895.P2726684444735055789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A363895.P2726684444735055789

namespace A363895

/-- `A126594(∏{p}[n+2, #])` -/
def P2726684444735055789.Spec : Prop :=
  ∀ n, P2726684444735055789.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P13333318525689756064

`A126594(A007947(n+2))`
-/

namespace A363895.P13333318525689756064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A007947 (n + 2)).toNat

end

end A363895.P13333318525689756064

namespace A363895

/-- `A126594(A007947(n+2))` -/
def P13333318525689756064.Spec : Prop :=
  ∀ n, P13333318525689756064.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P3463161180005128615

`A126594(A062759(n+2))`
-/

namespace A363895.P3463161180005128615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A062759 (n + 2)).toNat

end

end A363895.P3463161180005128615

namespace A363895

/-- `A126594(A062759(n+2))` -/
def P3463161180005128615.Spec : Prop :=
  ∀ n, P3463161180005128615.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P2030130932475163494

`A126594(A166140(n+2))`
-/

namespace A363895.P2030130932475163494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A166140 (n + 2)).toNat

end

end A363895.P2030130932475163494

namespace A363895

/-- `A126594(A166140(n+2))` -/
def P2030130932475163494.Spec : Prop :=
  ∀ n, P2030130932475163494.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P12965326187006582857

`A126594(A078615(n+2))`
-/

namespace A363895.P12965326187006582857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A078615 (n + 2)).toNat

end

end A363895.P12965326187006582857

namespace A363895

/-- `A126594(A078615(n+2))` -/
def P12965326187006582857.Spec : Prop :=
  ∀ n, P12965326187006582857.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P6464784049263463767

`A126594(A015052(n+2)²)`
-/

namespace A363895.P6464784049263463767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A015052 (n + 2) ^ 2).toNat

end

end A363895.P6464784049263463767

namespace A363895

/-- `A126594(A015052(n+2)²)` -/
def P6464784049263463767.Spec : Prop :=
  ∀ n, P6464784049263463767.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P16118045614955100528

`A126594(A015053(n+2)²)`
-/

namespace A363895.P16118045614955100528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A015053 (n + 2) ^ 2).toNat

end

end A363895.P16118045614955100528

namespace A363895

/-- `A126594(A015053(n+2)²)` -/
def P16118045614955100528.Spec : Prop :=
  ∀ n, P16118045614955100528.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P11852625877181400218

`A126594(A019555(n+2)²)`
-/

namespace A363895.P11852625877181400218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A019555 (n + 2) ^ 2).toNat

end

end A363895.P11852625877181400218

namespace A363895

/-- `A126594(A019555(n+2)²)` -/
def P11852625877181400218.Spec : Prop :=
  ∀ n, P11852625877181400218.a n = A363895 (n + 2)

end A363895

/-! ## A363895.P7918538097972689789

`A126594(A053166(n+2)²)`
-/

namespace A363895.P7918538097972689789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (A053166 (n + 2) ^ 2).toNat

end

end A363895.P7918538097972689789

namespace A363895

/-- `A126594(A053166(n+2)²)` -/
def P7918538097972689789.Spec : Prop :=
  ∀ n, P7918538097972689789.a n = A363895 (n + 2)

end A363895

/-!
# A363897: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k)).

The programs for A363897, the canonical program `A363897.P12998349045789475142` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363897 has offset 1).

The definition of A363897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363897.P12998349045789475142

`∑{d}[n+1, #*A079998((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363897

/-- `∑{d}[n+1, #*A079998((n+1)/#-1)]` -/
def P12998349045789475142.Spec : Prop :=
  ∀ n, P12998349045789475142.a n = A363897 (n + 1)

theorem P12998349045789475142.correct : P12998349045789475142.Spec := by
  intro n
  simp only [A363897, Nat.add_sub_cancel]

end A363897

/-!
# A363898: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k)).

The programs for A363898, there is no canonical definition to state claims against.
-/

/-! ## A363898.P17990204986866606009

`A363900(2*(n+1))%A068987(gcd(n+1, (9-n)^13))`
-/

namespace A363898.P17990204986866606009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363900 (2 * (n + 1))) (A068987 (Int.gcd (n + 1 : ℤ) ((9 - (n : ℤ)) ^ 13)))

end

end A363898.P17990204986866606009

/-! ## A363898.P5732327165890929873

`A003108(3*n+4)%A000001(A136016(n+2))`
-/

namespace A363898.P5732327165890929873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003108 (3 * n + 4)) (A000001 (A136016 (n + 2)).toNat)

end

end A363898.P5732327165890929873

/-! ## A363898.P4142281667586065516

`A364020(n+1)^A118933(n+1)`
-/

namespace A363898.P4142281667586065516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364020 (n + 1) : ℚ) ^ (A118933 (n + 1) : ℤ)

end

end A363898.P4142281667586065516

/-! ## A363898.P17296394570748465047

`gcd(A007814(∑[2^n]), A364020(n+1))`
-/

namespace A363898.P17296394570748465047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (∑ j ∈ Finset.range (n + 1), f1 j)) (A364020 (n + 1))

end

end A363898.P17296394570748465047

/-! ## A363898.P18176016266569079576

`C(∑[A204425(A319559(n))], 2)%(n+1)`
-/

namespace A363898.P18176016266569079576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204425 (A319559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 % (n + 1)

end

end A363898.P18176016266569079576

/-!
# A363899: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k)).

The programs for A363899, there is no canonical definition to state claims against.
-/

/-! ## A363899.P10922481201122164837

`abs(A364021(n+1)%A263602(3*n+1))`
-/

namespace A363899.P10922481201122164837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A364021 (n + 1)) (A263602 (3 * n + 1))|

end

end A363899.P10922481201122164837

/-! ## A363899.P17710587298966306120

`gcd(A000038(A008969(n+1)), A364021(n+1))`
-/

namespace A363899.P17710587298966306120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A008969 (n + 1)).toNat) (A364021 (n + 1))

end

end A363899.P17710587298966306120

/-! ## A363899.P6506655804733677225

`lcm(A083888(A055502(n+1)), A364021(n+1))`
-/

namespace A363899.P6506655804733677225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083888 (A055502 (n + 1)).toNat) (A364021 (n + 1))

end

end A363899.P6506655804733677225

/-! ## A363899.P17344009665300500472

`abs(A364021(n+1)%A080601(n))`
-/

namespace A363899.P17344009665300500472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A364021 (n + 1)) (A080601 n)|

end

end A363899.P17344009665300500472

/-! ## A363899.P15592512710634129416

`gcd(A364021(n+1), A364042(A364040(n)))`
-/

namespace A363899.P15592512710634129416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A364021 (n + 1)) (A364042 (A364040 n).toNat)

end

end A363899.P15592512710634129416

