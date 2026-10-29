import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A229600: Number of defective 3-colorings of an n X 2 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229600, the canonical program `A229600.P1930957637929007472` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229600 has offset 1).

The definition of A229600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229600.P8998099884926939258

`ogf((6x-15x^2+13x^3-2x^4)/(1-9x+27x^2-27x^3))`
-/

namespace A229600.P8998099884926939258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -15, 13, -2] [1, -9, 27, -27] n

end

end A229600.P8998099884926939258

namespace A229600

/-- `ogf((6x-15x^2+13x^3-2x^4)/(1-9x+27x^2-27x^3))` -/
def P8998099884926939258.Spec : Prop :=
  ∀ n, P8998099884926939258.a n = A229600 (n + 1)

end A229600

/-! ## A229600.P1930957637929007472

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=6, a(2)=39, a(3)=202, a(4)=925`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A229600

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P1930957637929007472.Spec : Prop :=
  ∀ n, P1930957637929007472.a n = A229600 (n + 1)

theorem P1930957637929007472.correct : P1930957637929007472.Spec := by
  intro n
  simp only [A229600, Nat.add_sub_cancel]

end A229600

/-! ## A229600.P1963833810196473336

`A229606(∑[n+1]+2)`
-/

namespace A229600.P1963833810196473336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229600.P1963833810196473336

namespace A229600

/-- `A229606(∑[n+1]+2)` -/
def P1963833810196473336.Spec : Prop :=
  ∀ n, P1963833810196473336.a n = A229600 (n + 1)

end A229600

/-! ## A229600.P15250246226208732537

`A007318(C(n, 2))*A229606(A133263(n+1))`
-/

namespace A229600.P15250246226208732537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A229606 (A133263 (n + 1)).toNat

end

end A229600.P15250246226208732537

namespace A229600

/-- `A007318(C(n, 2))*A229606(A133263(n+1))` -/
def P15250246226208732537.Spec : Prop :=
  ∀ n, P15250246226208732537.a n = A229600 (n + 1)

end A229600

/-! ## A229600.P7435535859842654887

`A007318(A000096(n))*A229606(A133263(n+1))`
-/

namespace A229600.P7435535859842654887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A229606 (A133263 (n + 1)).toNat

end

end A229600.P7435535859842654887

namespace A229600

/-- `A007318(A000096(n))*A229606(A133263(n+1))` -/
def P7435535859842654887.Spec : Prop :=
  ∀ n, P7435535859842654887.a n = A229600 (n + 1)

end A229600

/-!
# A229601: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229601, there is no canonical definition to state claims against.
-/

/-! ## A229601.P16477016752126727930

`A229606(∑[n+2]+4)`
-/

namespace A229601.P16477016752126727930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229601.P16477016752126727930

/-! ## A229601.P4601011751322074165

`gcd(A112316(n), A229606(A167614(n+1)))`
-/

namespace A229601.P4601011751322074165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A229606 (A167614 (n + 1)).toNat)

end

end A229601.P4601011751322074165

/-! ## A229601.P5885636507841215198

`lcm(A143431(n), A229606(A167614(n+1)))`
-/

namespace A229601.P5885636507841215198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143431 n) (A229606 (A167614 (n + 1)).toNat)

end

end A229601.P5885636507841215198

/-! ## A229601.P1707439944146372202

`or(A000007(n), A229606(A167614(n+1)))`
-/

namespace A229601.P1707439944146372202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229606 (A167614 (n + 1)).toNat)

end

end A229601.P1707439944146372202

/-! ## A229601.P3947544710399935364

`A285007(n+1)+A229606(A167614(n+1))`
-/

namespace A229601.P3947544710399935364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A229606 (A167614 (n + 1)).toNat

end

end A229601.P3947544710399935364

/-!
# A229602: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229602, there is no canonical definition to state claims against.
-/

/-! ## A229602.P17002472459939773971

`A229606(A374004(n+1))`
-/

namespace A229602.P17002472459939773971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374004 (n + 1)).toNat

end

end A229602.P17002472459939773971

/-! ## A229602.P3693440848489974285

`A229606(A052905(n)+9)`
-/

namespace A229602.P3693440848489974285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A052905 n + 9).toNat

end

end A229602.P3693440848489974285

/-! ## A229602.P2578534127264187173

`A229606(A055999(n)+10)`
-/

namespace A229602.P2578534127264187173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A055999 n + 10).toNat

end

end A229602.P2578534127264187173

/-! ## A229602.P4537465583208723555

`A229606(A167614(n+2)+1)`
-/

namespace A229602.P4537465583208723555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A167614 (n + 2) + 1).toNat

end

end A229602.P4537465583208723555

/-! ## A229602.P2197573519798657668

`A229606(A000096(n+2)+5)`
-/

namespace A229602.P2197573519798657668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A000096 (n + 2) + 5).toNat

end

end A229602.P2197573519798657668

/-!
# A229603: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229603, there is no canonical definition to state claims against.
-/

/-! ## A229603.P6560394523778637439

`A229606(A374005(n+1))`
-/

namespace A229603.P6560394523778637439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374005 (n + 1)).toNat

end

end A229603.P6560394523778637439

/-! ## A229603.P13615890352893854408

`A229606(A167499(n+3))`
-/

namespace A229603.P13615890352893854408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A167499 (n + 3)).toNat

end

end A229603.P13615890352893854408

/-! ## A229603.P10530774272946140749

`A229606(A056000(n)+15)`
-/

namespace A229603.P10530774272946140749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A056000 n + 15).toNat

end

end A229603.P10530774272946140749

/-! ## A229603.P8421523848135781359

`A229606(Δ[A023545(n+1)])`
-/

namespace A229603.P8421523848135781359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (f1 (n + 1) - f1 n).toNat

end

end A229603.P8421523848135781359

/-! ## A229603.P14531052015505280539

`A229606(A055999(n+2)+2)`
-/

namespace A229603.P14531052015505280539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A055999 (n + 2) + 2).toNat

end

end A229603.P14531052015505280539

/-!
# A229604: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229604, there is no canonical definition to state claims against.
-/

/-! ## A229604.P16161212790232757393

`A229606(A374007(n+1))`
-/

namespace A229604.P16161212790232757393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374007 (n + 1)).toNat

end

end A229604.P16161212790232757393

/-! ## A229604.P10105685564578187127

`A229606(eq[7, A131818(n+1)])`
-/

namespace A229604.P10105685564578187127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229604.P10105685564578187127

/-! ## A229604.P7325169114891547858

`A229606(eq[3, A219347(n)])`
-/

namespace A229604.P7325169114891547858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229604.P7325169114891547858

/-! ## A229604.P3372743888576408114

`A229606(eq[8, A258709(n)])`
-/

namespace A229604.P3372743888576408114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229604.P3372743888576408114

/-! ## A229604.P10265041008045006694

`A229606(eq[8, A185782(n+1)])`
-/

namespace A229604.P10265041008045006694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229604.P10265041008045006694

/-!
# A229605: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229605, there is no canonical definition to state claims against.
-/

/-! ## A229605.P6768791986894638777

`A229606(A374008(n+1))`
-/

namespace A229605.P6768791986894638777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374008 (n + 1)).toNat

end

end A229605.P6768791986894638777

/-! ## A229605.P7567843258805666941

`A229606(eq[8, A131818(n+1)])`
-/

namespace A229605.P7567843258805666941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229605.P7567843258805666941

/-! ## A229605.P7666358277930595186

`A229606(A055999(n+4))`
-/

namespace A229605.P7666358277930595186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A055999 (n + 4)).toNat

end

end A229605.P7666358277930595186

/-! ## A229605.P3051094288151554537

`A229606(eq[4, A219347(n)])`
-/

namespace A229605.P3051094288151554537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229605.P3051094288151554537

/-! ## A229605.P9992748456262274378

`A229606(eq[10, A185782(n+1)])`
-/

namespace A229605.P9992748456262274378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229605.P9992748456262274378

/-!
# A229606: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229606, there is no canonical definition to state claims against.
-/

/-! ## A229606.P12930090885065239817

`A323243(A151944(n+1)+A151938(n))`
-/

namespace A229606.P12930090885065239817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A151944 (n + 1) + A151938 n).toNat

end

end A229606.P12930090885065239817

/-! ## A229606.P18178099724006453686

`or(A230337(n+1), A280522(A057693(n)))`
-/

namespace A229606.P18178099724006453686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230337 (n + 1)) (A280522 (A057693 n).toNat)

end

end A229606.P18178099724006453686

/-! ## A229606.P4341530436935633647

`A221590(A061219(n+1))-A014963(A106408(n+1))`
-/

namespace A229606.P4341530436935633647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A061219 (n + 1)).toNat - A014963 (A106408 (n + 1)).toNat

end

end A229606.P4341530436935633647

/-!
# A229607: Square array read by antidiagonals downwards in which each row starts with the least prime not in a previous row, and each prime p in a row is followed by the greatest prime < 2*p.

The programs for A229607, there is no canonical definition to state claims against.
-/

/-! ## A229607.P7175794079731648825

`A380277(n+1)%A000229(n+5)`
-/

namespace A229607.P7175794079731648825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380277 (n + 1)) (A000229 (n + 5))

end

end A229607.P7175794079731648825

/-! ## A229607.P13492911601005495222

`A380277(n+1)+A000007(A245501(n))`
-/

namespace A229607.P13492911601005495222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380277 (n + 1) + A000007 (A245501 n).toNat

end

end A229607.P13492911601005495222

/-! ## A229607.P7623617877234395705

`A380277(n+1)%A176542(A291655(n))`
-/

namespace A229607.P7623617877234395705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380277 (n + 1)) (A176542 (A291655 n).toNat)

end

end A229607.P7623617877234395705

/-! ## A229607.P2811031200654729764

`A380277(n+1)+A000007(A054436(n+3))`
-/

namespace A229607.P2811031200654729764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380277 (n + 1) + A000007 (A054436 (n + 3)).toNat

end

end A229607.P2811031200654729764

/-! ## A229607.P10437770019073229474

`A052126(A066436(n+2))*A380277(n+1)`
-/

namespace A229607.P10437770019073229474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A066436 (n + 2)).toNat * A380277 (n + 1)

end

end A229607.P10437770019073229474

/-!
# A229608: Square array read by antidiagonals downwards: each row starts with the least prime not in a previous row, and each prime p in a row is followed by the least prime > 2*p.

The programs for A229608, there is no canonical definition to state claims against.
-/

/-! ## A229608.P8945023954345544810

`A000040(A194869(n+1)+A172535(n+1))`
-/

namespace A229608.P8945023954345544810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A194869 (n + 1) + A172535 (n + 1)).toNat

end

end A229608.P8945023954345544810

/-! ## A229608.P10341366500496600032

`A178762(A194903(n+1)%A178805(3*n+1))`
-/

namespace A229608.P10341366500496600032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (Int.tmod (A194903 (n + 1)) (A178805 (3 * n + 1))).toNat

end

end A229608.P10341366500496600032

/-!
# A229609: Array: each row starts with the least prime not in a previous row, and each prime p in a row is followed by the greatest prime < 3*p.

The programs for A229609, there is no canonical definition to state claims against.
-/

/-! ## A229609.P14025707081667702448

`A267101(A293014(n)+A078213(n+1))`
-/

namespace A229609.P14025707081667702448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A293014 n + A078213 (n + 1)).toNat

end

end A229609.P14025707081667702448

/-!
# A229611: Expansion of 1/((1-x)^3*(1-11x)).

The programs for A229611, the canonical program `A229611.P4570613294683482858` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229611 has offset 0).

The definition of A229611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+36x^2-34x^3+11x^4))` (program `A229611.P4570613294683482858`, by `A229611.P4570613294683482858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229611.P4570613294683482858

`ogf(1/(1-14x+36x^2-34x^3+11x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A229611

/-- `ogf(1/(1-14x+36x^2-34x^3+11x^4))` -/
def P4570613294683482858.Spec : Prop :=
  ∀ n, P4570613294683482858.a n = A229611 n

theorem P4570613294683482858.correct : P4570613294683482858.Spec := by
  intro n
  simp only [A229611]

end A229611

/-! ## A229611.P14448749353001521402

`(11^(n+3)-(50*n²+260*n+331))/1000`
-/

namespace A229611.P14448749353001521402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (50 * n ^ 2 + 260 * n + 331 : ℤ) : ℚ) / 1000

end

end A229611.P14448749353001521402

namespace A229611

/-- `(11^(n+3)-(50*n²+260*n+331))/1000` -/
def P14448749353001521402.Spec : Prop :=
  ∀ n, P14448749353001521402.a n = (A229611 n : ℚ)

end A229611

/-! ## A229611.P8695136123938275749

`∑[∑[ogf(1/(1-12x+11x^2))]]`
-/

namespace A229611.P8695136123938275749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 11] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P8695136123938275749

namespace A229611

/-- `∑[∑[ogf(1/(1-12x+11x^2))]]` -/
def P8695136123938275749.Spec : Prop :=
  ∀ n, P8695136123938275749.a n = A229611 n

end A229611

/-! ## A229611.P3439074036165985568

`∑[n+1]+11*a(n-1)` with `a(0)=1`
-/

namespace A229611.P3439074036165985568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A229611.P3439074036165985568

namespace A229611

/-- `∑[n+1]+11*a(n-1)` -/
def P3439074036165985568.Spec : Prop :=
  ∀ n, (P3439074036165985568.a n : ℤ) = A229611 n

end A229611

/-! ## A229611.P2632364045833745172

`11*a(n-1)-∑[xor(n, -1)]` with `a(0)=1`
-/

namespace A229611.P2632364045833745172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P2632364045833745172

namespace A229611

/-- `11*a(n-1)-∑[xor(n, -1)]` -/
def P2632364045833745172.Spec : Prop :=
  ∀ n, P2632364045833745172.a n = A229611 n

end A229611

/-! ## A229611.P17813993159369802729

`∑[∑[A016123(n)]]`
-/

namespace A229611.P17813993159369802729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P17813993159369802729

namespace A229611

/-- `∑[∑[A016123(n)]]` -/
def P17813993159369802729.Spec : Prop :=
  ∀ n, P17813993159369802729.a n = A229611 n

end A229611

/-! ## A229611.P4113733950425210614

`∑[A014881(n+1)]`
-/

namespace A229611.P4113733950425210614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P4113733950425210614

namespace A229611

/-- `∑[A014881(n+1)]` -/
def P4113733950425210614.Spec : Prop :=
  ∀ n, P4113733950425210614.a n = A229611 n

end A229611

/-! ## A229611.P6200749308982724568

`∑[∑[A268839(n+1)/9]]`
-/

namespace A229611.P6200749308982724568
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268839 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P6200749308982724568

namespace A229611

/-- `∑[∑[A268839(n+1)/9]]` -/
def P6200749308982724568.Spec : Prop :=
  ∀ n, P6200749308982724568.a n = (A229611 n : ℚ)

end A229611

/-! ## A229611.P17070846203856333348

`11*a(n-1)+A000124(n)+n` with `a(0)=1`
-/

namespace A229611.P17070846203856333348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) + (A000124 n + (n : ℤ))

end

end A229611.P17070846203856333348

namespace A229611

/-- `11*a(n-1)+A000124(n)+n` -/
def P17070846203856333348.Spec : Prop :=
  ∀ n, P17070846203856333348.a n = A229611 n

end A229611

/-!
# A229613: Primes of the form p*q - 30, where p and q are consecutive primes.

The programs for A229613, there is no canonical definition to state claims against.
-/

/-! ## A229613.P5797201610106121721

`p?[A124669(n+1)-28]`
-/

namespace A229613.P5797201610106121721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P5797201610106121721

/-! ## A229613.P9623325568490660233

`p?[A023515(n+1)-29]`
-/

namespace A229613.P9623325568490660233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P9623325568490660233

/-! ## A229613.P7869174341665959212

`p?[A006094(n+1)-30]`
-/

namespace A229613.P7869174341665959212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P7869174341665959212

/-! ## A229613.P18192505450545825281

`p?[A023523(n+1)-31]`
-/

namespace A229613.P18192505450545825281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P18192505450545825281

/-! ## A229613.P13358314594023368053

`p?[A116570(2*n)-30]`
-/

namespace A229613.P13358314594023368053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P13358314594023368053

/-! ## A229613.P7928774438215159653

`p?[A033476(2*n+1)-30]`
-/

namespace A229613.P7928774438215159653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P7928774438215159653

/-! ## A229613.P9141442848524428742

`p?[A057602(A005408(n))-30]`
-/

namespace A229613.P9141442848524428742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (A005408 n).toNat - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P9141442848524428742

/-! ## A229613.P16954804317072348936

`p?[A076271(A076273(n))-30]`
-/

namespace A229613.P16954804317072348936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (A076273 n).toNat - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P16954804317072348936

/-! ## A229613.P14597419074731643921

`p?[A000040(n+1)*A000040(n+2)-30]`
-/

namespace A229613.P14597419074731643921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P14597419074731643921

/-!
# A229614: Number of binary strings of length n avoiding "squares" (that is, repeated blocks of the form xx) with |x| > 2.

The programs for A229614, there is no canonical definition to state claims against.
-/

/-! ## A229614.P931802643000265331

`A316470(A153252(n)+1)`
-/

namespace A229614.P931802643000265331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A153252 n + 1).toNat

end

end A229614.P931802643000265331

/-! ## A229614.P9019903242971071372

`A316470(floor(sqrt(A135373(n))))`
-/

namespace A229614.P9019903242971071372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (Int.sqrt (A135373 n)).toNat

end

end A229614.P9019903242971071372

/-! ## A229614.P1626442544749215646

`A316470(round(sqrt(A002064(n))))`
-/

namespace A229614.P1626442544749215646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (SequenceMachineLib.roundAway (Real.sqrt (A002064 n : ℝ))).toNat

end

end A229614.P1626442544749215646

/-! ## A229614.P18440966720249534389

`A331873(∑[A049811(2*n+1)])`
-/

namespace A229614.P18440966720249534389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229614.P18440966720249534389

/-!
# A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A229615, the canonical program `A229615.P13961732512820352190` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229615 has offset 2).

The definition of A229615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229615.P13961732512820352190

`A111932(n+2)-A121443(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229615

/-- `A111932(n+2)-A121443(n+2)` -/
def P13961732512820352190.Spec : Prop :=
  ∀ n, P13961732512820352190.a n = A229615 (n + 2)

theorem P13961732512820352190.correct : P13961732512820352190.Spec := by
  intro n
  simp only [A229615, Nat.add_sub_cancel]

end A229615

/-! ## A229615.P12032587669257577339

`A121443(n+2)-A232356(n+2)`
-/

namespace A229615.P12032587669257577339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 2) - A232356 (n + 2)

end

end A229615.P12032587669257577339

namespace A229615

/-- `A121443(n+2)-A232356(n+2)` -/
def P12032587669257577339.Spec : Prop :=
  ∀ n, P12032587669257577339.a n = A229615 (n + 2)

theorem P12032587669257577339.correct : P12032587669257577339.Spec := by
  intro n
  simp only [A229615, Nat.add_sub_cancel, A229615.P12032587669257577339.a, A229615.P13961732512820352190.a, A111932, A111932.P8397638407762564101.f1, A111932.P8397638407762564101.a, A121443, A121443.P5986038354224394648.a, A232356, A232356.P2356897415690345151.a, A046897, A046897.P16845607147500086519.f1, A046897.P16845607147500086519.a, A117188, A117188.P8831629070024374832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229615

/-! ## A229615.P7221778208384786023

`A002131(A038502(n+2))-A121443(n+2)`
-/

namespace A229615.P7221778208384786023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A038502 (n + 2)).toNat - A121443 (n + 2)

end

end A229615.P7221778208384786023

namespace A229615

/-- `A002131(A038502(n+2))-A121443(n+2)` -/
def P7221778208384786023.Spec : Prop :=
  ∀ n, P7221778208384786023.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P13697128773728305704

`-A321527(2*(n+2))`
-/

namespace A229615.P13697128773728305704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A321527 (2 * (n + 2))

end

end A229615.P13697128773728305704

namespace A229615

/-- `-A321527(2*(n+2))` -/
def P13697128773728305704.Spec : Prop :=
  ∀ n, P13697128773728305704.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P16048700045644607151

`Δ[a(n-1)-A321527(A163300(n+1))]` with `a(0)=1`
-/

namespace A229615.P16048700045644607151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A321527 (A163300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229615.P16048700045644607151

namespace A229615

/-- `Δ[a(n-1)-A321527(A163300(n+1))]` -/
def P16048700045644607151.Spec : Prop :=
  ∀ n, P16048700045644607151.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P7624078349105515410

`-A224226(2*(n+2))`
-/

namespace A229615.P7624078349105515410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A224226 (2 * (n + 2))

end

end A229615.P7624078349105515410

namespace A229615

/-- `-A224226(2*(n+2))` -/
def P7624078349105515410.Spec : Prop :=
  ∀ n, P7624078349105515410.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P6126980272938581424

`A010054(3*n+2)-A321527(2*(n+2))`
-/

namespace A229615.P6126980272938581424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) - A321527 (2 * (n + 2))

end

end A229615.P6126980272938581424

namespace A229615

/-- `A010054(3*n+2)-A321527(2*(n+2))` -/
def P6126980272938581424.Spec : Prop :=
  ∀ n, P6126980272938581424.a n = A229615 (n + 2)

end A229615

/-!
# A229616: Expansion of (phi(-q)^3 / phi(-q^3))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A229616, there is no canonical definition to state claims against.
-/

/-! ## A229616.P3328095734691786613

`A033999(n)*A321465(n)`
-/

namespace A229616.P3328095734691786613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321465 n

end

end A229616.P3328095734691786613

/-! ## A229616.P14837802448524662097

`∑[A280560(n)]*A321465(n)`
-/

namespace A229616.P14837802448524662097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321465 n

end

end A229616.P14837802448524662097

/-! ## A229616.P5214790384177306055

`A009001(2*n)*A321465(n)`
-/

namespace A229616.P5214790384177306055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A321465 n

end

end A229616.P5214790384177306055

/-! ## A229616.P11549460594136384029

`A227226(n)*A321465(n)/A321466(n)`
-/

namespace A229616.P11549460594136384029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n * A321465 n : ℚ) / (A321466 n : ℚ)

end

end A229616.P11549460594136384029

/-! ## A229616.P16658359551758487014

`A008585(A008653(n))-2*A004011(n)`
-/

namespace A229616.P16658359551758487014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008653 n).toNat - 2 * A004011 n

end

end A229616.P16658359551758487014

/-! ## A229616.P17508178029780509097

`A008585(A008653(n))-A005843(A004011(n))`
-/

namespace A229616.P17508178029780509097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008653 n).toNat - A005843 (A004011 n).toNat

end

end A229616.P17508178029780509097

/-! ## A229616.P5103056472934148462

`A008683(A116570(n))*A321465(n)`
-/

namespace A229616.P5103056472934148462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A321465 n

end

end A229616.P5103056472934148462

/-!
# A229617: Number of binary strings of length n containing at most 3 distinct squares, where a square is a nonempty block of the form xx.

The programs for A229617, there is no canonical definition to state claims against.
-/

/-! ## A229617.P4930874786291145760

`record[A046523(record[A123490(n)])]`
-/

namespace A229617.P4930874786291145760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229617.P4930874786291145760

/-! ## A229617.P5118496340787444669

`2^n-A181340(A093040(n))`
-/

namespace A229617.P5118496340787444669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A181340 (A093040 n).toNat

end

end A229617.P5118496340787444669

/-! ## A229617.P5055016881229197899

`∩[A036116(n+1), A367586(n+1)]`
-/

namespace A229617.P5055016881229197899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229617.P5055016881229197899

/-! ## A229617.P15756740492767159695

`∩[A247213(n+1), A325796(n+1)]`
-/

namespace A229617.P15756740492767159695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229617.P15756740492767159695

/-! ## A229617.P5768713230925347464

`∩[A247213(n+1), A364433(n+1)]`
-/

namespace A229617.P5768713230925347464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229617.P5768713230925347464

/-!
# A229618: Numbers that are the distance between a square and the next larger cube.

The programs for A229618, there is no canonical definition to state claims against.
-/

/-! ## A229618.P6279033548880179411

`lt[0, char[ceil(root(n²+1, 3))^3-n²]]`
-/

namespace A229618.P6279033548880179411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229618.P6279033548880179411

/-! ## A229618.P15417256277540013153

`eq[1, char[ceil(root(n²+1, 3))^3-n²]]`
-/

namespace A229618.P15417256277540013153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229618.P15417256277540013153

/-!
# A229619: G.f. satisfies: A(x) = Series_Reversion(x - x^2*A'(x)).

The programs for A229619, there is no canonical definition to state claims against.
-/

/-! ## A229619.P11666334046944480134

`A360950(n)/(n+1)`
-/

namespace A229619.P11666334046944480134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360950 n : ℚ) / (n + 1 : ℚ)

end

end A229619.P11666334046944480134

/-! ## A229619.P12983882325100380927

`A028310(A360950(n)/A077168(n))`
-/

namespace A229619.P12983882325100380927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A360950 n : ℚ) / (A077168 n : ℚ))).toNat

end

end A229619.P12983882325100380927

/-!
# A229620: Incorrect version of A045949.

The programs for A229620, the canonical program `A229620.P15480091126661372649` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229620 has offset 0).

The definition of A229620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229620.P9171781093245225779

`ogf((6x+20x^2+14x^3-4x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A229620.P9171781093245225779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 20, 14, -4] [1, -3, 2, 2, -3, 1] n

end

end A229620.P9171781093245225779

namespace A229620

/-- `ogf((6x+20x^2+14x^3-4x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P9171781093245225779.Spec : Prop :=
  ∀ n, P9171781093245225779.a n = A229620 n

end A229620

/-! ## A229620.P15480091126661372649

`(1-(-1)^n-8*n+18*n²+12*n^3)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A229620

/-- `(1-(-1)^n-8*n+18*n²+12*n^3)/4` -/
def P15480091126661372649.Spec : Prop :=
  ∀ n, P15480091126661372649.a n = (A229620 n : ℚ)

end A229620

/-! ## A229620.P14872035985710648244

`∑[and(1, n)+(3*n)²]-4*n`
-/

namespace A229620.P14872035985710648244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (4 * n : ℤ)

end

end A229620.P14872035985710648244

namespace A229620

/-- `∑[and(1, n)+(3*n)²]-4*n` -/
def P14872035985710648244.Spec : Prop :=
  ∀ n, P14872035985710648244.a n = A229620 n

end A229620

/-! ## A229620.P11180571986808871314

`A248575(n)-4*n`
-/

namespace A229620.P11180571986808871314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248575 n - (4 * n : ℤ)

end

end A229620.P11180571986808871314

namespace A229620

/-- `A248575(n)-4*n` -/
def P11180571986808871314.Spec : Prop :=
  ∀ n, P11180571986808871314.a n = A229620 n

end A229620

/-! ## A229620.P2880178937612883084

`∑[A244636(n)%A007899(n)]`
-/

namespace A229620.P2880178937612883084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244636 n) (A007899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229620.P2880178937612883084

namespace A229620

/-- `∑[A244636(n)%A007899(n)]` -/
def P2880178937612883084.Spec : Prop :=
  ∀ n, P2880178937612883084.a n = A229620 n

end A229620

/-! ## A229620.P8770691168768549458

`A100583(n)-A047238(n+1)`
-/

namespace A229620.P8770691168768549458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100583 n - A047238 (n + 1)

end

end A229620.P8770691168768549458

namespace A229620

/-- `A100583(n)-A047238(n+1)` -/
def P8770691168768549458.Spec : Prop :=
  ∀ n, P8770691168768549458.a n = A229620 n

end A229620

/-! ## A229620.P5579735496168815175

`A220443(n)-A047355(n+1)`
-/

namespace A229620.P5579735496168815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - A047355 (n + 1)

end

end A229620.P5579735496168815175

namespace A229620

/-- `A220443(n)-A047355(n+1)` -/
def P5579735496168815175.Spec : Prop :=
  ∀ n, P5579735496168815175.a n = A229620 n

end A229620

/-! ## A229620.P10464184766074432264

`2*(A026810(A016921(n)+1)-2*n)`
-/

namespace A229620.P10464184766074432264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026810 (A016921 n + 1).toNat - (2 * n : ℤ))

end

end A229620.P10464184766074432264

namespace A229620

/-- `2*(A026810(A016921(n)+1)-2*n)` -/
def P10464184766074432264.Spec : Prop :=
  ∀ n, P10464184766074432264.a n = A229620 n

end A229620

/-! ## A229620.P2282622796085394246

`2*(A026810(2*A016777(n))-2*n)`
-/

namespace A229620.P2282622796085394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026810 (2 * A016777 n).toNat - (2 * n : ℤ))

end

end A229620.P2282622796085394246

namespace A229620

/-- `2*(A026810(2*A016777(n))-2*n)` -/
def P2282622796085394246.Spec : Prop :=
  ∀ n, P2282622796085394246.a n = A229620 n

end A229620

/-! ## A229620.P8781209427305775188

`∑[A047238(A008486(n²))]`
-/

namespace A229620.P8781209427305775188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (A008486 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229620.P8781209427305775188

namespace A229620

/-- `∑[A047238(A008486(n²))]` -/
def P8781209427305775188.Spec : Prop :=
  ∀ n, P8781209427305775188.a n = A229620 n

end A229620

/-!
# A229621: Numbers n such that n - (sum of digits of n) is a palindrome.

The programs for A229621, there is no canonical definition to state claims against.
-/

/-! ## A229621.P10677394303826920426

`eq[0, A256756(A066568(n))]`
-/

namespace A229621.P10677394303826920426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229621.P10677394303826920426

/-! ## A229621.P13308666805850732266

`lt[A256756(A066568(n)), A357973(n)]`
-/

namespace A229621.P13308666805850732266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P13308666805850732266

/-! ## A229621.P10291164242820636619

`lt[A256756(A066568(n)), A061373(n+1)]`
-/

namespace A229621.P10291164242820636619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P10291164242820636619

/-! ## A229621.P11859710426659313048

`lt[A256756(A066568(n)), A065559(n+1)]`
-/

namespace A229621.P11859710426659313048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P11859710426659313048

/-! ## A229621.P2183134789612757463

`lt[A256756(A066568(n)), A130260(3*(n+1))]`
-/

namespace A229621.P2183134789612757463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P2183134789612757463

/-!
# A229622: Palindromes m such that m + (sum of digits of m) is also a palindrome.

The programs for A229622, there is no canonical definition to state claims against.
-/

/-! ## A229622.P14123325974150048952

`filter[A229545(n+1), A136522(#)]`
-/

namespace A229622.P14123325974150048952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A229622.P14123325974150048952

/-! ## A229622.P585767106619443056

`∩[A229545(n+1), A056142(n)]`
-/

namespace A229622.P585767106619443056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P585767106619443056

/-! ## A229622.P16657101470268724109

`∩[A002113(n+1), A229545(n+1)]`
-/

namespace A229622.P16657101470268724109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P16657101470268724109

/-! ## A229622.P12561763335840796115

`∩[A050783(n+1), A229545(n+1)]`
-/

namespace A229622.P12561763335840796115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P12561763335840796115

/-!
# A229623: Palindromes m such that m - sum_of_digits(m) is also a palindrome.

The programs for A229623, there is no canonical definition to state claims against.
-/

/-! ## A229623.P7380372942899491296

`∩[A002113(n+1), A229621(n+1)]`
-/

namespace A229623.P7380372942899491296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229623.P7380372942899491296

/-! ## A229623.P8715288739135139133

`filter[A229621(n+1), A136522(#)]`
-/

namespace A229623.P8715288739135139133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A229623.P8715288739135139133

/-! ## A229623.P7425528250183946907

`eq[A256756(A066568(n))², A256756(n)]`
-/

namespace A229623.P7425528250183946907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229623.P7425528250183946907

/-!
# A229628: Hankel transform of A000265 (odd part of n).

The programs for A229628, there is no canonical definition to state claims against.
-/

/-! ## A229628.P15038836995013578000

`A057077(n)*A321266(A088996(3*n+2))`
-/

namespace A229628.P15038836995013578000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A321266 (A088996 (3 * n + 2)).toNat

end

end A229628.P15038836995013578000

/-!
# A229631: Number of defective 3-colorings of an n X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229631, there is no canonical definition to state claims against.
-/

/-! ## A229631.P10197820059781406348

`A229637(∑[4*n]+1)`
-/

namespace A229631.P10197820059781406348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229631.P10197820059781406348

/-! ## A229631.P3738859763097479483

`A229637(A001844(n))+A011744(n)`
-/

namespace A229631.P3738859763097479483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A001844 n).toNat + A011744 n

end

end A229631.P3738859763097479483

/-! ## A229631.P13679643586497666697

`A000010(C(2, n)!)*A229637(A001844(n))`
-/

namespace A229631.P13679643586497666697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A229637 (A001844 n).toNat

end

end A229631.P13679643586497666697

/-! ## A229631.P18322942355196378576

`A000041(floor(n/30))*A229637(A001844(n))`
-/

namespace A229631.P18322942355196378576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 30⌋.toNat * A229637 (A001844 n).toNat

end

end A229631.P18322942355196378576

/-! ## A229631.P8065025792017776168

`A000203(C(n, n²)!)*A229637(A001844(n))`
-/

namespace A229631.P8065025792017776168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial (Nat.choose n (n ^ 2))) * A229637 (A001844 n).toNat

end

end A229631.P8065025792017776168

/-!
# A229632: Number of defective 3-colorings of an nX3 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229632, there is no canonical definition to state claims against.
-/

/-! ## A229632.P12430508989162747968

`A229637(∑[n+3]+1)`
-/

namespace A229632.P12430508989162747968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229632.P12430508989162747968

/-! ## A229632.P17225891262803855817

`record[gcd(A105806(n+5), A229637(n+4))]`
-/

namespace A229632.P17225891262803855817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105806 (n + 5)) (A229637 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229632.P17225891262803855817

/-! ## A229632.P17819316544201337202

`A229637(A055999(n)+4)^A000041(C(2, n+2))`
-/

namespace A229632.P17819316544201337202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229637 (A055999 n + 4).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A229632.P17819316544201337202

/-!
# A229633: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229633, there is no canonical definition to state claims against.
-/

/-! ## A229633.P9444037363610350268

`A229637(A141214(n+1))`
-/

namespace A229633.P9444037363610350268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A141214 (n + 1)).toNat

end

end A229633.P9444037363610350268

/-! ## A229633.P9322978103084012897

`A229637(A027379(n+2))`
-/

namespace A229633.P9322978103084012897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A027379 (n + 2)).toNat

end

end A229633.P9322978103084012897

/-! ## A229633.P8556904125612279417

`A229637(A155212(n)+5)`
-/

namespace A229633.P8556904125612279417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A155212 n + 5).toNat

end

end A229633.P8556904125612279417

/-! ## A229633.P13392893218140199308

`A229637(A056000(n)+7)`
-/

namespace A229633.P13392893218140199308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056000 n + 7).toNat

end

end A229633.P13392893218140199308

/-! ## A229633.P14361610568151782371

`A229637(eq[3, A193592(n)])`
-/

namespace A229633.P14361610568151782371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229633.P14361610568151782371

/-!
# A229634: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229634, there is no canonical definition to state claims against.
-/

/-! ## A229634.P4125122879416863484

`A229637(Δ[A264443(n)])`
-/

namespace A229634.P4125122879416863484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (f1 (n + 1) - f1 n).toNat

end

end A229634.P4125122879416863484

/-! ## A229634.P348078551594388456

`A229637(A056115(n)+11)`
-/

namespace A229634.P348078551594388456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056115 n + 11).toNat

end

end A229634.P348078551594388456

/-! ## A229634.P4053561981028536370

`A229637(eq[4, A193592(n)])`
-/

namespace A229634.P4053561981028536370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229634.P4053561981028536370

/-! ## A229634.P5682868035966242469

`A229637(Δ[A023545(n+1)])`
-/

namespace A229634.P5682868035966242469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (f1 (n + 1) - f1 n).toNat

end

end A229634.P5682868035966242469

/-! ## A229634.P15136667686202241225

`A229637(eq[8, A057728(n+1)])`
-/

namespace A229634.P15136667686202241225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229634.P15136667686202241225

/-!
# A229635: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229635, there is no canonical definition to state claims against.
-/

/-! ## A229635.P2773230662783260300

`A229637(A052905(n+3))`
-/

namespace A229635.P2773230662783260300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A052905 (n + 3)).toNat

end

end A229635.P2773230662783260300

/-! ## A229635.P14731910433396298858

`A229637(A302537(n)+15)`
-/

namespace A229635.P14731910433396298858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A302537 n + 15).toNat

end

end A229635.P14731910433396298858

/-! ## A229635.P6081708393898522992

`A229637(eq[3, A219347(n)])`
-/

namespace A229635.P6081708393898522992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229635.P6081708393898522992

/-! ## A229635.P6218041905403563072

`A229637(eq[5, A193592(n)])`
-/

namespace A229635.P6218041905403563072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229635.P6218041905403563072

/-! ## A229635.P16310772835648009215

`A229637(eq[16, A057728(n+1)])`
-/

namespace A229635.P16310772835648009215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229635.P16310772835648009215

/-!
# A229636: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229636, there is no canonical definition to state claims against.
-/

/-! ## A229636.P12304677389473060893

`A229637(A055999(n+4))`
-/

namespace A229636.P12304677389473060893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A055999 (n + 4)).toNat

end

end A229636.P12304677389473060893

/-! ## A229636.P15011260959855690188

`A229637(eq[4, A219347(n)])`
-/

namespace A229636.P15011260959855690188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229636.P15011260959855690188

/-! ## A229636.P9542199491313099683

`A229637(eq[6, A193592(n)])`
-/

namespace A229636.P9542199491313099683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229636.P9542199491313099683

/-! ## A229636.P17909854643900573800

`A229637(eq[10, A185782(n+1)])`
-/

namespace A229636.P17909854643900573800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229636.P17909854643900573800

/-! ## A229636.P5044495777458679495

`A229637(eq[32, A057728(n+1)])`
-/

namespace A229636.P5044495777458679495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229636.P5044495777458679495

/-!
# A229637: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229637, there is no canonical definition to state claims against.
-/

/-! ## A229637.P12344494477156262072

`A264128(A032559(n+1))-A194979(n+1)`
-/

namespace A229637.P12344494477156262072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A032559 (n + 1)).toNat - A194979 (n + 1)

end

end A229637.P12344494477156262072

/-! ## A229637.P1064464789272241818

`A264128(A077739(n+1))-A194979(n+1)`
-/

namespace A229637.P1064464789272241818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A077739 (n + 1)).toNat - A194979 (n + 1)

end

end A229637.P1064464789272241818

/-! ## A229637.P2316582243351192933

`A264128(n+1)-A194979(n+1)%A095631(n)`
-/

namespace A229637.P2316582243351192933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (n + 1) - Int.tmod (A194979 (n + 1)) (A095631 n)

end

end A229637.P2316582243351192933

/-! ## A229637.P7620458579760851745

`A005940(A347940(n))-A194979(A032559(n+1))`
-/

namespace A229637.P7620458579760851745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A347940 n).toNat - A194979 (A032559 (n + 1)).toNat

end

end A229637.P7620458579760851745

/-! ## A229637.P2563638230316753215

`A005940(A347940(n)%A095631(n))-A194979(n+1)`
-/

namespace A229637.P2563638230316753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A347940 n) (A095631 n)).toNat - A194979 (n + 1)

end

end A229637.P2563638230316753215

/-!
# A229638: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229638, the canonical program `A229638.P4016806436169305178` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229638 has offset 1).

The definition of A229638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229638.P4016806436169305178

`ogf((6x+4x^2-82x^3+92x^4-20x^5)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A229638

/-- `ogf((6x+4x^2-82x^3+92x^4-20x^5)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))` -/
def P4016806436169305178.Spec : Prop :=
  ∀ n, P4016806436169305178.a n = A229638 (n + 1)

theorem P4016806436169305178.correct : P4016806436169305178.Spec := by
  intro n
  simp only [A229638, Nat.add_sub_cancel]

end A229638

/-! ## A229638.P4208709438651146860

`A229637(∑[n+1]+2)`
-/

namespace A229638.P4208709438651146860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229638.P4208709438651146860

namespace A229638

/-- `A229637(∑[n+1]+2)` -/
def P4208709438651146860.Spec : Prop :=
  ∀ n, P4208709438651146860.a n = A229638 (n + 1)

end A229638

/-! ## A229638.P2562842845674729988

`lcm(2, A229637(A167487(n)-5))`
-/

namespace A229638.P2562842845674729988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229637 (A167487 n - 5).toNat)

end

end A229638.P2562842845674729988

namespace A229638

/-- `lcm(2, A229637(A167487(n)-5))` -/
def P2562842845674729988.Spec : Prop :=
  ∀ n, (P2562842845674729988.a n : ℤ) = A229638 (n + 1)

end A229638

/-! ## A229638.P8289709414823811915

`A229637(A167487(n)-5)+A014933(Δ[n²])`
-/

namespace A229638.P8289709414823811915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167487 n - 5).toNat + A014933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229638.P8289709414823811915

namespace A229638

/-- `A229637(A167487(n)-5)+A014933(Δ[n²])` -/
def P8289709414823811915.Spec : Prop :=
  ∀ n, P8289709414823811915.a n = A229638 (n + 1)

end A229638

/-! ## A229638.P3608209916654791214

`A229637(A167487(n)-5)+A030215(2*n²)`
-/

namespace A229638.P3608209916654791214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167487 n - 5).toNat + A030215 (2 * n ^ 2)

end

end A229638.P3608209916654791214

namespace A229638

/-- `A229637(A167487(n)-5)+A030215(2*n²)` -/
def P3608209916654791214.Spec : Prop :=
  ∀ n, P3608209916654791214.a n = A229638 (n + 1)

end A229638

/-!
# A229639: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229639, there is no canonical definition to state claims against.
-/

/-! ## A229639.P12853239628338417378

`A229637(∑[n+2]+4)`
-/

namespace A229639.P12853239628338417378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229639.P12853239628338417378

/-! ## A229639.P12343521106359839765

`round(n/(n+1))*A229637(A034856(n+1)+5)`
-/

namespace A229639.P12343521106359839765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A229637 (A034856 (n + 1) + 5).toNat

end

end A229639.P12343521106359839765

/-! ## A229639.P14338220591244401851

`A229637(A167614(n+1))+A025443(n)`
-/

namespace A229639.P14338220591244401851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167614 (n + 1)).toNat + A025443 n

end

end A229639.P14338220591244401851

/-! ## A229639.P12188305922019320928

`A229637(A000217(n+2)+3)+A001222(floor(1/(n+1))!)`
-/

namespace A229639.P12188305922019320928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A000217 (n + 2) + 3).toNat + A001222 (Nat.factorial ⌊1 / (n + 1 : ℚ)⌋.toNat)

end

end A229639.P12188305922019320928

/-! ## A229639.P9358362658516745483

`A001221(A001222(n+1)+1)*A229637(A000217(n+2)+3)`
-/

namespace A229639.P9358362658516745483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (n + 1) + 1).toNat * A229637 (A000217 (n + 2) + 3).toNat

end

end A229639.P9358362658516745483

/-!
# A229640: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229640, there is no canonical definition to state claims against.
-/

/-! ## A229640.P3738248019467312868

`A229637(A141214(n)+7)`
-/

namespace A229640.P3738248019467312868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A141214 n + 7).toNat

end

end A229640.P3738248019467312868

/-! ## A229640.P3179702435416252513

`A229637(A052905(n)+9)`
-/

namespace A229640.P3179702435416252513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A052905 n + 9).toNat

end

end A229640.P3179702435416252513

/-! ## A229640.P10564374027483921967

`A229637(A055999(n)+10)`
-/

namespace A229640.P10564374027483921967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A055999 n + 10).toNat

end

end A229640.P10564374027483921967

/-! ## A229640.P8658061784830801503

`A229637(A167614(n+2)+1)`
-/

namespace A229640.P8658061784830801503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167614 (n + 2) + 1).toNat

end

end A229640.P8658061784830801503

/-! ## A229640.P626916511158025167

`A229637(A166136(n+2)-2)`
-/

namespace A229640.P626916511158025167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A166136 (n + 2) - 2).toNat

end

end A229640.P626916511158025167

/-!
# A229641: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229641, there is no canonical definition to state claims against.
-/

/-! ## A229641.P10510111553086601325

`A229637(A167499(n+3))`
-/

namespace A229641.P10510111553086601325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167499 (n + 3)).toNat

end

end A229641.P10510111553086601325

/-! ## A229641.P16996803782918408275

`A229637(A155212(n)+13)`
-/

namespace A229641.P16996803782918408275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A155212 n + 13).toNat

end

end A229641.P16996803782918408275

/-! ## A229641.P16301738851895709292

`A229637(A056000(n)+15)`
-/

namespace A229641.P16301738851895709292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056000 n + 15).toNat

end

end A229641.P16301738851895709292

/-! ## A229641.P7705599268278583143

`A229637(A167614(n+3)+2)`
-/

namespace A229641.P7705599268278583143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167614 (n + 3) + 2).toNat

end

end A229641.P7705599268278583143

/-! ## A229641.P13302258486621428112

`A229637(eq[6, A131818(n+1)])`
-/

namespace A229641.P13302258486621428112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229641.P13302258486621428112

/-!
# A229642: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229642, there is no canonical definition to state claims against.
-/

/-! ## A229642.P12088540456228083825

`A229637(A056115(n)+21)`
-/

namespace A229642.P12088540456228083825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056115 n + 21).toNat

end

end A229642.P12088540456228083825

/-! ## A229642.P3486019339923532554

`A229637(eq[6, A256910(n)])`
-/

namespace A229642.P3486019339923532554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229642.P3486019339923532554

/-! ## A229642.P11076243310419573008

`A229637(A133263(n+5)+4)`
-/

namespace A229642.P11076243310419573008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A133263 (n + 5) + 4).toNat

end

end A229642.P11076243310419573008

/-! ## A229642.P11677820111450239834

`A229637(eq[6, A130270(n+1)])`
-/

namespace A229642.P11677820111450239834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229642.P11677820111450239834

/-! ## A229642.P17275831457733264581

`A229637(eq[7, A131818(n+1)])`
-/

namespace A229642.P17275831457733264581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229642.P17275831457733264581

/-!
# A229643: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229643, there is no canonical definition to state claims against.
-/

/-! ## A229643.P8657255257147198736

`A229637(A056119(n)+28)`
-/

namespace A229643.P8657255257147198736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056119 n + 28).toNat

end

end A229643.P8657255257147198736

/-! ## A229643.P4193266176299693957

`A229637(eq[11, A066657(n)])`
-/

namespace A229643.P4193266176299693957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229643.P4193266176299693957

/-! ## A229643.P13699619192267111267

`A229637(A166136(n+5)+1)`
-/

namespace A229643.P13699619192267111267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A166136 (n + 5) + 1).toNat

end

end A229643.P13699619192267111267

/-! ## A229643.P15332656461360858922

`A229637(A000096(n+5)+8)`
-/

namespace A229643.P15332656461360858922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A000096 (n + 5) + 8).toNat

end

end A229643.P15332656461360858922

/-! ## A229643.P3293878104836797070

`A229637(eq[8, A131818(n+1)])`
-/

namespace A229643.P3293878104836797070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229643.P3293878104836797070

/-!
# A229644: Cogrowth function of the group Baumslag-Solitar(2,2).

The programs for A229644, there is no canonical definition to state claims against.
-/

/-! ## A229644.P14107212882109935841

`A108598(A381915(n))-Δ[n!]`
-/

namespace A229644.P14107212882109935841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A381915 n).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229644.P14107212882109935841

/-!
# A229645: Cogrowth function of the group Baumslag-Solitar(3,3).

The programs for A229645, there is no canonical definition to state claims against.
-/

/-! ## A229645.P1490701117816528505

`A359798(n)-A308980(A356752(n))`
-/

namespace A229645.P1490701117816528505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359798 n - A308980 (A356752 n).toNat

end

end A229645.P1490701117816528505

/-!
# A229646: Cogrowth function of the group Baumslag-Solitar(4,4).

The programs for A229646, there is no canonical definition to state claims against.
-/

/-! ## A229646.P2353908200448029162

`A229648(n)+A059297(A013529(n))`
-/

namespace A229646.P2353908200448029162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229648 n + A059297 (A013529 n).toNat

end

end A229646.P2353908200448029162

/-! ## A229646.P17576244952188730531

`A229648(n)+A102748(A101125(n))`
-/

namespace A229646.P17576244952188730531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229648 n + A102748 (A101125 n).toNat

end

end A229646.P17576244952188730531

/-!
# A229647: Cogrowth function of the group Baumslag-Solitar(5,5).

The programs for A229647, there is no canonical definition to state claims against.
-/

/-! ## A229647.P3071359764669028227

`A229651(n)+A004016(A098999(n+1))`
-/

namespace A229647.P3071359764669028227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229651 n + A004016 (A098999 (n + 1)).toNat

end

end A229647.P3071359764669028227

/-! ## A229647.P2455656185225442391

`A035610(n)+A035584(A333431(n+1))`
-/

namespace A229647.P2455656185225442391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 n + A035584 (A333431 (n + 1)).toNat

end

end A229647.P2455656185225442391

/-! ## A229647.P422858358776874627

`A357647(A201648(n+1))+A229650(n)`
-/

namespace A229647.P422858358776874627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357647 (A201648 (n + 1)).toNat + A229650 n

end

end A229647.P422858358776874627

/-!
# A229648: Cogrowth function of the group Baumslag-Solitar(6,6).

The programs for A229648, there is no canonical definition to state claims against.
-/

/-! ## A229648.P13292602916997581470

`A229650(lcm(n, comp[or(7, n)]))`
-/

namespace A229648.P13292602916997581470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229650 (Nat.lcm n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A229648.P13292602916997581470

/-! ## A229648.P12778212054952369618

`A000027(A035610(n))`
-/

namespace A229648.P12778212054952369618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A035610 n).toNat

end

end A229648.P12778212054952369618

/-! ## A229648.P17026003876166345307

`A035610(A073788(n))`
-/

namespace A229648.P17026003876166345307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A073788 n).toNat

end

end A229648.P17026003876166345307

/-!
# A229649: Cogrowth function of the group Baumslag-Solitar(7,7).

The programs for A229649, there is no canonical definition to state claims against.
-/

/-! ## A229649.P6318366473165561404

`A359705(A004914(n+1))`
-/

namespace A229649.P6318366473165561404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359705 (A004914 (n + 1)).toNat

end

end A229649.P6318366473165561404

/-! ## A229649.P6185764427984770056

`A359705(n)^exp(A165110(n))`
-/

namespace A229649.P6185764427984770056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A359705 n : ℝ) ^ (Real.exp (A165110 n : ℝ))

end

end A229649.P6185764427984770056

/-! ## A229649.P16452946917272420671

`A359705(A219324(n+1)-1)`
-/

namespace A229649.P16452946917272420671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359705 (A219324 (n + 1) - 1).toNat

end

end A229649.P16452946917272420671

/-! ## A229649.P4232478512933440120

`A359705(n)%A359664(n+1)²`
-/

namespace A229649.P4232478512933440120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359705 n) (A359664 (n + 1) ^ 2)

end

end A229649.P4232478512933440120

/-! ## A229649.P4646995227738031876

`A359705(n^A271838(2*n+1))`
-/

namespace A229649.P4646995227738031876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359705 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A271838 (2 * n + 1) : ℤ))).toNat

end

end A229649.P4646995227738031876

/-!
# A229650: Cogrowth function of the group Baumslag-Solitar(8,8).

The programs for A229650, there is no canonical definition to state claims against.
-/

/-! ## A229650.P10327492462422797454

`∏{e}[5^n, A229652(#)]`
-/

namespace A229650.P10327492462422797454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A229652 (Nat.factorization (f1 n) p)

end

end A229650.P10327492462422797454

/-! ## A229650.P17049470446261966985

`A229651(A029965(n+1))`
-/

namespace A229650.P17049470446261966985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229651 (A029965 (n + 1)).toNat

end

end A229650.P17049470446261966985

/-! ## A229650.P12267884964995472088

`A035610(A267116(3^n))`
-/

namespace A229650.P12267884964995472088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A267116 (3 ^ n)).toNat

end

end A229650.P12267884964995472088

/-! ## A229650.P16266460322849334711

`A035610(A029576(n)+n)`
-/

namespace A229650.P16266460322849334711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A029576 n + (n : ℤ)).toNat

end

end A229650.P16266460322849334711

/-! ## A229650.P7766195079031894752

`A229652(n*A287378(n))`
-/

namespace A229650.P7766195079031894752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229652 ((n : ℤ) * A287378 n).toNat

end

end A229650.P7766195079031894752

/-!
# A229651: Cogrowth function of the group Baumslag-Solitar(9,9).

The programs for A229651, there is no canonical definition to state claims against.
-/

/-! ## A229651.P7009087327507161093

`A035610(A087036(n))`
-/

namespace A229651.P7009087327507161093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A087036 n).toNat

end

end A229651.P7009087327507161093

/-! ## A229651.P6785506029480000985

`A128386(A169919(n))`
-/

namespace A229651.P6785506029480000985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (A169919 n).toNat

end

end A229651.P6785506029480000985

/-! ## A229651.P14524729073012635025

`A128386(A169921(n))`
-/

namespace A229651.P14524729073012635025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (A169921 n).toNat

end

end A229651.P14524729073012635025

/-! ## A229651.P17787292387307286919

`A229652(A087019(n))`
-/

namespace A229651.P17787292387307286919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229652 (A087019 n).toNat

end

end A229651.P17787292387307286919

/-! ## A229651.P10686364840156286140

`A035610(A173689(n+1))`
-/

namespace A229651.P10686364840156286140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A173689 (n + 1)).toNat

end

end A229651.P10686364840156286140

/-!
# A229652: Cogrowth function of the group Baumslag-Solitar(10,10).

The programs for A229652, there is no canonical definition to state claims against.
-/

/-! ## A229652.P7932582813236115375

`A035610(A120126(n))`
-/

namespace A229652.P7932582813236115375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A120126 n).toNat

end

end A229652.P7932582813236115375

/-! ## A229652.P15154992124300040424

`A035610(A351870(n))`
-/

namespace A229652.P15154992124300040424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A351870 n).toNat

end

end A229652.P15154992124300040424

/-! ## A229652.P13248535419220349867

`A035610(n^A067032(n))`
-/

namespace A229652.P13248535419220349867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A067032 n : ℤ))).toNat

end

end A229652.P13248535419220349867

/-! ## A229652.P360905534093647702

`A035610(n^A107910(n))`
-/

namespace A229652.P360905534093647702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A107910 n : ℤ))).toNat

end

end A229652.P360905534093647702

/-! ## A229652.P8274642909806017994

`A035610(n*A001987(n+1))`
-/

namespace A229652.P8274642909806017994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 ((n : ℤ) * A001987 (n + 1)).toNat

end

end A229652.P8274642909806017994

/-!
# A229653: Trisection a(3n+k) gives k-th differences of a for k=0..2 with a(n)=0 for n<2 and a(2)=1.

The programs for A229653, there is no canonical definition to state claims against.
-/

/-! ## A229653.P5016995289735016319

`A000005(A143015(n+1))-A274451(n+1)`
-/

namespace A229653.P5016995289735016319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143015 (n + 1)).toNat - A274451 (n + 1)

end

end A229653.P5016995289735016319

/-!
# A229659: 9-section a(9n+k) gives k-th differences of a for k=0..8 with a(n)=0 for n<8 and a(8)=1.

The programs for A229659, there is no canonical definition to state claims against.
-/

/-! ## A229659.P11630669028868105194

`A229660(A088476(n+1))`
-/

namespace A229659.P11630669028868105194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (A088476 (n + 1)).toNat

end

end A229659.P11630669028868105194

/-! ## A229659.P8095723376631430481

`A229660(lt[1, Δ[A113010(n)]])`
-/

namespace A229659.P8095723376631430481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229659.P8095723376631430481

/-! ## A229659.P869599802026384835

`A229660(lt[A329562(n), A113010(n+1)])`
-/

namespace A229659.P869599802026384835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229659.P869599802026384835

/-! ## A229659.P13195201124101569924

`A229660(lt[A061762(2*n), A113010(n+1)])`
-/

namespace A229659.P13195201124101569924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229659.P13195201124101569924

/-!
# A229661: Rounded percentage of primes less than 10^n.

The programs for A229661, there is no canonical definition to state claims against.
-/

/-! ## A229661.P12458567541479153816

`floor(52*n*acot(n²))`
-/

namespace A229661.P12458567541479153816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ))⌋

end

end A229661.P12458567541479153816

/-! ## A229661.P12380947032911527204

`ceil(52*n*acot(n²)-n²%(n+1))`
-/

namespace A229661.P12380947032911527204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A229661.P12380947032911527204

/-! ## A229661.P5083461114001859585

`ceil(A057428(n)+52*n*acot(n²))`
-/

namespace A229661.P5083461114001859585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + 52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ))⌉

end

end A229661.P5083461114001859585

/-! ## A229661.P465374949941399947

`ceil(52*n*acot(n²)-A057427(n))`
-/

namespace A229661.P465374949941399947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - (A057427 n : ℝ)⌉

end

end A229661.P465374949941399947

/-! ## A229661.P8553404865262991042

`ceil(52*n*acot(n²)-char[A026350(n+1)])`
-/

namespace A229661.P8553404865262991042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A229661.P8553404865262991042

/-!
# A229662: The number of subsets of integers of cardinality n, produced as the steps in a computation starting with 1 and using the operations of multiplication, addition, or subtraction.

The programs for A229662, there is no canonical definition to state claims against.
-/

/-! ## A229662.P10966668339436909625

`A022844(A317666(n))-1`
-/

namespace A229662.P10966668339436909625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A317666 n).toNat - 1

end

end A229662.P10966668339436909625

/-!
# A229664: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229664, there is no canonical definition to state claims against.
-/

/-! ## A229664.P16252946720275541624

`A229672(∑[4*n]+1)`
-/

namespace A229664.P16252946720275541624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229664.P16252946720275541624

/-! ## A229664.P1015103473510730430

`record[A003982(n)*A229672(n+1)]`
-/

namespace A229664.P1015103473510730430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229664.P1015103473510730430

/-! ## A229664.P12938946501953348326

`A229672(A001844(n))+A108782(n)`
-/

namespace A229664.P12938946501953348326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A001844 n).toNat + A108782 n

end

end A229664.P12938946501953348326

/-! ## A229664.P16987073673169742936

`A219924(n)*A229672(A001844(n))`
-/

namespace A229664.P16987073673169742936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n * A229672 (A001844 n).toNat

end

end A229664.P16987073673169742936

/-! ## A229664.P10089515693057804173

`A014963(6*(n+1))*A229672(A001844(n))`
-/

namespace A229664.P10089515693057804173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A229672 (A001844 n).toNat

end

end A229664.P10089515693057804173

/-!
# A229665: Number of defective 4-colorings of an n X 1 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229665, there is no canonical definition to state claims against.
-/

/-! ## A229665.P11332136604341093039

`A080934(A052905(n))*A161680(n)`
-/

namespace A229665.P11332136604341093039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 n).toNat * A161680 n

end

end A229665.P11332136604341093039

/-! ## A229665.P720249627301963397

`A229755(∑[n]+1)`
-/

namespace A229665.P720249627301963397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229665.P720249627301963397

/-! ## A229665.P17889907837759374152

`A229755(A000124(n))%(5^n)`
-/

namespace A229665.P17889907837759374152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229755 (A000124 n).toNat) (5 ^ n : ℤ)

end

end A229665.P17889907837759374152

/-! ## A229665.P3264778772805898579

`A229755(A000124(n))+A000007(n+1)`
-/

namespace A229665.P3264778772805898579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A000124 n).toNat + A000007 (n + 1)

end

end A229665.P3264778772805898579

/-! ## A229665.P14435294076753049806

`and(1, A000225(n))*A229755(A000124(n))`
-/

namespace A229665.P14435294076753049806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000225 n) * A229755 (A000124 n).toNat

end

end A229665.P14435294076753049806

/-!
# A229666: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229666, there is no canonical definition to state claims against.
-/

/-! ## A229666.P10384292326964268276

`A229672(∑[n+1]+2)`
-/

namespace A229666.P10384292326964268276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229666.P10384292326964268276

/-! ## A229666.P14925130039442482905

`record[A229672(∑[A152271(n)])]`
-/

namespace A229666.P14925130039442482905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P14925130039442482905

/-! ## A229666.P4614172672113476732

`record[A097806(n)*A229672(n+1)]`
-/

namespace A229666.P4614172672113476732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P4614172672113476732

/-! ## A229666.P9620499592689014847

`record[A129186(n)*A229672(n+1)]`
-/

namespace A229666.P9620499592689014847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P9620499592689014847

/-! ## A229666.P17909558839820872772

`A229672(A000096(n+1))%(9^n)`
-/

namespace A229666.P17909558839820872772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229672 (A000096 (n + 1)).toNat) (9 ^ n : ℤ)

end

end A229666.P17909558839820872772

/-!
# A229667: Number of defective 4-colorings of an nX3 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229667, there is no canonical definition to state claims against.
-/

/-! ## A229667.P1386497177954410004

`A229672(∑[n+2]+4)`
-/

namespace A229667.P1386497177954410004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229667.P1386497177954410004

/-! ## A229667.P18092204084330542053

`or(1, A229672(A167614(n+1)))`
-/

namespace A229667.P18092204084330542053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229672 (A167614 (n + 1)).toNat)

end

end A229667.P18092204084330542053

/-! ## A229667.P16487156271221956439

`A229672(A167614(n+1))+A011731(n)`
-/

namespace A229667.P16487156271221956439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A167614 (n + 1)).toNat + A011731 n

end

end A229667.P16487156271221956439

/-! ## A229667.P18397543941135674378

`A229672(A167614(n+1))+A011739(n)`
-/

namespace A229667.P18397543941135674378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A167614 (n + 1)).toNat + A011739 n

end

end A229667.P18397543941135674378

/-! ## A229667.P3186986412645098305

`A229672(A167614(n+1))+A061858(n)`
-/

namespace A229667.P3186986412645098305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A167614 (n + 1)).toNat + A061858 n

end

end A229667.P3186986412645098305

/-!
# A229668: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229668, there is no canonical definition to state claims against.
-/

/-! ## A229668.P15460742873193532129

`A229672(A374004(n+1))`
-/

namespace A229668.P15460742873193532129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374004 (n + 1)).toNat

end

end A229668.P15460742873193532129

/-! ## A229668.P7214607035142615607

`A229672(A141214(n)+7)`
-/

namespace A229668.P7214607035142615607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A141214 n + 7).toNat

end

end A229668.P7214607035142615607

/-! ## A229668.P5490967151150362520

`A229672(A052905(n)+9)`
-/

namespace A229668.P5490967151150362520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A052905 n + 9).toNat

end

end A229668.P5490967151150362520

/-! ## A229668.P7467186595814140131

`A229672(A055999(n)+10)`
-/

namespace A229668.P7467186595814140131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A055999 n + 10).toNat

end

end A229668.P7467186595814140131

/-! ## A229668.P15755135227738232229

`A229672(A167614(n+2)+1)`
-/

namespace A229668.P15755135227738232229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A167614 (n + 2) + 1).toNat

end

end A229668.P15755135227738232229

/-!
# A229669: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229669, there is no canonical definition to state claims against.
-/

/-! ## A229669.P12451485268430798428

`A229672(A374005(n+1))`
-/

namespace A229669.P12451485268430798428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374005 (n + 1)).toNat

end

end A229669.P12451485268430798428

/-! ## A229669.P2421422909731020513

`A229672(eq[3, A219347(n)]-(2*n+1))`
-/

namespace A229669.P2421422909731020513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A229669.P2421422909731020513

/-! ## A229669.P132595370977757089

`A229672(eq[8, A258709(n)]-(2*n+1))`
-/

namespace A229669.P132595370977757089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A229669.P132595370977757089

/-! ## A229669.P3966751641655472165

`A229672(Δ[A264443(n)])`
-/

namespace A229669.P3966751641655472165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (f1 (n + 1) - f1 n).toNat

end

end A229669.P3966751641655472165

/-! ## A229669.P7353817266371816483

`A229672(eq[4, A193592(n)])`
-/

namespace A229669.P7353817266371816483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229669.P7353817266371816483

/-!
# A229670: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229670, there is no canonical definition to state claims against.
-/

/-! ## A229670.P13651626138392541207

`A229672(A374007(n+1))`
-/

namespace A229670.P13651626138392541207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374007 (n + 1)).toNat

end

end A229670.P13651626138392541207

/-! ## A229670.P6522094081914609735

`A229672(A000096(n+5)-(n-1))`
-/

namespace A229670.P6522094081914609735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A229670.P6522094081914609735

/-! ## A229670.P16403941999006129762

`A229672(A052905(n+3))`
-/

namespace A229670.P16403941999006129762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A052905 (n + 3)).toNat

end

end A229670.P16403941999006129762

/-! ## A229670.P14759488308044429961

`A229672(eq[3, A219347(n)])`
-/

namespace A229670.P14759488308044429961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229670.P14759488308044429961

/-! ## A229670.P15689324654516401231

`A229672(eq[5, A193592(n)])`
-/

namespace A229670.P15689324654516401231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229670.P15689324654516401231

/-!
# A229671: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229671, there is no canonical definition to state claims against.
-/

/-! ## A229671.P13735427904341693704

`A229672(A374008(n+1))`
-/

namespace A229671.P13735427904341693704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374008 (n + 1)).toNat

end

end A229671.P13735427904341693704

/-! ## A229671.P16344858843859732827

`A229672(A167614(n+5)+4)`
-/

namespace A229671.P16344858843859732827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A167614 (n + 5) + 4).toNat

end

end A229671.P16344858843859732827

/-! ## A229671.P1324727105495330253

`A229672(A000096(n+5)+8)`
-/

namespace A229671.P1324727105495330253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A000096 (n + 5) + 8).toNat

end

end A229671.P1324727105495330253

/-! ## A229671.P2538762890058023922

`A229672(A056000(n+2)+17)`
-/

namespace A229671.P2538762890058023922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A056000 (n + 2) + 17).toNat

end

end A229671.P2538762890058023922

/-! ## A229671.P13286446302661156187

`A229672(eq[3, A219347(n)]+12)`
-/

namespace A229671.P13286446302661156187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A229671.P13286446302661156187

/-!
# A229672: T(n,k) = number of defective 4-colorings of an n X k 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229672, there is no canonical definition to state claims against.
-/

/-! ## A229672.P1531539296228169411

`A229755(A032557(n+1))+A004197(n)`
-/

namespace A229672.P1531539296228169411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A032557 (n + 1)).toNat + A004197 n

end

end A229672.P1531539296228169411

/-! ## A229672.P14393282963609130920

`A320364(A032557(n+1))+A229755(n+1)`
-/

namespace A229672.P14393282963609130920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A032557 (n + 1)).toNat + A229755 (n + 1)

end

end A229672.P14393282963609130920

/-! ## A229672.P7936471656623636206

`A280313(A032557(n+1))+A280284(n+1)`
-/

namespace A229672.P7936471656623636206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A032557 (n + 1)).toNat + A280284 (n + 1)

end

end A229672.P7936471656623636206

/-! ## A229672.P119091544772043187

`A280313(n+1)+A280284(A280355(n+1))`
-/

namespace A229672.P119091544772043187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (n + 1) + A280284 (A280355 (n + 1)).toNat

end

end A229672.P119091544772043187

/-! ## A229672.P12287675923099983562

`A116653(and(A087592(n+1), A197069(n+1)))`
-/

namespace A229672.P12287675923099983562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (Int.land (A087592 (n + 1)) (A197069 (n + 1))).toNat

end

end A229672.P12287675923099983562

/-!
# A229673: The number of subsets of nonzero integers of cardinality n, produced as the steps in a computation starting with 1 and using the operations of multiplication, addition, or subtraction.

The programs for A229673, there is no canonical definition to state claims against.
-/

/-! ## A229673.P6360261630278427068

`∑[A182777(record[A262372(n)])]`
-/

namespace A229673.P6360261630278427068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229673.P6360261630278427068

/-!
# A229675: 

The programs for A229675, there is no canonical definition to state claims against.
-/

/-! ## A229675.P13689278012337209314

`A229142(eq[8, A195664(n)])`
-/

namespace A229675.P13689278012337209314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229675.P13689278012337209314

/-!
# A229676: 

The programs for A229676, there is no canonical definition to state claims against.
-/

/-! ## A229676.P12932116747918957478

`A229142(A000217(n+9)+n)`
-/

namespace A229676.P12932116747918957478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A229676.P12932116747918957478

/-!
# A229677: 

The programs for A229677, there is no canonical definition to state claims against.
-/

/-! ## A229677.P15955367229662080366

`A229142(eq[10, A025581(n)])`
-/

namespace A229677.P15955367229662080366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229677.P15955367229662080366

/-!
# A229678: Number of defective 3-colorings of an n X n 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229678, there is no canonical definition to state claims against.
-/

/-! ## A229678.P17232952894128312356

`A229685(∑[4*n]+1)`
-/

namespace A229678.P17232952894128312356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229678.P17232952894128312356

/-! ## A229678.P13251931912675368136

`lcm(2, A229685(A001844(n)))`
-/

namespace A229678.P13251931912675368136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229685 (A001844 n).toNat)

end

end A229678.P13251931912675368136

/-! ## A229678.P16169493162880106852

`record[A003982(n)*A229685(n+1)]`
-/

namespace A229678.P16169493162880106852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229678.P16169493162880106852

/-! ## A229678.P6068900614876642021

`A229685(A001844(n))+A011744(n)`
-/

namespace A229678.P6068900614876642021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A001844 n).toNat + A011744 n

end

end A229678.P6068900614876642021

/-! ## A229678.P11321163001631354890

`A000040(n+1)%2*A229685(A001844(n))`
-/

namespace A229678.P11321163001631354890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A229685 (A001844 n).toNat

end

end A229678.P11321163001631354890

/-!
# A229679: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229679, the canonical program `A229679.P202136642927744127` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229679 has offset 1).

The definition of A229679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229679.P12992556052604022569

`ogf((2x+12x^2+24x^3-32x^4)/(1-12x+48x^2-64x^3))`
-/

namespace A229679.P12992556052604022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 12, 24, -32] [1, -12, 48, -64] n

end

end A229679.P12992556052604022569

namespace A229679

/-- `ogf((2x+12x^2+24x^3-32x^4)/(1-12x+48x^2-64x^3))` -/
def P12992556052604022569.Spec : Prop :=
  ∀ n, P12992556052604022569.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P202136642927744127

`record[A280370(n)]*A000384(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229679

/-- `record[A280370(n)]*A000384(n)` -/
def P202136642927744127.Spec : Prop :=
  ∀ n, P202136642927744127.a n = A229679 (n + 1)

theorem P202136642927744127.correct : P202136642927744127.Spec := by
  intro n
  simp only [A229679, Nat.add_sub_cancel]

end A229679

/-! ## A229679.P245367226479735430

`A000384(n)*A098011(2*n+1)`
-/

namespace A229679.P245367226479735430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n * A098011 (2 * n + 1)

end

end A229679.P245367226479735430

namespace A229679

/-- `A000384(n)*A098011(2*n+1)` -/
def P245367226479735430.Spec : Prop :=
  ∀ n, P245367226479735430.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P16539083126832059296

`n*A098011(2*n+1)*A289207(2*n+1)`
-/

namespace A229679.P16539083126832059296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A098011 (2 * n + 1) * A289207 (2 * n + 1))

end

end A229679.P16539083126832059296

namespace A229679

/-- `n*A098011(2*n+1)*A289207(2*n+1)` -/
def P16539083126832059296.Spec : Prop :=
  ∀ n, P16539083126832059296.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P14192789298716502036

`A036561(A152947(n+1))*A086950(n)`
-/

namespace A229679.P14192789298716502036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A152947 (n + 1)).toNat * A086950 n

end

end A229679.P14192789298716502036

namespace A229679

/-- `A036561(A152947(n+1))*A086950(n)` -/
def P14192789298716502036.Spec : Prop :=
  ∀ n, P14192789298716502036.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P6629988810631465423

`n*A133086(A004273(n))-A002699(n)`
-/

namespace A229679.P6629988810631465423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133086 (A004273 n).toNat - A002699 n

end

end A229679.P6629988810631465423

namespace A229679

/-- `n*A133086(A004273(n))-A002699(n)` -/
def P6629988810631465423.Spec : Prop :=
  ∀ n, P6629988810631465423.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P3126658631775082546

`A000384(n)*A119440(n²)`
-/

namespace A229679.P3126658631775082546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n * A119440 (n ^ 2)

end

end A229679.P3126658631775082546

namespace A229679

/-- `A000384(n)*A119440(n²)` -/
def P3126658631775082546.Spec : Prop :=
  ∀ n, P3126658631775082546.a n = A229679 (n + 1)

end A229679

/-!
# A229680: Number of defective 3-colorings of an n X 3 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229680, there is no canonical definition to state claims against.
-/

/-! ## A229680.P9605593014965477231

`A229685(∑[n+2]+4)`
-/

namespace A229680.P9605593014965477231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229680.P9605593014965477231

/-! ## A229680.P11487424906958216824

`lcm(2, A229685(A167614(n+1)))`
-/

namespace A229680.P11487424906958216824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229685 (A167614 (n + 1)).toNat)

end

end A229680.P11487424906958216824

/-! ## A229680.P7129371961434408076

`A229685(A167614(n+1))+A011738(n)`
-/

namespace A229680.P7129371961434408076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A167614 (n + 1)).toNat + A011738 n

end

end A229680.P7129371961434408076

/-! ## A229680.P11225101662586366487

`A229685(A167614(n+1))+A061858(n)`
-/

namespace A229680.P11225101662586366487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A167614 (n + 1)).toNat + A061858 n

end

end A229680.P11225101662586366487

/-! ## A229680.P1865023499345891971

`A057427(n)*A229685(A167614(n+1))`
-/

namespace A229680.P1865023499345891971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A229685 (A167614 (n + 1)).toNat

end

end A229680.P1865023499345891971

/-!
# A229681: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229681, there is no canonical definition to state claims against.
-/

/-! ## A229681.P10537534195239371538

`A229685(∑[n+3]+7)`
-/

namespace A229681.P10537534195239371538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229681.P10537534195239371538

/-! ## A229681.P6238510301690955932

`record[A010054(n+4)*A229685(n+1)]`
-/

namespace A229681.P6238510301690955932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A229685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229681.P6238510301690955932

/-! ## A229681.P1492250677826644251

`A229685(A141214(n+1))+A014954(3*n+1)`
-/

namespace A229681.P1492250677826644251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A141214 (n + 1)).toNat + A014954 (3 * n + 1)

end

end A229681.P1492250677826644251

/-! ## A229681.P17040747138168402432

`or(A010894(2*n+3), A229685(A141214(n+1)))`
-/

namespace A229681.P17040747138168402432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (2 * n + 3 + 21)) (A229685 (A141214 (n + 1)).toNat)

end

end A229681.P17040747138168402432

/-!
# A229682: Number of defective 3-colorings of an n X 5 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229682, there is no canonical definition to state claims against.
-/

/-! ## A229682.P14128524152433709484

`A229685(A374005(n+1))`
-/

namespace A229682.P14128524152433709484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374005 (n + 1)).toNat

end

end A229682.P14128524152433709484

/-! ## A229682.P9441643596253104370

`A229685(A155212(n)+13)`
-/

namespace A229682.P9441643596253104370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A155212 n + 13).toNat

end

end A229682.P9441643596253104370

/-! ## A229682.P14917846690858776222

`A229685(eq[3, A274190(n)])`
-/

namespace A229682.P14917846690858776222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229682.P14917846690858776222

/-! ## A229682.P2328877621339718883

`A229685(eq[4, A193592(n)])`
-/

namespace A229682.P2328877621339718883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229682.P2328877621339718883

/-! ## A229682.P15103355026933442891

`A229685(Δ[A023545(n+1)])`
-/

namespace A229682.P15103355026933442891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (f1 (n + 1) - f1 n).toNat

end

end A229682.P15103355026933442891

/-!
# A229683: Number of defective 3-colorings of an n X 6 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229683, there is no canonical definition to state claims against.
-/

/-! ## A229683.P39486072249007599

`A229685(A374007(n+1))`
-/

namespace A229683.P39486072249007599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374007 (n + 1)).toNat

end

end A229683.P39486072249007599

/-! ## A229683.P7990444320642014787

`A229685(A167499(n+4)+1)`
-/

namespace A229683.P7990444320642014787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A167499 (n + 4) + 1).toNat

end

end A229683.P7990444320642014787

/-! ## A229683.P14561872181080575167

`A229685(eq[3, A219347(n)])`
-/

namespace A229683.P14561872181080575167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229683.P14561872181080575167

/-! ## A229683.P4210272857514007263

`A229685(eq[5, A193592(n)])`
-/

namespace A229683.P4210272857514007263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229683.P4210272857514007263

/-! ## A229683.P15909639231547626307

`A229685(A055998(n+4)-2)`
-/

namespace A229683.P15909639231547626307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A055998 (n + 4) - 2).toNat

end

end A229683.P15909639231547626307

/-!
# A229684: Number of defective 3-colorings of an n X 7 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229684, there is no canonical definition to state claims against.
-/

/-! ## A229684.P8553586410265267382

`A229685(A374008(n+1))`
-/

namespace A229684.P8553586410265267382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374008 (n + 1)).toNat

end

end A229684.P8553586410265267382

/-! ## A229684.P10462641220007224816

`A229685(A167487(n+5))`
-/

namespace A229684.P10462641220007224816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A167487 (n + 5)).toNat

end

end A229684.P10462641220007224816

/-! ## A229684.P17130026091833036026

`A229685(eq[8, A131818(n+1)])`
-/

namespace A229684.P17130026091833036026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229684.P17130026091833036026

/-! ## A229684.P10771561488615692993

`A229685(eq[4, A219347(n)])`
-/

namespace A229684.P10771561488615692993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229684.P10771561488615692993

/-! ## A229684.P298358674000795998

`A229685(eq[6, A193592(n)])`
-/

namespace A229684.P298358674000795998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229684.P298358674000795998

/-!
# A229685: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229685, there is no canonical definition to state claims against.
-/

/-! ## A229685.P11938490199663686995

`A025429(7^A007318(n))`
-/

namespace A229685.P11938490199663686995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A229685.P11938490199663686995

/-! ## A229685.P2531992850124604131

`A025429(7^A050447(n))`
-/

namespace A229685.P2531992850124604131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A050447 n : ℤ))).toNat

end

end A229685.P2531992850124604131

/-! ## A229685.P16424100485109970136

`A025429(7^A076831(n))`
-/

namespace A229685.P16424100485109970136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A076831 n : ℤ))).toNat

end

end A229685.P16424100485109970136

/-! ## A229685.P817187783400449504

`A025429(7^A077028(n))`
-/

namespace A229685.P817187783400449504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A077028 n : ℤ))).toNat

end

end A229685.P817187783400449504

/-! ## A229685.P4895636336816987609

`A126164(A007318(n)!²)`
-/

namespace A229685.P4895636336816987609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 (Nat.factorial (A007318 n).toNat ^ 2)

end

end A229685.P4895636336816987609

/-!
# A229687: Odd squares whose binary reversal is also a square.

The programs for A229687, there is no canonical definition to state claims against.
-/

/-! ## A229687.P16326801781538613051

`A229766(n+1)²`
-/

namespace A229687.P16326801781538613051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (n + 1) ^ 2

end

end A229687.P16326801781538613051

/-! ## A229687.P17794128387477194791

`record[A229766(A344180(n))²]`
-/

namespace A229687.P17794128387477194791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229687.P17794128387477194791

/-! ## A229687.P2225696785742999675

`A229766(n+1)^A020639(2*(n+5))`
-/

namespace A229687.P2225696785742999675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229766 (n + 1) : ℚ) ^ (A020639 (2 * (n + 5)) : ℤ)

end

end A229687.P2225696785742999675

/-! ## A229687.P11388120589696930297

`A229766(n+1)^A000040(A007318(∑[n]))`
-/

namespace A229687.P11388120589696930297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229766 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A229687.P11388120589696930297

/-! ## A229687.P9107761346362979672

`record[A229766(A344180(n))]*A229766(n+1)`
-/

namespace A229687.P9107761346362979672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A229766 (n + 1)

end

end A229687.P9107761346362979672

/-!
# A229688: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229688, there is no canonical definition to state claims against.
-/

/-! ## A229688.P1430071431989920643

`A229694(∑[4*n]+1)`
-/

namespace A229688.P1430071431989920643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229688.P1430071431989920643

/-! ## A229688.P1606675599240606963

`A229694(A001844(n))*A251072(n)`
-/

namespace A229688.P1606675599240606963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A001844 n).toNat * A251072 n

end

end A229688.P1606675599240606963

/-! ## A229688.P13887420091134632355

`lcm(A020985(n), A229694(A001844(n)))`
-/

namespace A229688.P13887420091134632355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A229694 (A001844 n).toNat)

end

end A229688.P13887420091134632355

/-! ## A229688.P1663095530289498252

`and(A057428(n), A229694(A001844(n)))`
-/

namespace A229688.P1663095530289498252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A229694 (A001844 n).toNat)

end

end A229688.P1663095530289498252

/-! ## A229688.P10730853220833302472

`or(A229694(A001844(n)), A257685(n))`
-/

namespace A229688.P10730853220833302472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A229694 (A001844 n).toNat) (A257685 n)

end

end A229688.P10730853220833302472

/-!
# A229689: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229689, there is no canonical definition to state claims against.
-/

/-! ## A229689.P7362942561725086818

`A229694(∑[n+3]+1)`
-/

namespace A229689.P7362942561725086818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229689.P7362942561725086818

/-! ## A229689.P7939946185635819691

`A229694(A034856(n+2))%A374506(2*(n+2))`
-/

namespace A229689.P7939946185635819691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229694 (A034856 (n + 2)).toNat) (A374506 (2 * (n + 2)))

end

end A229689.P7939946185635819691

/-!
# A229690: Number of defective 3-colorings of an nX4 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229690, there is no canonical definition to state claims against.
-/

/-! ## A229690.P4424751893714582130

`A229695(2*(n+1))`
-/

namespace A229690.P4424751893714582130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229695 (2 * (n + 1))

end

end A229690.P4424751893714582130

/-! ## A229690.P14266291544901440905

`A229694(A141214(n+1))`
-/

namespace A229690.P14266291544901440905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A141214 (n + 1)).toNat

end

end A229690.P14266291544901440905

/-! ## A229690.P5897644816071915043

`A229694(A055998(n+2))`
-/

namespace A229690.P5897644816071915043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A055998 (n + 2)).toNat

end

end A229690.P5897644816071915043

/-! ## A229690.P14791887525937687368

`A229694(A056000(n)+7)`
-/

namespace A229690.P14791887525937687368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A056000 n + 7).toNat

end

end A229690.P14791887525937687368

/-!
# A229691: Number of defective 3-colorings of an nX5 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229691, there is no canonical definition to state claims against.
-/

/-! ## A229691.P12130866842439366506

`A229694(Δ[A264443(n)])`
-/

namespace A229691.P12130866842439366506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (f1 (n + 1) - f1 n).toNat

end

end A229691.P12130866842439366506

/-! ## A229691.P11138314263387699937

`A229694(eq[4, A193592(n)])`
-/

namespace A229691.P11138314263387699937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229691.P11138314263387699937

/-! ## A229691.P2284884945508998894

`A229694(Δ[A023545(n+1)])`
-/

namespace A229691.P2284884945508998894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (f1 (n + 1) - f1 n).toNat

end

end A229691.P2284884945508998894

/-! ## A229691.P7455713922775399946

`A229694(A246172(n+1)+10)`
-/

namespace A229691.P7455713922775399946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A246172 (n + 1) + 10).toNat

end

end A229691.P7455713922775399946

/-! ## A229691.P17804070622630563855

`A229694(eq[5, A200370(n+1)])`
-/

namespace A229691.P17804070622630563855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229691.P17804070622630563855

/-!
# A229692: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229692, there is no canonical definition to state claims against.
-/

/-! ## A229692.P16431259882234447187

`A229694(eq[3, A219347(n)])`
-/

namespace A229692.P16431259882234447187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229692.P16431259882234447187

/-! ## A229692.P14475029166307644577

`A229694(eq[5, A193592(n)])`
-/

namespace A229692.P14475029166307644577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229692.P14475029166307644577

/-! ## A229692.P14711184278735906188

`A229694(eq[6, A200370(n+1)])`
-/

namespace A229692.P14711184278735906188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229692.P14711184278735906188

/-! ## A229692.P10649585372969102251

`A229694(eq[16, A057728(n+1)])`
-/

namespace A229692.P10649585372969102251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229692.P10649585372969102251

/-! ## A229692.P18079008855352873814

`A229694(Δ[Δ[A006504(n+1)]])`
-/

namespace A229692.P18079008855352873814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (f1 (n + 1) - f1 n).toNat

end

end A229692.P18079008855352873814

/-!
# A229693: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229693, there is no canonical definition to state claims against.
-/

/-! ## A229693.P8043967009073609237

`A229694(eq[4, A219347(n)])`
-/

namespace A229693.P8043967009073609237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229693.P8043967009073609237

/-! ## A229693.P13887181682717118662

`A229694(eq[6, A193592(n)])`
-/

namespace A229693.P13887181682717118662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229693.P13887181682717118662

/-! ## A229693.P14608154203698550808

`A229694(Δ[A023551(n+2)])`
-/

namespace A229693.P14608154203698550808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (f1 (n + 1) - f1 n).toNat

end

end A229693.P14608154203698550808

/-! ## A229693.P4336299023170106631

`A229694(eq[7, A200370(n+1)])`
-/

namespace A229693.P4336299023170106631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229693.P4336299023170106631

/-! ## A229693.P17220786303675138571

`A229694(eq[10, A185782(n+1)])`
-/

namespace A229693.P17220786303675138571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229693.P17220786303675138571

/-!
# A229695: Number of defective 3-colorings of a 2Xn 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229695, there is no canonical definition to state claims against.
-/

/-! ## A229695.P5443147910244881579

`A229694(∑[n+1]+2)`
-/

namespace A229695.P5443147910244881579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229695.P5443147910244881579

/-! ## A229695.P6098414706798164304

`record[A229694(A106247(n)+1)]`
-/

namespace A229695.P6098414706798164304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229695.P6098414706798164304

/-! ## A229695.P12734977556833059537

`record[A229694(A133263(∑{digits}[n, #]))]`
-/

namespace A229695.P12734977556833059537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229695.P12734977556833059537

/-! ## A229695.P8213844605650415728

`A229694(A133263(n+1))%A229702(n)`
-/

namespace A229695.P8213844605650415728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229694 (A133263 (n + 1)).toNat) (A229702 n)

end

end A229695.P8213844605650415728

/-! ## A229695.P13880418785055263220

`A033999(A047881(n))*A229694(A167499(n)-3)`
-/

namespace A229695.P13880418785055263220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A047881 n).toNat * A229694 (A167499 n - 3).toNat

end

end A229695.P13880418785055263220

/-!
# A229696: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229696, there is no canonical definition to state claims against.
-/

/-! ## A229696.P9695759573606016407

`A229694(∑[n+2]+4)`
-/

namespace A229696.P9695759573606016407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229696.P9695759573606016407

/-! ## A229696.P3605249040771052823

`A229694(A167614(n+1))+A025438(n)`
-/

namespace A229696.P3605249040771052823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167614 (n + 1)).toNat + A025438 n

end

end A229696.P3605249040771052823

/-! ## A229696.P5720288889083342557

`lcm(A011599(n), A229694(A167614(n+1)))`
-/

namespace A229696.P5720288889083342557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011599 n) (A229694 (A167614 (n + 1)).toNat)

end

end A229696.P5720288889083342557

/-! ## A229696.P8700511072184121835

`or(A065040(n), A229694(A167614(n+1)))`
-/

namespace A229696.P8700511072184121835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065040 n) (A229694 (A167614 (n + 1)).toNat)

end

end A229696.P8700511072184121835

/-! ## A229696.P15443181655348572345

`A229694(A167614(n+1))+A000007(2*n+3)`
-/

namespace A229696.P15443181655348572345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167614 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A229696.P15443181655348572345

/-!
# A229697: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229697, there is no canonical definition to state claims against.
-/

/-! ## A229697.P6806301374963289135

`A229694(A141214(n)+7)`
-/

namespace A229697.P6806301374963289135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A141214 n + 7).toNat

end

end A229697.P6806301374963289135

/-! ## A229697.P11976931640793170083

`A229694(A052905(n)+9)`
-/

namespace A229697.P11976931640793170083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A052905 n + 9).toNat

end

end A229697.P11976931640793170083

/-! ## A229697.P11070666154939375185

`A229694(A055999(n)+10)`
-/

namespace A229697.P11070666154939375185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A055999 n + 10).toNat

end

end A229697.P11070666154939375185

/-! ## A229697.P10255232986465372057

`A229694(A167614(n+2)+1)`
-/

namespace A229697.P10255232986465372057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167614 (n + 2) + 1).toNat

end

end A229697.P10255232986465372057

/-! ## A229697.P17624429613415469778

`A229694(A166136(n+2)-2)`
-/

namespace A229697.P17624429613415469778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A166136 (n + 2) - 2).toNat

end

end A229697.P17624429613415469778

/-!
# A229698: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229698, there is no canonical definition to state claims against.
-/

/-! ## A229698.P11975993764546196412

`A229694(A167499(n+3))`
-/

namespace A229698.P11975993764546196412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167499 (n + 3)).toNat

end

end A229698.P11975993764546196412

/-! ## A229698.P2539283265191612040

`A229694(A056000(n)+15)`
-/

namespace A229698.P2539283265191612040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A056000 n + 15).toNat

end

end A229698.P2539283265191612040

/-! ## A229698.P2591266742584166332

`A229694(eq[7, A066657(n)])`
-/

namespace A229698.P2591266742584166332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229698.P2591266742584166332

/-! ## A229698.P6835250110261969128

`A229694(A167614(n+3)+2)`
-/

namespace A229698.P6835250110261969128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167614 (n + 3) + 2).toNat

end

end A229698.P6835250110261969128

/-! ## A229698.P4149005564712613684

`A229694(A055998(n+2)+8)`
-/

namespace A229698.P4149005564712613684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A055998 (n + 2) + 8).toNat

end

end A229698.P4149005564712613684

/-!
# A229699: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229699, there is no canonical definition to state claims against.
-/

/-! ## A229699.P416457612236587282

`A229694(A166136(n+4))`
-/

namespace A229699.P416457612236587282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A166136 (n + 4)).toNat

end

end A229699.P416457612236587282

/-! ## A229699.P2072352425789377972

`A229694(A056115(n)+21)`
-/

namespace A229699.P2072352425789377972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A056115 n + 21).toNat

end

end A229699.P2072352425789377972

/-! ## A229699.P4823481276024822650

`A229694(eq[6, A256910(n)])`
-/

namespace A229699.P4823481276024822650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229699.P4823481276024822650

/-! ## A229699.P11148108456446291659

`A229694(A167614(n+4)+3)`
-/

namespace A229699.P11148108456446291659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167614 (n + 4) + 3).toNat

end

end A229699.P11148108456446291659

/-! ## A229699.P13668949641423580070

`A229694(eq[7, A131818(n+1)])`
-/

namespace A229699.P13668949641423580070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229699.P13668949641423580070

