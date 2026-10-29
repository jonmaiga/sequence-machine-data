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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A074000: Number of elements of GF(3^n) with trace 0 and subtrace 0.

The programs for A074000, there is no canonical definition to state claims against.
-/

/-! ## A074000.P15695357853963838014

`A074005(n+2)-(A074003(n+1)+A074001(n+1))`
-/

namespace A074000.P15695357853963838014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074005 (n + 2) - (A074003 (n + 1) + A074001 (n + 1))

end

end A074000.P15695357853963838014

/-! ## A074000.P10236735325058911679

`A074004(n+2)-(A074005(n+1)+A074002(n+1))`
-/

namespace A074000.P10236735325058911679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074004 (n + 2) - (A074005 (n + 1) + A074002 (n + 1))

end

end A074000.P10236735325058911679

/-! ## A074000.P3150574106911820316

`A071053(C(A056202(n+1), 3))`
-/

namespace A074000.P3150574106911820316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (Nat.choose (A056202 (n + 1)).toNat 3)

end

end A074000.P3150574106911820316

/-!
# A074001: Number of elements of GF(3^n) with trace 0 and subtrace 1.

The programs for A074001, there is no canonical definition to state claims against.
-/

/-! ## A074001.P15813423410453197801

`A074003(n+2)-(A074004(n+1)+A074002(n+1))`
-/

namespace A074001.P15813423410453197801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074003 (n + 2) - (A074004 (n + 1) + A074002 (n + 1))

end

end A074001.P15813423410453197801

/-! ## A074001.P17350830610262015818

`A074005(n+2)-(A074003(n+1)+A074000(n+1))`
-/

namespace A074001.P17350830610262015818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074005 (n + 2) - (A074003 (n + 1) + A074000 (n + 1))

end

end A074001.P17350830610262015818

/-! ## A074001.P7766135397569427940

`A006233(n)*A085862(A286821(n+1))`
-/

namespace A074001.P7766135397569427940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006233 n * A085862 (A286821 (n + 1)).toNat

end

end A074001.P7766135397569427940

/-!
# A074002: Number of elements of GF(3^n) with trace 0 and subtrace 2.

The programs for A074002, there is no canonical definition to state claims against.
-/

/-! ## A074002.P10018682994027981099

`A074003(n+2)-(A074004(n+1)+A074001(n+1))`
-/

namespace A074002.P10018682994027981099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074003 (n + 2) - (A074004 (n + 1) + A074001 (n + 1))

end

end A074002.P10018682994027981099

/-! ## A074002.P10301762139848004353

`A074004(n+2)-(A074005(n+1)+A074000(n+1))`
-/

namespace A074002.P10301762139848004353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074004 (n + 2) - (A074005 (n + 1) + A074000 (n + 1))

end

end A074002.P10301762139848004353

/-! ## A074002.P3986988461892321646

`A053188(A085292(n+1))*A093003(n+1)`
-/

namespace A074002.P3986988461892321646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A085292 (n + 1)).toNat * A093003 (n + 1)

end

end A074002.P3986988461892321646

/-!
# A074003: Number of elements of GF(3^n) with trace 1 and subtrace 0.

The programs for A074003, the canonical program `A074003.P12866409701345569358` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074003 has offset 1).

The definition of A074003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074003.P12866409701345569358

`27*a(n-5)+18*a(n-4)+9*a(n-3)+3*a(n-2)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=9, a(4)=30`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074003

/-- `27*a(n-5)+18*a(n-4)+9*a(n-3)+3*a(n-2)` -/
def P12866409701345569358.Spec : Prop :=
  ∀ n, (P12866409701345569358.a n : ℤ) = A074003 (n + 1)

theorem P12866409701345569358.correct : P12866409701345569358.Spec := by
  intro n
  simp only [A074003, Nat.add_sub_cancel]

end A074003

/-! ## A074003.P4776434397207892210

`ogf((1+3x^4)/(1-3x^2-9x^3-18x^4-27x^5))`
-/

namespace A074003.P4776434397207892210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 3] [1, 0, -3, -9, -18, -27] n

end

end A074003.P4776434397207892210

namespace A074003

/-- `ogf((1+3x^4)/(1-3x^2-9x^3-18x^4-27x^5))` -/
def P4776434397207892210.Spec : Prop :=
  ∀ n, P4776434397207892210.a n = A074003 (n + 1)

end A074003

/-! ## A074003.P17025742515235448743

`A074005(n+2)-(A074001(n+1)+A074000(n+1))`
-/

namespace A074003.P17025742515235448743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074005 (n + 2) - (A074001 (n + 1) + A074000 (n + 1))

end

end A074003.P17025742515235448743

namespace A074003

/-- `A074005(n+2)-(A074001(n+1)+A074000(n+1))` -/
def P17025742515235448743.Spec : Prop :=
  ∀ n, P17025742515235448743.a n = A074003 (n + 1)

end A074003

/-!
# A074004: Number of elements of GF(3^n) with trace 1 and subtrace 1.

The programs for A074004, there is no canonical definition to state claims against.
-/

/-! ## A074004.P4240132931481549872

`A074003(n+2)-(A074002(n+1)+A074001(n+1))`
-/

namespace A074004.P4240132931481549872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074003 (n + 2) - (A074002 (n + 1) + A074001 (n + 1))

end

end A074004.P4240132931481549872

/-! ## A074004.P2199203799937486810

`A035214((11*n+2)²)*A073951(n+1)`
-/

namespace A074004.P2199203799937486810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 ((11 * n + 2) ^ 2) * A073951 (n + 1)

end

end A074004.P2199203799937486810

/-! ## A074004.P17970221947807860256

`A014709(A048855(n))*A073951(n+1)`
-/

namespace A074004.P17970221947807860256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A048855 n).toNat * A073951 (n + 1)

end

end A074004.P17970221947807860256

/-! ## A074004.P3714124826164769074

`A073951(n+1)*A138253(A005316(n))`
-/

namespace A074004.P3714124826164769074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) * A138253 (A005316 n).toNat

end

end A074004.P3714124826164769074

/-! ## A074004.P13260453153869034038

`A073951(n+1)*A356224(A002013(n))`
-/

namespace A074004.P13260453153869034038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) * A356224 (A002013 n).toNat

end

end A074004.P13260453153869034038

/-!
# A074005: Number of elements of GF(3^n) with trace 1 and subtrace 2.

The programs for A074005, there is no canonical definition to state claims against.
-/

/-! ## A074005.P14231861835278280030

`A074004(n+2)-(A074002(n+1)+A074000(n+1))`
-/

namespace A074005.P14231861835278280030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074004 (n + 2) - (A074002 (n + 1) + A074000 (n + 1))

end

end A074005.P14231861835278280030

/-! ## A074005.P16728074502665891295

`A000081(n+3)-A160731(A092848(3*n))`
-/

namespace A074005.P16728074502665891295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 3) - A160731 (A092848 (3 * n)).toNat

end

end A074005.P16728074502665891295

/-!
# A074007: Number of elements of GF(5^n) with trace 0 and subtrace 1.

The programs for A074007, there is no canonical definition to state claims against.
-/

/-! ## A074007.P15625967900412745040

`lcm(A029919(A305028(n)), A245788(n))`
-/

namespace A074007.P15625967900412745040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029919 (A305028 n).toNat) (A245788 n)

end

end A074007.P15625967900412745040

/-! ## A074007.P5556880037684187034

`A072548(A000009(n)*A072537(2*n+1))`
-/

namespace A074007.P5556880037684187034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (A000009 n * A072537 (2 * n + 1)).toNat

end

end A074007.P5556880037684187034

/-!
# A074008: Number of elements of GF(5^n) with trace 0 and subtrace 2.

The programs for A074008, there is no canonical definition to state claims against.
-/

/-! ## A074008.P3635474094638642348

`xor(A073964(n+1), A241769(A181064(n+1)))`
-/

namespace A074008.P3635474094638642348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073964 (n + 1)) (A241769 (A181064 (n + 1)).toNat)

end

end A074008.P3635474094638642348

/-! ## A074008.P4878194880731665642

`A113233(A000005(n+4))*A369247(2*n+1)`
-/

namespace A074008.P4878194880731665642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A000005 (n + 4)).toNat * A369247 (2 * n + 1)

end

end A074008.P4878194880731665642

/-!
# A074009: Number of elements of GF(5^n) with trace 1 and subtrace 0.

The programs for A074009, there is no canonical definition to state claims against.
-/

/-! ## A074009.P905527137610935514

`((n+1)^3)%∑[3^a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A074009.P905527137610935514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  3 ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074009.P905527137610935514

/-!
# A074010: Number of elements of GF(5^n) with trace 1 and subtrace 1.

The programs for A074010, there is no canonical definition to state claims against.
-/

/-! ## A074010.P16765128049476397852

`A324752(A059173(n))+A110190(n)`
-/

namespace A074010.P16765128049476397852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324752 (A059173 n).toNat + A110190 n

end

end A074010.P16765128049476397852

/-! ## A074010.P7693397690989854611

`A008611(A083318(n)*A300662(n))`
-/

namespace A074010.P7693397690989854611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A083318 n * A300662 n).toNat

end

end A074010.P7693397690989854611

/-!
# A074011: Number of elements of GF(5^n) with trace 1 and subtrace 2.

The programs for A074011, there is no canonical definition to state claims against.
-/

/-! ## A074011.P440166872008188290

`A073967(3*(n+1))%A034474(n+1)`
-/

namespace A074011.P440166872008188290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073967 (3 * (n + 1))) (A034474 (n + 1))

end

end A074011.P440166872008188290

/-! ## A074011.P5465360715209463737

`A073970(A056011(n+1))%A145211(n+1)`
-/

namespace A074011.P5465360715209463737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073970 (A056011 (n + 1)).toNat) (A145211 (n + 1))

end

end A074011.P5465360715209463737

/-!
# A074012: Number of elements of GF(5^n) with trace 1 and subtrace 3.

The programs for A074012, there is no canonical definition to state claims against.
-/

/-! ## A074012.P15441699766974864554

`A113238(a(n-1)+dr(xor(4, 27*n))+1)` with `a(0)=0, a(1)=0`
-/

namespace A074012.P15441699766974864554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A113238 (a (n - 1) + (SequenceMachineLib.digitalRoot (Nat.xor 4 (27 * n) : ℤ) : ℤ) + 1).toNat

end

end A074012.P15441699766974864554

/-!
# A074013: Number of elements of GF(5^n) with trace 1 and subtrace 4.

The programs for A074013, there is no canonical definition to state claims against.
-/

/-! ## A074013.P9248539656210150929

`A340488(Δ[n²]^n)`
-/

namespace A074013.P9248539656210150929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n).toNat

end

end A074013.P9248539656210150929

/-!
# A074014: Number of elements of GF(7^n) with trace 0 and subtrace 0.

The programs for A074014, there is no canonical definition to state claims against.
-/

/-! ## A074014.P17297781919996820020

`A013740(n)%A008458(A041237(n))`
-/

namespace A074014.P17297781919996820020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013740 n) (A008458 (A041237 n).toNat)

end

end A074014.P17297781919996820020

/-! ## A074014.P6856665024037760397

`A008611(A129912(n+1)²*A161052(n+1))`
-/

namespace A074014.P6856665024037760397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A129912 (n + 1) ^ 2 * A161052 (n + 1)).toNat

end

end A074014.P6856665024037760397

/-!
# A074015: Number of elements of GF(7^n) with trace 0 and subtrace 1.

The programs for A074015, there is no canonical definition to state claims against.
-/

/-! ## A074015.P11867900307771665132

`A271231(A074020(n+1))+A074020(n+1)`
-/

namespace A074015.P11867900307771665132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A074020 (n + 1)).toNat + A074020 (n + 1)

end

end A074015.P11867900307771665132

/-! ## A074015.P17865464871326657871

`A074021(n+1)-A002483(A074018(n+1))`
-/

namespace A074015.P17865464871326657871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074021 (n + 1) - A002483 (A074018 (n + 1)).toNat

end

end A074015.P17865464871326657871

/-!
# A074016: Number of elements of GF(7^n) with trace 0 and subtrace 3.

The programs for A074016, there is no canonical definition to state claims against.
-/

/-! ## A074016.P6607850939333552262

`A074018(n+1)+A037213(A074018(n+1))`
-/

namespace A074016.P6607850939333552262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074018 (n + 1) + A037213 (A074018 (n + 1)).toNat

end

end A074016.P6607850939333552262

/-! ## A074016.P8750464614634064115

`A074021(n+1)-A002483(A074020(n+1))-A002483(n)`
-/

namespace A074016.P8750464614634064115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074021 (n + 1) - A002483 (A074020 (n + 1)).toNat - A002483 n

end

end A074016.P8750464614634064115

/-!
# A074017: Number of elements of GF(7^n) with trace 1 and subtrace 0.

The programs for A074017, there is no canonical definition to state claims against.
-/

/-! ## A074017.P8145213672407162474

`A185018(A003463(n))+A074021(n+1)`
-/

namespace A074017.P8145213672407162474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 (A003463 n).toNat + A074021 (n + 1)

end

end A074017.P8145213672407162474

/-! ## A074017.P15977860897411876304

`A366390(A000168(n))+A074021(n+1)`
-/

namespace A074017.P15977860897411876304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366390 (A000168 n).toNat + A074021 (n + 1)

end

end A074017.P15977860897411876304

/-!
# A074018: Number of elements of GF(7^n) with trace 1 and subtrace 1.

The programs for A074018, there is no canonical definition to state claims against.
-/

/-! ## A074018.P10623453427630161833

`A232897(A001514(n)-A193231(n))`
-/

namespace A074018.P10623453427630161833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232897 (A001514 n - A193231 n).toNat

end

end A074018.P10623453427630161833

/-! ## A074018.P3626724424679571668

`A004526(A074019(n+1)+A074016(n+1))`
-/

namespace A074018.P3626724424679571668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074019 (n + 1) + A074016 (n + 1)).toNat

end

end A074018.P3626724424679571668

/-!
# A074019: Number of elements of GF(7^n) with trace 1 and subtrace 2.

The programs for A074019, there is no canonical definition to state claims against.
-/

/-! ## A074019.P3283755147931562628

`2*A248567((n-1)*a(n-1)/floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A074019.P3283755147931562628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * A248567 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)))).toNat

end

end A074019.P3283755147931562628

/-!
# A074020: Number of elements of GF(7^n) with trace 1 and subtrace 3.

The programs for A074020, there is no canonical definition to state claims against.
-/

/-! ## A074020.P804038828719354151

`A110654(A074019(n+1)+A074015(n+1))`
-/

namespace A074020.P804038828719354151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A074019 (n + 1) + A074015 (n + 1)).toNat

end

end A074020.P804038828719354151

/-!
# A074021: Number of elements of GF(7^n) with trace 1 and subtrace 4.

The programs for A074021, there is no canonical definition to state claims against.
-/

/-! ## A074021.P9205978574442051301

`A074017(n+1)-A185018(A003463(n))`
-/

namespace A074021.P9205978574442051301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074017 (n + 1) - A185018 (A003463 n).toNat

end

end A074021.P9205978574442051301

/-! ## A074021.P3888099167834369118

`xor(A074017(n+1), A105700(A000108(n+3)))`
-/

namespace A074021.P3888099167834369118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074017 (n + 1)) (A105700 (A000108 (n + 3)).toNat)

end

end A074021.P3888099167834369118

/-!
# A074022: Number of elements of GF(7^n) with trace 1 and subtrace 5.

The programs for A074022, there is no canonical definition to state claims against.
-/

/-! ## A074022.P6130104678218289674

`A055254(A007677(n)^4)`
-/

namespace A074022.P6130104678218289674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 (A007677 n ^ 4).toNat

end

end A074022.P6130104678218289674

/-!
# A074023: Number of elements of GF(7^n) with trace 1 and subtrace 6.

The programs for A074023, there is no canonical definition to state claims against.
-/

/-! ## A074023.P18346390624124700080

`A055400(A287625(∑[n]))`
-/

namespace A074023.P18346390624124700080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A287625 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074023.P18346390624124700080

/-!
# A074027: Number of binary Lyndon words of length n with trace 0 and subtrace 0 over Z_2.

The programs for A074027, there is no canonical definition to state claims against.
-/

/-! ## A074027.P11003537938472721688

`A042979(n+1)+A042980(n+1)-A074028(n+1)`
-/

namespace A074027.P11003537938472721688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042979 (n + 1) + (A042980 (n + 1) - A074028 (n + 1))

end

end A074027.P11003537938472721688

/-! ## A074027.P9380572103854755451

`A051841(n+1)-A074028(n+1)`
-/

namespace A074027.P9380572103854755451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 1) - A074028 (n + 1)

end

end A074027.P9380572103854755451

/-! ## A074027.P10273053512173379245

`A059966(n+1)-(A074028(n+1)+A056303(n+1))`
-/

namespace A074027.P10273053512173379245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - (A074028 (n + 1) + A056303 (n + 1))

end

end A074027.P10273053512173379245

/-! ## A074027.P14510220150526307227

`Δ[A173270(n)-A173278(n)]-A074028(n+1)`
-/

namespace A074027.P14510220150526307227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n - A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074028 (n + 1)

end

end A074027.P14510220150526307227

/-! ## A074027.P1784881714002334498

`A327693(A133263(n))-A074028(n+1)`
-/

namespace A074027.P1784881714002334498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A133263 n).toNat - A074028 (n + 1)

end

end A074027.P1784881714002334498

/-!
# A074028: Number of binary Lyndon words of length n with trace 0 and subtrace 1 over Z_2.

The programs for A074028, there is no canonical definition to state claims against.
-/

/-! ## A074028.P9287267105168746114

`A042979(n+1)+A042980(n+1)-A074027(n+1)`
-/

namespace A074028.P9287267105168746114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042979 (n + 1) + (A042980 (n + 1) - A074027 (n + 1))

end

end A074028.P9287267105168746114

/-! ## A074028.P1856964103279338704

`A051841(n+1)-A074027(n+1)`
-/

namespace A074028.P1856964103279338704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 1) - A074027 (n + 1)

end

end A074028.P1856964103279338704

/-! ## A074028.P18284596153522909939

`A059966(n+1)-(A074027(n+1)+A056303(n+1))`
-/

namespace A074028.P18284596153522909939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - (A074027 (n + 1) + A056303 (n + 1))

end

end A074028.P18284596153522909939

/-! ## A074028.P14212446096020292985

`Δ[A173270(n)-A173278(n)]-A074027(n+1)`
-/

namespace A074028.P14212446096020292985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n - A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074027 (n + 1)

end

end A074028.P14212446096020292985

/-! ## A074028.P10285258208265018875

`A327693(A133263(n))-A074027(n+1)`
-/

namespace A074028.P10285258208265018875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A133263 n).toNat - A074027 (n + 1)

end

end A074028.P10285258208265018875

/-!
# A074029: Number of binary Lyndon words of length n with trace 1 and subtrace 0 over Z_2.

The programs for A074029, there is no canonical definition to state claims against.
-/

/-! ## A074029.P9638363539911067690

`A042981(n+1)+A042982(n+1)-A074030(n+1)`
-/

namespace A074029.P9638363539911067690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (n + 1) + (A042982 (n + 1) - A074030 (n + 1))

end

end A074029.P9638363539911067690

/-! ## A074029.P13090470245307809694

`A000048(n+1)-A074030(n+1)`
-/

namespace A074029.P13090470245307809694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - A074030 (n + 1)

end

end A074029.P13090470245307809694

/-! ## A074029.P1162200121877445428

`Δ[A173278(n)]-A074030(n+1)`
-/

namespace A074029.P1162200121877445428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074030 (n + 1)

end

end A074029.P1162200121877445428

/-! ## A074029.P6247294024820200480

`A053633(A000124(n))-A074030(n+1)`
-/

namespace A074029.P6247294024820200480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000124 n).toNat - A074030 (n + 1)

end

end A074029.P6247294024820200480

/-! ## A074029.P3060860938995283691

`A053633(A092530(n))-A074030(n+1)`
-/

namespace A074029.P3060860938995283691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A092530 n).toNat - A074030 (n + 1)

end

end A074029.P3060860938995283691

/-! ## A074029.P13851564822841605308

`A053633(A000096(n))-A074030(n+1)`
-/

namespace A074029.P13851564822841605308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000096 n).toNat - A074030 (n + 1)

end

end A074029.P13851564822841605308

/-!
# A074030: Number of binary Lyndon words of length n with trace 1 and subtrace 1 over Z_2.

The programs for A074030, there is no canonical definition to state claims against.
-/

/-! ## A074030.P2706684207257251204

`A042981(n+1)+A042982(n+1)-A074029(n+1)`
-/

namespace A074030.P2706684207257251204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (n + 1) + (A042982 (n + 1) - A074029 (n + 1))

end

end A074030.P2706684207257251204

/-! ## A074030.P2518799944808541766

`A000048(n+1)-A074029(n+1)`
-/

namespace A074030.P2518799944808541766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - A074029 (n + 1)

end

end A074030.P2518799944808541766

/-! ## A074030.P3650676443427578530

`Δ[A173278(n)]-A074029(n+1)`
-/

namespace A074030.P3650676443427578530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074029 (n + 1)

end

end A074030.P3650676443427578530

/-! ## A074030.P7557488551757985045

`A053633(A000124(n))-A074029(n+1)`
-/

namespace A074030.P7557488551757985045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000124 n).toNat - A074029 (n + 1)

end

end A074030.P7557488551757985045

/-! ## A074030.P9208373832324687148

`A053633(A092530(n))-A074029(n+1)`
-/

namespace A074030.P9208373832324687148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A092530 n).toNat - A074029 (n + 1)

end

end A074030.P9208373832324687148

/-! ## A074030.P4995444748071503292

`A053633(A000096(n))-A074029(n+1)`
-/

namespace A074030.P4995444748071503292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000096 n).toNat - A074029 (n + 1)

end

end A074030.P4995444748071503292

/-!
# A074031: Number of degree-n irreducible polynomials over GF(4) with trace 0 and subtrace 0.

The programs for A074031, there is no canonical definition to state claims against.
-/

/-! ## A074031.P8150115386111209062

`A054661(n+1)-3*A074032(n+1)`
-/

namespace A074031.P8150115386111209062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054661 (n + 1) - 3 * A074032 (n + 1)

end

end A074031.P8150115386111209062

/-! ## A074031.P4660851995250622756

`A074446(n+1)%p?[A247311(n)]`
-/

namespace A074031.P4660851995250622756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074446 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A074031.P4660851995250622756

/-! ## A074031.P8147295885477096121

`C(A074446(n+1), A008477(n+1)²)`
-/

namespace A074031.P8147295885477096121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074446 (n + 1)).toNat (A008477 (n + 1) ^ 2).toNat

end

end A074031.P8147295885477096121

/-!
# A074032: Number of degree-n irreducible polynomials over GF(4) with trace 0 and subtrace 1.

The programs for A074032, there is no canonical definition to state claims against.
-/

/-! ## A074032.P7382662994977921202

`A042979(2*(n+1))/2`
-/

namespace A074032.P7382662994977921202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042979 (2 * (n + 1)) : ℚ) / 2

end

end A074032.P7382662994977921202

/-! ## A074032.P961957130674583893

`A074027(2*(n+1))/2`
-/

namespace A074032.P961957130674583893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074027 (2 * (n + 1)) : ℚ) / 2

end

end A074032.P961957130674583893

/-! ## A074032.P4623899314526922726

`(A054661(n+1)-A074031(n+1))/3`
-/

namespace A074032.P4623899314526922726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) - A074031 (n + 1) : ℚ) / 3

end

end A074032.P4623899314526922726

/-! ## A074032.P12002342327571588438

`(A051841(2*(n+1))-A042980(2*(n+1)))/2`
-/

namespace A074032.P12002342327571588438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051841 (2 * (n + 1)) - A042980 (2 * (n + 1)) : ℚ) / 2

end

end A074032.P12002342327571588438

/-!
# A074033: Number of degree-n irreducible polynomials over GF(4) with trace 1 and subtrace 0.

The programs for A074033, there is no canonical definition to state claims against.
-/

/-! ## A074033.P15618550536267442809

`A042982(2*(n+1))-A074035(n+1)`
-/

namespace A074033.P15618550536267442809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (2 * (n + 1)) - A074035 (n + 1)

end

end A074033.P15618550536267442809

/-! ## A074033.P10252210362685765431

`A074032(n+1)+A074448(n+1)-A074035(n+1)`
-/

namespace A074033.P10252210362685765431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074032 (n + 1) + (A074448 (n + 1) - A074035 (n + 1))

end

end A074033.P10252210362685765431

/-! ## A074033.P15876795918121898972

`A074446(n+1)+A074447(n+1)-A074034(n+1)`
-/

namespace A074033.P15876795918121898972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074446 (n + 1) + (A074447 (n + 1) - A074034 (n + 1))

end

end A074033.P15876795918121898972

/-! ## A074033.P2566909436095958131

`A074034(n+1)+A074448(n+1)-A074449(n+1)`
-/

namespace A074033.P2566909436095958131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074034 (n + 1) + (A074448 (n + 1) - A074449 (n + 1))

end

end A074033.P2566909436095958131

/-!
# A074034: Number of degree-n irreducible polynomials over GF(4) with trace 1 and subtrace 1.

The programs for A074034, there is no canonical definition to state claims against.
-/

/-! ## A074034.P10972237615441938956

`A042981(Δ[A202018(n)])-A074035(n+1)`
-/

namespace A074034.P10972237615441938956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (f1 (n + 1) - f1 n).toNat - A074035 (n + 1)

end

end A074034.P10972237615441938956

/-! ## A074034.P1351145298053327737

`A042981(A005843(n+1))-A074035(n+1)`
-/

namespace A074034.P1351145298053327737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (A005843 (n + 1)).toNat - A074035 (n + 1)

end

end A074034.P1351145298053327737

/-! ## A074034.P2067377483758990490

`A074032(n+1)+A074449(n+1)-A074035(n+1)`
-/

namespace A074034.P2067377483758990490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074032 (n + 1) + (A074449 (n + 1) - A074035 (n + 1))

end

end A074034.P2067377483758990490

/-!
# A074035: Let a = RootOf( x^2+x+1 ) and b = 1+a. Number of degree-n irreducible polynomials over GF(4) with trace 1 and subtrace a.

The programs for A074035, there is no canonical definition to state claims against.
-/

/-! ## A074035.P1323572550321953111

`A042981(2*(n+1))-A074034(n+1)`
-/

namespace A074035.P1323572550321953111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (2 * (n + 1)) - A074034 (n + 1)

end

end A074035.P1323572550321953111

/-! ## A074035.P8313931836460045124

`A042982(2*(n+1))-A074033(n+1)`
-/

namespace A074035.P8313931836460045124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (2 * (n + 1)) - A074033 (n + 1)

end

end A074035.P8313931836460045124

/-! ## A074035.P1609291959752593501

`A042980(2*(n+1))-A074447(n+1)`
-/

namespace A074035.P1609291959752593501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (2 * (n + 1)) - A074447 (n + 1)

end

end A074035.P1609291959752593501

/-! ## A074035.P12212113695950936765

`A074032(n+1)+A074448(n+1)-A074033(n+1)`
-/

namespace A074035.P12212113695950936765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074032 (n + 1) + (A074448 (n + 1) - A074033 (n + 1))

end

end A074035.P12212113695950936765

/-!
# A074036: Sum of the primes from the smallest prime factor of n to the largest prime factor of n.

The programs for A074036, there is no canonical definition to state claims against.
-/

/-! ## A074036.P4439930427455673772

`A008472(n+1)+∑{p}[A137795(n+1), #]`
-/

namespace A074036.P4439930427455673772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A074036.P4439930427455673772

/-! ## A074036.P12613599020313784809

`∑{p}[A072941(n+1), #]`
-/

namespace A074036.P12613599020313784809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A074036.P12613599020313784809

/-! ## A074036.P5267865640949788124

`∑{p}[(n+1)*A137795(n+1), #]`
-/

namespace A074036.P5267865640949788124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A137795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A074036.P5267865640949788124

/-! ## A074036.P6808166686035656310

`∑{p}[lcm(Δ[A001057(n)], A137795(n+1)), #]`
-/

namespace A074036.P6808166686035656310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f2 (n + 1) - f2 n) (A137795 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A074036.P6808166686035656310

/-! ## A074036.P15039539846195788087

`A008472(n+1)+A008472(A137795(n+1))`
-/

namespace A074036.P15039539846195788087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A008472 (A137795 (n + 1)).toNat

end

end A074036.P15039539846195788087

/-!
# A074037: Sum of the composites between the smallest prime factor of n and the largest prime factor of n.

The programs for A074037, there is no canonical definition to state claims against.
-/

/-! ## A074037.P3134472929105835428

`A057427(n*(12*n+3))*A101256(A226040(n))`
-/

namespace A074037.P3134472929105835428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n * (12 * n + 3)) * A101256 (A226040 n).toNat

end

end A074037.P3134472929105835428

/-! ## A074037.P13586191799794495275

`A101256(A226040(n))^A014963(A063581(n))`
-/

namespace A074037.P13586191799794495275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101256 (A226040 n).toNat : ℚ) ^ (A014963 (A063581 n).toNat : ℤ)

end

end A074037.P13586191799794495275

/-! ## A074037.P12058108770226800734

`A007318(A144269(n+1))*A101256(A226040(n))`
-/

namespace A074037.P12058108770226800734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A144269 (n + 1)).toNat * A101256 (A226040 n).toNat

end

end A074037.P12058108770226800734

/-! ## A074037.P13637028641854398782

`A101256(A226040(n))%A000005(A002419(n+1))`
-/

namespace A074037.P13637028641854398782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101256 (A226040 n).toNat) (A000005 (A002419 (n + 1)).toNat)

end

end A074037.P13637028641854398782

/-!
# A074038: If n is the k-th single (i.e., non-twin) prime then a(n) = k, otherwise a(n) = 0.

The programs for A074038, there is no canonical definition to state claims against.
-/

/-! ## A074038.P13955832691237870322

`A139352(and(A048598(n+1), A129950(n+1)))`
-/

namespace A074038.P13955832691237870322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.land (A048598 (n + 1)) (A129950 (n + 1))).toNat

end

end A074038.P13955832691237870322

/-! ## A074038.P14799277716697796091

`A102669(and(A129950(n+1), A302322(n+1)))`
-/

namespace A074038.P14799277716697796091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Int.land (A129950 (n + 1)) (A302322 (n + 1))).toNat

end

end A074038.P14799277716697796091

/-! ## A074038.P14371889634515309921

`A102669(and(A129950(n+1), A350377(n+1)))`
-/

namespace A074038.P14371889634515309921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Int.land (A129950 (n + 1)) (A350377 (n + 1))).toNat

end

end A074038.P14371889634515309921

/-! ## A074038.P14200672415299881145

`A072273(and(A241507(n)+2, A129950(n+1))+1)`
-/

namespace A074038.P14200672415299881145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (Int.land (A241507 n + 2) (A129950 (n + 1)) + 1).toNat

end

end A074038.P14200672415299881145

/-! ## A074038.P11304456144064242536

`A303989(n)%A305432(n)`
-/

namespace A074038.P11304456144064242536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303989 n) (A305432 n)

end

end A074038.P11304456144064242536

/-!
# A074039: If (n, n+2) is the k-th twin prime pair then k else 0.

The programs for A074039, the canonical program `A074039.P2969745360173369401` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074039 has offset 1).

The definition of A074039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074039.P2969745360173369401

`A071538(n+1)*A353463(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074039

/-- `A071538(n+1)*A353463(n+1)` -/
def P2969745360173369401.Spec : Prop :=
  ∀ n, P2969745360173369401.a n = A074039 (n + 1)

theorem P2969745360173369401.correct : P2969745360173369401.Spec := by
  intro n
  simp only [A074039, Nat.add_sub_cancel]

end A074039

/-! ## A074039.P14368154858339940046

`A071538(n+1)*A353464(n+3)`
-/

namespace A074039.P14368154858339940046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) * A353464 (n + 3)

end

end A074039.P14368154858339940046

namespace A074039

/-- `A071538(n+1)*A353464(n+3)` -/
def P14368154858339940046.Spec : Prop :=
  ∀ n, P14368154858339940046.a n = A074039 (n + 1)

end A074039

/-! ## A074039.P2444858468363549845

`(A071702(n+1)+A071701(n+1))*A353464(n+3)`
-/

namespace A074039.P2444858468363549845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071702 (n + 1) + A071701 (n + 1)) * A353464 (n + 3)

end

end A074039.P2444858468363549845

namespace A074039

/-- `(A071702(n+1)+A071701(n+1))*A353464(n+3)` -/
def P2444858468363549845.Spec : Prop :=
  ∀ n, P2444858468363549845.a n = A074039 (n + 1)

end A074039

/-! ## A074039.P9365846649583258025

`floor(sqrt(A154725(∑[2*(n+1)])))`
-/

namespace A074039.P9365846649583258025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A154725 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A074039.P9365846649583258025

namespace A074039

/-- `floor(sqrt(A154725(∑[2*(n+1)])))` -/
def P9365846649583258025.Spec : Prop :=
  ∀ n, P9365846649583258025.a n = A074039 (n + 1)

end A074039

/-! ## A074039.P12270040120957483798

`A000196(A154725(∑[2*(n+1)]))`
-/

namespace A074039.P12270040120957483798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A154725 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074039.P12270040120957483798

namespace A074039

/-- `A000196(A154725(∑[2*(n+1)]))` -/
def P12270040120957483798.Spec : Prop :=
  ∀ n, P12270040120957483798.a n = A074039 (n + 1)

end A074039

/-! ## A074039.P8668442839128434291

`A336911(n*A353463(n+1))`
-/

namespace A074039.P8668442839128434291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336911 ((n : ℤ) * A353463 (n + 1)).toNat

end

end A074039.P8668442839128434291

namespace A074039

/-- `A336911(n*A353463(n+1))` -/
def P8668442839128434291.Spec : Prop :=
  ∀ n, P8668442839128434291.a n = A074039 (n + 1)

end A074039

/-!
# A074040: Product of first n twin prime pair products.

The programs for A074040, there is no canonical definition to state claims against.
-/

/-! ## A074040.P10956780374630135633

`A079164(2*(n+1))`
-/

namespace A074040.P10956780374630135633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079164 (2 * (n + 1))

end

end A074040.P10956780374630135633

/-! ## A074040.P15658820938775116455

`∏[A037074(n+1)]`
-/

namespace A074040.P15658820938775116455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074040.P15658820938775116455

/-! ## A074040.P11798982845966530816

`∏[A134020(n+2)]`
-/

namespace A074040.P11798982845966530816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074040.P11798982845966530816

/-! ## A074040.P10229256079637505193

`∏[A120875(n+1)+1]`
-/

namespace A074040.P10229256079637505193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074040.P10229256079637505193

/-! ## A074040.P6737865427818233555

`∏[A075369(n+1)-1]`
-/

namespace A074040.P6737865427818233555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074040.P6737865427818233555

/-!
# A074041: Product of first n single (i.e., non-twin) primes.

The programs for A074041, the canonical program `A074041.P16624840875090099525` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074041 has offset 1).

The definition of A074041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074041.P16624840875090099525

`a(n-1)*A007510(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A074041

/-- `a(n-1)*A007510(n+1)` -/
def P16624840875090099525.Spec : Prop :=
  ∀ n, P16624840875090099525.a n = A074041 (n + 1)

theorem P16624840875090099525.correct : P16624840875090099525.Spec := by
  intro n
  simp only [A074041, Nat.add_sub_cancel]

end A074041

/-! ## A074041.P2344709619717410363

`∏[A007510(n+1)]`
-/

namespace A074041.P2344709619717410363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074041.P2344709619717410363

namespace A074041

/-- `∏[A007510(n+1)]` -/
def P2344709619717410363.Spec : Prop :=
  ∀ n, P2344709619717410363.a n = A074041 (n + 1)

end A074041

/-! ## A074041.P11570375525925519219

`∏[p?[A062729(n+1)]]`
-/

namespace A074041.P11570375525925519219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074041.P11570375525925519219

namespace A074041

/-- `∏[p?[A062729(n+1)]]` -/
def P11570375525925519219.Spec : Prop :=
  ∀ n, P11570375525925519219.a n = A074041 (n + 1)

end A074041

/-! ## A074041.P8943073612918852218

`∏[p?[A167706(n+1)]]`
-/

namespace A074041.P8943073612918852218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074041.P8943073612918852218

namespace A074041

/-- `∏[p?[A167706(n+1)]]` -/
def P8943073612918852218.Spec : Prop :=
  ∀ n, P8943073612918852218.a n = A074041 (n + 1)

end A074041

/-! ## A074041.P17897426011579140699

`∏[p?[A168270(n+1)]]`
-/

namespace A074041.P17897426011579140699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074041.P17897426011579140699

namespace A074041

/-- `∏[p?[A168270(n+1)]]` -/
def P17897426011579140699.Spec : Prop :=
  ∀ n, P17897426011579140699.a n = A074041 (n + 1)

end A074041

/-!
# A074042: Numerator of Sum_{k=1..n} 1/A077800(k), denominator=A074043.

The programs for A074042, there is no canonical definition to state claims against.
-/

/-! ## A074042.P4917053898875928914

`A351952(∑[ceil(sqrt(n²+4))!])`
-/

namespace A074042.P4917053898875928914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074042.P4917053898875928914

/-! ## A074042.P13768654516484379434

`A353571(3*A002110(n))`
-/

namespace A074042.P13768654516484379434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (3 * A002110 n).toNat

end

end A074042.P13768654516484379434

/-!
# A074043: Denominator of Sum_{k=1..n} 1/A077800(k), numerator=A074042.

The programs for A074043, there is no canonical definition to state claims against.
-/

/-! ## A074043.P6683394805857435603

`lcm(a(n-1), A077800(n+1))` with `a(0)=3`
-/

namespace A074043.P6683394805857435603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A077800 (n + 1))

end

end A074043.P6683394805857435603

/-! ## A074043.P12846876330567024816

`lcm(3, A048599(A254667(n)))`
-/

namespace A074043.P12846876330567024816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A048599 (A254667 n).toNat)

end

end A074043.P12846876330567024816

/-! ## A074043.P14427491816964764733

`gcd(30, A001097(n+1))*A048599(n)`
-/

namespace A074043.P14427491816964764733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 30 (A001097 (n + 1)) : ℤ) * A048599 n

end

end A074043.P14427491816964764733

/-! ## A074043.P8185000262285542774

`gcd(A048599(n+1), A079164(n+1))`
-/

namespace A074043.P8185000262285542774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048599 (n + 1)) (A079164 (n + 1))

end

end A074043.P8185000262285542774

/-! ## A074043.P18246138496194739347

`or(A014963(A024450(n+1)), A048599(n))`
-/

namespace A074043.P18246138496194739347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A024450 (n + 1)).toNat) (A048599 n)

end

end A074043.P18246138496194739347

/-!
# A074044: Largest divisor of n having no prime gaps.

The programs for A074044, there is no canonical definition to state claims against.
-/

/-! ## A074044.P11101471069477720639

`gcd(n+1, A032742(A242420(4*(n+1))))`
-/

namespace A074044.P11101471069477720639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A032742 (A242420 (4 * (n + 1))).toNat)

end

end A074044.P11101471069477720639

/-! ## A074044.P12471701236922202970

`gcd(n+1, A200746(A046021(n+1)))`
-/

namespace A074044.P12471701236922202970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A200746 (A046021 (n + 1)).toNat)

end

end A074044.P12471701236922202970

/-! ## A074044.P16166713850468811014

`gcd(A200746(A046021(n+1)), A348553(n))`
-/

namespace A074044.P16166713850468811014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A200746 (A046021 (n + 1)).toNat) (A348553 n)

end

end A074044.P16166713850468811014

/-!
# A074045: Number of rooted trees of 2n+1 nodes with every leaf at height n.

The programs for A074045, there is no canonical definition to state claims against.
-/

/-! ## A074045.P12516430699047075791

`A244925(∑[4*n]+1)`
-/

namespace A074045.P12516430699047075791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074045.P12516430699047075791

/-! ## A074045.P3863154311256813674

`A244925(A001844(n))%A199682(n)`
-/

namespace A074045.P3863154311256813674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244925 (A001844 n).toNat) (A199682 n)

end

end A074045.P3863154311256813674

/-! ## A074045.P1254168086099390165

`or(A000007(n), A244925(A001844(n)))`
-/

namespace A074045.P1254168086099390165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244925 (A001844 n).toNat)

end

end A074045.P1254168086099390165

/-! ## A074045.P577077523352137208

`A244925(A001844(n))+A000007(n+1)`
-/

namespace A074045.P577077523352137208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A001844 n).toNat + A000007 (n + 1)

end

end A074045.P577077523352137208

/-! ## A074045.P14345162774702344067

`lcm(A056594(2*n), A244925(A001844(n)))`
-/

namespace A074045.P14345162774702344067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A244925 (A001844 n).toNat)

end

end A074045.P14345162774702344067

/-! ## A074045.P12486172486383590314

`and(A000225(n+1), A244925(A001844(n)))`
-/

namespace A074045.P12486172486383590314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A244925 (A001844 n).toNat)

end

end A074045.P12486172486383590314

/-! ## A074045.P11279720460480216287

`A007318(A000096(n))*A244925(A001844(n))`
-/

namespace A074045.P11279720460480216287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A244925 (A001844 n).toNat

end

end A074045.P11279720460480216287

/-! ## A074045.P12024966854161943629

`A007318(A000217(n))*A244925(A001844(n))`
-/

namespace A074045.P12024966854161943629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A244925 (A001844 n).toNat

end

end A074045.P12024966854161943629

/-!
# A074046: a(n)=a(n-1)*a(n-2)*a(n-3)*(1/a(n-1)+1/a(n-2)+1/a(n-3)) starting with a(1)=a(2)=1 and a(3)=2.

The programs for A074046, the canonical program `A074046.P213276063322090184` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074046 has offset 1).

The definition of A074046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074046.P213276063322090184

`a(n-1)*a(n-2)+a(n-3)*a(n-1)+a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074046

/-- `a(n-1)*a(n-2)+a(n-3)*a(n-1)+a(n-2)*a(n-3)` -/
def P213276063322090184.Spec : Prop :=
  ∀ n, (P213276063322090184.a n : ℤ) = A074046 (n + 1)

theorem P213276063322090184.correct : P213276063322090184.Spec := by
  intro n
  simp only [A074046, Nat.add_sub_cancel]

end A074046

/-! ## A074046.P7929523533062180749

`A215244(C(∑[n], n))`
-/

namespace A074046.P7929523533062180749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A074046.P7929523533062180749

namespace A074046

/-- `A215244(C(∑[n], n))` -/
def P7929523533062180749.Spec : Prop :=
  ∀ n, P7929523533062180749.a n = A074046 (n + 1)

end A074046

/-!
# A074047: a(n)=a(n-1)*a(n-2)*a(n-3)*(1/a(n-1)+1/a(n-2)+1/a(n-3)) starting with a(1)=a(2)=a(3)=1.

The programs for A074047, the canonical program `A074047.P6664403543452705532` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074047 has offset 1).

The definition of A074047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074047.P6664403543452705532

`a(n-1)*a(n-2)+a(n-3)*a(n-1)+a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074047

/-- `a(n-1)*a(n-2)+a(n-3)*a(n-1)+a(n-2)*a(n-3)` -/
def P6664403543452705532.Spec : Prop :=
  ∀ n, (P6664403543452705532.a n : ℤ) = A074047 (n + 1)

theorem P6664403543452705532.correct : P6664403543452705532.Spec := by
  intro n
  simp only [A074047, Nat.add_sub_cancel]

end A074047

/-!
# A074048: Pentanacci numbers with initial conditions a(0)=5, a(1)=1, a(2)=3, a(3)=7, a(4)=15.

The programs for A074048, the canonical program `A074048.P1991162106345351529` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074048 has offset 0).

The definition of A074048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074048.P16450721257921244418

`ogf((5-4x-3x^2-2x^3-x^4)/(1-x-x^2-x^3-x^4-x^5))`
-/

namespace A074048.P16450721257921244418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -3, -2, -1] [1, -1, -1, -1, -1, -1] n

end

end A074048.P16450721257921244418

namespace A074048

/-- `ogf((5-4x-3x^2-2x^3-x^4)/(1-x-x^2-x^3-x^4-x^5))` -/
def P16450721257921244418.Spec : Prop :=
  ∀ n, P16450721257921244418.a n = A074048 n

end A074048

/-! ## A074048.P1991162106345351529

`2*a(n-1)-a(n-6)` with `a(0)=5, a(1)=1, a(2)=3, a(3)=7, a(4)=15, a(5)=31`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074048

/-- `2*a(n-1)-a(n-6)` -/
def P1991162106345351529.Spec : Prop :=
  ∀ n, P1991162106345351529.a n = A074048 n

theorem P1991162106345351529.correct : P1991162106345351529.Spec := by
  intro n
  simp only [A074048]

end A074048

/-! ## A074048.P15887527490407234089

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=5, a(1)=1, a(2)=3, a(3)=7, a(4)=15`
-/

namespace A074048.P15887527490407234089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 3, 7, 15] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A074048.P15887527490407234089

namespace A074048

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P15887527490407234089.Spec : Prop :=
  ∀ n, (P15887527490407234089.a n : ℤ) = A074048 n

end A074048

/-! ## A074048.P12572041122012680903

`A023424(abs(A024000(n)))+A000038(n)`
-/

namespace A074048.P12572041122012680903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 |A024000 n|.toNat + A000038 n

end

end A074048.P12572041122012680903

namespace A074048

/-- `A023424(abs(A024000(n)))+A000038(n)` -/
def P12572041122012680903.Spec : Prop :=
  ∀ n, P12572041122012680903.a n = A074048 n

end A074048

/-! ## A074048.P10488424615366641179

`A023424(A000038(n)-A024000(n))+A000038(n)`
-/

namespace A074048.P10488424615366641179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (A000038 n - A024000 n).toNat + A000038 n

end

end A074048.P10488424615366641179

namespace A074048

/-- `A023424(A000038(n)-A024000(n))+A000038(n)` -/
def P10488424615366641179.Spec : Prop :=
  ∀ n, P10488424615366641179.a n = A074048 n

end A074048

/-! ## A074048.P12009129969202375431

`A023424(n+4)-Δ[A023424(n+4)]`
-/

namespace A074048.P12009129969202375431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (n + 4) - (f1 (n + 1) - f1 n)

end

end A074048.P12009129969202375431

namespace A074048

/-- `A023424(n+4)-Δ[A023424(n+4)]` -/
def P12009129969202375431.Spec : Prop :=
  ∀ n, P12009129969202375431.a n = A074048 n

end A074048

/-! ## A074048.P18035955044895206499

`2*A023424(n+4)-A023424(n+5)`
-/

namespace A074048.P18035955044895206499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023424 (n + 4) - A023424 (n + 5)

end

end A074048.P18035955044895206499

namespace A074048

/-- `2*A023424(n+4)-A023424(n+5)` -/
def P18035955044895206499.Spec : Prop :=
  ∀ n, P18035955044895206499.a n = A074048 n

end A074048

/-! ## A074048.P11563168536757297239

`A023424(n+11)%Δ[A023424(n+9)]`
-/

namespace A074048.P11563168536757297239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023424 (n + 11)) (f1 (n + 1) - f1 n)

end

end A074048.P11563168536757297239

namespace A074048

/-- `A023424(n+11)%Δ[A023424(n+9)]` -/
def P11563168536757297239.Spec : Prop :=
  ∀ n, P11563168536757297239.a n = A074048 n

end A074048

/-!
# A074049: Tree generated by the Wythoff sequences: a permutation of the positive integers.

The programs for A074049, there is no canonical definition to state claims against.
-/

/-! ## A074049.P5827613250299534381

`A048680(n)+1`
-/

namespace A074049.P5827613250299534381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 n + 1

end

end A074049.P5827613250299534381

/-! ## A074049.P11866340017872625801

`A227352(A006068(n))+1`
-/

namespace A074049.P11866340017872625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (A006068 n).toNat + 1

end

end A074049.P11866340017872625801

/-! ## A074049.P10023251977718432942

`A227352(A286546(n)+n)+1`
-/

namespace A074049.P10023251977718432942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (A286546 n + (n : ℤ)).toNat + 1

end

end A074049.P10023251977718432942

/-! ## A074049.P3418910516549075100

`A072793(A054239(n))+1`
-/

namespace A074049.P3418910516549075100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072793 (A054239 n).toNat + 1

end

end A074049.P3418910516549075100

/-! ## A074049.P13948097242686241102

`1-(A048680(2*n)-A048680(4*n))`
-/

namespace A074049.P13948097242686241102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048680 (2 * n) - A048680 (4 * n))

end

end A074049.P13948097242686241102

/-! ## A074049.P10108059718034800734

`2-(A014963(A008458(n))-A048680(n))`
-/

namespace A074049.P10108059718034800734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A014963 (A008458 n).toNat - A048680 n)

end

end A074049.P10108059718034800734

/-! ## A074049.P4843324636993431293

`A052938(2*A048680(n))`
-/

namespace A074049.P4843324636993431293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A048680 n).toNat

end

end A074049.P4843324636993431293

/-! ## A074049.P17231805390350641721

`A110654(xor(1, 2*A048680(n)))`
-/

namespace A074049.P17231805390350641721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (2 * A048680 n)).toNat

end

end A074049.P17231805390350641721

/-! ## A074049.P13143402936703389947

`A004442(2*A048680(n))-A048680(n)`
-/

namespace A074049.P13143402936703389947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A048680 n).toNat - A048680 n

end

end A074049.P13143402936703389947

/-! ## A074049.P4525999334834430691

`1-(A055671(A055671(n))-A048680(n))`
-/

namespace A074049.P4525999334834430691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A055671 (A055671 n).toNat - A048680 n)

end

end A074049.P4525999334834430691

/-! ## A074049.P10312270889300641550

`A022290(A048678(n)+1)`
-/

namespace A074049.P10312270889300641550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A048678 n + 1).toNat

end

end A074049.P10312270889300641550

/-! ## A074049.P2807616794205613557

`2-(A007318(∑[n])-A048680(n))`
-/

namespace A074049.P2807616794205613557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A048680 n)

end

end A074049.P2807616794205613557

/-! ## A074049.P13249141486657410800

`A327616(A088698(n)+1)`
-/

namespace A074049.P13249141486657410800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327616 (A088698 n + 1).toNat

end

end A074049.P13249141486657410800

/-! ## A074049.P8599899313064639096

`A356874(A124108(n)+1)`
-/

namespace A074049.P8599899313064639096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A124108 n + 1).toNat

end

end A074049.P8599899313064639096

/-! ## A074049.P15816204029849091724

`A072646(A072637(n))+1`
-/

namespace A074049.P15816204029849091724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072646 (A072637 n).toNat + 1

end

end A074049.P15816204029849091724

/-!
# A074050: Inverse permutation to A074049.

The programs for A074050, there is no canonical definition to state claims against.
-/

/-! ## A074050.P14608280728079884648

`A048679(n)+1`
-/

namespace A074050.P14608280728079884648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n + 1

end

end A074050.P14608280728079884648

/-! ## A074050.P3578355985167947871

`1-A048679(n)*A057428(n)`
-/

namespace A074050.P3578355985167947871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048679 n * A057428 n

end

end A074050.P3578355985167947871

/-! ## A074050.P13902921430623790790

`A304100(A003622(n+1))`
-/

namespace A074050.P13902921430623790790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A003622 (n + 1)).toNat

end

end A074050.P13902921430623790790

/-! ## A074050.P2444315807202051956

`A304100(A035336(n+1))`
-/

namespace A074050.P2444315807202051956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A035336 (n + 1)).toNat

end

end A074050.P2444315807202051956

/-! ## A074050.P15554722179787342214

`A304100(A035337(n))`
-/

namespace A074050.P15554722179787342214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A035337 n).toNat

end

end A074050.P15554722179787342214

/-! ## A074050.P11555264920941513715

`A054238(A072794(n))+1`
-/

namespace A074050.P11555264920941513715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A072794 n).toNat + 1

end

end A074050.P11555264920941513715

/-! ## A074050.P12035802040251860453

`A304100(A035338(n))`
-/

namespace A074050.P12035802040251860453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A035338 n).toNat

end

end A074050.P12035802040251860453

/-! ## A074050.P16600548149462717321

`A003188(A227351(n))+1`
-/

namespace A074050.P16600548149462717321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A227351 n).toNat + 1

end

end A074050.P16600548149462717321

/-! ## A074050.P4760567957195023777

`A304100(A035339(n))`
-/

namespace A074050.P4760567957195023777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A035339 n).toNat

end

end A074050.P4760567957195023777

/-! ## A074050.P16174796402500749814

`A072650(A003714(n))+1`
-/

namespace A074050.P16174796402500749814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A003714 n).toNat + 1

end

end A074050.P16174796402500749814

/-! ## A074050.P14300228660310543081

`A304100(A035340(n))`
-/

namespace A074050.P14300228660310543081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (A035340 n).toNat

end

end A074050.P14300228660310543081

/-! ## A074050.P7391531848986083767

`A008619(2*A048679(n))`
-/

namespace A074050.P7391531848986083767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A048679 n).toNat

end

end A074050.P7391531848986083767

/-! ## A074050.P15680281140032778181

`A087808(A118113(n))`
-/

namespace A074050.P15680281140032778181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A118113 n).toNat

end

end A074050.P15680281140032778181

/-! ## A074050.P133672423753657386

`A087808(A022340(n)+1)`
-/

namespace A074050.P133672423753657386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A022340 n + 1).toNat

end

end A074050.P133672423753657386

/-! ## A074050.P7644959686259338189

`A072650(A277335(n))+1`
-/

namespace A074050.P7644959686259338189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A277335 n).toNat + 1

end

end A074050.P7644959686259338189

/-! ## A074050.P15330037100046502834

`A003602(A389923(n+1))`
-/

namespace A074050.P15330037100046502834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A389923 (n + 1)).toNat

end

end A074050.P15330037100046502834

/-!
# A074051: For each n there are uniquely determined numbers a(n) and b(n) and a polynomial p_n(x) such that for all integers m we have Sum_{i=1..m}i^n(i+1)! = a(n)*Sum_{i=1..m} (i+1)! + p_n(m)*(m+2)! + b(n). The sequence b(n) is A074052.

The programs for A074051, there is no canonical definition to state claims against.
-/

/-! ## A074051.P552010024589855930

`(-1)^n*(A000587(n+2)-A000587(n+1))`
-/

namespace A074051.P552010024589855930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A000587 (n + 2) - A000587 (n + 1))

end

end A074051.P552010024589855930

/-! ## A074051.P18104786257885964707

`A014182(n+1)+A014182(n)`
-/

namespace A074051.P18104786257885964707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (n + 1) + A014182 n

end

end A074051.P18104786257885964707

/-! ## A074051.P6263867679987232914

`Δ[A000587(n+1)]*A033999(n)`
-/

namespace A074051.P6263867679987232914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A074051.P6263867679987232914

/-! ## A074051.P2006013248505505692

`A109747(n+3)-A109747(n+1)`
-/

namespace A074051.P2006013248505505692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 (n + 3) - A109747 (n + 1)

end

end A074051.P2006013248505505692

/-! ## A074051.P16965602450683798917

`A247108(A034856(n+1))/A062157(n+2)`
-/

namespace A074051.P16965602450683798917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247108 (A034856 (n + 1)).toNat : ℚ) / (A062157 (n + 2) : ℚ)

end

end A074051.P16965602450683798917

/-!
# A074056: a(n) = a(n-1)^3/a(n-2)^2 + a(n-1)*a(n-2) with a(1) = a(2) = 1.

The programs for A074056, the canonical program `A074056.P12732197370920598053` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074056 has offset 1).

The definition of A074056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074056.P12732197370920598053

`a(n-1)*A057438(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074056

/-- `a(n-1)*A057438(n+1)` -/
def P12732197370920598053.Spec : Prop :=
  ∀ n, P12732197370920598053.a n = A074056 (n + 1)

theorem P12732197370920598053.correct : P12732197370920598053.Spec := by
  intro n
  simp only [A074056, Nat.add_sub_cancel]

end A074056

/-! ## A074056.P18252780745964439885

`a(n-1)^3/a(n-2)²+a(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074056.P18252780745964439885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 3 / a (n - 2) ^ 2 + a (n - 1) * a (n - 2)

end

end A074056.P18252780745964439885

namespace A074056

/-- `a(n-1)^3/a(n-2)²+a(n-1)*a(n-2)` -/
def P18252780745964439885.Spec : Prop :=
  ∀ n, P18252780745964439885.a n = (A074056 (n + 1) : ℚ)

end A074056

/-! ## A074056.P6717762936504369950

`A057438(n+3)-A057438(n+2)²`
-/

namespace A074056.P6717762936504369950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057438 (n + 3) - A057438 (n + 2) ^ 2

end

end A074056.P6717762936504369950

namespace A074056

/-- `A057438(n+3)-A057438(n+2)²` -/
def P6717762936504369950.Spec : Prop :=
  ∀ n, P6717762936504369950.a n = A074056 (n + 1)

end A074056

/-! ## A074056.P2190289422761864796

`(a(n-2)+(a(n-1)/a(n-2))²)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A074056.P2190289422761864796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) + (a (n - 1) / a (n - 2)) ^ 2) * a (n - 1)

end

end A074056.P2190289422761864796

namespace A074056

/-- `(a(n-2)+(a(n-1)/a(n-2))²)*a(n-1)` -/
def P2190289422761864796.Spec : Prop :=
  ∀ n, P2190289422761864796.a n = (A074056 (n + 1) : ℚ)

end A074056

/-! ## A074056.P4462553126302112008

`∏[A057438(n+1)]`
-/

namespace A074056.P4462553126302112008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074056.P4462553126302112008

namespace A074056

/-- `∏[A057438(n+1)]` -/
def P4462553126302112008.Spec : Prop :=
  ∀ n, P4462553126302112008.a n = A074056 (n + 1)

end A074056

/-!
# A074057: a(n) = 2*phi(n-2)-(n-1).

The programs for A074057, the canonical program `A074057.P5713316463646011208` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074057 has offset 3).

The definition of A074057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000010(n+1)-(n+2)` (program `A074057.P5713316463646011208`, by `A074057.P5713316463646011208.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074057.P5713316463646011208

`2*A000010(n+1)-(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074057

/-- `2*A000010(n+1)-(n+2)` -/
def P5713316463646011208.Spec : Prop :=
  ∀ n, P5713316463646011208.a n = A074057 (n + 3)

theorem P5713316463646011208.correct : P5713316463646011208.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel]

end A074057

/-! ## A074057.P5439022824475532284

`2*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)-n`
-/

namespace A074057.P5439022824475532284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1) - (n : ℚ)

end

end A074057.P5439022824475532284

namespace A074057

/-- `2*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)-n` -/
def P5439022824475532284.Spec : Prop :=
  ∀ n, P5439022824475532284.a n = (A074057 (n + 3) : ℚ)

end A074057

/-! ## A074057.P4894241987267548772

`A083254(n+1)-1`
-/

namespace A074057.P4894241987267548772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - 1

end

end A074057.P4894241987267548772

namespace A074057

/-- `A083254(n+1)-1` -/
def P4894241987267548772.Spec : Prop :=
  ∀ n, P4894241987267548772.a n = A074057 (n + 3)

theorem P4894241987267548772.correct : P4894241987267548772.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P4894241987267548772.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P1556006732650703674

`n-2*A051953(n+1)`
-/

namespace A074057.P1556006732650703674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A051953 (n + 1)

end

end A074057.P1556006732650703674

namespace A074057

/-- `n-2*A051953(n+1)` -/
def P1556006732650703674.Spec : Prop :=
  ∀ n, P1556006732650703674.a n = A074057 (n + 3)

theorem P1556006732650703674.correct : P1556006732650703674.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P1556006732650703674.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P9121019861748111638

`2*A109606(n+1)-n`
-/

namespace A074057.P9121019861748111638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109606 (n + 1) - (n : ℤ)

end

end A074057.P9121019861748111638

namespace A074057

/-- `2*A109606(n+1)-n` -/
def P9121019861748111638.Spec : Prop :=
  ∀ n, P9121019861748111638.a n = A074057 (n + 3)

theorem P9121019861748111638.correct : P9121019861748111638.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P9121019861748111638.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P13852531473909426271

`Δ[2*A002088(n)]-(n+2)`
-/

namespace A074057.P13852531473909426271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A074057.P13852531473909426271

namespace A074057

/-- `Δ[2*A002088(n)]-(n+2)` -/
def P13852531473909426271.Spec : Prop :=
  ∀ n, P13852531473909426271.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P6309951903433783223

`2*(Δ[A005728(n)]-1)-n`
-/

namespace A074057.P6309951903433783223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1) - (n : ℤ)

end

end A074057.P6309951903433783223

namespace A074057

/-- `2*(Δ[A005728(n)]-1)-n` -/
def P6309951903433783223.Spec : Prop :=
  ∀ n, P6309951903433783223.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P4398480140508822695

`n-2*(A219428(n+1)+1)`
-/

namespace A074057.P4398480140508822695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * (A219428 (n + 1) + 1)

end

end A074057.P4398480140508822695

namespace A074057

/-- `n-2*(A219428(n+1)+1)` -/
def P4398480140508822695.Spec : Prop :=
  ∀ n, P4398480140508822695.a n = A074057 (n + 3)

theorem P4398480140508822695.correct : P4398480140508822695.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P4398480140508822695.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P16355227864006058122

`lcm(2, 1-A000010(lcm(2, n+1)))-n`
-/

namespace A074057.P16355227864006058122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - A000010 (Nat.lcm 2 (n + 1))) : ℤ) - (n : ℤ)

end

end A074057.P16355227864006058122

namespace A074057

/-- `lcm(2, 1-A000010(lcm(2, n+1)))-n` -/
def P16355227864006058122.Spec : Prop :=
  ∀ n, P16355227864006058122.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P463392410624809104

`A117966(A297154(n+1))-1`
-/

namespace A074057.P463392410624809104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A297154 (n + 1)).toNat - 1

end

end A074057.P463392410624809104

namespace A074057

/-- `A117966(A297154(n+1))-1` -/
def P463392410624809104.Spec : Prop :=
  ∀ n, P463392410624809104.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P10354012177455747901

`A047403(A000010(n+1))-n`
-/

namespace A074057.P10354012177455747901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047403 (A000010 (n + 1)).toNat - (n : ℤ)

end

end A074057.P10354012177455747901

namespace A074057

/-- `A047403(A000010(n+1))-n` -/
def P10354012177455747901.Spec : Prop :=
  ∀ n, P10354012177455747901.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P4359241786212546155

`n-A005843(A051953(n+1))`
-/

namespace A074057.P4359241786212546155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A051953 (n + 1)).toNat

end

end A074057.P4359241786212546155

namespace A074057

/-- `n-A005843(A051953(n+1))` -/
def P4359241786212546155.Spec : Prop :=
  ∀ n, P4359241786212546155.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P6102218301373651540

`A064680(A109606(n+1))-n`
-/

namespace A074057.P6102218301373651540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A109606 (n + 1)).toNat - (n : ℤ)

end

end A074057.P6102218301373651540

namespace A074057

/-- `A064680(A109606(n+1))-n` -/
def P6102218301373651540.Spec : Prop :=
  ∀ n, P6102218301373651540.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P8645930501577609525

`A063070(n+1)-A045763(n+1)`
-/

namespace A074057.P8645930501577609525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) - A045763 (n + 1)

end

end A074057.P8645930501577609525

namespace A074057

/-- `A063070(n+1)-A045763(n+1)` -/
def P8645930501577609525.Spec : Prop :=
  ∀ n, P8645930501577609525.a n = A074057 (n + 3)

theorem P8645930501577609525.correct : P8645930501577609525.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P8645930501577609525.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A045763, A045763.P9156243808986750239.a, A063070, A063070.P5416196495209204381.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P8207939579503521903

`A109606(n+1)-A051953(n+1)`
-/

namespace A074057.P8207939579503521903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A051953 (n + 1)

end

end A074057.P8207939579503521903

namespace A074057

/-- `A109606(n+1)-A051953(n+1)` -/
def P8207939579503521903.Spec : Prop :=
  ∀ n, P8207939579503521903.a n = A074057 (n + 3)

theorem P8207939579503521903.correct : P8207939579503521903.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P8207939579503521903.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P17618661523641843201

`A083245(n+1)-A114003(n+1)`
-/

namespace A074057.P17618661523641843201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) - A114003 (n + 1)

end

end A074057.P17618661523641843201

namespace A074057

/-- `A083245(n+1)-A114003(n+1)` -/
def P17618661523641843201.Spec : Prop :=
  ∀ n, P17618661523641843201.a n = A074057 (n + 3)

theorem P17618661523641843201.correct : P17618661523641843201.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P17618661523641843201.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A083245, A083245.P760659149355917661.a, A114003, A114003.P1695342291946871726.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A045763, A045763.P9156243808986750239.a, A073757, A073757.P6861480467973211752.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P6967748119844272720

`A140434(n+1)-A065475(n+1)`
-/

namespace A074057.P6967748119844272720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1) - A065475 (n + 1)

end

end A074057.P6967748119844272720

namespace A074057

/-- `A140434(n+1)-A065475(n+1)` -/
def P6967748119844272720.Spec : Prop :=
  ∀ n, P6967748119844272720.a n = A074057 (n + 3)

end A074057

/-! ## A074057.P2400262345340287

`A073757(n+1)-A351561(n+1)`
-/

namespace A074057.P2400262345340287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A351561 (n + 1)

end

end A074057.P2400262345340287

namespace A074057

/-- `A073757(n+1)-A351561(n+1)` -/
def P2400262345340287.Spec : Prop :=
  ∀ n, P2400262345340287.a n = A074057 (n + 3)

theorem P2400262345340287.correct : P2400262345340287.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P2400262345340287.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A073757, A073757.P6861480467973211752.a, A351561, A351561.P9711075868512573755.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P12473058227103824009

`A235796(n+1)-A297159(n+1)`
-/

namespace A074057.P12473058227103824009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) - A297159 (n + 1)

end

end A074057.P12473058227103824009

namespace A074057

/-- `A235796(n+1)-A297159(n+1)` -/
def P12473058227103824009.Spec : Prop :=
  ∀ n, P12473058227103824009.a n = A074057 (n + 3)

theorem P12473058227103824009.correct : P12473058227103824009.Spec := by
  intro n
  simp only [A074057, Nat.add_sub_cancel, A074057.P12473058227103824009.a, A074057.P5713316463646011208.a, A000010, A000010.P4673923239450215316.a, A235796, A235796.P5769590272751401819.a, A297159, A297159.P13683911670693545293.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074057

/-! ## A074057.P3484865865168739493

`A000010(A110192(n+1))-(n+2)`
-/

namespace A074057.P3484865865168739493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110192 (n + 1)).toNat - (n + 2 : ℤ)

end

end A074057.P3484865865168739493

namespace A074057

/-- `A000010(A110192(n+1))-(n+2)` -/
def P3484865865168739493.Spec : Prop :=
  ∀ n, P3484865865168739493.a n = A074057 (n + 3)

end A074057

/-!
# A074058: Reflected tetranacci numbers A073817.

The programs for A074058, the canonical program `A074058.P13514722203274937124` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074058 has offset 0).

The definition of A074058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074058.P13182197732166577598

`ogf((4+3x+2x^2+x^3)/(1+x+x^2+x^3-x^4))`
-/

namespace A074058.P13182197732166577598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 2, 1] [1, 1, 1, 1, -1] n

end

end A074058.P13182197732166577598

namespace A074058

/-- `ogf((4+3x+2x^2+x^3)/(1+x+x^2+x^3-x^4))` -/
def P13182197732166577598.Spec : Prop :=
  ∀ n, P13182197732166577598.a n = A074058 n

end A074058

/-! ## A074058.P13514722203274937124

`(-1)^n*A073937(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074058

/-- `(-1)^n*A073937(n)` -/
def P13514722203274937124.Spec : Prop :=
  ∀ n, P13514722203274937124.a n = A074058 n

theorem P13514722203274937124.correct : P13514722203274937124.Spec := by
  intro n
  simp only [A074058]

end A074058

/-! ## A074058.P12904940227356178537

`A073937(n)/A033999(n)`
-/

namespace A074058.P12904940227356178537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n : ℚ) / (A033999 n : ℚ)

end

end A074058.P12904940227356178537

namespace A074058

/-- `A073937(n)/A033999(n)` -/
def P12904940227356178537.Spec : Prop :=
  ∀ n, P12904940227356178537.a n = (A074058 n : ℚ)

end A074058

/-! ## A074058.P7754688637951399127

`A073937(n)/A009001(2*(n+2))`
-/

namespace A074058.P7754688637951399127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n : ℚ) / (A009001 (2 * (n + 2)) : ℚ)

end

end A074058.P7754688637951399127

namespace A074058

/-- `A073937(n)/A009001(2*(n+2))` -/
def P7754688637951399127.Spec : Prop :=
  ∀ n, P7754688637951399127.a n = (A074058 n : ℚ)

end A074058

/-! ## A074058.P2741987181325938114

`A073937(n)/A074193(n)*A074453(n)`
-/

namespace A074058.P2741987181325938114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n : ℚ) / (A074193 n : ℚ) * (A074453 n : ℚ)

end

end A074058.P2741987181325938114

namespace A074058

/-- `A073937(n)/A074193(n)*A074453(n)` -/
def P2741987181325938114.Spec : Prop :=
  ∀ n, P2741987181325938114.a n = (A074058 n : ℚ)

end A074058

/-! ## A074058.P4121573405971558497

`A073937(n)*A074193(n)/A074453(n)`
-/

namespace A074058.P4121573405971558497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n * A074193 n : ℚ) / (A074453 n : ℚ)

end

end A074058.P4121573405971558497

namespace A074058

/-- `A073937(n)*A074193(n)/A074453(n)` -/
def P4121573405971558497.Spec : Prop :=
  ∀ n, P4121573405971558497.a n = (A074058 n : ℚ)

end A074058

/-! ## A074058.P2019594114174169078

`A073817(n)*A073937(n)/A074081(n)`
-/

namespace A074058.P2019594114174169078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A073937 n : ℚ) / (A074081 n : ℚ)

end

end A074058.P2019594114174169078

namespace A074058

/-- `A073817(n)*A073937(n)/A074081(n)` -/
def P2019594114174169078.Spec : Prop :=
  ∀ n, P2019594114174169078.a n = (A074058 n : ℚ)

end A074058

/-!
# A074059: Dimension of the cohomology ring of the moduli space of n-pointed curves of genus 0 satisfying the associativity equations of physics (also known as the WDVV equations).

The programs for A074059, there is no canonical definition to state claims against.
-/

/-! ## A074059.P11195775952410389883

`A395345(∑[n+1]+1)`
-/

namespace A074059.P11195775952410389883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074059.P11195775952410389883

/-! ## A074059.P270434317661912617

`A005843(A014623(n))-A189780(n)`
-/

namespace A074059.P270434317661912617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014623 n).toNat - A189780 n

end

end A074059.P270434317661912617

/-! ## A074059.P3175105160219204468

`A316434(A001586(n))+A290994(n+1)`
-/

namespace A074059.P3175105160219204468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (A001586 n).toNat + A290994 (n + 1)

end

end A074059.P3175105160219204468

/-!
# A074060: Graded dimension of the cohomology ring of the moduli space of n-pointed stable curves of genus 0 satisfying the associativity equations of physics (also known as the WDVV equations).

The programs for A074060, there is no canonical definition to state claims against.
-/

/-! ## A074060.P4901471487253050008

`gcd(∑[n]!, A157637(n))`
-/

namespace A074060.P4901471487253050008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (A157637 n)

end

end A074060.P4901471487253050008

/-! ## A074060.P668910160898079585

`A120401(A056940(n))`
-/

namespace A074060.P668910160898079585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A056940 n).toNat

end

end A074060.P668910160898079585

/-! ## A074060.P10533208239354745709

`A026437(A157221(n))`
-/

namespace A074060.P10533208239354745709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A157221 n).toNat

end

end A074060.P10533208239354745709

/-! ## A074060.P7981761117241425871

`A072088(A157637(n))`
-/

namespace A074060.P7981761117241425871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A157637 n).toNat

end

end A074060.P7981761117241425871

/-! ## A074060.P14497522224875175445

`A094913(A157243(n))`
-/

namespace A074060.P14497522224875175445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094913 (A157243 n).toNat

end

end A074060.P14497522224875175445

/-!
# A074061: Positive integers k such that 24*k^2 - 23 is a square.

The programs for A074061, the canonical program `A074061.P9174633497465309769` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074061 has offset 0).

The definition of A074061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074061.P4882002192178733304

`ogf((1+4x-4x^2-x^3)/(1-10x^2+x^4))`
-/

namespace A074061.P4882002192178733304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4, -1] [1, 0, -10, 0, 1] n

end

end A074061.P4882002192178733304

namespace A074061

/-- `ogf((1+4x-4x^2-x^3)/(1-10x^2+x^4))` -/
def P4882002192178733304.Spec : Prop :=
  ∀ n, P4882002192178733304.a n = A074061 n

end A074061

/-! ## A074061.P9174633497465309769

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=39`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074061

/-- `10*a(n-2)-a(n-4)` -/
def P9174633497465309769.Spec : Prop :=
  ∀ n, P9174633497465309769.a n = A074061 n

theorem P9174633497465309769.correct : P9174633497465309769.Spec := by
  intro n
  simp only [A074061]

end A074061

/-! ## A074061.P7786521301920981871

`2*A080806(n+1)-A129445(n+1)`
-/

namespace A074061.P7786521301920981871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080806 (n + 1) - A129445 (n + 1)

end

end A074061.P7786521301920981871

namespace A074061

/-- `2*A080806(n+1)-A129445(n+1)` -/
def P7786521301920981871.Spec : Prop :=
  ∀ n, P7786521301920981871.a n = A074061 n

end A074061

/-! ## A074061.P10617490788679565908

`A077288(n)+A142239(n)-A233450(n+1)`
-/

namespace A074061.P10617490788679565908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n + (A142239 n - A233450 (n + 1))

end

end A074061.P10617490788679565908

namespace A074061

/-- `A077288(n)+A142239(n)-A233450(n+1)` -/
def P10617490788679565908.Spec : Prop :=
  ∀ n, P10617490788679565908.a n = A074061 n

end A074061

/-! ## A074061.P11543490240551626925

`A142239(n)-A129445(n+1)%A080872(n)`
-/

namespace A074061.P11543490240551626925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 n - Int.tmod (A129445 (n + 1)) (A080872 n)

end

end A074061.P11543490240551626925

namespace A074061

/-- `A142239(n)-A129445(n+1)%A080872(n)` -/
def P11543490240551626925.Spec : Prop :=
  ∀ n, P11543490240551626925.a n = A074061 n

end A074061

/-! ## A074061.P7017202560278224900

`Δ[A080873(n+2)%A080806(n+1)]`
-/

namespace A074061.P7017202560278224900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080873 (n + 2)) (A080806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074061.P7017202560278224900

namespace A074061

/-- `Δ[A080873(n+2)%A080806(n+1)]` -/
def P7017202560278224900.Spec : Prop :=
  ∀ n, P7017202560278224900.a n = A074061 n

end A074061

/-!
# A074062: Reflected (see A074058) pentanacci numbers A074048.

The programs for A074062, the canonical program `A074062.P7055763024817338013` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074062 has offset 0).

The definition of A074062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074062.P7055763024817338013

`ogf((5+4x+3x^2+2x^3+x^4)/(1+x+x^2+x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074062

/-- `ogf((5+4x+3x^2+2x^3+x^4)/(1+x+x^2+x^3+x^4-x^5))` -/
def P7055763024817338013.Spec : Prop :=
  ∀ n, P7055763024817338013.a n = A074062 n

theorem P7055763024817338013.correct : P7055763024817338013.Spec := by
  intro n
  simp only [A074062]

end A074062

/-!
# A074063: a(n) is the number of essentially different ways in which the integers 1,2,3,...,n can be arranged in a sequence such that (1) adjacent integers sum to a prime number and (2) squares of adjacent numbers sum to a prime number. Rotations and reversals are counted only once.

The programs for A074063, there is no canonical definition to state claims against.
-/

/-! ## A074063.P13225853025796825063

`A010054(A282502(n))*A137795(n+1)`
-/

namespace A074063.P13225853025796825063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A282502 n).toNat * A137795 (n + 1)

end

end A074063.P13225853025796825063

/-! ## A074063.P13372261612458441228

`A010054(A282582(n))*A273975(3*n+1)`
-/

namespace A074063.P13372261612458441228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A282582 n).toNat * A273975 (3 * n + 1)

end

end A074063.P13372261612458441228

/-!
# A074064: Number of cycle types of degree-n permutations having the maximum possible order.

The programs for A074064, there is no canonical definition to state claims against.
-/

/-! ## A074064.P10801035931542848484

`A256554(∑[A009490(n)]-1)`
-/

namespace A074064.P10801035931542848484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256554 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A074064.P10801035931542848484

/-! ## A074064.P12750641890400964191

`A256554(∑[A009490(n)%A045665(n)])`
-/

namespace A074064.P12750641890400964191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009490 n) (A045665 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074064.P12750641890400964191

/-! ## A074064.P13146139485855167777

`gcd(A097026(n+1), A097858(A124619(n+1)))`
-/

namespace A074064.P13146139485855167777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097026 (n + 1)) (A097858 (A124619 (n + 1)).toNat)

end

end A074064.P13146139485855167777

/-! ## A074064.P940024927426697144

`A140997(gcd(A140997(3*n+4), A329361(n)))`
-/

namespace A074064.P940024927426697144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (Int.gcd (A140997 (3 * n + 4)) (A329361 n))

end

end A074064.P940024927426697144

/-! ## A074064.P6511338252532367998

`gcd(A097026(n+1), A276441(A097004(n)))`
-/

namespace A074064.P6511338252532367998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097026 (n + 1)) (A276441 (A097004 n).toNat)

end

end A074064.P6511338252532367998

/-!
# A074065: Numerators a(n) of fractions slowly converging to sqrt(3): let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < sqrt(3), then a(n+1) = a(n) + 1, else a(n+1)= a(n).

The programs for A074065, the canonical program `A074065.P1599766328495969668` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074065 has offset 1).

The definition of A074065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074065.P1599766328495969668

`floor((n+1)*(3-sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074065

/-- `floor((n+1)*(3-sqrt(3))/2)` -/
def P1599766328495969668.Spec : Prop :=
  ∀ n, P1599766328495969668.a n = A074065 (n + 1)

theorem P1599766328495969668.correct : P1599766328495969668.Spec := by
  intro n
  simp only [A074065, Nat.add_sub_cancel]

end A074065

/-! ## A074065.P12429532193685571664

`∑[Δ[ceil(n/(sqrt(3)-1))]%2]`
-/

namespace A074065.P12429532193685571664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074065.P12429532193685571664

namespace A074065

/-- `∑[Δ[ceil(n/(sqrt(3)-1))]%2]` -/
def P12429532193685571664.Spec : Prop :=
  ∀ n, P12429532193685571664.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P6764469748500080740

`∑[and(1, Δ[ceil(n/(sqrt(3)-1))])]`
-/

namespace A074065.P6764469748500080740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074065.P6764469748500080740

namespace A074065

/-- `∑[and(1, Δ[ceil(n/(sqrt(3)-1))])]` -/
def P6764469748500080740.Spec : Prop :=
  ∀ n, P6764469748500080740.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P16745193859949296985

`n-comp[floor(n*sqrt(3))]%(n+1)`
-/

namespace A074065.P16745193859949296985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1) : ℕ) : ℤ)

end

end A074065.P16745193859949296985

namespace A074065

/-- `n-comp[floor(n*sqrt(3))]%(n+1)` -/
def P16745193859949296985.Spec : Prop :=
  ∀ n, P16745193859949296985.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P6488383787434562043

`n-floor((a(n-1)+1)/sqrt(3))` with `a(0)=0`
-/

namespace A074065.P6488383787434562043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

end

end A074065.P6488383787434562043

namespace A074065

/-- `n-floor((a(n-1)+1)/sqrt(3))` -/
def P6488383787434562043.Spec : Prop :=
  ∀ n, P6488383787434562043.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P1466247174501588414

`∑[2-A245222(n)]`
-/

namespace A074065.P1466247174501588414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A245222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074065.P1466247174501588414

namespace A074065

/-- `∑[2-A245222(n)]` -/
def P1466247174501588414.Spec : Prop :=
  ∀ n, P1466247174501588414.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P13449211223405981938

`∑[char[A186539(n+1)]]`
-/

namespace A074065.P13449211223405981938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074065.P13449211223405981938

namespace A074065

/-- `∑[char[A186539(n+1)]]` -/
def P13449211223405981938.Spec : Prop :=
  ∀ n, (P13449211223405981938.a n : ℤ) = A074065 (n + 1)

end A074065

/-! ## A074065.P4740616019081632135

`A182772(n+1)-(n+1)`
-/

namespace A074065.P4740616019081632135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (n + 1) - (n + 1 : ℤ)

end

end A074065.P4740616019081632135

namespace A074065

/-- `A182772(n+1)-(n+1)` -/
def P4740616019081632135.Spec : Prop :=
  ∀ n, P4740616019081632135.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P16837298221439847164

`Δ[n²]-A003511(n+1)`
-/

namespace A074065.P16837298221439847164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A003511 (n + 1)

end

end A074065.P16837298221439847164

namespace A074065

/-- `Δ[n²]-A003511(n+1)` -/
def P16837298221439847164.Spec : Prop :=
  ∀ n, P16837298221439847164.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P14970914635871410211

`2*(n+1)-A188070(n+1)`
-/

namespace A074065.P14970914635871410211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A188070 (n + 1)

end

end A074065.P14970914635871410211

namespace A074065

/-- `2*(n+1)-A188070(n+1)` -/
def P14970914635871410211.Spec : Prop :=
  ∀ n, P14970914635871410211.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P6948405385705331368

`A016789(n)-A054406(n+1)`
-/

namespace A074065.P6948405385705331368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A054406 (n + 1)

end

end A074065.P6948405385705331368

namespace A074065

/-- `A016789(n)-A054406(n+1)` -/
def P6948405385705331368.Spec : Prop :=
  ∀ n, P6948405385705331368.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P13615916617193579253

`A267872(n)%A003511(n+1)`
-/

namespace A074065.P13615916617193579253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n) (A003511 (n + 1))

end

end A074065.P13615916617193579253

namespace A074065

/-- `A267872(n)%A003511(n+1)` -/
def P13615916617193579253.Spec : Prop :=
  ∀ n, P13615916617193579253.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P11061896118743497310

`A016777(n)+1-A054406(n+1)`
-/

namespace A074065.P11061896118743497310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A054406 (n + 1))

end

end A074065.P11061896118743497310

namespace A074065

/-- `A016777(n)+1-A054406(n+1)` -/
def P11061896118743497310.Spec : Prop :=
  ∀ n, P11061896118743497310.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P9409609992653735037

`A182777(n+1)-A014245(n+1)`
-/

namespace A074065.P9409609992653735037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1) - A014245 (n + 1)

end

end A074065.P9409609992653735037

namespace A074065

/-- `A182777(n+1)-A014245(n+1)` -/
def P9409609992653735037.Spec : Prop :=
  ∀ n, P9409609992653735037.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P14486582374784786148

`A061570(n+1)%A054406(n+1)`
-/

namespace A074065.P14486582374784786148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061570 (n + 1)) (A054406 (n + 1))

end

end A074065.P14486582374784786148

namespace A074065

/-- `A061570(n+1)%A054406(n+1)` -/
def P14486582374784786148.Spec : Prop :=
  ∀ n, P14486582374784786148.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P15901765249329628816

`A182772(n+1)%A000027(n+1)`
-/

namespace A074065.P15901765249329628816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182772 (n + 1)) (A000027 (n + 1))

end

end A074065.P15901765249329628816

namespace A074065

/-- `A182772(n+1)%A000027(n+1)` -/
def P15901765249329628816.Spec : Prop :=
  ∀ n, P15901765249329628816.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P2962925702556112138

`A163300(n+1)%A188070(n+1)`
-/

namespace A074065.P2962925702556112138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A188070 (n + 1))

end

end A074065.P2962925702556112138

namespace A074065

/-- `A163300(n+1)%A188070(n+1)` -/
def P2962925702556112138.Spec : Prop :=
  ∀ n, P2962925702556112138.a n = A074065 (n + 1)

end A074065

/-! ## A074065.P10705560637318011112

`A016777(n)-(A003511(n+1)+n)`
-/

namespace A074065.P10705560637318011112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A003511 (n + 1) + (n : ℤ))

end

end A074065.P10705560637318011112

namespace A074065

/-- `A016777(n)-(A003511(n+1)+n)` -/
def P10705560637318011112.Spec : Prop :=
  ∀ n, P10705560637318011112.a n = A074065 (n + 1)

end A074065

/-!
# A074066: Zigzag modulo 3.

The programs for A074066, the canonical program `A074066.P4497074622983869241` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074066 has offset 1).

The definition of A074066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074066.P3238578733188510585

`ogf((1+3x-x^2-2x^3+2x^4)/(1-x-x^3+x^4))`
-/

namespace A074066.P3238578733188510585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, -2, 2] [1, -1, 0, -1, 1] n

end

end A074066.P3238578733188510585

namespace A074066

/-- `ogf((1+3x-x^2-2x^3+2x^4)/(1-x-x^3+x^4))` -/
def P3238578733188510585.Spec : Prop :=
  ∀ n, P3238578733188510585.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P4497074622983869241

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074066

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P4497074622983869241.Spec : Prop :=
  ∀ n, P4497074622983869241.a n = A074066 (n + 1)

theorem P4497074622983869241.correct : P4497074622983869241.Spec := by
  intro n
  simp only [A074066, Nat.add_sub_cancel]

end A074066

/-! ## A074066.P10032108699709096090

`a(n-3)+3` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2`
-/

namespace A074066.P10032108699709096090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 2] fun n a =>
  a (n - 3) + 3

end

end A074066.P10032108699709096090

namespace A074066

/-- `a(n-3)+3` -/
def P10032108699709096090.Spec : Prop :=
  ∀ n, (P10032108699709096090.a n : ℤ) = A074066 (n + 1)

end A074066

/-! ## A074066.P3277907891675733881

`(4*n)%6+abs(1-n)`
-/

namespace A074066.P3277907891675733881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n % 6 : ℕ) : ℤ) + |1 - (n : ℤ)|

end

end A074066.P3277907891675733881

namespace A074066

/-- `(4*n)%6+abs(1-n)` -/
def P3277907891675733881.Spec : Prop :=
  ∀ n, P3277907891675733881.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P10988274270918151904

`abs(∑[or(5, (n+1)%3-2)])`
-/

namespace A074066.P10988274270918151904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((((n + 1) % 3 : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A074066.P10988274270918151904

namespace A074066

/-- `abs(∑[or(5, (n+1)%3-2)])` -/
def P10988274270918151904.Spec : Prop :=
  ∀ n, P10988274270918151904.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P12992969072421681927

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=-1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A074066.P12992969072421681927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1, -1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074066.P12992969072421681927

namespace A074066

/-- `∑[floor(a(n-3))]` -/
def P12992969072421681927.Spec : Prop :=
  ∀ n, P12992969072421681927.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P17334344363201839530

`2*a(n-1)%3-(1-n)` with `a(0)=1, a(1)=4`
-/

namespace A074066.P17334344363201839530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * Int.tmod (a (n - 1)) 3 - (1 - (n : ℤ))

end

end A074066.P17334344363201839530

namespace A074066

/-- `2*a(n-1)%3-(1-n)` -/
def P17334344363201839530.Spec : Prop :=
  ∀ n, P17334344363201839530.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P11510713320414336327

`3*n-a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A074066.P11510713320414336327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n a =>
  (3 * n : ℤ) - a (n - 1) - a (n - 2)

end

end A074066.P11510713320414336327

namespace A074066

/-- `3*n-a(n-1)-a(n-2)` -/
def P11510713320414336327.Spec : Prop :=
  ∀ n, P11510713320414336327.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P14458205316380564506

`∑[3-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=-1`
-/

namespace A074066.P14458205316380564506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1, -1] fun n f1 =>
  3 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074066.P14458205316380564506

namespace A074066

/-- `∑[3-a(n-1)-a(n-2)]` -/
def P14458205316380564506.Spec : Prop :=
  ∀ n, P14458205316380564506.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P10945901828152834531

`2*A004277(n)%3+n-1`
-/

namespace A074066.P10945901828152834531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A004277 n) 3 + ((n : ℤ) - 1)

end

end A074066.P10945901828152834531

namespace A074066

/-- `2*A004277(n)%3+n-1` -/
def P10945901828152834531.Spec : Prop :=
  ∀ n, P10945901828152834531.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P11959587933827775852

`A080782(A143097(A080782(n+1)))`
-/

namespace A074066.P11959587933827775852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A143097 (A080782 (n + 1)).toNat).toNat

end

end A074066.P11959587933827775852

namespace A074066

/-- `A080782(A143097(A080782(n+1)))` -/
def P11959587933827775852.Spec : Prop :=
  ∀ n, P11959587933827775852.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P16800931363492390899

`A143098(A143097(n+1))+A064429(n)`
-/

namespace A074066.P16800931363492390899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (A143097 (n + 1)).toNat + A064429 n

end

end A074066.P16800931363492390899

namespace A074066

/-- `A143098(A143097(n+1))+A064429(n)` -/
def P16800931363492390899.Spec : Prop :=
  ∀ n, P16800931363492390899.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P3260347759761755146

`A143097(A143098(A143097(n+1))+n)`
-/

namespace A074066.P3260347759761755146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A143098 (A143097 (n + 1)).toNat + (n : ℤ)).toNat

end

end A074066.P3260347759761755146

namespace A074066

/-- `A143097(A143098(A143097(n+1))+n)` -/
def P3260347759761755146.Spec : Prop :=
  ∀ n, P3260347759761755146.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P2808912746266089777

`A143097(n+1)+A143097(n+1)-A330396(n+1)`
-/

namespace A074066.P2808912746266089777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1) + (A143097 (n + 1) - A330396 (n + 1))

end

end A074066.P2808912746266089777

namespace A074066

/-- `A143097(n+1)+A143097(n+1)-A330396(n+1)` -/
def P2808912746266089777.Spec : Prop :=
  ∀ n, P2808912746266089777.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P6442133884810308045

`n+3-Δ[A264788(n+1)]`
-/

namespace A074066.P6442133884810308045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A074066.P6442133884810308045

namespace A074066

/-- `n+3-Δ[A264788(n+1)]` -/
def P6442133884810308045.Spec : Prop :=
  ∀ n, P6442133884810308045.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P4166159262893007920

`abs(abs(A113655(n+3)-1)-1)`
-/

namespace A074066.P4166159262893007920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A113655 (n + 3) - 1| - 1)|

end

end A074066.P4166159262893007920

namespace A074066

/-- `abs(abs(A113655(n+3)-1)-1)` -/
def P4166159262893007920.Spec : Prop :=
  ∀ n, P4166159262893007920.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P16675587434385008491

`A004483(A330396(1-A099837(n)+n))`
-/

namespace A074066.P16675587434385008491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A330396 (1 - A099837 n + (n : ℤ)).toNat).toNat

end

end A074066.P16675587434385008491

namespace A074066

/-- `A004483(A330396(1-A099837(n)+n))` -/
def P16675587434385008491.Spec : Prop :=
  ∀ n, P16675587434385008491.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P1882843068257099385

`A338478(A333780(n+1))`
-/

namespace A074066.P1882843068257099385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338478 (A333780 (n + 1)).toNat

end

end A074066.P1882843068257099385

namespace A074066

/-- `A338478(A333780(n+1))` -/
def P1882843068257099385.Spec : Prop :=
  ∀ n, P1882843068257099385.a n = A074066 (n + 1)

end A074066

/-! ## A074066.P16683113654818459324

`Δ[A080782(A133263(n))]`
-/

namespace A074066.P16683113654818459324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074066.P16683113654818459324

namespace A074066

/-- `Δ[A080782(A133263(n))]` -/
def P16683113654818459324.Spec : Prop :=
  ∀ n, P16683113654818459324.a n = A074066 (n + 1)

end A074066

/-!
# A074067: Zigzag modulo 5.

The programs for A074067, the canonical program `A074067.P11614826749440763609` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074067 has offset 1).

The definition of A074067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074067.P11614826749440763609

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=6, a(4)=5, a(5)=4, a(6)=3, a(7)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074067

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P11614826749440763609.Spec : Prop :=
  ∀ n, P11614826749440763609.a n = A074067 (n + 1)

theorem P11614826749440763609.correct : P11614826749440763609.Spec := by
  intro n
  simp only [A074067, Nat.add_sub_cancel]

end A074067

/-! ## A074067.P16912565818868582936

`a(n-5)+5` with `a(0)=1, a(1)=2, a(2)=7, a(3)=6, a(4)=5, a(5)=4, a(6)=3`
-/

namespace A074067.P16912565818868582936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 6, 5, 4, 3] fun n a =>
  a (n - 5) + 5

end

end A074067.P16912565818868582936

namespace A074067

/-- `a(n-5)+5` -/
def P16912565818868582936.Spec : Prop :=
  ∀ n, (P16912565818868582936.a n : ℤ) = A074067 (n + 1)

end A074067

/-! ## A074067.P8271605485304917681

`abs(Δ[A000124(n)-A134301(n)])`
-/

namespace A074067.P8271605485304917681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A134301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A074067.P8271605485304917681

namespace A074067

/-- `abs(Δ[A000124(n)-A134301(n)])` -/
def P8271605485304917681.Spec : Prop :=
  ∀ n, P8271605485304917681.a n = A074067 (n + 1)

end A074067

/-! ## A074067.P6910252281485278874

`abs(Δ[A000217(n)-A134301(n)])`
-/

namespace A074067.P6910252281485278874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A134301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A074067.P6910252281485278874

namespace A074067

/-- `abs(Δ[A000217(n)-A134301(n)])` -/
def P6910252281485278874.Spec : Prop :=
  ∀ n, P6910252281485278874.a n = A074067 (n + 1)

end A074067

/-! ## A074067.P16747382687987790307

`abs(3-n-A177154(n+4))`
-/

namespace A074067.P16747382687987790307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ) - A177154 (n + 4)|

end

end A074067.P16747382687987790307

namespace A074067

/-- `abs(3-n-A177154(n+4))` -/
def P16747382687987790307.Spec : Prop :=
  ∀ n, P16747382687987790307.a n = A074067 (n + 1)

end A074067

/-! ## A074067.P5868117520957263249

`A237415(A237415(n+1))%(A237415(n+1)+n+1)`
-/

namespace A074067.P5868117520957263249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237415 (A237415 (n + 1)).toNat) (A237415 (n + 1) + (n + 1 : ℤ))

end

end A074067.P5868117520957263249

namespace A074067

/-- `A237415(A237415(n+1))%(A237415(n+1)+n+1)` -/
def P5868117520957263249.Spec : Prop :=
  ∀ n, P5868117520957263249.a n = A074067 (n + 1)

end A074067

/-!
# A074068: Zigzag modulo 7.

The programs for A074068, the canonical program `A074068.P5328439927528761894` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074068 has offset 1).

The definition of A074068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074068.P5328439927528761894

`ogf((1+x+x^2+7x^3-x^4-x^5-x^6-2x^7-2x^8-2x^9+6x^10)/(1-x-x^7+x^8))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074068

/-- `ogf((1+x+x^2+7x^3-x^4-x^5-x^6-2x^7-2x^8-2x^9+6x^10)/(1-x-x^7+x^8))` -/
def P5328439927528761894.Spec : Prop :=
  ∀ n, P5328439927528761894.a n = A074068 (n + 1)

theorem P5328439927528761894.correct : P5328439927528761894.Spec := by
  intro n
  simp only [A074068, Nat.add_sub_cancel]

end A074068

/-! ## A074068.P4061368293455751145

`A115307(n+4)-A010693(A108754(2*n+3))`
-/

namespace A074068.P4061368293455751145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115307 (n + 4) - A010693 (A108754 (2 * n + 3)).toNat

end

end A074068.P4061368293455751145

namespace A074068

/-- `A115307(n+4)-A010693(A108754(2*n+3))` -/
def P4061368293455751145.Spec : Prop :=
  ∀ n, P4061368293455751145.a n = A074068 (n + 1)

end A074068

/-!
# A074069: Numbers k such that S(k) = Sum_{i=1..k} A068119(i) = 3*k.

The programs for A074069, there is no canonical definition to state claims against.
-/

/-! ## A074069.P9524251042879628213

`eq[0, A074077(n+1)]+1`
-/

namespace A074069.P9524251042879628213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074069.P9524251042879628213

/-! ## A074069.P12513367836566288959

`record[gcd(A000027(n+1), A074077(n+1))]`
-/

namespace A074069.P12513367836566288959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A074077 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074069.P12513367836566288959

/-! ## A074069.P8503309301201846532

`eq[A000007(n), A074077(A028310(n))]`
-/

namespace A074069.P8503309301201846532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074077 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074069.P8503309301201846532

/-! ## A074069.P2896474708679774493

`eq[A000038(n), A074077(A028310(n))]`
-/

namespace A074069.P2896474708679774493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074077 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074069.P2896474708679774493

/-! ## A074069.P11850485182950259480

`eq[A074077(A028310(n)), A151878(n)]`
-/

namespace A074069.P11850485182950259480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074077 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074069.P11850485182950259480

/-!
# A074070: Number of Paley classes of Hadamard matrices of order 4n.

The programs for A074070, there is no canonical definition to state claims against.
-/

/-! ## A074070.P2771059737250099837

`A202714(A126265(n+2))%7`
-/

namespace A074070.P2771059737250099837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202714 (A126265 (n + 2)).toNat) 7

end

end A074070.P2771059737250099837

/-! ## A074070.P390450806986239490

`A003849(A008781(n+1))+A001511(n+1)`
-/

namespace A074070.P390450806986239490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A008781 (n + 1)).toNat + A001511 (n + 1)

end

end A074070.P390450806986239490

/-! ## A074070.P1018057850614412623

`A091304(A046316(n+6)*A266303(n+6))`
-/

namespace A074070.P1018057850614412623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A046316 (n + 6) * A266303 (n + 6)).toNat

end

end A074070.P1018057850614412623

/-! ## A074070.P9732129864144623573

`A001511(n+1)+A121445(3*(n+1))%2`
-/

namespace A074070.P9732129864144623573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + Int.tmod (A121445 (3 * (n + 1))) 2

end

end A074070.P9732129864144623573

/-! ## A074070.P16244417660874997731

`A278538(n+2)+A127236(A127279(n))`
-/

namespace A074070.P16244417660874997731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (n + 2) + A127236 (A127279 n).toNat

end

end A074070.P16244417660874997731

/-!
# A074072: Numerators of iterations of Thue-Morse sequence.

The programs for A074072, there is no canonical definition to state claims against.
-/

/-! ## A074072.P356048061076696039

`A048707(n)/gcd(2, n)`
-/

namespace A074072.P356048061076696039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048707 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A074072.P356048061076696039

/-! ## A074072.P6303185264263808464

`A048707(n)/A001285(A035457(n))`
-/

namespace A074072.P6303185264263808464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048707 n : ℚ) / (A001285 (A035457 n).toNat : ℚ)

end

end A074072.P6303185264263808464

/-! ## A074072.P2277376706172032866

`A048707(n)/A278493(A005811(n))`
-/

namespace A074072.P2277376706172032866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048707 n : ℚ) / (A278493 (A005811 n).toNat : ℚ)

end

end A074072.P2277376706172032866

/-! ## A074072.P641040363274252219

`A048707(n)/A001221(A333176(n+1))`
-/

namespace A074072.P641040363274252219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048707 n : ℚ) / (A001221 (A333176 (n + 1)).toNat : ℚ)

end

end A074072.P641040363274252219

/-!
# A074073: Denominators of iterations of Thue-Morse sequence.

The programs for A074073, there is no canonical definition to state claims against.
-/

/-! ## A074073.P14600659020057593938

`2^2^n/gcd(2, n)`
-/

namespace A074073.P14600659020057593938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A074073.P14600659020057593938

/-! ## A074073.P12550843997540448713

`2^(2^n-char[2*n])`
-/

namespace A074073.P12550843997540448713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A074073.P12550843997540448713

/-! ## A074073.P1024583610354265231

`round(2^(n%2+2^n-1))`
-/

namespace A074073.P1024583610354265231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (((n % 2 + 2 ^ n : ℕ) : ℤ) - 1 : ℤ))

end

end A074073.P1024583610354265231

/-! ## A074073.P17108327424192061421

`2*a(n-1)*a(n-2)²` with `a(0)=1, a(1)=4`
-/

namespace A074073.P17108327424192061421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) * a (n - 2) ^ 2

end

end A074073.P17108327424192061421

/-! ## A074073.P5736377308290121120

`A000079(A166920(n))`
-/

namespace A074073.P5736377308290121120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A166920 n).toNat

end

end A074073.P5736377308290121120

/-!
# A074074: The numbers D in the set {D :=(2n+1)^2-4m^2, 1<=m<=n} that generate the smallest solution x to x^2 - D*y^2 = 1.

The programs for A074074, there is no canonical definition to state claims against.
-/

/-! ## A074074.P12425046979517864332

`A072069(A001595(3*n+4)+1)+A062985(n)`
-/

namespace A074074.P12425046979517864332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072069 (A001595 (3 * n + 4) + 1).toNat + A062985 n

end

end A074074.P12425046979517864332

/-!
# A074075: Values of m corresponding to the minimization problem of A074074.

The programs for A074075, there is no canonical definition to state claims against.
-/

/-! ## A074075.P12137236349293561988

`sqrt((2*(n+1)+1)²-A074074(n+1))/2`
-/

namespace A074075.P12137236349293561988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((2 * (n + 1) + 1) ^ 2 : ℤ) - A074074 (n + 1) : ℝ) / 2

end

end A074075.P12137236349293561988

/-!
# A074077: a(n) = 3n - Sum_{k=1..n} A068119(n).

The programs for A074077, there is no canonical definition to state claims against.
-/

/-! ## A074077.P6860648320403435956

`a(n-1)+3-A068119(n+1)` with `a(0)=0`
-/

namespace A074077.P6860648320403435956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 - A068119 (n + 1)

end

end A074077.P6860648320403435956

/-! ## A074077.P17160743164849059163

`∑[3-A068119(n+1)]`
-/

namespace A074077.P17160743164849059163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A068119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P17160743164849059163

/-! ## A074077.P4880682532912812895

`∑[3-A073341(2*(n+1))]`
-/

namespace A074077.P4880682532912812895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A073341 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P4880682532912812895

/-! ## A074077.P10191378390726372503

`∑[A001489(A068119(n+1)+1)+4]`
-/

namespace A074077.P10191378390726372503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A068119 (n + 1) + 1).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P10191378390726372503

/-! ## A074077.P1278232362333745217

`∑[3-A000027(A073341(n+2+n))]`
-/

namespace A074077.P1278232362333745217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000027 (A073341 (n + 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P1278232362333745217

/-! ## A074077.P6664770518215297630

`∑[3-A073890(A073341(n+2+n)²)]`
-/

namespace A074077.P6664770518215297630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A073890 (A073341 (n + 2 + n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P6664770518215297630

/-! ## A074077.P10773804130663026969

`∑[3-or(A000007(n), A073341(n+2+n))]`
-/

namespace A074077.P10773804130663026969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.lor (A000007 n) (A073341 (n + 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074077.P10773804130663026969

/-!
# A074079: Square array A(row,col) (listed in order A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), A(0,3), etc.), giving essentially the same information as the triangle A074080 which shows only the upper triangular region.

The programs for A074079, there is no canonical definition to state claims against.
-/

/-! ## A074079.P11242011581723513690

`A073346(n)/A004070(n)`
-/

namespace A074079.P11242011581723513690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A004070 n : ℚ)

end

end A074079.P11242011581723513690

/-! ## A074079.P16119769101709087555

`A073346(n)/A059268(n)`
-/

namespace A074079.P16119769101709087555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A059268 n : ℚ)

end

end A074079.P16119769101709087555

/-! ## A074079.P885442316560611149

`A073346(n)/A144464(n)`
-/

namespace A074079.P885442316560611149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A144464 n : ℚ)

end

end A074079.P885442316560611149

/-! ## A074079.P6517790593058282528

`A073346(n)/A145111(n)`
-/

namespace A074079.P6517790593058282528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A145111 n : ℚ)

end

end A074079.P6517790593058282528

/-! ## A074079.P16866845519980715120

`A073346(n)/A216274(n)`
-/

namespace A074079.P16866845519980715120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A216274 n : ℚ)

end

end A074079.P16866845519980715120

/-! ## A074079.P15739304782197799785

`A073346(n)/A048887(n+1)`
-/

namespace A074079.P15739304782197799785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A048887 (n + 1) : ℚ)

end

end A074079.P15739304782197799785

/-! ## A074079.P10402750076907475238

`A073346(n)/A059250(n+1)`
-/

namespace A074079.P10402750076907475238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A059250 (n + 1) : ℚ)

end

end A074079.P10402750076907475238

/-! ## A074079.P7333415981181410733

`A073346(n)/A368175(n+1)`
-/

namespace A074079.P7333415981181410733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A368175 (n + 1) : ℚ)

end

end A074079.P7333415981181410733

/-! ## A074079.P14774271506556756775

`A073346(n)/Δ[A099627(n)]`
-/

namespace A074079.P14774271506556756775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A074079.P14774271506556756775

/-! ## A074079.P11004973416299369827

`A073346(n)/Δ[A173786(n)]`
-/

namespace A074079.P11004973416299369827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A074079.P11004973416299369827

/-! ## A074079.P2632936813465359541

`A073346(n)/A209435(n)`
-/

namespace A074079.P2632936813465359541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A209435 n : ℚ)

end

end A074079.P2632936813465359541

/-! ## A074079.P11635348661465654892

`A073346(n)/A171840(n+1)`
-/

namespace A074079.P11635348661465654892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A171840 (n + 1) : ℚ)

end

end A074079.P11635348661465654892

/-! ## A074079.P7586900992669331615

`A073346(n)/A233308(n)`
-/

namespace A074079.P7586900992669331615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073346 n : ℚ) / (A233308 n : ℚ)

end

end A074079.P7586900992669331615

/-!
# A074080: Triangle T(n,k) (listed in order T(1,0), T(2,0), T(2,1), T(3,0), T(3,1), T(3,2), T(4,0), etc.) giving the number of 2^k-cycles that occur in the n-th sub-permutation of A069767/A069768 (i.e., in the range [A014137(n-1)..A014138(n-1)] inclusive).

The programs for A074080, there is no canonical definition to state claims against.
-/

/-! ## A074080.P828239605187670513

`and(A172515(A107235(n)), A219607(n))`
-/

namespace A074080.P828239605187670513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172515 (A107235 n).toNat) (A219607 n)

end

end A074080.P828239605187670513

/-! ## A074080.P6822411283144184349

`gcd(A114021(n), A332015(A310911(n)))`
-/

namespace A074080.P6822411283144184349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114021 n) (A332015 (A310911 n).toNat)

end

end A074080.P6822411283144184349

/-! ## A074080.P7542314719993096015

`and(A113370(A122762(n)), A219607(n))`
-/

namespace A074080.P7542314719993096015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113370 (A122762 n).toNat) (A219607 n)

end

end A074080.P7542314719993096015

/-! ## A074080.P14003938611732217662

`A114021(n)+A008683(A261968(2*n))`
-/

namespace A074080.P14003938611732217662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 n + A008683 (A261968 (2 * n)).toNat

end

end A074080.P14003938611732217662

/-! ## A074080.P2456479407755094889

`A352512(A151724(n)+1)`
-/

namespace A074080.P2456479407755094889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A151724 n + 1).toNat

end

end A074080.P2456479407755094889

/-!
# A074081: Sum of determinants of 3rd-order principal minors of powers of inverse of tetramatrix ((1,1,0,0),(1,0,1,0),(1,0,0,1),(1,0,0,0)).

The programs for A074081, the canonical program `A074081.P11070553347800803729` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074081 has offset 0).

The definition of A074081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074081.P11070553347800803729

`ogf((4+3x-2x^2+x^3)/(1+x-x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074081

/-- `ogf((4+3x-2x^2+x^3)/(1+x-x^2+x^3-x^4))` -/
def P11070553347800803729.Spec : Prop :=
  ∀ n, P11070553347800803729.a n = A074081 n

theorem P11070553347800803729.correct : P11070553347800803729.Spec := by
  intro n
  simp only [A074081]

end A074081

/-! ## A074081.P10294358627982683923

`(-1)^n*A073817(n)`
-/

namespace A074081.P10294358627982683923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073817 n

end

end A074081.P10294358627982683923

namespace A074081

/-- `(-1)^n*A073817(n)` -/
def P10294358627982683923.Spec : Prop :=
  ∀ n, P10294358627982683923.a n = A074081 n

end A074081

/-! ## A074081.P8289904939401489213

`A073817(n)/A033999(n)`
-/

namespace A074081.P8289904939401489213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n : ℚ) / (A033999 n : ℚ)

end

end A074081.P8289904939401489213

namespace A074081

/-- `A073817(n)/A033999(n)` -/
def P8289904939401489213.Spec : Prop :=
  ∀ n, P8289904939401489213.a n = (A074081 n : ℚ)

end A074081

/-! ## A074081.P7076085478792181856

`A073817(n)/A056594(2*n)`
-/

namespace A074081.P7076085478792181856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A074081.P7076085478792181856

namespace A074081

/-- `A073817(n)/A056594(2*n)` -/
def P7076085478792181856.Spec : Prop :=
  ∀ n, P7076085478792181856.a n = (A074081 n : ℚ)

end A074081

/-! ## A074081.P11316918850317836966

`-((n-A004442(n))*A073817(n))`
-/

namespace A074081.P11316918850317836966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - A004442 n) * A073817 n)

end

end A074081.P11316918850317836966

namespace A074081

/-- `-((n-A004442(n))*A073817(n))` -/
def P11316918850317836966.Spec : Prop :=
  ∀ n, P11316918850317836966.a n = A074081 n

end A074081

/-! ## A074081.P16011842091396815134

`A073817(n)/A073937(n)*A074058(n)`
-/

namespace A074081.P16011842091396815134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n : ℚ) / (A073937 n : ℚ) * (A074058 n : ℚ)

end

end A074081.P16011842091396815134

namespace A074081

/-- `A073817(n)/A073937(n)*A074058(n)` -/
def P16011842091396815134.Spec : Prop :=
  ∀ n, P16011842091396815134.a n = (A074081 n : ℚ)

end A074081

/-! ## A074081.P11411476387888206403

`A073817(n)/A074193(n)*A074453(n)`
-/

namespace A074081.P11411476387888206403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n : ℚ) / (A074193 n : ℚ) * (A074453 n : ℚ)

end

end A074081.P11411476387888206403

namespace A074081

/-- `A073817(n)/A074193(n)*A074453(n)` -/
def P11411476387888206403.Spec : Prop :=
  ∀ n, P11411476387888206403.a n = (A074081 n : ℚ)

end A074081

/-! ## A074081.P7960671805575031122

`A073817(n)*A073937(n)/A074058(n)`
-/

namespace A074081.P7960671805575031122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A073937 n : ℚ) / (A074058 n : ℚ)

end

end A074081.P7960671805575031122

namespace A074081

/-- `A073817(n)*A073937(n)/A074058(n)` -/
def P7960671805575031122.Spec : Prop :=
  ∀ n, P7960671805575031122.a n = (A074081 n : ℚ)

end A074081

/-! ## A074081.P9297574276301344951

`A073817(n)*A074193(n)/A074453(n)`
-/

namespace A074081.P9297574276301344951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A074193 n : ℚ) / (A074453 n : ℚ)

end

end A074081.P9297574276301344951

namespace A074081

/-- `A073817(n)*A074193(n)/A074453(n)` -/
def P9297574276301344951.Spec : Prop :=
  ∀ n, P9297574276301344951.a n = (A074081 n : ℚ)

end A074081

/-!
# A074082: Coefficient of q^2 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,1).

The programs for A074082, the canonical program `A074082.P4981834889112120078` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074082 has offset 0).

The definition of A074082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074082.P14829923254536968474

`ogf((2x^4-2x^6-x^7)/(1-3x+5x^3-3x^5-x^6))`
-/

namespace A074082.P14829923254536968474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 2, 0, -2, -1] [1, -3, 0, 5, 0, -3, -1] n

end

end A074082.P14829923254536968474

namespace A074082

/-- `ogf((2x^4-2x^6-x^7)/(1-3x+5x^3-3x^5-x^6))` -/
def P14829923254536968474.Spec : Prop :=
  ∀ n, P14829923254536968474.a n = A074082 n

end A074082

/-! ## A074082.P4981834889112120078

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=6, a(6)=16, a(7)=37`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074082

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P4981834889112120078.Spec : Prop :=
  ∀ n, P4981834889112120078.a n = A074082 n

theorem P4981834889112120078.correct : P4981834889112120078.Spec := by
  intro n
  simp only [A074082]

end A074082

/-! ## A074082.P9807362518985985017

`A257839(A133914(n+1)-A257839(n+1))-n`
-/

namespace A074082.P9807362518985985017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A133914 (n + 1) - A257839 (n + 1)).toNat - (n : ℤ)

end

end A074082.P9807362518985985017

namespace A074082

/-- `A257839(A133914(n+1)-A257839(n+1))-n` -/
def P9807362518985985017.Spec : Prop :=
  ∀ n, P9807362518985985017.a n = A074082 n

end A074082

/-! ## A074082.P16305609839922973504

`∑[A133924(A303160(n))]`
-/

namespace A074082.P16305609839922973504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133924 (A303160 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074082.P16305609839922973504

namespace A074082

/-- `∑[A133924(A303160(n))]` -/
def P16305609839922973504.Spec : Prop :=
  ∀ n, P16305609839922973504.a n = A074082 n

end A074082

/-! ## A074082.P2303999464122753833

`A336487(A178742(n)+1)`
-/

namespace A074082.P2303999464122753833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336487 (A178742 n + 1).toNat

end

end A074082.P2303999464122753833

namespace A074082

/-- `A336487(A178742(n)+1)` -/
def P2303999464122753833.Spec : Prop :=
  ∀ n, P2303999464122753833.a n = A074082 n

end A074082

/-!
# A074083: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,1).

The programs for A074083, the canonical program `A074083.P10245903301347639786` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074083 has offset 0).

The definition of A074083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074083.P10245903301347639786

`ogf((4x^5-2x^6-9x^7+x^8+6x^9+2x^10)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074083

/-- `ogf((4x^5-2x^6-9x^7+x^8+6x^9+2x^10)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))` -/
def P10245903301347639786.Spec : Prop :=
  ∀ n, P10245903301347639786.a n = A074083 n

theorem P10245903301347639786.correct : P10245903301347639786.Spec := by
  intro n
  simp only [A074083]

end A074083

/-! ## A074083.P13548526524428634198

`A325646(A178742(n)+1)`
-/

namespace A074083.P13548526524428634198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325646 (A178742 n + 1).toNat

end

end A074083.P13548526524428634198

namespace A074083

/-- `A325646(A178742(n)+1)` -/
def P13548526524428634198.Spec : Prop :=
  ∀ n, P13548526524428634198.a n = A074083 n

end A074083

/-! ## A074083.P3731786998075394424

`(A036617(n)-n)%A123840(n+1)`
-/

namespace A074083.P3731786998075394424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036617 n - (n : ℤ)) (A123840 (n + 1))

end

end A074083.P3731786998075394424

namespace A074083

/-- `(A036617(n)-n)%A123840(n+1)` -/
def P3731786998075394424.Spec : Prop :=
  ∀ n, P3731786998075394424.a n = A074083 n

end A074083

/-! ## A074083.P6762026108328380360

`A055086(A128714(n))-A161680(n)`
-/

namespace A074083.P6762026108328380360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A128714 n).toNat - A161680 n

end

end A074083.P6762026108328380360

namespace A074083

/-- `A055086(A128714(n))-A161680(n)` -/
def P6762026108328380360.Spec : Prop :=
  ∀ n, P6762026108328380360.a n = A074083 n

end A074083

/-! ## A074083.P9298287753238939197

`A055086(A150632(n)-A150630(n))`
-/

namespace A074083.P9298287753238939197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A150632 n - A150630 n).toNat

end

end A074083.P9298287753238939197

namespace A074083

/-- `A055086(A150632(n)-A150630(n))` -/
def P9298287753238939197.Spec : Prop :=
  ∀ n, P9298287753238939197.a n = A074083 n

end A074083

/-!
# A074084: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,1).

The programs for A074084, the canonical program `A074084.P3846519431969064586` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074084 has offset 0).

The definition of A074084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074084.P11619452010309075433

`ogf((2x^3+x^4)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A074084.P11619452010309075433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, 1] [1, -4, 2, 4, 1] n

end

end A074084.P11619452010309075433

namespace A074084

/-- `ogf((2x^3+x^4)/(1-4x+2x^2+4x^3+x^4))` -/
def P11619452010309075433.Spec : Prop :=
  ∀ n, P11619452010309075433.a n = A074084 n

end A074084

/-! ## A074084.P3846519431969064586

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074084

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P3846519431969064586.Spec : Prop :=
  ∀ n, P3846519431969064586.a n = A074084 n

theorem P3846519431969064586.correct : P3846519431969064586.Spec := by
  intro n
  simp only [A074084]

end A074084

/-! ## A074084.P15188718268411180039

`A291142(n+1)-Δ[A052542(n)]`
-/

namespace A074084.P15188718268411180039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 1) - (f1 (n + 1) - f1 n)

end

end A074084.P15188718268411180039

namespace A074084

/-- `A291142(n+1)-Δ[A052542(n)]` -/
def P15188718268411180039.Spec : Prop :=
  ∀ n, P15188718268411180039.a n = A074084 n

end A074084

/-! ## A074084.P16096373625610074716

`A176981(A028310(n))+A006645(n)`
-/

namespace A074084.P16096373625610074716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (A028310 n).toNat + A006645 n

end

end A074084.P16096373625610074716

namespace A074084

/-- `A176981(A028310(n))+A006645(n)` -/
def P16096373625610074716.Spec : Prop :=
  ∀ n, P16096373625610074716.a n = A074084 n

end A074084

/-! ## A074084.P6308290860309202526

`A006645(n)-A135153(A004273(n))`
-/

namespace A074084.P6308290860309202526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n - A135153 (A004273 n).toNat

end

end A074084.P6308290860309202526

namespace A074084

/-- `A006645(n)-A135153(A004273(n))` -/
def P6308290860309202526.Spec : Prop :=
  ∀ n, P6308290860309202526.a n = A074084 n

end A074084

/-! ## A074084.P8721995756696704702

`A006645(n)-A135153(A004275(n))`
-/

namespace A074084.P8721995756696704702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n - A135153 (A004275 n).toNat

end

end A074084.P8721995756696704702

namespace A074084

/-- `A006645(n)-A135153(A004275(n))` -/
def P8721995756696704702.Spec : Prop :=
  ∀ n, P8721995756696704702.a n = A074084 n

end A074084

/-! ## A074084.P166028758814424564

`A006645(n)+A052542(n)-A000129(n+1)`
-/

namespace A074084.P166028758814424564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n + (A052542 n - A000129 (n + 1))

end

end A074084.P166028758814424564

namespace A074084

/-- `A006645(n)+A052542(n)-A000129(n+1)` -/
def P166028758814424564.Spec : Prop :=
  ∀ n, P166028758814424564.a n = A074084 n

end A074084

/-! ## A074084.P2165615930576471796

`Δ[∑[A291142(n)]-A052542(n)]`
-/

namespace A074084.P2165615930576471796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074084.P2165615930576471796

namespace A074084

/-- `Δ[∑[A291142(n)]-A052542(n)]` -/
def P2165615930576471796.Spec : Prop :=
  ∀ n, P2165615930576471796.a n = A074084 n

end A074084

/-! ## A074084.P4013035813533656768

`A054447(n)-Δ[A190215(A134869(n+1))]`
-/

namespace A074084.P4013035813533656768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n - (f1 (n + 1) - f1 n)

end

end A074084.P4013035813533656768

namespace A074084

/-- `A054447(n)-Δ[A190215(A134869(n+1))]` -/
def P4013035813533656768.Spec : Prop :=
  ∀ n, P4013035813533656768.a n = A074084 n

end A074084

/-!
# A074085: Coefficient of q^2 in nu(n), where nu(0) = 1, nu(1) = b and, for n >= 2, nu(n) = b*nu(n-1) + lambda*(1 + q + q^2 + ... + q^(n - 2))*nu(n-2) with (b,lambda) = (2,1).

The programs for A074085, the canonical program `A074085.P15081461826058893704` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074085 has offset 0).

The definition of A074085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074085.P15081461826058893704

`ogf((5x^4-6x^5-8x^6-2x^7)/(1-6x+9x^2+4x^3-9x^4-6x^5-x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074085

/-- `ogf((5x^4-6x^5-8x^6-2x^7)/(1-6x+9x^2+4x^3-9x^4-6x^5-x^6))` -/
def P15081461826058893704.Spec : Prop :=
  ∀ n, P15081461826058893704.a n = A074085 n

theorem P15081461826058893704.correct : P15081461826058893704.Spec := by
  intro n
  simp only [A074085]

end A074085

/-! ## A074085.P14587661237917390473

`A048720(A184181(n))%A241619(3*n+2)`
-/

namespace A074085.P14587661237917390473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048720 (A184181 n).toNat) (A241619 (3 * n + 2))

end

end A074085.P14587661237917390473

namespace A074085

/-- `A048720(A184181(n))%A241619(3*n+2)` -/
def P14587661237917390473.Spec : Prop :=
  ∀ n, P14587661237917390473.a n = A074085 n

end A074085

/-!
# A074086: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,1).

The programs for A074086, the canonical program `A074086.P6294671011160837445` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074086 has offset 0).

The definition of A074086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074086.P6294671011160837445

`ogf((14x^5-41x^6-6x^7+49x^8+30x^9+5x^10)/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074086

/-- `ogf((14x^5-41x^6-6x^7+49x^8+30x^9+5x^10)/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))` -/
def P6294671011160837445.Spec : Prop :=
  ∀ n, P6294671011160837445.a n = A074086 n

theorem P6294671011160837445.correct : P6294671011160837445.Spec := by
  intro n
  simp only [A074086]

end A074086

/-!
# A074087: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,3).

The programs for A074087, the canonical program `A074087.P11240113690246810268` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074087 has offset 0).

The definition of A074087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074087.P12817830377839582203

`ogf((6x^3+9x^4)/(1-4x-2x^2+12x^3+9x^4))`
-/

namespace A074087.P12817830377839582203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 9] [1, -4, -2, 12, 9] n

end

end A074087.P12817830377839582203

namespace A074087

/-- `ogf((6x^3+9x^4)/(1-4x-2x^2+12x^3+9x^4))` -/
def P12817830377839582203.Spec : Prop :=
  ∀ n, P12817830377839582203.a n = A074087 n

end A074087

/-! ## A074087.P11240113690246810268

`4*a(n-1)+2*a(n-2)-12*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6, a(4)=33`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074087

/-- `4*a(n-1)+2*a(n-2)-12*a(n-3)-9*a(n-4)` -/
def P11240113690246810268.Spec : Prop :=
  ∀ n, P11240113690246810268.a n = A074087 n

theorem P11240113690246810268.correct : P11240113690246810268.Spec := by
  intro n
  simp only [A074087]

end A074087

/-! ## A074087.P18133947714667783809

`3*A054900(A080069(n))`
-/

namespace A074087.P18133947714667783809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054900 (A080069 n).toNat

end

end A074087.P18133947714667783809

namespace A074087

/-- `3*A054900(A080069(n))` -/
def P18133947714667783809.Spec : Prop :=
  ∀ n, P18133947714667783809.a n = A074087 n

end A074087

/-!
# A074088: Coefficient of q^2 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,3).

The programs for A074088, the canonical program `A074088.P16035144467092805590` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074088 has offset 0).

The definition of A074088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074088.P16035144467092805590

`ogf((21x^4-6x^5-72x^6-54x^7)/(1-6x+3x^2+28x^3-9x^4-54x^5-27x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074088

/-- `ogf((21x^4-6x^5-72x^6-54x^7)/(1-6x+3x^2+28x^3-9x^4-54x^5-27x^6))` -/
def P16035144467092805590.Spec : Prop :=
  ∀ n, P16035144467092805590.a n = A074088 n

theorem P16035144467092805590.correct : P16035144467092805590.Spec := by
  intro n
  simp only [A074088]

end A074088

/-! ## A074088.P153584807992112685

`A122282(A000051(n))*A140343(n)`
-/

namespace A074088.P153584807992112685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A000051 n).toNat * A140343 n

end

end A074088.P153584807992112685

namespace A074088

/-- `A122282(A000051(n))*A140343(n)` -/
def P153584807992112685.Spec : Prop :=
  ∀ n, P153584807992112685.a n = A074088 n

end A074088

/-! ## A074088.P9617566085657155323

`A000332(n)*A344546(A084635(n))`
-/

namespace A074088.P9617566085657155323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A344546 (A084635 n).toNat

end

end A074088.P9617566085657155323

namespace A074088

/-- `A000332(n)*A344546(A084635(n))` -/
def P9617566085657155323.Spec : Prop :=
  ∀ n, P9617566085657155323.a n = A074088 n

end A074088

/-!
# A074089: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n >= 2, nu(n) = b*nu(n-1) + lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,3).

The programs for A074089, there is no canonical definition to state claims against.
-/

/-! ## A074089.P13875729087292889430

`A242844(n)%A048883(A000522(n))`
-/

namespace A074089.P13875729087292889430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242844 (n + 16)) (A048883 (A000522 n).toNat)

end

end A074089.P13875729087292889430

/-! ## A074089.P13903803608234612048

`A221474(2*(n+1))*A274650(A000351(n))`
-/

namespace A074089.P13903803608234612048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 (2 * (n + 1)) * A274650 (A000351 n).toNat

end

end A074089.P13903803608234612048

/-!
# A074092: Number of plane binary trees of size n+3 and contracted height n.

The programs for A074092, the canonical program `A074092.P7630171247129810887` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074092 has offset 0).

The definition of A074092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074092.P3086738655062900969

`ogf((1-4x+8x^2+8x^3-16x^4)/(1-6x+12x^2-8x^3))`
-/

namespace A074092.P3086738655062900969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 8, 8, -16] [1, -6, 12, -8] n

end

end A074092.P3086738655062900969

namespace A074092

/-- `ogf((1-4x+8x^2+8x^3-16x^4)/(1-6x+12x^2-8x^3))` -/
def P3086738655062900969.Spec : Prop :=
  ∀ n, P3086738655062900969.a n = A074092 n

end A074092

/-! ## A074092.P7630171247129810887

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=40, a(4)=144`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074092

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P7630171247129810887.Spec : Prop :=
  ∀ n, P7630171247129810887.a n = A074092 n

theorem P7630171247129810887.correct : P7630171247129810887.Spec := by
  intro n
  simp only [A074092]

end A074092

/-! ## A074092.P17858217732387680605

`abs((1-(char[1]+∑[n]))*2^n)`
-/

namespace A074092.P17858217732387680605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) * (2 ^ n : ℤ)|

end

end A074092.P17858217732387680605

namespace A074092

/-- `abs((1-(char[1]+∑[n]))*2^n)` -/
def P17858217732387680605.Spec : Prop :=
  ∀ n, P17858217732387680605.a n = A074092 n

end A074092

/-! ## A074092.P3617429552515464505

`2^n*∑[C(n, xor(1, C(2, n)))]`
-/

namespace A074092.P3617429552515464505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074092.P3617429552515464505

namespace A074092

/-- `2^n*∑[C(n, xor(1, C(2, n)))]` -/
def P3617429552515464505.Spec : Prop :=
  ∀ n, (P3617429552515464505.a n : ℤ) = A074092 n

end A074092

/-! ## A074092.P5915802169742615017

`2%n*a(n-1)+n*2^n` with `a(0)=1`
-/

namespace A074092.P5915802169742615017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 % n * a (n - 1) + n * 2 ^ n

end

end A074092.P5915802169742615017

namespace A074092

/-- `2%n*a(n-1)+n*2^n` -/
def P5915802169742615017.Spec : Prop :=
  ∀ n, (P5915802169742615017.a n : ℤ) = A074092 n

end A074092

/-! ## A074092.P16724574061311016587

`2^n*A212342(n)`
-/

namespace A074092.P16724574061311016587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A212342 n

end

end A074092.P16724574061311016587

namespace A074092

/-- `2^n*A212342(n)` -/
def P16724574061311016587.Spec : Prop :=
  ∀ n, P16724574061311016587.a n = A074092 n

end A074092

/-! ## A074092.P13453413612462529976

`A087447(n)*A300576(n+1)`
-/

namespace A074092.P13453413612462529976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n * A300576 (n + 1)

end

end A074092.P13453413612462529976

namespace A074092

/-- `A087447(n)*A300576(n+1)` -/
def P13453413612462529976.Spec : Prop :=
  ∀ n, P13453413612462529976.a n = A074092 n

end A074092

/-! ## A074092.P8412534449551602165

`A011782(n+1)+2*A076616(n+1)`
-/

namespace A074092.P8412534449551602165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A076616 (n + 1)

end

end A074092.P8412534449551602165

namespace A074092

/-- `A011782(n+1)+2*A076616(n+1)` -/
def P8412534449551602165.Spec : Prop :=
  ∀ n, P8412534449551602165.a n = A074092 n

end A074092

/-! ## A074092.P8791510366116913360

`A076616(n+1)+A076616(n+1)+A000079(n)`
-/

namespace A074092.P8791510366116913360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076616 (n + 1) + (A076616 (n + 1) + A000079 n)

end

end A074092.P8791510366116913360

namespace A074092

/-- `A076616(n+1)+A076616(n+1)+A000079(n)` -/
def P8791510366116913360.Spec : Prop :=
  ∀ n, P8791510366116913360.a n = A074092 n

end A074092

/-! ## A074092.P13938534461178858626

`A000079(n)*A038722(A238531(n))`
-/

namespace A074092.P13938534461178858626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A038722 (A238531 n).toNat

end

end A074092.P13938534461178858626

namespace A074092

/-- `A000079(n)*A038722(A238531(n))` -/
def P13938534461178858626.Spec : Prop :=
  ∀ n, P13938534461178858626.a n = A074092 n

end A074092

/-! ## A074092.P1402376695415525042

`2^n*A009766(∑[n]+2)`
-/

namespace A074092.P1402376695415525042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A009766 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A074092.P1402376695415525042

namespace A074092

/-- `2^n*A009766(∑[n]+2)` -/
def P1402376695415525042.Spec : Prop :=
  ∀ n, P1402376695415525042.a n = A074092 n

end A074092

/-! ## A074092.P16307607556749899489

`A073430(A000096(n+2)+n+1)`
-/

namespace A074092.P16307607556749899489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073430 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A074092.P16307607556749899489

namespace A074092

/-- `A073430(A000096(n+2)+n+1)` -/
def P16307607556749899489.Spec : Prop :=
  ∀ n, P16307607556749899489.a n = A074092 n

end A074092

/-!
# A074093: Number of values of k such that n = k - largest divisor of k (<k).

The programs for A074093, there is no canonical definition to state claims against.
-/

/-! ## A074093.P2236695666587899842

`A322871(2*(n+1))`
-/

namespace A074093.P2236695666587899842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (2 * (n + 1))

end

end A074093.P2236695666587899842

/-! ## A074093.P18241195625928579795

`A322871(n+2+n)%8`
-/

namespace A074093.P18241195625928579795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322871 (n + 2 + n)) 8

end

end A074093.P18241195625928579795

/-! ## A074093.P8492273738582611261

`or(A000007(n), A322871(n+2+n))`
-/

namespace A074093.P8492273738582611261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322871 (n + 2 + n))

end

end A074093.P8492273738582611261

/-! ## A074093.P12327229014938542341

`gcd(A001222(a(n-1)), A322871(n+2+n))` with `a(0)=1`
-/

namespace A074093.P12327229014938542341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A001222 (a (n - 1))) (A322871 (n + 2 + n))

end

end A074093.P12327229014938542341

/-! ## A074093.P9170621411094938325

`or(A001221(a(n-1)), A322871(n+2+n))` with `a(0)=1`
-/

namespace A074093.P9170621411094938325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A001221 (a (n - 1)).toNat) (A322871 (n + 2 + n))

end

end A074093.P9170621411094938325

/-! ## A074093.P5399911185485015640

`gcd(Δ[A080513(n)], A322871(n+2+n))`
-/

namespace A074093.P5399911185485015640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A322871 (n + 2 + n))

end

end A074093.P5399911185485015640

/-! ## A074093.P14373674736447649789

`A322871(n+2+n)+A000007(n+1)`
-/

namespace A074093.P14373674736447649789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (n + 2 + n) + A000007 (n + 1)

end

end A074093.P14373674736447649789

/-! ## A074093.P16021893489044746180

`A322871(n+2+n)/A001222(A166744(n+1))`
-/

namespace A074093.P16021893489044746180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322871 (n + 2 + n) : ℚ) / (A001222 (A166744 (n + 1)).toNat : ℚ)

end

end A074093.P16021893489044746180

/-! ## A074093.P5611754225297935439

`A322871(n+2+n)/A309873(n+1+n)`
-/

namespace A074093.P5611754225297935439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322871 (n + 2 + n) : ℚ) / (A309873 (n + 1 + n) : ℚ)

end

end A074093.P5611754225297935439

/-! ## A074093.P10987578127941813352

`A322871(n+2+n)^A014963(A000217(n+5))`
-/

namespace A074093.P10987578127941813352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322871 (n + 2 + n) : ℚ) ^ (A014963 (A000217 (n + 5)).toNat : ℤ)

end

end A074093.P10987578127941813352

/-!
# A074094: a(1) = 1; for n > 1, a(n) = LCM of next n composite numbers.

The programs for A074094, there is no canonical definition to state claims against.
-/

/-! ## A074094.P6773966399040634841

`A309253(A057311(n))`
-/

namespace A074094.P6773966399040634841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309253 (A057311 n).toNat

end

end A074094.P6773966399040634841

