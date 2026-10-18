import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A387001: Number of vertices in the diagram called "symmetric representation of sigma(n)" where its "parts" or polygons are dissected into unit squares (see the example).

The programs for A387001, the canonical program `A387001.P16811340479551848930` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387001 has offset 1).

The definition of A387001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387001.P16811340479551848930

`A224880(n+1)+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387001

/-- `A224880(n+1)+1` -/
def P16811340479551848930.Spec : Prop :=
  ∀ n, P16811340479551848930.a n = A387001 (n + 1)

theorem P16811340479551848930.correct : P16811340479551848930.Spec := by
  intro n
  simp only [A387001, Nat.add_sub_cancel]

end A387001

/-! ## A387001.P10984028659919575529

`A000203(n+1)+A005408(n+1)`
-/

namespace A387001.P10984028659919575529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A005408 (n + 1)

end

end A387001.P10984028659919575529

namespace A387001

/-- `A000203(n+1)+A005408(n+1)` -/
def P10984028659919575529.Spec : Prop :=
  ∀ n, P10984028659919575529.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P11444728082932525486

`2*A155085(n+1)-A000203(n+1)+1`
-/

namespace A387001.P11444728082932525486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155085 (n + 1) - A000203 (n + 1) + 1

end

end A387001.P11444728082932525486

namespace A387001

/-- `2*A155085(n+1)-A000203(n+1)+1` -/
def P11444728082932525486.Spec : Prop :=
  ∀ n, P11444728082932525486.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P4445640836464954150

`2*n+∑{d}[n+1, #]+3`
-/

namespace A387001.P4445640836464954150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (∑ d ∈ Nat.divisors (f1 n), d + 3)

end

end A387001.P4445640836464954150

namespace A387001

/-- `2*n+∑{d}[n+1, #]+3` -/
def P4445640836464954150.Spec : Prop :=
  ∀ n, (P4445640836464954150.a n : ℤ) = A387001 (n + 1)

end A387001

/-! ## A387001.P4074450426828948165

`∑{d}[n+1, #]+n+3+n`
-/

namespace A387001.P4074450426828948165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + (n + 3 + n)

end

end A387001.P4074450426828948165

namespace A387001

/-- `∑{d}[n+1, #]+n+3+n` -/
def P4074450426828948165.Spec : Prop :=
  ∀ n, (P4074450426828948165.a n : ℤ) = A387001 (n + 1)

end A387001

/-! ## A387001.P4094177767716499600

`A155085(n+1)+2+n`
-/

namespace A387001.P4094177767716499600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) + 2 + (n : ℤ)

end

end A387001.P4094177767716499600

namespace A387001

/-- `A155085(n+1)+2+n` -/
def P4094177767716499600.Spec : Prop :=
  ∀ n, P4094177767716499600.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P4486989941185049410

`Δ[A160664(n)+(n+1)²]`
-/

namespace A387001.P4486989941185049410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387001.P4486989941185049410

namespace A387001

/-- `Δ[A160664(n)+(n+1)²]` -/
def P4486989941185049410.Spec : Prop :=
  ∀ n, P4486989941185049410.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P17222198463830745912

`(n+2)²-A235799(n+1)`
-/

namespace A387001.P17222198463830745912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A235799 (n + 1)

end

end A387001.P17222198463830745912

namespace A387001

/-- `(n+2)²-A235799(n+1)` -/
def P17222198463830745912.Spec : Prop :=
  ∀ n, P17222198463830745912.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P6183859683779404532

`A088580(n+1)+2*(n+1)`
-/

namespace A387001.P6183859683779404532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (2 * (n + 1) : ℤ)

end

end A387001.P6183859683779404532

namespace A387001

/-- `A088580(n+1)+2*(n+1)` -/
def P6183859683779404532.Spec : Prop :=
  ∀ n, P6183859683779404532.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P8593727228616638231

`A237588(n+1)+4*(n+1)`
-/

namespace A387001.P8593727228616638231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (4 * (n + 1) : ℤ)

end

end A387001.P8593727228616638231

namespace A387001

/-- `A237588(n+1)+4*(n+1)` -/
def P8593727228616638231.Spec : Prop :=
  ∀ n, P8593727228616638231.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P4774952317695801421

`4*(n+1)-A235796(n+1)`
-/

namespace A387001.P4774952317695801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A235796 (n + 1)

end

end A387001.P4774952317695801421

namespace A387001

/-- `4*(n+1)-A235796(n+1)` -/
def P4774952317695801421.Spec : Prop :=
  ∀ n, P4774952317695801421.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P1259092176730301592

`5*(n+1)-A353190(n+1)`
-/

namespace A387001.P1259092176730301592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A353190 (n + 1)

end

end A387001.P1259092176730301592

namespace A387001

/-- `5*(n+1)-A353190(n+1)` -/
def P1259092176730301592.Spec : Prop :=
  ∀ n, P1259092176730301592.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P1985129088233346975

`A033880(n+1)+A004766(n+1)`
-/

namespace A387001.P1985129088233346975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A004766 (n + 1)

end

end A387001.P1985129088233346975

namespace A387001

/-- `A033880(n+1)+A004766(n+1)` -/
def P1985129088233346975.Spec : Prop :=
  ∀ n, P1985129088233346975.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P784839490445804203

`A144396(n+1)+A000203(n+1)`
-/

namespace A387001.P784839490445804203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A000203 (n + 1)

end

end A387001.P784839490445804203

namespace A387001

/-- `A144396(n+1)+A000203(n+1)` -/
def P784839490445804203.Spec : Prop :=
  ∀ n, P784839490445804203.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P6550715126555693942

`A120444(n+1)+A092403(n+1)`
-/

namespace A387001.P6550715126555693942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120444 (n + 1) + A092403 (n + 1)

end

end A387001.P6550715126555693942

namespace A387001

/-- `A120444(n+1)+A092403(n+1)` -/
def P6550715126555693942.Spec : Prop :=
  ∀ n, P6550715126555693942.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P8303364460536753805

`A158901(n+1)+A140482(n+1)`
-/

namespace A387001.P8303364460536753805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + A140482 (n + 1)

end

end A387001.P8303364460536753805

namespace A387001

/-- `A158901(n+1)+A140482(n+1)` -/
def P8303364460536753805.Spec : Prop :=
  ∀ n, P8303364460536753805.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P7078118798450929307

`A281006(n+1)+A047270(n+1)`
-/

namespace A387001.P7078118798450929307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 1) + A047270 (n + 1)

end

end A387001.P7078118798450929307

namespace A387001

/-- `A281006(n+1)+A047270(n+1)` -/
def P7078118798450929307.Spec : Prop :=
  ∀ n, P7078118798450929307.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P241524194674893036

`Δ[∑[∑{d}[n, #]]+(n+1)²]`
-/

namespace A387001.P241524194674893036
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A387001.P241524194674893036

namespace A387001

/-- `Δ[∑[∑{d}[n, #]]+(n+1)²]` -/
def P241524194674893036.Spec : Prop :=
  ∀ n, P241524194674893036.a n = A387001 (n + 1)

end A387001

/-! ## A387001.P11345413055435423840

`Δ[A332490(n+1)]+n+1`
-/

namespace A387001.P11345413055435423840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A387001.P11345413055435423840

namespace A387001

/-- `Δ[A332490(n+1)]+n+1` -/
def P11345413055435423840.Spec : Prop :=
  ∀ n, P11345413055435423840.a n = A387001 (n + 1)

end A387001

/-!
# A387002: Triangle read by rows: T(n,d) is the number of fixed, properly d-dimensional (d,2)-polyominoids of size n, 2 <= d <= n+1.

The programs for A387002, there is no canonical definition to state claims against.
-/

/-! ## A387002.P11421187991872184321

`A193898(A034899(n))`
-/

namespace A387002.P11421187991872184321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193898 (A034899 n).toNat

end

end A387002.P11421187991872184321

/-!
# A387005: Number of free (d,2)-polyominoids of size n in arbitrary dimension d.

The programs for A387005, there is no canonical definition to state claims against.
-/

/-! ## A387005.P3188912859230540612

`A387003(∑[n+1])`
-/

namespace A387005.P3188912859230540612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387003 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387005.P3188912859230540612

/-!
# A387006: G.f. A(x) satisfies A(x) = 1 + x/(1+x^3) * A(x)^2.

The programs for A387006, there is no canonical definition to state claims against.
-/

/-! ## A387006.P302853185025783303

`A066508(A086880(n+1))`
-/

namespace A387006.P302853185025783303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A086880 (n + 1)).toNat

end

end A387006.P302853185025783303

/-! ## A387006.P4933525682187709288

`A343937(n+1)-A010060(A099414(n+1))`
-/

namespace A387006.P4933525682187709288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343937 (n + 1) - A010060 (A099414 (n + 1)).toNat

end

end A387006.P4933525682187709288

/-! ## A387006.P10601733893636267957

`A360271(n)+A332671(A239242(3*(n+1)))`
-/

namespace A387006.P10601733893636267957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360271 n + A332671 (A239242 (3 * (n + 1))).toNat

end

end A387006.P10601733893636267957

/-!
# A387007: a(n) = Sum_{k=0..n} binomial(3*n+2,k).

The programs for A387007, there is no canonical definition to state claims against.
-/

/-! ## A387007.P7310493438706112494

`A387033(n+1)-A165817(n+1)`
-/

namespace A387007.P7310493438706112494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387033 (n + 1) - A165817 (n + 1)

end

end A387007.P7310493438706112494

/-! ## A387007.P6041567907537165337

`A387033(n+1)-A081204(2*n+1)`
-/

namespace A387007.P6041567907537165337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387033 (n + 1) - A081204 (2 * n + 1)

end

end A387007.P6041567907537165337

/-! ## A387007.P16403680453243882682

`A160906(n)+A160906(n)-A045721(n)`
-/

namespace A387007.P16403680453243882682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160906 n + (A160906 n - A045721 n)

end

end A387007.P16403680453243882682

/-! ## A387007.P8539580417626915362

`A131250(2*(n+1)²)`
-/

namespace A387007.P8539580417626915362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (2 * (n + 1) ^ 2)

end

end A387007.P8539580417626915362

/-! ## A387007.P16874282858907726958

`A097750(A056220(n+1))`
-/

namespace A387007.P16874282858907726958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A056220 (n + 1)).toNat

end

end A387007.P16874282858907726958

/-! ## A387007.P5302162177913063146

`A097750(A000217(2*n+1)+n)`
-/

namespace A387007.P5302162177913063146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A387007.P5302162177913063146

/-! ## A387007.P16857338619160674198

`A187926(2*(n+1)²)`
-/

namespace A387007.P16857338619160674198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (2 * (n + 1) ^ 2)

end

end A387007.P16857338619160674198

/-!
# A387008: a(n) = Sum_{k=0..n} binomial(3*n+3,k).

The programs for A387008, there is no canonical definition to state claims against.
-/

/-! ## A387008.P8105791285011153245

`A005809(n+1)-A047098(n+1)`
-/

namespace A387008.P8105791285011153245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - A047098 (n + 1)

end

end A387008.P8105791285011153245

/-! ## A387008.P16080277296129780086

`A005809(n+1)-A047099(n+1)-A047099(n+1)`
-/

namespace A387008.P16080277296129780086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - A047099 (n + 1) - A047099 (n + 1)

end

end A387008.P16080277296129780086

/-! ## A387008.P3483322182427612716

`A187926(A001844(n+1))`
-/

namespace A387008.P3483322182427612716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A001844 (n + 1)).toNat

end

end A387008.P3483322182427612716

/-! ## A387008.P16375240295482688444

`A187926(A099776(n+1))`
-/

namespace A387008.P16375240295482688444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A099776 (n + 1)).toNat

end

end A387008.P16375240295482688444

/-! ## A387008.P8390649830625113789

`A054143(A081270(n))`
-/

namespace A387008.P8390649830625113789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A081270 n).toNat

end

end A387008.P8390649830625113789

/-!
# A387009: a(n) = Sum_{k=0..n} binomial(4*n+2,k).

The programs for A387009, there is no canonical definition to state claims against.
-/

/-! ## A387009.P3957740175174320737

`A124234(A062708(n+1))`
-/

namespace A387009.P3957740175174320737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124234 (A062708 (n + 1)).toNat

end

end A387009.P3957740175174320737

/-! ## A387009.P11275943844760317099

`A054143(A194268(n))`
-/

namespace A387009.P11275943844760317099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A194268 n).toNat

end

end A387009.P11275943844760317099

/-! ## A387009.P6049967429744075272

`A008949(A139272(n+1))`
-/

namespace A387009.P6049967429744075272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A139272 (n + 1)).toNat

end

end A387009.P6049967429744075272

/-! ## A387009.P10912048821632913625

`A055248(A139273(n+1))`
-/

namespace A387009.P10912048821632913625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A139273 (n + 1)).toNat

end

end A387009.P10912048821632913625

/-! ## A387009.P14924729231629733856

`A104709(A125201(n+1))`
-/

namespace A387009.P14924729231629733856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A125201 (n + 1)).toNat

end

end A387009.P14924729231629733856

/-!
# A387010: a(n) = Sum_{k=0..n} binomial(4*n+3,k).

The programs for A387010, there is no canonical definition to state claims against.
-/

/-! ## A387010.P16139772021387346402

`A054143(A139272(n+1))`
-/

namespace A387010.P16139772021387346402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A139272 (n + 1)).toNat

end

end A387010.P16139772021387346402

/-! ## A387010.P9811788505439808977

`A055248(A139275(n+1))`
-/

namespace A387010.P9811788505439808977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A139275 (n + 1)).toNat

end

end A387010.P9811788505439808977

/-! ## A387010.P12568155753449544815

`A104709(A139273(n+1))`
-/

namespace A387010.P12568155753449544815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A139273 (n + 1)).toNat

end

end A387010.P12568155753449544815

/-! ## A387010.P13891148017517624885

`A008949(A000384(2*(n+1))+n)`
-/

namespace A387010.P13891148017517624885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000384 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A387010.P13891148017517624885

/-! ## A387010.P10287241157972022069

`A187926(A022267(n+1))`
-/

namespace A387010.P10287241157972022069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A022267 (n + 1)).toNat

end

end A387010.P10287241157972022069

/-!
# A387011: a(n) = Sum_{k=0..n} binomial(4*n+4,k).

The programs for A387011, there is no canonical definition to state claims against.
-/

/-! ## A387011.P240811639922297999

`A124234(A022267(n+1))`
-/

namespace A387011.P240811639922297999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124234 (A022267 (n + 1)).toNat

end

end A387011.P240811639922297999

/-! ## A387011.P18389164350290173661

`A104709(A139275(n+1))`
-/

namespace A387011.P18389164350290173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A139275 (n + 1)).toNat

end

end A387011.P18389164350290173661

/-! ## A387011.P2886677263009599038

`A193820(A139278(n+1))`
-/

namespace A387011.P2886677263009599038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A139278 (n + 1)).toNat

end

end A387011.P2886677263009599038

/-! ## A387011.P12712986798646938814

`A187926(A081267(n+1))`
-/

namespace A387011.P12712986798646938814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A081267 (n + 1)).toNat

end

end A387011.P12712986798646938814

/-! ## A387011.P6683150955918652266

`A226197(2*(n+1))`
-/

namespace A387011.P6683150955918652266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226197 (2 * (n + 1))

end

end A387011.P6683150955918652266

/-!
# A387012: Number of ternary strings of length 2*n that have fewer 0's than the combined number of 1's and 2's.

The programs for A387012, there is no canonical definition to state claims against.
-/

/-! ## A387012.P11190206633294393115

`A001019(n)-A128418(n)`
-/

namespace A387012.P11190206633294393115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A128418 n

end

end A387012.P11190206633294393115

/-!
# A387013: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^2)^2 * A(x)).

The programs for A387013, there is no canonical definition to state claims against.
-/

/-! ## A387013.P15856264031890324970

`A226641(∏{d}[2*a(n-1), #])` with `a(0)=-1, a(1)=-1`
-/

namespace A387013.P15856264031890324970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226641 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A387013.P15856264031890324970

/-!
# A387016: Permutation of the odd integers >= 3 formed by ordering them first by odd k >= 3 and then by integer m >= 1 in their unique representation (k - 2^m)*2^m + 1.

The programs for A387016, there is no canonical definition to state claims against.
-/

/-! ## A387016.P9760307989567551120

`2*A386386(n)+3`
-/

namespace A387016.P9760307989567551120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A386386 n + 3

end

end A387016.P9760307989567551120

/-! ## A387016.P1356385230689357952

`A089654(n+1)*(2*A030530(n+1)-A089654(n+1)+1)+1`
-/

namespace A387016.P1356385230689357952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089654 (n + 1) * (2 * A030530 (n + 1) - A089654 (n + 1) + 1) + 1

end

end A387016.P1356385230689357952

/-!
# A387018: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4) with a(0)=0, a(1)=1, a(2)=4, a(3)=11.

The programs for A387018, the canonical program `A387018.P5495358802361442177` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387018 has offset 0).

The definition of A387018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A387018.P5495358802361442177`, by `A387018.P5495358802361442177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387018.P5495358802361442177

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A387018

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P5495358802361442177.Spec : Prop :=
  ∀ n, P5495358802361442177.a n = A387018 n

theorem P5495358802361442177.correct : P5495358802361442177.Spec := by
  intro n
  simp only [A387018]

end A387018

/-! ## A387018.P15611315181258657731

`ogf((x+2x^2+x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A387018.P15611315181258657731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1] [1, -2, -2, -2, 1] n

end

end A387018.P15611315181258657731

namespace A387018

/-- `ogf((x+2x^2+x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P15611315181258657731.Spec : Prop :=
  ∀ n, P15611315181258657731.a n = A387018 n

end A387018

/-! ## A387018.P9843032035646556038

`A389120(n+1)+A389120(n)-A138573(n+1)`
-/

namespace A387018.P9843032035646556038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389120 (n + 1) + (A389120 n - A138573 (n + 1))

end

end A387018.P9843032035646556038

namespace A387018

/-- `A389120(n+1)+A389120(n)-A138573(n+1)` -/
def P9843032035646556038.Spec : Prop :=
  ∀ n, P9843032035646556038.a n = A387018 n

end A387018

/-! ## A387018.P3575204965772149957

`A138574(n+1)-A038989(n)`
-/

namespace A387018.P3575204965772149957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 1) - A038989 n

end

end A387018.P3575204965772149957

namespace A387018

/-- `A138574(n+1)-A038989(n)` -/
def P3575204965772149957.Spec : Prop :=
  ∀ n, P3575204965772149957.a n = A387018 n

end A387018

/-! ## A387018.P16806074083804588821

`A307985(A234271(n))`
-/

namespace A387018.P16806074083804588821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A234271 n).toNat

end

end A387018.P16806074083804588821

namespace A387018

/-- `A307985(A234271(n))` -/
def P16806074083804588821.Spec : Prop :=
  ∀ n, P16806074083804588821.a n = A387018 n

end A387018

/-!
# A387019: Expansion of e.g.f. exp(x^4/24 * sinh(x)).

The programs for A387019, there is no canonical definition to state claims against.
-/

/-! ## A387019.P6399633757596693691

`C(n, A068417(A020639(n+1)))`
-/

namespace A387019.P6399633757596693691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A068417 (A020639 (n + 1)).toNat).toNat

end

end A387019.P6399633757596693691

/-! ## A387019.P9803194488418730740

`C(n, A033310(A020639(3*n+1)))`
-/

namespace A387019.P9803194488418730740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A033310 (A020639 (3 * n + 1)).toNat).toNat

end

end A387019.P9803194488418730740

/-! ## A387019.P5039102764528362502

`C(A048793(A000108(n)), A088377(n+1))`
-/

namespace A387019.P5039102764528362502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048793 (A000108 n).toNat).toNat (A088377 (n + 1)).toNat

end

end A387019.P5039102764528362502

/-! ## A387019.P1340664657488015905

`C(A028310(n), A274879(A088377(n+1)))`
-/

namespace A387019.P1340664657488015905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 n).toNat (A274879 (A088377 (n + 1)).toNat).toNat

end

end A387019.P1340664657488015905

/-! ## A387019.P9652275014137366620

`C(A109613(n), A048785(A247237(3*n)))`
-/

namespace A387019.P9652275014137366620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109613 n).toNat (A048785 (A247237 (3 * n)).toNat).toNat

end

end A387019.P9652275014137366620

/-!
# A387025: Start with the list of positive integers L_1 = (1, 2, ...); for n = 1, 2, ..., let m be the least integer > n such that L_n(n) divides L_n(m); L_{n+1}(k) = L_n(k) for any k <> m, L_{n+1}(m) = L_n(m)/L_n(n); a(n) = L_n(n).

The programs for A387025, there is no canonical definition to state claims against.
-/

/-! ## A387025.P14220619122507017707

`gcd(A044827(n+1), A300454(A047765(n+5)))`
-/

namespace A387025.P14220619122507017707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044827 (n + 1)) (A300454 (A047765 (n + 5)).toNat)

end

end A387025.P14220619122507017707

/-!
# A387027: a(n) = lcm({1, 2, ..., n}) * (n + 1) / n for n > 0, a(0) = 1.

The programs for A387027, the canonical program `A387027.P11190749158434269992` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387027 has offset 0).

The definition of A387027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387027.P15936327987515234784

`ratio[A028310(n)]*A003418(n)`
-/

namespace A387027.P15936327987515234784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A003418 n : ℚ)

end

end A387027.P15936327987515234784

namespace A387027

/-- `ratio[A028310(n)]*A003418(n)` -/
def P15936327987515234784.Spec : Prop :=
  ∀ n, P15936327987515234784.a n = (A387027 n : ℚ)

end A387027

/-! ## A387027.P11190749158434269992

`A002944(A028310(n))*A028310(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387027

/-- `A002944(A028310(n))*A028310(n+1)` -/
def P11190749158434269992.Spec : Prop :=
  ∀ n, P11190749158434269992.a n = A387027 n

theorem P11190749158434269992.correct : P11190749158434269992.Spec := by
  intro n
  simp only [A387027]

end A387027

/-!
# A387029: Number of fundamental one-dimensional discrete statistical models with rational maximum likelihood estimator supported on n+1 states and of degree 2n-3.

The programs for A387029, there is no canonical definition to state claims against.
-/

/-! ## A387029.P109242159811174842

`A143109(n+2)+A075802(3*n+2)`
-/

namespace A387029.P109242159811174842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143109 (n + 2) + A075802 (3 * n + 2)

end

end A387029.P109242159811174842

/-!
# A387030: Irregular triangle read by rows: T(n,k) is the number of primes in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A387030, there is no canonical definition to state claims against.
-/

/-! ## A387030.P16311742612529507917

`A384222(n+1)-A386992(n+1)`
-/

namespace A387030.P16311742612529507917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A386992 (n + 1)

end

end A387030.P16311742612529507917

/-! ## A387030.P12738272560992302453

`A124010(A001013(n+1)^A330935(n+1))`
-/

namespace A387030.P12738272560992302453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.roundAway ((A001013 (n + 1) : ℚ) ^ (A330935 (n + 1) : ℤ))).toNat

end

end A387030.P12738272560992302453

/-! ## A387030.P13459416392613576193

`A079632(A250120(2*(n+1))*A285951(n+1))`
-/

namespace A387030.P13459416392613576193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079632 (A250120 (2 * (n + 1)) * A285951 (n + 1)).toNat

end

end A387030.P13459416392613576193

/-! ## A387030.P782427868252776330

`A035426(abs(n-A375297(n))+1)%A246688(n+1)`
-/

namespace A387030.P782427868252776330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035426 (|(n : ℤ) - A375297 n| + 1).toNat) (A246688 (n + 1))

end

end A387030.P782427868252776330

/-! ## A387030.P10639130727984465693

`A160014(A107876(2*n+1))%A056239(A265110(n+2))`
-/

namespace A387030.P10639130727984465693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160014 (A107876 (2 * n + 1)).toNat) (A056239 (A265110 (n + 2)).toNat)

end

end A387030.P10639130727984465693

/-!
# A387032: 

The programs for A387032, there is no canonical definition to state claims against.
-/

/-! ## A387032.P13786306391052678922

`A048379(A214678(n+1))`
-/

namespace A387032.P13786306391052678922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A214678 (n + 1)).toNat

end

end A387032.P13786306391052678922

/-! ## A387032.P16232094280728574663

`∩[A039112(n+1), A052383(n+1)]`
-/

namespace A387032.P16232094280728574663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P16232094280728574663

/-! ## A387032.P6134993527781148948

`lt[1, A054054(n)]`
-/

namespace A387032.P6134993527781148948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387032.P6134993527781148948

/-! ## A387032.P17026508606478045318

`eq[n, A222210(n)]`
-/

namespace A387032.P17026508606478045318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A387032.P17026508606478045318

/-! ## A387032.P10650159296311532899

`eq[A055642(n), A102669(n)]`
-/

namespace A387032.P10650159296311532899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387032.P10650159296311532899

/-! ## A387032.P9843622761061181943

`eq[A168046(n), A261794(n)]`
-/

namespace A387032.P9843622761061181943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387032.P9843622761061181943

/-! ## A387032.P11202599765647575591

`filter[A037344(n+1), A168046(#)]`
-/

namespace A387032.P11202599765647575591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A387032.P11202599765647575591

/-! ## A387032.P10220652235622141324

`filter[A039112(n+1), A168046(#)]`
-/

namespace A387032.P10220652235622141324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A387032.P10220652235622141324

/-! ## A387032.P3503491823537852683

`filter[A052383(n+1), A168046(#)]`
-/

namespace A387032.P3503491823537852683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A387032.P3503491823537852683

/-! ## A387032.P11324029352821756387

`∩[A039112(n+1), A052382(n+1)]`
-/

namespace A387032.P11324029352821756387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P11324029352821756387

/-! ## A387032.P13046346371586673801

`∩[A039112(n+1), A062998(n+1)]`
-/

namespace A387032.P13046346371586673801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P13046346371586673801

/-! ## A387032.P7889547451481896288

`∩[A052382(n+1), A052383(n+1)]`
-/

namespace A387032.P7889547451481896288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P7889547451481896288

/-! ## A387032.P3854821365450293324

`∩[A052383(n+1), A062998(n+1)]`
-/

namespace A387032.P3854821365450293324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P3854821365450293324

/-! ## A387032.P2102812283555130968

`and(A037344(n+1), A118883(n+1))`
-/

namespace A387032.P2102812283555130968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A118883 (n + 1))

end

end A387032.P2102812283555130968

/-! ## A387032.P10098542064832392529

`and(A037344(n+1), A375155(n+1))`
-/

namespace A387032.P10098542064832392529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A375155 (n + 1))

end

end A387032.P10098542064832392529

/-! ## A387032.P15156407078303930370

`A037344(n+1)%A004733(n)`
-/

namespace A387032.P15156407078303930370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037344 (n + 1)) (A004733 n)

end

end A387032.P15156407078303930370

/-! ## A387032.P7237951161137805278

`and(A037344(n+1), A163383(n+1))`
-/

namespace A387032.P7237951161137805278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A163383 (n + 1))

end

end A387032.P7237951161137805278

/-! ## A387032.P13807867991729890601

`and(A037344(n+1), A107392(n))`
-/

namespace A387032.P13807867991729890601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A107392 n)

end

end A387032.P13807867991729890601

/-! ## A387032.P7134498013050746554

`and(A037344(n+1), A107464(n))`
-/

namespace A387032.P7134498013050746554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A107464 n)

end

end A387032.P7134498013050746554

/-! ## A387032.P1591429416357090463

`and(A037344(n+1), A107953(n))`
-/

namespace A387032.P1591429416357090463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037344 (n + 1)) (A107953 n)

end

end A387032.P1591429416357090463

/-!
# A387033: a(n) = Sum_{k=0..n} binomial(3*n-1,k).

The programs for A387033, there is no canonical definition to state claims against.
-/

/-! ## A387033.P12830753539623296179

`A008949(A022266(n))`
-/

namespace A387033.P12830753539623296179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A022266 n).toNat

end

end A387033.P12830753539623296179

/-! ## A387033.P15897012681875810962

`A054143(A117625(n))`
-/

namespace A387033.P15897012681875810962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A117625 n).toNat

end

end A387033.P15897012681875810962

/-! ## A387033.P11919950744054635979

`A128175(A081267(n))`
-/

namespace A387033.P11919950744054635979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A081267 n).toNat

end

end A387033.P11919950744054635979

/-! ## A387033.P625288275094466975

`A193820(A062725(n))`
-/

namespace A387033.P625288275094466975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A062725 n).toNat

end

end A387033.P625288275094466975

/-! ## A387033.P1505055599873826776

`A128175(A081266(n)+2*n+1)`
-/

namespace A387033.P1505055599873826776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A081266 n + (2 * n + 1 : ℤ)).toNat

end

end A387033.P1505055599873826776

/-!
# A387034: a(n) = Sum_{k=0..n} binomial(4*n-4,k).

The programs for A387034, there is no canonical definition to state claims against.
-/

/-! ## A387034.P1847100782454374627

`A128175(A125201(n))`
-/

namespace A387034.P1847100782454374627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A125201 n).toNat

end

end A387034.P1847100782454374627

/-! ## A387034.P4640843307853032306

`A193820(A360416(n))`
-/

namespace A387034.P4640843307853032306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A360416 n).toNat

end

end A387034.P4640843307853032306

/-!
# A387035: a(n) = Sum_{k=0..n} binomial(4*n-3,k).

The programs for A387035, there is no canonical definition to state claims against.
-/

/-! ## A387035.P15501398026671429766

`A055248(A051870(n))`
-/

namespace A387035.P15501398026671429766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A051870 n).toNat

end

end A387035.P15501398026671429766

/-! ## A387035.P5322291985396866319

`A008949(A360416(n))`
-/

namespace A387035.P5322291985396866319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A360416 n).toNat

end

end A387035.P5322291985396866319

/-! ## A387035.P2494098421430268942

`A193820(A383464(n))`
-/

namespace A387035.P2494098421430268942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A383464 n).toNat

end

end A387035.P2494098421430268942

/-!
# A387036: a(n) = Sum_{k=0..n} binomial(4*n-2,k).

The programs for A387036, there is no canonical definition to state claims against.
-/

/-! ## A387036.P7989712878845458998

`A104709(A051870(n))`
-/

namespace A387036.P7989712878845458998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A051870 n).toNat

end

end A387036.P7989712878845458998

/-! ## A387036.P6317042595371503773

`A193820(A139274(n))`
-/

namespace A387036.P6317042595371503773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A139274 n).toNat

end

end A387036.P6317042595371503773

/-! ## A387036.P16178298481564987448

`A008949(A383464(n))`
-/

namespace A387036.P16178298481564987448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A383464 n).toNat

end

end A387036.P16178298481564987448

/-! ## A387036.P16220360803894600026

`A054143(A360416(n))`
-/

namespace A387036.P16220360803894600026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A360416 n).toNat

end

end A387036.P16220360803894600026

/-! ## A387036.P3666347088223444061

`A008949(A080856(n)-n)`
-/

namespace A387036.P3666347088223444061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A080856 n - (n : ℤ)).toNat

end

end A387036.P3666347088223444061

/-!
# A387037: a(n) = Sum_{k=0..n} binomial(4*n-1,k).

The programs for A387037, there is no canonical definition to state claims against.
-/

/-! ## A387037.P14586940985851656979

`A008949(A139274(n))`
-/

namespace A387037.P14586940985851656979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A139274 n).toNat

end

end A387037.P14586940985851656979

/-! ## A387037.P711500206033796947

`A193820(A139276(n))`
-/

namespace A387037.P711500206033796947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A139276 n).toNat

end

end A387037.P711500206033796947

/-! ## A387037.P3524572022811433531

`A054143(A383464(n))`
-/

namespace A387037.P3524572022811433531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A383464 n).toNat

end

end A387037.P3524572022811433531

/-! ## A387037.P13927370945938969231

`A008949(A000384(2*n)+n)`
-/

namespace A387037.P13927370945938969231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000384 (2 * n) + (n : ℤ)).toNat

end

end A387037.P13927370945938969231

/-! ## A387037.P9828976767494233809

`A008949(A267682(3*n)-A267682(n))`
-/

namespace A387037.P9828976767494233809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A267682 (3 * n) - A267682 n).toNat

end

end A387037.P9828976767494233809

/-!
# A387038: a(n) = Sum_{k=0..n} binomial(3*n+2,5*k).

The programs for A387038, there is no canonical definition to state claims against.
-/

/-! ## A387038.P17225137594155425418

`A139398(3*n+2)`
-/

namespace A387038.P17225137594155425418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + 2)

end

end A387038.P17225137594155425418

/-!
# A387039: Numbers k such that (p_k#)*(p_(k-1)#)+1, or A228593(k)+1 is prime.

The programs for A387039, there is no canonical definition to state claims against.
-/

/-! ## A387039.P1451333707502106639

`∑[A374469(∑[A135799(n)])]`
-/

namespace A387039.P1451333707502106639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135799 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374469 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387039.P1451333707502106639

/-! ## A387039.P1917079844618843925

`∑[A097306(A000043(n+1))]`
-/

namespace A387039.P1917079844618843925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097306 (A000043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387039.P1917079844618843925

/-! ## A387039.P1286223682331304338

`∑[A093803(A061545(n+3))]`
-/

namespace A387039.P1286223682331304338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A061545 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387039.P1286223682331304338

/-! ## A387039.P4818679537961990617

`eq[A008435(n), A294233(n+1)]`
-/

namespace A387039.P4818679537961990617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387039.P4818679537961990617

/-! ## A387039.P13473778896530261220

`eq[A023926(n), A294233(n+1)]`
-/

namespace A387039.P13473778896530261220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387039.P13473778896530261220

/-!
# A387040: a(n) is the number of distinct five-cuboid combinations that fill an n X n X n cube with cuboids of different volumes.

The programs for A387040, there is no canonical definition to state claims against.
-/

/-! ## A387040.P13999695615809009342

`A387121(A000124(n+4)+n)`
-/

namespace A387040.P13999695615809009342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A387040.P13999695615809009342

/-! ## A387040.P8808084818553074573

`A336460(A005810(n))-A336460(n+1)`
-/

namespace A387040.P8808084818553074573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336460 (A005810 n).toNat - A336460 (n + 1)

end

end A387040.P8808084818553074573

/-!
# A387044: Nonnegative numbers k for which there exists a largest circle enclosing exactly k points (strictly inside) on a square grid, as opposed to only a least upper bound on that circle size.

The programs for A387044, there is no canonical definition to state claims against.
-/

/-! ## A387044.P8226239824609192571

`comp[A387045(n+1)]`
-/

namespace A387044.P8226239824609192571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387044.P8226239824609192571

/-! ## A387044.P2248090181267589023

`lt[A055667(A222620(3*(n+1))), 1]`
-/

namespace A387044.P2248090181267589023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A222620 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387044.P2248090181267589023

/-! ## A387044.P1742357386121669512

`lt[A319546(n+1), A289665(n+1)]`
-/

namespace A387044.P1742357386121669512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387044.P1742357386121669512

/-! ## A387044.P9748560856259216420

`lt[A096007(n+2), A057958(A014425(n+1))]`
-/

namespace A387044.P9748560856259216420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096007 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (A014425 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387044.P9748560856259216420

/-! ## A387044.P13648146616975230566

`lt[A289324(A050500(2*n+3)), A006881(n+1)]`
-/

namespace A387044.P13648146616975230566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289324 (A050500 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387044.P13648146616975230566

/-!
# A387047: Number of parking functions of size n with a big descent in the first position.

The programs for A387047, there is no canonical definition to state claims against.
-/

/-! ## A387047.P6880734884039444772

`(n-1)/2*floor((n+2)^(n-1))`
-/

namespace A387047.P6880734884039444772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (⌊(n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ)

end

end A387047.P6880734884039444772

/-!
# A387049: Numbers k such that both k + sopfr(k) and k^2 + sopfr(k)^2 are prime, where sopfr = A001414.

The programs for A387049, there is no canonical definition to state claims against.
-/

/-! ## A387049.P6764779905013593692

`∩[A050703(n+1), A387048(n+1)]`
-/

namespace A387049.P6764779905013593692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387049.P6764779905013593692

/-!
# A387053: a(n) is the least k such that n is the sum of a prime and k powers of 2.

The programs for A387053, there is no canonical definition to state claims against.
-/

/-! ## A387053.P13346166866869434828

`A001221(A350068(A322993(n+2)²))`
-/

namespace A387053.P13346166866869434828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350068 (A322993 (n + 2) ^ 2).toNat).toNat

end

end A387053.P13346166866869434828

/-! ## A387053.P12385565746026803652

`A324117(A350065(A322993(n+2)²))`
-/

namespace A387053.P12385565746026803652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A350065 (A322993 (n + 2) ^ 2).toNat).toNat

end

end A387053.P12385565746026803652

/-! ## A387053.P18204179017661152862

`A001221(A322993(n+2)%A350845(2*n+1))`
-/

namespace A387053.P18204179017661152862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A322993 (n + 2)) (A350845 (2 * n + 1))).toNat

end

end A387053.P18204179017661152862

/-! ## A387053.P15667808242907651941

`A001221(A322993(n+2)%A118048(n))`
-/

namespace A387053.P15667808242907651941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A322993 (n + 2)) (A118048 n)).toNat

end

end A387053.P15667808242907651941

/-! ## A387053.P11881530147874805321

`A161606((n+1)^A361685(n+2))`
-/

namespace A387053.P11881530147874805321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A361685 (n + 2) : ℤ))).toNat

end

end A387053.P11881530147874805321

/-!
# A387054: Elements of A388654 that do not lie in A070003.

The programs for A387054, there is no canonical definition to state claims against.
-/

/-! ## A387054.P9328207286654534682

`∩[A068567(n+1), A388654(n+1)]`
-/

namespace A387054.P9328207286654534682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387054.P9328207286654534682

/-! ## A387054.P9509946579902106435

`∩[A068567(n+1), A389100(n+1)]`
-/

namespace A387054.P9509946579902106435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387054.P9509946579902106435

/-! ## A387054.P3718335566738941288

`A103530(A110588(n+2))`
-/

namespace A387054.P3718335566738941288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A110588 (n + 2)).toNat

end

end A387054.P3718335566738941288

/-! ## A387054.P6566467072527613459

`∩[A037208(n+1), A292352(n+1)]`
-/

namespace A387054.P6566467072527613459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387054.P6566467072527613459

/-!
# A387057: Numbers k that are infinitarily divisible by the number of infinitary divisors of k.

The programs for A387057, there is no canonical definition to state claims against.
-/

/-! ## A387057.P14395066648590790219

`lt[A029906(n), A029884(A131054(3*n))]`
-/

namespace A387057.P14395066648590790219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 (A131054 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387057.P14395066648590790219

/-!
# A387061: Number of Sylow permutations in S_n.

The programs for A387061, there is no canonical definition to state claims against.
-/

/-! ## A387061.P10174031477718032392

`A266193(A061552(n+1)-n²)`
-/

namespace A387061.P10174031477718032392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A061552 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A387061.P10174031477718032392

/-!
# A387062: a(n) = number of wiggly permutations |W_n|.

The programs for A387062, there is no canonical definition to state claims against.
-/

/-! ## A387062.P16221272400880280190

`A106432(A149576(n))`
-/

namespace A387062.P16221272400880280190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149576 n).toNat

end

end A387062.P16221272400880280190

/-! ## A387062.P6016878943066495134

`A106432(A149577(n))`
-/

namespace A387062.P6016878943066495134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149577 n).toNat

end

end A387062.P6016878943066495134

/-! ## A387062.P10063869802495509476

`A390028(A003081(n+1))`
-/

namespace A387062.P10063869802495509476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390028 (A003081 (n + 1)).toNat

end

end A387062.P10063869802495509476

/-!
# A387063: G.f. A(x) satisfies A(x) = 1 + x/(1-x^2)^2 * A(x)^2.

The programs for A387063, there is no canonical definition to state claims against.
-/

/-! ## A387063.P6883639576608938745

`A194640(A025254(n+2))`
-/

namespace A387063.P6883639576608938745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A025254 (n + 2)).toNat

end

end A387063.P6883639576608938745

/-!
# A387073: Record high points in A386482.

The programs for A387073, there is no canonical definition to state claims against.
-/

/-! ## A387073.P13653640290503287538

`record[A386482(n+1)]`
-/

namespace A387073.P13653640290503287538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387073.P13653640290503287538

/-! ## A387073.P14215961408800023430

`record[A386487(n+1)+1+n]`
-/

namespace A387073.P14215961408800023430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387073.P14215961408800023430

/-! ## A387073.P11002829170658751669

`record[A387075(n)+a(n-1)]` with `a(0)=1`
-/

namespace A387073.P11002829170658751669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A387075 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387073.P11002829170658751669

/-! ## A387073.P6629880098401884647

`A386482(A387074(n+1))`
-/

namespace A387073.P6629880098401884647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (A387074 (n + 1)).toNat

end

end A387073.P6629880098401884647

/-! ## A387073.P12711302538371847630

`record[∑[A387075(A028310(n))]]`
-/

namespace A387073.P12711302538371847630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387075 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387073.P12711302538371847630

/-!
# A387074: Indices of record high points in A386482.

The programs for A387074, there is no canonical definition to state claims against.
-/

/-! ## A387074.P2137789167401073984

`A387072(A387073(n+1))`
-/

namespace A387074.P2137789167401073984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387073 (n + 1)).toNat

end

end A387074.P2137789167401073984

/-! ## A387074.P6199759457562218509

`A387072(record[A386482(n+1)])`
-/

namespace A387074.P6199759457562218509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A387074.P6199759457562218509

/-!
# A387075: First differences of A386482.

The programs for A387075, there is no canonical definition to state claims against.
-/

/-! ## A387075.P6005967140351222368

`Δ[A386482(n+1)]`
-/

namespace A387075.P6005967140351222368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387075.P6005967140351222368

/-! ## A387075.P11946173028418161801

`Δ[A386487(n+1)]+1`
-/

namespace A387075.P11946173028418161801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A387075.P11946173028418161801

/-! ## A387075.P9542495615599965423

`A386482(n+2)-A386482(n+1)`
-/

namespace A387075.P9542495615599965423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 2) - A386482 (n + 1)

end

end A387075.P9542495615599965423

/-! ## A387075.P4924245150535036799

`A386487(n+2)+1-A386487(n+1)`
-/

namespace A387075.P4924245150535036799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (n + 2) + 1 - A386487 (n + 1)

end

end A387075.P4924245150535036799

/-!
# A387076: Primes in the order in which they appear in A386482.

The programs for A387076, there is no canonical definition to state claims against.
-/

/-! ## A387076.P1980333788794686049

`p?[A386482(n+1)]`
-/

namespace A387076.P1980333788794686049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A387076.P1980333788794686049

/-! ## A387076.P10300111790921332193

`A386482(A387077(n+1))`
-/

namespace A387076.P10300111790921332193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (A387077 (n + 1)).toNat

end

end A387076.P10300111790921332193

/-! ## A387076.P17983342127056890040

`A387079(A387077(2*n+1-n))`
-/

namespace A387076.P17983342127056890040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (A387077 (2 * n + 1 - n)).toNat

end

end A387076.P17983342127056890040

/-! ## A387076.P17042239155898859616

`A387087(A387077(n+1))%A075233(n+1)`
-/

namespace A387076.P17042239155898859616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387087 (A387077 (n + 1)).toNat) (A075233 (n + 1))

end

end A387076.P17042239155898859616

/-! ## A387076.P1305965988699570999

`A387079(A387077(n+1)%A154514(n+1))`
-/

namespace A387076.P1305965988699570999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (Int.tmod (A387077 (n + 1)) (A154514 (n + 1))).toNat

end

end A387076.P1305965988699570999

/-! ## A387076.P7729929893931276556

`A387079(A387077(n+1))%A235548(n+1)`
-/

namespace A387076.P7729929893931276556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387079 (A387077 (n + 1)).toNat) (A235548 (n + 1))

end

end A387076.P7729929893931276556

/-!
# A387077: Indices of prime terms in A386482.

The programs for A387077, there is no canonical definition to state claims against.
-/

/-! ## A387077.P7999179478816282337

`A387072(A387076(n+1))`
-/

namespace A387077.P7999179478816282337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387076 (n + 1)).toNat

end

end A387077.P7999179478816282337

/-! ## A387077.P10951190003457225871

`eq[1, A001222(A386482(n+1))]+1`
-/

namespace A387077.P10951190003457225871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A386482 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387077.P10951190003457225871

/-!
# A387079: Least prime factor of A386482(n).

The programs for A387079, there is no canonical definition to state claims against.
-/

/-! ## A387079.P14385861632253724888

`A020639(A386482(n+1))`
-/

namespace A387079.P14385861632253724888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A386482 (n + 1)).toNat

end

end A387079.P14385861632253724888

/-! ## A387079.P2795424779086796553

`A134194(∏{p}[A386482(n+1), #])`
-/

namespace A387079.P2795424779086796553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A387079.P2795424779086796553

/-! ## A387079.P15107423778476203822

`A277708(∏{p}[A386482(n+1), #])`
-/

namespace A387079.P15107423778476203822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A387079.P15107423778476203822

/-! ## A387079.P5396328721435305838

`A323130(∏{p}[A386482(n+1), #])`
-/

namespace A387079.P5396328721435305838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A387079.P5396328721435305838

/-! ## A387079.P13831176001400038392

`A249739(∏{p}[A386482(n+1), #]²)`
-/

namespace A387079.P13831176001400038392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2)

end

end A387079.P13831176001400038392

/-!
# A387082: Triangle T(n,k) read by rows: T(n,k) is the number of partitions of [n] whose set of block sizes equals [k]; n >= 0, 0 <= k <= A003056(n).

The programs for A387082, there is no canonical definition to state claims against.
-/

/-! ## A387082.P6978430370343276181

`A393036(n)^a(n-1)` with `a(0)=1`
-/

namespace A387082.P6978430370343276181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A393036 n : ℝ) ^ (a (n - 1))

end

end A387082.P6978430370343276181

/-! ## A387082.P17430414685080050206

`A097449(A393036(n))`
-/

namespace A387082.P17430414685080050206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A393036 n).toNat

end

end A387082.P17430414685080050206

/-! ## A387082.P7252575394561304581

`filter[A393036(n), A102609(#)]`
-/

namespace A387082.P7252575394561304581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A387082.P7252575394561304581

/-! ## A387082.P13364000195286270943

`filter[A393036(n), A337264(#)]`
-/

namespace A387082.P13364000195286270943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337264 (f1 j).toNat = 1) n)

end

end A387082.P13364000195286270943

/-! ## A387082.P5817859596750699101

`A393036(n)%A374710(3*n+1)`
-/

namespace A387082.P5817859596750699101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393036 n) (A374710 (3 * n + 1))

end

end A387082.P5817859596750699101

/-!
# A387083: Expansion of e.g.f. (2*(1-x)^2)/(2-4*x+x^2).

The programs for A387083, there is no canonical definition to state claims against.
-/

/-! ## A387083.P6404305216798814864

`A029670(n*a(n-1)²)` with `a(0)=1`
-/

namespace A387083.P6404305216798814864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029670 ((n : ℤ) * a (n - 1) ^ 2).toNat

end

end A387083.P6404305216798814864

/-! ## A387083.P17092683601395754551

`A052887(n)/A034444(A000312(n))`
-/

namespace A387083.P17092683601395754551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052887 n : ℚ) / (A034444 (A000312 n).toNat : ℚ)

end

end A387083.P17092683601395754551

/-!
# A387084: Expansion of B(x)/sqrt(1 + 4*(B(x)-1)/5), where B(x) is the g.f. of A001449.

The programs for A387084, there is no canonical definition to state claims against.
-/

/-! ## A387084.P2310076034385509523

`A008611(A099336(n+1)-char[∏{p}[n, #]-1])`
-/

namespace A387084.P2310076034385509523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A099336 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A387084.P2310076034385509523

/-!
# A387085: a(n) = Sum_{k=0..n} (-3)^(n-k) * binomial(2*n+1,k).

The programs for A387085, there is no canonical definition to state claims against.
-/

/-! ## A387085.P907032219963886454

`A354665(∑[4*n])`
-/

namespace A387085.P907032219963886454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354665 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387085.P907032219963886454

/-! ## A387085.P8559203966214242216

`A115209(A201919(n+1))`
-/

namespace A387085.P8559203966214242216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115209 (A201919 (n + 1)).toNat

end

end A387085.P8559203966214242216

/-!
# A387086: Expansion of B(x)/sqrt(1 + 2*(B(x)-1)), where B(x) is the g.f. of A000984.

The programs for A387086, there is no canonical definition to state claims against.
-/

/-! ## A387086.P3688844113101440919

`A279555(n)+A008683(A079625(3*(n+1)))`
-/

namespace A387086.P3688844113101440919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279555 n + A008683 (A079625 (3 * (n + 1))).toNat

end

end A387086.P3688844113101440919

/-!
# A387087: GCD of pairs of consecutive terms of the sequence A386482.

The programs for A387087, there is no canonical definition to state claims against.
-/

/-! ## A387087.P3009183966640506630

`gcd(A386482(n+1), A387075(n+1))`
-/

namespace A387087.P3009183966640506630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A386482 (n + 1)) (A387075 (n + 1))

end

end A387087.P3009183966640506630

/-! ## A387087.P10236724571416204278

`gcd(A386482(A000027(n+1)), A386482(n+2))`
-/

namespace A387087.P10236724571416204278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A386482 (A000027 (n + 1)).toNat) (A386482 (n + 2))

end

end A387087.P10236724571416204278

/-!
# A387088: Fixed points of A386482: numbers k such that A386482(k) = k.

The programs for A387088, there is no canonical definition to state claims against.
-/

/-! ## A387088.P16563918923699879232

`eq[n+1, A386482(n+1)]+1`
-/

namespace A387088.P16563918923699879232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387088.P16563918923699879232

/-! ## A387088.P9348521463112234328

`eq[n+1, A387072(n+1)]+1`
-/

namespace A387088.P9348521463112234328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387088.P9348521463112234328

/-! ## A387088.P4199795066788776769

`eq[n, A386482(A028310(n))]`
-/

namespace A387088.P4199795066788776769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A387088.P4199795066788776769

/-!
# A387090: 1, followed by distinct values of A387089.

The programs for A387090, there is no canonical definition to state claims against.
-/

/-! ## A387090.P17193436945503097822

`A386482(A386484(n+1))`
-/

namespace A387090.P17193436945503097822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (A386484 (n + 1)).toNat

end

end A387090.P17193436945503097822

/-! ## A387090.P1139653084479815252

`A386482(record[A387072(n+1)])`
-/

namespace A387090.P1139653084479815252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A387090.P1139653084479815252

/-! ## A387090.P14858849793828351369

`A387079(record[A387072(n+1)])`
-/

namespace A387090.P14858849793828351369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A387090.P14858849793828351369

/-! ## A387090.P3914404619827059270

`A387087(record[A387072(n+1)])`
-/

namespace A387090.P3914404619827059270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A387090.P3914404619827059270

/-! ## A387090.P17356801947366541526

`A387079(A386484(2*n+1-n))`
-/

namespace A387090.P17356801947366541526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (A386484 (2 * n + 1 - n)).toNat

end

end A387090.P17356801947366541526

/-!
# A387091: a(n) = binomial(9*n+1,n).

The programs for A387091, there is no canonical definition to state claims against.
-/

/-! ## A387091.P16971273414923112342

`C(9*n+1, n)`
-/

namespace A387091.P16971273414923112342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (9 * n + 1) n

end

end A387091.P16971273414923112342

/-! ## A387091.P1946132218339294610

`A159841(A062728(n))`
-/

namespace A387091.P1946132218339294610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159841 (A062728 n).toNat

end

end A387091.P1946132218339294610

/-! ## A387091.P16008516021292958320

`A144484(A139277(n))`
-/

namespace A387091.P16008516021292958320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 (A139277 n).toNat

end

end A387091.P16008516021292958320

/-! ## A387091.P3226942050790029957

`A102426(A007533(n))`
-/

namespace A387091.P3226942050790029957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A007533 n).toNat

end

end A387091.P3226942050790029957

/-! ## A387091.P14775225809710829228

`A102426(A154355(n+1))`
-/

namespace A387091.P14775225809710829228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A154355 (n + 1)).toNat

end

end A387091.P14775225809710829228

/-!
# A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

The programs for A387096, the canonical program `A387096.P15198397566290512698` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387096 has offset 1).

The definition of A387096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387096.P15198397566290512698

`lt[n+2, A086568(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A387096

/-- `lt[n+2, A086568(n+1)]+1` -/
def P15198397566290512698.Spec : Prop :=
  ∀ n, (P15198397566290512698.a n : ℤ) = A387096 (n + 1)

theorem P15198397566290512698.correct : P15198397566290512698.Spec := by
  intro n
  simp only [A387096, Nat.add_sub_cancel]

end A387096

/-! ## A387096.P13571369836003548513

`∩[A387113(n+1), A387941(n+1)]`
-/

namespace A387096.P13571369836003548513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387096.P13571369836003548513

namespace A387096

/-- `∩[A387113(n+1), A387941(n+1)]` -/
def P13571369836003548513.Spec : Prop :=
  ∀ n, (P13571369836003548513.a n : ℤ) = A387096 (n + 1)

end A387096

/-! ## A387096.P14087875910756250584

`lt[A017077(n), A005563(A000001(3*n))]`
-/

namespace A387096.P14087875910756250584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A000001 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387096.P14087875910756250584

namespace A387096

/-- `lt[A017077(n), A005563(A000001(3*n))]` -/
def P14087875910756250584.Spec : Prop :=
  ∀ n, (P14087875910756250584.a n : ℤ) = A387096 (n + 1)

end A387096

/-! ## A387096.P4176175836565727873

`lt[A163846(n+1), A000292(A000001(3*n))]`
-/

namespace A387096.P4176175836565727873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000001 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387096.P4176175836565727873

namespace A387096

/-- `lt[A163846(n+1), A000292(A000001(3*n))]` -/
def P4176175836565727873.Spec : Prop :=
  ∀ n, (P4176175836565727873.a n : ℤ) = A387096 (n + 1)

end A387096

/-! ## A387096.P11805968429990668933

`∩[A347262(n+1), A371089(n+1)]`
-/

namespace A387096.P11805968429990668933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387096.P11805968429990668933

namespace A387096

/-- `∩[A347262(n+1), A371089(n+1)]` -/
def P11805968429990668933.Spec : Prop :=
  ∀ n, (P11805968429990668933.a n : ℤ) = A387096 (n + 1)

end A387096

/-!
# A387097: Numbers k such that k > prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

The programs for A387097, there is no canonical definition to state claims against.
-/

/-! ## A387097.P7295813257625058313

`lt[A019298(A000001(2*n)), A000695(n)]`
-/

namespace A387097.P7295813257625058313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (A000001 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387097.P7295813257625058313

/-! ## A387097.P10301113223235471436

`lt[A005705(A000001(2*n)), A067535(n+1)]`
-/

namespace A387097.P10301113223235471436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 (A000001 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387097.P10301113223235471436

/-! ## A387097.P1969074177887524278

`∩[A281005(n+1), A384011(n+1)]`
-/

namespace A387097.P1969074177887524278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387097.P1969074177887524278

/-! ## A387097.P4863531671875097465

`lt[A071156(A003415(n)), A251607(n+1)]`
-/

namespace A387097.P4863531671875097465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387097.P4863531671875097465

/-! ## A387097.P3057354983500233320

`filter[A259433(2*n+1), A101040(#)]`
-/

namespace A387097.P3057354983500233320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A387097.P3057354983500233320

/-!
# A387098: Triangle read by rows: T(n,k) is the number of ways to place k non-attacking kings in each row and column of an n X n board, 0 <= k <= floor(n/4) + [n=1].

The programs for A387098, there is no canonical definition to state claims against.
-/

/-! ## A387098.P10827413494393862608

`A371457(A148116(n))`
-/

namespace A387098.P10827413494393862608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371457 (A148116 n).toNat

end

end A387098.P10827413494393862608

