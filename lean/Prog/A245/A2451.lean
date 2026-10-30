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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A245100: Triangle read by rows in which row n lists the parts of the symmetric representation of sigma(n), multiplied by n.

The programs for A245100, there is no canonical definition to state claims against.
-/

/-! ## A245100.P5171131918134352597

`A185283(A239659(n+1))*A237270(n+1)`
-/

namespace A245100.P5171131918134352597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A239659 (n + 1)).toNat * A237270 (n + 1)

end

end A245100.P5171131918134352597

/-! ## A245100.P12386591204059634969

`A185283(∑[A237270(n+1)])*A237270(n+1)`
-/

namespace A245100.P12386591204059634969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A237270 (n + 1)

end

end A245100.P12386591204059634969

/-! ## A245100.P1427421091161919417

`A070939(A018424(n+1))*A237270(n+1)`
-/

namespace A245100.P1427421091161919417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A018424 (n + 1)).toNat * A237270 (n + 1)

end

end A245100.P1427421091161919417

/-!
# A245102: Number of 2n-node rooted trees of height n.

The programs for A245102, there is no canonical definition to state claims against.
-/

/-! ## A245102.P13127210439936510892

`A034781(A051890(n))-A000007(n)`
-/

namespace A245102.P13127210439936510892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A051890 n).toNat - A000007 n

end

end A245102.P13127210439936510892

/-! ## A245102.P2526940820141653720

`A034781(A051890(n))*A057427(n)`
-/

namespace A245102.P2526940820141653720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A051890 n).toNat * A057427 n

end

end A245102.P2526940820141653720

/-! ## A245102.P2711582879343238134

`and(A034781(A051890(n)), A057428(n))`
-/

namespace A245102.P2711582879343238134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034781 (A051890 n).toNat) (A057428 n)

end

end A245102.P2711582879343238134

/-! ## A245102.P15310852254495133221

`A034781(A051890(n))%A041781(n)²`
-/

namespace A245102.P15310852254495133221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034781 (A051890 n).toNat) (A041781 n ^ 2)

end

end A245102.P15310852254495133221

/-! ## A245102.P3367079932151292547

`A034781(A051890(n))*A211666(n+1)`
-/

namespace A245102.P3367079932151292547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A051890 n).toNat * A211666 (n + 1)

end

end A245102.P3367079932151292547

/-! ## A245102.P15613050006924525710

`char[A002260(n+1)]*A034781(A051890(n))`
-/

namespace A245102.P15613050006924525710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A034781 (A051890 n).toNat

end

end A245102.P15613050006924525710

/-! ## A245102.P3643143403491679153

`char[A004736(n+1)]*A034781(A051890(n))`
-/

namespace A245102.P3643143403491679153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A034781 (A051890 n).toNat

end

end A245102.P3643143403491679153

/-! ## A245102.P17049560874008763725

`char[A034781(n+2)]*A034781(A051890(n))`
-/

namespace A245102.P17049560874008763725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A034781 (A051890 n).toNat

end

end A245102.P17049560874008763725

/-!
# A245103: Number of (2n+1)-node rooted trees of height n.

The programs for A245103, there is no canonical definition to state claims against.
-/

/-! ## A245103.P7745917932637024067

`A034781(A054977(n)+A001105(n))`
-/

namespace A245103.P7745917932637024067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A054977 n + A001105 n).toNat

end

end A245103.P7745917932637024067

/-! ## A245103.P13447547718229290438

`A034781(A058331(A000007(n)+n))`
-/

namespace A245103.P13447547718229290438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A058331 (A000007 n + (n : ℤ)).toNat).toNat

end

end A245103.P13447547718229290438

/-! ## A245103.P1810126235235497352

`A034781(xor(A001105(n), A054977(n)))`
-/

namespace A245103.P1810126235235497352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (Int.xor (A001105 n) (A054977 n)).toNat

end

end A245103.P1810126235235497352

/-! ## A245103.P18241551004230046113

`A034781(A271624(n+1)+A057428(n))`
-/

namespace A245103.P18241551004230046113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A271624 (n + 1) + A057428 n).toNat

end

end A245103.P18241551004230046113

/-! ## A245103.P16013442233948927707

`A034781(A271624(n+1)-A158388(n))`
-/

namespace A245103.P16013442233948927707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A271624 (n + 1) - A158388 n).toNat

end

end A245103.P16013442233948927707

/-!
# A245104: a(n) = Sum_{k=0..n} binomial(n,k) * (2^(n-k) + 3^k)^(n-k) * 3^(k^2).

The programs for A245104, the canonical program `A245104.P15245370032660165521` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245104 has offset 0).

The definition of A245104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245104.P15245370032660165521

`∑{#}[n, C(n, #)*(3^(n-#)+2^#)^(n-#)*2^#²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245104

/-- `∑{#}[n, C(n, #)*(3^(n-#)+2^#)^(n-#)*2^#²]` -/
def P15245370032660165521.Spec : Prop :=
  ∀ n, P15245370032660165521.a n = (A245104 n : ℚ)

end A245104

/-! ## A245104.P18075967129814504085

`∑{#}[n, C(n, #)*(2^(n-#)+3^#)^(n-#)*3^#²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245104.P18075967129814504085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) + (3 ^ k : ℚ)) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (3 ^ k ^ 2 : ℚ)

end

end A245104.P18075967129814504085

namespace A245104

/-- `∑{#}[n, C(n, #)*(2^(n-#)+3^#)^(n-#)*3^#²]` -/
def P18075967129814504085.Spec : Prop :=
  ∀ n, P18075967129814504085.a n = (A245104 n : ℚ)

end A245104

/-!
# A245105: a(n) = Sum_{k=0..n} binomial(n,k) * (2^k + 3^k)^(n-k) * 3^(k^2).

The programs for A245105, the canonical program `A245105.P11342194550565686349` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245105 has offset 0).

The definition of A245105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245105.P11342194550565686349

`∑{#}[n, C(n, #)*(1+2^(n-#)*3^#)^#]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245105

/-- `∑{#}[n, C(n, #)*(1+2^(n-#)*3^#)^#]` -/
def P11342194550565686349.Spec : Prop :=
  ∀ n, P11342194550565686349.a n = (A245105 n : ℚ)

end A245105

/-! ## A245105.P4274748738121172686

`∑{#}[n, C(n, #)*(2^#+3^#)^(n-#)*3^#²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245105.P4274748738121172686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (2 ^ k + 3 ^ k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (3 ^ k ^ 2 : ℚ)

end

end A245105.P4274748738121172686

namespace A245105

/-- `∑{#}[n, C(n, #)*(2^#+3^#)^(n-#)*3^#²]` -/
def P4274748738121172686.Spec : Prop :=
  ∀ n, P4274748738121172686.a n = (A245105 n : ℚ)

end A245105

/-!
# A245106: a(n) = Sum_{k=0..n} binomial(n,k) * 2^((n-k)^2) * 3^(k^2).

The programs for A245106, the canonical program `A245106.P3884523459461983124` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245106 has offset 0).

The definition of A245106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245106.P3884523459461983124

`∑{#}[n, C(n, #)*2^(n-#)²*3^#²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245106

/-- `∑{#}[n, C(n, #)*2^(n-#)²*3^#²]` -/
def P3884523459461983124.Spec : Prop :=
  ∀ n, P3884523459461983124.a n = (A245106 n : ℚ)

end A245106

/-!
# A245107: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k) * (A(x)^k - x^k)^k * x^(k*(n-k)).

The programs for A245107, there is no canonical definition to state claims against.
-/

/-! ## A245107.P16945625091265154525

`or(A090223(A058279(n)), A206915(n))`
-/

namespace A245107.P16945625091265154525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090223 (A058279 n).toNat) (A206915 n)

end

end A245107.P16945625091265154525

/-! ## A245107.P10156659333121643064

`or(A001462(n+1), A090223(A058279(n)))`
-/

namespace A245107.P10156659333121643064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001462 (n + 1)) (A090223 (A058279 n).toNat)

end

end A245107.P10156659333121643064

/-! ## A245107.P16547165025433615980

`or(A090223(A058279(n)), A254827(n+1))`
-/

namespace A245107.P16547165025433615980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090223 (A058279 n).toNat) (A254827 (n + 1))

end

end A245107.P16547165025433615980

/-!
# A245108: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k) * (A(x)^k + x^k)^k * x^(k*(n-k)).

The programs for A245108, there is no canonical definition to state claims against.
-/

/-! ## A245108.P15278447226969862310

`A195174(2*A151884(n+1))`
-/

namespace A245108.P15278447226969862310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (2 * A151884 (n + 1)).toNat

end

end A245108.P15278447226969862310

/-! ## A245108.P12596741281329518334

`A110449(n)+A034887(A379328(n))`
-/

namespace A245108.P12596741281329518334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n + A034887 (A379328 n).toNat

end

end A245108.P12596741281329518334

/-!
# A245109: G.f.: Sum_{n>=0} exp(-(1 + n^2*x)) * (1 + n^2*x)^n / n!.

The programs for A245109, the canonical program `A245109.P6290309816348427151` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245109 has offset 0).

The definition of A245109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245109.P6290309816348427151

`A049020(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245109

/-- `A049020(C(2*n+1, 2)+n)` -/
def P6290309816348427151.Spec : Prop :=
  ∀ n, P6290309816348427151.a n = A245109 n

theorem P6290309816348427151.correct : P6290309816348427151.Spec := by
  intro n
  simp only [A245109]

end A245109

/-! ## A245109.P2859170562922865915

`A049020(∑[4*n])`
-/

namespace A245109.P2859170562922865915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245109.P2859170562922865915

namespace A245109

/-- `A049020(∑[4*n])` -/
def P2859170562922865915.Spec : Prop :=
  ∀ n, P2859170562922865915.a n = A245109 n

end A245109

/-! ## A245109.P14149843416083978925

`record[A003982(n)*A049020(n)]`
-/

namespace A245109.P14149843416083978925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245109.P14149843416083978925

namespace A245109

/-- `record[A003982(n)*A049020(n)]` -/
def P14149843416083978925.Spec : Prop :=
  ∀ n, P14149843416083978925.a n = A245109 n

end A245109

/-! ## A245109.P13232241676423327979

`record[A049020(gcd(n, A204016(n+1)))]`
-/

namespace A245109.P13232241676423327979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (Int.gcd (n : ℤ) (A204016 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245109.P13232241676423327979

namespace A245109

/-- `record[A049020(gcd(n, A204016(n+1)))]` -/
def P13232241676423327979.Spec : Prop :=
  ∀ n, P13232241676423327979.a n = A245109 n

end A245109

/-! ## A245109.P16945668345192732046

`or(A000007(n), A049020(A046092(n)))`
-/

namespace A245109.P16945668345192732046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049020 (A046092 n).toNat)

end

end A245109.P16945668345192732046

namespace A245109

/-- `or(A000007(n), A049020(A046092(n)))` -/
def P16945668345192732046.Spec : Prop :=
  ∀ n, P16945668345192732046.a n = A245109 n

end A245109

/-!
# A245110: G.f.: Sum_{n>=0} ( exp(-1/(1-n*x)) / (1-n*x)^n ) / n!.

The programs for A245110, there is no canonical definition to state claims against.
-/

/-! ## A245110.P11320710686700646191

`A399132(4*∑[n])`
-/

namespace A245110.P11320710686700646191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399132 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A245110.P11320710686700646191

/-! ## A245110.P8077647109840911255

`A118763(A291979(n)-n)`
-/

namespace A245110.P8077647109840911255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A291979 n - (n : ℤ)).toNat

end

end A245110.P8077647109840911255

/-!
# A245111: G.f.: A(x,y) = Sum_{n>=0} exp(-y/(1-n*x)) * y^n/(1-n*x)^n / n!.

The programs for A245111, the canonical program `A245111.P13739336468849869505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245111 has offset 0).

The definition of A245111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245111.P13739336468849869505

`A048993(n)*A097805(A245300(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245111

/-- `A048993(n)*A097805(A245300(n))` -/
def P13739336468849869505.Spec : Prop :=
  ∀ n, P13739336468849869505.a n = A245111 n

theorem P13739336468849869505.correct : P13739336468849869505.Spec := by
  intro n
  simp only [A245111]

end A245111

/-! ## A245111.P6695391790591786214

`A358021(A256311(n))`
-/

namespace A245111.P6695391790591786214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358021 (A256311 n).toNat

end

end A245111.P6695391790591786214

namespace A245111

/-- `A358021(A256311(n))` -/
def P6695391790591786214.Spec : Prop :=
  ∀ n, P6695391790591786214.a n = A245111 n

end A245111

/-! ## A245111.P417135494550656306

`∑{e}[A051288(A267480(n)), #]`
-/

namespace A245111.P417135494550656306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051288 (A267480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245111.P417135494550656306

namespace A245111

/-- `∑{e}[A051288(A267480(n)), #]` -/
def P417135494550656306.Spec : Prop :=
  ∀ n, (P417135494550656306.a n : ℤ) = A245111 n

end A245111

/-! ## A245111.P693981429376455385

`and(A304336(n), A371215(A090657(n)))`
-/

namespace A245111.P693981429376455385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304336 n) (A371215 (A090657 n).toNat)

end

end A245111.P693981429376455385

namespace A245111

/-- `and(A304336(n), A371215(A090657(n)))` -/
def P693981429376455385.Spec : Prop :=
  ∀ n, P693981429376455385.a n = A245111 n

end A245111

/-! ## A245111.P15669034815263442465

`A143397(n)*A194285(A147655(n+3))`
-/

namespace A245111.P15669034815263442465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 n * A194285 (A147655 (n + 3)).toNat

end

end A245111.P15669034815263442465

namespace A245111

/-- `A143397(n)*A194285(A147655(n+3))` -/
def P15669034815263442465.Spec : Prop :=
  ∀ n, P15669034815263442465.a n = A245111 n

end A245111

/-!
# A245112: G.f. A(x) satisfies A(x)^2 = 1 + 4*x*A(x)^5.

The programs for A245112, there is no canonical definition to state claims against.
-/

/-! ## A245112.P15970261509988470824

`A262732(n)/(n+1+2*n)`
-/

namespace A245112.P15970261509988470824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262732 n : ℚ) / (n + 1 + 2 * n : ℚ)

end

end A245112.P15970261509988470824

/-! ## A245112.P9293362244920823397

`floor(A262732(n)/A016777(n))`
-/

namespace A245112.P9293362244920823397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262732 n : ℚ) / (A016777 n : ℚ)⌋

end

end A245112.P9293362244920823397

/-! ## A245112.P1130673405736212298

`(A262732(n)/A016777(n))^A000108(C(2, n+2))`
-/

namespace A245112.P1130673405736212298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A262732 n : ℚ) / (A016777 n : ℚ)) ^ (A000108 (Nat.choose 2 (n + 2)) : ℤ)

end

end A245112.P1130673405736212298

/-! ## A245112.P7750377661931540802

`A262732(n)/A016777(n)*(∑[A001018(n)]%3)!`
-/

namespace A245112.P7750377661931540802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262732 n : ℚ) / (A016777 n : ℚ) * (Nat.factorial (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3).toNat : ℚ)

end

end A245112.P7750377661931540802

/-! ## A245112.P7783692802393846421

`and(1, A003261(n+1))+A262732(n)/A016777(n)-1`
-/

namespace A245112.P7783692802393846421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A003261 (n + 1)) : ℚ) + ((A262732 n : ℚ) / (A016777 n : ℚ) - 1)

end

end A245112.P7783692802393846421

/-! ## A245112.P12129980076911264636

`(A262732(n)/A016777(n))%(2-A252393(n+1))`
-/

namespace A245112.P12129980076911264636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A262732 n : ℚ) / (A016777 n : ℚ))) (2 - A252393 (n + 1))

end

end A245112.P12129980076911264636

/-!
# A245113: G.f. A(x) satisfies A(x)^2 = 1 + 4*x*A(x)^6.

The programs for A245113, there is no canonical definition to state claims against.
-/

/-! ## A245113.P4730137297810988216

`A217138(2*n)`
-/

namespace A245113.P4730137297810988216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217138 (2 * n)

end

end A245113.P4730137297810988216

/-! ## A245113.P1567316022665090578

`record[gcd(A135481(n), A217138(n))]`
-/

namespace A245113.P1567316022665090578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135481 n) (A217138 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245113.P1567316022665090578

/-! ## A245113.P5975431546970493366

`A211419(n)/(4*n+1)`
-/

namespace A245113.P5975431546970493366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211419 n : ℚ) / (4 * n + 1 : ℚ)

end

end A245113.P5975431546970493366

/-! ## A245113.P11561430462473023323

`ceil(A211419(n)/A016813(n))`
-/

namespace A245113.P11561430462473023323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211419 n : ℚ) / (A016813 n : ℚ)⌉

end

end A245113.P11561430462473023323

/-! ## A245113.P1310238917570128108

`A173781(3*n)/A016813(n)`
-/

namespace A245113.P1310238917570128108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173781 (3 * n) : ℚ) / (A016813 n : ℚ)

end

end A245113.P1310238917570128108

/-!
# A245114: G.f. A(x) satisfies A(x)^3 = 1 + 9*x*A(x)^5.

The programs for A245114, there is no canonical definition to state claims against.
-/

/-! ## A245114.P5817254847970959541

`A276018(n)-A004137(A000272(n))`
-/

namespace A245114.P5817254847970959541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276018 n - A004137 (A000272 n).toNat

end

end A245114.P5817254847970959541

/-!
# A245115: E.g.f. satisfies: A'(x) = (cos(x) + sin(x)*A(x)) / (cos(x)*A(x) - sin(x)).

The programs for A245115, there is no canonical definition to state claims against.
-/

/-! ## A245115.P13032648560143883797

`A121527(A187258(n))`
-/

namespace A245115.P13032648560143883797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121527 (A187258 n).toNat

end

end A245115.P13032648560143883797

/-! ## A245115.P17816955421265690863

`A157271(A000109(n+3))`
-/

namespace A245115.P17816955421265690863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A000109 (n + 3)).toNat

end

end A245115.P17816955421265690863

/-! ## A245115.P15960187988086902325

`or(1, A325863(A304973(n)))`
-/

namespace A245115.P15960187988086902325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325863 (A304973 n).toNat)

end

end A245115.P15960187988086902325

/-! ## A245115.P3621011036561342242

`A332086(A000088(n))+A011865(n)`
-/

namespace A245115.P3621011036561342242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A000088 n).toNat + A011865 n

end

end A245115.P3621011036561342242

/-!
# A245116: E.g.f.: (cos(x) + sin(x)*exp(x)) / (cos(x)*exp(x) - sin(x)).

The programs for A245116, there is no canonical definition to state claims against.
-/

/-! ## A245116.P5472339363914638751

`A026834(n!)+C(n, 3)`
-/

namespace A245116.P5472339363914638751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (Nat.factorial n) + (Nat.choose n 3 : ℤ)

end

end A245116.P5472339363914638751

/-! ## A245116.P16653855850533155432

`or(1, A045778(ceil(n!/2)*Δ[n²]))`
-/

namespace A245116.P16653855850533155432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045778 (⌈(Nat.factorial n : ℚ) / 2⌉ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat)

end

end A245116.P16653855850533155432

/-! ## A245116.P18123708778224427025

`A045778(A144085(n))`
-/

namespace A245116.P18123708778224427025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A144085 n).toNat

end

end A245116.P18123708778224427025

/-!
# A245117: E.g.f.: (cos(2*x) + sin(2*x)*exp(x)) / (cos(2*x)*exp(x) - sin(2*x)).

The programs for A245117, there is no canonical definition to state claims against.
-/

/-! ## A245117.P8077361411528355614

`n*A319566(2*n+1)+1+n`
-/

namespace A245117.P8077361411528355614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A319566 (2 * n + 1) + 1 + (n : ℤ)

end

end A245117.P8077361411528355614

/-!
# A245118: G.f. satisfies: A(x) = 1 + x*A(x)^3 / (A(x) - x*A'(x)).

The programs for A245118, there is no canonical definition to state claims against.
-/

/-! ## A245118.P12604934749484376382

`A376676(A001246(n))`
-/

namespace A245118.P12604934749484376382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376676 (A001246 n).toNat

end

end A245118.P12604934749484376382

/-! ## A245118.P11038163490918245109

`A376676(A000108(n)²)`
-/

namespace A245118.P11038163490918245109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376676 (A000108 n ^ 2).toNat

end

end A245118.P11038163490918245109

/-!
# A245119: G.f. satisfies: A(x) = 1 + x^2 + x^2*A'(x)/A(x).

The programs for A245119, there is no canonical definition to state claims against.
-/

/-! ## A245119.P11027503549657243960

`A112509(A320964(n))-n`
-/

namespace A245119.P11027503549657243960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A320964 n).toNat - (n : ℤ)

end

end A245119.P11027503549657243960

/-! ## A245119.P8734377260371300908

`A352493(A137173(n))+A005638(n)`
-/

namespace A245119.P8734377260371300908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A137173 n).toNat + A005638 n

end

end A245119.P8734377260371300908

/-! ## A245119.P2618147533483452762

`A008618(A150337(n)+∑[A353255(n)])`
-/

namespace A245119.P2618147533483452762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A150337 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245119.P2618147533483452762

/-!
# A245120: Number T(n,k) of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) k; triangle T(n,k), n>=1, 0<=k<=max-index-of-row(n), read by rows.

The programs for A245120, there is no canonical definition to state claims against.
-/

/-! ## A245120.P10776141770051905025

`A005206(A291878(n)%A337262(n))`
-/

namespace A245120.P10776141770051905025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A291878 n) (A337262 n)).toNat

end

end A245120.P10776141770051905025

/-! ## A245120.P17044881558162976045

`A010894(2*n+3)+A005206(A291878(n))`
-/

namespace A245120.P17044881558162976045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (2 * n + 3 + 21) + A005206 (A291878 n).toNat

end

end A245120.P17044881558162976045

/-! ## A245120.P15449691585302078136

`A005206(A291878(n)+A124827(n+1)%2)`
-/

namespace A245120.P15449691585302078136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A291878 n + Int.tmod (A124827 (n + 1)) 2).toNat

end

end A245120.P15449691585302078136

/-! ## A245120.P12080462421987596041

`A005206(A291878(n))%A000040(A124827(n+1))`
-/

namespace A245120.P12080462421987596041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A291878 n).toNat) (A000040 (A124827 (n + 1)).toNat)

end

end A245120.P12080462421987596041

/-! ## A245120.P13147605800089363316

`A365721(A351637(n)^4)`
-/

namespace A245120.P13147605800089363316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (A351637 n ^ 4).toNat

end

end A245120.P13147605800089363316

/-!
# A245121: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 2.

The programs for A245121, there is no canonical definition to state claims against.
-/

/-! ## A245121.P18339042582898313379

`A184427(A023359(n))`
-/

namespace A245121.P18339042582898313379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A023359 n).toNat

end

end A245121.P18339042582898313379

/-! ## A245121.P2320049740009237665

`A276571(A190156(n))`
-/

namespace A245121.P2320049740009237665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A190156 n).toNat

end

end A245121.P2320049740009237665

/-! ## A245121.P16420405806849021774

`A184427(A357453(n))`
-/

namespace A245121.P16420405806849021774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A357453 n).toNat

end

end A245121.P16420405806849021774

/-! ## A245121.P4994602677952987712

`A184427(A357455(n))`
-/

namespace A245121.P4994602677952987712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A357455 n).toNat

end

end A245121.P4994602677952987712

/-! ## A245121.P17000461934099806396

`A257639(A279701(n)+A093833(n))`
-/

namespace A245121.P17000461934099806396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A279701 n + A093833 n).toNat

end

end A245121.P17000461934099806396

/-!
# A245122: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 3.

The programs for A245122, there is no canonical definition to state claims against.
-/

/-! ## A245122.P14357585894549280300

`record[A245120(gcd(n+4, A245120(n+1)))]`
-/

namespace A245122.P14357585894549280300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245120 (Int.gcd (n + 4 : ℤ) (A245120 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245122.P14357585894549280300

/-! ## A245122.P17994956274470273381

`record[C(A245120(n+3), A245120(n+1))]`
-/

namespace A245122.P17994956274470273381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245120 (n + 3)).toNat (A245120 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245122.P17994956274470273381

/-! ## A245122.P18316532353436726289

`A262689(A221862(n)+A176697(n))`
-/

namespace A245122.P18316532353436726289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A221862 n + A176697 n).toNat

end

end A245122.P18316532353436726289

/-! ## A245122.P4395117472728846986

`A276571(A026966(n))`
-/

namespace A245122.P4395117472728846986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A026966 n).toNat

end

end A245122.P4395117472728846986

/-!
# A245123: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 4.

The programs for A245123, there is no canonical definition to state claims against.
-/

/-! ## A245123.P2453753912639531889

`A005380(n)+A004438(A000219(n))`
-/

namespace A245123.P2453753912639531889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005380 n + A004438 (A000219 n).toNat

end

end A245123.P2453753912639531889

/-! ## A245123.P12645423081892531538

`A220413(n+1)+A220413(A341207(n))`
-/

namespace A245123.P12645423081892531538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (n + 1) + A220413 (A341207 (n + 10)).toNat

end

end A245123.P12645423081892531538

/-! ## A245123.P5284827893950520527

`A005380(n)+A004438(A293551(∑[n+3]))`
-/

namespace A245123.P5284827893950520527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005380 n + A004438 (A293551 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A245123.P5284827893950520527

/-!
# A245124: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 5.

The programs for A245124, there is no canonical definition to state claims against.
-/

/-! ## A245124.P1962029902435099665

`A339252(n)-A128581(A304279(n+1))`
-/

namespace A245124.P1962029902435099665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A128581 (A304279 (n + 1)).toNat

end

end A245124.P1962029902435099665

/-! ## A245124.P14895673783462925797

`A339252(n)+A128581(2*A304279(n+1))`
-/

namespace A245124.P14895673783462925797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n + A128581 (2 * A304279 (n + 1)).toNat

end

end A245124.P14895673783462925797

/-! ## A245124.P7776376842840402028

`A339252(n)+A128581(A304279(n+1)/2)`
-/

namespace A245124.P7776376842840402028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n + A128581 (SequenceMachineLib.roundAway ((A304279 (n + 1) : ℚ) / 2)).toNat

end

end A245124.P7776376842840402028

/-!
# A245125: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 6.

The programs for A245125, there is no canonical definition to state claims against.
-/

/-! ## A245125.P17359934792696939444

`A353357(A300344(n+1))-1`
-/

namespace A245125.P17359934792696939444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353357 (A300344 (n + 1)).toNat - 1

end

end A245125.P17359934792696939444

/-!
# A245126: Number of n-node rooted identity trees with thinning limbs and root outdegree (branching factor) 7.

The programs for A245126, there is no canonical definition to state claims against.
-/

/-! ## A245126.P8113940216164980656

`A206814(round(round(20^(n/2))^(2/3)))-(2*n+3)`
-/

namespace A245126.P8113940216164980656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206814 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) : ℝ) ^ ((2 : ℚ) / 3 : ℝ))).toNat - (2 * n + 3 : ℤ)

end

end A245126.P8113940216164980656

/-!
# A245130: Number of length n 0..4 arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245130, there is no canonical definition to state claims against.
-/

/-! ## A245130.P2703114296544892862

`A245134(A027379(n+2))`
-/

namespace A245130.P2703114296544892862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A027379 (n + 2)).toNat

end

end A245130.P2703114296544892862

/-! ## A245130.P3340950454036005154

`A245134(A055998(n+2))`
-/

namespace A245130.P3340950454036005154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A055998 (n + 2)).toNat

end

end A245130.P3340950454036005154

/-! ## A245130.P15444566793288514057

`A245134(A155212(n)+5)`
-/

namespace A245130.P15444566793288514057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A155212 n + 5).toNat

end

end A245130.P15444566793288514057

/-! ## A245130.P18001122472106395605

`A245134(A056000(n)+7)`
-/

namespace A245130.P18001122472106395605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A056000 n + 7).toNat

end

end A245130.P18001122472106395605

/-! ## A245130.P16644042915471875138

`A245134(Δ[A006503(n+1)])`
-/

namespace A245130.P16644042915471875138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n).toNat

end

end A245130.P16644042915471875138

/-! ## A245130.P13925602692078055654

`A245134(A052905(n+1)+2)`
-/

namespace A245130.P13925602692078055654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A052905 (n + 1) + 2).toNat

end

end A245130.P13925602692078055654

/-! ## A245130.P1735724926017706783

`A245134(A167614(n+1)+A005408(n))`
-/

namespace A245130.P1735724926017706783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167614 (n + 1) + A005408 n).toNat

end

end A245130.P1735724926017706783

/-!
# A245131: Number of length n 0..5 arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245131, there is no canonical definition to state claims against.
-/

/-! ## A245131.P11667327435236822581

`A245134(Δ[A264443(n)])`
-/

namespace A245131.P11667327435236822581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n).toNat

end

end A245131.P11667327435236822581

/-! ## A245131.P7079336266172995074

`A245134(A046691(n+3))`
-/

namespace A245131.P7079336266172995074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A046691 (n + 3)).toNat

end

end A245131.P7079336266172995074

/-! ## A245131.P11612260621926794913

`A245134(Δ[A023545(n+1)])`
-/

namespace A245131.P11612260621926794913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n).toNat

end

end A245131.P11612260621926794913

/-! ## A245131.P14793295978625575022

`A245134(A000124(n+5)-5)`
-/

namespace A245131.P14793295978625575022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000124 (n + 5) - 5).toNat

end

end A245131.P14793295978625575022

/-! ## A245131.P13761644444660287671

`A245134(A264443(n+1)-A264443(n))`
-/

namespace A245131.P13761644444660287671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A264443 (n + 1) - A264443 n).toNat

end

end A245131.P13761644444660287671

/-! ## A245131.P8812802369310767137

`A245134(A038722(A167614(n+1))+A020742(n))`
-/

namespace A245131.P8812802369310767137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A038722 (A167614 (n + 1)).toNat + A020742 n).toNat

end

end A245131.P8812802369310767137

/-!
# A245132: Number of length n 0..6 arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245132, there is no canonical definition to state claims against.
-/

/-! ## A245132.P4015840444309408289

`A245134(A052905(n+3))`
-/

namespace A245132.P4015840444309408289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A052905 (n + 3)).toNat

end

end A245132.P4015840444309408289

/-! ## A245132.P7027408111545432349

`A245134(A027379(n+4)-2)`
-/

namespace A245132.P7027408111545432349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A027379 (n + 4) - 2).toNat

end

end A245132.P7027408111545432349

/-! ## A245132.P16435889895300292546

`A245134(A000124(n+6)-6)`
-/

namespace A245132.P16435889895300292546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000124 (n + 6) - 6).toNat

end

end A245132.P16435889895300292546

/-! ## A245132.P12401554667247025317

`A245134(Δ[A264443(n+1)]-1)`
-/

namespace A245132.P12401554667247025317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n - 1).toNat

end

end A245132.P12401554667247025317

/-! ## A245132.P6742677929141229102

`A245134(Δ[A023545(n+2)]-1)`
-/

namespace A245132.P6742677929141229102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n - 1).toNat

end

end A245132.P6742677929141229102

/-! ## A245132.P8116608656762790061

`A245134(Δ[n²]+A155212(n)+13)`
-/

namespace A245132.P8116608656762790061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A155212 n + 13)).toNat

end

end A245132.P8116608656762790061

/-! ## A245132.P9358989134695244662

`A245134((n+5)²-A167614(n+2))`
-/

namespace A245132.P9358989134695244662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (((n + 5) ^ 2 : ℤ) - A167614 (n + 2)).toNat

end

end A245132.P9358989134695244662

/-! ## A245132.P16755955375659871432

`A245134(A245134(A167614(n+7))%A167614(n+8))`
-/

namespace A245132.P16755955375659871432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (Int.tmod (A245134 (A167614 (n + 7)).toNat) (A167614 (n + 8))).toNat

end

end A245132.P16755955375659871432

/-!
# A245133: Number of length n 0..7 arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245133, there is no canonical definition to state claims against.
-/

/-! ## A245133.P12905600345358713374

`A245134(A055999(n+4))`
-/

namespace A245133.P12905600345358713374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A055999 (n + 4)).toNat

end

end A245133.P12905600345358713374

/-! ## A245133.P692728696840547627

`A245134(A000124(n+7)-7)`
-/

namespace A245133.P692728696840547627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000124 (n + 7) - 7).toNat

end

end A245133.P692728696840547627

/-! ## A245133.P3327498843826479297

`A245134(A000217(n+6)+n+1)`
-/

namespace A245133.P3327498843826479297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A245133.P3327498843826479297

/-! ## A245133.P6049139084529438278

`A245134(A034856(n+5)+n+3)`
-/

namespace A245133.P6049139084529438278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A245133.P6049139084529438278

/-! ## A245133.P16742863545543395556

`A245134(A052905(n+3)+n+6)`
-/

namespace A245133.P16742863545543395556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A245133.P16742863545543395556

/-! ## A245133.P11652335885596544023

`A245134(A046691(n+7)-A267872(n+9))`
-/

namespace A245133.P11652335885596544023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A046691 (n + 7) - A267872 (n + 9)).toNat

end

end A245133.P11652335885596544023

/-!
# A245134: T(n,k)=Number of length n 0..k arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245134, there is no canonical definition to state claims against.
-/

/-! ## A245134.P6550094055933766525

`A178042(A140303(n))^A184848(n+1)`
-/

namespace A245134.P6550094055933766525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178042 (A140303 n).toNat : ℚ) ^ (A184848 (n + 1) : ℤ)

end

end A245134.P6550094055933766525

/-! ## A245134.P1182404831852197890

`A321391(lt[A206491(3*n+4), A321391(n)])`
-/

namespace A245134.P1182404831852197890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206491 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245134.P1182404831852197890

/-! ## A245134.P13806805233895452626

`A087179(10*A303555(n+1))`
-/

namespace A245134.P13806805233895452626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (10 * A303555 (n + 1)).toNat

end

end A245134.P13806805233895452626

/-! ## A245134.P137579094108663617

`A104257(n+2)-A285966(A033048(n+3))`
-/

namespace A245134.P137579094108663617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104257 (n + 2) - A285966 (A033048 (n + 3)).toNat

end

end A245134.P137579094108663617

/-! ## A245134.P18332952580683749739

`A194711(A095814(n))+A141157(n)`
-/

namespace A245134.P18332952580683749739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (A095814 n).toNat + A141157 n

end

end A245134.P18332952580683749739

/-!
# A245135: Number of length 5 0..n arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245135, the canonical program `A245135.P16030247341081708525` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245135 has offset 1).

The definition of A245135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245135.P15112235591014664606

`ogf((8+23x+18x^2+21x^3+12x^4-x^5-2x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A245135.P15112235591014664606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 23, 18, 21, 12, -1, -2, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A245135.P15112235591014664606

namespace A245135

/-- `ogf((8+23x+18x^2+21x^3+12x^4-x^5-2x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P15112235591014664606.Spec : Prop :=
  ∀ n, P15112235591014664606.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P16030247341081708525

`Δ[∑[n+1]*A131941(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245135

/-- `Δ[∑[n+1]*A131941(n+1)]` -/
def P16030247341081708525.Spec : Prop :=
  ∀ n, P16030247341081708525.a n = A245135 (n + 1)

theorem P16030247341081708525.correct : P16030247341081708525.Spec := by
  intro n
  simp only [A245135, Nat.add_sub_cancel]

end A245135

/-! ## A245135.P3044503407951165334

`(∑[A014255(n+1)+A000217(n)]+1)*(n+2)`
-/

namespace A245135.P3044503407951165334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 2 : ℤ)

end

end A245135.P3044503407951165334

namespace A245135

/-- `(∑[A014255(n+1)+A000217(n)]+1)*(n+2)` -/
def P3044503407951165334.Spec : Prop :=
  ∀ n, P3044503407951165334.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P1793832330844539211

`(n+2)*A212578(n+2)`
-/

namespace A245135.P1793832330844539211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A212578 (n + 2)

end

end A245135.P1793832330844539211

namespace A245135

/-- `(n+2)*A212578(n+2)` -/
def P1793832330844539211.Spec : Prop :=
  ∀ n, P1793832330844539211.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P1583334623419374347

`Δ[∑[A000982(n+1)]*A000217(n+1)]`
-/

namespace A245135.P1583334623419374347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245135.P1583334623419374347

namespace A245135

/-- `Δ[∑[A000982(n+1)]*A000217(n+1)]` -/
def P1583334623419374347.Spec : Prop :=
  ∀ n, P1583334623419374347.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P1128101715532332971

`(n+2)*Δ[A212573(n+2)/2]`
-/

namespace A245135.P1128101715532332971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212573 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (f1 (n + 1) - f1 n)

end

end A245135.P1128101715532332971

namespace A245135

/-- `(n+2)*Δ[A212573(n+2)/2]` -/
def P1128101715532332971.Spec : Prop :=
  ∀ n, P1128101715532332971.a n = (A245135 (n + 1) : ℚ)

end A245135

/-! ## A245135.P1105867682584514088

`Δ[∑[n+1]*A005232(2*n)]`
-/

namespace A245135.P1105867682584514088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A005232 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245135.P1105867682584514088

namespace A245135

/-- `Δ[∑[n+1]*A005232(2*n)]` -/
def P1105867682584514088.Spec : Prop :=
  ∀ n, P1105867682584514088.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P15028042602040657181

`Δ[A005232(2*n)*A008805(2*n)]`
-/

namespace A245135.P15028042602040657181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n) * A008805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245135.P15028042602040657181

namespace A245135

/-- `Δ[A005232(2*n)*A008805(2*n)]` -/
def P15028042602040657181.Spec : Prop :=
  ∀ n, P15028042602040657181.a n = A245135 (n + 1)

end A245135

/-! ## A245135.P16739081313462243595

`A245134(A167614(n+1)+A020742(n+1))`
-/

namespace A245135.P16739081313462243595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167614 (n + 1) + A020742 (n + 1)).toNat

end

end A245135.P16739081313462243595

namespace A245135

/-- `A245134(A167614(n+1)+A020742(n+1))` -/
def P16739081313462243595.Spec : Prop :=
  ∀ n, P16739081313462243595.a n = A245135 (n + 1)

end A245135

/-!
# A245136: Number of length 6 0..n arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245136, there is no canonical definition to state claims against.
-/

/-! ## A245136.P10352971924864139994

`A245134(A167499(n+4)+1)`
-/

namespace A245136.P10352971924864139994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167499 (n + 4) + 1).toNat

end

end A245136.P10352971924864139994

/-! ## A245136.P1742654865741120007

`A245134(A167487(n+4)-1)`
-/

namespace A245136.P1742654865741120007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167487 (n + 4) - 1).toNat

end

end A245136.P1742654865741120007

/-! ## A245136.P7998520883779505882

`A245134(A133263(n+5)+4)`
-/

namespace A245136.P7998520883779505882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A133263 (n + 5) + 4).toNat

end

end A245136.P7998520883779505882

/-! ## A245136.P13482228138168866260

`A245134(A000124(n+5)+5)`
-/

namespace A245136.P13482228138168866260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000124 (n + 5) + 5).toNat

end

end A245136.P13482228138168866260

/-! ## A245136.P3870615318455739908

`A245134(A046691(n+10)-A017029(n+7))`
-/

namespace A245136.P3870615318455739908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A046691 (n + 10) - A017029 (n + 7)).toNat

end

end A245136.P3870615318455739908

/-!
# A245137: Number of length 7 0..n arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

The programs for A245137, there is no canonical definition to state claims against.
-/

/-! ## A245137.P3085642228033843399

`A245134(A167487(n+5))`
-/

namespace A245137.P3085642228033843399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167487 (n + 5)).toNat

end

end A245137.P3085642228033843399

/-! ## A245137.P6271567463077759188

`A245134(A133263(n+6)+5)`
-/

namespace A245137.P6271567463077759188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A133263 (n + 6) + 5).toNat

end

end A245137.P6271567463077759188

/-! ## A245137.P3282982094069852396

`A245134(A000124(n+6)+6)`
-/

namespace A245137.P3282982094069852396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000124 (n + 6) + 6).toNat

end

end A245137.P3282982094069852396

/-! ## A245137.P4228885044781197216

`A245134(A000217(n+6)+7)`
-/

namespace A245137.P4228885044781197216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000217 (n + 6) + 7).toNat

end

end A245137.P4228885044781197216

/-! ## A245137.P3568736254715687276

`A245134(A155212(n+4)-2*n)`
-/

namespace A245137.P3568736254715687276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A245137.P3568736254715687276

/-! ## A245137.P4270521709972931594

`A245134(A055999(n+5)-2*(n+1))`
-/

namespace A245137.P4270521709972931594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A055999 (n + 5) - (2 * (n + 1) : ℤ)).toNat

end

end A245137.P4270521709972931594

/-! ## A245137.P16183380290810373005

`A245134(A046691(n+6)-A005843(n+2))`
-/

namespace A245137.P16183380290810373005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A245137.P16183380290810373005

/-!
# A245138: E.g.f.: (cosh(x) + sinh(x)*cosh(2*x)) / sqrt(1 - sinh(x)^2*sinh(2*x)^2).

The programs for A245138, there is no canonical definition to state claims against.
-/

/-! ## A245138.P9425327059452129998

`A000069(A356628(n))`
-/

namespace A245138.P9425327059452129998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A356628 n).toNat

end

end A245138.P9425327059452129998

/-! ## A245138.P12162956906130555861

`A325644(A400527(n))`
-/

namespace A245138.P12162956906130555861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325644 (A400527 n).toNat

end

end A245138.P12162956906130555861

/-! ## A245138.P15040379901749338019

`A047234(A356628(n)+1)`
-/

namespace A245138.P15040379901749338019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A356628 n + 1).toNat

end

end A245138.P15040379901749338019

/-!
# A245139: E.g.f.: (cosh(2*x) + sinh(2*x)*cosh(x)) / sqrt(1 - sinh(x)^2*sinh(2*x)^2).

The programs for A245139, there is no canonical definition to state claims against.
-/

/-! ## A245139.P3439846830287870734

`or(n, A087692(A130342(n)+n^n))+n`
-/

namespace A245139.P3439846830287870734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A087692 (A130342 n + (n ^ n : ℤ)).toNat) + (n : ℤ)

end

end A245139.P3439846830287870734

/-! ## A245139.P10350653441114109321

`A055748(A006125(n)+A000984(n))`
-/

namespace A245139.P10350653441114109321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A006125 n + A000984 n).toNat

end

end A245139.P10350653441114109321

/-!
# A245140: E.g.f.: (cosh(2*x) + sinh(2*x)*cosh(x)) / (cosh(x) - sinh(x)*cosh(2*x)).

The programs for A245140, there is no canonical definition to state claims against.
-/

/-! ## A245140.P3365815010002617762

`A055790(n)+A022998(A069321(n))`
-/

namespace A245140.P3365815010002617762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055790 n + A022998 (A069321 n).toNat

end

end A245140.P3365815010002617762

/-! ## A245140.P12699367091963309093

`A247779(A296792(n))-A214817(n+1)`
-/

namespace A245140.P12699367091963309093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (A296792 n).toNat - A214817 (n + 1)

end

end A245140.P12699367091963309093

/-!
# A245141: Number of endofunctions f on [2n] that are self-inverse on [n].

The programs for A245141, the canonical program `A245141.P4022633453372513346` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245141 has offset 0).

The definition of A245141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245141.P4022633453372513346

`∑{#}[n, C(n, #)²*#!*A000085(n-#)*(2*n)^(n-#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245141

/-- `∑{#}[n, C(n, #)²*#!*A000085(n-#)*(2*n)^(n-#)]` -/
def P4022633453372513346.Spec : Prop :=
  ∀ n, P4022633453372513346.a n = (A245141 n : ℚ)

end A245141

/-! ## A245141.P10458621891460285419

`A245348(C(2*n+1, 2)+n)`
-/

namespace A245141.P10458621891460285419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 (Nat.choose (2 * n + 1) 2 + n)

end

end A245141.P10458621891460285419

namespace A245141

/-- `A245348(C(2*n+1, 2)+n)` -/
def P10458621891460285419.Spec : Prop :=
  ∀ n, P10458621891460285419.a n = A245141 n

end A245141

/-! ## A245141.P4846066222005525298

`A245348(∑[4*n])`
-/

namespace A245141.P4846066222005525298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245141.P4846066222005525298

namespace A245141

/-- `A245348(∑[4*n])` -/
def P4846066222005525298.Spec : Prop :=
  ∀ n, P4846066222005525298.a n = A245141 n

end A245141

/-! ## A245141.P4859679357003537442

`A245348(A046092(n))*A304042(n)`
-/

namespace A245141.P4859679357003537442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 (A046092 n).toNat * A304042 n

end

end A245141.P4859679357003537442

namespace A245141

/-- `A245348(A046092(n))*A304042(n)` -/
def P4859679357003537442.Spec : Prop :=
  ∀ n, P4859679357003537442.a n = A245141 n

end A245141

/-! ## A245141.P6404727297086652657

`A245348(A046092(n))^A178334(n)`
-/

namespace A245141.P6404727297086652657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245348 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A245141.P6404727297086652657

namespace A245141

/-- `A245348(A046092(n))^A178334(n)` -/
def P6404727297086652657.Spec : Prop :=
  ∀ n, P6404727297086652657.a n = (A245141 n : ℚ)

end A245141

/-!
# A245142: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 2.

The programs for A245142, there is no canonical definition to state claims against.
-/

/-! ## A245142.P13132416473521651061

`A245151(∑[n+2]+4)`
-/

namespace A245142.P13132416473521651061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A245142.P13132416473521651061

/-! ## A245142.P11301242081795258580

`(char[1]+1)*A245151(A167614(n+1))`
-/

namespace A245142.P11301242081795258580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A245151 (A167614 (n + 1)).toNat

end

end A245142.P11301242081795258580

/-! ## A245142.P9631576611765618395

`A245151(A167614(n+1))%A000051(n)`
-/

namespace A245142.P9631576611765618395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (A167614 (n + 1)).toNat) (A000051 n)

end

end A245142.P9631576611765618395

/-! ## A245142.P7281691968911521351

`or(A000007(n), A245151(A167614(n+1)))`
-/

namespace A245142.P7281691968911521351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245151 (A167614 (n + 1)).toNat)

end

end A245142.P7281691968911521351

/-! ## A245142.P7858515920011033962

`or(A000038(n+1), A245151(A167614(n+1)))`
-/

namespace A245142.P7858515920011033962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A245151 (A167614 (n + 1)).toNat)

end

end A245142.P7858515920011033962

/-! ## A245142.P3889224255231275373

`and(A245151(A167614(n+1)), A283507(2*n))`
-/

namespace A245142.P3889224255231275373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245151 (A167614 (n + 1)).toNat) (A283507 (2 * n))

end

end A245142.P3889224255231275373

/-! ## A245142.P3573126906787600947

`A245151(A167614(n+1))+(2*A000045(n))%2`
-/

namespace A245142.P3573126906787600947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 1)).toNat + Int.tmod (2 * A000045 n) 2

end

end A245142.P3573126906787600947

/-! ## A245142.P3588704305270912075

`and(A087100(2*n+1), A245151(A055998(n)+6))`
-/

namespace A245142.P3588704305270912075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087100 (2 * n + 1)) (A245151 (A055998 n + 6).toNat)

end

end A245142.P3588704305270912075

/-! ## A245142.P12065428023665624793

`A245151(A167499(n)+n)%A029744(2*(n+1))`
-/

namespace A245142.P12065428023665624793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (A167499 n + (n : ℤ)).toNat) (A029744 (2 * (n + 1)))

end

end A245142.P12065428023665624793

/-! ## A245142.P10644756635521617656

`A245151(A167499(n)+n)%A000747(n)`
-/

namespace A245142.P10644756635521617656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (A167499 n + (n : ℤ)).toNat) (A000747 n)

end

end A245142.P10644756635521617656

/-!
# A245143: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 3.

The programs for A245143, there is no canonical definition to state claims against.
-/

/-! ## A245143.P18236558562977614140

`A245151(∑[n+3]+7)`
-/

namespace A245143.P18236558562977614140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A245143.P18236558562977614140

/-! ## A245143.P8808660920976704636

`or(char[3], A245151(A167614(n+2)+1))`
-/

namespace A245143.P8808660920976704636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A245151 (A167614 (n + 2) + 1).toNat)

end

end A245143.P8808660920976704636

/-! ## A245143.P12813367195312451897

`A245151(A167614(n+2)+1)%A198275(n)`
-/

namespace A245143.P12813367195312451897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (A167614 (n + 2) + 1).toNat) (A198275 n)

end

end A245143.P12813367195312451897

/-! ## A245143.P14629805345666575729

`lcm(A033999(n), A245151(A167614(n+2)+1))`
-/

namespace A245143.P14629805345666575729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A245151 (A167614 (n + 2) + 1).toNat)

end

end A245143.P14629805345666575729

/-! ## A245143.P5455814221624984915

`A245151(A167614(n+2)+1)+A000035(2*n)`
-/

namespace A245143.P5455814221624984915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 2) + 1).toNat + A000035 (2 * n)

end

end A245143.P5455814221624984915

/-! ## A245143.P331256263164465963

`A000034(2*n)*A245151(A167614(n+2)+1)`
-/

namespace A245143.P331256263164465963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A245151 (A167614 (n + 2) + 1).toNat

end

end A245143.P331256263164465963

/-! ## A245143.P9693098742196466370

`and(A245151(A167614(n+2)+1), A283507(2*n))`
-/

namespace A245143.P9693098742196466370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245151 (A167614 (n + 2) + 1).toNat) (A283507 (2 * n))

end

end A245143.P9693098742196466370

/-! ## A245143.P11674882228697101602

`A008683(A014963(n+1))²*A245151(A167614(n+2)+1)`
-/

namespace A245143.P11674882228697101602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A245151 (A167614 (n + 2) + 1).toNat

end

end A245143.P11674882228697101602

/-!
# A245144: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 4.

The programs for A245144, there is no canonical definition to state claims against.
-/

/-! ## A245144.P305470036871141185

`A245151(A167499(n+3))`
-/

namespace A245144.P305470036871141185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167499 (n + 3)).toNat

end

end A245144.P305470036871141185

/-! ## A245144.P3041242569181994440

`A245151(A166136(n+3)-1)`
-/

namespace A245144.P3041242569181994440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A166136 (n + 3) - 1).toNat

end

end A245144.P3041242569181994440

/-! ## A245144.P8753904761450640833

`A245151(A000124(n+4)+4)`
-/

namespace A245144.P8753904761450640833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000124 (n + 4) + 4).toNat

end

end A245144.P8753904761450640833

/-! ## A245144.P17171011337096219106

`A245151(A000217(n+4)+5)`
-/

namespace A245144.P17171011337096219106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 4) + 5).toNat

end

end A245144.P17171011337096219106

/-! ## A245144.P8839583655029707270

`A245151(A038722(Δ[A023545(n+1)]))`
-/

namespace A245144.P8839583655029707270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A245144.P8839583655029707270

/-!
# A245145: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 5.

The programs for A245145, there is no canonical definition to state claims against.
-/

/-! ## A245145.P12560015501746114912

`A245151(A166136(n+4))`
-/

namespace A245145.P12560015501746114912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A166136 (n + 4)).toNat

end

end A245145.P12560015501746114912

/-! ## A245145.P15876883830256913928

`A245151(A167614(n+4)+3)`
-/

namespace A245145.P15876883830256913928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 4) + 3).toNat

end

end A245145.P15876883830256913928

/-! ## A245145.P11686701897223434018

`A245151(A000217(n+5)+6)`
-/

namespace A245145.P11686701897223434018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 5) + 6).toNat

end

end A245145.P11686701897223434018

/-! ## A245145.P11093900231145879862

`A245151(A048058(n+3)-A000124(n+1))`
-/

namespace A245145.P11093900231145879862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A048058 (n + 3) - A000124 (n + 1)).toNat

end

end A245145.P11093900231145879862

/-! ## A245145.P1602656842733157516

`A245151(A267046(2*A267046(n))+A000124(n+5))`
-/

namespace A245145.P1602656842733157516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A267046 (2 * A267046 n).toNat + A000124 (n + 5)).toNat

end

end A245145.P1602656842733157516

/-!
# A245146: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 6.

The programs for A245146, there is no canonical definition to state claims against.
-/

/-! ## A245146.P5285512072542598956

`A245151(A167487(n+5))`
-/

namespace A245146.P5285512072542598956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167487 (n + 5)).toNat

end

end A245146.P5285512072542598956

/-! ## A245146.P1805089634402720422

`A245151(A167614(n+5)+4)`
-/

namespace A245146.P1805089634402720422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 5) + 4).toNat

end

end A245146.P1805089634402720422

/-! ## A245146.P1921111217224066211

`A245151(A000217(n+6)+7)`
-/

namespace A245146.P1921111217224066211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 6) + 7).toNat

end

end A245146.P1921111217224066211

/-! ## A245146.P1509920555933392905

`A245151(A173036(n+6)-6)`
-/

namespace A245146.P1509920555933392905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A173036 (n + 6) - 6).toNat

end

end A245146.P1509920555933392905

/-! ## A245146.P15383905657332650379

`A245151(A161680(n+7)+7)`
-/

namespace A245146.P15383905657332650379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A161680 (n + 7) + 7).toNat

end

end A245146.P15383905657332650379

/-! ## A245146.P2990367963093281473

`A245151(A052905(n+3)+12)`
-/

namespace A245146.P2990367963093281473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A052905 (n + 3) + 12).toNat

end

end A245146.P2990367963093281473

/-! ## A245146.P10725733151075220434

`A245151(A055999(n+3)+13)`
-/

namespace A245146.P10725733151075220434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A055999 (n + 3) + 13).toNat

end

end A245146.P10725733151075220434

/-! ## A245146.P12560736767049509477

`A245151(A000124(n+8)-(2*n+9))`
-/

namespace A245146.P12560736767049509477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000124 (n + 8) - (2 * n + 9 : ℤ)).toNat

end

end A245146.P12560736767049509477

/-! ## A245146.P8415330197544584593

`A245151(A000124(n+8)-8-A005408(n))`
-/

namespace A245146.P8415330197544584593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000124 (n + 8) - 8 - A005408 n).toNat

end

end A245146.P8415330197544584593

/-!
# A245147: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 7.

The programs for A245147, there is no canonical definition to state claims against.
-/

/-! ## A245147.P1396133985923726450

`A245151(A167614(n+6)+5)`
-/

namespace A245147.P1396133985923726450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 6) + 5).toNat

end

end A245147.P1396133985923726450

/-! ## A245147.P5515861577229153685

`A245151(A000217(n+7)+8)`
-/

namespace A245147.P5515861577229153685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 7) + 8).toNat

end

end A245147.P5515861577229153685

/-! ## A245147.P9499951502155513893

`A245151(eq[9, A131818(n+1)])`
-/

namespace A245147.P9499951502155513893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245147.P9499951502155513893

/-! ## A245147.P2072859825887395868

`A245151(A000096(n+7)-(n-1))`
-/

namespace A245147.P2072859825887395868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A245147.P2072859825887395868

/-! ## A245147.P3419503711048467057

`A245151(A000096(n+6)+9)%A023494(n)`
-/

namespace A245147.P3419503711048467057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (A000096 (n + 6) + 9).toNat) (A023494 n)

end

end A245147.P3419503711048467057

/-!
# A245148: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 8.

The programs for A245148, there is no canonical definition to state claims against.
-/

/-! ## A245148.P2760013081695181162

`A245151(A340266(n+7)+7)`
-/

namespace A245148.P2760013081695181162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A340266 (n + 7) + 7).toNat

end

end A245148.P2760013081695181162

/-! ## A245148.P650778019772018114

`A245151(A000096(n+7)+10)`
-/

namespace A245148.P650778019772018114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000096 (n + 7) + 10).toNat

end

end A245148.P650778019772018114

/-! ## A245148.P1307748227927561551

`A245151(A000217(n+8)+9)`
-/

namespace A245148.P1307748227927561551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 8) + 9).toNat

end

end A245148.P1307748227927561551

/-! ## A245148.P3678991165802570973

`A245151(eq[10, A131818(n+1)])`
-/

namespace A245148.P3678991165802570973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245148.P3678991165802570973

/-! ## A245148.P119746463735552463

`A245151(A167499(n+5)+A004280(n+11))`
-/

namespace A245148.P119746463735552463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167499 (n + 5) + A004280 (n + 11)).toNat

end

end A245148.P119746463735552463

/-!
# A245149: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 9.

The programs for A245149, there is no canonical definition to state claims against.
-/

/-! ## A245149.P15030266940726773419

`A245151(A167499(n+8)+5)`
-/

namespace A245149.P15030266940726773419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167499 (n + 8) + 5).toNat

end

end A245149.P15030266940726773419

/-! ## A245149.P13265931900343895130

`A245151(A167614(n+8)+7)`
-/

namespace A245149.P13265931900343895130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167614 (n + 8) + 7).toNat

end

end A245149.P13265931900343895130

/-! ## A245149.P16111965049510353067

`A245151(A000217(n+9)+10)`
-/

namespace A245149.P16111965049510353067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A000217 (n + 9) + 10).toNat

end

end A245149.P16111965049510353067

/-! ## A245149.P2807032568426199494

`A245151(eq[11, A131818(n+1)])`
-/

namespace A245149.P2807032568426199494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245149.P2807032568426199494

/-! ## A245149.P17305036173481456165

`A245151(A166136(n+9)-(n+6))`
-/

namespace A245149.P17305036173481456165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A166136 (n + 9) - (n + 6 : ℤ)).toNat

end

end A245149.P17305036173481456165

/-!
# A245150: Number of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) 10.

The programs for A245150, there is no canonical definition to state claims against.
-/

/-! ## A245150.P3157090961430762551

`A245151(A166136(n+9)+5)`
-/

namespace A245150.P3157090961430762551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A166136 (n + 9) + 5).toNat

end

end A245150.P3157090961430762551

/-! ## A245150.P6433694740802004601

`A245151(A167499(n+9)+6)`
-/

namespace A245150.P6433694740802004601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A167499 (n + 9) + 6).toNat

end

end A245150.P6433694740802004601

/-! ## A245150.P16052977976842545053

`A245151(eq[12, A131818(n+1)])`
-/

namespace A245150.P16052977976842545053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245150.P16052977976842545053

/-! ## A245150.P13020546417854203811

`A245151(A133263(n+11)-(n+2))`
-/

namespace A245150.P13020546417854203811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (A133263 (n + 11) - (n + 2 : ℤ)).toNat

end

end A245150.P13020546417854203811

/-! ## A245150.P7152941672318650474

`A245151(A253145(n+9)+11)/((2*A000045(n))%2+1)`
-/

namespace A245150.P7152941672318650474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245151 (A253145 (n + 9) + 11).toNat : ℚ) / (Int.tmod (2 * A000045 n) 2 + 1 : ℚ)

end

end A245150.P7152941672318650474

/-!
# A245151: Number T(n,k) of n-node unlabeled rooted trees with thickening limbs and root outdegree (branching factor) k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A245151, there is no canonical definition to state claims against.
-/

/-! ## A245151.P2531498074456079983

`A325678(A244454(n+1))+char[23]`
-/

namespace A245151.P2531498074456079983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A244454 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245151.P2531498074456079983

/-! ## A245151.P5232482762712449094

`A169778(A244530(n+1)%A005101(n+1))`
-/

namespace A245151.P5232482762712449094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (Int.tmod (A244530 (n + 1)) (A005101 (n + 1))).toNat

end

end A245151.P5232482762712449094

/-! ## A245151.P15330548569256864076

`A325678(A244454(n+1))^A179455(n)`
-/

namespace A245151.P15330548569256864076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325678 (A244454 (n + 1)).toNat : ℚ) ^ (A179455 n : ℤ)

end

end A245151.P15330548569256864076

/-! ## A245151.P7249106846923645703

`A325678(A244454(n+1))^A294609(n)`
-/

namespace A245151.P7249106846923645703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325678 (A244454 (n + 1)).toNat : ℚ) ^ (A294609 n : ℤ)

end

end A245151.P7249106846923645703

/-! ## A245151.P14256768021078861280

`A325678(A244454(n+1))^A294950(n)`
-/

namespace A245151.P14256768021078861280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325678 (A244454 (n + 1)).toNat : ℚ) ^ (A294950 n : ℤ)

end

end A245151.P14256768021078861280

/-!
# A245152: Number of n-node unlabeled rooted trees with thickening limbs.

The programs for A245152, there is no canonical definition to state claims against.
-/

/-! ## A245152.P9239594316514094904

`∑{#}[n, A245151(C(n+1, 2)+#+1)]`
-/

namespace A245152.P9239594316514094904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A245151 (Nat.choose (n + 1) 2 + k + 1)

end

end A245152.P9239594316514094904

/-! ## A245152.P7256716944383643107

`A245151(∑[n+1]+2)`
-/

namespace A245152.P7256716944383643107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A245152.P7256716944383643107

/-! ## A245152.P18070589215087677024

`A000007(n)+record[A245151(n+2)]`
-/

namespace A245152.P18070589215087677024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245152.P18070589215087677024

/-! ## A245152.P2295296226618372826

`record[A245151(n+2)]+A000038(n)/2`
-/

namespace A245152.P2295296226618372826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (A000038 n : ℚ) / 2

end

end A245152.P2295296226618372826

/-! ## A245152.P11113375907955454244

`record[A245151(n+2)]^A130654(2*n+1)`
-/

namespace A245152.P11113375907955454244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A130654 (2 * n + 1) : ℤ)

end

end A245152.P11113375907955454244

/-! ## A245152.P12593903730962036735

`A055641(A000120(n))+record[A245151(n+2)]`
-/

namespace A245152.P12593903730962036735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000120 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245152.P12593903730962036735

/-! ## A245152.P13003785541547935626

`A130638(A000040(n+1))+record[A245151(n+2)]`
-/

namespace A245152.P13003785541547935626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245152.P13003785541547935626

/-!
# A245153: E.g.f.: (cosh(x) + sinh(x)*cosh(3*x)) / sqrt(1 - sinh(x)^2*sinh(3*x)^2).

The programs for A245153, there is no canonical definition to state claims against.
-/

/-! ## A245153.P7495845306702743848

`A032742(A149578(n)+A015551(n))`
-/

namespace A245153.P7495845306702743848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A149578 n + A015551 n).toNat

end

end A245153.P7495845306702743848

/-!
# A245154: E.g.f.: (cosh(3*x) + sinh(3*x)*cosh(x)) / sqrt(1 - sinh(x)^2*sinh(3*x)^2).

The programs for A245154, there is no canonical definition to state claims against.
-/

/-! ## A245154.P9988219790221348203

`A133058(A006129(n))+A000045(3*n)`
-/

namespace A245154.P9988219790221348203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133058 (A006129 n).toNat + A000045 (3 * n)

end

end A245154.P9988219790221348203

/-!
# A245155: E.g.f.: (cosh(3*x) + sinh(3*x)*cosh(x)) / (cosh(x) - sinh(x)*cosh(3*x)).

The programs for A245155, there is no canonical definition to state claims against.
-/

/-! ## A245155.P5054741658583981168

`A320352(n)+A005923(n)`
-/

namespace A245155.P5054741658583981168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320352 n + A005923 n

end

end A245155.P5054741658583981168

/-! ## A245155.P11084846570737563208

`A000557(n)*A040000(n)`
-/

namespace A245155.P11084846570737563208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n * A040000 n

end

end A245155.P11084846570737563208

/-! ## A245155.P8007230809200821263

`A040000(n)²*A332257(n)`
-/

namespace A245155.P8007230809200821263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A332257 n

end

end A245155.P8007230809200821263

/-! ## A245155.P776701846298898676

`(2-A000007(n))*A000557(n)`
-/

namespace A245155.P776701846298898676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A000557 n

end

end A245155.P776701846298898676

/-! ## A245155.P10011651724574643183

`2*A000557(n)-A151878(n)`
-/

namespace A245155.P10011651724574643183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000557 n - A151878 n

end

end A245155.P10011651724574643183

/-! ## A245155.P18155842735644855540

`A020639(A000123(n))*A000557(n)`
-/

namespace A245155.P18155842735644855540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000123 n).toNat * A000557 n

end

end A245155.P18155842735644855540

/-! ## A245155.P2174870190951418565

`A000557(n)*A020639(A001316(n))`
-/

namespace A245155.P2174870190951418565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n * A020639 (A001316 n).toNat

end

end A245155.P2174870190951418565

/-! ## A245155.P10059265699876497443

`A000557(n)*A020639(A004011(n))`
-/

namespace A245155.P10059265699876497443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n * A020639 (A004011 n).toNat

end

end A245155.P10059265699876497443

/-! ## A245155.P10618850180228811139

`A000557(n)*A020639(A004277(n))`
-/

namespace A245155.P10618850180228811139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n * A020639 (A004277 n).toNat

end

end A245155.P10618850180228811139

/-! ## A245155.P5369798173441320276

`A000557(n)*A020639(A008574(n))`
-/

namespace A245155.P5369798173441320276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n * A020639 (A008574 n).toNat

end

end A245155.P5369798173441320276

/-!
# A245156: G.f.: Sum_{n>=0} x^n/((1+x)^(2*n)*(1 - (2*n)*x)).

The programs for A245156, there is no canonical definition to state claims against.
-/

/-! ## A245156.P7796768670781054988

`A100196(A349588(n))`
-/

namespace A245156.P7796768670781054988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A349588 n).toNat

end

end A245156.P7796768670781054988

/-! ## A245156.P5765735391980899468

`A258251(A380634(n))`
-/

namespace A245156.P5765735391980899468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258251 (A380634 n).toNat

end

end A245156.P5765735391980899468

/-! ## A245156.P15622308935382741505

`A054899(A350589(n+1))+1`
-/

namespace A245156.P15622308935382741505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A350589 (n + 1)).toNat + 1

end

end A245156.P15622308935382741505

/-!
# A245157: G.f.: Sum_{n>=0} x^n/((1+x)^(2*n+1)*(1 - (2*n+1)*x)).

The programs for A245157, there is no canonical definition to state claims against.
-/

/-! ## A245157.P7770226245335350838

`A055256(A150625(n))`
-/

namespace A245157.P7770226245335350838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (A150625 n).toNat

end

end A245157.P7770226245335350838

/-! ## A245157.P8512369401105776687

`A049317(A150377(n)+A023440(n))`
-/

namespace A245157.P8512369401105776687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (A150377 n + A023440 n).toNat

end

end A245157.P8512369401105776687

/-! ## A245157.P3344017480298218588

`A226190(A294760(n)+A000142(n))`
-/

namespace A245157.P3344017480298218588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A294760 n + A000142 n).toNat

end

end A245157.P3344017480298218588

/-!
# A245158: Number of length n 0..3 arrays with new values introduced in order from both ends.

The programs for A245158, the canonical program `A245158.P6022156151130494218` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245158 has offset 1).

The definition of A245158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245158.P6022156151130494218

`ogf((1-9x+29x^2-43x^3+31x^4-11x^5)/(1-10x+37x^2-64x^3+52x^4-16x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245158

/-- `ogf((1-9x+29x^2-43x^3+31x^4-11x^5)/(1-10x+37x^2-64x^3+52x^4-16x^5))` -/
def P6022156151130494218.Spec : Prop :=
  ∀ n, P6022156151130494218.a n = A245158 (n + 1)

theorem P6022156151130494218.correct : P6022156151130494218.Spec := by
  intro n
  simp only [A245158, Nat.add_sub_cancel]

end A245158

/-! ## A245158.P15873987207166729385

`A245163(∑[n+3]+1)`
-/

namespace A245158.P15873987207166729385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245158.P15873987207166729385

namespace A245158

/-- `A245163(∑[n+3]+1)` -/
def P15873987207166729385.Spec : Prop :=
  ∀ n, P15873987207166729385.a n = A245158 (n + 1)

end A245158

/-! ## A245158.P8502212174204721797

`(1-4/2)²*A245163(A000124(n+3)-3)`
-/

namespace A245158.P8502212174204721797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A245163 (A000124 (n + 3) - 3).toNat : ℚ)

end

end A245158.P8502212174204721797

namespace A245158

/-- `(1-4/2)²*A245163(A000124(n+3)-3)` -/
def P8502212174204721797.Spec : Prop :=
  ∀ n, P8502212174204721797.a n = (A245158 (n + 1) : ℚ)

end A245158

/-! ## A245158.P15346810411856793393

`A245163(A034856(n+2))%A156760(n)`
-/

namespace A245158.P15346810411856793393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245163 (A034856 (n + 2)).toNat) (A156760 n)

end

end A245158.P15346810411856793393

namespace A245158

/-- `A245163(A034856(n+2))%A156760(n)` -/
def P15346810411856793393.Spec : Prop :=
  ∀ n, P15346810411856793393.a n = A245158 (n + 1)

end A245158

/-! ## A245158.P2012320494292175760

`gcd(A000038(n), A245163(A052905(n)+3))`
-/

namespace A245158.P2012320494292175760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245163 (A052905 n + 3).toNat)

end

end A245158.P2012320494292175760

namespace A245158

/-- `gcd(A000038(n), A245163(A052905(n)+3))` -/
def P2012320494292175760.Spec : Prop :=
  ∀ n, (P2012320494292175760.a n : ℤ) = A245158 (n + 1)

end A245158

/-! ## A245158.P8647405690848469854

`or(A003982(n), A245163(A052905(n)+3))`
-/

namespace A245158.P8647405690848469854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A245163 (A052905 n + 3).toNat)

end

end A245158.P8647405690848469854

namespace A245158

/-- `or(A003982(n), A245163(A052905(n)+3))` -/
def P8647405690848469854.Spec : Prop :=
  ∀ n, P8647405690848469854.a n = A245158 (n + 1)

end A245158

/-! ## A245158.P7094356611814381853

`or(A000007(n), A245163(A000124(n+3)-3))`
-/

namespace A245158.P7094356611814381853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245163 (A000124 (n + 3) - 3).toNat)

end

end A245158.P7094356611814381853

namespace A245158

/-- `or(A000007(n), A245163(A000124(n+3)-3))` -/
def P7094356611814381853.Spec : Prop :=
  ∀ n, P7094356611814381853.a n = A245158 (n + 1)

end A245158

/-! ## A245158.P7447116102453545939

`A245163(A000124(n+3)-3)+A000007(n+1)`
-/

namespace A245158.P7447116102453545939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000124 (n + 3) - 3).toNat + A000007 (n + 1)

end

end A245158.P7447116102453545939

namespace A245158

/-- `A245163(A000124(n+3)-3)+A000007(n+1)` -/
def P7447116102453545939.Spec : Prop :=
  ∀ n, P7447116102453545939.a n = A245158 (n + 1)

end A245158

/-! ## A245158.P7243087469291257453

`A245163(A000124(n+3)-3)/A000034(2*(n+1))`
-/

namespace A245158.P7243087469291257453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245163 (A000124 (n + 3) - 3).toNat : ℚ) / (A000034 (2 * (n + 1)) : ℚ)

end

end A245158.P7243087469291257453

namespace A245158

/-- `A245163(A000124(n+3)-3)/A000034(2*(n+1))` -/
def P7243087469291257453.Spec : Prop :=
  ∀ n, P7243087469291257453.a n = (A245158 (n + 1) : ℚ)

end A245158

/-! ## A245158.P10809555660980609104

`A245163(A000124(n+3)-3)%A042858(n)`
-/

namespace A245158.P10809555660980609104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245163 (A000124 (n + 3) - 3).toNat) (A042858 n)

end

end A245158.P10809555660980609104

namespace A245158

/-- `A245163(A000124(n+3)-3)%A042858(n)` -/
def P10809555660980609104.Spec : Prop :=
  ∀ n, P10809555660980609104.a n = A245158 (n + 1)

end A245158

/-!
# A245159: Number of length n 0..4 arrays with new values introduced in order from both ends.

The programs for A245159, there is no canonical definition to state claims against.
-/

/-! ## A245159.P6661690709089217267

`A245163(∑[n+4]+3)`
-/

namespace A245159.P6661690709089217267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A245159.P6661690709089217267

/-! ## A245159.P7095657269276966488

`A245163(A055998(n+2))^A178334(n)`
-/

namespace A245159.P7095657269276966488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245163 (A055998 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A245159.P7095657269276966488

/-! ## A245159.P7203359408361117241

`or(A000007(n), A245163(A055998(n+2)))`
-/

namespace A245159.P7203359408361117241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245163 (A055998 (n + 2)).toNat)

end

end A245159.P7203359408361117241

/-! ## A245159.P2520562954989755180

`A245163(A055998(n+2))+A000007(n+1)`
-/

namespace A245159.P2520562954989755180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A245159.P2520562954989755180

/-! ## A245159.P4751962598188601911

`A245163(A055998(n+2))+A000035(2*n)`
-/

namespace A245159.P4751962598188601911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A055998 (n + 2)).toNat + A000035 (2 * n)

end

end A245159.P4751962598188601911

/-! ## A245159.P12901594505194997112

`A000034(2*n)*A245163(A027379(n+2))`
-/

namespace A245159.P12901594505194997112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A245163 (A027379 (n + 2)).toNat

end

end A245159.P12901594505194997112

/-! ## A245159.P2075701574566933711

`A059841(10*n)*A245163(A055998(n+2))`
-/

namespace A245159.P2075701574566933711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (10 * n) * A245163 (A055998 (n + 2)).toNat

end

end A245159.P2075701574566933711

/-! ## A245159.P1548589160354918573

`(Δ[A195128(n)]-1)!*A245163(A055998(n+2))`
-/

namespace A245159.P1548589160354918573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n - 1).toNat : ℤ) * A245163 (A055998 (n + 2)).toNat

end

end A245159.P1548589160354918573

/-! ## A245159.P5326481387325736405

`A000045(C(n, n²)!)*A245163(A055998(n+2))`
-/

namespace A245159.P5326481387325736405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (Nat.choose n (n ^ 2))) * A245163 (A055998 (n + 2)).toNat

end

end A245159.P5326481387325736405

/-! ## A245159.P1471085032047607162

`A245163(A055998(n+2))*A265331(A004771(n))`
-/

namespace A245159.P1471085032047607162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A055998 (n + 2)).toNat * A265331 (A004771 n).toNat

end

end A245159.P1471085032047607162

/-!
# A245160: Number of length n 0..5 arrays with new values introduced in order from both ends.

The programs for A245160, there is no canonical definition to state claims against.
-/

/-! ## A245160.P2218822042634051189

`A245163(A046691(n+3))`
-/

namespace A245160.P2218822042634051189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A046691 (n + 3)).toNat

end

end A245160.P2218822042634051189

/-! ## A245160.P7030207674401121281

`A245163(Δ[A023545(n+1)])`
-/

namespace A245160.P7030207674401121281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (f1 (n + 1) - f1 n).toNat

end

end A245160.P7030207674401121281

/-! ## A245160.P2231069539571748302

`A245163(A027379(n+3)-1)`
-/

namespace A245160.P2231069539571748302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A027379 (n + 3) - 1).toNat

end

end A245160.P2231069539571748302

/-! ## A245160.P10355085003876103475

`A245163(A000096(n+4)-3)`
-/

namespace A245160.P10355085003876103475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000096 (n + 4) - 3).toNat

end

end A245160.P10355085003876103475

/-! ## A245160.P997600707790013864

`A245163(A000217(n+5)-4)`
-/

namespace A245160.P997600707790013864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000217 (n + 5) - 4).toNat

end

end A245160.P997600707790013864

/-! ## A245160.P6611675939285284709

`A245163(A000124(n+5)-5)`
-/

namespace A245160.P6611675939285284709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000124 (n + 5) - 5).toNat

end

end A245160.P6611675939285284709

/-! ## A245160.P4330349683362360065

`A245163(A055998(n+2)+n+4)`
-/

namespace A245160.P4330349683362360065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A055998 (n + 2) + (n + 4 : ℤ)).toNat

end

end A245160.P4330349683362360065

/-! ## A245160.P15142843261664048038

`A245163(A167614(n+2)+2*(n+1))`
-/

namespace A245160.P15142843261664048038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A245160.P15142843261664048038

/-!
# A245161: Number of length n 0..6 arrays with new values introduced in order from both ends.

The programs for A245161, there is no canonical definition to state claims against.
-/

/-! ## A245161.P3188492856230849022

`A245163(A052905(n+3))`
-/

namespace A245161.P3188492856230849022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A052905 (n + 3)).toNat

end

end A245161.P3188492856230849022

/-! ## A245161.P13865387934964980490

`A245163(A000217(n+6)-5)`
-/

namespace A245161.P13865387934964980490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000217 (n + 6) - 5).toNat

end

end A245161.P13865387934964980490

/-! ## A245161.P7535260724241424646

`A245163(A000124(n+6)-6)`
-/

namespace A245161.P7535260724241424646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000124 (n + 6) - 6).toNat

end

end A245161.P7535260724241424646

/-! ## A245161.P3602069030725911702

`A245163(Δ[Δ[A006504(n+1)]])`
-/

namespace A245161.P3602069030725911702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (f1 (n + 1) - f1 n).toNat

end

end A245161.P3602069030725911702

/-! ## A245161.P13441432904616102630

`A245163(Δ[A023545(n+2)]-1)`
-/

namespace A245161.P13441432904616102630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (f1 (n + 1) - f1 n - 1).toNat

end

end A245161.P13441432904616102630

/-! ## A245161.P11507398916246255330

`A245163(Δ[A026054(n+3)]+1)`
-/

namespace A245161.P11507398916246255330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (f1 (n + 1) - f1 n + 1).toNat

end

end A245161.P11507398916246255330

/-! ## A245161.P16173019655836372950

`A245163(A153152(Δ[A026054(n+3)]))`
-/

namespace A245161.P16173019655836372950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A153152 (f1 (n + 1) - f1 n).toNat).toNat

end

end A245161.P16173019655836372950

/-! ## A245161.P14982885554407373016

`A245163(A167499(n+1)+A008574(n+2))`
-/

namespace A245161.P14982885554407373016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A167499 (n + 1) + A008574 (n + 2)).toNat

end

end A245161.P14982885554407373016

/-!
# A245162: Number of length n 0..7 arrays with new values introduced in order from both ends.

The programs for A245162, there is no canonical definition to state claims against.
-/

/-! ## A245162.P16443755109938143909

`A245163(A055999(n+4))`
-/

namespace A245162.P16443755109938143909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A055999 (n + 4)).toNat

end

end A245162.P16443755109938143909

/-! ## A245162.P347292784940564566

`A245163(Δ[A026054(n+4)])`
-/

namespace A245162.P347292784940564566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (f1 (n + 1) - f1 n).toNat

end

end A245162.P347292784940564566

/-! ## A245162.P16842195677769951500

`A245163(A052905(n+4)-1)`
-/

namespace A245162.P16842195677769951500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A052905 (n + 4) - 1).toNat

end

end A245162.P16842195677769951500

/-! ## A245162.P4828275615826943976

`A245163(A000217(n+7)-6)`
-/

namespace A245162.P4828275615826943976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000217 (n + 7) - 6).toNat

end

end A245162.P4828275615826943976

/-! ## A245162.P14493458469493747981

`A245163(A000124(n+7)-7)`
-/

namespace A245162.P14493458469493747981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A000124 (n + 7) - 7).toNat

end

end A245162.P14493458469493747981

/-! ## A245162.P15700599632245594861

`A245163(Δ[n²]+A052905(n+2)+11)`
-/

namespace A245162.P15700599632245594861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A052905 (n + 2) + 11)).toNat

end

end A245162.P15700599632245594861

/-!
# A245163: T(n,k)=Number of length n 0..k arrays with new values introduced in order from both ends.

The programs for A245163, there is no canonical definition to state claims against.
-/

/-! ## A245163.P731211688979923206

`A048766(Δ[A055237(n)])-A002262(n)`
-/

namespace A245163.P731211688979923206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat - A002262 n

end

end A245163.P731211688979923206

/-! ## A245163.P4339354678730065223

`A232089(n)+A010051(A120138(n+1))`
-/

namespace A245163.P4339354678730065223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n + A010051 (A120138 (n + 1)).toNat

end

end A245163.P4339354678730065223

/-! ## A245163.P2214284966988119427

`A290726(A152036(n))`
-/

namespace A245163.P2214284966988119427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A152036 n).toNat

end

end A245163.P2214284966988119427

/-! ## A245163.P15225457893920608519

`row(row(A373197(A122881(n+1))))`
-/

namespace A245163.P15225457893920608519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A373197 (A122881 (n + 1)).toNat).toNat)

end

end A245163.P15225457893920608519

/-! ## A245163.P14041716358983386093

`or(A232089(n), A354926(A301841(2*n+1)))`
-/

namespace A245163.P14041716358983386093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A232089 n) (A354926 (A301841 (2 * n + 1)).toNat)

end

end A245163.P14041716358983386093

/-!
# A245164: E.g.f.: (cosh(2*x) + sinh(2*x)*cosh(3*x)) / sqrt(1 - sinh(2*x)^2*sinh(3*x)^2).

The programs for A245164, there is no canonical definition to state claims against.
-/

/-! ## A245164.P2003692386922212637

`A193903(A102866(n))`
-/

namespace A245164.P2003692386922212637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 (A102866 n).toNat

end

end A245164.P2003692386922212637

/-!
# A245165: E.g.f.: (cosh(3*x) + sinh(3*x)*cosh(2*x)) / sqrt(1 - sinh(2*x)^2*sinh(3*x)^2).

The programs for A245165, there is no canonical definition to state claims against.
-/

/-! ## A245165.P10555763027548366179

`record[A082495(4^n+2)]`
-/

namespace A245165.P10555763027548366179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (4 ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245165.P10555763027548366179

/-!
# A245166: E.g.f.: (cosh(3*x) + sinh(3*x)*cosh(2*x)) / (cosh(2*x) - sinh(2*x)*cosh(3*x)).

The programs for A245166, there is no canonical definition to state claims against.
-/

/-! ## A245166.P14208670715587614547

`A342001(C(5*n, n)+1)`
-/

namespace A245166.P14208670715587614547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Nat.choose (5 * n) n + 1)

end

end A245166.P14208670715587614547

/-!
# A245167: Triangle read by rows: coefficients of the polynomials A_{1,4}(n,k).

The programs for A245167, there is no canonical definition to state claims against.
-/

/-! ## A245167.P636437507123376805

`A100679(A245170(n)^A239264(n))`
-/

namespace A245167.P636437507123376805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (SequenceMachineLib.roundAway ((A245170 n : ℚ) ^ (A239264 n : ℤ))).toNat

end

end A245167.P636437507123376805

/-! ## A245167.P470065536629561570

`A349991(A086810(n)*A344006(n+1))`
-/

namespace A245167.P470065536629561570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349991 (A086810 n * A344006 (n + 1)).toNat

end

end A245167.P470065536629561570

/-! ## A245167.P14605294568696419073

`A369995(A197457(n+5))-A010054(n)`
-/

namespace A245167.P14605294568696419073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369995 (A197457 (n + 5)).toNat - A010054 n

end

end A245167.P14605294568696419073

/-! ## A245167.P5914596251005312889

`A349991(lcm(A327244(n), A344006(n+1)))`
-/

namespace A245167.P5914596251005312889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349991 (Int.lcm (A327244 n) (A344006 (n + 1)))

end

end A245167.P5914596251005312889

/-!
# A245168: Triangle read by rows: coefficients of the polynomials A_{1,5}(n,k).

The programs for A245168, there is no canonical definition to state claims against.
-/

/-! ## A245168.P7519132606683245246

`col(A006226(row(A253180(n))))`
-/

namespace A245168.P7519132606683245246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A006226 (SequenceMachineLib.triRow (A253180 n).toNat)).toNat

end

end A245168.P7519132606683245246

/-! ## A245168.P13556476784900674464

`A168173(A088972(n+1)+1)`
-/

namespace A245168.P13556476784900674464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168173 (A088972 (n + 1) + 1).toNat

end

end A245168.P13556476784900674464

/-! ## A245168.P13236640060626890858

`A074206(A048993(n)*A104545(n))`
-/

namespace A245168.P13236640060626890858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A048993 n * A104545 n).toNat

end

end A245168.P13236640060626890858

/-! ## A245168.P320065837201621624

`A085771(n)*A189231(A256311(n))`
-/

namespace A245168.P320065837201621624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 n * A189231 (A256311 n).toNat

end

end A245168.P320065837201621624

/-! ## A245168.P3216589856829449817

`A189231(A256311(n))*A253286(n)`
-/

namespace A245168.P3216589856829449817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189231 (A256311 n).toNat * A253286 n

end

end A245168.P3216589856829449817

/-!
# A245170: Triangle read by rows: coefficients of the polynomials A_{1,7}(n,k).

The programs for A245170, there is no canonical definition to state claims against.
-/

/-! ## A245170.P17797424049850786973

`A253830(lcm(n, A059015(n)))`
-/

namespace A245170.P17797424049850786973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253830 (Int.lcm (n : ℤ) (A059015 n))

end

end A245170.P17797424049850786973

/-! ## A245170.P892622395041845180

`∑{digits}[A113949(A024918(n+1)), #]`
-/

namespace A245170.P892622395041845180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (A024918 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245170.P892622395041845180

/-! ## A245170.P9758140593176088472

`and(A082495(6*n+7), A088925(7*n))`
-/

namespace A245170.P9758140593176088472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082495 (6 * n + 7)) (A088925 (7 * n))

end

end A245170.P9758140593176088472

/-! ## A245170.P16848085265384240432

`A340860(A003432(n))+A084938(n)`
-/

namespace A245170.P16848085265384240432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340860 (A003432 n).toNat + A084938 n

end

end A245170.P16848085265384240432

/-! ## A245170.P3386774882836391109

`A340860(A003432(n))+A107267(n)`
-/

namespace A245170.P3386774882836391109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340860 (A003432 n).toNat + A107267 n

end

end A245170.P3386774882836391109

/-!
# A245174: Second differences of A006450.

The programs for A245174, the canonical program `A245174.P12482961414910472085` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245174 has offset 1).

The definition of A245174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245174.P12482961414910472085

`Δ[Δ[A006450(n+1)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245174

/-- `Δ[Δ[A006450(n+1)]]` -/
def P12482961414910472085.Spec : Prop :=
  ∀ n, P12482961414910472085.a n = A245174 (n + 1)

theorem P12482961414910472085.correct : P12482961414910472085.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel]

end A245174

/-! ## A245174.P16637551128771236194

`Δ[A073131(n+1)]`
-/

namespace A245174.P16637551128771236194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P16637551128771236194

namespace A245174

/-- `Δ[A073131(n+1)]` -/
def P16637551128771236194.Spec : Prop :=
  ∀ n, P16637551128771236194.a n = A245174 (n + 1)

theorem P16637551128771236194.correct : P16637551128771236194.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P16637551128771236194.f1, A245174.P16637551128771236194.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A073131, A073131.P11239621649849725694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P6530065727633497256

`A073131(n+2)-A073131(n+1)`
-/

namespace A245174.P6530065727633497256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 2) - A073131 (n + 1)

end

end A245174.P6530065727633497256

namespace A245174

/-- `A073131(n+2)-A073131(n+1)` -/
def P6530065727633497256.Spec : Prop :=
  ∀ n, P6530065727633497256.a n = A245174 (n + 1)

theorem P6530065727633497256.correct : P6530065727633497256.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P6530065727633497256.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A073131, A073131.P11239621649849725694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P5732360945980424126

`Δ[Δ[A141138(n+1)]]`
-/

namespace A245174.P5732360945980424126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P5732360945980424126

namespace A245174

/-- `Δ[Δ[A141138(n+1)]]` -/
def P5732360945980424126.Spec : Prop :=
  ∀ n, P5732360945980424126.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P5232870188287727662

`Δ[Δ[A262021(n+1)]]`
-/

namespace A245174.P5232870188287727662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P5232870188287727662

namespace A245174

/-- `Δ[Δ[A262021(n+1)]]` -/
def P5232870188287727662.Spec : Prop :=
  ∀ n, P5232870188287727662.a n = A245174 (n + 1)

theorem P5232870188287727662.correct : P5232870188287727662.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P5232870188287727662.f2, A245174.P5232870188287727662.f1, A245174.P5232870188287727662.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A262021, A262021.P13700072325175955136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P15725815761384314188

`Δ[Δ[sqrt(A092769(n+1))]]`
-/

namespace A245174.P15725815761384314188
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P15725815761384314188

namespace A245174

/-- `Δ[Δ[sqrt(A092769(n+1))]]` -/
def P15725815761384314188.Spec : Prop :=
  ∀ n, P15725815761384314188.a n = (A245174 (n + 1) : ℝ)

end A245174

/-! ## A245174.P16198234740434807486

`Δ[Δ[A175247(n+2)]]`
-/

namespace A245174.P16198234740434807486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P16198234740434807486

namespace A245174

/-- `Δ[Δ[A175247(n+2)]]` -/
def P16198234740434807486.Spec : Prop :=
  ∀ n, P16198234740434807486.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P10671598529758734023

`Δ[Δ[A000040(A000040(n+1))]]`
-/

namespace A245174.P10671598529758734023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P10671598529758734023

namespace A245174

/-- `Δ[Δ[A000040(A000040(n+1))]]` -/
def P10671598529758734023.Spec : Prop :=
  ∀ n, P10671598529758734023.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P1112410226486386045

`Δ[Δ[A008578(A008864(n+1))]]`
-/

namespace A245174.P1112410226486386045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008864 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P1112410226486386045

namespace A245174

/-- `Δ[Δ[A008578(A008864(n+1))]]` -/
def P1112410226486386045.Spec : Prop :=
  ∀ n, P1112410226486386045.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P10855539235935557090

`Δ[Δ[A065091(A006093(n+1))]]`
-/

namespace A245174.P10855539235935557090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A006093 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P10855539235935557090

namespace A245174

/-- `Δ[Δ[A065091(A006093(n+1))]]` -/
def P10855539235935557090.Spec : Prop :=
  ∀ n, P10855539235935557090.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P12342837430759067326

`Δ[Δ[A040976(A182986(n+2))]]`
-/

namespace A245174.P12342837430759067326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A182986 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P12342837430759067326

namespace A245174

/-- `Δ[Δ[A040976(A182986(n+2))]]` -/
def P12342837430759067326.Spec : Prop :=
  ∀ n, P12342837430759067326.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P9431868868620376682

`Δ[Δ[A299763(A299763(n+2))]]`
-/

namespace A245174.P9431868868620376682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A299763 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P9431868868620376682

namespace A245174

/-- `Δ[Δ[A299763(A299763(n+2))]]` -/
def P9431868868620376682.Spec : Prop :=
  ∀ n, P9431868868620376682.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P5040826540180172591

`Δ[Δ[A006093(A006093(n+1)+1)]]`
-/

namespace A245174.P5040826540180172591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P5040826540180172591

namespace A245174

/-- `Δ[Δ[A006093(A006093(n+1)+1)]]` -/
def P5040826540180172591.Spec : Prop :=
  ∀ n, P5040826540180172591.a n = A245174 (n + 1)

theorem P5040826540180172591.correct : P5040826540180172591.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P5040826540180172591.f2, A245174.P5040826540180172591.f1, A245174.P5040826540180172591.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006093, A006093.P2906174024863549003.a, A006450, A006450.P16445646407241112379.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P842508470607479260

`Δ[Δ[A065091(A040976(n+1)+1)]]`
-/

namespace A245174.P842508470607479260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A040976 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P842508470607479260

namespace A245174

/-- `Δ[Δ[A065091(A040976(n+1)+1)]]` -/
def P842508470607479260.Spec : Prop :=
  ∀ n, P842508470607479260.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P5897929854085395164

`Δ[Δ[A008864(A008864(n+1)-1)]]`
-/

namespace A245174.P5897929854085395164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A008864 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P5897929854085395164

namespace A245174

/-- `Δ[Δ[A008864(A008864(n+1)-1)]]` -/
def P5897929854085395164.Spec : Prop :=
  ∀ n, P5897929854085395164.a n = A245174 (n + 1)

theorem P5897929854085395164.correct : P5897929854085395164.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P5897929854085395164.f2, A245174.P5897929854085395164.f1, A245174.P5897929854085395164.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P14098902022952447568

`Δ[Δ[A040976(A040976(n+1)+2)]]`
-/

namespace A245174.P14098902022952447568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A040976 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P14098902022952447568

namespace A245174

/-- `Δ[Δ[A040976(A040976(n+1)+2)]]` -/
def P14098902022952447568.Spec : Prop :=
  ∀ n, P14098902022952447568.a n = A245174 (n + 1)

theorem P14098902022952447568.correct : P14098902022952447568.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P14098902022952447568.f2, A245174.P14098902022952447568.f1, A245174.P14098902022952447568.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P8751176888075507693

`Δ[Δ[A052147(A052147(n+1)-2)]]`
-/

namespace A245174.P8751176888075507693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A052147 (n + 1) - 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P8751176888075507693

namespace A245174

/-- `Δ[Δ[A052147(A052147(n+1)-2)]]` -/
def P8751176888075507693.Spec : Prop :=
  ∀ n, P8751176888075507693.a n = A245174 (n + 1)

theorem P8751176888075507693.correct : P8751176888075507693.Spec := by
  intro n
  simp only [A245174, Nat.add_sub_cancel, A245174.P8751176888075507693.f2, A245174.P8751176888075507693.f1, A245174.P8751176888075507693.a, A245174.P12482961414910472085.f2, A245174.P12482961414910472085.f1, A245174.P12482961414910472085.a, A006450, A006450.P16445646407241112379.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245174

/-! ## A245174.P14627408991396389707

`Δ[Δ[A065091(A014689(n+1)+n)]]`
-/

namespace A245174.P14627408991396389707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A014689 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P14627408991396389707

namespace A245174

/-- `Δ[Δ[A065091(A014689(n+1)+n)]]` -/
def P14627408991396389707.Spec : Prop :=
  ∀ n, P14627408991396389707.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P8529761908798395148

`Δ[Δ[record[A000040(A006530(2*or(1, n)))]]]`
-/

namespace A245174.P8529761908798395148
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (2 * Nat.lor 1 n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P8529761908798395148

namespace A245174

/-- `Δ[Δ[record[A000040(A006530(2*or(1, n)))]]]` -/
def P8529761908798395148.Spec : Prop :=
  ∀ n, P8529761908798395148.a n = A245174 (n + 1)

end A245174

/-! ## A245174.P4068331307663052893

`Δ[runs[A132090(n+3)]]`
-/

namespace A245174.P4068331307663052893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A245174.P4068331307663052893

namespace A245174

/-- `Δ[runs[A132090(n+3)]]` -/
def P4068331307663052893.Spec : Prop :=
  ∀ n, P4068331307663052893.a n = A245174 (n + 1)

end A245174

/-!
# A245175: Second differences of A038580.

The programs for A245175, the canonical program `A245175.P15986975037316514887` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245175 has offset 1).

The definition of A245175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245175.P15986975037316514887

`Δ[Δ[A038580(n+1)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245175

/-- `Δ[Δ[A038580(n+1)]]` -/
def P15986975037316514887.Spec : Prop :=
  ∀ n, P15986975037316514887.a n = A245175 (n + 1)

theorem P15986975037316514887.correct : P15986975037316514887.Spec := by
  intro n
  simp only [A245175, Nat.add_sub_cancel]

end A245175

/-! ## A245175.P1223527058565343619

`Δ[Δ[A006450(A000040(n+1))]]`
-/

namespace A245175.P1223527058565343619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P1223527058565343619

namespace A245175

/-- `Δ[Δ[A006450(A000040(n+1))]]` -/
def P1223527058565343619.Spec : Prop :=
  ∀ n, P1223527058565343619.a n = A245175 (n + 1)

end A245175

/-! ## A245175.P2371859321819441093

`Δ[Δ[A006450(A158611(n+3))]]`
-/

namespace A245175.P2371859321819441093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A158611 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P2371859321819441093

namespace A245175

/-- `Δ[Δ[A006450(A158611(n+3))]]` -/
def P2371859321819441093.Spec : Prop :=
  ∀ n, P2371859321819441093.a n = A245175 (n + 1)

end A245175

/-! ## A245175.P6573518211070780341

`Δ[Δ[A006450(A006093(n+1)+1)]]`
-/

namespace A245175.P6573518211070780341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006093 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P6573518211070780341

namespace A245175

/-- `Δ[Δ[A006450(A006093(n+1)+1)]]` -/
def P6573518211070780341.Spec : Prop :=
  ∀ n, P6573518211070780341.a n = A245175 (n + 1)

theorem P6573518211070780341.correct : P6573518211070780341.Spec := by
  intro n
  simp only [A245175, Nat.add_sub_cancel, A245175.P6573518211070780341.f2, A245175.P6573518211070780341.f1, A245175.P6573518211070780341.a, A245175.P15986975037316514887.f2, A245175.P15986975037316514887.f1, A245175.P15986975037316514887.a, A006093, A006093.P2906174024863549003.a, A006450, A006450.P16445646407241112379.a, A038580, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245175

/-! ## A245175.P17794804253066020316

`Δ[Δ[A006450(A052147(n+1)-2)]]`
-/

namespace A245175.P17794804253066020316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A052147 (n + 1) - 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P17794804253066020316

namespace A245175

/-- `Δ[Δ[A006450(A052147(n+1)-2)]]` -/
def P17794804253066020316.Spec : Prop :=
  ∀ n, P17794804253066020316.a n = A245175 (n + 1)

theorem P17794804253066020316.correct : P17794804253066020316.Spec := by
  intro n
  simp only [A245175, Nat.add_sub_cancel, A245175.P17794804253066020316.f2, A245175.P17794804253066020316.f1, A245175.P17794804253066020316.a, A245175.P15986975037316514887.f2, A245175.P15986975037316514887.f1, A245175.P15986975037316514887.a, A006450, A006450.P16445646407241112379.a, A038580, A038580.P18310898613718582429.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245175

/-! ## A245175.P6401000499134654544

`Δ[Δ[A006450(A100484(n+1)/2)]]`
-/

namespace A245175.P6401000499134654544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P6401000499134654544

namespace A245175

/-- `Δ[Δ[A006450(A100484(n+1)/2)]]` -/
def P6401000499134654544.Spec : Prop :=
  ∀ n, P6401000499134654544.a n = A245175 (n + 1)

end A245175

/-! ## A245175.P7840595931187579601

`Δ[Δ[A000040(A080697(n+1)/(n+1))]]`
-/

namespace A245175.P7840595931187579601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A080697 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P7840595931187579601

namespace A245175

/-- `Δ[Δ[A000040(A080697(n+1)/(n+1))]]` -/
def P7840595931187579601.Spec : Prop :=
  ∀ n, P7840595931187579601.a n = A245175 (n + 1)

end A245175

/-!
# A245176: a(n) = 2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3) with initial terms (1,2,4).

The programs for A245176, the canonical program `A245176.P16778592868948272346` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245176 has offset 0).

The definition of A245176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3)` (program `A245176.P16778592868948272346`, by `A245176.P16778592868948272346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245176.P16778592868948272346

`2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245176

/-- `2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3)` -/
def P16778592868948272346.Spec : Prop :=
  ∀ n, P16778592868948272346.a n = A245176 n

theorem P16778592868948272346.correct : P16778592868948272346.Spec := by
  intro n
  simp only [A245176]

end A245176

/-! ## A245176.P17194252545095692975

`∑[∏[(n-1)/a(n-1)+1]]` with `a(0)=1`
-/

namespace A245176.P17194252545095692975
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / f2 (n - 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P17194252545095692975

namespace A245176

/-- `∑[∏[(n-1)/a(n-1)+1]]` -/
def P17194252545095692975.Spec : Prop :=
  ∀ n, P17194252545095692975.a n = (A245176 n : ℚ)

end A245176

/-! ## A245176.P4160231237516755580

`∑[(n-1)*a(n-2)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A245176.P4160231237516755580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P4160231237516755580

namespace A245176

/-- `∑[(n-1)*a(n-2)+a(n-1)]` -/
def P4160231237516755580.Spec : Prop :=
  ∀ n, P4160231237516755580.a n = A245176 n

end A245176

/-! ## A245176.P1664896073036918518

`∑[a(n-1)-(1-n)*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A245176.P1664896073036918518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P1664896073036918518

namespace A245176

/-- `∑[a(n-1)-(1-n)*a(n-2)]` -/
def P1664896073036918518.Spec : Prop :=
  ∀ n, P1664896073036918518.a n = A245176 n

end A245176

/-! ## A245176.P18029214008318679544

`∏[(n-1)/a(n-1)+1]+a(n-1)` with `a(0)=1`
-/

namespace A245176.P18029214008318679544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A245176.P18029214008318679544

namespace A245176

/-- `∏[(n-1)/a(n-1)+1]+a(n-1)` -/
def P18029214008318679544.Spec : Prop :=
  ∀ n, P18029214008318679544.a n = (A245176 n : ℚ)

end A245176

/-! ## A245176.P2950622453561461280

`∑[A000085(n)]`
-/

namespace A245176.P2950622453561461280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P2950622453561461280

namespace A245176

/-- `∑[A000085(n)]` -/
def P2950622453561461280.Spec : Prop :=
  ∀ n, P2950622453561461280.a n = A245176 n

end A245176

/-! ## A245176.P8868901974812348318

`∑[A070895(∑[n])]`
-/

namespace A245176.P8868901974812348318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P8868901974812348318

namespace A245176

/-- `∑[A070895(∑[n])]` -/
def P8868901974812348318.Spec : Prop :=
  ∀ n, P8868901974812348318.a n = A245176 n

end A245176

/-! ## A245176.P15896715619570609361

`∑[A099020(∑[n])]`
-/

namespace A245176.P15896715619570609361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P15896715619570609361

namespace A245176

/-- `∑[A099020(∑[n])]` -/
def P15896715619570609361.Spec : Prop :=
  ∀ n, P15896715619570609361.a n = A245176 n

end A245176

/-! ## A245176.P9001148058986090206

`A294129(n+1)+1`
-/

namespace A245176.P9001148058986090206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294129 (n + 1) + 1

end

end A245176.P9001148058986090206

namespace A245176

/-- `A294129(n+1)+1` -/
def P9001148058986090206.Spec : Prop :=
  ∀ n, P9001148058986090206.a n = A245176 n

end A245176

/-! ## A245176.P11823649376275928152

`∑[A293808(∑[n]+1)]+1`
-/

namespace A245176.P11823649376275928152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245176.P11823649376275928152

namespace A245176

/-- `∑[A293808(∑[n]+1)]+1` -/
def P11823649376275928152.Spec : Prop :=
  ∀ n, P11823649376275928152.a n = A245176 n

end A245176

/-! ## A245176.P4270788990743033220

`∑[record[A293815(n+1)]]+1`
-/

namespace A245176.P4270788990743033220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245176.P4270788990743033220

namespace A245176

/-- `∑[record[A293815(n+1)]]+1` -/
def P4270788990743033220.Spec : Prop :=
  ∀ n, P4270788990743033220.a n = A245176 n

end A245176

/-! ## A245176.P2587852794507630038

`∑{#}[n, C(n, #)*A133221(#)]`
-/

namespace A245176.P2587852794507630038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A133221 k

end

end A245176.P2587852794507630038

namespace A245176

/-- `∑{#}[n, C(n, #)*A133221(#)]` -/
def P2587852794507630038.Spec : Prop :=
  ∀ n, P2587852794507630038.a n = A245176 n

end A245176

/-! ## A245176.P7734317806347914349

`a(n-1)+A001189(n)+1` with `a(0)=1`
-/

namespace A245176.P7734317806347914349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001189 n + 1)

end

end A245176.P7734317806347914349

namespace A245176

/-- `a(n-1)+A001189(n)+1` -/
def P7734317806347914349.Spec : Prop :=
  ∀ n, P7734317806347914349.a n = A245176 n

end A245176

/-! ## A245176.P11394441460836095699

`∑[A293808(∑[A254667(n)])]`
-/

namespace A245176.P11394441460836095699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P11394441460836095699

namespace A245176

/-- `∑[A293808(∑[A254667(n)])]` -/
def P11394441460836095699.Spec : Prop :=
  ∀ n, P11394441460836095699.a n = A245176 n

end A245176

/-! ## A245176.P5755866999730358974

`∑[(A297708(n)+A135401(n))/2]`
-/

namespace A245176.P5755866999730358974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297708 n + A135401 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P5755866999730358974

namespace A245176

/-- `∑[(A297708(n)+A135401(n))/2]` -/
def P5755866999730358974.Spec : Prop :=
  ∀ n, P5755866999730358974.a n = (A245176 n : ℚ)

end A245176

/-! ## A245176.P10616205209015728240

`∑[A013989(n)/(n+1)]`
-/

namespace A245176.P10616205209015728240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P10616205209015728240

namespace A245176

/-- `∑[A013989(n)/(n+1)]` -/
def P10616205209015728240.Spec : Prop :=
  ∀ n, P10616205209015728240.a n = (A245176 n : ℚ)

end A245176

/-! ## A245176.P13762403204212263304

`A013989(n)-A067897(n+2)`
-/

namespace A245176.P13762403204212263304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013989 n - A067897 (n + 2)

end

end A245176.P13762403204212263304

namespace A245176

/-- `A013989(n)-A067897(n+2)` -/
def P13762403204212263304.Spec : Prop :=
  ∀ n, P13762403204212263304.a n = A245176 n

end A245176

/-! ## A245176.P2097957519611199281

`A000085(n+1)-A067897(n+1)`
-/

namespace A245176.P2097957519611199281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - A067897 (n + 1)

end

end A245176.P2097957519611199281

namespace A245176

/-- `A000085(n+1)-A067897(n+1)` -/
def P2097957519611199281.Spec : Prop :=
  ∀ n, P2097957519611199281.a n = A245176 n

end A245176

/-! ## A245176.P8292783683297051881

`∑[A086363(∑[n])]`
-/

namespace A245176.P8292783683297051881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086363 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245176.P8292783683297051881

namespace A245176

/-- `∑[A086363(∑[n])]` -/
def P8292783683297051881.Spec : Prop :=
  ∀ n, P8292783683297051881.a n = A245176 n

end A245176

/-!
# A245177: Inefficient primes.

The programs for A245177, there is no canonical definition to state claims against.
-/

/-! ## A245177.P3405186893238043049

`A264737(n+2)`
-/

namespace A245177.P3405186893238043049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264737 (n + 2)

end

end A245177.P3405186893238043049

/-! ## A245177.P2423900379788933033

`record[A264737(A080513(A236348(n)))]`
-/

namespace A245177.P2423900379788933033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264737 (A080513 (A236348 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245177.P2423900379788933033

/-! ## A245177.P11819448564842665260

`record[A264737(A080513(A305296(n)))]`
-/

namespace A245177.P11819448564842665260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264737 (A080513 (A305296 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245177.P11819448564842665260

/-! ## A245177.P17836967152902899061

`eq[A130758(n+1), A272171(n+1)]`
-/

namespace A245177.P17836967152902899061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245177.P17836967152902899061

/-! ## A245177.P12081330716273877359

`∩[A038615(n+1), A088331(n+1)]`
-/

namespace A245177.P12081330716273877359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245177.P12081330716273877359

/-!
# A245178: Numbers of the form (2^k+3)*2^m or (3*2^k+1)*2^m, k >= 2, m >= 0.

The programs for A245178, there is no canonical definition to state claims against.
-/

/-! ## A245178.P9184864129657632300

`eq[3, A136277(n)]`
-/

namespace A245178.P9184864129657632300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P9184864129657632300

/-! ## A245178.P6186051677214977252

`eq[1, A054899(A071053(n))]`
-/

namespace A245178.P6186051677214977252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A071053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P6186051677214977252

/-! ## A245178.P10149027421131730056

`eq[1, A211540(A245564(n))]`
-/

namespace A245178.P10149027421131730056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A245564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P10149027421131730056

/-! ## A245178.P14982518111753197807

`eq[2, A068106(A246029(n))]`
-/

namespace A245178.P14982518111753197807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P14982518111753197807

/-! ## A245178.P13572611279538278233

`eq[2, A340275(A286589(n))]`
-/

namespace A245178.P13572611279538278233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (A286589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P13572611279538278233

/-! ## A245178.P2875025615166943707

`eq[3, A000720(A286622(n))]`
-/

namespace A245178.P2875025615166943707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A286622 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P2875025615166943707

/-! ## A245178.P16374809149038033530

`eq[4, A000010(A278222(n))]`
-/

namespace A245178.P16374809149038033530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P16374809149038033530

/-! ## A245178.P10878400994722682543

`eq[4, A000010(A286588(n))]`
-/

namespace A245178.P10878400994722682543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A286588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P10878400994722682543

/-! ## A245178.P11340141576223184556

`eq[7, A331856(A331857(n))]`
-/

namespace A245178.P11340141576223184556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A331857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P11340141576223184556

/-! ## A245178.P10207634805931926852

`eq[16, A000010(A253064(n))]`
-/

namespace A245178.P10207634805931926852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A253064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245178.P10207634805931926852

/-!
# A245179: Numbers of the form 2^k+3 or 3*2^k+1, k >= 2.

The programs for A245179, the canonical program `A245179.P17879844431186762290` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245179 has offset 1).

The definition of A245179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245179.P9497471421577607818

`ogf((7+11x-8x^2-14x^3)/(1-3x^2+2x^4))`
-/

namespace A245179.P9497471421577607818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 11, -8, -14] [1, 0, -3, 0, 2] n

end

end A245179.P9497471421577607818

namespace A245179

/-- `ogf((7+11x-8x^2-14x^3)/(1-3x^2+2x^4))` -/
def P9497471421577607818.Spec : Prop :=
  ∀ n, P9497471421577607818.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P17879844431186762290

`3*a(n-2)-2*a(n-4)` with `a(0)=7, a(1)=11, a(2)=13, a(3)=19`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245179

/-- `3*a(n-2)-2*a(n-4)` -/
def P17879844431186762290.Spec : Prop :=
  ∀ n, P17879844431186762290.a n = A245179 (n + 1)

theorem P17879844431186762290.correct : P17879844431186762290.Spec := by
  intro n
  simp only [A245179, Nat.add_sub_cancel]

end A245179

/-! ## A245179.P15661335321426797641

`A209722(n+4)-A033999(n)`
-/

namespace A245179.P15661335321426797641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 4) - A033999 n

end

end A245179.P15661335321426797641

namespace A245179

/-- `A209722(n+4)-A033999(n)` -/
def P15661335321426797641.Spec : Prop :=
  ∀ n, P15661335321426797641.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P4551221938832565246

`∑[A016116(n+1)]+A086341(n)+5`
-/

namespace A245179.P4551221938832565246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A086341 n + 5)

end

end A245179.P4551221938832565246

namespace A245179

/-- `∑[A016116(n+1)]+A086341(n)+5` -/
def P4551221938832565246.Spec : Prop :=
  ∀ n, P4551221938832565246.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P13891425296961838928

`A090989(n+2)+A056220(n+1)%4`
-/

namespace A245179.P13891425296961838928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 2) + Int.tmod (A056220 (n + 1)) 4

end

end A245179.P13891425296961838928

namespace A245179

/-- `A090989(n+2)+A056220(n+1)%4` -/
def P13891425296961838928.Spec : Prop :=
  ∀ n, P13891425296961838928.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P17731863984391252913

`A135561(A135561(n+2))+A090989(n+2)`
-/

namespace A245179.P17731863984391252913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A135561 (n + 2)).toNat + A090989 (n + 2)

end

end A245179.P17731863984391252913

namespace A245179

/-- `A135561(A135561(n+2))+A090989(n+2)` -/
def P17731863984391252913.Spec : Prop :=
  ∀ n, P17731863984391252913.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P13140116036280752826

`A042963(n+2)+A090989(n+2)-A042963(n+1)`
-/

namespace A245179.P13140116036280752826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 2) + (A090989 (n + 2) - A042963 (n + 1))

end

end A245179.P13140116036280752826

namespace A245179

/-- `A042963(n+2)+A090989(n+2)-A042963(n+1)` -/
def P13140116036280752826.Spec : Prop :=
  ∀ n, P13140116036280752826.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P10596537312274285297

`record[A130330(n+1)+A130330(n)+3]`
-/

namespace A245179.P10596537312274285297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (n + 1) + (A130330 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245179.P10596537312274285297

namespace A245179

/-- `record[A130330(n+1)+A130330(n)+3]` -/
def P10596537312274285297.Spec : Prop :=
  ∀ n, P10596537312274285297.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P17363919565424906074

`A084468(A134519(n+1))`
-/

namespace A245179.P17363919565424906074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (A134519 (n + 1)).toNat

end

end A245179.P17363919565424906074

namespace A245179

/-- `A084468(A134519(n+1))` -/
def P17363919565424906074.Spec : Prop :=
  ∀ n, P17363919565424906074.a n = A245179 (n + 1)

end A245179

/-! ## A245179.P16177806475322809102

`record[A084468(n+1)/A007318(n)]`
-/

namespace A245179.P16177806475322809102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084468 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245179.P16177806475322809102

namespace A245179

/-- `record[A084468(n+1)/A007318(n)]` -/
def P16177806475322809102.Spec : Prop :=
  ∀ n, P16177806475322809102.a n = (A245179 (n + 1) : ℚ)

end A245179

/-! ## A245179.P8318961413692700477

`A135561(n²+5)+A090989(n+2)`
-/

namespace A245179.P8318961413692700477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n ^ 2 + 5) + A090989 (n + 2)

end

end A245179.P8318961413692700477

namespace A245179

/-- `A135561(n²+5)+A090989(n+2)` -/
def P8318961413692700477.Spec : Prop :=
  ∀ n, P8318961413692700477.a n = A245179 (n + 1)

end A245179

/-!
# A245180: A160239(n)/8.

The programs for A245180, there is no canonical definition to state claims against.
-/

/-! ## A245180.P11373459508361913076

`A160239(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245180.P11373459508361913076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160239 (n + 1) : ℚ) / 8

end

end A245180.P11373459508361913076

/-! ## A245180.P8372469749466965020

`Δ[A245542(n)/8]`
-/

namespace A245180.P8372469749466965020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245542 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245180.P8372469749466965020

/-! ## A245180.P11991039158956292221

`∑[round(A245543(n)/8)]`
-/

namespace A245180.P11991039158956292221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245543 n : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245180.P11991039158956292221

/-! ## A245180.P7096950760919330651

`(A245540(n+1)*A245542(n))%A245542(n+1)`
-/

namespace A245180.P7096950760919330651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245540 (n + 1) * A245542 n) (A245542 (n + 1))

end

end A245180.P7096950760919330651

/-! ## A245180.P3477082499036183164

`A245540(2*(n+1))-A245540(2*n+1)`
-/

namespace A245180.P3477082499036183164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245540 (2 * (n + 1)) - A245540 (2 * n + 1)

end

end A245180.P3477082499036183164

/-! ## A245180.P3635676007986924797

`A006085(A160239(n+1))`
-/

namespace A245180.P3635676007986924797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A160239 (n + 1)).toNat

end

end A245180.P3635676007986924797

/-! ## A245180.P973382230772362239

`A080100(A161820(n+1))²*A245538(A161820(n+1))`
-/

namespace A245180.P973382230772362239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat ^ 2 * A245538 (A161820 (n + 1)).toNat

end

end A245180.P973382230772362239

/-! ## A245180.P3702126420947526565

`A080100(A161820(n+1))²*A245538(n+1)`
-/

namespace A245180.P3702126420947526565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat ^ 2 * A245538 (n + 1)

end

end A245180.P3702126420947526565

/-! ## A245180.P9722426229916068958

`(A245538(n+1)/A245537(n+1))²*A245538(n+1)`
-/

namespace A245180.P9722426229916068958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A245538 (n + 1) : ℚ) / (A245537 (n + 1) : ℚ)) ^ 2 * (A245538 (n + 1) : ℚ)

end

end A245180.P9722426229916068958

/-! ## A245180.P6478636738222559296

`(A245547(n+1)/A245541(n+1))²*A245538(n+1)`
-/

namespace A245180.P6478636738222559296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A245547 (n + 1) : ℚ) / (A245541 (n + 1) : ℚ)) ^ 2 * (A245538 (n + 1) : ℚ)

end

end A245180.P6478636738222559296

/-!
# A245181: Numbers appearing in A245180.

The programs for A245181, there is no canonical definition to state claims against.
-/

/-! ## A245181.P18070768735670297261

`record[A245180(n+1)%A184422(n+2)]`
-/

namespace A245181.P18070768735670297261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245180 (n + 1)) (A184422 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245181.P18070768735670297261

/-! ## A245181.P1615644833002570817

`record[A245180(∑[A124778(n)])]`
-/

namespace A245181.P1615644833002570817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245181.P1615644833002570817

/-! ## A245181.P17120504697958592506

`record[A245180(n+2)%A246706(2*n+1)]`
-/

namespace A245181.P17120504697958592506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245180 (n + 2)) (A246706 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245181.P17120504697958592506

/-!
# A245185: Triangle read by rows: T(n,k) = number of pseudo-square parallelogram (psp) polyominoes with semiperimeter n+1 and k columns.

The programs for A245185, there is no canonical definition to state claims against.
-/

/-! ## A245185.P9799105080669664986

`A134023(A157153(n))+A034851(n)`
-/

namespace A245185.P9799105080669664986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (A157153 n).toNat + A034851 n

end

end A245185.P9799105080669664986

/-! ## A245185.P1282980695135987676

`A000041(∑{e}[A174410(n), #])`
-/

namespace A245185.P1282980695135987676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245185.P1282980695135987676

/-! ## A245185.P6874206363912835294

`A368110(A034851(n)%A074304(n+1))`
-/

namespace A245185.P6874206363912835294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (Int.tmod (A034851 n) (A074304 (n + 1))).toNat

end

end A245185.P6874206363912835294

/-! ## A245185.P9029078689824104034

`A048103(A088855(n+1)%A352810(2*(n+1)))`
-/

namespace A245185.P9029078689824104034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (Int.tmod (A088855 (n + 1)) (A352810 (2 * (n + 1)))).toNat

end

end A245185.P9029078689824104034

/-! ## A245185.P4576808786588717392

`A367407(A088855(n+1))%A113724(3*(n+1))`
-/

namespace A245185.P4576808786588717392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367407 (A088855 (n + 1)).toNat) (A113724 (3 * (n + 1)))

end

end A245185.P4576808786588717392

/-!
# A245187: Trajectory of 1 under repeated applications of the morphism 0->12, 1->12, 2->00.

The programs for A245187, the canonical program `A245187.P564237629366076927` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245187 has offset 0).

The definition of A245187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245187.P564237629366076927

`and(1+n%2, Δ[val(n+1, 2)%2])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245187

/-- `and(1+n%2, Δ[val(n+1, 2)%2])` -/
def P564237629366076927.Spec : Prop :=
  ∀ n, P564237629366076927.a n = A245187 n

theorem P564237629366076927.correct : P564237629366076927.Spec := by
  intro n
  simp only [A245187]

end A245187

/-! ## A245187.P2739924567330043975

`lcm(and(n+1, -(n+1))%3, Δ[and(n+1, -(n+1))%3])`
-/

namespace A245187.P2739924567330043975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3) (f1 (n + 1) - f1 n)

end

end A245187.P2739924567330043975

namespace A245187

/-- `lcm(and(n+1, -(n+1))%3, Δ[and(n+1, -(n+1))%3])` -/
def P2739924567330043975.Spec : Prop :=
  ∀ n, (P2739924567330043975.a n : ℤ) = A245187 n

end A245187

/-! ## A245187.P3237906431816756164

`val(A249032(n+1), 2)`
-/

namespace A245187.P3237906431816756164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249032 (n + 1)).toNat 2

end

end A245187.P3237906431816756164

namespace A245187

/-- `val(A249032(n+1), 2)` -/
def P3237906431816756164.Spec : Prop :=
  ∀ n, (P3237906431816756164.a n : ℤ) = A245187 n

end A245187

/-! ## A245187.P15930257016821228237

`col(7-A091297(n+1))`
-/

namespace A245187.P15930257016821228237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (7 - A091297 (n + 1)).toNat

end

end A245187.P15930257016821228237

namespace A245187

/-- `col(7-A091297(n+1))` -/
def P15930257016821228237.Spec : Prop :=
  ∀ n, (P15930257016821228237.a n : ℤ) = A245187 n

end A245187

/-! ## A245187.P12859233017936806985

`A096268(n)+A039963(n)`
-/

namespace A245187.P12859233017936806985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n + A039963 n

end

end A245187.P12859233017936806985

namespace A245187

/-- `A096268(n)+A039963(n)` -/
def P12859233017936806985.Spec : Prop :=
  ∀ n, P12859233017936806985.a n = A245187 n

end A245187

/-! ## A245187.P9010188162750583895

`A000034(n)*A039963(n)`
-/

namespace A245187.P9010188162750583895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A039963 n

end

end A245187.P9010188162750583895

namespace A245187

/-- `A000034(n)*A039963(n)` -/
def P9010188162750583895.Spec : Prop :=
  ∀ n, P9010188162750583895.a n = A245187 n

end A245187

/-! ## A245187.P18118245022356333452

`(A000035(n)+1)*A039963(n)`
-/

namespace A245187.P18118245022356333452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A039963 n

end

end A245187.P18118245022356333452

namespace A245187

/-- `(A000035(n)+1)*A039963(n)` -/
def P18118245022356333452.Spec : Prop :=
  ∀ n, P18118245022356333452.a n = A245187 n

end A245187

/-! ## A245187.P7567143447027784809

`A039963(n)*A056832(n+1)`
-/

namespace A245187.P7567143447027784809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n * A056832 (n + 1)

end

end A245187.P7567143447027784809

namespace A245187

/-- `A039963(n)*A056832(n+1)` -/
def P7567143447027784809.Spec : Prop :=
  ∀ n, P7567143447027784809.a n = A245187 n

end A245187

/-! ## A245187.P11072583005735802322

`A039963(n)*A089242(n+1)`
-/

namespace A245187.P11072583005735802322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n * A089242 (n + 1)

end

end A245187.P11072583005735802322

namespace A245187

/-- `A039963(n)*A089242(n+1)` -/
def P11072583005735802322.Spec : Prop :=
  ∀ n, P11072583005735802322.a n = A245187 n

end A245187

/-! ## A245187.P7384979815927571387

`A039963(n)*A105931(n+1)`
-/

namespace A245187.P7384979815927571387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n * A105931 (n + 1)

end

end A245187.P7384979815927571387

namespace A245187

/-- `A039963(n)*A105931(n+1)` -/
def P7384979815927571387.Spec : Prop :=
  ∀ n, P7384979815927571387.a n = A245187 n

end A245187

/-! ## A245187.P9276998687092770136

`A096268(or(1, n))+A096268(n)`
-/

namespace A245187.P9276998687092770136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (Nat.lor 1 n) + A096268 n

end

end A245187.P9276998687092770136

namespace A245187

/-- `A096268(or(1, n))+A096268(n)` -/
def P9276998687092770136.Spec : Prop :=
  ∀ n, P9276998687092770136.a n = A245187 n

end A245187

/-! ## A245187.P1957421596385401160

`lcm(Δ[A035263(n+1)], A000034(n))`
-/

namespace A245187.P1957421596385401160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000034 n)

end

end A245187.P1957421596385401160

namespace A245187

/-- `lcm(Δ[A035263(n+1)], A000034(n))` -/
def P1957421596385401160.Spec : Prop :=
  ∀ n, (P1957421596385401160.a n : ℤ) = A245187 n

end A245187

/-! ## A245187.P15532347878009402337

`A039963(n)+1-A035263(n+1)`
-/

namespace A245187.P15532347878009402337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n + (1 - A035263 (n + 1))

end

end A245187.P15532347878009402337

namespace A245187

/-- `A039963(n)+1-A035263(n+1)` -/
def P15532347878009402337.Spec : Prop :=
  ∀ n, P15532347878009402337.a n = A245187 n

end A245187

/-! ## A245187.P12981686240076783770

`A039963(n)+A035263(2*(n+1))`
-/

namespace A245187.P12981686240076783770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n + A035263 (2 * (n + 1))

end

end A245187.P12981686240076783770

namespace A245187

/-- `A039963(n)+A035263(2*(n+1))` -/
def P12981686240076783770.Spec : Prop :=
  ∀ n, P12981686240076783770.a n = A245187 n

end A245187

/-! ## A245187.P10594197272575027175

`A096268(n+1)+2*A096268(n)`
-/

namespace A245187.P10594197272575027175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (n + 1) + 2 * A096268 n

end

end A245187.P10594197272575027175

namespace A245187

/-- `A096268(n+1)+2*A096268(n)` -/
def P10594197272575027175.Spec : Prop :=
  ∀ n, P10594197272575027175.a n = A245187 n

end A245187

/-! ## A245187.P9771613609065950538

`xor(A035263(n+1), A091297(n+1))`
-/

namespace A245187.P9771613609065950538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (n + 1)) (A091297 (n + 1))

end

end A245187.P9771613609065950538

namespace A245187

/-- `xor(A035263(n+1), A091297(n+1))` -/
def P9771613609065950538.Spec : Prop :=
  ∀ n, P9771613609065950538.a n = A245187 n

end A245187

/-! ## A245187.P3120876481533908300

`A039963(n)+1-abs(A029883(n+1))`
-/

namespace A245187.P3120876481533908300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n + (1 - |A029883 (n + 1)|)

end

end A245187.P3120876481533908300

namespace A245187

/-- `A039963(n)+1-abs(A029883(n+1))` -/
def P3120876481533908300.Spec : Prop :=
  ∀ n, P3120876481533908300.a n = A245187 n

end A245187

/-! ## A245187.P15676186828616330416

`and(A083481(n+1)+1, A056832(n+1))`
-/

namespace A245187.P15676186828616330416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083481 (n + 1) + 1) (A056832 (n + 1))

end

end A245187.P15676186828616330416

namespace A245187

/-- `and(A083481(n+1)+1, A056832(n+1))` -/
def P15676186828616330416.Spec : Prop :=
  ∀ n, P15676186828616330416.a n = A245187 n

end A245187

/-! ## A245187.P14141326144744265538

`(A359832(n+2)+A000035(n))*A359832(n+1)`
-/

namespace A245187.P14141326144744265538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A359832 (n + 2) + A000035 n) * A359832 (n + 1)

end

end A245187.P14141326144744265538

namespace A245187

/-- `(A359832(n+2)+A000035(n))*A359832(n+1)` -/
def P14141326144744265538.Spec : Prop :=
  ∀ n, P14141326144744265538.a n = A245187 n

end A245187

/-!
# A245188: Trajectory of 1 under repeated applications of the morphism 0->12, 1->13, 2->20, 3->21.

The programs for A245188, the canonical program `A245188.P10749449264260825276` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245188 has offset 0).

The definition of A245188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245188.P6771847505493354107

`xor(2-char[xor(n, 2*n)], val(n+1, 2)%2)`
-/

namespace A245188.P6771847505493354107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ((SequenceMachineLib.valuation (n + 1) 2 % 2 : ℕ) : ℤ)

end

end A245188.P6771847505493354107

namespace A245188

/-- `xor(2-char[xor(n, 2*n)], val(n+1, 2)%2)` -/
def P6771847505493354107.Spec : Prop :=
  ∀ n, P6771847505493354107.a n = A245188 n

end A245188

/-! ## A245188.P10749449264260825276

`A005681(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245188

/-- `A005681(n+1)-1` -/
def P10749449264260825276.Spec : Prop :=
  ∀ n, P10749449264260825276.a n = A245188 n

theorem P10749449264260825276.correct : P10749449264260825276.Spec := by
  intro n
  simp only [A245188]

end A245188

/-! ## A245188.P1386744974276751622

`A151929(2-char[xor(2*n, n)]-(-1)^val(n+1, 2))`
-/

namespace A245188.P1386744974276751622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (-1) ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A245188.P1386744974276751622

namespace A245188

/-- `A151929(2-char[xor(2*n, n)]-(-1)^val(n+1, 2))` -/
def P1386744974276751622.Spec : Prop :=
  ∀ n, P1386744974276751622.a n = A245188 n

end A245188

/-! ## A245188.P17419717542232035008

`xor(A001285(n), A096268(n))`
-/

namespace A245188.P17419717542232035008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001285 n) (A096268 n)

end

end A245188.P17419717542232035008

namespace A245188

/-- `xor(A001285(n), A096268(n))` -/
def P17419717542232035008.Spec : Prop :=
  ∀ n, P17419717542232035008.a n = A245188 n

end A245188

/-! ## A245188.P13556149153158842581

`A001285(n)²-A036580(n)`
-/

namespace A245188.P13556149153158842581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2 - A036580 n

end

end A245188.P13556149153158842581

namespace A245188

/-- `A001285(n)²-A036580(n)` -/
def P13556149153158842581.Spec : Prop :=
  ∀ n, P13556149153158842581.a n = A245188 n

end A245188

/-! ## A245188.P2397037859204319927

`A001285(n+1)-A106400(n)`
-/

namespace A245188.P2397037859204319927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) - A106400 n

end

end A245188.P2397037859204319927

namespace A245188

/-- `A001285(n+1)-A106400(n)` -/
def P2397037859204319927.Spec : Prop :=
  ∀ n, P2397037859204319927.a n = A245188 n

theorem P2397037859204319927.correct : P2397037859204319927.Spec := by
  intro n
  simp only [A245188, Nat.add_sub_cancel, A245188.P2397037859204319927.a, A245188.P10749449264260825276.a, A001285, A001285.P11616636227895161122.a, A005681, A005681.P11362584673414120459.a, A106400, A106400.P11201390576172776043.a, A010060, A010060.P3080921269106500717.a, A268676, A268676.P8159254776456483871.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245188

/-! ## A245188.P9609606828867401485

`A268676(n)-A092436(n+1)`
-/

namespace A245188.P9609606828867401485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - A092436 (n + 1)

end

end A245188.P9609606828867401485

namespace A245188

/-- `A268676(n)-A092436(n+1)` -/
def P9609606828867401485.Spec : Prop :=
  ∀ n, P9609606828867401485.a n = A245188 n

theorem P9609606828867401485.correct : P9609606828867401485.Spec := by
  intro n
  simp only [A245188, Nat.add_sub_cancel, A245188.P9609606828867401485.a, A245188.P10749449264260825276.a, A005681, A005681.P11362584673414120459.a, A092436, A092436.P18053594016097437094.a, A268676, A268676.P8159254776456483871.a, A010060, A010060.P3080921269106500717.a, A106400, A106400.P11201390576172776043.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245188

/-! ## A245188.P15904901932645620920

`A001538(n)%A005681(n+1)`
-/

namespace A245188.P15904901932645620920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A005681 (n + 1))

end

end A245188.P15904901932645620920

namespace A245188

/-- `A001538(n)%A005681(n+1)` -/
def P15904901932645620920.Spec : Prop :=
  ∀ n, P15904901932645620920.a n = A245188 n

end A245188

/-! ## A245188.P7367087839250629399

`A002148(n)%A005681(n+1)`
-/

namespace A245188.P7367087839250629399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A005681 (n + 1))

end

end A245188.P7367087839250629399

namespace A245188

/-- `A002148(n)%A005681(n+1)` -/
def P7367087839250629399.Spec : Prop :=
  ∀ n, P7367087839250629399.a n = A245188 n

end A245188

/-! ## A245188.P3197814067803275561

`A016969(n)%A005681(n+1)`
-/

namespace A245188.P3197814067803275561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A005681 (n + 1))

end

end A245188.P3197814067803275561

namespace A245188

/-- `A016969(n)%A005681(n+1)` -/
def P3197814067803275561.Spec : Prop :=
  ∀ n, P3197814067803275561.a n = A245188 n

end A245188

/-! ## A245188.P14843930171340837868

`A016971(n)%A005681(n+1)`
-/

namespace A245188.P14843930171340837868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A005681 (n + 1))

end

end A245188.P14843930171340837868

namespace A245188

/-- `A016971(n)%A005681(n+1)` -/
def P14843930171340837868.Spec : Prop :=
  ∀ n, P14843930171340837868.a n = A245188 n

end A245188

/-! ## A245188.P16492132398467795730

`A016973(n)%A005681(n+1)`
-/

namespace A245188.P16492132398467795730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A005681 (n + 1))

end

end A245188.P16492132398467795730

namespace A245188

/-- `A016973(n)%A005681(n+1)` -/
def P16492132398467795730.Spec : Prop :=
  ∀ n, P16492132398467795730.a n = A245188 n

end A245188

/-! ## A245188.P9813996374841681127

`A016975(n)%A005681(n+1)`
-/

namespace A245188.P9813996374841681127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A005681 (n + 1))

end

end A245188.P9813996374841681127

namespace A245188

/-- `A016975(n)%A005681(n+1)` -/
def P9813996374841681127.Spec : Prop :=
  ∀ n, P9813996374841681127.a n = A245188 n

end A245188

/-! ## A245188.P6291940260408862688

`A017653(n)%A005681(n+1)`
-/

namespace A245188.P6291940260408862688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A005681 (n + 1))

end

end A245188.P6291940260408862688

namespace A245188

/-- `A017653(n)%A005681(n+1)` -/
def P6291940260408862688.Spec : Prop :=
  ∀ n, P6291940260408862688.a n = A245188 n

end A245188

/-! ## A245188.P8710907837267023140

`A017655(n)%A005681(n+1)`
-/

namespace A245188.P8710907837267023140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A005681 (n + 1))

end

end A245188.P8710907837267023140

namespace A245188

/-- `A017655(n)%A005681(n+1)` -/
def P8710907837267023140.Spec : Prop :=
  ∀ n, P8710907837267023140.a n = A245188 n

end A245188

/-! ## A245188.P12065362735558053625

`A017657(n)%A005681(n+1)`
-/

namespace A245188.P12065362735558053625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A005681 (n + 1))

end

end A245188.P12065362735558053625

namespace A245188

/-- `A017657(n)%A005681(n+1)` -/
def P12065362735558053625.Spec : Prop :=
  ∀ n, P12065362735558053625.a n = A245188 n

end A245188

/-! ## A245188.P5981338457716107944

`A036583(n)%A005681(n+1)`
-/

namespace A245188.P5981338457716107944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036583 n) (A005681 (n + 1))

end

end A245188.P5981338457716107944

namespace A245188

/-- `A036583(n)%A005681(n+1)` -/
def P5981338457716107944.Spec : Prop :=
  ∀ n, P5981338457716107944.a n = A245188 n

end A245188

/-! ## A245188.P9165737204208792691

`A094319(n)%A005681(n+1)`
-/

namespace A245188.P9165737204208792691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094319 n) (A005681 (n + 1))

end

end A245188.P9165737204208792691

namespace A245188

/-- `A094319(n)%A005681(n+1)` -/
def P9165737204208792691.Spec : Prop :=
  ∀ n, P9165737204208792691.a n = A245188 n

end A245188

/-! ## A245188.P8234635672636079114

`A128468(n)%A005681(n+1)`
-/

namespace A245188.P8234635672636079114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128468 n) (A005681 (n + 1))

end

end A245188.P8234635672636079114

namespace A245188

/-- `A128468(n)%A005681(n+1)` -/
def P8234635672636079114.Spec : Prop :=
  ∀ n, P8234635672636079114.a n = A245188 n

end A245188

/-!
# A245191: Successive states of one-sided one-dimensional cellular automaton using Rule 90, starting with a single ON cell, converted to decimal.

The programs for A245191, the canonical program `A245191.P17795432851198493125` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245191 has offset 0).

The definition of A245191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245191.P16091232580135928264

`A277918(n+1)/2`
-/

namespace A245191.P16091232580135928264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277918 (n + 1) : ℚ) / 2

end

end A245191.P16091232580135928264

namespace A245191

/-- `A277918(n+1)/2` -/
def P16091232580135928264.Spec : Prop :=
  ∀ n, P16091232580135928264.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P12170244743940022821

`A062878(n+1)/3`
-/

namespace A245191.P12170244743940022821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062878 (n + 1) : ℚ) / 3

end

end A245191.P12170244743940022821

namespace A245191

/-- `A062878(n+1)/3` -/
def P12170244743940022821.Spec : Prop :=
  ∀ n, P12170244743940022821.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P258885161642836424

`record[ceil(A285479(n)/3)]`
-/

namespace A245191.P258885161642836424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285479 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245191.P258885161642836424

namespace A245191

/-- `record[ceil(A285479(n)/3)]` -/
def P258885161642836424.Spec : Prop :=
  ∀ n, P258885161642836424.a n = A245191 n

end A245191

/-! ## A245191.P6055216593700451928

`A285436(2*(n+1))/2`
-/

namespace A245191.P6055216593700451928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285436 (2 * (n + 1)) : ℚ) / 2

end

end A245191.P6055216593700451928

namespace A245191

/-- `A285436(2*(n+1))/2` -/
def P6055216593700451928.Spec : Prop :=
  ∀ n, P6055216593700451928.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P332686117864245391

`A285773(2*(n+1))/2`
-/

namespace A245191.P332686117864245391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285773 (2 * (n + 1)) : ℚ) / 2

end

end A245191.P332686117864245391

namespace A245191

/-- `A285773(2*(n+1))/2` -/
def P332686117864245391.Spec : Prop :=
  ∀ n, P332686117864245391.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P4033315356720846838

`A288807(2*(n+1))/2`
-/

namespace A245191.P4033315356720846838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288807 (2 * (n + 1)) : ℚ) / 2

end

end A245191.P4033315356720846838

namespace A245191

/-- `A288807(2*(n+1))/2` -/
def P4033315356720846838.Spec : Prop :=
  ∀ n, P4033315356720846838.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P13361923142480775952

`round(A285479(2*(n+1))/3)`
-/

namespace A245191.P13361923142480775952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285479 (2 * (n + 1)) : ℚ) / 3)

end

end A245191.P13361923142480775952

namespace A245191

/-- `round(A285479(2*(n+1))/3)` -/
def P13361923142480775952.Spec : Prop :=
  ∀ n, P13361923142480775952.a n = A245191 n

end A245191

/-! ## A245191.P12147727587534634003

`and(A062878(n+1), A266284(n))`
-/

namespace A245191.P12147727587534634003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 (n + 1)) (A266284 n)

end

end A245191.P12147727587534634003

namespace A245191

/-- `and(A062878(n+1), A266284(n))` -/
def P12147727587534634003.Spec : Prop :=
  ∀ n, P12147727587534634003.a n = A245191 n

end A245191

/-! ## A245191.P17795432851198493125

`and(A062878(n+1), A266873(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245191

/-- `and(A062878(n+1), A266873(n))` -/
def P17795432851198493125.Spec : Prop :=
  ∀ n, P17795432851198493125.a n = A245191 n

theorem P17795432851198493125.correct : P17795432851198493125.Spec := by
  intro n
  simp only [A245191]

end A245191

/-! ## A245191.P5693609037699003896

`record[gcd(A288807(n+1), A288807(n))]`
-/

namespace A245191.P5693609037699003896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288807 (n + 1)) (A288807 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245191.P5693609037699003896

namespace A245191

/-- `record[gcd(A288807(n+1), A288807(n))]` -/
def P5693609037699003896.Spec : Prop :=
  ∀ n, (P5693609037699003896.a n : ℤ) = A245191 n

end A245191

/-! ## A245191.P17787307377589568993

`and(A026644(n+1), A277933(n+1))/2`
-/

namespace A245191.P17787307377589568993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A026644 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P17787307377589568993

namespace A245191

/-- `and(A026644(n+1), A277933(n+1))/2` -/
def P17787307377589568993.Spec : Prop :=
  ∀ n, P17787307377589568993.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P10237264012367637614

`and(A168648(n+1), A277933(n+1))/2`
-/

namespace A245191.P10237264012367637614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A168648 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P10237264012367637614

namespace A245191

/-- `and(A168648(n+1), A277933(n+1))/2` -/
def P10237264012367637614.Spec : Prop :=
  ∀ n, P10237264012367637614.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P17117297975089528706

`and(A266284(n+1), A277933(n+1))/2`
-/

namespace A245191.P17117297975089528706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266284 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P17117297975089528706

namespace A245191

/-- `and(A266284(n+1), A277933(n+1))/2` -/
def P17117297975089528706.Spec : Prop :=
  ∀ n, P17117297975089528706.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P8565770645667043457

`and(A266873(n+1), A277933(n+1))/2`
-/

namespace A245191.P8565770645667043457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266873 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P8565770645667043457

namespace A245191

/-- `and(A266873(n+1), A277933(n+1))/2` -/
def P8565770645667043457.Spec : Prop :=
  ∀ n, P8565770645667043457.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P11666412047993896089

`and(A266980(n+1), A277933(n+1))/2`
-/

namespace A245191.P11666412047993896089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266980 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P11666412047993896089

namespace A245191

/-- `and(A266980(n+1), A277933(n+1))/2` -/
def P11666412047993896089.Spec : Prop :=
  ∀ n, P11666412047993896089.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P2301718451280713403

`and(A267689(n+1), A277933(n+1))/2`
-/

namespace A245191.P2301718451280713403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A267689 (n + 1)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P2301718451280713403

namespace A245191

/-- `and(A267689(n+1), A277933(n+1))/2` -/
def P2301718451280713403.Spec : Prop :=
  ∀ n, P2301718451280713403.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P2370306133998250293

`and(A277933(n+1), A283216(n+1))/2`
-/

namespace A245191.P2370306133998250293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A277933 (n + 1)) (A283216 (n + 1)) : ℚ) / 2

end

end A245191.P2370306133998250293

namespace A245191

/-- `and(A277933(n+1), A283216(n+1))/2` -/
def P2370306133998250293.Spec : Prop :=
  ∀ n, P2370306133998250293.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P17189146312018896067

`and(A083322(n+2), A277933(n+1))/2`
-/

namespace A245191.P17189146312018896067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A083322 (n + 2)) (A277933 (n + 1)) : ℚ) / 2

end

end A245191.P17189146312018896067

namespace A245191

/-- `and(A083322(n+2), A277933(n+1))/2` -/
def P17189146312018896067.Spec : Prop :=
  ∀ n, P17189146312018896067.a n = (A245191 n : ℚ)

end A245191

/-! ## A245191.P9971987557265231208

`A288807(2*n+3)-A288807(2*(n+1))`
-/

namespace A245191.P9971987557265231208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (2 * n + 3) - A288807 (2 * (n + 1))

end

end A245191.P9971987557265231208

namespace A245191

/-- `A288807(2*n+3)-A288807(2*(n+1))` -/
def P9971987557265231208.Spec : Prop :=
  ∀ n, P9971987557265231208.a n = A245191 n

end A245191

/-!
# A245192: The number of Dyck paths p(m) for m<=n, as defined by the rows of A237593, that have common subpaths of positive length with the Dyck path p(n) for the symmetric representation of sigma(n).

The programs for A245192, there is no canonical definition to state claims against.
-/

/-! ## A245192.P15074505907844527104

`A244145(n+1)+A083925(A358169(3*n+5))`
-/

namespace A245192.P15074505907844527104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (n + 1) + A083925 (A358169 (3 * n + 5)).toNat

end

end A245192.P15074505907844527104

/-! ## A245192.P10993868913507880525

`A107286(A011615(n*n²)+n)`
-/

namespace A245192.P10993868913507880525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A011615 (n * n ^ 2) + (n : ℤ)).toNat

end

end A245192.P10993868913507880525

/-! ## A245192.P13911014612763778539

`gcd(A080941(n+1), A090079(A065449(n)))`
-/

namespace A245192.P13911014612763778539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080941 (n + 1)) (A090079 (A065449 n).toNat)

end

end A245192.P13911014612763778539

/-! ## A245192.P1902676097034961148

`gcd(A002088(A005251(n)), A338630(n+1))`
-/

namespace A245192.P1902676097034961148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002088 (A005251 n).toNat) (A338630 (n + 1))

end

end A245192.P1902676097034961148

/-! ## A245192.P10756451098244214088

`A020639(A324046(n+1))%A092045(n+1)`
-/

namespace A245192.P10756451098244214088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A324046 (n + 1)).toNat) (A092045 (n + 1))

end

end A245192.P10756451098244214088

/-!
# A245193: Smallest prime having in decimal representation A136333(n) as suffix.

The programs for A245193, there is no canonical definition to state claims against.
-/

/-! ## A245193.P1613247849323697929

`A070277(A136333(n+1))`
-/

namespace A245193.P1613247849323697929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (A136333 (n + 1)).toNat

end

end A245193.P1613247849323697929

/-! ## A245193.P2479764680853752982

`A070277(eq[1, gcd(10, A007954(n))])`
-/

namespace A245193.P2479764680853752982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A007954 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245193.P2479764680853752982

/-! ## A245193.P16350442082829980093

`A070277(eq[n, A222214(A107128(n))])`
-/

namespace A245193.P16350442082829980093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A107128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245193.P16350442082829980093

/-! ## A245193.P12056186472444198690

`A070277(∩[A008541(n+1), A014261(n+1)])`
-/

namespace A245193.P12056186472444198690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A245193.P12056186472444198690

/-! ## A245193.P7756515268094298593

`A070277(∩[A014261(n+1), A039130(n+1)])`
-/

namespace A245193.P7756515268094298593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A245193.P7756515268094298593

/-!
# A245194: G.f.: Sum_{k>=0} t^3/((1+t)*(1+t^2)), where t=x^(2^k).

The programs for A245194, the canonical program `A245194.P7929249344662917846` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245194 has offset 0).

The definition of A245194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245194.P7929249344662917846

`Δ[A014081(abs(1-n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245194

/-- `Δ[A014081(abs(1-n))]` -/
def P7929249344662917846.Spec : Prop :=
  ∀ n, P7929249344662917846.a n = A245194 n

theorem P7929249344662917846.correct : P7929249344662917846.Spec := by
  intro n
  simp only [A245194]

end A245194

/-! ## A245194.P3310267127886825062

`Δ[log2(A245195(abs(1-n)))]`
-/

namespace A245194.P3310267127886825062
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A245195 |1 - (n : ℤ)|.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245194.P3310267127886825062

namespace A245194

/-- `Δ[log2(A245195(abs(1-n)))]` -/
def P3310267127886825062.Spec : Prop :=
  ∀ n, P3310267127886825062.a n = (A245194 n : ℝ)

end A245194

/-! ## A245194.P8869706723749412914

`Δ[A000120(A048735(abs(1-n)))]`
-/

namespace A245194.P8869706723749412914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048735 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245194.P8869706723749412914

namespace A245194

/-- `Δ[A000120(A048735(abs(1-n)))]` -/
def P8869706723749412914.Spec : Prop :=
  ∀ n, P8869706723749412914.a n = A245194 n

end A245194

/-! ## A245194.P7040155433951793006

`A014081(n)-A014081(abs(1-n))`
-/

namespace A245194.P7040155433951793006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n - A014081 |1 - (n : ℤ)|.toNat

end

end A245194.P7040155433951793006

namespace A245194

/-- `A014081(n)-A014081(abs(1-n))` -/
def P7040155433951793006.Spec : Prop :=
  ∀ n, P7040155433951793006.a n = A245194 n

theorem P7040155433951793006.correct : P7040155433951793006.Spec := by
  intro n
  simp only [A245194, Nat.add_sub_cancel, A245194.P7040155433951793006.a, A245194.P7929249344662917846.f1, A245194.P7929249344662917846.a, SequenceMachineLib.memo_apply]
  try simp

end A245194

/-! ## A245194.P4719591461203535115

`Δ[A046660(A278222(abs(1-n)))]`
-/

namespace A245194.P4719591461203535115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A278222 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245194.P4719591461203535115

namespace A245194

/-- `Δ[A046660(A278222(abs(1-n)))]` -/
def P4719591461203535115.Spec : Prop :=
  ∀ n, P4719591461203535115.a n = A245194 n

end A245194

/-!
# A245195: a(n) = 2^A014081(n).

The programs for A245195, the canonical program `A245195.P9526382328095845425` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245195 has offset 0).

The definition of A245195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245195.P9526382328095845425

`2^A014081(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245195

/-- `2^A014081(n)` -/
def P9526382328095845425.Spec : Prop :=
  ∀ n, P9526382328095845425.a n = (A245195 n : ℚ)

end A245195

/-! ## A245195.P6876046647428642581

`A162510(A005940(1+n))`
-/

namespace A245195.P6876046647428642581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (A005940 (1 + n)).toNat

end

end A245195.P6876046647428642581

namespace A245195

/-- `A162510(A005940(1+n))` -/
def P6876046647428642581.Spec : Prop :=
  ∀ n, P6876046647428642581.a n = A245195 n

end A245195

/-! ## A245195.P11375743089267033413

`2^∑[A245194(n)]`
-/

namespace A245195.P11375743089267033413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A245195.P11375743089267033413

namespace A245195

/-- `2^∑[A245194(n)]` -/
def P11375743089267033413.Spec : Prop :=
  ∀ n, P11375743089267033413.a n = (A245195 n : ℚ)

end A245195

/-! ## A245195.P11981343334151241326

`A001316(and(2*n, n))`
-/

namespace A245195.P11981343334151241326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.land (2 * n) n)

end

end A245195.P11981343334151241326

namespace A245195

/-- `A001316(and(2*n, n))` -/
def P11981343334151241326.Spec : Prop :=
  ∀ n, P11981343334151241326.a n = A245195 n

end A245195

/-! ## A245195.P2373480755786465536

`A048896(and(n, 2*n))`
-/

namespace A245195.P2373480755786465536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (Nat.land n (2 * n))

end

end A245195.P2373480755786465536

namespace A245195

/-- `A048896(and(n, 2*n))` -/
def P2373480755786465536.Spec : Prop :=
  ∀ n, P2373480755786465536.a n = A245195 n

end A245195

/-! ## A245195.P10926835147243641656

`A060632(and(n, 2*n))`
-/

namespace A245195.P10926835147243641656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Nat.land n (2 * n))

end

end A245195.P10926835147243641656

namespace A245195

/-- `A060632(and(n, 2*n))` -/
def P10926835147243641656.Spec : Prop :=
  ∀ n, P10926835147243641656.a n = A245195 n

end A245195

/-! ## A245195.P3433153351141118726

`A071044(and(n, 2*n))`
-/

namespace A245195.P3433153351141118726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.land n (2 * n))

end

end A245195.P3433153351141118726

namespace A245195

/-- `A071044(and(n, 2*n))` -/
def P3433153351141118726.Spec : Prop :=
  ∀ n, P3433153351141118726.a n = A245195 n

end A245195

/-! ## A245195.P17349889128631686194

`A151930(and(n, 2*n))`
-/

namespace A245195.P17349889128631686194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (Nat.land n (2 * n))

end

end A245195.P17349889128631686194

namespace A245195

/-- `A151930(and(n, 2*n))` -/
def P17349889128631686194.Spec : Prop :=
  ∀ n, P17349889128631686194.a n = A245195 n

end A245195

/-! ## A245195.P7527614704829081903

`2^A000120(and(n, 2*n))`
-/

namespace A245195.P7527614704829081903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (Nat.land n (2 * n)) : ℤ)

end

end A245195.P7527614704829081903

namespace A245195

/-- `2^A000120(and(n, 2*n))` -/
def P7527614704829081903.Spec : Prop :=
  ∀ n, P7527614704829081903.a n = (A245195 n : ℚ)

end A245195

/-! ## A245195.P9254210222023885010

`A000079(A014081(n))`
-/

namespace A245195.P9254210222023885010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A014081 n).toNat

end

end A245195.P9254210222023885010

namespace A245195

/-- `A000079(A014081(n))` -/
def P9254210222023885010.Spec : Prop :=
  ∀ n, P9254210222023885010.a n = A245195 n

end A245195

/-! ## A245195.P11543271996385890499

`A001316(A048728(n))`
-/

namespace A245195.P11543271996385890499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A048728 n).toNat

end

end A245195.P11543271996385890499

namespace A245195

/-- `A001316(A048728(n))` -/
def P11543271996385890499.Spec : Prop :=
  ∀ n, P11543271996385890499.a n = A245195 n

end A245195

/-! ## A245195.P15476721680861375818

`A001316(A048735(n))`
-/

namespace A245195.P15476721680861375818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A048735 n).toNat

end

end A245195.P15476721680861375818

namespace A245195

/-- `A001316(A048735(n))` -/
def P15476721680861375818.Spec : Prop :=
  ∀ n, P15476721680861375818.a n = A245195 n

end A245195

/-! ## A245195.P2288968960905744010

`A001316(A213370(n))`
-/

namespace A245195.P2288968960905744010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A213370 n).toNat

end

end A245195.P2288968960905744010

namespace A245195

/-- `A001316(A213370(n))` -/
def P2288968960905744010.Spec : Prop :=
  ∀ n, P2288968960905744010.a n = A245195 n

end A245195

/-! ## A245195.P1006646101424261844

`A001316(A318921(n))`
-/

namespace A245195.P1006646101424261844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A318921 n).toNat

end

end A245195.P1006646101424261844

namespace A245195

/-- `A001316(A318921(n))` -/
def P1006646101424261844.Spec : Prop :=
  ∀ n, P1006646101424261844.a n = A245195 n

end A245195

/-! ## A245195.P8705463051835573272

`A001316(A348710(n))`
-/

namespace A245195.P8705463051835573272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A348710 n).toNat

end

end A245195.P8705463051835573272

namespace A245195

/-- `A001316(A348710(n))` -/
def P8705463051835573272.Spec : Prop :=
  ∀ n, P8705463051835573272.a n = A245195 n

end A245195

/-! ## A245195.P16690362934554020019

`A336996(A014081(n)²)`
-/

namespace A245195.P16690362934554020019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A014081 n ^ 2).toNat

end

end A245195.P16690362934554020019

namespace A245195

/-- `A336996(A014081(n)²)` -/
def P16690362934554020019.Spec : Prop :=
  ∀ n, P16690362934554020019.a n = A245195 n

end A245195

/-! ## A245195.P13532811202084190076

`A011782(A014081(n)+1)`
-/

namespace A245195.P13532811202084190076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014081 n + 1).toNat

end

end A245195.P13532811202084190076

namespace A245195

/-- `A011782(A014081(n)+1)` -/
def P13532811202084190076.Spec : Prop :=
  ∀ n, P13532811202084190076.a n = A245195 n

end A245195

/-! ## A245195.P11980451605068197630

`A017910(2*A014081(n))`
-/

namespace A245195.P11980451605068197630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A014081 n).toNat

end

end A245195.P11980451605068197630

namespace A245195

/-- `A017910(2*A014081(n))` -/
def P11980451605068197630.Spec : Prop :=
  ∀ n, P11980451605068197630.a n = A245195 n

end A245195

/-! ## A245195.P11151188694986081942

`A001316(n-A229763(n))`
-/

namespace A245195.P11151188694986081942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((n : ℤ) - A229763 n).toNat

end

end A245195.P11151188694986081942

namespace A245195

/-- `A001316(n-A229763(n))` -/
def P11151188694986081942.Spec : Prop :=
  ∀ n, P11151188694986081942.a n = A245195 n

end A245195

/-! ## A245195.P9735558764898044029

`A001316(n-A292272(n))`
-/

namespace A245195.P9735558764898044029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((n : ℤ) - A292272 n).toNat

end

end A245195.P9735558764898044029

namespace A245195

/-- `A001316(n-A292272(n))` -/
def P9735558764898044029.Spec : Prop :=
  ∀ n, P9735558764898044029.a n = A245195 n

end A245195

/-!
# A245196: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=wt(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=a(j)*wt(k-r-1) (where wt(i) = A000120(i)).

The programs for A245196, the canonical program `A245196.P10632712264817359951` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245196 has offset 1).

The definition of A245196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245196.P15098102576786801482

`∑{e}[A144790(n+1), #]`
-/

namespace A245196.P15098102576786801482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245196.P15098102576786801482

namespace A245196

/-- `∑{e}[A144790(n+1), #]` -/
def P15098102576786801482.Spec : Prop :=
  ∀ n, (P15098102576786801482.a n : ℤ) = A245196 (n + 1)

end A245196

/-! ## A245196.P906915310545351895

`A001222(A144790(n+1))`
-/

namespace A245196.P906915310545351895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A144790 (n + 1)).toNat

end

end A245196.P906915310545351895

namespace A245196

/-- `A001222(A144790(n+1))` -/
def P906915310545351895.Spec : Prop :=
  ∀ n, P906915310545351895.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P3176665698512397155

`A133565(A246029(n+1))`
-/

namespace A245196.P3176665698512397155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (A246029 (n + 1)).toNat

end

end A245196.P3176665698512397155

namespace A245196

/-- `A133565(A246029(n+1))` -/
def P3176665698512397155.Spec : Prop :=
  ∀ n, P3176665698512397155.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P10632712264817359951

`∑{e}[A090996(A322015(n)), #]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245196

/-- `∑{e}[A090996(A322015(n)), #]` -/
def P10632712264817359951.Spec : Prop :=
  ∀ n, (P10632712264817359951.a n : ℤ) = A245196 (n + 1)

theorem P10632712264817359951.correct : P10632712264817359951.Spec := by
  intro n
  simp only [A245196, Nat.add_sub_cancel]

end A245196

/-! ## A245196.P4150551406375078308

`A360616(A144790(n+1)²)`
-/

namespace A245196.P4150551406375078308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (A144790 (n + 1) ^ 2).toNat

end

end A245196.P4150551406375078308

namespace A245196

/-- `A360616(A144790(n+1)²)` -/
def P4150551406375078308.Spec : Prop :=
  ∀ n, P4150551406375078308.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P17906109905698519219

`A002375(A144790(n+1)+1)`
-/

namespace A245196.P17906109905698519219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A144790 (n + 1) + 1).toNat

end

end A245196.P17906109905698519219

namespace A245196

/-- `A002375(A144790(n+1)+1)` -/
def P17906109905698519219.Spec : Prop :=
  ∀ n, P17906109905698519219.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P16796982334285599519

`A317905(A144790(n+1)+1)`
-/

namespace A245196.P16796982334285599519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317905 (A144790 (n + 1) + 1).toNat

end

end A245196.P16796982334285599519

namespace A245196

/-- `A317905(A144790(n+1)+1)` -/
def P16796982334285599519.Spec : Prop :=
  ∀ n, P16796982334285599519.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P14229073935970930116

`A000120(A144790(n+1)-1)`
-/

namespace A245196.P14229073935970930116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A144790 (n + 1) - 1).toNat

end

end A245196.P14229073935970930116

namespace A245196

/-- `A000120(A144790(n+1)-1)` -/
def P14229073935970930116.Spec : Prop :=
  ∀ n, P14229073935970930116.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P4374413000004963578

`A090048(2*A144790(n+1))`
-/

namespace A245196.P4374413000004963578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (2 * A144790 (n + 1)).toNat

end

end A245196.P4374413000004963578

namespace A245196

/-- `A090048(2*A144790(n+1))` -/
def P4374413000004963578.Spec : Prop :=
  ∀ n, P4374413000004963578.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P1818980538573571297

`∏{e}[A278222(n+1), A001222(#)]`
-/

namespace A245196.P1818980538573571297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A245196.P1818980538573571297

namespace A245196

/-- `∏{e}[A278222(n+1), A001222(#)]` -/
def P1818980538573571297.Spec : Prop :=
  ∀ n, P1818980538573571297.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P3834579580401430919

`∏{e}[A332815(n+1), A001222(#)]`
-/

namespace A245196.P3834579580401430919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A245196.P3834579580401430919

namespace A245196

/-- `∏{e}[A332815(n+1), A001222(#)]` -/
def P3834579580401430919.Spec : Prop :=
  ∀ n, P3834579580401430919.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P4782418235317225201

`∏{e}[A278222(n+1), A253557(#)]`
-/

namespace A245196.P4782418235317225201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253557 (Nat.factorization (f1 n).natAbs p)

end

end A245196.P4782418235317225201

namespace A245196

/-- `∏{e}[A278222(n+1), A253557(#)]` -/
def P4782418235317225201.Spec : Prop :=
  ∀ n, P4782418235317225201.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P971020571053998025

`∏{e}[A005940(n+2), A001222(#)]`
-/

namespace A245196.P971020571053998025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A245196.P971020571053998025

namespace A245196

/-- `∏{e}[A005940(n+2), A001222(#)]` -/
def P971020571053998025.Spec : Prop :=
  ∀ n, P971020571053998025.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P15221220625053933322

`∏{e}[A005940(n+2), A302037(#)]`
-/

namespace A245196.P15221220625053933322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302037 (Nat.factorization (f1 n).natAbs p)

end

end A245196.P15221220625053933322

namespace A245196

/-- `∏{e}[A005940(n+2), A302037(#)]` -/
def P15221220625053933322.Spec : Prop :=
  ∀ n, P15221220625053933322.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P16290242183845439172

`A048881(2*(A144790(n+1)-1))`
-/

namespace A245196.P16290242183845439172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * (A144790 (n + 1) - 1)).toNat

end

end A245196.P16290242183845439172

namespace A245196

/-- `A048881(2*(A144790(n+1)-1))` -/
def P16290242183845439172.Spec : Prop :=
  ∀ n, P16290242183845439172.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P2364218065744591559

`A039635(n+1)%A144790(n+1)`
-/

namespace A245196.P2364218065744591559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039635 (n + 1)) (A144790 (n + 1))

end

end A245196.P2364218065744591559

namespace A245196

/-- `A039635(n+1)%A144790(n+1)` -/
def P2364218065744591559.Spec : Prop :=
  ∀ n, P2364218065744591559.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P16095449284852568260

`A001222(A245536(n+1)+ceil(1/(n+1)))`
-/

namespace A245196.P16095449284852568260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245536 (n + 1) + ⌈1 / (n + 1 : ℚ)⌉).toNat

end

end A245196.P16095449284852568260

namespace A245196

/-- `A001222(A245536(n+1)+ceil(1/(n+1)))` -/
def P16095449284852568260.Spec : Prop :=
  ∀ n, P16095449284852568260.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P17965984154276670794

`A001222(A090996(A161820(n+1)))`
-/

namespace A245196.P17965984154276670794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090996 (A161820 (n + 1)).toNat).toNat

end

end A245196.P17965984154276670794

namespace A245196

/-- `A001222(A090996(A161820(n+1)))` -/
def P17965984154276670794.Spec : Prop :=
  ∀ n, P17965984154276670794.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P9505230565714828549

`A001222(A051904(A278222(n+1)))`
-/

namespace A245196.P9505230565714828549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051904 (A278222 (n + 1)).toNat).toNat

end

end A245196.P9505230565714828549

namespace A245196

/-- `A001222(A051904(A278222(n+1)))` -/
def P9505230565714828549.Spec : Prop :=
  ∀ n, P9505230565714828549.a n = A245196 (n + 1)

end A245196

/-! ## A245196.P13945999361999445629

`A001222(A051904(A005940(n+2)))`
-/

namespace A245196.P13945999361999445629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051904 (A005940 (n + 2)).toNat).toNat

end

end A245196.P13945999361999445629

namespace A245196

/-- `A001222(A051904(A005940(n+2)))` -/
def P13945999361999445629.Spec : Prop :=
  ∀ n, P13945999361999445629.a n = A245196 (n + 1)

end A245196

/-!
# A245197: Numbers n where tau(n) and n-tau(n) are perfect squares, with tau(n) the number of divisors of n (A000005).

The programs for A245197, there is no canonical definition to state claims against.
-/

/-! ## A245197.P14827002516649423294

`∩[A036436(n+1), A245388(n+1)]`
-/

namespace A245197.P14827002516649423294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245197.P14827002516649423294

/-!
# A245199: Numbers n where phi(n) and tau(n) are perfect squares.

The programs for A245199, the canonical program `A245199.P15657518765040660811` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245199 has offset 1).

The definition of A245199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245199.P15657518765040660811

`∩[A036436(n+1), A039770(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245199

/-- `∩[A036436(n+1), A039770(n+1)]` -/
def P15657518765040660811.Spec : Prop :=
  ∀ n, (P15657518765040660811.a n : ℤ) = A245199 (n + 1)

theorem P15657518765040660811.correct : P15657518765040660811.Spec := by
  intro n
  simp only [A245199, Nat.add_sub_cancel]

end A245199

/-! ## A245199.P14199076627117218468

`∩[A036436(n+1), A341938(n+1)]`
-/

namespace A245199.P14199076627117218468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P14199076627117218468

namespace A245199

/-- `∩[A036436(n+1), A341938(n+1)]` -/
def P14199076627117218468.Spec : Prop :=
  ∀ n, (P14199076627117218468.a n : ℤ) = A245199 (n + 1)

end A245199

/-! ## A245199.P14498164654606753040

`∩[A036436(n+1), A341939(n+1)]`
-/

namespace A245199.P14498164654606753040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P14498164654606753040

namespace A245199

/-- `∩[A036436(n+1), A341939(n+1)]` -/
def P14498164654606753040.Spec : Prop :=
  ∀ n, (P14498164654606753040.a n : ℤ) = A245199 (n + 1)

end A245199

/-! ## A245199.P15970701581389291805

`∩[A039770(n+1), A341938(n+1)]`
-/

namespace A245199.P15970701581389291805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P15970701581389291805

namespace A245199

/-- `∩[A039770(n+1), A341938(n+1)]` -/
def P15970701581389291805.Spec : Prop :=
  ∀ n, (P15970701581389291805.a n : ℤ) = A245199 (n + 1)

end A245199

/-! ## A245199.P7065720774358288445

`∩[A039770(n+1), A341939(n+1)]`
-/

namespace A245199.P7065720774358288445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P7065720774358288445

namespace A245199

/-- `∩[A039770(n+1), A341939(n+1)]` -/
def P7065720774358288445.Spec : Prop :=
  ∀ n, (P7065720774358288445.a n : ℤ) = A245199 (n + 1)

end A245199

