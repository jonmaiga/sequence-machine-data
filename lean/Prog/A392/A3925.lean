import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C001
import Seq.B010.C000
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
# A392500: Numbers k > 1 whose largest proper divisor cannot be written as a sum of their other nontrivial divisors.

The programs for A392500, there is no canonical definition to state claims against.
-/

/-! ## A392500.P4438843707456118176

`filter[A392650(n+1), A066247(#)]`
-/

namespace A392500.P4438843707456118176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A392500.P4438843707456118176

/-! ## A392500.P10663572696426682770

`filter[A392650(n+2), A005171(#)]`
-/

namespace A392500.P10663572696426682770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A392500.P10663572696426682770

/-! ## A392500.P13395265629131581607

`eq[A293814(n), A339579(n+1)]`
-/

namespace A392500.P13395265629131581607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392500.P13395265629131581607

/-! ## A392500.P16373251239696469304

`eq[A331979(n), A339579(n+1)]`
-/

namespace A392500.P16373251239696469304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392500.P16373251239696469304

/-! ## A392500.P1634371335694351288

`∩[A002808(n+1), A392650(n+1)]`
-/

namespace A392500.P1634371335694351288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P1634371335694351288

/-! ## A392500.P16087127894805474930

`∪[A006039(n+1), A125493(n+1)]`
-/

namespace A392500.P16087127894805474930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P16087127894805474930

/-! ## A392500.P16134233199497765962

`∪[A006039(n+1), A180366(n+1)]`
-/

namespace A392500.P16134233199497765962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P16134233199497765962

/-! ## A392500.P8720036551142011210

`∪[A088011(n+1), A125493(n+1)]`
-/

namespace A392500.P8720036551142011210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P8720036551142011210

/-! ## A392500.P11515832818643966850

`∪[A117347(n+1), A125493(n+1)]`
-/

namespace A392500.P11515832818643966850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P11515832818643966850

/-! ## A392500.P14420304899228891268

`∪[A117348(n+1), A125493(n+1)]`
-/

namespace A392500.P14420304899228891268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392500.P14420304899228891268

/-!
# A392502: Decimal expansion of the absolute value of the second smallest real root of the minimal polynomial of Conway's constant.

The programs for A392502, there is no canonical definition to state claims against.
-/

/-! ## A392502.P8769999924578012679

`A158951(A313408(n))`
-/

namespace A392502.P8769999924578012679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158951 (A313408 n).toNat

end

end A392502.P8769999924578012679

/-!
# A392511: Number of planar partitions of n where parts decrease by at most 1 along each row and column.

The programs for A392511, there is no canonical definition to state claims against.
-/

/-! ## A392511.P16232899588939477130

`A000196(A304349(n+1)-A280493(n+1))`
-/

namespace A392511.P16232899588939477130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A304349 (n + 1) - A280493 (n + 1)).toNat

end

end A392511.P16232899588939477130

/-! ## A392511.P8466685702596329922

`A121900(A048482(n))`
-/

namespace A392511.P8466685702596329922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A048482 n).toNat

end

end A392511.P8466685702596329922

/-! ## A392511.P2109898793308299639

`A259899(A181306(n))`
-/

namespace A392511.P2109898793308299639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A181306 n).toNat

end

end A392511.P2109898793308299639

/-! ## A392511.P11545289387029556867

`A122293(A336414(n))`
-/

namespace A392511.P11545289387029556867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122293 (A336414 n).toNat

end

end A392511.P11545289387029556867

/-! ## A392511.P8912525889812897369

`A157282(A342528(n))`
-/

namespace A392511.P8912525889812897369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157282 (A342528 n).toNat

end

end A392511.P8912525889812897369

/-!
# A392516: Number of graceful Prüfer codes on n vertices with n-2 in the last position of the code.

The programs for A392516, there is no canonical definition to state claims against.
-/

/-! ## A392516.P12715237123933737989

`A392515(A034856(n+2))`
-/

namespace A392516.P12715237123933737989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392515 (A034856 (n + 2)).toNat

end

end A392516.P12715237123933737989

/-! ## A392516.P2932467891475882620

`A025437(A349299(n))`
-/

namespace A392516.P2932467891475882620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A349299 n).toNat

end

end A392516.P2932467891475882620

/-! ## A392516.P4448215350809984186

`A065719(A369416(n))`
-/

namespace A392516.P4448215350809984186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A369416 n).toNat

end

end A392516.P4448215350809984186

/-! ## A392516.P9034377815640562116

`round(A079456(n+1)/A079433(n+4))`
-/

namespace A392516.P9034377815640562116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079456 (n + 1) : ℚ) / (A079433 (n + 4) : ℚ))

end

end A392516.P9034377815640562116

/-! ## A392516.P6303112911540130609

`A070107(A098057(n)+A020090(n))`
-/

namespace A392516.P6303112911540130609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (A098057 n + A020090 n).toNat

end

end A392516.P6303112911540130609

/-!
# A392517: a(n) is the minimum diameter of a n-element set of integers for which no nonzero d has more than d-1 representations as a difference of elements of the set.

The programs for A392517, there is no canonical definition to state claims against.
-/

/-! ## A392517.P14527155598331813396

`∑[round(sqrt(2*n))]+n`
-/

namespace A392517.P14527155598331813396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A392517.P14527155598331813396

/-! ## A392517.P11484846501625282929

`∑[comp[a(n-1)+n]-n]` with `a(0)=1`
-/

namespace A392517.P11484846501625282929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392517.P11484846501625282929

/-! ## A392517.P17875629575128451787

`∑[a(n+1-a(n-1))+1]` with `a(0)=0, a(1)=2`
-/

namespace A392517.P17875629575128451787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n + 1 - f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392517.P17875629575128451787

/-! ## A392517.P4947899517870646325

`∑[ceil(sqrt(A393450(n)))]`
-/

namespace A392517.P4947899517870646325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A393450 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392517.P4947899517870646325

/-! ## A392517.P5679047775291850472

`∑[comp[A000124(n)]-n]`
-/

namespace A392517.P5679047775291850472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392517.P5679047775291850472

/-!
# A392518: Numbers k such that sigma(k) = psi(k) + tau(k)^2 + omega(k).

The programs for A392518, there is no canonical definition to state claims against.
-/

/-! ## A392518.P15921888525111266555

`∩[A085959(n), A391447(n+1)]`
-/

namespace A392518.P15921888525111266555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392518.P15921888525111266555

/-! ## A392518.P3001212032311653795

`∩[A227854(n+1), A391447(n+1)]`
-/

namespace A392518.P3001212032311653795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392518.P3001212032311653795

/-! ## A392518.P4960097198747988315

`filter[A391447(n+1), A353798(#)]`
-/

namespace A392518.P4960097198747988315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A392518.P4960097198747988315

/-! ## A392518.P1865262120058712514

`filter[A391447(n+1), A353816(#)]`
-/

namespace A392518.P1865262120058712514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A392518.P1865262120058712514

/-! ## A392518.P5896403180824616609

`filter[A391447(n+1), A358753(#)]`
-/

namespace A392518.P5896403180824616609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A392518.P5896403180824616609

/-!
# A392521: Irregular table: apply Ducci map to each binary string of length n-1 in order and read as binary digits to get the terms of row n.

The programs for A392521, the canonical program `A392521.P11892844567520045021` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392521 has offset 1).

The definition of A392521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392521.P11892844567520045021

`xor(n+1, A080542(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A392521

/-- `xor(n+1, A080542(n+1))` -/
def P11892844567520045021.Spec : Prop :=
  ∀ n, P11892844567520045021.a n = A392521 (n + 1)

theorem P11892844567520045021.correct : P11892844567520045021.Spec := by
  intro n
  simp only [A392521, Nat.add_sub_cancel]

end A392521

/-!
# A392522: Determinant of the 3 X 3 Hankel matrix of consecutive primes starting at prime(n).

The programs for A392522, there is no canonical definition to state claims against.
-/

/-! ## A392522.P3262332110035759122

`A350200(A167614(n+2))`
-/

namespace A392522.P3262332110035759122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A167614 (n + 2)).toNat

end

end A392522.P3262332110035759122

/-!
# A392524: G.f. satisfies: A(x) = A( x^3 + 12*x*A(x)^3 )^(1/3), with A(0)=0, A'(0)=1.

The programs for A392524, there is no canonical definition to state claims against.
-/

/-! ## A392524.P16232780478221032313

`A320202(A367869(n+2)-A013610(n))`
-/

namespace A392524.P16232780478221032313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320202 (A367869 (n + 2) - A013610 n).toNat

end

end A392524.P16232780478221032313

/-!
# A392527: G.f.: A(x) = 1 + x*F(x)*G(x)^2 where F(x) = A(x/F(x)) and G(x) = A(x*G(x)).

The programs for A392527, there is no canonical definition to state claims against.
-/

/-! ## A392527.P6098754506608486839

`A000262(n)-A185037(n²)`
-/

namespace A392527.P6098754506608486839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A185037 (n ^ 2)

end

end A392527.P6098754506608486839

/-! ## A392527.P3876747780481910678

`A000262(n)-A137579(A000108(n))`
-/

namespace A392527.P3876747780481910678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A137579 (A000108 n).toNat

end

end A392527.P3876747780481910678

/-!
# A392528: G.f. Sum_{n>=0} x^n / (1 - x)^A002262(n), where A002262 is a triangle read by rows in which row n lists the first n+1 nonnegative integers.

The programs for A392528, there is no canonical definition to state claims against.
-/

/-! ## A392528.P17444926942110612890

`A276611(A036617(n))`
-/

namespace A392528.P17444926942110612890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A036617 n).toNat

end

end A392528.P17444926942110612890

/-!
# A392531: Detour index of the n-necklace graph.

The programs for A392531, the canonical program `A392531.P11788307861027386374` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392531 has offset 0).

The definition of A392531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392531.P11788307861027386374

`n*(8*n*(6*n+1)-21-(-1)^n)/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392531

/-- `n*(8*n*(6*n+1)-21-(-1)^n)/2` -/
def P11788307861027386374.Spec : Prop :=
  ∀ n, P11788307861027386374.a n = (A392531 n : ℚ)

end A392531

/-!
# A392532: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)^2) / (1 - x)^2.

The programs for A392532, there is no canonical definition to state claims against.
-/

/-! ## A392532.P18182375383688650999

`A161467(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A392532.P18182375383688650999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A161467 (a (n - 1)).toNat

end

end A392532.P18182375383688650999

/-!
# A392533: Total number of 321 patterns in all heapable permutations of length n.

The programs for A392533, there is no canonical definition to state claims against.
-/

/-! ## A392533.P8058928373586035395

`A371132(A217649(n))`
-/

namespace A392533.P8058928373586035395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371132 (A217649 n).toNat

end

end A392533.P8058928373586035395

/-! ## A392533.P2847194133897980924

`A105390(A103450(2*(n+1))+A001349(n))`
-/

namespace A392533.P2847194133897980924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105390 (A103450 (2 * (n + 1)) + A001349 n).toNat

end

end A392533.P2847194133897980924

/-! ## A392533.P2925283680293645322

`A002265(floor(A381906(2*n)/(A092853(n+3)+1)))`
-/

namespace A392533.P2925283680293645322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊(A381906 (2 * n) : ℚ) / (A092853 (n + 3) + 1 : ℚ)⌋.toNat

end

end A392533.P2925283680293645322

/-!
# A392534: a(n) is the least number k such that j * n! + 1 is prime for all j from k to k + n - 1.

The programs for A392534, there is no canonical definition to state claims against.
-/

/-! ## A392534.P4213425659556046056

`A311164(A318269(n+1))`
-/

namespace A392534.P4213425659556046056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311164 (A318269 (n + 1)).toNat

end

end A392534.P4213425659556046056

/-!
# A392535: Numbers k such that 2^k + 2*k - 3 is prime.

The programs for A392535, there is no canonical definition to state claims against.
-/

/-! ## A392535.P515056553871825261

`floor(log2(A192436(n+1)))`
-/

namespace A392535.P515056553871825261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A192436 (n + 1)).toNat

end

end A392535.P515056553871825261

/-!
# A392537: Biquadratefree numbers that are neither squareful nor squarefree.

The programs for A392537, the canonical program `A392537.P5789005694378708755` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392537 has offset 1).

The definition of A392537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392537.P16088123533127895884

`filter[A382967(n+1), A389905(#)]`
-/

namespace A392537.P16088123533127895884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392537.P16088123533127895884

namespace A392537

/-- `filter[A382967(n+1), A389905(#)]` -/
def P16088123533127895884.Spec : Prop :=
  ∀ n, P16088123533127895884.a n = A392537 (n + 1)

end A392537

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392537

/-- `∩[A332785(n+1), A382967(n+1)]` -/
def P5789005694378708755.Spec : Prop :=
  ∀ n, (P5789005694378708755.a n : ℤ) = A392537 (n + 1)

theorem P5789005694378708755.correct : P5789005694378708755.Spec := by
  intro n
  simp only [A392537, Nat.add_sub_cancel]

end A392537

/-! ## A392537.P17918386046875176180

`∩[A317616(n+1), A382967(n+1)]`
-/

namespace A392537.P17918386046875176180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P17918386046875176180

namespace A392537

/-- `∩[A317616(n+1), A382967(n+1)]` -/
def P17918386046875176180.Spec : Prop :=
  ∀ n, (P17918386046875176180.a n : ℤ) = A392537 (n + 1)

end A392537

/-! ## A392537.P13751336496000354262

`filter[A046100(n+1), A389905(#)]`
-/

namespace A392537.P13751336496000354262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392537.P13751336496000354262

namespace A392537

/-- `filter[A046100(n+1), A389905(#)]` -/
def P13751336496000354262.Spec : Prop :=
  ∀ n, P13751336496000354262.a n = A392537 (n + 1)

end A392537

/-! ## A392537.P13041404127246042364

`∩[A046100(n+1), A317616(n+1)]`
-/

namespace A392537.P13041404127246042364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P13041404127246042364

namespace A392537

/-- `∩[A046100(n+1), A317616(n+1)]` -/
def P13041404127246042364.Spec : Prop :=
  ∀ n, (P13041404127246042364.a n : ℤ) = A392537 (n + 1)

end A392537

/-! ## A392537.P4618964461565346190

`∩[A046100(n+1), A332785(n+1)]`
-/

namespace A392537.P4618964461565346190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P4618964461565346190

namespace A392537

/-- `∩[A046100(n+1), A332785(n+1)]` -/
def P4618964461565346190.Spec : Prop :=
  ∀ n, (P4618964461565346190.a n : ℤ) = A392537 (n + 1)

end A392537

/-! ## A392537.P9622884507240684378

`∩[A052485(n+1), A382967(n+1)]`
-/

namespace A392537.P9622884507240684378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P9622884507240684378

namespace A392537

/-- `∩[A052485(n+1), A382967(n+1)]` -/
def P9622884507240684378.Spec : Prop :=
  ∀ n, (P9622884507240684378.a n : ℤ) = A392537 (n + 1)

end A392537

/-! ## A392537.P3216871922070876122

`filter[A317616(n+1), A307430(#)]`
-/

namespace A392537.P3216871922070876122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A392537.P3216871922070876122

namespace A392537

/-- `filter[A317616(n+1), A307430(#)]` -/
def P3216871922070876122.Spec : Prop :=
  ∀ n, P3216871922070876122.a n = A392537 (n + 1)

end A392537

/-! ## A392537.P14202216929256613187

`filter[A332785(n+1), A307430(#)]`
-/

namespace A392537.P14202216929256613187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A392537.P14202216929256613187

namespace A392537

/-- `filter[A332785(n+1), A307430(#)]` -/
def P14202216929256613187.Spec : Prop :=
  ∀ n, P14202216929256613187.a n = A392537 (n + 1)

end A392537

/-!
# A392538: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 2*x)^2) / (1 - 2*x)^2.

The programs for A392538, there is no canonical definition to state claims against.
-/

/-! ## A392538.P13007547298142015690

`A273881(A201952(n+1)+A014673(n+1))`
-/

namespace A392538.P13007547298142015690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273881 (A201952 (n + 1) + A014673 (n + 1)).toNat

end

end A392538.P13007547298142015690

/-!
# A392539: a(n) = the least common multiple of all natural numbers k such that phi(k) <= n.

The programs for A392539, there is no canonical definition to state claims against.
-/

/-! ## A392539.P11843625248214990152

`a(n-1)*A381887(n)` with `a(0)=1`
-/

namespace A392539.P11843625248214990152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A381887 n

end

end A392539.P11843625248214990152

/-! ## A392539.P1824123043379624344

`A053657(n+1)/A212429(n+1)`
-/

namespace A392539.P1824123043379624344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (n + 1) : ℚ) / (A212429 (n + 1) : ℚ)

end

end A392539.P1824123043379624344

/-! ## A392539.P4798741963940427680

`A253139(A001792(n))`
-/

namespace A392539.P4798741963940427680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (A001792 n).toNat

end

end A392539.P4798741963940427680

/-! ## A392539.P4580782619692529777

`A253139(∑[A045623(n)])`
-/

namespace A392539.P4580782619692529777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392539.P4580782619692529777

/-!
# A392540: Expansion of 1 / ((1-x)^2 - x^5).

The programs for A392540, the canonical program `A392540.P278826574860282482` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392540 has offset 0).

The definition of A392540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^5))` (program `A392540.P278826574860282482`, by `A392540.P278826574860282482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392540.P278826574860282482

`ogf(1/(1-2x+x^2-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392540

/-- `ogf(1/(1-2x+x^2-x^5))` -/
def P278826574860282482.Spec : Prop :=
  ∀ n, P278826574860282482.a n = A392540 n

theorem P278826574860282482.correct : P278826574860282482.Spec := by
  intro n
  simp only [A392540]

end A392540

/-! ## A392540.P7570308741182241746

`2*a(n-1)-a(n-2)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A392540.P7570308741182241746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5)

end

end A392540.P7570308741182241746

namespace A392540

/-- `2*a(n-1)-a(n-2)+a(n-5)` -/
def P7570308741182241746.Spec : Prop :=
  ∀ n, P7570308741182241746.a n = A392540 n

end A392540

/-! ## A392540.P7947265686529793745

`A001687(2*(n+3))`
-/

namespace A392540.P7947265686529793745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * (n + 3))

end

end A392540.P7947265686529793745

namespace A392540

/-- `A001687(2*(n+3))` -/
def P7947265686529793745.Spec : Prop :=
  ∀ n, P7947265686529793745.a n = A392540 n

end A392540

/-! ## A392540.P12561191292065104676

`∑[A005253(abs(1-n))]`
-/

namespace A392540.P12561191292065104676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392540.P12561191292065104676

namespace A392540

/-- `∑[A005253(abs(1-n))]` -/
def P12561191292065104676.Spec : Prop :=
  ∀ n, P12561191292065104676.a n = A392540 n

end A392540

/-! ## A392540.P1801283581838819681

`∑[A001687(n+1+n)]`
-/

namespace A392540.P1801283581838819681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392540.P1801283581838819681

namespace A392540

/-- `∑[A001687(n+1+n)]` -/
def P1801283581838819681.Spec : Prop :=
  ∀ n, P1801283581838819681.a n = A392540 n

end A392540

/-! ## A392540.P703066651784779751

`Δ[A005253(n+3)]`
-/

namespace A392540.P703066651784779751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392540.P703066651784779751

namespace A392540

/-- `Δ[A005253(n+3)]` -/
def P703066651784779751.Spec : Prop :=
  ∀ n, P703066651784779751.a n = A392540 n

end A392540

/-! ## A392540.P2765336637550305844

`Δ[A209231(n+3)]`
-/

namespace A392540.P2765336637550305844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209231 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392540.P2765336637550305844

namespace A392540

/-- `Δ[A209231(n+3)]` -/
def P2765336637550305844.Spec : Prop :=
  ∀ n, P2765336637550305844.a n = A392540 n

end A392540

/-!
# A392541: Expansion of 1 / ((1-x)^2 - x^6).

The programs for A392541, the canonical program `A392541.P3744005679357272477` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392541 has offset 0).

The definition of A392541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^6))` (program `A392541.P3744005679357272477`, by `A392541.P3744005679357272477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392541.P3744005679357272477

`ogf(1/(1-2x+x^2-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392541

/-- `ogf(1/(1-2x+x^2-x^6))` -/
def P3744005679357272477.Spec : Prop :=
  ∀ n, P3744005679357272477.a n = A392541 n

theorem P3744005679357272477.correct : P3744005679357272477.Spec := by
  intro n
  simp only [A392541]

end A392541

/-! ## A392541.P15112023792059150852

`2*a(n-1)-a(n-2)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`
-/

namespace A392541.P15112023792059150852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6)

end

end A392541.P15112023792059150852

namespace A392541

/-- `2*a(n-1)-a(n-2)+a(n-6)` -/
def P15112023792059150852.Spec : Prop :=
  ∀ n, P15112023792059150852.a n = A392541 n

end A392541

/-! ## A392541.P7464430235862585503

`Δ[A005689(n+6)]`
-/

namespace A392541.P7464430235862585503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005689 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392541.P7464430235862585503

namespace A392541

/-- `Δ[A005689(n+6)]` -/
def P7464430235862585503.Spec : Prop :=
  ∀ n, P7464430235862585503.a n = A392541 n

end A392541

/-! ## A392541.P2614587632773864842

`A005689(n+7)-A005689(n+6)`
-/

namespace A392541.P2614587632773864842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005689 (n + 7) - A005689 (n + 6)

end

end A392541.P2614587632773864842

namespace A392541

/-- `A005689(n+7)-A005689(n+6)` -/
def P2614587632773864842.Spec : Prop :=
  ∀ n, P2614587632773864842.a n = A392541 n

end A392541

/-! ## A392541.P8538899694835095818

`A323048(A392543(n+1))`
-/

namespace A392541.P8538899694835095818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A392543 (n + 1)).toNat

end

end A392541.P8538899694835095818

namespace A392541

/-- `A323048(A392543(n+1))` -/
def P8538899694835095818.Spec : Prop :=
  ∀ n, P8538899694835095818.a n = A392541 n

end A392541

/-!
# A392542: Expansion of 1 / ((1-x)^4 - x^6).

The programs for A392542, the canonical program `A392542.P6245958975022901070` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392542 has offset 0).

The definition of A392542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))` (program `A392542.P6245958975022901070`, by `A392542.P6245958975022901070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392542.P6245958975022901070

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392542

/-- `ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))` -/
def P6245958975022901070.Spec : Prop :=
  ∀ n, P6245958975022901070.a n = A392542 n

theorem P6245958975022901070.correct : P6245958975022901070.Spec := by
  intro n
  simp only [A392542]

end A392542

/-! ## A392542.P13229108704363111603

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35, a(5)=56`
-/

namespace A392542.P13229108704363111603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35, 56] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 6)

end

end A392542.P13229108704363111603

namespace A392542

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-6)` -/
def P13229108704363111603.Spec : Prop :=
  ∀ n, P13229108704363111603.a n = A392542 n

end A392542

/-! ## A392542.P12572778220978374635

`A238935(2*(n+1))+A119968(n+1)-1+n²+n`
-/

namespace A392542.P12572778220978374635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238935 (2 * (n + 1)) + (A119968 (n + 1) - 1) + (n ^ 2 + n : ℤ)

end

end A392542.P12572778220978374635

namespace A392542

/-- `A238935(2*(n+1))+A119968(n+1)-1+n²+n` -/
def P12572778220978374635.Spec : Prop :=
  ∀ n, P12572778220978374635.a n = A392542 n

end A392542

/-! ## A392542.P14670070553501048529

`A306607(A076972(2*(n+1)))+A005843(∑[n])`
-/

namespace A392542.P14670070553501048529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 (A076972 (2 * (n + 1))).toNat + A005843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A392542.P14670070553501048529

namespace A392542

/-- `A306607(A076972(2*(n+1)))+A005843(∑[n])` -/
def P14670070553501048529.Spec : Prop :=
  ∀ n, P14670070553501048529.a n = A392542 n

end A392542

/-! ## A392542.P12692079476819794202

`A306607(A267444(n+1))+∑[A002837(2*n+1)]`
-/

namespace A392542.P12692079476819794202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 (A267444 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392542.P12692079476819794202

namespace A392542

/-- `A306607(A267444(n+1))+∑[A002837(2*n+1)]` -/
def P12692079476819794202.Spec : Prop :=
  ∀ n, P12692079476819794202.a n = A392542 n

end A392542

/-!
# A392543: Expansion of 1 / ((1-x)^2 - x^7).

The programs for A392543, the canonical program `A392543.P4168456153235537033` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392543 has offset 0).

The definition of A392543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^7))` (program `A392543.P4168456153235537033`, by `A392543.P4168456153235537033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392543.P4168456153235537033

`ogf(1/(1-2x+x^2-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392543

/-- `ogf(1/(1-2x+x^2-x^7))` -/
def P4168456153235537033.Spec : Prop :=
  ∀ n, P4168456153235537033.a n = A392543 n

theorem P4168456153235537033.correct : P4168456153235537033.Spec := by
  intro n
  simp only [A392543]

end A392543

/-! ## A392543.P6815897204202962049

`2*a(n-1)-a(n-2)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A392543.P6815897204202962049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7)

end

end A392543.P6815897204202962049

namespace A392543

/-- `2*a(n-1)-a(n-2)+a(n-7)` -/
def P6815897204202962049.Spec : Prop :=
  ∀ n, P6815897204202962049.a n = A392543 n

end A392543

/-! ## A392543.P10067673141413724616

`∑[A098574(n)]`
-/

namespace A392543.P10067673141413724616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392543.P10067673141413724616

namespace A392543

/-- `∑[A098574(n)]` -/
def P10067673141413724616.Spec : Prop :=
  ∀ n, P10067673141413724616.a n = A392543 n

end A392543

/-! ## A392543.P12101758951402810123

`∑[A369813(2*n)]`
-/

namespace A392543.P12101758951402810123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392543.P12101758951402810123

namespace A392543

/-- `∑[A369813(2*n)]` -/
def P12101758951402810123.Spec : Prop :=
  ∀ n, P12101758951402810123.a n = A392543 n

end A392543

/-! ## A392543.P11265762672107662415

`A369813(2*n+7)`
-/

namespace A392543.P11265762672107662415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (2 * n + 7)

end

end A392543.P11265762672107662415

namespace A392543

/-- `A369813(2*n+7)` -/
def P11265762672107662415.Spec : Prop :=
  ∀ n, P11265762672107662415.a n = A392543 n

end A392543

/-! ## A392543.P14439405784069999816

`A007380(A004277(n))`
-/

namespace A392543.P14439405784069999816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (A004277 n).toNat

end

end A392543.P14439405784069999816

namespace A392543

/-- `A007380(A004277(n))` -/
def P14439405784069999816.Spec : Prop :=
  ∀ n, P14439405784069999816.a n = A392543 n

end A392543

/-! ## A392543.P11031058436804286971

`A007380(A004275(n+1))`
-/

namespace A392543.P11031058436804286971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (A004275 (n + 1)).toNat

end

end A392543.P11031058436804286971

namespace A392543

/-- `A007380(A004275(n+1))` -/
def P11031058436804286971.Spec : Prop :=
  ∀ n, P11031058436804286971.a n = A392543 n

end A392543

/-! ## A392543.P6386995571063687684

`A007380(A153861(n*(2*n+1)))`
-/

namespace A392543.P6386995571063687684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (A153861 (n * (2 * n + 1))).toNat

end

end A392543.P6386995571063687684

namespace A392543

/-- `A007380(A153861(n*(2*n+1)))` -/
def P6386995571063687684.Spec : Prop :=
  ∀ n, P6386995571063687684.a n = A392543 n

end A392543

/-!
# A392544: Expansion of 1 / ((1-x)^3 - x^7).

The programs for A392544, the canonical program `A392544.P3085749570705167695` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392544 has offset 0).

The definition of A392544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7))` (program `A392544.P3085749570705167695`, by `A392544.P3085749570705167695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392544.P3085749570705167695

`ogf(1/(1-3x+3x^2-x^3-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392544

/-- `ogf(1/(1-3x+3x^2-x^3-x^7))` -/
def P3085749570705167695.Spec : Prop :=
  ∀ n, P3085749570705167695.a n = A392544 n

theorem P3085749570705167695.correct : P3085749570705167695.Spec := by
  intro n
  simp only [A392544]

end A392544

/-! ## A392544.P5473336932776811811

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=15, a(5)=21, a(6)=28`
-/

namespace A392544.P5473336932776811811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 10, 15, 21, 28] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + a (n - 7)

end

end A392544.P5473336932776811811

namespace A392544

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-7)` -/
def P5473336932776811811.Spec : Prop :=
  ∀ n, P5473336932776811811.a n = A392544 n

end A392544

/-! ## A392544.P11274156054451358932

`∑[∑[A370722(n)]]`
-/

namespace A392544.P11274156054451358932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392544.P11274156054451358932

namespace A392544

/-- `∑[∑[A370722(n)]]` -/
def P11274156054451358932.Spec : Prop :=
  ∀ n, P11274156054451358932.a n = A392544 n

end A392544

/-! ## A392544.P6986807204610614362

`∑[∑[A369814(3*n)]]`
-/

namespace A392544.P6986807204610614362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392544.P6986807204610614362

namespace A392544

/-- `∑[∑[A369814(3*n)]]` -/
def P6986807204610614362.Spec : Prop :=
  ∀ n, P6986807204610614362.a n = A392544 n

end A392544

/-! ## A392544.P1473979464908296109

`record[A369814(3*n+2)+A000007(n)]`
-/

namespace A392544.P1473979464908296109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (3 * n + 2) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392544.P1473979464908296109

namespace A392544

/-- `record[A369814(3*n+2)+A000007(n)]` -/
def P1473979464908296109.Spec : Prop :=
  ∀ n, P1473979464908296109.a n = A392544 n

end A392544

/-!
# A392545: Expansion of 1 / ((1-x)^4 - x^7).

The programs for A392545, the canonical program `A392545.P16982425835040831362` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392545 has offset 0).

The definition of A392545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))` (program `A392545.P16982425835040831362`, by `A392545.P16982425835040831362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392545.P16982425835040831362

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392545

/-- `ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))` -/
def P16982425835040831362.Spec : Prop :=
  ∀ n, P16982425835040831362.a n = A392545 n

theorem P16982425835040831362.correct : P16982425835040831362.Spec := by
  intro n
  simp only [A392545]

end A392545

/-! ## A392545.P2137315405785307038

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35, a(5)=56, a(6)=84`
-/

namespace A392545.P2137315405785307038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35, 56, 84] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 7)

end

end A392545.P2137315405785307038

namespace A392545

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-7)` -/
def P2137315405785307038.Spec : Prop :=
  ∀ n, P2137315405785307038.a n = A392545 n

end A392545

/-! ## A392545.P2344698645190728185

`A225687(A106629(n))`
-/

namespace A392545.P2344698645190728185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A106629 n).toNat

end

end A392545.P2344698645190728185

namespace A392545

/-- `A225687(A106629(n))` -/
def P2344698645190728185.Spec : Prop :=
  ∀ n, P2344698645190728185.a n = A392545 n

end A392545

/-! ## A392545.P8575097019479776207

`A003056(A061005(n+2))`
-/

namespace A392545.P8575097019479776207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061005 (n + 2)).toNat

end

end A392545.P8575097019479776207

namespace A392545

/-- `A003056(A061005(n+2))` -/
def P8575097019479776207.Spec : Prop :=
  ∀ n, P8575097019479776207.a n = A392545 n

end A392545

/-!
# A392546: Expansion of 1 / ((1-x)^5 - x^7).

The programs for A392546, the canonical program `A392546.P14662061870023942434` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392546 has offset 0).

The definition of A392546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))` (program `A392546.P14662061870023942434`, by `A392546.P14662061870023942434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392546.P14662061870023942434

`ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392546

/-- `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))` -/
def P14662061870023942434.Spec : Prop :=
  ∀ n, P14662061870023942434.a n = A392546 n

theorem P14662061870023942434.correct : P14662061870023942434.Spec := by
  intro n
  simp only [A392546]

end A392546

/-! ## A392546.P12255813792080130433

`A392355(lt[A185214(n), A392355(n)])`
-/

namespace A392546.P12255813792080130433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392355 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392546.P12255813792080130433

namespace A392546

/-- `A392355(lt[A185214(n), A392355(n)])` -/
def P12255813792080130433.Spec : Prop :=
  ∀ n, P12255813792080130433.a n = A392546 n

end A392546

/-! ## A392546.P17088580543282023451

`A001462(A198833(n+1)+A001787(n))`
-/

namespace A392546.P17088580543282023451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A198833 (n + 1) + A001787 n).toNat

end

end A392546.P17088580543282023451

namespace A392546

/-- `A001462(A198833(n+1)+A001787(n))` -/
def P17088580543282023451.Spec : Prop :=
  ∀ n, P17088580543282023451.a n = A392546 n

end A392546

/-! ## A392546.P9990386625040641455

`A341994(A392897(n))+A090580(n+1)`
-/

namespace A392546.P9990386625040641455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A392897 n).toNat + A090580 (n + 1)

end

end A392546.P9990386625040641455

namespace A392546

/-- `A341994(A392897(n))+A090580(n+1)` -/
def P9990386625040641455.Spec : Prop :=
  ∀ n, P9990386625040641455.a n = A392546 n

end A392546

/-!
# A392547: Expansion of 1 / ((1-x)^6 - x^7).

The programs for A392547, the canonical program `A392547.P5007982579981245019` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392547 has offset 0).

The definition of A392547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))` (program `A392547.P5007982579981245019`, by `A392547.P5007982579981245019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392547.P5007982579981245019

`ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392547

/-- `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))` -/
def P5007982579981245019.Spec : Prop :=
  ∀ n, P5007982579981245019.a n = A392547 n

theorem P5007982579981245019.correct : P5007982579981245019.Spec := by
  intro n
  simp only [A392547]

end A392547

/-! ## A392547.P3635859238195614292

`A390035(2*n+7)`
-/

namespace A392547.P3635859238195614292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390035 (2 * n + 7)

end

end A392547.P3635859238195614292

namespace A392547

/-- `A390035(2*n+7)` -/
def P3635859238195614292.Spec : Prop :=
  ∀ n, P3635859238195614292.a n = A392547 n

end A392547

/-! ## A392547.P13606252653433022808

`Δ[A293169(n+6)]`
-/

namespace A392547.P13606252653433022808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293169 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392547.P13606252653433022808

namespace A392547

/-- `Δ[A293169(n+6)]` -/
def P13606252653433022808.Spec : Prop :=
  ∀ n, P13606252653433022808.a n = A392547 n

end A392547

/-! ## A392547.P1067799091319341364

`Δ[record[A293169(A051340(n))]]`
-/

namespace A392547.P1067799091319341364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293169 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392547.P1067799091319341364

namespace A392547

/-- `Δ[record[A293169(A051340(n))]]` -/
def P1067799091319341364.Spec : Prop :=
  ∀ n, P1067799091319341364.a n = A392547 n

end A392547

/-!
# A392551: Number of words of length n over an infinite alphabet such that all prefixes satisfy c(3*k + 1) >= c(3*k + 2), c(3*k + 1) >= c(3*k), c(3*k + 2) >= c(3*j + 1), and c(3*k) >= c(3*j + 1) for 0 <= k < j, where c(i) is the number of occurrences of the letter i.

The programs for A392551, there is no canonical definition to state claims against.
-/

/-! ## A392551.P4195678813321581093

`A082226(A148159(n))`
-/

namespace A392551.P4195678813321581093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A148159 n).toNat

end

end A392551.P4195678813321581093

/-! ## A392551.P1280271850209508336

`A356065(A172383(n+1))`
-/

namespace A392551.P1280271850209508336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A172383 (n + 1)).toNat

end

end A392551.P1280271850209508336

/-! ## A392551.P15290921005448409727

`A340285(A000079(n))+A166861(n)`
-/

namespace A392551.P15290921005448409727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340285 (A000079 n).toNat + A166861 n

end

end A392551.P15290921005448409727

/-!
# A392552: Expansion of 1 / ((1-x)^2 - x^4)^2.

The programs for A392552, the canonical program `A392552.P10664071544742040902` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392552 has offset 0).

The definition of A392552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))` (program `A392552.P10664071544742040902`, by `A392552.P10664071544742040902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392552.P10664071544742040902

`ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392552

/-- `ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))` -/
def P10664071544742040902.Spec : Prop :=
  ∀ n, P10664071544742040902.a n = A392552 n

theorem P10664071544742040902.correct : P10664071544742040902.Spec := by
  intro n
  simp only [A392552]

end A392552

/-! ## A392552.P11720446832374515016

`∑[A387573(n+3)]`
-/

namespace A392552.P11720446832374515016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387573 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392552.P11720446832374515016

namespace A392552

/-- `∑[A387573(n+3)]` -/
def P11720446832374515016.Spec : Prop :=
  ∀ n, P11720446832374515016.a n = A392552 n

end A392552

/-! ## A392552.P11505956875222401208

`A324705(A001006(n))+A125851(n+1)`
-/

namespace A392552.P11505956875222401208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (A001006 n).toNat + A125851 (n + 1)

end

end A392552.P11505956875222401208

namespace A392552

/-- `A324705(A001006(n))+A125851(n+1)` -/
def P11505956875222401208.Spec : Prop :=
  ∀ n, P11505956875222401208.a n = A392552 n

end A392552

/-!
# A392553: Expansion of 1 / ((1-x)^2 - x^5)^2.

The programs for A392553, the canonical program `A392553.P4453686680860327887` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392553 has offset 0).

The definition of A392553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))` (program `A392553.P4453686680860327887`, by `A392553.P4453686680860327887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392553.P4453686680860327887

`ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392553

/-- `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))` -/
def P4453686680860327887.Spec : Prop :=
  ∀ n, P4453686680860327887.a n = A392553 n

theorem P4453686680860327887.correct : P4453686680860327887.Spec := by
  intro n
  simp only [A392553]

end A392553

/-! ## A392553.P7991774442403873470

`A202304(A007717(n))+A002378(n)`
-/

namespace A392553.P7991774442403873470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A007717 n).toNat + A002378 n

end

end A392553.P7991774442403873470

namespace A392553

/-- `A202304(A007717(n))+A002378(n)` -/
def P7991774442403873470.Spec : Prop :=
  ∀ n, P7991774442403873470.a n = A392553 n

end A392553

/-! ## A392553.P14058028645739090212

`A337835(A000142(n))+A299274(n)`
-/

namespace A392553.P14058028645739090212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (A000142 n).toNat + A299274 n

end

end A392553.P14058028645739090212

namespace A392553

/-- `A337835(A000142(n))+A299274(n)` -/
def P14058028645739090212.Spec : Prop :=
  ∀ n, P14058028645739090212.a n = A392553 n

end A392553

/-!
# A392554: Expansion of 1 / ((1-x)^2 - x^6)^2.

The programs for A392554, the canonical program `A392554.P17253667815891835020` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392554 has offset 0).

The definition of A392554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))` (program `A392554.P17253667815891835020`, by `A392554.P17253667815891835020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392554.P17253667815891835020

`ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392554

/-- `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))` -/
def P17253667815891835020.Spec : Prop :=
  ∀ n, P17253667815891835020.a n = A392554 n

theorem P17253667815891835020.correct : P17253667815891835020.Spec := by
  intro n
  simp only [A392554]

end A392554

/-! ## A392554.P13075025881576688355

`∑[A089870(∑[A029447(n+1)])]`
-/

namespace A392554.P13075025881576688355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392554.P13075025881576688355

namespace A392554

/-- `∑[A089870(∑[A029447(n+1)])]` -/
def P13075025881576688355.Spec : Prop :=
  ∀ n, P13075025881576688355.a n = A392554 n

end A392554

/-! ## A392554.P3035888738701200673

`A373979(A373958(n+1))+A373935(n+3)`
-/

namespace A392554.P3035888738701200673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373979 (A373958 (n + 1)).toNat + A373935 (n + 3)

end

end A392554.P3035888738701200673

namespace A392554

/-- `A373979(A373958(n+1))+A373935(n+3)` -/
def P3035888738701200673.Spec : Prop :=
  ∀ n, P3035888738701200673.a n = A392554 n

end A392554

/-! ## A392554.P2380901053134798934

`A373978(A213755(n+3))+A373935(n+3)`
-/

namespace A392554.P2380901053134798934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373978 (A213755 (n + 3)).toNat + A373935 (n + 3)

end

end A392554.P2380901053134798934

namespace A392554

/-- `A373978(A213755(n+3))+A373935(n+3)` -/
def P2380901053134798934.Spec : Prop :=
  ∀ n, P2380901053134798934.a n = A392554 n

end A392554

/-!
# A392561: Euler transform of A016116 = 2^floor(n/2).

The programs for A392561, there is no canonical definition to state claims against.
-/

/-! ## A392561.P1481769254427364137

`A135660(floor(exp(n+1)))`
-/

namespace A392561.P1481769254427364137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 ⌊Real.exp (n + 1 : ℝ)⌋.toNat

end

end A392561.P1481769254427364137

/-! ## A392561.P12608501572124768011

`A167520(A026713(n))`
-/

namespace A392561.P12608501572124768011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A026713 n).toNat

end

end A392561.P12608501572124768011

/-! ## A392561.P11634173130022816995

`A130148(A206604(n))`
-/

namespace A392561.P11634173130022816995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A206604 n).toNat

end

end A392561.P11634173130022816995

/-! ## A392561.P4313449690858238172

`A137734(A238419(n))`
-/

namespace A392561.P4313449690858238172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A238419 n).toNat

end

end A392561.P4313449690858238172

/-! ## A392561.P12470643185952624911

`A111651(A281157(n))`
-/

namespace A392561.P12470643185952624911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A281157 n).toNat

end

end A392561.P12470643185952624911

/-!
# A392564: Cubes of numbers that are neither squarefree nor squareful.

The programs for A392564, the canonical program `A392564.P9319350472348829098` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392564 has offset 1).

The definition of A392564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392564.P9319350472348829098

`A332785(n+1)^3`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392564

/-- `A332785(n+1)^3` -/
def P9319350472348829098.Spec : Prop :=
  ∀ n, P9319350472348829098.a n = A392564 (n + 1)

theorem P9319350472348829098.correct : P9319350472348829098.Spec := by
  intro n
  simp only [A392564, Nat.add_sub_cancel]

end A392564

/-! ## A392564.P14801278702567389476

`sqrt(A389947(n+1)^3)`
-/

namespace A392564.P14801278702567389476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A389947 (n + 1) ^ 3 : ℝ)

end

end A392564.P14801278702567389476

namespace A392564

/-- `sqrt(A389947(n+1)^3)` -/
def P14801278702567389476.Spec : Prop :=
  ∀ n, P14801278702567389476.a n = (A392564 (n + 1) : ℝ)

end A392564

/-! ## A392564.P17368897213197086591

`A332785(n+1)*A389947(n+1)`
-/

namespace A392564.P17368897213197086591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) * A389947 (n + 1)

end

end A392564.P17368897213197086591

namespace A392564

/-- `A332785(n+1)*A389947(n+1)` -/
def P17368897213197086591.Spec : Prop :=
  ∀ n, P17368897213197086591.a n = A392564 (n + 1)

theorem P17368897213197086591.correct : P17368897213197086591.Spec := by
  intro n
  simp only [A392564, Nat.add_sub_cancel, A392564.P17368897213197086591.a, A392564.P9319350472348829098.a, A332785, A332785.P15938896357927830426.f1, A332785.P15938896357927830426.f2, A332785.P15938896357927830426.a, A389947, A389947.P9755762612582178396.a, A326186, A326186.P460460233906349811.a, A057521, A057521.P7284310941140114823.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392564

/-! ## A392564.P17941279434130860272

`∩[A153147(n+1), A388549(n+1)]`
-/

namespace A392564.P17941279434130860272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P17941279434130860272

namespace A392564

/-- `∩[A153147(n+1), A388549(n+1)]` -/
def P17941279434130860272.Spec : Prop :=
  ∀ n, (P17941279434130860272.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P2451201171595341017

`A000578(A332785(n+1))`
-/

namespace A392564.P2451201171595341017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A332785 (n + 1)).toNat

end

end A392564.P2451201171595341017

namespace A392564

/-- `A000578(A332785(n+1))` -/
def P2451201171595341017.Spec : Prop :=
  ∀ n, P2451201171595341017.a n = A392564 (n + 1)

end A392564

/-! ## A392564.P10443702487761270772

`∩[A391593(n+1), A000578(n)]`
-/

namespace A392564.P10443702487761270772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P10443702487761270772

namespace A392564

/-- `∩[A391593(n+1), A000578(n)]` -/
def P10443702487761270772.Spec : Prop :=
  ∀ n, (P10443702487761270772.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P2456807901408258313

`∩[A391593(n+1), A109900(n)]`
-/

namespace A392564.P2456807901408258313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P2456807901408258313

namespace A392564

/-- `∩[A391593(n+1), A109900(n)]` -/
def P2456807901408258313.Spec : Prop :=
  ∀ n, (P2456807901408258313.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P17250736391313505586

`∩[A070265(n+1), A391593(n+1)]`
-/

namespace A392564.P17250736391313505586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P17250736391313505586

namespace A392564

/-- `∩[A070265(n+1), A391593(n+1)]` -/
def P17250736391313505586.Spec : Prop :=
  ∀ n, (P17250736391313505586.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P2031179952189499248

`∩[A076467(n+1), A391593(n+1)]`
-/

namespace A392564.P2031179952189499248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P2031179952189499248

namespace A392564

/-- `∩[A076467(n+1), A391593(n+1)]` -/
def P2031179952189499248.Spec : Prop :=
  ∀ n, (P2031179952189499248.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P18219638129525391808

`∩[A097054(n+1), A391593(n+1)]`
-/

namespace A392564.P18219638129525391808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P18219638129525391808

namespace A392564

/-- `∩[A097054(n+1), A391593(n+1)]` -/
def P18219638129525391808.Spec : Prop :=
  ∀ n, (P18219638129525391808.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P9676840682438680271

`∩[A153147(n+1), A391593(n+1)]`
-/

namespace A392564.P9676840682438680271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P9676840682438680271

namespace A392564

/-- `∩[A153147(n+1), A391593(n+1)]` -/
def P9676840682438680271.Spec : Prop :=
  ∀ n, (P9676840682438680271.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P15536658810602390684

`∩[A179125(n+1), A391593(n+1)]`
-/

namespace A392564.P15536658810602390684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P15536658810602390684

namespace A392564

/-- `∩[A179125(n+1), A391593(n+1)]` -/
def P15536658810602390684.Spec : Prop :=
  ∀ n, (P15536658810602390684.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P17349262544136294261

`∩[A184628(n+1), A391593(n+1)]`
-/

namespace A392564.P17349262544136294261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P17349262544136294261

namespace A392564

/-- `∩[A184628(n+1), A391593(n+1)]` -/
def P17349262544136294261.Spec : Prop :=
  ∀ n, (P17349262544136294261.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P11075099565942360328

`∩[A349201(n+1), A391593(n+1)]`
-/

namespace A392564.P11075099565942360328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P11075099565942360328

namespace A392564

/-- `∩[A349201(n+1), A391593(n+1)]` -/
def P11075099565942360328.Spec : Prop :=
  ∀ n, (P11075099565942360328.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P139606542212513250

`∩[A387255(n+1), A391593(n+1)]`
-/

namespace A392564.P139606542212513250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P139606542212513250

namespace A392564

/-- `∩[A387255(n+1), A391593(n+1)]` -/
def P139606542212513250.Spec : Prop :=
  ∀ n, (P139606542212513250.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P12519724654839501590

`∩[A387257(n+1), A391593(n+1)]`
-/

namespace A392564.P12519724654839501590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P12519724654839501590

namespace A392564

/-- `∩[A387257(n+1), A391593(n+1)]` -/
def P12519724654839501590.Spec : Prop :=
  ∀ n, (P12519724654839501590.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P12741992995040829134

`∩[A388549(n+1), A391593(n+1)]`
-/

namespace A392564.P12741992995040829134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P12741992995040829134

namespace A392564

/-- `∩[A388549(n+1), A391593(n+1)]` -/
def P12741992995040829134.Spec : Prop :=
  ∀ n, (P12741992995040829134.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P15311915296191809055

`∩[A153147(n+1), A392098(n+1)]`
-/

namespace A392564.P15311915296191809055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P15311915296191809055

namespace A392564

/-- `∩[A153147(n+1), A392098(n+1)]` -/
def P15311915296191809055.Spec : Prop :=
  ∀ n, (P15311915296191809055.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P18272613651128508977

`∩[A391593(n+1), A392098(n+1)]`
-/

namespace A392564.P18272613651128508977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P18272613651128508977

namespace A392564

/-- `∩[A391593(n+1), A392098(n+1)]` -/
def P18272613651128508977.Spec : Prop :=
  ∀ n, (P18272613651128508977.a n : ℤ) = A392564 (n + 1)

end A392564

/-! ## A392564.P5939359801076371964

`∩[A053012(n+1), A391593(n+1)]`
-/

namespace A392564.P5939359801076371964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392564.P5939359801076371964

namespace A392564

/-- `∩[A053012(n+1), A391593(n+1)]` -/
def P5939359801076371964.Spec : Prop :=
  ∀ n, (P5939359801076371964.a n : ℤ) = A392564 (n + 1)

end A392564

/-!
# A392567: Sum of the smallest parts in the partitions of n into 3 parts whose middle part is even.

The programs for A392567, there is no canonical definition to state claims against.
-/

/-! ## A392567.P16111718175017537367

`A393403(n+1)+A309684(n)-A309684(n+1)`
-/

namespace A392567.P16111718175017537367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393403 (n + 1) + (A309684 n - A309684 (n + 1))

end

end A392567.P16111718175017537367

/-!
# A392568: Numbers k such that there is a smaller number m > 1 such that k*m equals the concatenation of digit-wise multiplication, keeping the leading digits of k when m has fewer digits.

The programs for A392568, there is no canonical definition to state claims against.
-/

/-! ## A392568.P14589058891723334224

`A316530(A083477(n+2))`
-/

namespace A392568.P14589058891723334224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316530 (A083477 (n + 2)).toNat

end

end A392568.P14589058891723334224

/-! ## A392568.P7833309382077931342

`A340475(A187618(n))+n+2`
-/

namespace A392568.P7833309382077931342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340475 (A187618 n).toNat + (n + 2 : ℤ)

end

end A392568.P7833309382077931342

/-! ## A392568.P3592754503606124031

`A046082(A028246(n+1))+n+2`
-/

namespace A392568.P3592754503606124031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046082 (A028246 (n + 1)).toNat + (n + 2 : ℤ)

end

end A392568.P3592754503606124031

/-! ## A392568.P12543293957220436312

`A143823(A169945(A169954(n)))+n+1`
-/

namespace A392568.P12543293957220436312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A169945 (A169954 n).toNat).toNat + (n + 1 : ℤ)

end

end A392568.P12543293957220436312

/-!
# A392569: Partial sums of A000788.

The programs for A392569, the canonical program `A392569.P15058182535622603523` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392569 has offset 0).

The definition of A392569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392569.P15058182535622603523

`a(n-1)+A000788(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A392569

/-- `a(n-1)+A000788(n)` -/
def P15058182535622603523.Spec : Prop :=
  ∀ n, P15058182535622603523.a n = A392569 n

theorem P15058182535622603523.correct : P15058182535622603523.Spec := by
  intro n
  simp only [A392569]

end A392569

/-! ## A392569.P11933673696345186064

`∑[A000788(n)]`
-/

namespace A392569.P11933673696345186064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P11933673696345186064

namespace A392569

/-- `∑[A000788(n)]` -/
def P11933673696345186064.Spec : Prop :=
  ∀ n, P11933673696345186064.a n = A392569 n

end A392569

/-! ## A392569.P10614200335069736294

`∑[sqrt(A163095(n))]`
-/

namespace A392569.P10614200335069736294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A163095 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P10614200335069736294

namespace A392569

/-- `∑[sqrt(A163095(n))]` -/
def P10614200335069736294.Spec : Prop :=
  ∀ n, P10614200335069736294.a n = (A392569 n : ℝ)

end A392569

/-! ## A392569.P7161096463668452600

`∑[∑[A000120(n)]]`
-/

namespace A392569.P7161096463668452600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P7161096463668452600

namespace A392569

/-- `∑[∑[A000120(n)]]` -/
def P7161096463668452600.Spec : Prop :=
  ∀ n, P7161096463668452600.a n = A392569 n

end A392569

/-! ## A392569.P9487694513447452888

`∑[A330038(n+1)-(n+1)]`
-/

namespace A392569.P9487694513447452888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330038 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P9487694513447452888

namespace A392569

/-- `∑[A330038(n+1)-(n+1)]` -/
def P9487694513447452888.Spec : Prop :=
  ∀ n, P9487694513447452888.a n = A392569 n

end A392569

/-! ## A392569.P5530248993945244247

`∑[∑[A048881(2*n)]]`
-/

namespace A392569.P5530248993945244247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P5530248993945244247

namespace A392569

/-- `∑[∑[A048881(2*n)]]` -/
def P5530248993945244247.Spec : Prop :=
  ∀ n, P5530248993945244247.a n = A392569 n

end A392569

/-! ## A392569.P4464313916235024543

`∑[∑[A274009(2*n+1)]]`
-/

namespace A392569.P4464313916235024543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P4464313916235024543

namespace A392569

/-- `∑[∑[A274009(2*n+1)]]` -/
def P4464313916235024543.Spec : Prop :=
  ∀ n, P4464313916235024543.a n = A392569 n

end A392569

/-! ## A392569.P6566862119650172487

`∑[∑[n-val(n!, 2)]]`
-/

namespace A392569.P6566862119650172487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial n) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392569.P6566862119650172487

namespace A392569

/-- `∑[∑[n-val(n!, 2)]]` -/
def P6566862119650172487.Spec : Prop :=
  ∀ n, P6566862119650172487.a n = A392569 n

end A392569

/-!
# A392570: a(n) = numerator(b(n)), where b(n) = b(n-1) + n if n is odd and b(n-1)*n/(b(n-1) + n) if n is even, with b(0) = 0.

The programs for A392570, there is no canonical definition to state claims against.
-/

/-! ## A392570.P1570846944313005399

`A068307(lcm(3, (10^n+8)/9))`
-/

namespace A392570.P1570846944313005399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (Int.lcm 3 (SequenceMachineLib.roundAway ((10 ^ n + 8 : ℚ) / 9)))

end

end A392570.P1570846944313005399

/-! ## A392570.P17849742745077961955

`A348526(A283379(n))`
-/

namespace A392570.P17849742745077961955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348526 (A283379 n).toNat

end

end A392570.P17849742745077961955

/-!
# A392574: Number of n X n Hankel matrices with entries in {-1,1} with nonzero determinant.

The programs for A392574, there is no canonical definition to state claims against.
-/

/-! ## A392574.P12139473838625664077

`A076707(A098588(n))`
-/

namespace A392574.P12139473838625664077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (A098588 n).toNat

end

end A392574.P12139473838625664077

/-! ## A392574.P8733696265922084220

`∑[A090929(A011782(n)²)]`
-/

namespace A392574.P8733696265922084220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A011782 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392574.P8733696265922084220

/-!
# A392578: Expansion of 1 / ((1-x)^3 - x)^2.

The programs for A392578, the canonical program `A392578.P10088105604886602802` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392578 has offset 0).

The definition of A392578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))` (program `A392578.P10088105604886602802`, by `A392578.P10088105604886602802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392578.P10088105604886602802

`ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392578

/-- `ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))` -/
def P10088105604886602802.Spec : Prop :=
  ∀ n, P10088105604886602802.a n = A392578 n

theorem P10088105604886602802.correct : P10088105604886602802.Spec := by
  intro n
  simp only [A392578]

end A392578

/-!
# A392579: Expansion of 1 / ((1-x)^4 - x)^2.

The programs for A392579, the canonical program `A392579.P9642938909060208145` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392579 has offset 0).

The definition of A392579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))` (program `A392579.P9642938909060208145`, by `A392579.P9642938909060208145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392579.P9642938909060208145

`ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392579

/-- `ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))` -/
def P9642938909060208145.Spec : Prop :=
  ∀ n, P9642938909060208145.a n = A392579 n

theorem P9642938909060208145.correct : P9642938909060208145.Spec := by
  intro n
  simp only [A392579]

end A392579

/-!
# A392581: Expansion of 1 / ((1-x)^3 - x^2)^2.

The programs for A392581, the canonical program `A392581.P7704139350939474602` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392581 has offset 0).

The definition of A392581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))` (program `A392581.P7704139350939474602`, by `A392581.P7704139350939474602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392581.P7704139350939474602

`ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392581

/-- `ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))` -/
def P7704139350939474602.Spec : Prop :=
  ∀ n, P7704139350939474602.a n = A392581 n

theorem P7704139350939474602.correct : P7704139350939474602.Spec := by
  intro n
  simp only [A392581]

end A392581

/-!
# A392582: Expansion of 1 / ((1-x)^4 - x^2)^2.

The programs for A392582, the canonical program `A392582.P8391907930882077202` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392582 has offset 0).

The definition of A392582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))` (program `A392582.P8391907930882077202`, by `A392582.P8391907930882077202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392582.P8391907930882077202

`ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392582

/-- `ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))` -/
def P8391907930882077202.Spec : Prop :=
  ∀ n, P8391907930882077202.a n = A392582 n

theorem P8391907930882077202.correct : P8391907930882077202.Spec := by
  intro n
  simp only [A392582]

end A392582

/-!
# A392583: Expansion of 1 / ((1-x)^5 - x^2)^2.

The programs for A392583, there is no canonical definition to state claims against.
-/

/-! ## A392583.P16118642138920327107

`A274174(3*n+2)-A271510(A113122(n+4))`
-/

namespace A392583.P16118642138920327107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274174 (3 * n + 2) - A271510 (A113122 (n + 4)).toNat

end

end A392583.P16118642138920327107

/-!
# A392584: Expansion of 1 / ((1-x)^3 - x^3)^2.

The programs for A392584, the canonical program `A392584.P100911584461057635` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392584 has offset 0).

The definition of A392584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))` (program `A392584.P100911584461057635`, by `A392584.P100911584461057635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392584.P100911584461057635

`ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392584

/-- `ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))` -/
def P100911584461057635.Spec : Prop :=
  ∀ n, P100911584461057635.a n = A392584 n

theorem P100911584461057635.correct : P100911584461057635.Spec := by
  intro n
  simp only [A392584]

end A392584

/-!
# A392585: Expansion of 1 / ((1-x)^4 - x^3)^2.

The programs for A392585, the canonical program `A392585.P12874651179010104792` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392585 has offset 0).

The definition of A392585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))` (program `A392585.P12874651179010104792`, by `A392585.P12874651179010104792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392585.P12874651179010104792

`ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392585

/-- `ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))` -/
def P12874651179010104792.Spec : Prop :=
  ∀ n, P12874651179010104792.a n = A392585 n

theorem P12874651179010104792.correct : P12874651179010104792.Spec := by
  intro n
  simp only [A392585]

end A392585

/-!
# A392586: Expansion of 1 / ((1-x)^5 - x^3)^2.

The programs for A392586, there is no canonical definition to state claims against.
-/

/-! ## A392586.P15284427013209348872

`A324751(A000040(3*n+4))-A304360(n+1)`
-/

namespace A392586.P15284427013209348872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A000040 (3 * n + 4)).toNat - A304360 (n + 1)

end

end A392586.P15284427013209348872

/-!
# A392587: Expansion of 1 / ((1-x)^3 - x^4)^2.

The programs for A392587, the canonical program `A392587.P7012137870044200979` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392587 has offset 0).

The definition of A392587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))` (program `A392587.P7012137870044200979`, by `A392587.P7012137870044200979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392587.P7012137870044200979

`ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392587

/-- `ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))` -/
def P7012137870044200979.Spec : Prop :=
  ∀ n, P7012137870044200979.a n = A392587 n

theorem P7012137870044200979.correct : P7012137870044200979.Spec := by
  intro n
  simp only [A392587]

end A392587

/-! ## A392587.P2399739792408081796

`∑[∑[A130734(A144700(n+4))]]`
-/

namespace A392587.P2399739792408081796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A144700 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392587.P2399739792408081796

namespace A392587

/-- `∑[∑[A130734(A144700(n+4))]]` -/
def P2399739792408081796.Spec : Prop :=
  ∀ n, P2399739792408081796.a n = A392587 n

end A392587

/-!
# A392588: Expansion of 1 / ((1-x)^4 - x^4)^2.

The programs for A392588, the canonical program `A392588.P73157773485409300` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392588 has offset 0).

The definition of A392588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))` (program `A392588.P73157773485409300`, by `A392588.P73157773485409300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392588.P73157773485409300

`ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392588

/-- `ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))` -/
def P73157773485409300.Spec : Prop :=
  ∀ n, P73157773485409300.a n = A392588 n

theorem P73157773485409300.correct : P73157773485409300.Spec := by
  intro n
  simp only [A392588]

end A392588

/-!
# A392589: Expansion of 1 / ((1-x)^5 - x^4)^2.

The programs for A392589, there is no canonical definition to state claims against.
-/

/-! ## A392589.P623689595801949854

`A151966(A228852(n))+A035927(n)`
-/

namespace A392589.P623689595801949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151966 (A228852 n).toNat + A035927 n

end

end A392589.P623689595801949854

/-!
# A392590: Upper irredundance and domination number of the n-Moebius ladder.

The programs for A392590, the canonical program `A392590.P11969927368070026159` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392590 has offset 1).

The definition of A392590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392590.P11969927368070026159

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392590

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11969927368070026159.Spec : Prop :=
  ∀ n, P11969927368070026159.a n = A392590 (n + 1)

theorem P11969927368070026159.correct : P11969927368070026159.Spec := by
  intro n
  simp only [A392590, Nat.add_sub_cancel]

end A392590

/-! ## A392590.P1563840136908132311

`4+floor((n-4)/4)+2*floor((n-2)/4)+floor((n+1)/4)`
-/

namespace A392590.P1563840136908132311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + ⌊((n : ℤ) - 4 : ℚ) / 4⌋ + 2 * ⌊((n : ℤ) - 2 : ℚ) / 4⌋ + ⌊(n + 1 : ℚ) / 4⌋

end

end A392590.P1563840136908132311

namespace A392590

/-- `4+floor((n-4)/4)+2*floor((n-2)/4)+floor((n+1)/4)` -/
def P1563840136908132311.Spec : Prop :=
  ∀ n, P1563840136908132311.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P14156293536539085956

`(4*(n+1)+2*cos((n+1)*π/2)-1-(-1)^(n+1))/4`
-/

namespace A392590.P14156293536539085956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℝ) + 2 * Real.cos ((n + 1 : ℝ) * Real.pi / 2) - 1 - ((-1) ^ (n + 1) : ℝ)) / 4

end

end A392590.P14156293536539085956

namespace A392590

/-- `(4*(n+1)+2*cos((n+1)*π/2)-1-(-1)^(n+1))/4` -/
def P14156293536539085956.Spec : Prop :=
  ∀ n, P14156293536539085956.a n = (A392590 (n + 1) : ℝ)

end A392590

/-! ## A392590.P7425826552619368001

`ceil(or(3, 3*n)/3)`
-/

namespace A392590.P7425826552619368001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (3 * n) : ℚ) / 3⌉

end

end A392590.P7425826552619368001

namespace A392590

/-- `ceil(or(3, 3*n)/3)` -/
def P7425826552619368001.Spec : Prop :=
  ∀ n, P7425826552619368001.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P12197231173571189468

`floor(sqrt((n+3)%4)+n)`
-/

namespace A392590.P12197231173571189468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 3) % 4 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A392590.P12197231173571189468

namespace A392590

/-- `floor(sqrt((n+3)%4)+n)` -/
def P12197231173571189468.Spec : Prop :=
  ∀ n, P12197231173571189468.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P11388894333114155948

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A392590.P11388894333114155948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P11388894333114155948

namespace A392590

/-- `∑[abs(a(n-4))]` -/
def P11388894333114155948.Spec : Prop :=
  ∀ n, (P11388894333114155948.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P6146712615244581301

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A392590.P6146712615244581301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P6146712615244581301

namespace A392590

/-- `∑[dr(a(n-4))]` -/
def P6146712615244581301.Spec : Prop :=
  ∀ n, (P6146712615244581301.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P11950619866694243620

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A392590.P11950619866694243620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P11950619866694243620

namespace A392590

/-- `∑[floor(a(n-4))]` -/
def P11950619866694243620.Spec : Prop :=
  ∀ n, (P11950619866694243620.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P8182828895917497701

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A392590.P8182828895917497701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P8182828895917497701

namespace A392590

/-- `∑[ceil(a(n-4))]` -/
def P8182828895917497701.Spec : Prop :=
  ∀ n, (P8182828895917497701.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P6442781017124905440

`∑[round(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A392590.P6442781017124905440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P6442781017124905440

namespace A392590

/-- `∑[round(a(n-4))]` -/
def P6442781017124905440.Spec : Prop :=
  ∀ n, (P6442781017124905440.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P7291160667462096171

`∑[((2*n+1)%8)%3]`
-/

namespace A392590.P7291160667462096171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 8 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P7291160667462096171

namespace A392590

/-- `∑[((2*n+1)%8)%3]` -/
def P7291160667462096171.Spec : Prop :=
  ∀ n, (P7291160667462096171.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P14436717326675959281

`ceil(and(3, n-1)/3+n)`
-/

namespace A392590.P14436717326675959281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land 3 ((n : ℤ) - 1) : ℚ) / 3 + (n : ℚ)⌉

end

end A392590.P14436717326675959281

namespace A392590

/-- `ceil(and(3, n-1)/3+n)` -/
def P14436717326675959281.Spec : Prop :=
  ∀ n, P14436717326675959281.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P11419447203604443783

`abs(a(n-4)+4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A392590.P11419447203604443783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 4) + 4

end

end A392590.P11419447203604443783

namespace A392590

/-- `abs(a(n-4)+4)` -/
def P11419447203604443783.Spec : Prop :=
  ∀ n, (P11419447203604443783.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P9161385351077680510

`∑[a(n-4)%3]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A392590.P9161385351077680510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P9161385351077680510

namespace A392590

/-- `∑[a(n-4)%3]` -/
def P9161385351077680510.Spec : Prop :=
  ∀ n, (P9161385351077680510.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P13923506751321546982

`∑[and(3, a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A392590.P13923506751321546982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  Nat.land 3 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392590.P13923506751321546982

namespace A392590

/-- `∑[and(3, a(n-4))]` -/
def P13923506751321546982.Spec : Prop :=
  ∀ n, (P13923506751321546982.a n : ℤ) = A392590 (n + 1)

end A392590

/-! ## A392590.P8717700848535621569

`floor(∑[gcd(2-n, 2*n)/2])`
-/

namespace A392590.P8717700848535621569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 - (n : ℤ)) (2 * n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A392590.P8717700848535621569

namespace A392590

/-- `floor(∑[gcd(2-n, 2*n)/2])` -/
def P8717700848535621569.Spec : Prop :=
  ∀ n, P8717700848535621569.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P5696816571125969255

`floor((∑[and(2, n)]+n+2)/2)`
-/

namespace A392590.P5696816571125969255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) : ℕ) : ℚ) / 2⌋

end

end A392590.P5696816571125969255

namespace A392590

/-- `floor((∑[and(2, n)]+n+2)/2)` -/
def P5696816571125969255.Spec : Prop :=
  ∀ n, P5696816571125969255.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P16847638885008392273

`floor(n+1-sin(2*n%4))`
-/

namespace A392590.P16847638885008392273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.sin ((2 * (n % 4) : ℕ) : ℝ)⌋

end

end A392590.P16847638885008392273

namespace A392590

/-- `floor(n+1-sin(2*n%4))` -/
def P16847638885008392273.Spec : Prop :=
  ∀ n, P16847638885008392273.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P3066855304088767328

`floor((or(3, n+2)+2*n)/3)`
-/

namespace A392590.P3066855304088767328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (n + 2) + 2 * n : ℚ) / 3⌋

end

end A392590.P3066855304088767328

namespace A392590

/-- `floor((or(3, n+2)+2*n)/3)` -/
def P3066855304088767328.Spec : Prop :=
  ∀ n, P3066855304088767328.a n = A392590 (n + 1)

end A392590

/-! ## A392590.P11237406200878040537

`round(n+1-and(3, n+2)/4)`
-/

namespace A392590.P11237406200878040537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.land 3 (n + 2) : ℚ) / 4)

end

end A392590.P11237406200878040537

namespace A392590

/-- `round(n+1-and(3, n+2)/4)` -/
def P11237406200878040537.Spec : Prop :=
  ∀ n, P11237406200878040537.a n = A392590 (n + 1)

end A392590

/-!
# A392591: Number of platypus graphs on n vertices.

The programs for A392591, there is no canonical definition to state claims against.
-/

/-! ## A392591.P14829301346722664291

`and((2-n)², A289324(2*(n+1)))`
-/

namespace A392591.P14829301346722664291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 - (n : ℤ)) ^ 2) (A289324 (2 * (n + 1)))

end

end A392591.P14829301346722664291

/-! ## A392591.P92882877682494437

`A054439(A119429(n))`
-/

namespace A392591.P92882877682494437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054439 (A119429 n).toNat

end

end A392591.P92882877682494437

/-! ## A392591.P15942398284546925139

`A170965(A010750(n))`
-/

namespace A392591.P15942398284546925139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 (A010750 n).toNat

end

end A392591.P15942398284546925139

/-! ## A392591.P15224109273760417432

`A242869(A002528(n))`
-/

namespace A392591.P15224109273760417432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 (A002528 n).toNat

end

end A392591.P15224109273760417432

/-! ## A392591.P17758342700214221129

`A106684(A165877(n))`
-/

namespace A392591.P17758342700214221129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106684 (A165877 n).toNat

end

end A392591.P17758342700214221129

/-!
# A392592: Intersection of A391845 and A391866.

The programs for A392592, there is no canonical definition to state claims against.
-/

/-! ## A392592.P12825456916862656611

`filter[A391866(n+1), A391844(#)]`
-/

namespace A392592.P12825456916862656611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A392592.P12825456916862656611

/-! ## A392592.P552244646245801725

`∩[A141757(n+1), A391866(n+1)]`
-/

namespace A392592.P552244646245801725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392592.P552244646245801725

/-!
# A392594: Numbers k such that A003415(k) == A276085(k) (mod 4), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A392594, there is no canonical definition to state claims against.
-/

/-! ## A392594.P6291596019567589574

`∪[A017089(n), A368995(n+1)]`
-/

namespace A392594.P6291596019567589574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392594.P6291596019567589574

/-!
# A392595: a(n) = A324895(n) mod 360, where A324895 gives the largest proper divisor of primorial base exp-function.

The programs for A392595, there is no canonical definition to state claims against.
-/

/-! ## A392595.P3936936528821808286

`A032742(A276086(n))%360`
-/

namespace A392595.P3936936528821808286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A276086 n).toNat) 360

end

end A392595.P3936936528821808286

/-! ## A392595.P1617479391118676129

`A324895(n)%A137261(n+1)`
-/

namespace A392595.P1617479391118676129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324895 n) (A137261 (n + 1))

end

end A392595.P1617479391118676129

/-!
# A392596: a(n) = A276086(n) mod 360, where A276086 is the primorial base exp-function.

The programs for A392596, there is no canonical definition to state claims against.
-/

/-! ## A392596.P4976257997501742737

`A276086(n)%360`
-/

namespace A392596.P4976257997501742737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 360

end

end A392596.P4976257997501742737

/-! ## A392596.P12735030226764913661

`gcd(A151622(A145341(n+1)), A276086(n))`
-/

namespace A392596.P12735030226764913661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 (A145341 (n + 1)).toNat) (A276086 n)

end

end A392596.P12735030226764913661

/-!
# A392597: The largest 7-smooth divisor of n.

The programs for A392597, the canonical program `A392597.P12125127422441468717` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392597 has offset 1).

The definition of A392597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392597.P12125127422441468717

`A006519(n+1)*A038500(n+1)*A060904(n+1)*A268354(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A392597

/-- `A006519(n+1)*A038500(n+1)*A060904(n+1)*A268354(n+1)` -/
def P12125127422441468717.Spec : Prop :=
  ∀ n, P12125127422441468717.a n = A392597 (n + 1)

theorem P12125127422441468717.correct : P12125127422441468717.Spec := by
  intro n
  simp only [A392597, Nat.add_sub_cancel]

end A392597

/-! ## A392597.P13735536121429953744

`2^A007814(n+1)*3^A007949(n+1)*5^A112765(n+1)*7^A214411(n+1)`
-/

namespace A392597.P13735536121429953744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A007949 (n + 1) : ℤ) * (5 : ℚ) ^ (A112765 (n + 1) : ℤ) * (7 : ℚ) ^ (A214411 (n + 1) : ℤ)

end

end A392597.P13735536121429953744

namespace A392597

/-- `2^A007814(n+1)*3^A007949(n+1)*5^A112765(n+1)*7^A214411(n+1)` -/
def P13735536121429953744.Spec : Prop :=
  ∀ n, P13735536121429953744.a n = (A392597 (n + 1) : ℚ)

end A392597

/-! ## A392597.P17740500971708215379

`2^val(n+1, 2)*3^val(n+1, 3)*5^val(n+1, 5)*7^val(n+1, 7)`
-/

namespace A392597.P17740500971708215379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 * 7 ^ SequenceMachineLib.valuation (n + 1) 7

end

end A392597.P17740500971708215379

namespace A392597

/-- `2^val(n+1, 2)*3^val(n+1, 3)*5^val(n+1, 5)*7^val(n+1, 7)` -/
def P17740500971708215379.Spec : Prop :=
  ∀ n, (P17740500971708215379.a n : ℤ) = A392597 (n + 1)

end A392597

/-! ## A392597.P14921501313272981308

`A268354(n+1)*A355582(n+1)`
-/

namespace A392597.P14921501313272981308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1) * A355582 (n + 1)

end

end A392597.P14921501313272981308

namespace A392597

/-- `A268354(n+1)*A355582(n+1)` -/
def P14921501313272981308.Spec : Prop :=
  ∀ n, P14921501313272981308.a n = A392597 (n + 1)

theorem P14921501313272981308.correct : P14921501313272981308.Spec := by
  intro n
  simp only [A392597, Nat.add_sub_cancel, A392597.P14921501313272981308.a, A392597.P12125127422441468717.a, A006519, A006519.P10435570611646570274.a, A038500, A038500.P18314557775098268376.a, A060904, A060904.P2539972540385605862.a, A268354, A268354.P8951824794683086161.a, A355582, A355582.P2103007522092691824.a, A112765, A112765.P4892120039852414895.a, A171977, A171977.P14092944863121073856.a, A214411, A214411.P333833577955200913.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392597

/-! ## A392597.P372198277649051769

`A392598(n+1)/A268357(n+1)`
-/

namespace A392597.P372198277649051769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392598 (n + 1) : ℚ) / (A268357 (n + 1) : ℚ)

end

end A392597.P372198277649051769

namespace A392597

/-- `A392598(n+1)/A268357(n+1)` -/
def P372198277649051769.Spec : Prop :=
  ∀ n, P372198277649051769.a n = (A392597 (n + 1) : ℚ)

end A392597

/-! ## A392597.P12260005019552135994

`gcd(A033286(n+1), A085911(n+1))`
-/

namespace A392597.P12260005019552135994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A085911 (n + 1))

end

end A392597.P12260005019552135994

namespace A392597

/-- `gcd(A033286(n+1), A085911(n+1))` -/
def P12260005019552135994.Spec : Prop :=
  ∀ n, (P12260005019552135994.a n : ℤ) = A392597 (n + 1)

end A392597

/-! ## A392597.P4114506392593736445

`(n+1)/A242603(A132740(A038502(n+1)))`
-/

namespace A392597.P4114506392593736445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242603 (A132740 (A038502 (n + 1)).toNat).toNat : ℚ)

end

end A392597.P4114506392593736445

namespace A392597

/-- `(n+1)/A242603(A132740(A038502(n+1)))` -/
def P4114506392593736445.Spec : Prop :=
  ∀ n, P4114506392593736445.a n = (A392597 (n + 1) : ℚ)

end A392597

/-! ## A392597.P2632664059086160433

`A118541(A392598(n+1))`
-/

namespace A392597.P2632664059086160433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (A392598 (n + 1)).toNat

end

end A392597.P2632664059086160433

namespace A392597

/-- `A118541(A392598(n+1))` -/
def P2632664059086160433.Spec : Prop :=
  ∀ n, P2632664059086160433.a n = A392597 (n + 1)

end A392597

/-! ## A392597.P10931334721812031583

`gcd(A060401(n+1), A071785(n+1))`
-/

namespace A392597.P10931334721812031583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060401 (n + 1)) (A071785 (n + 1))

end

end A392597.P10931334721812031583

namespace A392597

/-- `gcd(A060401(n+1), A071785(n+1))` -/
def P10931334721812031583.Spec : Prop :=
  ∀ n, (P10931334721812031583.a n : ℤ) = A392597 (n + 1)

end A392597

/-! ## A392597.P13199129400998467917

`gcd(A071785(n+1), A154920(n))`
-/

namespace A392597.P13199129400998467917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071785 (n + 1)) (A154920 n)

end

end A392597.P13199129400998467917

namespace A392597

/-- `gcd(A071785(n+1), A154920(n))` -/
def P13199129400998467917.Spec : Prop :=
  ∀ n, (P13199129400998467917.a n : ℤ) = A392597 (n + 1)

end A392597

/-! ## A392597.P3039106798868832003

`gcd(n+1, ∏[dr(n+1)])`
-/

namespace A392597.P3039106798868832003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A392597.P3039106798868832003

namespace A392597

/-- `gcd(n+1, ∏[dr(n+1)])` -/
def P3039106798868832003.Spec : Prop :=
  ∀ n, (P3039106798868832003.a n : ℤ) = A392597 (n + 1)

end A392597

/-!
# A392598: The largest 11-smooth divisor of n.

The programs for A392598, the canonical program `A392598.P12361947951948516843` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392598 has offset 1).

The definition of A392598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392598.P12361947951948516843

`A268357(n+1)*A392597(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392598

/-- `A268357(n+1)*A392597(n+1)` -/
def P12361947951948516843.Spec : Prop :=
  ∀ n, P12361947951948516843.a n = A392598 (n + 1)

theorem P12361947951948516843.correct : P12361947951948516843.Spec := by
  intro n
  simp only [A392598, Nat.add_sub_cancel]

end A392598

/-! ## A392598.P12143027789998079152

`gcd(A071786(n+1), A370979(n+1))`
-/

namespace A392598.P12143027789998079152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071786 (n + 1)) (A370979 (n + 1))

end

end A392598.P12143027789998079152

namespace A392598

/-- `gcd(A071786(n+1), A370979(n+1))` -/
def P12143027789998079152.Spec : Prop :=
  ∀ n, (P12143027789998079152.a n : ℤ) = A392598 (n + 1)

end A392598

/-! ## A392598.P11807769329157008316

`gcd(A071786(n+1), A367119(n))`
-/

namespace A392598.P11807769329157008316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071786 (n + 1)) (A367119 n)

end

end A392598.P11807769329157008316

namespace A392598

/-- `gcd(A071786(n+1), A367119(n))` -/
def P11807769329157008316.Spec : Prop :=
  ∀ n, (P11807769329157008316.a n : ℤ) = A392598 (n + 1)

end A392598

/-! ## A392598.P9710668340037402216

`gcd(A341090(n+1), A396428(n+1))`
-/

namespace A392598.P9710668340037402216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341090 (n + 1)) (A396428 (n + 1))

end

end A392598.P9710668340037402216

namespace A392598

/-- `gcd(A341090(n+1), A396428(n+1))` -/
def P9710668340037402216.Spec : Prop :=
  ∀ n, (P9710668340037402216.a n : ℤ) = A392598 (n + 1)

end A392598

/-! ## A392598.P16806741265818192163

`gcd(A003964(n+1), A088447(n+1))`
-/

namespace A392598.P16806741265818192163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003964 (n + 1)) (A088447 (n + 1))

end

end A392598.P16806741265818192163

namespace A392598

/-- `gcd(A003964(n+1), A088447(n+1))` -/
def P16806741265818192163.Spec : Prop :=
  ∀ n, (P16806741265818192163.a n : ℤ) = A392598 (n + 1)

end A392598

/-!
# A392599: a(n) = A276087(n) mod 360, where A276087 is the primorial base exp-function applied twice.

The programs for A392599, there is no canonical definition to state claims against.
-/

/-! ## A392599.P17332121575829944469

`A276086(A276086(n))%360`
-/

namespace A392599.P17332121575829944469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (A276086 n).toNat) 360

end

end A392599.P17332121575829944469

/-! ## A392599.P9947111556920305498

`A276087(n)%A137261(n+1)`
-/

namespace A392599.P9947111556920305498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276087 n) (A137261 (n + 1))

end

end A392599.P9947111556920305498

/-! ## A392599.P14719419344206670061

`A392596(A276086(n))`
-/

namespace A392599.P14719419344206670061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392596 (A276086 n).toNat

end

end A392599.P14719419344206670061

/-! ## A392599.P112924775689151834

`A392596(A372576(A276087(n)))`
-/

namespace A392599.P112924775689151834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392596 (A372576 (A276087 n).toNat).toNat

end

end A392599.P112924775689151834

