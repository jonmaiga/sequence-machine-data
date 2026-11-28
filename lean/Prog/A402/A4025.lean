import SequenceMachineLib.Basic
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A402500: a(n) is the number equal to either (4/3)*prime(n)# + 1 or (8/3)*prime(n)# + 1 that is not divisible by 3, where prime(n)# = A002110(n).

The programs for A402500, there is no canonical definition to state claims against.
-/

/-! ## A402500.P984717422490710784

`A102476(n+3)-A402505(n+2)`
-/

namespace A402500.P984717422490710784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102476 (n + 3) - A402505 (n + 2)

end

end A402500.P984717422490710784

/-!
# A402501: a(n) = 3*prime(n)# + 1, where prime(n)# = A002110(n).

The programs for A402501, there is no canonical definition to state claims against.
-/

/-! ## A402501.P15747452070742948689

`A402506(n)+2`
-/

namespace A402501.P15747452070742948689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402506 n + 2

end

end A402501.P15747452070742948689

/-! ## A402501.P17996489094123715748

`3*A002110(n)+1`
-/

namespace A402501.P17996489094123715748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002110 n + 1

end

end A402501.P17996489094123715748

/-! ## A402501.P10278268866981173225

`A001041(n)/4+1`
-/

namespace A402501.P10278268866981173225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001041 n : ℚ) / 4 + 1

end

end A402501.P10278268866981173225

/-! ## A402501.P378784540267203582

`3*A006862(n)-2`
-/

namespace A402501.P378784540267203582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006862 n - 2

end

end A402501.P378784540267203582

/-! ## A402501.P4547282392364610307

`A402499(n)+A002110(n)`
-/

namespace A402501.P4547282392364610307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402499 n + A002110 n

end

end A402501.P4547282392364610307

/-! ## A402501.P1340114821979005261

`A006862(n)+A002110(n)+A002110(n)`
-/

namespace A402501.P1340114821979005261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n + A002110 n + A002110 n

end

end A402501.P1340114821979005261

/-!
# A402502: a(n) is the number equal to either prime(n)# + 1 (A006862) or 3*prime(n)# + 1 (A402501) that is congruent to 7 modulo 8, where prime(n)# = A002110(n).

The programs for A402502, there is no canonical definition to state claims against.
-/

/-! ## A402502.P9984584179833416925

`filter[A402507(n), A179416(#)]`
-/

namespace A402502.P9984584179833416925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179416 (f1 j).toNat = 1) n)

end

end A402502.P9984584179833416925

/-!
# A402504: a(n) = 4*prime(n)# + 1, where prime(n)# = A002110(n).

The programs for A402504, there is no canonical definition to state claims against.
-/

/-! ## A402504.P18162432240287022709

`2*A402499(n)-1`
-/

namespace A402504.P18162432240287022709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A402499 n - 1

end

end A402504.P18162432240287022709

/-! ## A402504.P12575037246506042989

`A001041(n)/3+1`
-/

namespace A402504.P12575037246506042989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001041 n : ℚ) / 3 + 1

end

end A402504.P12575037246506042989

/-! ## A402504.P14359131996898933425

`4*A002110(n)+1`
-/

namespace A402504.P14359131996898933425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002110 n + 1

end

end A402504.P14359131996898933425

/-! ## A402504.P12114936515741890387

`2*A282704(n)+3`
-/

namespace A402504.P12114936515741890387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282704 n + 3

end

end A402504.P12114936515741890387

/-! ## A402504.P343369789412772150

`4*A006862(n)-3`
-/

namespace A402504.P343369789412772150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006862 n - 3

end

end A402504.P343369789412772150

/-!
# A402505: a(n) is the number equal to either (4/3)*prime(n)# - 1 or (8/3)*prime(n)# - 1 that is not divisible by 3, where prime(n)# = A002110(n).

The programs for A402505, there is no canonical definition to state claims against.
-/

/-! ## A402505.P6845857433773085006

`A102476(n+3)-A402500(n+2)`
-/

namespace A402505.P6845857433773085006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102476 (n + 3) - A402500 (n + 2)

end

end A402505.P6845857433773085006

/-!
# A402506: a(n) = 3*prime(n)# - 1, where prime(n)# = A002110(n).

The programs for A402506, there is no canonical definition to state claims against.
-/

/-! ## A402506.P5618193509275078360

`A402501(n)-2`
-/

namespace A402506.P5618193509275078360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402501 n - 2

end

end A402506.P5618193509275078360

/-! ## A402506.P1083699473565576143

`3*A002110(n)-1`
-/

namespace A402506.P1083699473565576143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002110 n - 1

end

end A402506.P1083699473565576143

/-! ## A402506.P3876170519656085063

`A001041(n)/4-1`
-/

namespace A402506.P3876170519656085063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001041 n : ℚ) / 4 - 1

end

end A402506.P3876170519656085063

/-! ## A402506.P16160107522134500932

`3*A006862(n)-4`
-/

namespace A402506.P16160107522134500932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006862 n - 4

end

end A402506.P16160107522134500932

/-! ## A402506.P6672800464466479378

`A282704(n)+A002110(n)`
-/

namespace A402506.P6672800464466479378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282704 n + A002110 n

end

end A402506.P6672800464466479378

/-!
# A402507: Least number congruent to 7 modulo 8 that is a quadratic residue modulo the first n odd primes.

The programs for A402507, there is no canonical definition to state claims against.
-/

/-! ## A402507.P4863650855350117558

`A273757(A369083(n))`
-/

namespace A402507.P4863650855350117558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273757 (A369083 n).toNat

end

end A402507.P4863650855350117558

/-!
# A402519: a(n) = the smallest number k such that k * n is in A025487.

The programs for A402519, the canonical program `A402519.P5662756144460699818` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402519 has offset 1).

The definition of A402519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073039, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A402519.P5662756144460699818

`A073039(n+1)/(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A402519

/-- `A073039(n+1)/(n+1)` -/
def P5662756144460699818.Spec : Prop :=
  ∀ n, P5662756144460699818.a n = (A402519 (n + 1) : ℚ)

end A402519

/-!
# A402521: Number of minimal hull sets in the n X n grid graph.

The programs for A402521, the canonical program `A402521.P2935209957007020419` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402521 has offset 1).

The definition of A402521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402521.P2935209957007020419

`ogf((1-3x+11x^2-3x^3+16x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A402521

/-- `ogf((1-3x+11x^2-3x^3+16x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2935209957007020419.Spec : Prop :=
  ∀ n, P2935209957007020419.a n = A402521 (n + 1)

theorem P2935209957007020419.correct : P2935209957007020419.Spec := by
  intro n
  simp only [A402521, Nat.add_sub_cancel]

end A402521

/-! ## A402521.P10685108962801325059

`A402520((n+1)²+n²)`
-/

namespace A402521.P10685108962801325059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402520 ((n + 1) ^ 2 + n ^ 2)

end

end A402521.P10685108962801325059

namespace A402521

/-- `A402520((n+1)²+n²)` -/
def P10685108962801325059.Spec : Prop :=
  ∀ n, P10685108962801325059.a n = A402521 (n + 1)

end A402521

/-!
# A402522: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled vertices with exactly k simplicial vertices.

The programs for A402522, there is no canonical definition to state claims against.
-/

/-! ## A402522.P16734045069717749347

`A358007(A385701(n+1))`
-/

namespace A402522.P16734045069717749347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358007 ((A385701 (n + 1)).toNat + 53)

end

end A402522.P16734045069717749347

/-! ## A402522.P15728415874363429590

`A326453(n*A274291(A366920(n+1)))`
-/

namespace A402522.P15728415874363429590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 ((n : ℤ) * A274291 (A366920 (n + 1)).toNat).toNat

end

end A402522.P15728415874363429590

/-!
# A402523: Number of simple connected graphs on n unlabeled vertices whose hull number is equal to the number of simplicial vertices.

The programs for A402523, there is no canonical definition to state claims against.
-/

/-! ## A402523.P16105454741693897725

`A325412(A032158(n))`
-/

namespace A402523.P16105454741693897725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A032158 n).toNat

end

end A402523.P16105454741693897725

/-! ## A402523.P6310623905482076989

`A304707(A294868(n))`
-/

namespace A402523.P6310623905482076989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (A294868 n).toNat

end

end A402523.P6310623905482076989

/-!
# A402524: Number of simple connected graphs on n unlabeled vertices with n eccentric vertices.

The programs for A402524, there is no canonical definition to state claims against.
-/

/-! ## A402524.P11697997288273096335

`A401874(∑[n+1])`
-/

namespace A402524.P11697997288273096335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401874 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A402524.P11697997288273096335

/-! ## A402524.P1158224660867470120

`A299774(A174317(n))`
-/

namespace A402524.P1158224660867470120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299774 (A174317 n).toNat

end

end A402524.P1158224660867470120

/-!
# A402531: Perfect powers that have exactly 2 distinct prime factors.

The programs for A402531, there is no canonical definition to state claims against.
-/

/-! ## A402531.P5673793902663727962

`∩[A131605(n+1), A355462(n+1)]`
-/

namespace A402531.P5673793902663727962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P5673793902663727962

/-! ## A402531.P14128854607314661126

`∩[A355462(n+1), A377702(n+1)]`
-/

namespace A402531.P14128854607314661126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P14128854607314661126

/-! ## A402531.P5637991433488608616

`∩[A001597(n+1), A355462(n+1)]`
-/

namespace A402531.P5637991433488608616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P5637991433488608616

/-! ## A402531.P14623950604963462185

`∩[A072413(n+1), A355462(n+1)]`
-/

namespace A402531.P14623950604963462185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P14623950604963462185

/-! ## A402531.P2376492288310680002

`∩[A001597(n+1), A338539(n+1)]`
-/

namespace A402531.P2376492288310680002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P2376492288310680002

/-! ## A402531.P302383175210480200

`∩[A131605(n+1), A338539(n+1)]`
-/

namespace A402531.P302383175210480200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P302383175210480200

/-! ## A402531.P11622979922622319264

`∩[A338539(n+1), A377702(n+1)]`
-/

namespace A402531.P11622979922622319264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P11622979922622319264

/-! ## A402531.P8478511534328784369

`∩[A338539(n+1), A396856(n+1)]`
-/

namespace A402531.P8478511534328784369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P8478511534328784369

/-! ## A402531.P738640050183873762

`∩[A355462(n+1), A396856(n+1)]`
-/

namespace A402531.P738640050183873762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P738640050183873762

/-! ## A402531.P14004941623584212092

`∩[A001597(n+1), A345382(n+1)]`
-/

namespace A402531.P14004941623584212092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P14004941623584212092

/-! ## A402531.P15100150550826849794

`∩[A072413(n+1), A345382(n+1)]`
-/

namespace A402531.P15100150550826849794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P15100150550826849794

/-! ## A402531.P18180701086412316086

`∩[A131605(n+1), A345382(n+1)]`
-/

namespace A402531.P18180701086412316086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P18180701086412316086

/-! ## A402531.P11184935244225726928

`∩[A345382(n+1), A377702(n+1)]`
-/

namespace A402531.P11184935244225726928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P11184935244225726928

/-! ## A402531.P12113230961434497099

`∩[A345382(n+1), A396856(n+1)]`
-/

namespace A402531.P12113230961434497099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P12113230961434497099

/-! ## A402531.P12188569571759786659

`∩[A001597(n+1), A007774(n+1)]`
-/

namespace A402531.P12188569571759786659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P12188569571759786659

/-! ## A402531.P773223683330173457

`∩[A007774(n+1), A072413(n+1)]`
-/

namespace A402531.P773223683330173457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P773223683330173457

/-! ## A402531.P11107650158428964577

`∩[A007774(n+1), A131605(n+1)]`
-/

namespace A402531.P11107650158428964577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402531.P11107650158428964577

/-!
# A402540: Number of primes p such that p*(p+1) divides A126798(n).

The programs for A402540, there is no canonical definition to state claims against.
-/

/-! ## A402540.P3325577847259826562

`A170823(A216804(n+1))`
-/

namespace A402540.P3325577847259826562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 (A216804 (n + 1)).toNat

end

end A402540.P3325577847259826562

/-! ## A402540.P18187397232874666406

`A082477(A298818(n+1))`
-/

namespace A402540.P18187397232874666406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082477 (A298818 (n + 1)).toNat

end

end A402540.P18187397232874666406

/-! ## A402540.P6605029468986053712

`A386261(A056430(n+1))`
-/

namespace A402540.P6605029468986053712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386261 (A056430 (n + 1)).toNat

end

end A402540.P6605029468986053712

/-! ## A402540.P18280636380631921602

`A087283(A308082(n+2))`
-/

namespace A402540.P18280636380631921602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087283 (A308082 (n + 2)).toNat

end

end A402540.P18280636380631921602

/-! ## A402540.P10682877925215785316

`A375766(A095849(n+2))`
-/

namespace A402540.P10682877925215785316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375766 (A095849 (n + 2)).toNat

end

end A402540.P10682877925215785316

/-!
# A402547: Least number congruent to 3 modulo 8 that is a quadratic residue modulo the first n odd primes.

The programs for A402547, there is no canonical definition to state claims against.
-/

/-! ## A402547.P11980880406674605348

`A005382(A072056(A005382(A005382(2*n+1))))`
-/

namespace A402547.P11980880406674605348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (A072056 (A005382 (A005382 (2 * n + 1)).toNat).toNat).toNat

end

end A402547.P11980880406674605348

/-!
# A402578: a(n) = A052128(n) - A345994(n).

The programs for A402578, there is no canonical definition to state claims against.
-/

/-! ## A402578.P14247294538134325243

`A052128(n+1)-A345994(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402578.P14247294538134325243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (n + 1) - A345994 (n + 1)

end

end A402578.P14247294538134325243

/-!
# A402580: Positions of 0's in A402581.

The programs for A402580, there is no canonical definition to state claims against.
-/

/-! ## A402580.P1587048207452822425

`record[A286941(n+1)]`
-/

namespace A402580.P1587048207452822425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A402580.P1587048207452822425

/-! ## A402580.P13811734778804855508

`filter[A109860(n), A356161(#)]`
-/

namespace A402580.P13811734778804855508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356161 (f1 j).toNat = 1) n)

end

end A402580.P13811734778804855508

/-! ## A402580.P8621674164802303525

`filter[A109860(n), A356162(#)]`
-/

namespace A402580.P8621674164802303525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A402580.P8621674164802303525

/-! ## A402580.P2620190757447268468

`∩[A109860(n), A324583(n+1)]`
-/

namespace A402580.P2620190757447268468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402580.P2620190757447268468

/-! ## A402580.P11947268540801973975

`filter[A325395(n+1), A356161(#)]`
-/

namespace A402580.P11947268540801973975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356161 (f1 j).toNat = 1) n)

end

end A402580.P11947268540801973975

/-!
# A402581: Primorial base mongrel derivative: Compute otherwise like A327860, but take the exponents e from the prime factorization of n, like A003415 (arithmetic derivative) does.

The programs for A402581, there is no canonical definition to state claims against.
-/

/-! ## A402581.P9703048314886135818

`A379967(A228838(n+1))`
-/

namespace A402581.P9703048314886135818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379967 (A228838 (n + 1)).toNat

end

end A402581.P9703048314886135818

/-!
# A402583: Compute otherwise like A328571, but take the exponents e from the prime factorization of n; denominators of fractions whose numerators are given by A402582.

The programs for A402583, there is no canonical definition to state claims against.
-/

/-! ## A402583.P6470924365625470354

`gcd(A083346(n+1), A178480(n+1))`
-/

namespace A402583.P6470924365625470354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083346 (n + 1)) (A178480 (n + 1))

end

end A402583.P6470924365625470354

/-! ## A402583.P2035036725361300983

`gcd(A083346(n+1), A120453(n+1))`
-/

namespace A402583.P2035036725361300983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083346 (n + 1)) (A120453 (n + 1))

end

end A402583.P2035036725361300983

/-!
# A402584: a(n) = n - A345998(n), where A345998(n) = A344005(n)/gcd(A344005(n), n), and A344005(n) is the smallest positive integer m such that n divides m*(m+1).

The programs for A402584, there is no canonical definition to state claims against.
-/

/-! ## A402584.P17522942081766369474

`n+1-A345998(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402584.P17522942081766369474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A345998 (n + 1)

end

end A402584.P17522942081766369474

/-!
# A402585: Numbers k such that gcd(k, A344005(k)) > gcd(k, 1+A344005(k)), where A344005(n) is the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A402585, there is no canonical definition to state claims against.
-/

/-! ## A402585.P13986469637267307921

`filter[A344180(n), A354989(#)]`
-/

namespace A402585.P13986469637267307921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P13986469637267307921

/-! ## A402585.P8646511642304028253

`filter[A002808(n+1), A354989(#)]`
-/

namespace A402585.P8646511642304028253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P8646511642304028253

/-! ## A402585.P10760746262651703227

`filter[A275974(n+1), A354989(#)]`
-/

namespace A402585.P10760746262651703227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P10760746262651703227

/-! ## A402585.P17222253087933844484

`filter[A089088(n), A354989(#)]`
-/

namespace A402585.P17222253087933844484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P17222253087933844484

/-! ## A402585.P6713893931222266494

`filter[A005451(n+1), A354989(#)]`
-/

namespace A402585.P6713893931222266494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P6713893931222266494

/-! ## A402585.P3252989622944565827

`filter[A006165(n+1), A354989(#)]`
-/

namespace A402585.P3252989622944565827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P3252989622944565827

/-! ## A402585.P2024157586505246105

`filter[A077157(n), A354989(#)]`
-/

namespace A402585.P2024157586505246105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P2024157586505246105

/-! ## A402585.P2743272505920123264

`filter[A077156(n), A354989(#)]`
-/

namespace A402585.P2743272505920123264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P2743272505920123264

/-! ## A402585.P10900440248188437915

`filter[A019303(n), A354989(#)]`
-/

namespace A402585.P10900440248188437915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P10900440248188437915

/-! ## A402585.P3073284185196259300

`filter[A282738(n), A354989(#)]`
-/

namespace A402585.P3073284185196259300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P3073284185196259300

/-! ## A402585.P12982476878936852727

`filter[A152271(n), A354989(#)]`
-/

namespace A402585.P12982476878936852727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P12982476878936852727

/-! ## A402585.P5557658223286468129

`filter[A158416(n), A354989(#)]`
-/

namespace A402585.P5557658223286468129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P5557658223286468129

/-! ## A402585.P698275361246770464

`filter[A174571(n+1), A354989(#)]`
-/

namespace A402585.P698275361246770464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P698275361246770464

/-! ## A402585.P14442978144983967811

`filter[A381962(n+1), A354989(#)]`
-/

namespace A402585.P14442978144983967811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P14442978144983967811

/-! ## A402585.P6796738580276502576

`filter[A100727(n), A354989(#)]`
-/

namespace A402585.P6796738580276502576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P6796738580276502576

/-! ## A402585.P18233632342382657951

`filter[A006085(2*n+1), A354989(#)]`
-/

namespace A402585.P18233632342382657951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P18233632342382657951

/-! ## A402585.P6595062792476575205

`filter[A338623(n+3), A354989(#)]`
-/

namespace A402585.P6595062792476575205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P6595062792476575205

/-! ## A402585.P592005499975338491

`filter[A026234(n+1), A354989(#)]`
-/

namespace A402585.P592005499975338491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P592005499975338491

/-! ## A402585.P12732607909970208020

`filter[A026239(n+1), A354989(#)]`
-/

namespace A402585.P12732607909970208020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P12732607909970208020

/-! ## A402585.P5629990180143510711

`filter[A236675(n+1), A354989(#)]`
-/

namespace A402585.P5629990180143510711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354989 (f1 j).toNat = 1) n)

end

end A402585.P5629990180143510711

/-!
# A402586: a(n) = A341526(A003961(2*n)), where A341526(n) is the numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A402586, the canonical program `A402586.P6877875654712656001` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402586 has offset 1).

The definition of A402586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402586.P17686344752850543786

`A341526(A249734(n+1))`
-/

namespace A402586.P17686344752850543786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A249734 (n + 1)).toNat

end

end A402586.P17686344752850543786

namespace A402586

/-- `A341526(A249734(n+1))` -/
def P17686344752850543786.Spec : Prop :=
  ∀ n, P17686344752850543786.a n = A402586 (n + 1)

end A402586

/-! ## A402586.P6877875654712656001

`A341526(A003961(2*(n+1)))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A402586

/-- `A341526(A003961(2*(n+1)))` -/
def P6877875654712656001.Spec : Prop :=
  ∀ n, P6877875654712656001.a n = A402586 (n + 1)

theorem P6877875654712656001.correct : P6877875654712656001.Spec := by
  intro n
  simp only [A402586, Nat.add_sub_cancel]

end A402586

/-! ## A402586.P7136665679815976016

`A342664(A249827(n+1))`
-/

namespace A402586.P7136665679815976016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342664 (A249827 (n + 1)).toNat

end

end A402586.P7136665679815976016

namespace A402586

/-- `A342664(A249827(n+1))` -/
def P7136665679815976016.Spec : Prop :=
  ∀ n, P7136665679815976016.a n = A402586 (n + 1)

end A402586

/-! ## A402586.P6508983047492454145

`A341626(∑[n+1]+2)`
-/

namespace A402586.P6508983047492454145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341626 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A402586.P6508983047492454145

namespace A402586

/-- `A341626(∑[n+1]+2)` -/
def P6508983047492454145.Spec : Prop :=
  ∀ n, P6508983047492454145.a n = A402586 (n + 1)

end A402586

/-!
# A402587: a(n) = A341527(A003961(2*n)), where A341527(n) is the denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A402587, the canonical program `A402587.P1443662691509151853` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402587 has offset 1).

The definition of A402587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402587.P13099884384991904082

`A341527(A249734(n+1))`
-/

namespace A402587.P13099884384991904082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A249734 (n + 1)).toNat

end

end A402587.P13099884384991904082

namespace A402587

/-- `A341527(A249734(n+1))` -/
def P13099884384991904082.Spec : Prop :=
  ∀ n, P13099884384991904082.a n = A402587 (n + 1)

end A402587

/-! ## A402587.P1443662691509151853

`A341527(A003961(2*(n+1)))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A402587

/-- `A341527(A003961(2*(n+1)))` -/
def P1443662691509151853.Spec : Prop :=
  ∀ n, P1443662691509151853.a n = A402587 (n + 1)

theorem P1443662691509151853.correct : P1443662691509151853.Spec := by
  intro n
  simp only [A402587, Nat.add_sub_cancel]

end A402587

/-! ## A402587.P15775510440507938382

`A342663(A249827(n+1))`
-/

namespace A402587.P15775510440507938382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342663 (A249827 (n + 1)).toNat

end

end A402587.P15775510440507938382

namespace A402587

/-- `A342663(A249827(n+1))` -/
def P15775510440507938382.Spec : Prop :=
  ∀ n, P15775510440507938382.a n = A402587 (n + 1)

end A402587

/-! ## A402587.P1686013377436269967

`A341627(∑[n+1]+2)`
-/

namespace A402587.P1686013377436269967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A402587.P1686013377436269967

namespace A402587

/-- `A341627(∑[n+1]+2)` -/
def P1686013377436269967.Spec : Prop :=
  ∀ n, P1686013377436269967.a n = A402587 (n + 1)

end A402587

/-!
# A402588: a(n) = gcd(n+1, A344005(n)) - gcd(n, A344005(n)), where A344005(n) is the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A402588, there is no canonical definition to state claims against.
-/

/-! ## A402588.P11955530853524360255

`gcd(n+2, A344005(n+1))-A345992(n+1)`
-/

namespace A402588.P11955530853524360255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) (A344005 (n + 1)) : ℤ) - A345992 (n + 1)

end

end A402588.P11955530853524360255

/-! ## A402588.P14365675192629177450

`gcd(n+2, A344005(n+1))-gcd(n+1, A344005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402588.P14365675192629177450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) (A344005 (n + 1)) : ℤ) - (Int.gcd (n + 1 : ℤ) (A344005 (n + 1)) : ℤ)

end

end A402588.P14365675192629177450

/-!
# A402589: a(n) = 1 if gcd(n, A344005(n)) > gcd(n + 1, A344005(n)), otherwise 0, where A344005(n) is the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A402589, there is no canonical definition to state claims against.
-/

/-! ## A402589.P12359065739660604995

`Δ[fp[A345995(n+1)]]`
-/

namespace A402589.P12359065739660604995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345995 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A402589.P12359065739660604995

/-! ## A402589.P13711993804949598769

`A209156(n+1)%A064372(n+1)`
-/

namespace A402589.P13711993804949598769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209156 (n + 1)) (A064372 (n + 1))

end

end A402589.P13711993804949598769

/-! ## A402589.P15454127545721543436

`and(A079275(n+1), A209156(n+1))`
-/

namespace A402589.P15454127545721543436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079275 (n + 1)) (A209156 (n + 1))

end

end A402589.P15454127545721543436

/-! ## A402589.P10732651502075405003

`and(A143731(n+1), A209156(n+1))`
-/

namespace A402589.P10732651502075405003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143731 (n + 1)) (A209156 (n + 1))

end

end A402589.P10732651502075405003

/-! ## A402589.P2317038408523545145

`A171560(n+1)%A384231(n+1)`
-/

namespace A402589.P2317038408523545145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171560 (n + 1)) (A384231 (n + 1))

end

end A402589.P2317038408523545145

