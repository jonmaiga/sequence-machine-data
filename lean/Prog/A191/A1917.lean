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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191700: E.g.f. 1/(1-arctan(x)).

The programs for A191700, there is no canonical definition to state claims against.
-/

/-! ## A191700.P988661390848459491

`A010554(A391642(n+1)+A355901(n+1))`
-/

namespace A191700.P988661390848459491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A391642 (n + 1) + A355901 (n + 1)).toNat

end

end A191700.P988661390848459491

/-! ## A191700.P15762157104193633350

`A000010(A277195(n+2)*A282741(n+1))`
-/

namespace A191700.P15762157104193633350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A277195 (n + 2) * A282741 (n + 1)).toNat

end

end A191700.P15762157104193633350

/-! ## A191700.P16300944452593185499

`A194920(A271949(3*n+4)+A005853(2*(n+4)))`
-/

namespace A191700.P16300944452593185499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A271949 (3 * n + 4) + A005853 (2 * (n + 4))).toNat

end

end A191700.P16300944452593185499

/-!
# A191701: In base-2 lunar arithmetic, number of binary numbers x of length n such that x*x has no zeros.

The programs for A191701, there is no canonical definition to state claims against.
-/

/-! ## A191701.P15160618591079872900

`A046805(round(A007283(n)/A000379(3*n+2))²)`
-/

namespace A191701.P15160618591079872900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046805 (SequenceMachineLib.roundAway ((A007283 n : ℚ) / (A000379 (3 * n + 2) : ℚ)) ^ 2).toNat

end

end A191701.P15160618591079872900

/-! ## A191701.P12518404684981921850

`round(sqrt(A320806(n))/2)`
-/

namespace A191701.P12518404684981921850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A320806 n : ℝ) / 2)

end

end A191701.P12518404684981921850

/-! ## A191701.P11847058074119145016

`A351846(A003162(n))`
-/

namespace A191701.P11847058074119145016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A003162 n).toNat

end

end A191701.P11847058074119145016

/-! ## A191701.P10199545700015286778

`A351846(A202261(n))`
-/

namespace A191701.P10199545700015286778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A202261 n).toNat

end

end A191701.P10199545700015286778

/-! ## A191701.P18069533632426166334

`A274701(A287901(n))`
-/

namespace A191701.P18069533632426166334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A287901 n).toNat

end

end A191701.P18069533632426166334

/-!
# A191702: Dispersion of A008587 (5,10,15,20,25,30,...), by antidiagonals.

The programs for A191702, the canonical program `A191702.P12134525753412751572` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191702 has offset 1).

The definition of A191702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191702.P12134525753412751572

`(col(n)+floor((col(n)+4)/4))*5^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191702

/-- `(col(n)+floor((col(n)+4)/4))*5^(row(n)-col(n))` -/
def P12134525753412751572.Spec : Prop :=
  ∀ n, P12134525753412751572.a n = (A191702 (n + 1) : ℚ)

end A191702

/-! ## A191702.P7963281022742950511

`A090882(A182945(n+1)²)/2`
-/

namespace A191702.P7963281022742950511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090882 (A182945 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A191702.P7963281022742950511

namespace A191702

/-- `A090882(A182945(n+1)²)/2` -/
def P7963281022742950511.Spec : Prop :=
  ∀ n, P7963281022742950511.a n = (A191702 (n + 1) : ℚ)

end A191702

/-! ## A191702.P3062817335772164966

`A218016(n)+A010060(5^(n-2)*C(n, 2))`
-/

namespace A191702.P3062817335772164966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 n + A010060 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ))).toNat

end

end A191702.P3062817335772164966

namespace A191702

/-- `A218016(n)+A010060(5^(n-2)*C(n, 2))` -/
def P3062817335772164966.Spec : Prop :=
  ∀ n, P3062817335772164966.a n = A191702 (n + 1)

end A191702

/-!
# A191703: Dispersion of A016861, (5k+1), by antidiagonals.

The programs for A191703, there is no canonical definition to state claims against.
-/

/-! ## A191703.P4581811472954586925

`A096039(n+1)-A003035(A174303(n))`
-/

namespace A191703.P4581811472954586925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096039 (n + 1) - A003035 (A174303 n).toNat

end

end A191703.P4581811472954586925

/-!
# A191707: Dispersion of A016873, (numbers >1 and congruent to 1, 2, 3, or 4 mod 5), by antidiagonals.

The programs for A191707, there is no canonical definition to state claims against.
-/

/-! ## A191707.P3267535485738924001

`round(sqrt(A191708(n+1)*A191711(n+1)))`
-/

namespace A191707.P3267535485738924001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191708 (n + 1) * A191711 (n + 1) : ℝ))

end

end A191707.P3267535485738924001

/-! ## A191707.P1749708259907798164

`A000194(A191708(n+1)*A191711(n+1))`
-/

namespace A191707.P1749708259907798164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A191708 (n + 1) * A191711 (n + 1)).toNat

end

end A191707.P1749708259907798164

/-! ## A191707.P18368381044087393225

`A137734(A191708(n+1)*A191711(n+1))`
-/

namespace A191707.P18368381044087393225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A191708 (n + 1) * A191711 (n + 1)).toNat

end

end A191707.P18368381044087393225

/-!
# A191708: Dispersion of A047202, (numbers >1 and congruent to 0, 2, 3, or 4 mod 5), by antidiagonals.

The programs for A191708, there is no canonical definition to state claims against.
-/

/-! ## A191708.P13118445081789508216

`A003313(A013617(n)*A262240(n+1))`
-/

namespace A191708.P13118445081789508216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A013617 n * A262240 (n + 1)).toNat

end

end A191708.P13118445081789508216

/-!
# A191710: Dispersion of A032763, (numbers >1 and congruent to 0, 1, 2, or 4 mod 5), by antidiagonals.

The programs for A191710, there is no canonical definition to state claims against.
-/

/-! ## A191710.P10815750773661315334

`round(sqrt(A191709(n+1)*A191711(n+1)))`
-/

namespace A191710.P10815750773661315334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191709 (n + 1) * A191711 (n + 1) : ℝ))

end

end A191710.P10815750773661315334

/-! ## A191710.P4390741013488440583

`A000194(A191709(n+1)*A191711(n+1))`
-/

namespace A191710.P4390741013488440583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A191709 (n + 1) * A191711 (n + 1)).toNat

end

end A191710.P4390741013488440583

/-!
# A191711: Dispersion of A001068, (numbers >1 and congruent to 0, 1, 2, or 3 mod 5), by antidiagonals.

The programs for A191711, there is no canonical definition to state claims against.
-/

/-! ## A191711.P1392980990155361665

`round(sqrt(A191707(n+1)*A191710(n+1)))`
-/

namespace A191711.P1392980990155361665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191707 (n + 1) * A191710 (n + 1) : ℝ))

end

end A191711.P1392980990155361665

/-! ## A191711.P4848741777154384910

`A000194(A191707(n+1)*A191710(n+1))`
-/

namespace A191711.P4848741777154384910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A191707 (n + 1) * A191710 (n + 1)).toNat

end

end A191711.P4848741777154384910

/-! ## A191711.P6677420842387222386

`A137734(A191707(n+1)*A191710(n+1))`
-/

namespace A191711.P6677420842387222386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A191707 (n + 1) * A191710 (n + 1)).toNat

end

end A191711.P6677420842387222386

/-! ## A191711.P9460891480703879444

`A070941(A000045(n)*A337369(n))`
-/

namespace A191711.P9460891480703879444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A000045 n * A337369 n).toNat

end

end A191711.P9460891480703879444

/-!
# A191712: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 1 E, S or NW neighboring 1.

The programs for A191712, there is no canonical definition to state claims against.
-/

/-! ## A191712.P3350157027920185874

`A089085(∑[n+2]-1)-A001651(n+1)`
-/

namespace A191712.P3350157027920185874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089085 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A001651 (n + 1)

end

end A191712.P3350157027920185874

/-!
# A191714: a(n,k) equals the number of semistandard Young tableaux with shape of a partition of n and maximal element <= k.

The programs for A191714, there is no canonical definition to state claims against.
-/

/-! ## A191714.P14995055674505159677

`A023133(A059268(n)^A055086(n))`
-/

namespace A191714.P14995055674505159677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A055086 n : ℤ))).toNat

end

end A191714.P14995055674505159677

/-! ## A191714.P6289416084008876841

`A023133(A152036(n)^A055086(n))`
-/

namespace A191714.P6289416084008876841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (SequenceMachineLib.roundAway ((A152036 n : ℚ) ^ (A055086 n : ℤ))).toNat

end

end A191714.P6289416084008876841

/-! ## A191714.P2337514534760058376

`A347942(A352589(n))+A130746(n+1)`
-/

namespace A191714.P2337514534760058376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347942 (A352589 n).toNat + A130746 (n + 1)

end

end A191714.P2337514534760058376

/-! ## A191714.P1880746393560112178

`A023133(A152036(n)^A000720(n+1))`
-/

namespace A191714.P1880746393560112178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (SequenceMachineLib.roundAway ((A152036 n : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A191714.P1880746393560112178

/-! ## A191714.P1973024676075039522

`A344452(A193091(n)+1)+val(A226812(n+1)+1, 4)`
-/

namespace A191714.P1973024676075039522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344452 (A193091 n + 1).toNat + (SequenceMachineLib.valuation (A226812 (n + 1) + 1).toNat 4 : ℤ)

end

end A191714.P1973024676075039522

/-!
# A191717: Numbers k such that k*(k-1)^k - (k-1)*k^(k-1) + 1 is prime.

The programs for A191717, there is no canonical definition to state claims against.
-/

/-! ## A191717.P9711964652959652209

`A235791(3*n+1)+A206915(A056391(3*n+2))`
-/

namespace A191717.P9711964652959652209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (3 * n + 1) + A206915 (A056391 (3 * n + 2)).toNat

end

end A191717.P9711964652959652209

/-!
# A191719: Expansion of e.g.f. arctan(x*exp(x)).

The programs for A191719, there is no canonical definition to state claims against.
-/

/-! ## A191719.P5354840975959123343

`n-A330226(A020007(n))`
-/

namespace A191719.P5354840975959123343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330226 (A020007 n).toNat

end

end A191719.P5354840975959123343

/-! ## A191719.P10020921209666814868

`A229655(A130168(n+2))+n`
-/

namespace A191719.P10020921209666814868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229655 (A130168 (n + 2)).toNat + (n : ℤ)

end

end A191719.P10020921209666814868

/-!
# A191720: Expansion of e.g.f. arctan(exp(x)-1).

The programs for A191720, there is no canonical definition to state claims against.
-/

/-! ## A191720.P5443007276386715349

`A004277(A306083(n))-A000670(n)`
-/

namespace A191720.P5443007276386715349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A306083 n).toNat - A000670 n

end

end A191720.P5443007276386715349

/-! ## A191720.P116573252507357556

`A004277(A306083(n))-A343793(n)`
-/

namespace A191720.P116573252507357556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A306083 n).toNat - A343793 n

end

end A191720.P116573252507357556

/-! ## A191720.P4091950058110751372

`A004277(A028245(n+1)+1)-A000670(n)`
-/

namespace A191720.P4091950058110751372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028245 (n + 1) + 1).toNat - A000670 n

end

end A191720.P4091950058110751372

/-!
# A191721: Permutations in S_n avoiding the patterns {4321, 34512, 45123, 35412, 43512, 45132, 45213, 53412, 45312, 45231}.

The programs for A191721, the canonical program `A191721.P12635236552625617227` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191721 has offset 0).

The definition of A191721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191721.P16688707481518538286

`ogf((1-4x+x^3)/(1-5x+3x^2+2x^3-x^4))`
-/

namespace A191721.P16688707481518538286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 0, 1] [1, -5, 3, 2, -1] n

end

end A191721.P16688707481518538286

namespace A191721

/-- `ogf((1-4x+x^3)/(1-5x+3x^2+2x^3-x^4))` -/
def P16688707481518538286.Spec : Prop :=
  ∀ n, P16688707481518538286.a n = A191721 n

end A191721

/-! ## A191721.P12635236552625617227

`3*a(n-1)-a(n-3)+a(n-2)+a(n-1)-2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191721

/-- `3*a(n-1)-a(n-3)+a(n-2)+a(n-1)-2` -/
def P12635236552625617227.Spec : Prop :=
  ∀ n, P12635236552625617227.a n = A191721 n

theorem P12635236552625617227.correct : P12635236552625617227.Spec := by
  intro n
  simp only [A191721]

end A191721

/-! ## A191721.P6874743829355680372

`A311253(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A191721.P6874743829355680372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311253 (a (n - 1)).toNat - 2

end

end A191721.P6874743829355680372

namespace A191721

/-- `A311253(a(n-1))-2` -/
def P6874743829355680372.Spec : Prop :=
  ∀ n, P6874743829355680372.a n = A191721 n

end A191721

/-! ## A191721.P5208565502417013095

`A311262(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A191721.P5208565502417013095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311262 (a (n - 1)).toNat - 2

end

end A191721.P5208565502417013095

namespace A191721

/-- `A311262(a(n-1))-2` -/
def P5208565502417013095.Spec : Prop :=
  ∀ n, P5208565502417013095.a n = A191721 n

end A191721

/-! ## A191721.P6724400555743043384

`A311422(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A191721.P6724400555743043384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311422 (a (n - 1)).toNat - 2

end

end A191721.P6724400555743043384

namespace A191721

/-- `A311422(a(n-1))-2` -/
def P6724400555743043384.Spec : Prop :=
  ∀ n, P6724400555743043384.a n = A191721 n

end A191721

/-!
# A191722: Dispersion of A008851, (numbers >1 and congruent to 0 or 1 mod 5), by antidiagonals.

The programs for A191722, there is no canonical definition to state claims against.
-/

/-! ## A191722.P17362224519728185338

`A191726(A066182(n+1)+1)-1`
-/

namespace A191722.P17362224519728185338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191726 (A066182 (n + 1) + 1).toNat - 1

end

end A191722.P17362224519728185338

/-!
# A191723: Dispersion of A047215, (numbers >1 and congruent to 0 or 2 mod 5), by antidiagonals.

The programs for A191723, there is no canonical definition to state claims against.
-/

/-! ## A191723.P15686717710597342071

`A191439(n+1)+A179801(A016116(n))`
-/

namespace A191723.P15686717710597342071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191439 (n + 1) + A179801 (A016116 n).toNat

end

end A191723.P15686717710597342071

/-! ## A191723.P12163327099375783645

`A340998(A017911(n))+A191439(n+1)`
-/

namespace A191723.P12163327099375783645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A017911 n).toNat + 140) + A191439 (n + 1)

end

end A191723.P12163327099375783645

/-! ## A191723.P17985749642728299675

`A191439(n+1)+A010060(A324233(n+1))`
-/

namespace A191723.P17985749642728299675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191439 (n + 1) + A010060 (A324233 (n + 1)).toNat

end

end A191723.P17985749642728299675

/-! ## A191723.P5056871339636349675

`A025437(n)+A191439(n+1)+A057427(A324233(n+1))`
-/

namespace A191723.P5056871339636349675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A191439 (n + 1) + A057427 (A324233 (n + 1)).toNat)

end

end A191723.P5056871339636349675

/-!
# A191724: Dispersion of A047218, (numbers >1 and congruent to 0 or 3 mod 5), by antidiagonals.

The programs for A191724, there is no canonical definition to state claims against.
-/

/-! ## A191724.P12218637807349165601

`A123068(A083087(n)+1)`
-/

namespace A191724.P12218637807349165601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A083087 n + 1).toNat

end

end A191724.P12218637807349165601

/-! ## A191724.P2877270764360844873

`A335525(A083087(n)+1)`
-/

namespace A191724.P2877270764360844873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (A083087 n + 1).toNat

end

end A191724.P2877270764360844873

/-! ## A191724.P12288631396650412120

`A348553(A088226(A083087(n)²))`
-/

namespace A191724.P12288631396650412120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A088226 (A083087 n ^ 2).toNat).toNat

end

end A191724.P12288631396650412120

/-! ## A191724.P8903513465867149813

`A083087(n)+A057558(A060439(n+1))`
-/

namespace A191724.P8903513465867149813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083087 n + A057558 (A060439 (n + 1)).toNat

end

end A191724.P8903513465867149813

/-! ## A191724.P16283067754341498188

`A133010(A191663(n+1))+A083087(n)`
-/

namespace A191724.P16283067754341498188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A191663 (n + 1)).toNat + A083087 n

end

end A191724.P16283067754341498188

/-!
# A191726: Dispersion of A047216, (numbers >1 and congruent to 1 or 2 mod 5), by antidiagonals.

The programs for A191726, there is no canonical definition to state claims against.
-/

/-! ## A191726.P2481488005912294984

`∑{e}[A008776(n), A191722(A066181(#))]`
-/

namespace A191726.P2481488005912294984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A191722 (A066181 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A191726.P2481488005912294984

/-!
# A191727: Dispersion of A047219, (numbers >1 and congruent to 1 or 3 mod 5), by antidiagonals.

The programs for A191727, there is no canonical definition to state claims against.
-/

/-! ## A191727.P7197436549837113542

`A132827(n)-A051765(A060693(n))`
-/

namespace A191727.P7197436549837113542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A051765 (A060693 n).toNat

end

end A191727.P7197436549837113542

/-! ## A191727.P1302813759490912921

`A132827(n)-A338868(A191734(n+1))`
-/

namespace A191727.P1302813759490912921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A338868 (A191734 (n + 1)).toNat

end

end A191727.P1302813759490912921

/-! ## A191727.P6465763184116095737

`A132827(n)-A326292(A269725(n+1))`
-/

namespace A191727.P6465763184116095737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A326292 (A269725 (n + 1)).toNat

end

end A191727.P6465763184116095737

/-! ## A191727.P3556979125306648192

`A132827(n)-A358480(A060187(n+2))`
-/

namespace A191727.P3556979125306648192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A358480 (A060187 (n + 2)).toNat

end

end A191727.P3556979125306648192

/-! ## A191727.P15508261843999400268

`A191537(n+1)-A326292(A269725(n+1))`
-/

namespace A191727.P15508261843999400268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191537 (n + 1) - A326292 (A269725 (n + 1)).toNat

end

end A191727.P15508261843999400268

/-!
# A191733: Dispersion of A047206, (numbers >1 and congruent to 1 or 3 or 4 mod 5), by antidiagonals.

The programs for A191733, there is no canonical definition to state claims against.
-/

/-! ## A191733.P13542801391957883714

`A191428(n+1)+A133010(A085140(n))`
-/

namespace A191733.P13542801391957883714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191428 (n + 1) + A133010 (A085140 n).toNat

end

end A191733.P13542801391957883714

/-! ## A191733.P12667679721175685980

`A191428(n+1)+A133010((n+1)²/∏{p}[n+1, #])`
-/

namespace A191733.P12667679721175685980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191428 (n + 1) + A133010 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A191733.P12667679721175685980

/-! ## A191733.P14780922518856642144

`or(A133010(A132827(n)), A191428(n+1))`
-/

namespace A191733.P14780922518856642144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133010 (A132827 n).toNat) (A191428 (n + 1))

end

end A191733.P14780922518856642144

/-! ## A191733.P687512477267201636

`A191428(n+1)+A055641(A114538(n+1))`
-/

namespace A191733.P687512477267201636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191428 (n + 1) + A055641 (A114538 (n + 1)).toNat

end

end A191733.P687512477267201636

/-! ## A191733.P7523253144297831840

`A191428(A004907(n+2))`
-/

namespace A191733.P7523253144297831840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191428 (A004907 (n + 2)).toNat

end

end A191733.P7523253144297831840

/-!
# A191734: Dispersion of A032793, (numbers >1 and congruent to 1 or 2 or 4 mod 5), by antidiagonals.

The programs for A191734, there is no canonical definition to state claims against.
-/

/-! ## A191734.P1459088719155524791

`A191443(n+1)-A057558(A060439(n+1))`
-/

namespace A191734.P1459088719155524791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (n + 1) - A057558 (A060439 (n + 1)).toNat

end

end A191734.P1459088719155524791

/-! ## A191734.P3318028288471540241

`A191443(n+1)-A133010(A191663(n+1))`
-/

namespace A191734.P3318028288471540241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (n + 1) - A133010 (A191663 (n + 1)).toNat

end

end A191734.P3318028288471540241

/-! ## A191734.P7683859471947761884

`A191443(n+1)-A179801(A191722(n+1))`
-/

namespace A191734.P7683859471947761884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (n + 1) - A179801 (A191722 (n + 1)).toNat

end

end A191734.P7683859471947761884

/-! ## A191734.P13408388187774564519

`A191443(n+1)-A179801(A191728(n+1))`
-/

namespace A191734.P13408388187774564519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (n + 1) - A179801 (A191728 (n + 1)).toNat

end

end A191734.P13408388187774564519

/-! ## A191734.P10918507220878396570

`A191443(A187829(n+1))-A179801(2*n+1)`
-/

namespace A191734.P10918507220878396570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (A187829 (n + 1)).toNat - A179801 (2 * n + 1)

end

end A191734.P10918507220878396570

/-!
# A191737: Dispersion of A047212, (numbers >1 and congruent to 0 or 2 or 4 mod 5), by antidiagonals.

The programs for A191737, there is no canonical definition to state claims against.
-/

/-! ## A191737.P12799901973157355433

`A124762(A225479(n))+A083047(n)`
-/

namespace A191737.P12799901973157355433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A225479 n).toNat + A083047 n

end

end A191737.P12799901973157355433

/-! ## A191737.P5637929233329789695

`A316868(A057977(n))+A083047(n)`
-/

namespace A191737.P5637929233329789695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A057977 n).toNat + A083047 n

end

end A191737.P5637929233329789695

/-! ## A191737.P11291794893647852255

`A248747(A136063(n+1))+A083047(n)`
-/

namespace A191737.P11291794893647852255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248747 (A136063 (n + 1)).toNat + A083047 n

end

end A191737.P11291794893647852255

/-! ## A191737.P10542619698034012123

`A316868(A095060(n+1))+A083047(n)`
-/

namespace A191737.P10542619698034012123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A095060 (n + 1)).toNat + A083047 n

end

end A191737.P10542619698034012123

/-! ## A191737.P10712271882914782263

`A340988(A163963(n+1))+A083047(n)`
-/

namespace A191737.P10712271882914782263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A163963 (n + 1)).toNat + 91) + A083047 n

end

end A191737.P10712271882914782263

/-!
# A191738: Dispersion of A047222, (numbers >1 and congruent to 0 or 2 or 3 mod 5), by antidiagonals.

The programs for A191738, there is no canonical definition to state claims against.
-/

/-! ## A191738.P4419890251424781829

`A035513(n+1)+A025459(A113460(2*(n+2)))`
-/

namespace A191738.P4419890251424781829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + A025459 (A113460 (2 * (n + 2))).toNat

end

end A191738.P4419890251424781829

/-!
# A191740: Dispersion of A047220, (numbers >1 and congruent to 0 or 1 or 3 mod 5), by antidiagonals.

The programs for A191740, there is no canonical definition to state claims against.
-/

/-! ## A191740.P3140417300272152280

`A255122(lt[A007837(n), A254502(n)])`
-/

namespace A191740.P3140417300272152280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191740.P3140417300272152280

/-! ## A191740.P12354582854383717436

`A094708(A303217(n+1)+A048656(n+1))`
-/

namespace A191740.P12354582854383717436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094708 (A303217 (n + 1) + A048656 (n + 1)).toNat

end

end A191740.P12354582854383717436

/-!
# A191743: Smallest numbers with a given factorization pattern in their sequence of divisors.

The programs for A191743, there is no canonical definition to state claims against.
-/

/-! ## A191743.P13403366084613931476

`record[A308115(A125568(n))]`
-/

namespace A191743.P13403366084613931476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308115 (A125568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191743.P13403366084613931476

/-! ## A191743.P9728601023933209459

`A269394(A308115(n+1))`
-/

namespace A191743.P9728601023933209459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A308115 (n + 1)).toNat

end

end A191743.P9728601023933209459

/-! ## A191743.P6098625246693975046

`A269394(A331828(n+1))`
-/

namespace A191743.P6098625246693975046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A331828 (n + 1)).toNat

end

end A191743.P6098625246693975046

/-! ## A191743.P5480537147475910686

`A308115(n+1)%A029813(n)`
-/

namespace A191743.P5480537147475910686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308115 (n + 1)) (A029813 n)

end

end A191743.P5480537147475910686

/-!
# A191745: a(n) = 12*n^3 + 9*n^2 + 2*n.

The programs for A191745, the canonical program `A191745.P10900827607197799470` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191745 has offset 0).

The definition of A191745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n^3+9*n²+2*n` (program `A191745.P10900827607197799470`, by `A191745.P10900827607197799470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191745.P17961278965211495732

`((12*n+9)*n+2)*n`
-/

namespace A191745.P17961278965211495732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9) * n + 2) * n

end

end A191745.P17961278965211495732

namespace A191745

/-- `((12*n+9)*n+2)*n` -/
def P17961278965211495732.Spec : Prop :=
  ∀ n, (P17961278965211495732.a n : ℤ) = A191745 n

theorem P17961278965211495732.correct : P17961278965211495732.Spec := by
  intro n
  simp only [A191745, Nat.add_sub_cancel, A191745.P17961278965211495732.a, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A191745

/-! ## A191745.P10900827607197799470

`12*n^3+9*n²+2*n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191745

/-- `12*n^3+9*n²+2*n` -/
def P10900827607197799470.Spec : Prop :=
  ∀ n, (P10900827607197799470.a n : ℤ) = A191745 n

theorem P10900827607197799470.correct : P10900827607197799470.Spec := by
  intro n
  simp only [A191745]

end A191745

/-! ## A191745.P14387221148654597030

`(A160174(n+1)-1)/4`
-/

namespace A191745.P14387221148654597030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160174 (n + 1) - 1 : ℚ) / 4

end

end A191745.P14387221148654597030

namespace A191745

/-- `(A160174(n+1)-1)/4` -/
def P14387221148654597030.Spec : Prop :=
  ∀ n, P14387221148654597030.a n = (A191745 n : ℚ)

theorem P14387221148654597030.correct : P14387221148654597030.Spec := by
  intro n
  simp only [A191745, Nat.add_sub_cancel, A191745.P14387221148654597030.a, A191745.P10900827607197799470.a, A160174, A160174.P15396951745529520894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191745

/-! ## A191745.P11145340734748121357

`A248575(2*n)/2`
-/

namespace A191745.P11145340734748121357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248575 (2 * n) : ℚ) / 2

end

end A191745.P11145340734748121357

namespace A191745

/-- `A248575(2*n)/2` -/
def P11145340734748121357.Spec : Prop :=
  ∀ n, P11145340734748121357.a n = (A191745 n : ℚ)

end A191745

/-! ## A191745.P8504981606818613067

`(A220443(2*n)+n)/2`
-/

namespace A191745.P8504981606818613067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220443 (2 * n) + (n : ℤ) : ℚ) / 2

end

end A191745.P8504981606818613067

namespace A191745

/-- `(A220443(2*n)+n)/2` -/
def P8504981606818613067.Spec : Prop :=
  ∀ n, P8504981606818613067.a n = (A191745 n : ℚ)

end A191745

/-! ## A191745.P2665838709959410509

`(A169711(Δ[n²])-1)/4`
-/

namespace A191745.P2665838709959410509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169711 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 4

end

end A191745.P2665838709959410509

namespace A191745

/-- `(A169711(Δ[n²])-1)/4` -/
def P2665838709959410509.Spec : Prop :=
  ∀ n, P2665838709959410509.a n = (A191745 n : ℚ)

end A191745

/-! ## A191745.P8015277283396467462

`A026810(A017545(n))`
-/

namespace A191745.P8015277283396467462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A017545 n).toNat

end

end A191745.P8015277283396467462

namespace A191745

/-- `A026810(A017545(n))` -/
def P8015277283396467462.Spec : Prop :=
  ∀ n, P8015277283396467462.a n = A191745 n

end A191745

/-! ## A191745.P3066428003767467054

`A051528(A017557(n))`
-/

namespace A191745.P3066428003767467054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051528 (A017557 n).toNat

end

end A191745.P3066428003767467054

namespace A191745

/-- `A051528(A017557(n))` -/
def P3066428003767467054.Spec : Prop :=
  ∀ n, P3066428003767467054.a n = A191745 n

end A191745

/-! ## A191745.P7505155953684949267

`A026810(A063098(n+1))`
-/

namespace A191745.P7505155953684949267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A063098 (n + 1)).toNat

end

end A191745.P7505155953684949267

namespace A191745

/-- `A026810(A063098(n+1))` -/
def P7505155953684949267.Spec : Prop :=
  ∀ n, P7505155953684949267.a n = A191745 n

end A191745

/-!
# A191746: Partial sums of product of twin primes.

The programs for A191746, the canonical program `A191746.P13832320004408315635` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191746 has offset 1).

The definition of A191746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191746.P13832320004408315635

`∑[A037074(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A191746

/-- `∑[A037074(n+1)]` -/
def P13832320004408315635.Spec : Prop :=
  ∀ n, P13832320004408315635.a n = A191746 (n + 1)

theorem P13832320004408315635.correct : P13832320004408315635.Spec := by
  intro n
  simp only [A191746, Nat.add_sub_cancel]

end A191746

/-! ## A191746.P223383633232550924

`∑[A120875(n+1)+1]`
-/

namespace A191746.P223383633232550924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P223383633232550924

namespace A191746

/-- `∑[A120875(n+1)+1]` -/
def P223383633232550924.Spec : Prop :=
  ∀ n, P223383633232550924.a n = A191746 (n + 1)

theorem P223383633232550924.correct : P223383633232550924.Spec := by
  intro n
  simp only [A191746, Nat.add_sub_cancel, A191746.P223383633232550924.f1, A191746.P223383633232550924.a, A191746.P13832320004408315635.f1, A191746.P13832320004408315635.a, A037074, A037074.P14204517585574046059.a, A120875, A120875.P6924631559376339399.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191746

/-! ## A191746.P5685931207012548236

`∑[A075369(n+1)-1]`
-/

namespace A191746.P5685931207012548236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P5685931207012548236

namespace A191746

/-- `∑[A075369(n+1)-1]` -/
def P5685931207012548236.Spec : Prop :=
  ∀ n, P5685931207012548236.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P5617433964665329742

`∑[A071142(n+1)/2]`
-/

namespace A191746.P5617433964665329742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P5617433964665329742

namespace A191746

/-- `∑[A071142(n+1)/2]` -/
def P5617433964665329742.Spec : Prop :=
  ∀ n, P5617433964665329742.a n = (A191746 (n + 1) : ℚ)

end A191746

/-! ## A191746.P17243902100399231940

`∑[A014574(n+1)²-1]`
-/

namespace A191746.P17243902100399231940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P17243902100399231940

namespace A191746

/-- `∑[A014574(n+1)²-1]` -/
def P17243902100399231940.Spec : Prop :=
  ∀ n, P17243902100399231940.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P16814564399195974271

`∑[(A001359(n+1)+1)²-1]`
-/

namespace A191746.P16814564399195974271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P16814564399195974271

namespace A191746

/-- `∑[(A001359(n+1)+1)²-1]` -/
def P16814564399195974271.Spec : Prop :=
  ∀ n, P16814564399195974271.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P3419315767971457488

`∑[(A144834(n+1)+2)²-1]`
-/

namespace A191746.P3419315767971457488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P3419315767971457488

namespace A191746

/-- `∑[(A144834(n+1)+2)²-1]` -/
def P3419315767971457488.Spec : Prop :=
  ∀ n, P3419315767971457488.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P7042995465389393714

`∑[A001359(n+1)*A006512(n+1)]`
-/

namespace A191746.P7042995465389393714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P7042995465389393714

namespace A191746

/-- `∑[A001359(n+1)*A006512(n+1)]` -/
def P7042995465389393714.Spec : Prop :=
  ∀ n, P7042995465389393714.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P8839666675481268914

`∑[A006512(n+1)/2*A108605(n+1)]`
-/

namespace A191746.P8839666675481268914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) : ℚ) / 2 * (A108605 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P8839666675481268914

namespace A191746

/-- `∑[A006512(n+1)/2*A108605(n+1)]` -/
def P8839666675481268914.Spec : Prop :=
  ∀ n, P8839666675481268914.a n = (A191746 (n + 1) : ℚ)

end A191746

/-! ## A191746.P1343431878423359630

`∑[A134020(n+2)]`
-/

namespace A191746.P1343431878423359630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P1343431878423359630

namespace A191746

/-- `∑[A134020(n+2)]` -/
def P1343431878423359630.Spec : Prop :=
  ∀ n, P1343431878423359630.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P9799975851828193751

`∑[A077800(2*n+1)*A077800(2*(n+1))]`
-/

namespace A191746.P9799975851828193751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) * A077800 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P9799975851828193751

namespace A191746

/-- `∑[A077800(2*n+1)*A077800(2*(n+1))]` -/
def P9799975851828193751.Spec : Prop :=
  ∀ n, P9799975851828193751.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P13390372529703928008

`∑[(1-p?[A000040(n+1)+2])²-1]`
-/

namespace A191746.P13390372529703928008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P13390372529703928008

namespace A191746

/-- `∑[(1-p?[A000040(n+1)+2])²-1]` -/
def P13390372529703928008.Spec : Prop :=
  ∀ n, P13390372529703928008.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P7501249018890941524

`∑[p?[A000040(n+1)-2]*A006512(n+1)]`
-/

namespace A191746.P7501249018890941524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P7501249018890941524

namespace A191746

/-- `∑[p?[A000040(n+1)-2]*A006512(n+1)]` -/
def P7501249018890941524.Spec : Prop :=
  ∀ n, P7501249018890941524.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P3844648684709210188

`∑[A000010(A006512(n+1))²-1]`
-/

namespace A191746.P3844648684709210188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1)).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P3844648684709210188

namespace A191746

/-- `∑[A000010(A006512(n+1))²-1]` -/
def P3844648684709210188.Spec : Prop :=
  ∀ n, P3844648684709210188.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P16203156211420226929

`∑[A124659(n+1)+2]`
-/

namespace A191746.P16203156211420226929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124659 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P16203156211420226929

namespace A191746

/-- `∑[A124659(n+1)+2]` -/
def P16203156211420226929.Spec : Prop :=
  ∀ n, P16203156211420226929.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P17791724320400436975

`∑[A006530(A176810(n+1))²-A176810(n+1)]`
-/

namespace A191746.P17791724320400436975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176810 (n + 1)).toNat ^ 2 - A176810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P17791724320400436975

namespace A191746

/-- `∑[A006530(A176810(n+1))²-A176810(n+1)]` -/
def P17791724320400436975.Spec : Prop :=
  ∀ n, P17791724320400436975.a n = A191746 (n + 1)

end A191746

/-! ## A191746.P9785901611133308615

`∑[A085046(p?[A040976(n+1)]+1)]`
-/

namespace A191746.P9785901611133308615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P9785901611133308615

namespace A191746

/-- `∑[A085046(p?[A040976(n+1)]+1)]` -/
def P9785901611133308615.Spec : Prop :=
  ∀ n, P9785901611133308615.a n = A191746 (n + 1)

end A191746

/-!
# A191747: Concatenation of row entries of the n X n identity matrices.

The programs for A191747, there is no canonical definition to state claims against.
-/

/-! ## A191747.P17825386401604899216

`char[A191748(n)-1]`
-/

namespace A191747.P17825386401604899216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191747.P17825386401604899216

/-! ## A191747.P17037975411462393792

`round(atan(A338819(n+1)))`
-/

namespace A191747.P17037975411462393792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A338819 (n + 1) : ℝ))

end

end A191747.P17037975411462393792

/-! ## A191747.P149391774122801899

`char[A002262(n)+∑[round(sqrt(2*n))]]`
-/

namespace A191747.P149391774122801899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191747.P149391774122801899

/-! ## A191747.P5425919924879764339

`char[A006463(n+1)-(∑[char[∑[n]]]²-n)]`
-/

namespace A191747.P5425919924879764339
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191747.P5425919924879764339

/-! ## A191747.P3415621156637014231

`char[A002260(n+1)+∑[round(sqrt(2*n))]-1]`
-/

namespace A191747.P3415621156637014231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191747.P3415621156637014231

/-! ## A191747.P9267256543322584753

`char[A023443(A191748(n))]`
-/

namespace A191747.P9267256543322584753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191748 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191747.P9267256543322584753

/-! ## A191747.P378418492121935698

`A338819(n+1)/A328806(n)`
-/

namespace A191747.P378418492121935698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338819 (n + 1) : ℚ) / (A328806 n : ℚ)

end

end A191747.P378418492121935698

/-! ## A191747.P11904060678914911888

`A338819(n+1)/A074279(n+1)`
-/

namespace A191747.P11904060678914911888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338819 (n + 1) : ℚ) / (A074279 (n + 1) : ℚ)

end

end A191747.P11904060678914911888

/-! ## A191747.P7883369829287879334

`ceil(A338819(n+1)/A000040(n+1))`
-/

namespace A191747.P7883369829287879334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338819 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A191747.P7883369829287879334

/-! ## A191747.P6307318050021586594

`ceil(A338819(n+1)/A000203(n+1))`
-/

namespace A191747.P6307318050021586594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338819 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A191747.P6307318050021586594

/-!
# A191748: Sequence of all m in {1,2,3,...} such that A191747(m) = 1.

The programs for A191748, there is no canonical definition to state claims against.
-/

/-! ## A191748.P7208590286883739046

`∑[(comp[∑[n]]-n)^(1-char[∑[n]])]`
-/

namespace A191748.P7208590286883739046
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (1 - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191748.P7208590286883739046

/-! ## A191748.P1725340177932839457

`∑[comp[∑[n]]-n]-C(comp[∑[n]]-n, 2)`
-/

namespace A191748.P1725340177932839457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A191748.P1725340177932839457

/-! ## A191748.P17798431864094585924

`∑[round(sqrt(2*n))]+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A191748.P17798431864094585924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ))

end

end A191748.P17798431864094585924

/-! ## A191748.P5261799512862440994

`∑[∑[char[∑[n]]]]-A025581(n)`
-/

namespace A191748.P5261799512862440994
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A025581 n

end

end A191748.P5261799512862440994

/-! ## A191748.P14669392628223756907

`∑[round(sqrt(2*n))]+A002262(n)+1`
-/

namespace A191748.P14669392628223756907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002262 n + 1)

end

end A191748.P14669392628223756907

/-! ## A191748.P2738446435137260008

`A002260(n+1)+∑[round(sqrt(2*n))]`
-/

namespace A191748.P2738446435137260008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191748.P2738446435137260008

/-! ## A191748.P16184326744339052727

`∑[round(sqrt(2*(n+1)))]-A025660(n+1)`
-/

namespace A191748.P16184326744339052727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025660 (n + 1)

end

end A191748.P16184326744339052727

/-! ## A191748.P3320723593062347346

`∑[round(sqrt(2*(n+1)))]+1-A004736(n+1)`
-/

namespace A191748.P3320723593062347346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A004736 (n + 1))

end

end A191748.P3320723593062347346

/-! ## A191748.P13953431434226672456

`A394927(n)+A176270(n)`
-/

namespace A191748.P13953431434226672456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 n + A176270 n

end

end A191748.P13953431434226672456

/-! ## A191748.P15398364858372951523

`A075349(n+1)+A002262(n)`
-/

namespace A191748.P15398364858372951523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (n + 1) + A002262 n

end

end A191748.P15398364858372951523

/-!
# A191750: Dirichlet convolution of A000012 with A007947.

The programs for A191750, the canonical program `A191750.P1006708974149694787` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191750 has offset 1).

The definition of A191750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191750.P4587818208430337965

`∑{d}[n+1, A007947(#)]`
-/

namespace A191750.P4587818208430337965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007947 d

end

end A191750.P4587818208430337965

namespace A191750

/-- `∑{d}[n+1, A007947(#)]` -/
def P4587818208430337965.Spec : Prop :=
  ∀ n, P4587818208430337965.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P3650722965567828277

`∑{d}[n+1, sqrt(A078615(#))]`
-/

namespace A191750.P3650722965567828277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A078615 d : ℝ)

end

end A191750.P3650722965567828277

namespace A191750

/-- `∑{d}[n+1, sqrt(A078615(#))]` -/
def P3650722965567828277.Spec : Prop :=
  ∀ n, P3650722965567828277.a n = (A191750 (n + 1) : ℝ)

end A191750

/-! ## A191750.P4471825099003983166

`∑{d}[n+1, #/A003557(#)]`
-/

namespace A191750.P4471825099003983166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A003557 d : ℚ)

end

end A191750.P4471825099003983166

namespace A191750

/-- `∑{d}[n+1, #/A003557(#)]` -/
def P4471825099003983166.Spec : Prop :=
  ∀ n, P4471825099003983166.a n = (A191750 (n + 1) : ℚ)

end A191750

/-! ## A191750.P16206832324387443761

`∑{d}[n+1, A053166(A053166(#))]`
-/

namespace A191750.P16206832324387443761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053166 (A053166 d).toNat

end

end A191750.P16206832324387443761

namespace A191750

/-- `∑{d}[n+1, A053166(A053166(#))]` -/
def P16206832324387443761.Spec : Prop :=
  ∀ n, P16206832324387443761.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P12703031917933118134

`∑{d}[n+1, A001511(#)*A076109((n+1)/#)]`
-/

namespace A191750.P12703031917933118134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A076109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P12703031917933118134

namespace A191750

/-- `∑{d}[n+1, A001511(#)*A076109((n+1)/#)]` -/
def P12703031917933118134.Spec : Prop :=
  ∀ n, P12703031917933118134.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P1006708974149694787

`∑{d}[n+1, A130054(#)*A176345((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A191750

/-- `∑{d}[n+1, A130054(#)*A176345((n+1)/#)]` -/
def P1006708974149694787.Spec : Prop :=
  ∀ n, P1006708974149694787.a n = A191750 (n + 1)

theorem P1006708974149694787.correct : P1006708974149694787.Spec := by
  intro n
  simp only [A191750, Nat.add_sub_cancel]

end A191750

/-! ## A191750.P477878899583012533

`∑{d}[n+1, A023900(#)*A335032((n+1)/#)]`
-/

namespace A191750.P477878899583012533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A335032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P477878899583012533

namespace A191750

/-- `∑{d}[n+1, A023900(#)*A335032((n+1)/#)]` -/
def P477878899583012533.Spec : Prop :=
  ∀ n, P477878899583012533.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P14295634664247583604

`∑{d}[n+1, A034444(#)*A380163((n+1)/#)]`
-/

namespace A191750.P14295634664247583604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P14295634664247583604

namespace A191750

/-- `∑{d}[n+1, A034444(#)*A380163((n+1)/#)]` -/
def P14295634664247583604.Spec : Prop :=
  ∀ n, P14295634664247583604.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P13707938471702208051

`∑{d}[n+1, A125131(#)*A349694((n+1)/#)]`
-/

namespace A191750.P13707938471702208051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125131 d * A349694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P13707938471702208051

namespace A191750

/-- `∑{d}[n+1, A125131(#)*A349694((n+1)/#)]` -/
def P13707938471702208051.Spec : Prop :=
  ∀ n, P13707938471702208051.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P15923376121588290125

`∑{d}[n+1, A351517(#)*A351518((n+1)/#)]`
-/

namespace A191750.P15923376121588290125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351517 d * A351518 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P15923376121588290125

namespace A191750

/-- `∑{d}[n+1, A351517(#)*A351518((n+1)/#)]` -/
def P15923376121588290125.Spec : Prop :=
  ∀ n, P15923376121588290125.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P13078548701768631086

`∑{d}[n+1, A000034(#-1)*A204455((n+1)/#)]`
-/

namespace A191750.P13078548701768631086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A204455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P13078548701768631086

namespace A191750

/-- `∑{d}[n+1, A000034(#-1)*A204455((n+1)/#)]` -/
def P13078548701768631086.Spec : Prop :=
  ∀ n, P13078548701768631086.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P9331486332080417491

`∑{d}[n+1, A336643(#²)]`
-/

namespace A191750.P9331486332080417491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336643 (d ^ 2)

end

end A191750.P9331486332080417491

namespace A191750

/-- `∑{d}[n+1, A336643(#²)]` -/
def P9331486332080417491.Spec : Prop :=
  ∀ n, P9331486332080417491.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P15288024095020592277

`∑{d}[n+1, A071773(#²)]`
-/

namespace A191750.P15288024095020592277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071773 (d ^ 2)

end

end A191750.P15288024095020592277

namespace A191750

/-- `∑{d}[n+1, A071773(#²)]` -/
def P15288024095020592277.Spec : Prop :=
  ∀ n, P15288024095020592277.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P815749326267936333

`∑{d}[n+1, A089384(#²)]`
-/

namespace A191750.P815749326267936333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089384 (d ^ 2)

end

end A191750.P815749326267936333

namespace A191750

/-- `∑{d}[n+1, A089384(#²)]` -/
def P815749326267936333.Spec : Prop :=
  ∀ n, P815749326267936333.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P18320368929246705622

`∑{d}[n+1, A260458(#²)]`
-/

namespace A191750.P18320368929246705622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A260458 (d ^ 2)

end

end A191750.P18320368929246705622

namespace A191750

/-- `∑{d}[n+1, A260458(#²)]` -/
def P18320368929246705622.Spec : Prop :=
  ∀ n, P18320368929246705622.a n = A191750 (n + 1)

end A191750

/-! ## A191750.P4546715219974981837

`∑{d}[n+1, A302138(#²)]`
-/

namespace A191750.P4546715219974981837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A302138 (d ^ 2)

end

end A191750.P4546715219974981837

namespace A191750

/-- `∑{d}[n+1, A302138(#²)]` -/
def P4546715219974981837.Spec : Prop :=
  ∀ n, P4546715219974981837.a n = A191750 (n + 1)

end A191750

/-!
# A191751: Least k such that (2^n-1)*2^n - k is a prime number.

The programs for A191751, there is no canonical definition to state claims against.
-/

/-! ## A191751.P2228228975596419107

`A289357(∑[2^n])`
-/

namespace A191751.P2228228975596419107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191751.P2228228975596419107

/-! ## A191751.P13115687299060962141

`A289357(A126646(n))%30`
-/

namespace A191751.P13115687299060962141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289357 (A126646 n).toNat) 30

end

end A191751.P13115687299060962141

/-! ## A191751.P546149042314332253

`A289357(A126646(n))+A067169(n)`
-/

namespace A191751.P546149042314332253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (A126646 n).toNat + A067169 (n + 11)

end

end A191751.P546149042314332253

/-! ## A191751.P3050498254625080014

`A289357(A126646(n))+A174617(n)`
-/

namespace A191751.P3050498254625080014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (A126646 n).toNat + A174617 n

end

end A191751.P3050498254625080014

/-! ## A191751.P6464248139079585948

`A353479(n+1)+A289357(A126646(n))`
-/

namespace A191751.P6464248139079585948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (n + 1) + A289357 (A126646 n).toNat

end

end A191751.P6464248139079585948

/-!
# A191752: Numbers of rank 10 in the poset of lunar numbers.

The programs for A191752, there is no canonical definition to state claims against.
-/

/-! ## A191752.P11307766994414057466

`eq[10, A161813(A028310(n))]`
-/

namespace A191752.P11307766994414057466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191752.P11307766994414057466

/-! ## A191752.P9604215522307791771

`A065475(eq[10, A161813(n+1)])`
-/

namespace A191752.P9604215522307791771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191752.P9604215522307791771

/-!
# A191754: Numerators of a companion to the Bernoulli numbers.

The programs for A191754, there is no canonical definition to state claims against.
-/

/-! ## A191754.P10159578631590299437

`A143277(A185234(n))%A008574(n)`
-/

namespace A191754.P10159578631590299437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143277 (A185234 n).toNat) (A008574 n)

end

end A191754.P10159578631590299437

/-! ## A191754.P3528315155960084080

`A157781(A014378(n))%A006018(n+1)`
-/

namespace A191754.P3528315155960084080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157781 (A014378 n).toNat) (A006018 (n + 1))

end

end A191754.P3528315155960084080

/-! ## A191754.P4938679328129405861

`A302917(A115205(n))%A245100(n+1)`
-/

namespace A191754.P4938679328129405861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302917 (A115205 n).toNat) (A245100 (n + 1))

end

end A191754.P4938679328129405861

/-!
# A191755: Number of square binary words: binary words of length 2n obtained by self-shuffling.

The programs for A191755, there is no canonical definition to state claims against.
-/

/-! ## A191755.P10453132946979404063

`A081294(n)-A360412(n)`
-/

namespace A191755.P10453132946979404063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A360412 n

end

end A191755.P10453132946979404063

/-! ## A191755.P4688238986205302702

`Δ[A039301(n)]-A360412(n)`
-/

namespace A191755.P4688238986205302702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360412 n

end

end A191755.P4688238986205302702

/-! ## A191755.P7710537904906718686

`A011782(2*n)-A360412(n)`
-/

namespace A191755.P7710537904906718686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A360412 n

end

end A191755.P7710537904906718686

/-! ## A191755.P10540506049522524582

`A000010(A000302(n))-A360412(n)`
-/

namespace A191755.P10540506049522524582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000302 n).toNat - A360412 n

end

end A191755.P10540506049522524582

/-!
# A191756: Number of n-step four-sided prudent self-avoiding walks.

The programs for A191756, there is no canonical definition to state claims against.
-/

/-! ## A191756.P3468462701177178688

`A008574(A191757(n)-A191758(n))`
-/

namespace A191756.P3468462701177178688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A191757 n - A191758 n).toNat

end

end A191756.P3468462701177178688

/-! ## A191756.P899334724379502559

`A276040(A304962(n))`
-/

namespace A191756.P899334724379502559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276040 (A304962 n).toNat

end

end A191756.P899334724379502559

/-! ## A191756.P12050842660344062052

`A096578(2*(n+1))+∑[A034899(n)]`
-/

namespace A191756.P12050842660344062052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096578 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191756.P12050842660344062052

/-!
# A191757: Number of n-step four-sided prudent self-avoiding walks ending on the top side of their box.

The programs for A191757, there is no canonical definition to state claims against.
-/

/-! ## A191757.P7106047963119739978

`A191758(n)+A002265(A191756(n))`
-/

namespace A191757.P7106047963119739978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191758 n + A002265 (A191756 n).toNat

end

end A191757.P7106047963119739978

/-! ## A191757.P8988816672010074816

`A081315(A339240(n))`
-/

namespace A191757.P8988816672010074816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A339240 n).toNat

end

end A191757.P8988816672010074816

/-! ## A191757.P2208156100022430679

`A087843(A150265(n+1))`
-/

namespace A191757.P2208156100022430679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A150265 (n + 1)).toNat

end

end A191757.P2208156100022430679

/-!
# A191758: Number of n-step four-sided prudent self-avoiding walks ending at the northwest corner of their box.

The programs for A191758, there is no canonical definition to state claims against.
-/

/-! ## A191758.P7969884252290445055

`A191757(n)-A002265(A191756(n))`
-/

namespace A191758.P7969884252290445055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191757 n - A002265 (A191756 n).toNat

end

end A191758.P7969884252290445055

/-! ## A191758.P10171667340785483289

`A038373(n)-A094263(A318961(n+2))`
-/

namespace A191758.P10171667340785483289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 n - A094263 (A318961 (n + 2)).toNat

end

end A191758.P10171667340785483289

/-! ## A191758.P16825211054429786785

`∑[A057142(A000258(n))]`
-/

namespace A191758.P16825211054429786785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A000258 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191758.P16825211054429786785

/-! ## A191758.P10906657205885659560

`∑[A331873(A344614(n))]`
-/

namespace A191758.P10906657205885659560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A344614 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191758.P10906657205885659560

/-!
# A191759: Least significant decimal digit of (2n-1)^2.

The programs for A191759, the canonical program `A191759.P2568732041233689268` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191759 has offset 1).

The definition of A191759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191759.P2568732041233689268

`(2*(n+1)-1)²%10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191759

/-- `(2*(n+1)-1)²%10` -/
def P2568732041233689268.Spec : Prop :=
  ∀ n, P2568732041233689268.a n = A191759 (n + 1)

theorem P2568732041233689268.correct : P2568732041233689268.Spec := by
  intro n
  simp only [A191759, Nat.add_sub_cancel]

end A191759

/-!
# A191760: Digital root of the n-th odd square.

The programs for A191760, the canonical program `A191760.P2138539222358451626` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191760 has offset 1).

The definition of A191760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191760.P2138539222358451626

`a(n-9)` with `a(0)=1, a(1)=9, a(2)=7, a(3)=4, a(4)=9, a(5)=4, a(6)=7, a(7)=9, a(8)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191760

/-- `a(n-9)` -/
def P2138539222358451626.Spec : Prop :=
  ∀ n, (P2138539222358451626.a n : ℤ) = A191760 (n + 1)

theorem P2138539222358451626.correct : P2138539222358451626.Spec := by
  intro n
  simp only [A191760, Nat.add_sub_cancel]

end A191760

/-!
# A191761: Last digit of (2*n)^2. Also period 5: repeat [0, 4, 6, 6, 4].

The programs for A191761, the canonical program `A191761.P12783493625851778029` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191761 has offset 0).

The definition of A191761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191761.P12783493625851778029

`(4*n²)%10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191761

/-- `(4*n²)%10` -/
def P12783493625851778029.Spec : Prop :=
  ∀ n, (P12783493625851778029.a n : ℤ) = A191761 n

theorem P12783493625851778029.correct : P12783493625851778029.Spec := by
  intro n
  simp only [A191761]

end A191761

/-!
# A191762: Digital roots of the nonzero even squares.

The programs for A191762, the canonical program `A191762.P13380782732776081057` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191762 has offset 1).

The definition of A191762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191762.P13380782732776081057

`(4*(n+1)²-1)%9+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191762

/-- `(4*(n+1)²-1)%9+1` -/
def P13380782732776081057.Spec : Prop :=
  ∀ n, P13380782732776081057.a n = A191762 (n + 1)

theorem P13380782732776081057.correct : P13380782732776081057.Spec := by
  intro n
  simp only [A191762, Nat.add_sub_cancel]

end A191762

/-!
# A191763: Integers that cannot be partitioned into a sum of an odd square, an even square and a triangular number.

The programs for A191763, there is no canonical definition to state claims against.
-/

/-! ## A191763.P15501326419906065135

`A191764(n+1)/2`
-/

namespace A191763.P15501326419906065135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191764 (n + 1) : ℚ) / 2

end

end A191763.P15501326419906065135

/-! ## A191763.P9252879164683178802

`floor(A360280(n+1)/8)`
-/

namespace A191763.P9252879164683178802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A360280 (n + 1) : ℚ) / 8⌋

end

end A191763.P9252879164683178802

/-! ## A191763.P9285233047477634455

`floor(A008846(n+1)²/8)`
-/

namespace A191763.P9285233047477634455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008846 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A191763.P9285233047477634455

/-! ## A191763.P7130148701019474467

`C(2*A094178(n+1)+1, 2)`
-/

namespace A191763.P7130148701019474467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A094178 (n + 1) + 1).toNat 2

end

end A191763.P7130148701019474467

/-! ## A191763.P5214842161906929122

`C((A004613(n+2)+1)/2, 2)`
-/

namespace A191763.P5214842161906929122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A004613 (n + 2) + 1 : ℚ) / 2)).toNat 2

end

end A191763.P5214842161906929122

/-!
# A191764: Integers that do not have a partition into a sum of an odd square and two (not necessarily distinct) triangular numbers.

The programs for A191764, the canonical program `A191764.P4997533141840393272` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191764 has offset 1).

The definition of A191764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191764.P7176648086553653353

`(A360280(n+1)-1)/4`
-/

namespace A191764.P7176648086553653353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360280 (n + 1) - 1 : ℚ) / 4

end

end A191764.P7176648086553653353

namespace A191764

/-- `(A360280(n+1)-1)/4` -/
def P7176648086553653353.Spec : Prop :=
  ∀ n, P7176648086553653353.a n = (A191764 (n + 1) : ℚ)

end A191764

/-! ## A191764.P4997533141840393272

`floor((A008846(n+1)/2)²)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A191764

/-- `floor((A008846(n+1)/2)²)` -/
def P4997533141840393272.Spec : Prop :=
  ∀ n, P4997533141840393272.a n = A191764 (n + 1)

theorem P4997533141840393272.correct : P4997533141840393272.Spec := by
  intro n
  simp only [A191764, Nat.add_sub_cancel]

end A191764

/-! ## A191764.P7320937385835786560

`A002620(A008846(n+1))`
-/

namespace A191764.P7320937385835786560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008846 (n + 1)).toNat

end

end A191764.P7320937385835786560

namespace A191764

/-- `A002620(A008846(n+1))` -/
def P7320937385835786560.Spec : Prop :=
  ∀ n, P7320937385835786560.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P6146885125327193898

`A002943(A094178(n+1))`
-/

namespace A191764.P6146885125327193898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 (A094178 (n + 1)).toNat

end

end A191764.P6146885125327193898

namespace A191764

/-- `A002943(A094178(n+1))` -/
def P6146885125327193898.Spec : Prop :=
  ∀ n, P6146885125327193898.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P8146382347192442278

`A002620(A004613(n+2))`
-/

namespace A191764.P8146382347192442278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004613 (n + 2)).toNat

end

end A191764.P8146382347192442278

namespace A191764

/-- `A002620(A004613(n+2))` -/
def P8146382347192442278.Spec : Prop :=
  ∀ n, P8146382347192442278.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P12473819092292931732

`2*A001972(A008846(n+1)-3)`
-/

namespace A191764.P12473819092292931732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001972 (A008846 (n + 1) - 3).toNat

end

end A191764.P12473819092292931732

namespace A191764

/-- `2*A001972(A008846(n+1)-3)` -/
def P12473819092292931732.Spec : Prop :=
  ∀ n, P12473819092292931732.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P574038745820283831

`2*A000217(2*A094178(n+1))`
-/

namespace A191764.P574038745820283831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (2 * A094178 (n + 1)).toNat

end

end A191764.P574038745820283831

namespace A191764

/-- `2*A000217(2*A094178(n+1))` -/
def P574038745820283831.Spec : Prop :=
  ∀ n, P574038745820283831.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P4771576584370504705

`(A008846(n+1)+1)*A094178(n+1)`
-/

namespace A191764.P4771576584370504705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 1) + 1) * A094178 (n + 1)

end

end A191764.P4771576584370504705

namespace A191764

/-- `(A008846(n+1)+1)*A094178(n+1)` -/
def P4771576584370504705.Spec : Prop :=
  ∀ n, P4771576584370504705.a n = A191764 (n + 1)

end A191764

/-! ## A191764.P12371521357630864162

`A008238(A157075(n+1))`
-/

namespace A191764.P12371521357630864162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A157075 (n + 1)).toNat

end

end A191764.P12371521357630864162

namespace A191764

/-- `A008238(A157075(n+1))` -/
def P12371521357630864162.Spec : Prop :=
  ∀ n, P12371521357630864162.a n = A191764 (n + 1)

end A191764

/-!
# A191765: Integers that are a sum of two nonzero triangular numbers and also the sum of two nonzero square numbers.

The programs for A191765, there is no canonical definition to state claims against.
-/

/-! ## A191765.P2736577390658406844

`∩[A000404(n+1), A051533(n+1)]`
-/

namespace A191765.P2736577390658406844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191765.P2736577390658406844

/-! ## A191765.P16676671742390554309

`∩[lt[0, A052344(n)], A000404(n+1)]`
-/

namespace A191765.P16676671742390554309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A191765.P16676671742390554309

/-!
# A191766: Integers that are a sum of two triangular numbers and also the sum of two square numbers (including zeros).

The programs for A191766, there is no canonical definition to state claims against.
-/

/-! ## A191766.P13774763047742870881

`lt[0, A330315(4*n)]`
-/

namespace A191766.P13774763047742870881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191766.P13774763047742870881

/-! ## A191766.P14897462320452408807

`∩[2*n, A140612(n+1)]/4`
-/

namespace A191766.P14897462320452408807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 4

end

end A191766.P14897462320452408807

/-! ## A191766.P9481400117920961153

`record[A131730(A140612(n+1))]`
-/

namespace A191766.P9481400117920961153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A140612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191766.P9481400117920961153

/-! ## A191766.P9153044082022022999

`lt[A070176(n), tanh(A004020(n))]`
-/

namespace A191766.P9153044082022022999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A004020 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A191766.P9153044082022022999

/-! ## A191766.P12730524771926176614

`lt[A070176(n), tanh(A008441(n))]`
-/

namespace A191766.P12730524771926176614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A008441 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A191766.P12730524771926176614

/-! ## A191766.P13135356924720064927

`lt[A070176(n), tanh(A122190(n))]`
-/

namespace A191766.P13135356924720064927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A122190 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A191766.P13135356924720064927

/-! ## A191766.P1107357229863311116

`lt[acot(A004020(n)), A229062(n)]`
-/

namespace A191766.P1107357229863311116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004020 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A191766.P1107357229863311116

/-! ## A191766.P17464920667560151993

`lt[acot(A005883(n)), A229062(n)]`
-/

namespace A191766.P17464920667560151993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005883 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A191766.P17464920667560151993

/-! ## A191766.P2590240356819611417

`lt[acot(A008441(n)), A229062(n)]`
-/

namespace A191766.P2590240356819611417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008441 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A191766.P2590240356819611417

/-! ## A191766.P6220889055497096105

`lt[acot(A052343(n)), A229062(n)]`
-/

namespace A191766.P6220889055497096105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A052343 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A191766.P6220889055497096105

/-!
# A191768: G.f. a(x) satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^A000265(n) where A000265(n) = largest odd divisor of n.

The programs for A191768, there is no canonical definition to state claims against.
-/

/-! ## A191768.P11875198878707270145

`A032128(n+1)-A101605(A052975(n))`
-/

namespace A191768.P11875198878707270145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032128 (n + 1) - A101605 (A052975 n).toNat

end

end A191768.P11875198878707270145

/-! ## A191768.P10292158592913002184

`A032128(n+1)-A186746(A000383(n))`
-/

namespace A191768.P10292158592913002184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032128 (n + 1) - A186746 (A000383 n).toNat

end

end A191768.P10292158592913002184

/-! ## A191768.P3385065217596137256

`A032128(n+1)-A337196(A000660(n))`
-/

namespace A191768.P3385065217596137256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032128 (n + 1) - A337196 (A000660 n).toNat

end

end A191768.P3385065217596137256

/-! ## A191768.P7330618388382587719

`A032128(n+1)-A191938(A191788(n))`
-/

namespace A191768.P7330618388382587719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032128 (n + 1) - A191938 (A191788 n).toNat

end

end A191768.P7330618388382587719

/-! ## A191768.P13737751497729626689

`A032128(n+1)-A337196(A344130(n))`
-/

namespace A191768.P13737751497729626689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032128 (n + 1) - A337196 (A344130 n).toNat

end

end A191768.P13737751497729626689

/-!
# A191769: G.f. A(x) satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^A006519(n) where A006519(n) = highest power of 2 dividing n.

The programs for A191769, there is no canonical definition to state claims against.
-/

/-! ## A191769.P2374643883238832632

`A102406(A004892(n+1))+A078481(n)`
-/

namespace A191769.P2374643883238832632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102406 (A004892 (n + 1)).toNat + A078481 n

end

end A191769.P2374643883238832632

/-! ## A191769.P13616456687840002597

`A023193(A148363(n+1))`
-/

namespace A191769.P13616456687840002597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148363 (n + 1)).toNat

end

end A191769.P13616456687840002597

/-! ## A191769.P11176324470603370937

`A138194(A149827(n+1))`
-/

namespace A191769.P11176324470603370937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A149827 (n + 1)).toNat

end

end A191769.P11176324470603370937

/-! ## A191769.P9860889404771298526

`A066057(A136580(n))+A000669(n+1)`
-/

namespace A191769.P9860889404771298526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (A136580 n).toNat + A000669 (n + 1)

end

end A191769.P9860889404771298526

/-!
# A191770: Lim f(f(...f(n)...)) where f(n) is the fractal sequence A022446.

The programs for A191770, there is no canonical definition to state claims against.
-/

/-! ## A191770.P16444524733260861741

`a(A022446(n)-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A191770.P16444524733260861741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (A022446 n - 1).toNat

end

end A191770.P16444524733260861741

/-! ## A191770.P2244971672277782234

`gcd(A004823(A339620(3*n+5)), A332553(n+2))`
-/

namespace A191770.P2244971672277782234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004823 (A339620 (3 * n + 5)).toNat) (A332553 (n + 2))

end

end A191770.P2244971672277782234

/-! ## A191770.P11765931197633078269

`A036583(A000203(n+2)%A339617(2*n+1))`
-/

namespace A191770.P11765931197633078269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (Int.tmod (A000203 (n + 2)) (A339617 (2 * n + 1))).toNat

end

end A191770.P11765931197633078269

/-! ## A191770.P1164414675673822045

`gcd(A043975(A115374(n+1)), A081617(n+1))`
-/

namespace A191770.P1164414675673822045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043975 (A115374 (n + 1)).toNat) (A081617 (n + 1))

end

end A191770.P1164414675673822045

/-! ## A191770.P17305321817717791009

`A078734(A119967(A328661(n+1)))`
-/

namespace A191770.P17305321817717791009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A119967 (A328661 (n + 1)).toNat).toNat

end

end A191770.P17305321817717791009

/-!
# A191771: Positions of 1 in A191770.

The programs for A191771, there is no canonical definition to state claims against.
-/

/-! ## A191771.P6656389346917189029

`eq[1, A191770(A328661(n+1))]+1`
-/

namespace A191771.P6656389346917189029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A328661 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191771.P6656389346917189029

/-! ## A191771.P1115621090194632481

`lt[A191770(A328661(abs(1-n)+1)), 2]`
-/

namespace A191771.P1115621090194632481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A328661 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191771.P1115621090194632481

/-! ## A191771.P15456892537263766018

`eq[1, A191770(n+1)]+1`
-/

namespace A191771.P15456892537263766018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191771.P15456892537263766018

/-! ## A191771.P8303614674630141357

`record[(n+2)/A191770(n+2)]`
-/

namespace A191771.P8303614674630141357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A191770 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191771.P8303614674630141357

/-! ## A191771.P4198621924247807512

`eq[(1-C(2, n))², A191770(A028310(n))]`
-/

namespace A191771.P4198621924247807512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191771.P4198621924247807512

/-!
# A191772: Positions of 2 in A191770.

The programs for A191772, there is no canonical definition to state claims against.
-/

/-! ## A191772.P6746814156854618349

`eq[2, A191770(A328661(n+1))]+1`
-/

namespace A191772.P6746814156854618349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A328661 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191772.P6746814156854618349

/-! ## A191772.P8435567263617112443

`eq[2, A191770(n+1)]+1`
-/

namespace A191772.P8435567263617112443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191772.P8435567263617112443

/-! ## A191772.P1327660859703588835

`eq[2, A191770(A028310(n))]`
-/

namespace A191772.P1327660859703588835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191772.P1327660859703588835

/-! ## A191772.P15971522413818438678

`A020725(eq[2, A191770(n+1)])`
-/

namespace A191772.P15971522413818438678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191772.P15971522413818438678

/-! ## A191772.P12170437706731478127

`eq[2, A191770(A065033(2*n))]`
-/

namespace A191772.P12170437706731478127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191772.P12170437706731478127

/-!
# A191773: Positions of 3 in A191770.

The programs for A191773, there is no canonical definition to state claims against.
-/

/-! ## A191773.P2049880192524851196

`lt[2, A191770(n+1)]+1`
-/

namespace A191773.P2049880192524851196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191773.P2049880192524851196

/-! ## A191773.P6990864689629472395

`eq[3, A191770(n+2)]+2`
-/

namespace A191773.P6990864689629472395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191773.P6990864689629472395

/-! ## A191773.P3504694896056448169

`lt[2, A191770(A028310(n))]`
-/

namespace A191773.P3504694896056448169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191773.P3504694896056448169

/-! ## A191773.P11876707064919893898

`A020725(lt[2, A191770(n+1)])`
-/

namespace A191773.P11876707064919893898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A191773.P11876707064919893898

/-! ## A191773.P7902365541989719172

`A020725(eq[3, A191770(n+1)])`
-/

namespace A191773.P7902365541989719172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191773.P7902365541989719172

/-!
# A191774: Lim f(f(...f(n)...)) where f(n) is the Farey fractal sequence, A131967.

The programs for A191774, there is no canonical definition to state claims against.
-/

/-! ## A191774.P9773004694750598136

`char[A191776(n+1)-1]+1`
-/

namespace A191774.P9773004694750598136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191776 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A191774.P9773004694750598136

/-! ## A191774.P4748683845900876347

`2-char[A191775(n+1)-1]`
-/

namespace A191774.P4748683845900876347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191775 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A191774.P4748683845900876347

/-! ## A191774.P1632342464214498219

`char[A023443(A191776(n+1))]+1`
-/

namespace A191774.P1632342464214498219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191776 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A191774.P1632342464214498219

/-! ## A191774.P13411517818376053076

`a(A131967(n+1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A191774.P13411517818376053076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A131967 (n + 1) - 1).toNat

end

end A191774.P13411517818376053076

/-! ## A191774.P5369628678570627568

`a(A023443(A131967(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A191774.P5369628678570627568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A023443 (A131967 (n + 1)).toNat).toNat

end

end A191774.P5369628678570627568

/-! ## A191774.P10385534113279094516

`gcd(2, A127199(A131967(n+1)))`
-/

namespace A191774.P10385534113279094516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A127199 (A131967 (n + 1)).toNat)

end

end A191774.P10385534113279094516

/-! ## A191774.P2605909970841930956

`A127199(A131967(char[2]+1+n))%10`
-/

namespace A191774.P2605909970841930956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127199 (A131967 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat) 10

end

end A191774.P2605909970841930956

/-! ## A191774.P17692408474152314209

`2^((A127199(A131967(n+1))+A064353(n+1))%2)`
-/

namespace A191774.P17692408474152314209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A127199 (A131967 (n + 1)).toNat + A064353 (n + 1)) 2 : ℤ)

end

end A191774.P17692408474152314209

/-! ## A191774.P17974173760775127336

`A129761(A131967(A131967(n+1))!)`
-/

namespace A191774.P17974173760775127336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (Nat.factorial (A131967 (A131967 (n + 1)).toNat).toNat)

end

end A191774.P17974173760775127336

/-!
# A191775: Positions of 1 in A191774; complement of A191775.

The programs for A191775, there is no canonical definition to state claims against.
-/

/-! ## A191775.P10851337401548138518

`comp[A191776(n+1)-1]+1`
-/

namespace A191775.P10851337401548138518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191776 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A191775.P10851337401548138518

/-! ## A191775.P12394479267129241714

`comp[A023443(A191776(n+1))]+1`
-/

namespace A191775.P12394479267129241714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191776 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A191775.P12394479267129241714

/-! ## A191775.P17892737724177683052

`comp[∪[A191776(n+1), A049688(n)]]`
-/

namespace A191775.P17892737724177683052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191776 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A191775.P17892737724177683052

/-! ## A191775.P17065937805873930486

`comp[∪[A191776(n+1), A129027(n)]]`
-/

namespace A191775.P17065937805873930486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191776 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129027 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A191775.P17065937805873930486

/-! ## A191775.P3116930757899127237

`comp[A191776(A002260(n+1))%A020904(n+1)]`
-/

namespace A191775.P3116930757899127237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191776 (A002260 (n + 1)).toNat) (A020904 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191775.P3116930757899127237

/-! ## A191775.P9176348898842732479

`eq[1, A191774(n+1)]+1`
-/

namespace A191775.P9176348898842732479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191775.P9176348898842732479

/-! ## A191775.P13502091051605262467

`record[(n+2)/A191774(n+2)]`
-/

namespace A191775.P13502091051605262467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A191774 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191775.P13502091051605262467

/-! ## A191775.P14964285785221277145

`eq[9, dr(9*n)*A191774(A028310(n))]`
-/

namespace A191775.P14964285785221277145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (9 * n : ℤ) : ℤ) * A191774 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191775.P14964285785221277145

/-! ## A191775.P12899180269025932710

`eq[A054977(n), A191774(A028310(n))]`
-/

namespace A191775.P12899180269025932710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191775.P12899180269025932710

/-! ## A191775.P5719571307347257224

`eq[A057427(n), A191774(A028310(n))]`
-/

namespace A191775.P5719571307347257224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191775.P5719571307347257224

/-!
# A191776: Positions of 2 in A191774; complement of A191775.

The programs for A191776, there is no canonical definition to state claims against.
-/

/-! ## A191776.P12496996552074843039

`lt[1, A191774(n+1)]+1`
-/

namespace A191776.P12496996552074843039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191776.P12496996552074843039

/-! ## A191776.P5750216001234880440

`eq[2, A191774(n+2)]+2`
-/

namespace A191776.P5750216001234880440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191776.P5750216001234880440

/-! ## A191776.P16774908826513219281

`lt[1, A191774(A028310(n))]`
-/

namespace A191776.P16774908826513219281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191776.P16774908826513219281

/-! ## A191776.P11443589620983168709

`A020725(lt[1, A191774(n+1)])`
-/

namespace A191776.P11443589620983168709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A191776.P11443589620983168709

/-! ## A191776.P3815847193585663035

`A020725(eq[2, A191774(n+1)])`
-/

namespace A191776.P3815847193585663035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191776.P3815847193585663035

/-!
# A191777: Positions of 1 in A020903; complement of A020904.

The programs for A191777, the canonical program `A191777.P3545865049015846884` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191777 has offset 1).

The definition of A191777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191777.P3545865049015846884

`lt[2*a(A002260(n+1)), 1]` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191777

/-- `lt[2*a(A002260(n+1)), 1]` -/
def P3545865049015846884.Spec : Prop :=
  ∀ n, (P3545865049015846884.a n : ℤ) = A191777 (n + 1)

theorem P3545865049015846884.correct : P3545865049015846884.Spec := by
  intro n
  simp only [A191777, Nat.add_sub_cancel]

end A191777

/-! ## A191777.P2148441961661379552

`eq[1, A020903(n+1)]+1`
-/

namespace A191777.P2148441961661379552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191777.P2148441961661379552

namespace A191777

/-- `eq[1, A020903(n+1)]+1` -/
def P2148441961661379552.Spec : Prop :=
  ∀ n, (P2148441961661379552.a n : ℤ) = A191777 (n + 1)

end A191777

/-! ## A191777.P6216544447908328596

`A020903(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A191777.P6216544447908328596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020903 (a (n - 1) + 1).toNat + a (n - 1)

end

end A191777.P6216544447908328596

namespace A191777

/-- `A020903(a(n-1)+1)+a(n-1)` -/
def P6216544447908328596.Spec : Prop :=
  ∀ n, P6216544447908328596.a n = A191777 (n + 1)

end A191777

/-! ## A191777.P18155898837107660709

`record[(n+1)/A020903(2*n+1-n)]`
-/

namespace A191777.P18155898837107660709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020903 (2 * n + 1 - n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191777.P18155898837107660709

namespace A191777

/-- `record[(n+1)/A020903(2*n+1-n)]` -/
def P18155898837107660709.Spec : Prop :=
  ∀ n, P18155898837107660709.a n = (A191777 (n + 1) : ℚ)

end A191777

/-! ## A191777.P12513097943422610793

`eq[A062157(n)², A020903(A028310(n))]`
-/

namespace A191777.P12513097943422610793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191777.P12513097943422610793

namespace A191777

/-- `eq[A062157(n)², A020903(A028310(n))]` -/
def P12513097943422610793.Spec : Prop :=
  ∀ n, (P12513097943422610793.a n : ℤ) = A191777 (n + 1)

end A191777

/-! ## A191777.P1572798436939085882

`eq[A020903(A028310(n)), A057427(n)]`
-/

namespace A191777.P1572798436939085882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191777.P1572798436939085882

namespace A191777

/-- `eq[A020903(A028310(n)), A057427(n)]` -/
def P1572798436939085882.Spec : Prop :=
  ∀ n, (P1572798436939085882.a n : ℤ) = A191777 (n + 1)

end A191777

/-! ## A191777.P3541275512009383084

`A020915(record[A020914(n)/A020903(n+1)])`
-/

namespace A191777.P3541275512009383084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020914 n : ℚ) / (A020903 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A191777.P3541275512009383084

namespace A191777

/-- `A020915(record[A020914(n)/A020903(n+1)])` -/
def P3541275512009383084.Spec : Prop :=
  ∀ n, P3541275512009383084.a n = A191777 (n + 1)

end A191777

/-! ## A191777.P11333143684723937188

`lt[Δ[A022895(2*n+1)-A020903(n+1)], 1]+1`
-/

namespace A191777.P11333143684723937188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022895 (2 * n + 1) - A020903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A191777.P11333143684723937188

namespace A191777

/-- `lt[Δ[A022895(2*n+1)-A020903(n+1)], 1]+1` -/
def P11333143684723937188.Spec : Prop :=
  ∀ n, (P11333143684723937188.a n : ℤ) = A191777 (n + 1)

end A191777

/-! ## A191777.P11115276625084067325

`record[A002260(A020903(n+1)+A000096(n))]`
-/

namespace A191777.P11115276625084067325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A020903 (n + 1) + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191777.P11115276625084067325

namespace A191777

/-- `record[A002260(A020903(n+1)+A000096(n))]` -/
def P11115276625084067325.Spec : Prop :=
  ∀ n, P11115276625084067325.a n = A191777 (n + 1)

end A191777

/-! ## A191777.P4956288481868484790

`eq[A020903(A027379(n)), A057427(n)]`
-/

namespace A191777.P4956288481868484790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A027379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191777.P4956288481868484790

namespace A191777

/-- `eq[A020903(A027379(n)), A057427(n)]` -/
def P4956288481868484790.Spec : Prop :=
  ∀ n, (P4956288481868484790.a n : ℤ) = A191777 (n + 1)

end A191777

/-!
# A191778: a(1) = 1; a(n)= 2*lcm(n, a(n - 1)).

The programs for A191778, the canonical program `A191778.P4749100232819036078` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191778 has offset 1).

The definition of A191778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*lcm(n+1, a(n-1))` (program `A191778.P4749100232819036078`, by `A191778.P4749100232819036078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191778.P4749100232819036078

`2*lcm(n+1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191778

/-- `2*lcm(n+1, a(n-1))` -/
def P4749100232819036078.Spec : Prop :=
  ∀ n, (P4749100232819036078.a n : ℤ) = A191778 (n + 1)

theorem P4749100232819036078.correct : P4749100232819036078.Spec := by
  intro n
  simp only [A191778, Nat.add_sub_cancel]

end A191778

/-! ## A191778.P15944639431122855109

`lcm(2*a(n-1), ∑[n])` with `a(0)=1, a(1)=4`
-/

namespace A191778.P15944639431122855109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lcm (2 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191778.P15944639431122855109

namespace A191778

/-- `lcm(2*a(n-1), ∑[n])` -/
def P15944639431122855109.Spec : Prop :=
  ∀ n, (P15944639431122855109.a n : ℤ) = A191778 (n + 1)

end A191778

/-! ## A191778.P1883752235324783083

`2*lcm(2*n-(n-1), floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A191778.P1883752235324783083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.lcm ((2 * n : ℤ) - ((n : ℤ) - 1)) (a (n - 1) : ℤ)

end

end A191778.P1883752235324783083

namespace A191778

/-- `2*lcm(2*n-(n-1), floor(a(n-1)))` -/
def P1883752235324783083.Spec : Prop :=
  ∀ n, (P1883752235324783083.a n : ℤ) = A191778 (n + 1)

end A191778

/-! ## A191778.P8090491842355426544

`2*(n+1)/gcd(n+1, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A191778.P8090491842355426544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * a (n - 1))

end

end A191778.P8090491842355426544

namespace A191778

/-- `2*(n+1)/gcd(n+1, a(n-1))*a(n-1)` -/
def P8090491842355426544.Spec : Prop :=
  ∀ n, P8090491842355426544.a n = (A191778 (n + 1) : ℚ)

end A191778

/-! ## A191778.P14208786766668101120

`2*lcm(a(n-1), A002378(n))` with `a(0)=1`
-/

namespace A191778.P14208786766668101120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.lcm (a (n - 1) : ℤ) (A002378 n)

end

end A191778.P14208786766668101120

namespace A191778

/-- `2*lcm(a(n-1), A002378(n))` -/
def P14208786766668101120.Spec : Prop :=
  ∀ n, (P14208786766668101120.a n : ℤ) = A191778 (n + 1)

end A191778

/-! ## A191778.P1208591697449644569

`A151821(n+1)*A217858(n+1)`
-/

namespace A191778.P1208591697449644569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A217858 (n + 1)

end

end A191778.P1208591697449644569

namespace A191778

/-- `A151821(n+1)*A217858(n+1)` -/
def P1208591697449644569.Spec : Prop :=
  ∀ n, P1208591697449644569.a n = A191778 (n + 1)

end A191778

/-! ## A191778.P17327938325360543319

`lcm(A151821(n+1), A191836(n+1))`
-/

namespace A191778.P17327938325360543319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A151821 (n + 1)) (A191836 (n + 1))

end

end A191778.P17327938325360543319

namespace A191778

/-- `lcm(A151821(n+1), A191836(n+1))` -/
def P17327938325360543319.Spec : Prop :=
  ∀ n, (P17327938325360543319.a n : ℤ) = A191778 (n + 1)

end A191778

/-!
# A191781: Triangle read by rows: T(n,k) is the number of length-n left factors of Dyck paths having length of the first ascent equal to k (1 <= k <= n).

The programs for A191781, there is no canonical definition to state claims against.
-/

/-! ## A191781.P8568359211353356561

`A228881(A095133(n+1))`
-/

namespace A191781.P8568359211353356561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228881 (A095133 (n + 1)).toNat

end

end A191781.P8568359211353356561

/-! ## A191781.P1645806902654030616

`A265523(A095133(n+1))%A202010(n+1)`
-/

namespace A191781.P1645806902654030616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265523 (A095133 (n + 1)).toNat) (A202010 (n + 1))

end

end A191781.P1645806902654030616

/-! ## A191781.P5549463679095837689

`A265523(A155092(n+1))%A202010(n+1)`
-/

namespace A191781.P5549463679095837689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265523 (A155092 (n + 1)).toNat) (A202010 (n + 1))

end

end A191781.P5549463679095837689

/-! ## A191781.P12642390170032745367

`A235402(A273349(n+2))`
-/

namespace A191781.P12642390170032745367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A273349 (n + 2)).toNat

end

end A191781.P12642390170032745367

/-! ## A191781.P2270777989305709796

`A095133(n+1)-A368842(A058343(n))`
-/

namespace A191781.P2270777989305709796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1) - A368842 (A058343 n).toNat

end

end A191781.P2270777989305709796

/-!
# A191782: Sum of the lengths of the first ascents in all n-length left factors of Dyck paths.

The programs for A191782, the canonical program `A191782.P6807711045578808194` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191782 has offset 1).

The definition of A191782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191782.P6807711045578808194

`C(n+3, floor((n+1)/2)+1)-C(n+1, floor((n+1)/2))-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191782

/-- `C(n+3, floor((n+1)/2)+1)-C(n+1, floor((n+1)/2))-1` -/
def P6807711045578808194.Spec : Prop :=
  ∀ n, P6807711045578808194.a n = A191782 (n + 1)

theorem P6807711045578808194.correct : P6807711045578808194.Spec := by
  intro n
  simp only [A191782, Nat.add_sub_cancel]

end A191782

/-! ## A191782.P9524612472546296102

`∑[abs(Δ[A026010(n)])]`
-/

namespace A191782.P9524612472546296102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P9524612472546296102

namespace A191782

/-- `∑[abs(Δ[A026010(n)])]` -/
def P9524612472546296102.Spec : Prop :=
  ∀ n, P9524612472546296102.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P3253131751082171391

`A026010(n+1)-1`
-/

namespace A191782.P3253131751082171391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - 1

end

end A191782.P3253131751082171391

namespace A191782

/-- `A026010(n+1)-1` -/
def P3253131751082171391.Spec : Prop :=
  ∀ n, P3253131751082171391.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P5396967931316777302

`A026023(n)+A014495(n+1)`
-/

namespace A191782.P5396967931316777302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n + A014495 (n + 1)

end

end A191782.P5396967931316777302

namespace A191782

/-- `A026023(n)+A014495(n+1)` -/
def P5396967931316777302.Spec : Prop :=
  ∀ n, P5396967931316777302.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P7541280307449954051

`A191307(n+1)+A036256(n)`
-/

namespace A191782.P7541280307449954051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 (n + 1) + A036256 n

end

end A191782.P7541280307449954051

namespace A191782

/-- `A191307(n+1)+A036256(n)` -/
def P7541280307449954051.Spec : Prop :=
  ∀ n, P7541280307449954051.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P16079728745724196420

`∑[A037951(n)+A001405(n+1)]`
-/

namespace A191782.P16079728745724196420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 n + A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P16079728745724196420

namespace A191782

/-- `∑[A037951(n)+A001405(n+1)]` -/
def P16079728745724196420.Spec : Prop :=
  ∀ n, P16079728745724196420.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P15640077891006483225

`∑[A037952(n+2)-A037952(n)]`
-/

namespace A191782.P15640077891006483225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 2) - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P15640077891006483225

namespace A191782

/-- `∑[A037952(n+2)-A037952(n)]` -/
def P15640077891006483225.Spec : Prop :=
  ∀ n, P15640077891006483225.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P12633327365484213672

`A037955(n+1)+A014495(n+2)`
-/

namespace A191782.P12633327365484213672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + A014495 (n + 2)

end

end A191782.P12633327365484213672

namespace A191782

/-- `A037955(n+1)+A014495(n+2)` -/
def P12633327365484213672.Spec : Prop :=
  ∀ n, P12633327365484213672.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P17352323577741979284

`A047171(n+1)+A007007(n+2)`
-/

namespace A191782.P17352323577741979284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 1) + A007007 (n + 2)

end

end A191782.P17352323577741979284

namespace A191782

/-- `A047171(n+1)+A007007(n+2)` -/
def P17352323577741979284.Spec : Prop :=
  ∀ n, P17352323577741979284.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P2097684517428597282

`A047171(n+1)+A037952(n+2)`
-/

namespace A191782.P2097684517428597282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 1) + A037952 (n + 2)

end

end A191782.P2097684517428597282

namespace A191782

/-- `A047171(n+1)+A037952(n+2)` -/
def P2097684517428597282.Spec : Prop :=
  ∀ n, P2097684517428597282.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P4548669226829330853

`A208976(n+1)-A208355(n+1)`
-/

namespace A191782.P4548669226829330853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 1) - A208355 (n + 1)

end

end A191782.P4548669226829330853

namespace A191782

/-- `A208976(n+1)-A208355(n+1)` -/
def P4548669226829330853.Spec : Prop :=
  ∀ n, P4548669226829330853.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P16447872411372190677

`A037955(n+1)+∑[A037952(n+1)]`
-/

namespace A191782.P16447872411372190677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P16447872411372190677

namespace A191782

/-- `A037955(n+1)+∑[A037952(n+1)]` -/
def P16447872411372190677.Spec : Prop :=
  ∀ n, P16447872411372190677.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P16761790740197800993

`A037952(n+1)+A007007(n+2)-1`
-/

namespace A191782.P16761790740197800993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + (A007007 (n + 2) - 1)

end

end A191782.P16761790740197800993

namespace A191782

/-- `A037952(n+1)+A007007(n+2)-1` -/
def P16761790740197800993.Spec : Prop :=
  ∀ n, P16761790740197800993.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P195193850684703610

`A191307(n+1)+A072100(n+2)-1`
-/

namespace A191782.P195193850684703610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 (n + 1) + (A072100 (n + 2) - 1)

end

end A191782.P195193850684703610

namespace A191782

/-- `A191307(n+1)+A072100(n+2)-1` -/
def P195193850684703610.Spec : Prop :=
  ∀ n, P195193850684703610.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P3072483993010127210

`Δ[A208976(n+1)]-1`
-/

namespace A191782.P3072483993010127210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A191782.P3072483993010127210

namespace A191782

/-- `Δ[A208976(n+1)]-1` -/
def P3072483993010127210.Spec : Prop :=
  ∀ n, P3072483993010127210.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P2718765869501107926

`Δ[A050168(n+2)]-1`
-/

namespace A191782.P2718765869501107926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A191782.P2718765869501107926

namespace A191782

/-- `Δ[A050168(n+2)]-1` -/
def P2718765869501107926.Spec : Prop :=
  ∀ n, P2718765869501107926.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P3881732052997349079

`A014495(n+3)-A001405(n+1)`
-/

namespace A191782.P3881732052997349079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 3) - A001405 (n + 1)

end

end A191782.P3881732052997349079

namespace A191782

/-- `A014495(n+3)-A001405(n+1)` -/
def P3881732052997349079.Spec : Prop :=
  ∀ n, P3881732052997349079.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P6978613805526773158

`A001405(n+3)-A051920(n+1)`
-/

namespace A191782.P6978613805526773158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 3) - A051920 (n + 1)

end

end A191782.P6978613805526773158

namespace A191782

/-- `A001405(n+3)-A051920(n+1)` -/
def P6978613805526773158.Spec : Prop :=
  ∀ n, P6978613805526773158.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P14662745949633898013

`A208976(n+2)-A050168(n+2)`
-/

namespace A191782.P14662745949633898013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 2) - A050168 (n + 2)

end

end A191782.P14662745949633898013

namespace A191782

/-- `A208976(n+2)-A050168(n+2)` -/
def P14662745949633898013.Spec : Prop :=
  ∀ n, P14662745949633898013.a n = A191782 (n + 1)

end A191782

/-! ## A191782.P5588723858340173022

`A026023(n+1)-(A037951(n+1)+1)`
-/

namespace A191782.P5588723858340173022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (n + 1) - (A037951 (n + 1) + 1)

end

end A191782.P5588723858340173022

namespace A191782

/-- `A026023(n+1)-(A037951(n+1)+1)` -/
def P5588723858340173022.Spec : Prop :=
  ∀ n, P5588723858340173022.a n = A191782 (n + 1)

end A191782

/-!
# A191786: Number of length n left factors of Dyck paths having no triple-rises (triple-rise = three consecutive (1,1)-steps).

The programs for A191786, there is no canonical definition to state claims against.
-/

/-! ## A191786.P4178363954437857061

`A191785(A022856(n+2))`
-/

namespace A191786.P4178363954437857061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191785 (A022856 (n + 2)).toNat

end

end A191786.P4178363954437857061

/-! ## A191786.P12208067107784032224

`round(sqrt(A246174(C(n+1, 2)+2)))`
-/

namespace A191786.P12208067107784032224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A246174 (Nat.choose (n + 1) 2 + 2) : ℝ))

end

end A191786.P12208067107784032224

/-! ## A191786.P486183791447380315

`A252474(A088518(n+1))`
-/

namespace A191786.P486183791447380315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A088518 (n + 1)).toNat

end

end A191786.P486183791447380315

/-! ## A191786.P14498814505163053091

`ceil(A198896(n)/A130404(n+1))`
-/

namespace A191786.P14498814505163053091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198896 n : ℚ) / (A130404 (n + 1) : ℚ)⌉

end

end A191786.P14498814505163053091

/-! ## A191786.P2036886995526110210

`A351014(A000045(n))+A293937(n)`
-/

namespace A191786.P2036886995526110210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A000045 n).toNat + A293937 n

end

end A191786.P2036886995526110210

/-!
# A191787: Number of triple-rises in all length n left factors of Dyck paths (triple-rise = three consecutive (1,1)-steps).

The programs for A191787, the canonical program `A191787.P17825478627761863050` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191787 has offset 0).

The definition of A191787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191787.P17825478627761863050

`A191524(n)-A191386(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A191787

/-- `A191524(n)-A191386(n)` -/
def P17825478627761863050.Spec : Prop :=
  ∀ n, P17825478627761863050.a n = A191787 n

theorem P17825478627761863050.correct : P17825478627761863050.Spec := by
  intro n
  simp only [A191787]

end A191787

/-! ## A191787.P15908557436323122521

`A191522(n)-A191520(n)`
-/

namespace A191787.P15908557436323122521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n - A191520 n

end

end A191787.P15908557436323122521

namespace A191787

/-- `A191522(n)-A191520(n)` -/
def P15908557436323122521.Spec : Prop :=
  ∀ n, P15908557436323122521.a n = A191787 n

theorem P15908557436323122521.correct : P15908557436323122521.Spec := by
  intro n
  simp only [A191787, Nat.add_sub_cancel, A191787.P15908557436323122521.a, A191787.P17825478627761863050.a, A191386, A191386.P5013181058466511668.a, A191520, A191520.P13265001190735840137.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A191524, A191524.P4442675164963678049.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A140106, A140106.P2723219612803141067.a, A191309, A191309.P18243075712559101294.a, A210736, A210736.P1250447749793702526.a, A258431, A258431.P10302209761239524539.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A026010, A026010.P1065645250072885556.a, A129194, A129194.P14466208917237569440.a, A139262, A139262.P8524009422663711179.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A208355, A208355.P6360215552861429744.a, A208976, A208976.P11107744502091880902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191787

/-! ## A191787.P10492701970772599301

`A191527(n)-(A191386(n)+A191309(n))`
-/

namespace A191787.P10492701970772599301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n - (A191386 n + A191309 n)

end

end A191787.P10492701970772599301

namespace A191787

/-- `A191527(n)-(A191386(n)+A191309(n))` -/
def P10492701970772599301.Spec : Prop :=
  ∀ n, P10492701970772599301.a n = A191787 n

theorem P10492701970772599301.correct : P10492701970772599301.Spec := by
  intro n
  simp only [A191787, Nat.add_sub_cancel, A191787.P10492701970772599301.a, A191787.P17825478627761863050.a, A191309, A191309.P18243075712559101294.a, A191386, A191386.P5013181058466511668.a, A191524, A191524.P4442675164963678049.a, A191527, A191527.P18257187905751201443.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A139262, A139262.P8524009422663711179.a, A258431, A258431.P10302209761239524539.a, A026010, A026010.P1065645250072885556.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, A208355, A208355.P6360215552861429744.a, A208976, A208976.P11107744502091880902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191787

/-! ## A191787.P987368636811560641

`A340568(n)-(A191520(n)+A191309(n))`
-/

namespace A191787.P987368636811560641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 n - (A191520 n + A191309 n)

end

end A191787.P987368636811560641

namespace A191787

/-- `A340568(n)-(A191520(n)+A191309(n))` -/
def P987368636811560641.Spec : Prop :=
  ∀ n, P987368636811560641.a n = A191787 n

theorem P987368636811560641.correct : P987368636811560641.Spec := by
  intro n
  simp only [A191787, Nat.add_sub_cancel, A191787.P987368636811560641.a, A191787.P17825478627761863050.a, A191309, A191309.P18243075712559101294.a, A191386, A191386.P5013181058466511668.a, A191520, A191520.P13265001190735840137.a, A191524, A191524.P4442675164963678049.a, A340568, A340568.P8040469025914050039.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A139262, A139262.P8524009422663711179.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A258431, A258431.P10302209761239524539.a, A026010, A026010.P1065645250072885556.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A140106, A140106.P2723219612803141067.a, A210736, A210736.P1250447749793702526.a, A001405, A001405.P5205018418992951678.a, A002740, A002740.P348049862178716560.a, A022998, A022998.P6062845442791183064.a, A097613, A097613.P17801274350353294577.a, A129194, A129194.P14466208917237569440.a, A208355, A208355.P6360215552861429744.a, A208976, A208976.P11107744502091880902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191787

/-! ## A191787.P13557881704752473645

`A340567(n)-(A191522(n)+A191386(n))`
-/

namespace A191787.P13557881704752473645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340567 n - (A191522 n + A191386 n)

end

end A191787.P13557881704752473645

namespace A191787

/-- `A340567(n)-(A191522(n)+A191386(n))` -/
def P13557881704752473645.Spec : Prop :=
  ∀ n, P13557881704752473645.a n = A191787 n

theorem P13557881704752473645.correct : P13557881704752473645.Spec := by
  intro n
  simp only [A191787, Nat.add_sub_cancel, A191787.P13557881704752473645.a, A191787.P17825478627761863050.a, A191386, A191386.P5013181058466511668.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A191524, A191524.P4442675164963678049.a, A340567, A340567.P15280367653010939046.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A140106, A140106.P2723219612803141067.a, A191309, A191309.P18243075712559101294.a, A210736, A210736.P1250447749793702526.a, A258431, A258431.P10302209761239524539.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A026010, A026010.P1065645250072885556.a, A129194, A129194.P14466208917237569440.a, A139262, A139262.P8524009422663711179.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A208355, A208355.P6360215552861429744.a, A208976, A208976.P11107744502091880902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191787

/-!
# A191789: Number of length n left factors of Dyck paths having no base pyramids.

The programs for A191789, there is no canonical definition to state claims against.
-/

/-! ## A191789.P12474569557528115149

`A191788(∑[ceil(n/2)])`
-/

namespace A191789.P12474569557528115149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191789.P12474569557528115149

/-! ## A191789.P5953869252410844803

`A330117(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A191789.P5953869252410844803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A330117 (a (n - 2)).toNat + a (n - 1)

end

end A191789.P5953869252410844803

/-! ## A191789.P2312128850058609102

`A257639(A001168(n))`
-/

namespace A191789.P2312128850058609102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A001168 n).toNat

end

end A191789.P2312128850058609102

/-! ## A191789.P9066173951469606470

`A210435(A000078(n+2)%A230146(3*n+1))`
-/

namespace A191789.P9066173951469606470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (Int.tmod (A000078 (n + 2)) (A230146 (3 * n + 1))).toNat

end

end A191789.P9066173951469606470

/-! ## A191789.P5311146384981020373

`A111654(A036766(n))`
-/

namespace A191789.P5311146384981020373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A036766 n).toNat

end

end A191789.P5311146384981020373

/-!
# A191790: Number of base pyramids in all length n left factors of Dyck paths.

The programs for A191790, the canonical program `A191790.P8584163521288311520` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191790 has offset 0).

The definition of A191790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191790.P8584163521288311520

`A086905(n)-char[2*n]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191790

/-- `A086905(n)-char[2*n]` -/
def P8584163521288311520.Spec : Prop :=
  ∀ n, P8584163521288311520.a n = A191790 n

theorem P8584163521288311520.correct : P8584163521288311520.Spec := by
  intro n
  simp only [A191790]

end A191790

/-! ## A191790.P14676294017059361008

`A332754(n+1)-A000035(n)`
-/

namespace A191790.P14676294017059361008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (n + 1) - A000035 n

end

end A191790.P14676294017059361008

namespace A191790

/-- `A332754(n+1)-A000035(n)` -/
def P14676294017059361008.Spec : Prop :=
  ∀ n, P14676294017059361008.a n = A191790 n

theorem P14676294017059361008.correct : P14676294017059361008.Spec := by
  intro n
  simp only [A191790, Nat.add_sub_cancel, A191790.P14676294017059361008.a, A191790.P8584163521288311520.f1, A191790.P8584163521288311520.a, A000035, A000035.P2023072528413494694.a, A086905, A086905.P17367873536697088158.f1, A086905.P17367873536697088158.a, A332754, A332754.P10825314309462176498.a, A174783, A174783.P12683386541777257962.f1, A174783.P12683386541777257962.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191790

/-! ## A191790.P17535261338401843157

`A014495(n)-a(n-1)` with `a(0)=0`
-/

namespace A191790.P17535261338401843157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014495 n - a (n - 1)

end

end A191790.P17535261338401843157

namespace A191790

/-- `A014495(n)-a(n-1)` -/
def P17535261338401843157.Spec : Prop :=
  ∀ n, P17535261338401843157.a n = A191790 n

end A191790

/-! ## A191790.P9236696123247418468

`A001405(n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A191790.P9236696123247418468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001405 n - (a (n - 1) + 1)

end

end A191790.P9236696123247418468

namespace A191790

/-- `A001405(n)-(a(n-1)+1)` -/
def P9236696123247418468.Spec : Prop :=
  ∀ n, P9236696123247418468.a n = A191790 n

end A191790

/-! ## A191790.P3095756258163735519

`Δ[A174783(n)]-A059841(n)`
-/

namespace A191790.P3095756258163735519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059841 n

end

end A191790.P3095756258163735519

namespace A191790

/-- `Δ[A174783(n)]-A059841(n)` -/
def P3095756258163735519.Spec : Prop :=
  ∀ n, P3095756258163735519.a n = A191790 n

end A191790

/-! ## A191790.P13794880488995202672

`A000035(n)+Δ[A174783(n)]-1`
-/

namespace A191790.P13794880488995202672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n - 1)

end

end A191790.P13794880488995202672

namespace A191790

/-- `A000035(n)+Δ[A174783(n)]-1` -/
def P13794880488995202672.Spec : Prop :=
  ∀ n, P13794880488995202672.a n = A191790 n

end A191790

/-! ## A191790.P18309422881321264703

`A059841(n)+Δ[A124642(n)]-1`
-/

namespace A191790.P18309422881321264703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (f1 (n + 1) - f1 n - 1)

end

end A191790.P18309422881321264703

namespace A191790

/-- `A059841(n)+Δ[A124642(n)]-1` -/
def P18309422881321264703.Spec : Prop :=
  ∀ n, P18309422881321264703.a n = A191790 n

end A191790

/-! ## A191790.P17821401973869479448

`A174783(n+1)-(A174783(n)+A059841(n))`
-/

namespace A191790.P17821401973869479448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (n + 1) - (A174783 n + A059841 n)

end

end A191790.P17821401973869479448

namespace A191790

/-- `A174783(n+1)-(A174783(n)+A059841(n))` -/
def P17821401973869479448.Spec : Prop :=
  ∀ n, P17821401973869479448.a n = A191790 n

end A191790

/-! ## A191790.P9926350044915763652

`A174783(n+1)-(A174783(n)+A000035(n+1))`
-/

namespace A191790.P9926350044915763652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (n + 1) - (A174783 n + A000035 (n + 1))

end

end A191790.P9926350044915763652

namespace A191790

/-- `A174783(n+1)-(A174783(n)+A000035(n+1))` -/
def P9926350044915763652.Spec : Prop :=
  ∀ n, P9926350044915763652.a n = A191790 n

end A191790

/-! ## A191790.P10106143850744258129

`A000975(n)-Δ[A191394(n)]`
-/

namespace A191790.P10106143850744258129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - (f1 (n + 1) - f1 n)

end

end A191790.P10106143850744258129

namespace A191790

/-- `A000975(n)-Δ[A191394(n)]` -/
def P10106143850744258129.Spec : Prop :=
  ∀ n, P10106143850744258129.a n = A191790 n

end A191790

/-! ## A191790.P11267715707527141465

`A000975(n)+A191394(n)-A191394(n+1)`
-/

namespace A191790.P11267715707527141465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A191394 n - A191394 (n + 1))

end

end A191790.P11267715707527141465

namespace A191790

/-- `A000975(n)+A191394(n)-A191394(n+1)` -/
def P11267715707527141465.Spec : Prop :=
  ∀ n, P11267715707527141465.a n = A191790 n

end A191790

/-! ## A191790.P14320082490388331246

`(A107231(n)-A000217(n+1))/A000217(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A191790.P14320082490388331246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A107231 n - A000217 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) - a (n - 1)

end

end A191790.P14320082490388331246

namespace A191790

/-- `(A107231(n)-A000217(n+1))/A000217(n+1)-a(n-1)` -/
def P14320082490388331246.Spec : Prop :=
  ∀ n, P14320082490388331246.a n = (A191790 n : ℚ)

end A191790

/-! ## A191790.P3421374864480451295

`C(n, floor(n/2))-a(n-1)-1` with `a(0)=0`
-/

namespace A191790.P3421374864480451295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1) - 1

end

end A191790.P3421374864480451295

namespace A191790

/-- `C(n, floor(n/2))-a(n-1)-1` -/
def P3421374864480451295.Spec : Prop :=
  ∀ n, P3421374864480451295.a n = A191790 n

end A191790

/-! ## A191790.P4849165206150981616

`C(n, ∑[char[2*n+1]])-1-a(n-1)` with `a(0)=0`
-/

namespace A191790.P4849165206150981616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 - a (n - 1)

end

end A191790.P4849165206150981616

namespace A191790

/-- `C(n, ∑[char[2*n+1]])-1-a(n-1)` -/
def P4849165206150981616.Spec : Prop :=
  ∀ n, P4849165206150981616.a n = A191790 n

end A191790

/-! ## A191790.P6905490001255168577

`A007318(floor((n+1)²/2))-a(n-1)-1` with `a(0)=0`
-/

namespace A191790.P6905490001255168577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007318 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat - a (n - 1) - 1

end

end A191790.P6905490001255168577

namespace A191790

/-- `A007318(floor((n+1)²/2))-a(n-1)-1` -/
def P6905490001255168577.Spec : Prop :=
  ∀ n, P6905490001255168577.a n = A191790 n

end A191790

/-!
# A191792: Number of length n left factors of Dyck paths having no UDUD's; here U=(1,1) and D=(1,-1).

The programs for A191792, there is no canonical definition to state claims against.
-/

/-! ## A191792.P13912728014530769197

`A094192(A148029(n))-1`
-/

namespace A191792.P13912728014530769197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A148029 n).toNat - 1

end

end A191792.P13912728014530769197

/-! ## A191792.P15749654194916946283

`A153881(3*n+4)+A094192(A148029(n))`
-/

namespace A191792.P15749654194916946283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 4) + A094192 (A148029 n).toNat

end

end A191792.P15749654194916946283

/-! ## A191792.P14629618317655409962

`A208746(A014595(n))`
-/

namespace A191792.P14629618317655409962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208746 (A014595 n).toNat

end

end A191792.P14629618317655409962

/-! ## A191792.P8551180854441727517

`A194343(A148226(n))`
-/

namespace A191792.P8551180854441727517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194343 (A148226 n).toNat

end

end A191792.P8551180854441727517

/-! ## A191792.P15221813061879669177

`A261904(A186236(n+1))`
-/

namespace A191792.P15221813061879669177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (A186236 (n + 1)).toNat

end

end A191792.P15221813061879669177

/-!
# A191794: Number of length n left factors of Dyck paths having no UUDD's; here U=(1,1) and D=(1,-1).

The programs for A191794, there is no canonical definition to state claims against.
-/

/-! ## A191794.P7483502597445787722

`A273905(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A191794.P7483502597445787722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A273905 n + a (n - 2)

end

end A191794.P7483502597445787722

/-! ## A191794.P17460422191364818866

`A191793(∑[ceil(n/4)])`
-/

namespace A191794.P17460422191364818866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191793 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191794.P17460422191364818866

/-! ## A191794.P4948532325971786473

`A375815(A148087(n))`
-/

namespace A191794.P4948532325971786473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A148087 n).toNat

end

end A191794.P4948532325971786473

/-! ## A191794.P3424222346726046941

`A003056(A330053(n)+A302545(n))`
-/

namespace A191794.P3424222346726046941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A330053 n + A302545 n).toNat

end

end A191794.P3424222346726046941

/-! ## A191794.P15615677610161937625

`A191388(A062399(n))-A026831(n)`
-/

namespace A191794.P15615677610161937625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (A062399 n).toNat - A026831 n

end

end A191794.P15615677610161937625

/-!
# A191796: Number of DUU's in all length n left factors of Dyck paths; here U=(1,1) and D=(1,-1).

The programs for A191796, there is no canonical definition to state claims against.
-/

/-! ## A191796.P7926161586525286803

`∑[A224931(A374518(n))]`
-/

namespace A191796.P7926161586525286803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224931 (A374518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191796.P7926161586525286803

/-! ## A191796.P8107098749140176872

`∑[A001405(n)-A000196(A026150(n))]`
-/

namespace A191796.P8107098749140176872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A000196 (A026150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191796.P8107098749140176872

/-! ## A191796.P4757748555104264456

`A344614(A001633(n+1))-A061257(n)`
-/

namespace A191796.P4757748555104264456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344614 (A001633 (n + 1)).toNat - A061257 n

end

end A191796.P4757748555104264456

/-! ## A191796.P17697000741186985747

`A191983(A006981(n))`
-/

namespace A191796.P17697000741186985747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 (A006981 n).toNat

end

end A191796.P17697000741186985747

/-! ## A191796.P4892115952294861737

`A033109(A302180(n))`
-/

namespace A191796.P4892115952294861737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A302180 n).toNat

end

end A191796.P4892115952294861737

/-!
# A191797: a(n) = binomial(F(n), 2) where F(n) = A000045(n).

The programs for A191797, the canonical program `A191797.P12508978915791382376` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191797 has offset 0).

The definition of A191797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n), 2)` (program `A191797.P12508978915791382376`, by `A191797.P12508978915791382376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191797.P12508978915791382376

`C(A000045(n), 2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191797

/-- `C(A000045(n), 2)` -/
def P12508978915791382376.Spec : Prop :=
  ∀ n, (P12508978915791382376.a n : ℤ) = A191797 n

theorem P12508978915791382376.correct : P12508978915791382376.Spec := by
  intro n
  simp only [A191797]

end A191797

/-! ## A191797.P11199995762306725037

`(2*A000045(n)²-A000045(n+4)+3*A000045(n+1))/4`
-/

namespace A191797.P11199995762306725037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 n ^ 2 - A000045 (n + 4) + 3 * A000045 (n + 1) : ℚ) / 4

end

end A191797.P11199995762306725037

namespace A191797

/-- `(2*A000045(n)²-A000045(n+4)+3*A000045(n+1))/4` -/
def P11199995762306725037.Spec : Prop :=
  ∀ n, P11199995762306725037.a n = (A191797 n : ℚ)

end A191797

/-! ## A191797.P14054922042291415525

`A056014(n)-a(n-1)` with `a(0)=0`
-/

namespace A191797.P14054922042291415525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056014 n - a (n - 1)

end

end A191797.P14054922042291415525

namespace A191797

/-- `A056014(n)-a(n-1)` -/
def P14054922042291415525.Spec : Prop :=
  ∀ n, P14054922042291415525.a n = A191797 n

end A191797

/-! ## A191797.P3812486586072985735

`A033192(n)-A000045(n)`
-/

namespace A191797.P3812486586072985735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n - A000045 n

end

end A191797.P3812486586072985735

namespace A191797

/-- `A033192(n)-A000045(n)` -/
def P3812486586072985735.Spec : Prop :=
  ∀ n, P3812486586072985735.a n = A191797 n

end A191797

/-! ## A191797.P5502846671408091114

`A032441(n)-A001611(n)`
-/

namespace A191797.P5502846671408091114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 n - A001611 n

end

end A191797.P5502846671408091114

namespace A191797

/-- `A032441(n)-A001611(n)` -/
def P5502846671408091114.Spec : Prop :=
  ∀ n, P5502846671408091114.a n = A191797 n

end A191797

/-! ## A191797.P15800081925888856544

`A033192(n)-abs(A236191(n))`
-/

namespace A191797.P15800081925888856544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n - |A236191 n|

end

end A191797.P15800081925888856544

namespace A191797

/-- `A033192(n)-abs(A236191(n))` -/
def P15800081925888856544.Spec : Prop :=
  ∀ n, P15800081925888856544.a n = A191797 n

end A191797

/-! ## A191797.P3825873616538907388

`A032441(n)-(A000045(n)+1)`
-/

namespace A191797.P3825873616538907388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 n - (A000045 n + 1)

end

end A191797.P3825873616538907388

namespace A191797

/-- `A032441(n)-(A000045(n)+1)` -/
def P3825873616538907388.Spec : Prop :=
  ∀ n, P3825873616538907388.a n = A191797 n

end A191797

/-! ## A191797.P10749460962988731177

`A033192(n)-A212804(n+1)`
-/

namespace A191797.P10749460962988731177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n - A212804 (n + 1)

end

end A191797.P10749460962988731177

namespace A191797

/-- `A033192(n)-A212804(n+1)` -/
def P10749460962988731177.Spec : Prop :=
  ∀ n, P10749460962988731177.a n = A191797 n

end A191797

/-! ## A191797.P2794597133744772490

`A033192(n)-A103609(2*n)`
-/

namespace A191797.P2794597133744772490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n - A103609 (2 * n)

end

end A191797.P2794597133744772490

namespace A191797

/-- `A033192(n)-A103609(2*n)` -/
def P2794597133744772490.Spec : Prop :=
  ∀ n, P2794597133744772490.a n = A191797 n

end A191797

/-! ## A191797.P15523591960813689065

`A104221(n)*A173173(n)-A004695(n)`
-/

namespace A191797.P15523591960813689065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 n * A173173 n - A004695 n

end

end A191797.P15523591960813689065

namespace A191797

/-- `A104221(n)*A173173(n)-A004695(n)` -/
def P15523591960813689065.Spec : Prop :=
  ∀ n, P15523591960813689065.a n = A191797 n

end A191797

/-! ## A191797.P17054785149610811041

`A000071(n+1)+A033192(n)-A000071(n+2)`
-/

namespace A191797.P17054785149610811041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A033192 n - A000071 (n + 2))

end

end A191797.P17054785149610811041

namespace A191797

/-- `A000071(n+1)+A033192(n)-A000071(n+2)` -/
def P17054785149610811041.Spec : Prop :=
  ∀ n, P17054785149610811041.a n = A191797 n

end A191797

/-! ## A191797.P7945307631745342598

`A382843(n)/4`
-/

namespace A191797.P7945307631745342598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382843 n : ℚ) / 4

end

end A191797.P7945307631745342598

namespace A191797

/-- `A382843(n)/4` -/
def P7945307631745342598.Spec : Prop :=
  ∀ n, P7945307631745342598.a n = (A191797 n : ℚ)

end A191797

/-! ## A191797.P11813774839958715789

`C(abs(A236191(n)), 2)`
-/

namespace A191797.P11813774839958715789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A236191 n|.toNat 2

end

end A191797.P11813774839958715789

namespace A191797

/-- `C(abs(A236191(n)), 2)` -/
def P11813774839958715789.Spec : Prop :=
  ∀ n, (P11813774839958715789.a n : ℤ) = A191797 n

end A191797

/-! ## A191797.P15975790474841549252

`C(sqrt(A007598(n)), 2)`
-/

namespace A191797.P15975790474841549252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat 2

end

end A191797.P15975790474841549252

namespace A191797

/-- `C(sqrt(A007598(n)), 2)` -/
def P15975790474841549252.Spec : Prop :=
  ∀ n, (P15975790474841549252.a n : ℤ) = A191797 n

end A191797

/-! ## A191797.P4888269268433520019

`(A262184(n)-1)/2`
-/

namespace A191797.P4888269268433520019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262184 n - 1 : ℚ) / 2

end

end A191797.P4888269268433520019

namespace A191797

/-- `(A262184(n)-1)/2` -/
def P4888269268433520019.Spec : Prop :=
  ∀ n, P4888269268433520019.a n = (A191797 n : ℚ)

end A191797

/-! ## A191797.P7126546613986026751

`C(A212804(n+1), 2)`
-/

namespace A191797.P7126546613986026751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212804 (n + 1)).toNat 2

end

end A191797.P7126546613986026751

namespace A191797

/-- `C(A212804(n+1), 2)` -/
def P7126546613986026751.Spec : Prop :=
  ∀ n, (P7126546613986026751.a n : ℤ) = A191797 n

end A191797

/-! ## A191797.P17444259006779003130

`C(A324969(n+1), 2)`
-/

namespace A191797.P17444259006779003130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324969 (n + 1)).toNat 2

end

end A191797.P17444259006779003130

namespace A191797

/-- `C(A324969(n+1), 2)` -/
def P17444259006779003130.Spec : Prop :=
  ∀ n, (P17444259006779003130.a n : ℤ) = A191797 n

end A191797

/-! ## A191797.P12387240729412841778

`C(A157725(n)-2, 2)`
-/

namespace A191797.P12387240729412841778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157725 n - 2).toNat 2

end

end A191797.P12387240729412841778

namespace A191797

/-- `C(A157725(n)-2, 2)` -/
def P12387240729412841778.Spec : Prop :=
  ∀ n, (P12387240729412841778.a n : ℤ) = A191797 n

theorem P12387240729412841778.correct : P12387240729412841778.Spec := by
  intro n
  simp only [A191797, Nat.add_sub_cancel, A191797.P12387240729412841778.a, A191797.P12508978915791382376.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191797

/-!
# A191799: G.f. A(x) satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^(n!).

The programs for A191799, there is no canonical definition to state claims against.
-/

/-! ## A191799.P15242333321059122726

`A194964(A330663(n)+A105696(n))`
-/

namespace A191799.P15242333321059122726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A330663 n + A105696 n).toNat

end

end A191799.P15242333321059122726

