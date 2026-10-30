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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

/-!
# A375601: a(n) = domination number of the stacked prism graph C_n X P_n.

The programs for A375601, there is no canonical definition to state claims against.
-/

/-! ## A375601.P16232516438627707534

`A375603((n+1)²+n²)`
-/

namespace A375601.P16232516438627707534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375603 ((n + 1) ^ 2 + n ^ 2)

end

end A375601.P16232516438627707534

/-!
# A375602: Triangle read by rows, where row n is a block of length n*(n^2 + 1)/2, which is a permutation of the numbers of its constituents; see Comments.

The programs for A375602, there is no canonical definition to state claims against.
-/

/-! ## A375602.P17476651259877468033

`A378198(∑[n]+1)`
-/

namespace A375602.P17476651259877468033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A375602.P17476651259877468033

/-!
# A375603: Array read by antidiagonals: T(m,n) = domination number of the stacked prism graph C_m X P_n.

The programs for A375603, there is no canonical definition to state claims against.
-/

/-! ## A375603.P8202002528078411155

`A043562(A207088(n+1)+A193231(n))`
-/

namespace A375603.P8202002528078411155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A207088 (n + 1) + A193231 n).toNat

end

end A375603.P8202002528078411155

/-! ## A375603.P17043148722021884253

`A055640(A353848(n)+A220579(n+1))`
-/

namespace A375603.P17043148722021884253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A353848 n + A220579 (n + 1)).toNat

end

end A375603.P17043148722021884253

/-! ## A375603.P11485572462101622913

`A055642(A220621(n+1)+A214577(n+1))`
-/

namespace A375603.P11485572462101622913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A220621 (n + 1) + A214577 (n + 1)).toNat

end

end A375603.P11485572462101622913

/-! ## A375603.P15865175682422756029

`A055642(A279078(n+1)+A220621(n+1))`
-/

namespace A375603.P15865175682422756029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A279078 (n + 1) + A220621 (n + 1)).toNat

end

end A375603.P15865175682422756029

/-! ## A375603.P5026240494838291810

`A055642(A367220(n+3)+A220621(n+1))`
-/

namespace A375603.P5026240494838291810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A367220 (n + 3) + A220621 (n + 1)).toNat

end

end A375603.P5026240494838291810

/-!
# A375604: Expansion of e.g.f. 1 / (exp(-x^2) - x).

The programs for A375604, the canonical program `A375604.P5791340643719198407` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375604 has offset 0).

The definition of A375604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375604.P5791340643719198407

`n!*∑{#}[floor(n/2), (n-2*#+1)^#/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375604

/-- `n!*∑{#}[floor(n/2), (n-2*#+1)^#/#!]` -/
def P5791340643719198407.Spec : Prop :=
  ∀ n, P5791340643719198407.a n = (A375604 n : ℚ)

end A375604

/-! ## A375604.P13194097167640673605

`A358064(n+1)/(n+1)`
-/

namespace A375604.P13194097167640673605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358064 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375604.P13194097167640673605

namespace A375604

/-- `A358064(n+1)/(n+1)` -/
def P13194097167640673605.Spec : Prop :=
  ∀ n, P13194097167640673605.a n = (A375604 n : ℚ)

end A375604

/-!
# A375606: a(1) = 1; a(n+1) = a(n) + floor(harmonic mean of previous terms).

The programs for A375606, there is no canonical definition to state claims against.
-/

/-! ## A375606.P10796975735139958796

`A000196(A257464(n)+A000040(n+1))`
-/

namespace A375606.P10796975735139958796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257464 n + A000040 (n + 1)).toNat

end

end A375606.P10796975735139958796

/-! ## A375606.P6372954008002167759

`A000196(A055328(n+6)-A000292(n))`
-/

namespace A375606.P6372954008002167759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A055328 (n + 6) - A000292 n).toNat

end

end A375606.P6372954008002167759

/-! ## A375606.P16825762252454125305

`A000196(A317538(n+1)+A227327(n+1))`
-/

namespace A375606.P16825762252454125305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A317538 (n + 1) + A227327 (n + 1)).toNat

end

end A375606.P16825762252454125305

/-! ## A375606.P4756362269700146967

`A000196(A274233(n+2)+A010888(3*n))`
-/

namespace A375606.P4756362269700146967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A274233 (n + 2) + A010888 (3 * n)).toNat

end

end A375606.P4756362269700146967

/-! ## A375606.P11691926660388138350

`A000196(A257464(n)+A206913(3*n+2))`
-/

namespace A375606.P11691926660388138350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257464 n + A206913 (3 * n + 2)).toNat

end

end A375606.P11691926660388138350

/-!
# A375607: Expansion of e.g.f. 1 / (exp(-x^3) - x).

The programs for A375607, the canonical program `A375607.P3248233312239696606` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375607 has offset 0).

The definition of A375607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375607.P3248233312239696606

`n!*∑{#}[floor(n/3), (n-3*#+1)^#/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375607

/-- `n!*∑{#}[floor(n/3), (n-3*#+1)^#/#!]` -/
def P3248233312239696606.Spec : Prop :=
  ∀ n, P3248233312239696606.a n = (A375607 n : ℚ)

end A375607

/-! ## A375607.P2353946947384243732

`A358065(n+1)/(n+1)`
-/

namespace A375607.P2353946947384243732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358065 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375607.P2353946947384243732

namespace A375607

/-- `A358065(n+1)/(n+1)` -/
def P2353946947384243732.Spec : Prop :=
  ∀ n, P2353946947384243732.a n = (A375607 n : ℚ)

end A375607

/-! ## A375607.P15991533735600894058

`A032742(∑{digits}[n, #!]*A084627(n))`
-/

namespace A375607.P15991533735600894058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) * A084627 n).toNat

end

end A375607.P15991533735600894058

namespace A375607

/-- `A032742(∑{digits}[n, #!]*A084627(n))` -/
def P15991533735600894058.Spec : Prop :=
  ∀ n, P15991533735600894058.a n = A375607 n

end A375607

/-!
# A375608: Expansion of e.g.f. 1 / (exp(x^2) - x).

The programs for A375608, there is no canonical definition to state claims against.
-/

/-! ## A375608.P306837713238085421

`A103328(A000111(n))-A002868(n)`
-/

namespace A375608.P306837713238085421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 (A000111 n).toNat - A002868 n

end

end A375608.P306837713238085421

/-! ## A375608.P3781158645492723520

`A063422(n)-A305932(A006325(n))`
-/

namespace A375608.P3781158645492723520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063422 n - A305932 (A006325 n).toNat

end

end A375608.P3781158645492723520

/-!
# A375609: Expansion of e.g.f. 1 / (exp(x^3) - x).

The programs for A375609, there is no canonical definition to state claims against.
-/

/-! ## A375609.P2260053000218506476

`a(n-1)/n^(-1)+A000038(n)-∑{digits}[n, #!]*A079944(2^n*n!)` with `a(0)=1, a(1)=1`
-/

namespace A375609.P2260053000218506476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (A000038 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) * A079944 (2 ^ n * Nat.factorial n) : ℚ)

end

end A375609.P2260053000218506476

/-! ## A375609.P6260652629656817247

`A010872(A007696(n))-A052796(n)`
-/

namespace A375609.P6260652629656817247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A007696 n).toNat - A052796 n

end

end A375609.P6260652629656817247

/-!
# A375610: Expansion of e.g.f. 1 / (exp(-x) - x^3).

The programs for A375610, the canonical program `A375610.P1443937386355294274` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375610 has offset 0).

The definition of A375610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375610.P1443937386355294274

`n!*∑{#}[floor(n/3), (#+1)^(n-3*#)/(n-3*#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375610

/-- `n!*∑{#}[floor(n/3), (#+1)^(n-3*#)/(n-3*#)!]` -/
def P1443937386355294274.Spec : Prop :=
  ∀ n, P1443937386355294274.a n = (A375610 n : ℚ)

end A375610

/-! ## A375610.P12626873784118504372

`A016777(A362391(n)-A362381(n))`
-/

namespace A375610.P12626873784118504372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A362391 n - A362381 n).toNat

end

end A375610.P12626873784118504372

namespace A375610

/-- `A016777(A362391(n)-A362381(n))` -/
def P12626873784118504372.Spec : Prop :=
  ∀ n, P12626873784118504372.a n = A375610 n

end A375610

/-! ## A375610.P7059443035231227985

`A037915(A344854(n))`
-/

namespace A375610.P7059443035231227985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A344854 n).toNat

end

end A375610.P7059443035231227985

namespace A375610

/-- `A037915(A344854(n))` -/
def P7059443035231227985.Spec : Prop :=
  ∀ n, P7059443035231227985.a n = A375610 n

end A375610

/-!
# A375611: Numbers k whose symmetric representation of sigma(k) has at least a part with maximum width 2.

The programs for A375611, there is no canonical definition to state claims against.
-/

/-! ## A375611.P9528773459361376971

`eq[2, A250068(1+n)]+1`
-/

namespace A375611.P9528773459361376971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375611.P9528773459361376971

/-! ## A375611.P4367912917534025977

`eq[2, A250068(A028310(n))]`
-/

namespace A375611.P4367912917534025977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375611.P4367912917534025977

/-! ## A375611.P17702070093633639836

`A020725(eq[2, A250068(n+1)])`
-/

namespace A375611.P17702070093633639836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375611.P17702070093633639836

/-! ## A375611.P5806574200743884747

`A065475(eq[2, A250068(n+1)])`
-/

namespace A375611.P5806574200743884747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375611.P5806574200743884747

/-! ## A375611.P1484741941324929379

`eq[2, A250068(A233583(n+1))]`
-/

namespace A375611.P1484741941324929379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375611.P1484741941324929379

/-! ## A375611.P7338509239153480061

`∪[A352030(n+1), A376333(n+1)]`
-/

namespace A375611.P7338509239153480061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375611.P7338509239153480061

/-!
# A375616: a(n) is the number of lucky cars in all parking functions of order n.

The programs for A375616, there is no canonical definition to state claims against.
-/

/-! ## A375616.P11659854801836763345

`∑{#}[n-1, (#+1)*A370832(C(n+1, 2)+#+1)]`
-/

namespace A375616.P11659854801836763345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * A370832 (Nat.choose (n + 1) 2 + (k + 1))

end

end A375616.P11659854801836763345

/-! ## A375616.P1982814290292602043

`∑{#}[n-1, A374756(C(n, 2)+#+1)]`
-/

namespace A375616.P1982814290292602043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A374756 (Nat.choose n 2 + (k + 1))

end

end A375616.P1982814290292602043

/-! ## A375616.P10928953000985050449

`(∑[n]+n)*(n+1)^(n-2)`
-/

namespace A375616.P10928953000985050449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A375616.P10928953000985050449

/-! ## A375616.P2065699585318263146

`A053506(n+1)-A053507(n+1)`
-/

namespace A375616.P2065699585318263146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) - A053507 (n + 1)

end

end A375616.P2065699585318263146

/-! ## A375616.P6298759685663379113

`n*A003308(n+1)/2-A053507(n+1)`
-/

namespace A375616.P6298759685663379113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003308 (n + 1) : ℚ) / 2 - (A053507 (n + 1) : ℚ)

end

end A375616.P6298759685663379113

/-! ## A375616.P1274888394655166764

`A089945(n)-(n+1)^n-A053507(n+1)`
-/

namespace A375616.P1274888394655166764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089945 n - ((n + 1) ^ n : ℤ) - A053507 (n + 1)

end

end A375616.P1274888394655166764

/-! ## A375616.P8683692799059601156

`A066274(n+1)/(n+1)-A053507(n+1)`
-/

namespace A375616.P8683692799059601156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (n + 1 : ℚ) - (A053507 (n + 1) : ℚ)

end

end A375616.P8683692799059601156

/-! ## A375616.P6877081638823411231

`A244135(∑[n]+1)-A053507(n+1)`
-/

namespace A375616.P6877081638823411231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244135 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A053507 (n + 1)

end

end A375616.P6877081638823411231

/-! ## A375616.P4820441993702710742

`A358773(A332765(n+2))+A055861(n)-A053507(n+1)`
-/

namespace A375616.P4820441993702710742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A332765 (n + 2)).toNat + A055861 n - A053507 (n + 1)

end

end A375616.P4820441993702710742

/-!
# A375619: a(n) is the largest integer such that there exists a simple graph with n vertices, a(n) edges, and no cycles of length 0 mod 4.

The programs for A375619, the canonical program `A375619.P858529260229645028` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375619 has offset 1).

The definition of A375619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375619.P858529260229645028

`floor(19/12*n)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375619

/-- `floor(19/12*n)` -/
def P858529260229645028.Spec : Prop :=
  ∀ n, P858529260229645028.a n = A375619 (n + 1)

theorem P858529260229645028.correct : P858529260229645028.Spec := by
  intro n
  simp only [A375619, Nat.add_sub_cancel]

end A375619

/-! ## A375619.P3240416753532983866

`ogf((x+2x^2+x^3+2x^4+x^5+2x^6+2x^7+x^8+2x^9+x^10+2x^11+2x^12)/(1-x-x^12+x^13))`
-/

namespace A375619.P3240416753532983866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A375619.P3240416753532983866

namespace A375619

/-- `ogf((x+2x^2+x^3+2x^4+x^5+2x^6+2x^7+x^8+2x^9+x^10+2x^11+2x^12)/(1-x-x^12+x^13))` -/
def P3240416753532983866.Spec : Prop :=
  ∀ n, P3240416753532983866.a n = A375619 (n + 1)

end A375619

/-! ## A375619.P14476782084016537022

`comp[A057349(n+1)-9]`
-/

namespace A375619.P14476782084016537022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057349 (n + 1) - 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375619.P14476782084016537022

namespace A375619

/-- `comp[A057349(n+1)-9]` -/
def P14476782084016537022.Spec : Prop :=
  ∀ n, (P14476782084016537022.a n : ℤ) = A375619 (n + 1)

end A375619

/-! ## A375619.P11100294466344568083

`comp[A083089(n+2)+n]`
-/

namespace A375619.P11100294466344568083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375619.P11100294466344568083

namespace A375619

/-- `comp[A083089(n+2)+n]` -/
def P11100294466344568083.Spec : Prop :=
  ∀ n, (P11100294466344568083.a n : ℤ) = A375619 (n + 1)

end A375619

/-! ## A375619.P12801724155268480481

`comp[∑[A291454(n+4)]+n]`
-/

namespace A375619.P12801724155268480481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375619.P12801724155268480481

namespace A375619

/-- `comp[∑[A291454(n+4)]+n]` -/
def P12801724155268480481.Spec : Prop :=
  ∀ n, (P12801724155268480481.a n : ℤ) = A375619 (n + 1)

end A375619

/-! ## A375619.P9105599632954683083

`A230197(A047346(n+1))+n`
-/

namespace A375619.P9105599632954683083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (A047346 (n + 1)).toNat + (n : ℤ)

end

end A375619.P9105599632954683083

namespace A375619

/-- `A230197(A047346(n+1))+n` -/
def P9105599632954683083.Spec : Prop :=
  ∀ n, P9105599632954683083.a n = A375619 (n + 1)

end A375619

/-! ## A375619.P2191544659877934860

`A152467(A258011(n+1))+n`
-/

namespace A375619.P2191544659877934860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A258011 (n + 1)).toNat + (n : ℤ)

end

end A375619.P2191544659877934860

namespace A375619

/-- `A152467(A258011(n+1))+n` -/
def P2191544659877934860.Spec : Prop :=
  ∀ n, P2191544659877934860.a n = A375619 (n + 1)

end A375619

/-! ## A375619.P4026263178130342699

`A002265(A008458(n)+A002264(n))`
-/

namespace A375619.P4026263178130342699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008458 n + A002264 n).toNat

end

end A375619.P4026263178130342699

namespace A375619

/-- `A002265(A008458(n)+A002264(n))` -/
def P4026263178130342699.Spec : Prop :=
  ∀ n, P4026263178130342699.a n = A375619 (n + 1)

end A375619

/-! ## A375619.P14572574073959835903

`A342696(A008601(n))`
-/

namespace A375619.P14572574073959835903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A008601 n).toNat

end

end A375619.P14572574073959835903

namespace A375619

/-- `A342696(A008601(n))` -/
def P14572574073959835903.Spec : Prop :=
  ∀ n, P14572574073959835903.a n = A375619 (n + 1)

end A375619

/-!
# A375621: a(n) = (a(n-3)*a(n-5) + a(n-1)*a(n-7))/a(n-8) with a(0) = ... = a(7) = 1.

The programs for A375621, the canonical program `A375621.P3365025937702841593` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375621 has offset 0).

The definition of A375621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375621.P3365025937702841593

`(a(n-3)*a(n-5)+a(n-1)*a(n-7))/a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375621

/-- `(a(n-3)*a(n-5)+a(n-1)*a(n-7))/a(n-8)` -/
def P3365025937702841593.Spec : Prop :=
  ∀ n, P3365025937702841593.a n = (A375621 n : ℚ)

end A375621

/-!
# A375623: Maximum value of F(p) = Sum (|i-j| - |p(i)-p(j)|)^2 where the sum is over all 1 <= i < j <= n, for all permutations p in the symmetric group S_n.

The programs for A375623, there is no canonical definition to state claims against.
-/

/-! ## A375623.P1346153491004921110

`A182568(A099392(n+1))%A000982(A005578(n+1))`
-/

namespace A375623.P1346153491004921110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182568 (A099392 (n + 1)).toNat) (A000982 (A005578 (n + 1)).toNat)

end

end A375623.P1346153491004921110

/-! ## A375623.P12097406445259217621

`(floor(n²/4)-A090174(A306896(n+1)))*floor(n²/4)`
-/

namespace A375623.P12097406445259217621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n ^ 2 : ℚ) / 4⌋ - A090174 (A306896 (n + 1)).toNat) * ⌊(n ^ 2 : ℚ) / 4⌋

end

end A375623.P12097406445259217621

/-! ## A375623.P11942505248697342397

`A002620(A134444(A000982(n²)))`
-/

namespace A375623.P11942505248697342397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A134444 (A000982 (n ^ 2)).toNat).toNat

end

end A375623.P11942505248697342397

/-! ## A375623.P12491073707317503083

`A116564(A118028(n))`
-/

namespace A375623.P12491073707317503083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116564 (A118028 n).toNat

end

end A375623.P12491073707317503083

/-! ## A375623.P14150818016013907776

`A116564(A218706(n))`
-/

namespace A375623.P14150818016013907776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116564 (A218706 n).toNat

end

end A375623.P14150818016013907776

/-!
# A375624: a(n) is the number of integers of the form d_1 - d_2 + d_3 - d_4 + ... + (-1)^k d_k, where n = d_1 > d_2 > ... > d_k = 1, d_{i+1} divides d_i for 1 <= i <= k-1.

The programs for A375624, there is no canonical definition to state claims against.
-/

/-! ## A375624.P16285297696769699495

`A083345(2^A378223(n+1))`
-/

namespace A375624.P16285297696769699495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378223 (n + 1) : ℤ))).toNat

end

end A375624.P16285297696769699495

/-! ## A375624.P160255935386805994

`A162520(A253249(2*(n+1))-2)`
-/

namespace A375624.P160255935386805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162520 (A253249 (2 * (n + 1)) - 2).toNat

end

end A375624.P160255935386805994

/-! ## A375624.P9866514592560442923

`A345182(n+1)+A209229(A064640(n))`
-/

namespace A375624.P9866514592560442923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (n + 1) + A209229 (A064640 n).toNat

end

end A375624.P9866514592560442923

/-! ## A375624.P5542116642715900445

`A345182(n+1)+A343958(A084916(n+1))`
-/

namespace A375624.P5542116642715900445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (n + 1) + A343958 (A084916 (n + 1)).toNat

end

end A375624.P5542116642715900445

/-! ## A375624.P14878769920956716291

`or(A051731(A386051(n+1)), A345182(n+1))`
-/

namespace A375624.P14878769920956716291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A386051 (n + 1)).toNat) (A345182 (n + 1))

end

end A375624.P14878769920956716291

/-!
# A375626: Irregular table read by rows: row n is the integers of the form d_1 - d_2 + d_3 - d_4 + ... + (-1)^k d_k, where n = d_1 > d_2 > ... > d_k = 1, d_{i+1} divides d_i for 1 <= i <= k-1.

The programs for A375626, there is no canonical definition to state claims against.
-/

/-! ## A375626.P11796465668840281529

`A375207(A284301(n)+A001222(n+1))`
-/

namespace A375626.P11796465668840281529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375207 (A284301 n + A001222 (n + 1)).toNat

end

end A375626.P11796465668840281529

/-! ## A375626.P8582837190403729435

`A375207(A323438(n+1)+A284301(n))`
-/

namespace A375626.P8582837190403729435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375207 (A323438 (n + 1) + A284301 n).toNat

end

end A375626.P8582837190403729435

/-!
# A375627: Expansion of e.g.f. exp(2*x^2) / (1 - x * exp(x^2)).

The programs for A375627, the canonical program `A375627.P8584721338507709091` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375627 has offset 0).

The definition of A375627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375627.P8584721338507709091

`n!*∑{#}[floor(n/2), (n-2*#+2)^#/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375627

/-- `n!*∑{#}[floor(n/2), (n-2*#+2)^#/#!]` -/
def P8584721338507709091.Spec : Prop :=
  ∀ n, P8584721338507709091.a n = (A375627 n : ℚ)

end A375627

/-! ## A375627.P7115343829737403207

`A096111(A294962(floor(n/2)*n))`
-/

namespace A375627.P7115343829737403207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A294962 (⌊(n : ℚ) / 2⌋ * (n : ℤ)).toNat).toNat

end

end A375627.P7115343829737403207

namespace A375627

/-- `A096111(A294962(floor(n/2)*n))` -/
def P7115343829737403207.Spec : Prop :=
  ∀ n, P7115343829737403207.a n = A375627 n

end A375627

/-!
# A375628: Expansion of e.g.f. exp(2*x^3) / (1 - x * exp(x^3)).

The programs for A375628, the canonical program `A375628.P10885936679671862720` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375628 has offset 0).

The definition of A375628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375628.P10885936679671862720

`n!*∑{#}[floor(n/3), (n-3*#+2)^#/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375628

/-- `n!*∑{#}[floor(n/3), (n-3*#+2)^#/#!]` -/
def P10885936679671862720.Spec : Prop :=
  ∀ n, P10885936679671862720.a n = (A375628 n : ℚ)

end A375628

/-! ## A375628.P1702222481458485794

`A000120(A191805(n))*A000142(n)`
-/

namespace A375628.P1702222481458485794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A191805 n).toNat * A000142 n

end

end A375628.P1702222481458485794

namespace A375628

/-- `A000120(A191805(n))*A000142(n)` -/
def P1702222481458485794.Spec : Prop :=
  ∀ n, P1702222481458485794.a n = A375628 n

end A375628

/-! ## A375628.P15694477693755649172

`A000142(n)*A014420(A218672(n))`
-/

namespace A375628.P15694477693755649172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A014420 (A218672 n).toNat

end

end A375628.P15694477693755649172

namespace A375628

/-- `A000142(n)*A014420(A218672(n))` -/
def P15694477693755649172.Spec : Prop :=
  ∀ n, P15694477693755649172.a n = A375628 n

end A375628

/-!
# A375629: Expansion of e.g.f. exp(2*x) / (1 - x^2 * exp(x)).

The programs for A375629, there is no canonical definition to state claims against.
-/

/-! ## A375629.P2254375651580677805

`∑[A285328(A381346(n+1))]`
-/

namespace A375629.P2254375651580677805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (A381346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375629.P2254375651580677805

/-! ## A375629.P15271871481651208410

`A117484(A001147(n))+A002793(n)`
-/

namespace A375629.P15271871481651208410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (A001147 n).toNat + A002793 n

end

end A375629.P15271871481651208410

/-!
# A375630: Expansion of e.g.f. exp(2*x) / (1 - x^3 * exp(x)).

The programs for A375630, the canonical program `A375630.P17004595587337680768` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375630 has offset 0).

The definition of A375630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375630.P17004595587337680768

`n!*∑{#}[floor(n/3), (#+2)^(n-3*#)/(n-3*#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375630

/-- `n!*∑{#}[floor(n/3), (#+2)^(n-3*#)/(n-3*#)!]` -/
def P17004595587337680768.Spec : Prop :=
  ∀ n, P17004595587337680768.a n = (A375630 n : ℚ)

end A375630

/-! ## A375630.P16489284435296193269

`A034887(A142983(n+1)+2)`
-/

namespace A375630.P16489284435296193269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A142983 (n + 1) + 2).toNat

end

end A375630.P16489284435296193269

namespace A375630

/-- `A034887(A142983(n+1)+2)` -/
def P16489284435296193269.Spec : Prop :=
  ∀ n, P16489284435296193269.a n = A375630 n

end A375630

/-!
# A375631: Expansion of e.g.f. exp(2*x) / (1 - x^2/2 * exp(x)).

The programs for A375631, the canonical program `A375631.P15813850556033431576` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375631 has offset 0).

The definition of A375631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375631.P15813850556033431576

`n!*∑{#}[floor(n/2), (#+2)^(n-2*#)/(2^#*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375631

/-- `n!*∑{#}[floor(n/2), (#+2)^(n-2*#)/(2^#*(n-2*#)!)]` -/
def P15813850556033431576.Spec : Prop :=
  ∀ n, P15813850556033431576.a n = (A375631 n : ℚ)

end A375631

/-! ## A375631.P12301407207723330753

`∑[A100196(∑[A319175(n)])]`
-/

namespace A375631.P12301407207723330753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319175 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375631.P12301407207723330753

namespace A375631

/-- `∑[A100196(∑[A319175(n)])]` -/
def P12301407207723330753.Spec : Prop :=
  ∀ n, P12301407207723330753.a n = A375631 n

end A375631

/-!
# A375632: Expansion of e.g.f. exp(2*x) / (1 - x^3/6 * exp(x)).

The programs for A375632, the canonical program `A375632.P7184306820358502835` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375632 has offset 0).

The definition of A375632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375632.P7184306820358502835

`n!*∑{#}[floor(n/3), (#+2)^(n-3*#)/(6^#*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375632

/-- `n!*∑{#}[floor(n/3), (#+2)^(n-3*#)/(6^#*(n-3*#)!)]` -/
def P7184306820358502835.Spec : Prop :=
  ∀ n, P7184306820358502835.a n = (A375632 n : ℚ)

end A375632

/-! ## A375632.P2788237784522272033

`A008620(A005843(n)+A000602(2*(n+1)))`
-/

namespace A375632.P2788237784522272033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A005843 n + A000602 (2 * (n + 1))).toNat

end

end A375632.P2788237784522272033

namespace A375632

/-- `A008620(A005843(n)+A000602(2*(n+1)))` -/
def P2788237784522272033.Spec : Prop :=
  ∀ n, P2788237784522272033.a n = A375632 n

end A375632

/-! ## A375632.P17934384035375455381

`A086161(A022342(n+1)+A000602(2*(n+1)))`
-/

namespace A375632.P17934384035375455381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A022342 (n + 1) + A000602 (2 * (n + 1))).toNat

end

end A375632.P17934384035375455381

namespace A375632

/-- `A086161(A022342(n+1)+A000602(2*(n+1)))` -/
def P17934384035375455381.Spec : Prop :=
  ∀ n, P17934384035375455381.a n = A375632 n

end A375632

/-!
# A375633: Expansion of e.g.f. exp(x^2) / (1 - x * exp(x^2/2)).

The programs for A375633, the canonical program `A375633.P7263100394438211048` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375633 has offset 0).

The definition of A375633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375633.P7263100394438211048

`n!*∑{#}[floor(n/2), ((n-2*#+2)/2)^#/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375633

/-- `n!*∑{#}[floor(n/2), ((n-2*#+2)/2)^#/#!]` -/
def P7263100394438211048.Spec : Prop :=
  ∀ n, P7263100394438211048.a n = (A375633 n : ℚ)

end A375633

/-! ## A375633.P7960932153112418919

`A235043(8*A367012(n+1))`
-/

namespace A375633.P7960932153112418919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (8 * A367012 (n + 1)).toNat

end

end A375633.P7960932153112418919

namespace A375633

/-- `A235043(8*A367012(n+1))` -/
def P7960932153112418919.Spec : Prop :=
  ∀ n, P7960932153112418919.a n = A375633 n

end A375633

/-!
# A375634: Expansion of e.g.f. exp(x^3) / (1 - x * exp(x^3/6)).

The programs for A375634, there is no canonical definition to state claims against.
-/

/-! ## A375634.P8008430675494720057

`A160162(A067687(n))`
-/

namespace A375634.P8008430675494720057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A067687 n).toNat

end

end A375634.P8008430675494720057

/-! ## A375634.P18299077954152465756

`A160162(A215928(n))`
-/

namespace A375634.P18299077954152465756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A215928 n).toNat

end

end A375634.P18299077954152465756

/-!
# A375635: The number of infinitary divisors of n!.

The programs for A375635, there is no canonical definition to state claims against.
-/

/-! ## A375635.P15222050637150706296

`2^∑{e}[∏{e}[n!, #+1], #]`
-/

namespace A375635.P15222050637150706296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A375635.P15222050637150706296

/-! ## A375635.P5492624522204313109

`∏{e}[n!, A001316(#)]`
-/

namespace A375635.P5492624522204313109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001316 (Nat.factorization (f1 n) p)

end

end A375635.P5492624522204313109

/-! ## A375635.P2970096039781337634

`∏{e}[∏{e}[n!, #+1], A000079(#)]`
-/

namespace A375635.P2970096039781337634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000079 (Nat.factorization (f1 n) p)

end

end A375635.P2970096039781337634

/-! ## A375635.P1054925079259944454

`∏{e}[-∏[n-C(2, n+2)], A278222(#)]`
-/

namespace A375635.P1054925079259944454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278222 (Nat.factorization (f1 n).natAbs p)

end

end A375635.P1054925079259944454

/-! ## A375635.P301770267779723616

`A073103(A358056(n+1))`
-/

namespace A375635.P301770267779723616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A358056 (n + 1)).toNat

end

end A375635.P301770267779723616

/-!
# A375639: Expansion of e.g.f. 1 / (1 + x^2 * log(1 - x))^2.

The programs for A375639, there is no canonical definition to state claims against.
-/

/-! ## A375639.P5360248022867437365

`A134451(A027271(n))*A355287(n)`
-/

namespace A375639.P5360248022867437365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A027271 n).toNat * A355287 n

end

end A375639.P5360248022867437365

/-! ## A375639.P5289363835761138715

`A020639(A154638(n))*A355287(n)`
-/

namespace A375639.P5289363835761138715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154638 n).toNat * A355287 n

end

end A375639.P5289363835761138715

/-! ## A375639.P11796557218427107319

`A043529(A360185(n))*A355287(n)`
-/

namespace A375639.P11796557218427107319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A360185 n).toNat * A355287 n

end

end A375639.P11796557218427107319

/-! ## A375639.P1600390707395120849

`A336643(A000079(n)²)*A355287(n)`
-/

namespace A375639.P1600390707395120849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A000079 n ^ 2).toNat * A355287 n

end

end A375639.P1600390707395120849

/-! ## A375639.P4973495239316166559

`A336643(A000079(2*n))*A355287(n)`
-/

namespace A375639.P4973495239316166559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A000079 (2 * n)).toNat * A355287 n

end

end A375639.P4973495239316166559

/-!
# A375641: a(n) is the number of partitions of {1..n} into sets where the largest member is greater than the sum of all the others.

The programs for A375641, there is no canonical definition to state claims against.
-/

/-! ## A375641.P14662419426752554270

`A007970(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A375641.P14662419426752554270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A007970 (a (n - 1)).toNat

end

end A375641.P14662419426752554270

/-! ## A375641.P6080498782757356935

`A261104(∑[floor(ϕ*ϕ*a(n-1))]²)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A375641.P6080498782757356935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A375641.P6080498782757356935

/-! ## A375641.P14251878598746802957

`A261104(∑[3*a(n-1)-a(n-2)]²)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A375641.P14251878598746802957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A375641.P14251878598746802957

/-!
# A375649: Number of comparisons and swaps in the Batcher odd-even merge sort needed to sort n items.

The programs for A375649, there is no canonical definition to state claims against.
-/

/-! ## A375649.P137175057716934489

`A071045(A002265(n))+A003075(n+1)`
-/

namespace A375649.P137175057716934489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A002265 n).toNat + A003075 (n + 1)

end

end A375649.P137175057716934489

/-! ## A375649.P18058563331842809378

`A106821(A103380(3*(n+1)))+A003075(n+1)`
-/

namespace A375649.P18058563331842809378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (A103380 (3 * (n + 1))).toNat + A003075 (n + 1)

end

end A375649.P18058563331842809378

/-! ## A375649.P8201746233864304758

`A350289(A133494(n))+A161830(n)`
-/

namespace A375649.P8201746233864304758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350289 (A133494 n).toNat + A161830 n

end

end A375649.P8201746233864304758

/-! ## A375649.P6725098646882923138

`A184794(n+1)-A121373(A183112(n))`
-/

namespace A375649.P6725098646882923138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184794 (n + 1) - A121373 (A183112 n).toNat

end

end A375649.P6725098646882923138

/-!
# A375651: Expansion of e.g.f. exp(x + x^2 * exp(x)).

The programs for A375651, the canonical program `A375651.P3249219682576159078` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375651 has offset 0).

The definition of A375651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375651.P3249219682576159078

`n!*∑{#}[floor(n/2), (#+1)^(n-2*#)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375651

/-- `n!*∑{#}[floor(n/2), (#+1)^(n-2*#)/(#!*(n-2*#)!)]` -/
def P3249219682576159078.Spec : Prop :=
  ∀ n, P3249219682576159078.a n = (A375651 n : ℚ)

end A375651

/-! ## A375651.P12680436510376760984

`∏{p}[A027416(2*(n+1))², #]`
-/

namespace A375651.P12680436510376760984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027416 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A375651.P12680436510376760984

namespace A375651

/-- `∏{p}[A027416(2*(n+1))², #]` -/
def P12680436510376760984.Spec : Prop :=
  ∀ n, (P12680436510376760984.a n : ℤ) = A375651 n

end A375651

/-!
# A375652: Expansion of e.g.f. exp(2*x + x^2 * exp(x)).

The programs for A375652, the canonical program `A375652.P168052061360738008` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375652 has offset 0).

The definition of A375652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375652.P168052061360738008

`n!*∑{#}[floor(n/2), (#+2)^(n-2*#)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375652

/-- `n!*∑{#}[floor(n/2), (#+2)^(n-2*#)/(#!*(n-2*#)!)]` -/
def P168052061360738008.Spec : Prop :=
  ∀ n, P168052061360738008.a n = (A375652 n : ℚ)

end A375652

/-! ## A375652.P5535405061171284320

`A324342(A213233(n)+A001316(n))`
-/

namespace A375652.P5535405061171284320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324342 (A213233 n + A001316 n).toNat

end

end A375652.P5535405061171284320

namespace A375652

/-- `A324342(A213233(n)+A001316(n))` -/
def P5535405061171284320.Spec : Prop :=
  ∀ n, P5535405061171284320.a n = A375652 n

end A375652

/-!
# A375653: Expansion of e.g.f. exp(x^2 + x * exp(x^2)).

The programs for A375653, the canonical program `A375653.P15752615552631876338` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375653 has offset 0).

The definition of A375653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375653.P15752615552631876338

`n!*∑{#}[floor(n/2), (n-2*#+1)^#/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375653

/-- `n!*∑{#}[floor(n/2), (n-2*#+1)^#/(#!*(n-2*#)!)]` -/
def P15752615552631876338.Spec : Prop :=
  ∀ n, P15752615552631876338.a n = (A375653 n : ℚ)

end A375653

/-! ## A375653.P17946120584909048608

`A299476(A002075(n+1))`
-/

namespace A375653.P17946120584909048608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (A002075 (n + 1)).toNat

end

end A375653.P17946120584909048608

namespace A375653

/-- `A299476(A002075(n+1))` -/
def P17946120584909048608.Spec : Prop :=
  ∀ n, P17946120584909048608.a n = A375653 n

end A375653

/-!
# A375654: Expansion of e.g.f. exp(2*x^2 + x * exp(x^2)).

The programs for A375654, the canonical program `A375654.P6727666546107979872` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375654 has offset 0).

The definition of A375654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375654.P6727666546107979872

`n!*∑{#}[floor(n/2), (n-2*#+2)^#/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375654

/-- `n!*∑{#}[floor(n/2), (n-2*#+2)^#/(#!*(n-2*#)!)]` -/
def P6727666546107979872.Spec : Prop :=
  ∀ n, P6727666546107979872.a n = (A375654 n : ℚ)

end A375654

/-! ## A375654.P7603661903202058335

`A373520(n)+A004442(A361277(∑[n+3]))`
-/

namespace A375654.P7603661903202058335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373520 n + A004442 (A361277 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A375654.P7603661903202058335

namespace A375654

/-- `A373520(n)+A004442(A361277(∑[n+3]))` -/
def P7603661903202058335.Spec : Prop :=
  ∀ n, P7603661903202058335.a n = A375654 n

end A375654

/-! ## A375654.P9256054938206186852

`A373525(n)+A004442(A361277(∑[n+3]))`
-/

namespace A375654.P9256054938206186852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373525 n + A004442 (A361277 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A375654.P9256054938206186852

namespace A375654

/-- `A373525(n)+A004442(A361277(∑[n+3]))` -/
def P9256054938206186852.Spec : Prop :=
  ∀ n, P9256054938206186852.a n = A375654 n

end A375654

/-!
# A375655: Expansion of e.g.f. exp(x^2 + x * exp(x^2/2)).

The programs for A375655, the canonical program `A375655.P2367745601992359640` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375655 has offset 0).

The definition of A375655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375655.P2367745601992359640

`n!*∑{#}[floor(n/2), ((n-2*#+2)/2)^#/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375655

/-- `n!*∑{#}[floor(n/2), ((n-2*#+2)/2)^#/(#!*(n-2*#)!)]` -/
def P2367745601992359640.Spec : Prop :=
  ∀ n, P2367745601992359640.a n = (A375655 n : ℚ)

end A375655

/-! ## A375655.P17867586300112361238

`A080098(A308863(n))`
-/

namespace A375655.P17867586300112361238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A308863 n).toNat

end

end A375655.P17867586300112361238

namespace A375655

/-- `A080098(A308863(n))` -/
def P17867586300112361238.Spec : Prop :=
  ∀ n, P17867586300112361238.a n = A375655 n

end A375655

/-!
# A375656: Expansion of e.g.f. exp(x^3 + x * exp(x^3/6)).

The programs for A375656, the canonical program `A375656.P229397387574357603` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375656 has offset 0).

The definition of A375656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375656.P229397387574357603

`n!*∑{#}[floor(n/3), ((n-3*#+6)/6)^#/(#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375656

/-- `n!*∑{#}[floor(n/3), ((n-3*#+6)/6)^#/(#!*(n-3*#)!)]` -/
def P229397387574357603.Spec : Prop :=
  ∀ n, P229397387574357603.a n = (A375656 n : ℚ)

end A375656

/-!
# A375659: For 0<=k<=n, T(n,k) = the number of Dyck-type lattice paths of length n, starting at the point (0,k), triangle T read by rows.

The programs for A375659, there is no canonical definition to state claims against.
-/

/-! ## A375659.P3116547302987675191

`A062050(∑[A061554(n)])`
-/

namespace A375659.P3116547302987675191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375659.P3116547302987675191

/-!
# A375660: Expansion of e.g.f. 1 / (1 - x * (exp(x) - 1))^2.

The programs for A375660, there is no canonical definition to state claims against.
-/

/-! ## A375660.P4071166441367908939

`A194173(A377681(n)+1)`
-/

namespace A375660.P4071166441367908939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194173 (A377681 n + 1).toNat

end

end A375660.P4071166441367908939

/-! ## A375660.P13305267116464168507

`A008615(4*A351734(n))`
-/

namespace A375660.P13305267116464168507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A351734 n).toNat

end

end A375660.P13305267116464168507

/-!
# A375661: Expansion of e.g.f. 1 / (1 - x * (exp(x) - 1))^3.

The programs for A375661, there is no canonical definition to state claims against.
-/

/-! ## A375661.P14393035567702458524

`A005843(A367881(n))-A377720(n)`
-/

namespace A375661.P14393035567702458524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A367881 n).toNat - A377720 n

end

end A375661.P14393035567702458524

/-! ## A375661.P12092726158751621143

`A323237(A343771(n+1))*A362836(n)`
-/

namespace A375661.P12092726158751621143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (A343771 (n + 1)).toNat * A362836 n

end

end A375661.P12092726158751621143

/-!
# A375662: Expansion of e.g.f. 1 / (1 - x^2 * (exp(x) - 1))^2.

The programs for A375662, there is no canonical definition to state claims against.
-/

/-! ## A375662.P9988704547440827079

`A143477(A300913(n))*A356949(n)`
-/

namespace A375662.P9988704547440827079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143477 (A300913 n).toNat * A356949 n

end

end A375662.P9988704547440827079

/-! ## A375662.P9786308176960544407

`A042948(A356949(n))`
-/

namespace A375662.P9786308176960544407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A356949 n).toNat

end

end A375662.P9786308176960544407

/-! ## A375662.P3630831304533706633

`A005843(A356949(n))-A000007(n)`
-/

namespace A375662.P3630831304533706633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A356949 n).toNat - A000007 n

end

end A375662.P3630831304533706633

/-! ## A375662.P1594578019283910384

`A137822(A100450(n))*A356949(n)`
-/

namespace A375662.P1594578019283910384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137822 (A100450 n).toNat * A356949 n

end

end A375662.P1594578019283910384

/-!
# A375663: Expansion of e.g.f. 1 / (1 - x^2 * (exp(x) - 1))^3.

The programs for A375663, there is no canonical definition to state claims against.
-/

/-! ## A375663.P16571179616222902425

`A297770(A047849(n))*A362892(n)`
-/

namespace A375663.P16571179616222902425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A047849 n).toNat * A362892 n

end

end A375663.P16571179616222902425

/-! ## A375663.P721559716491063965

`A006530(A000400(n))*A371304(n)`
-/

namespace A375663.P721559716491063965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000400 n).toNat * A371304 n

end

end A375663.P721559716491063965

/-! ## A375663.P8295457387573111137

`A099551(A002001(n))*A371304(n)`
-/

namespace A375663.P8295457387573111137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099551 (A002001 n).toNat * A371304 n

end

end A375663.P8295457387573111137

/-!
# A375664: Expansion of e.g.f. 1 / (1 - x * (exp(x^2) - 1))^2.

The programs for A375664, there is no canonical definition to state claims against.
-/

/-! ## A375664.P6354485458530792284

`A051064(A053556(n))*A375561(n)`
-/

namespace A375664.P6354485458530792284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A053556 n).toNat * A375561 n

end

end A375664.P6354485458530792284

/-! ## A375664.P14466142056607735734

`A051064(A363812(n))*A357966(n)`
-/

namespace A375664.P14466142056607735734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A363812 n).toNat * A357966 n

end

end A375664.P14466142056607735734

/-! ## A375664.P1121142946386802831

`A375680(n)/A066099(A053556(n))`
-/

namespace A375664.P1121142946386802831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375680 n : ℚ) / (A066099 (A053556 n).toNat : ℚ)

end

end A375664.P1121142946386802831

/-! ## A375664.P9845316552323532521

`A375680(n)/A368330(A276142(n+1))`
-/

namespace A375664.P9845316552323532521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375680 n : ℚ) / (A368330 (A276142 (n + 1)).toNat : ℚ)

end

end A375664.P9845316552323532521

/-! ## A375664.P13086553269637780488

`A001221(A000085(n+3))*A375588(n)`
-/

namespace A375664.P13086553269637780488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000085 (n + 3)).toNat * A375588 n

end

end A375664.P13086553269637780488

/-!
# A375665: Expansion of e.g.f. 1 / (1 - x * (exp(x^2) - 1))^3.

The programs for A375665, there is no canonical definition to state claims against.
-/

/-! ## A375665.P6796543008154411190

`A072048(A279568(n))*A375682(n)`
-/

namespace A375665.P6796543008154411190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072048 (A279568 n).toNat * A375682 n

end

end A375665.P6796543008154411190

/-! ## A375665.P12924476474736157119

`A375681(n)/A104607(A242783(n))`
-/

namespace A375665.P12924476474736157119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375681 n : ℚ) / (A104607 (A242783 n).toNat : ℚ)

end

end A375665.P12924476474736157119

/-! ## A375665.P9723706158762609617

`A375681(n)/A210961(A335436(n))`
-/

namespace A375665.P9723706158762609617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375681 n : ℚ) / (A210961 (A335436 n).toNat : ℚ)

end

end A375665.P9723706158762609617

/-! ## A375665.P11291018371229199684

`A123073(A295901(n+1))*A375588(n)`
-/

namespace A375665.P11291018371229199684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123073 (A295901 (n + 1)).toNat * A375588 n

end

end A375665.P11291018371229199684

/-!
# A375667: The maximum exponent in the prime factorization of the 5-rough numbers (A007310).

The programs for A375667, the canonical program `A375667.P6684781765441991120` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375667 has offset 1).

The definition of A375667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375667.P6684781765441991120

`A051903(A007310(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375667

/-- `A051903(A007310(n+1))` -/
def P6684781765441991120.Spec : Prop :=
  ∀ n, P6684781765441991120.a n = A375667 (n + 1)

theorem P6684781765441991120.correct : P6684781765441991120.Spec := by
  intro n
  simp only [A375667, Nat.add_sub_cancel]

end A375667

/-! ## A375667.P13806202948038715097

`A051903(comp[(n²+1)%3*n])`
-/

namespace A375667.P13806202948038715097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A375667.P13806202948038715097

namespace A375667

/-- `A051903(comp[(n²+1)%3*n])` -/
def P13806202948038715097.Spec : Prop :=
  ∀ n, P13806202948038715097.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P7591482260390885809

`A051903(lt[n+1-(n-1)*n%2, 4-gcd(3, n)])`
-/

namespace A375667.P7591482260390885809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375667.P7591482260390885809

namespace A375667

/-- `A051903(lt[n+1-(n-1)*n%2, 4-gcd(3, n)])` -/
def P7591482260390885809.Spec : Prop :=
  ∀ n, P7591482260390885809.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P13611780518145013782

`A051903(∑[A382713(n)])`
-/

namespace A375667.P13611780518145013782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375667.P13611780518145013782

namespace A375667

/-- `A051903(∑[A382713(n)])` -/
def P13611780518145013782.Spec : Prop :=
  ∀ n, P13611780518145013782.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P5562444039170490088

`A051903(A254050(n+1))`
-/

namespace A375667.P5562444039170490088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A254050 (n + 1)).toNat

end

end A375667.P5562444039170490088

namespace A375667

/-- `A051903(A254050(n+1))` -/
def P5562444039170490088.Spec : Prop :=
  ∀ n, P5562444039170490088.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P15913520587662845973

`A329885(A091999(n+1))`
-/

namespace A375667.P15913520587662845973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A091999 (n + 1)).toNat

end

end A375667.P15913520587662845973

namespace A375667

/-- `A329885(A091999(n+1))` -/
def P15913520587662845973.Spec : Prop :=
  ∀ n, P15913520587662845973.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P16485723666371853717

`A051903(A052928(n+1)+2*n+1)`
-/

namespace A375667.P16485723666371853717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052928 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A375667.P16485723666371853717

namespace A375667

/-- `A051903(A052928(n+1)+2*n+1)` -/
def P16485723666371853717.Spec : Prop :=
  ∀ n, P16485723666371853717.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P10946575558311618350

`A051903(A249823(n+1))`
-/

namespace A375667.P10946575558311618350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A249823 (n + 1)).toNat

end

end A375667.P10946575558311618350

namespace A375667

/-- `A051903(A249823(n+1))` -/
def P10946575558311618350.Spec : Prop :=
  ∀ n, P10946575558311618350.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P6030521509300701240

`A375039(A249745(n+1))`
-/

namespace A375667.P6030521509300701240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375039 (A249745 (n + 1)).toNat

end

end A375667.P6030521509300701240

namespace A375667

/-- `A375039(A249745(n+1))` -/
def P6030521509300701240.Spec : Prop :=
  ∀ n, P6030521509300701240.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P13291048531997849480

`A375039(A032766(n+1))`
-/

namespace A375667.P13291048531997849480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375039 (A032766 (n + 1)).toNat

end

end A375667.P13291048531997849480

namespace A375667

/-- `A375039(A032766(n+1))` -/
def P13291048531997849480.Spec : Prop :=
  ∀ n, P13291048531997849480.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P1531617164296547023

`A051903(A066070(2*n+1+n))`
-/

namespace A375667.P1531617164296547023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A066070 (2 * n + 1 + n)).toNat

end

end A375667.P1531617164296547023

namespace A375667

/-- `A051903(A066070(2*n+1+n))` -/
def P1531617164296547023.Spec : Prop :=
  ∀ n, P1531617164296547023.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P6214212568783406308

`A051903(A109613(2*n+1+n))`
-/

namespace A375667.P6214212568783406308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A109613 (2 * n + 1 + n)).toNat

end

end A375667.P6214212568783406308

namespace A375667

/-- `A051903(A109613(2*n+1+n))` -/
def P6214212568783406308.Spec : Prop :=
  ∀ n, P6214212568783406308.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P6298130905431165355

`A375670(A038179(n+2))`
-/

namespace A375667.P6298130905431165355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375670 (A038179 (n + 2)).toNat

end

end A375667.P6298130905431165355

namespace A375667

/-- `A375670(A038179(n+2))` -/
def P6298130905431165355.Spec : Prop :=
  ∀ n, P6298130905431165355.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P15553307914946792082

`A375668(A250476(n+1))`
-/

namespace A375667.P15553307914946792082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375668 (A250476 (n + 1)).toNat

end

end A375667.P15553307914946792082

namespace A375667

/-- `A375668(A250476(n+1))` -/
def P15553307914946792082.Spec : Prop :=
  ∀ n, P15553307914946792082.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P7710040655188190035

`A375669(2*A007310(n+1))`
-/

namespace A375667.P7710040655188190035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (2 * A007310 (n + 1)).toNat

end

end A375667.P7710040655188190035

namespace A375667

/-- `A375669(2*A007310(n+1))` -/
def P7710040655188190035.Spec : Prop :=
  ∀ n, P7710040655188190035.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P13437128726196358232

`A375670(2*A007310(n+1))`
-/

namespace A375667.P13437128726196358232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375670 (2 * A007310 (n + 1)).toNat

end

end A375667.P13437128726196358232

namespace A375667

/-- `A375670(2*A007310(n+1))` -/
def P13437128726196358232.Spec : Prop :=
  ∀ n, P13437128726196358232.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P15132208309657232261

`A375669(A007310(n+1)+A007310(n+1))`
-/

namespace A375667.P15132208309657232261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (A007310 (n + 1) + A007310 (n + 1)).toNat

end

end A375667.P15132208309657232261

namespace A375667

/-- `A375669(A007310(n+1)+A007310(n+1))` -/
def P15132208309657232261.Spec : Prop :=
  ∀ n, P15132208309657232261.a n = A375667 (n + 1)

end A375667

/-! ## A375667.P9316457580217700878

`A375670(A007310(n+1)+A007310(n+1))`
-/

namespace A375667.P9316457580217700878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375670 (A007310 (n + 1) + A007310 (n + 1)).toNat

end

end A375667.P9316457580217700878

namespace A375667

/-- `A375670(A007310(n+1)+A007310(n+1))` -/
def P9316457580217700878.Spec : Prop :=
  ∀ n, P9316457580217700878.a n = A375667 (n + 1)

end A375667

/-!
# A375668: The maximum exponent in the prime factorization of the 7-rough numbers (A007775).

The programs for A375668, the canonical program `A375668.P7310849845523855614` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375668 has offset 1).

The definition of A375668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375668.P7310849845523855614

`A051903(A007775(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375668

/-- `A051903(A007775(n+1))` -/
def P7310849845523855614.Spec : Prop :=
  ∀ n, P7310849845523855614.a n = A375668 (n + 1)

theorem P7310849845523855614.correct : P7310849845523855614.Spec := by
  intro n
  simp only [A375668, Nat.add_sub_cancel]

end A375668

/-! ## A375668.P7045380080223163901

`A051903(A084968(n+1)/7)`
-/

namespace A375668.P7045380080223163901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A084968 (n + 1) : ℚ) / 7)).toNat

end

end A375668.P7045380080223163901

namespace A375668

/-- `A051903(A084968(n+1)/7)` -/
def P7045380080223163901.Spec : Prop :=
  ∀ n, P7045380080223163901.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P12709550593348060498

`A051903(A249825(n+1))`
-/

namespace A375668.P12709550593348060498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A249825 (n + 1)).toNat

end

end A375668.P12709550593348060498

namespace A375668

/-- `A051903(A249825(n+1))` -/
def P12709550593348060498.Spec : Prop :=
  ∀ n, P12709550593348060498.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P16867998452708283358

`A375667(A250475(n+1))`
-/

namespace A375668.P16867998452708283358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375667 (A250475 (n + 1)).toNat

end

end A375668.P16867998452708283358

namespace A375668

/-- `A375667(A250475(n+1))` -/
def P16867998452708283358.Spec : Prop :=
  ∀ n, P16867998452708283358.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P14022096190294544779

`A375669(2*A007775(n+1))`
-/

namespace A375668.P14022096190294544779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (2 * A007775 (n + 1)).toNat

end

end A375668.P14022096190294544779

namespace A375668

/-- `A375669(2*A007775(n+1))` -/
def P14022096190294544779.Spec : Prop :=
  ∀ n, P14022096190294544779.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P2142993838028401539

`A071178(A007775(n+1)*A330665(n+1))`
-/

namespace A375668.P2142993838028401539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A007775 (n + 1) * A330665 (n + 1)).toNat

end

end A375668.P2142993838028401539

namespace A375668

/-- `A071178(A007775(n+1)*A330665(n+1))` -/
def P2142993838028401539.Spec : Prop :=
  ∀ n, P2142993838028401539.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P15641921289256654873

`A052409(A324326(n+1)+A007775(n+1))`
-/

namespace A375668.P15641921289256654873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A324326 (n + 1) + A007775 (n + 1)).toNat

end

end A375668.P15641921289256654873

namespace A375668

/-- `A052409(A324326(n+1)+A007775(n+1))` -/
def P15641921289256654873.Spec : Prop :=
  ∀ n, P15641921289256654873.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P8582760620170448470

`gcd(A257992(A325700(n+1)), A351976(n+2))`
-/

namespace A375668.P8582760620170448470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257992 (A325700 (n + 1)).toNat) (A351976 (n + 2))

end

end A375668.P8582760620170448470

namespace A375668

/-- `gcd(A257992(A325700(n+1)), A351976(n+2))` -/
def P8582760620170448470.Spec : Prop :=
  ∀ n, (P8582760620170448470.a n : ℤ) = A375668 (n + 1)

end A375668

/-! ## A375668.P4261711698316145901

`A071178(A007775(n+1)%A259180(3*n+4))`
-/

namespace A375668.P4261711698316145901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (Int.tmod (A007775 (n + 1)) (A259180 (3 * n + 4))).toNat

end

end A375668.P4261711698316145901

namespace A375668

/-- `A071178(A007775(n+1)%A259180(3*n+4))` -/
def P4261711698316145901.Spec : Prop :=
  ∀ n, P4261711698316145901.a n = A375668 (n + 1)

end A375668

/-! ## A375668.P2149036588443087132

`A376615(A179874(n+1))`
-/

namespace A375668.P2149036588443087132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376615 (A179874 (n + 1)).toNat

end

end A375668.P2149036588443087132

namespace A375668

/-- `A376615(A179874(n+1))` -/
def P2149036588443087132.Spec : Prop :=
  ∀ n, P2149036588443087132.a n = A375668 (n + 1)

end A375668

/-!
# A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

The programs for A375669, the canonical program `A375669.P4375013482018991559` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375669 has offset 1).

The definition of A375669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375669

/-- `A051903(A000265(n+1))` -/
def P4375013482018991559.Spec : Prop :=
  ∀ n, P4375013482018991559.a n = A375669 (n + 1)

theorem P4375013482018991559.correct : P4375013482018991559.Spec := by
  intro n
  simp only [A375669, Nat.add_sub_cancel]

end A375669

/-! ## A375669.P15343880798176713907

`(a(floor(n/∏{p}[n+1, #]))+1)%∑{d}[n+1, #%2]` with `a(0)=0`
-/

namespace A375669.P15343880798176713907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat + 1) % (∑ d ∈ Nat.divisors (f2 n), d % 2)

end

end A375669.P15343880798176713907

namespace A375669

/-- `(a(floor(n/∏{p}[n+1, #]))+1)%∑{d}[n+1, #%2]` -/
def P15343880798176713907.Spec : Prop :=
  ∀ n, (P15343880798176713907.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P14819983275163204011

`(a((n+1)/∏{p}[n+1, #]-1)+1)%((n+1)/2^val(n+1, 2))` with `a(0)=0`
-/

namespace A375669.P14819983275163204011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A375669.P14819983275163204011

namespace A375669

/-- `(a((n+1)/∏{p}[n+1, #]-1)+1)%((n+1)/2^val(n+1, 2))` -/
def P14819983275163204011.Spec : Prop :=
  ∀ n, P14819983275163204011.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P2060878060436730419

`val(A336158(n+1), 2)`
-/

namespace A375669.P2060878060436730419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336158 (n + 1)).toNat 2

end

end A375669.P2060878060436730419

namespace A375669

/-- `val(A336158(n+1), 2)` -/
def P2060878060436730419.Spec : Prop :=
  ∀ n, (P2060878060436730419.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P15842509065143168926

`val(A097272(n+1), 3)`
-/

namespace A375669.P15842509065143168926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097272 (n + 1)).toNat 3

end

end A375669.P15842509065143168926

namespace A375669

/-- `val(A097272(n+1), 3)` -/
def P15842509065143168926.Spec : Prop :=
  ∀ n, (P15842509065143168926.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P12080065227757125104

`A051903((n+1)/2^val(n+1, 2))`
-/

namespace A375669.P12080065227757125104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A375669.P12080065227757125104

namespace A375669

/-- `A051903((n+1)/2^val(n+1, 2))` -/
def P12080065227757125104.Spec : Prop :=
  ∀ n, P12080065227757125104.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P275373303575068371

`val(A046523((n+1)/2^val(n+1, 2)), 2)`
-/

namespace A375669.P275373303575068371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 2

end

end A375669.P275373303575068371

namespace A375669

/-- `val(A046523((n+1)/2^val(n+1, 2)), 2)` -/
def P275373303575068371.Spec : Prop :=
  ∀ n, (P275373303575068371.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P15224890067103307908

`val(A328400((n+1)/2^val(n+1, 2)), 2)`
-/

namespace A375669.P15224890067103307908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 2

end

end A375669.P15224890067103307908

namespace A375669

/-- `val(A328400((n+1)/2^val(n+1, 2)), 2)` -/
def P15224890067103307908.Spec : Prop :=
  ∀ n, (P15224890067103307908.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P12192468098829749059

`A007949(A097272(n+1))`
-/

namespace A375669.P12192468098829749059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A097272 (n + 1)).toNat

end

end A375669.P12192468098829749059

namespace A375669

/-- `A007949(A097272(n+1))` -/
def P12192468098829749059.Spec : Prop :=
  ∀ n, P12192468098829749059.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P16044974757915972847

`A051903(A064989(n+1))`
-/

namespace A375669.P16044974757915972847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A064989 (n + 1)).toNat

end

end A375669.P16044974757915972847

namespace A375669

/-- `A051903(A064989(n+1))` -/
def P16044974757915972847.Spec : Prop :=
  ∀ n, P16044974757915972847.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P525433796448112981

`A007814(A336158(1+n))`
-/

namespace A375669.P525433796448112981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336158 (1 + n)).toNat

end

end A375669.P525433796448112981

namespace A375669

/-- `A007814(A336158(1+n))` -/
def P525433796448112981.Spec : Prop :=
  ∀ n, P525433796448112981.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P8421814861032798459

`A051903(A302044(2*(n+1)))`
-/

namespace A375669.P8421814861032798459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A302044 (2 * (n + 1))).toNat

end

end A375669.P8421814861032798459

namespace A375669

/-- `A051903(A302044(2*(n+1)))` -/
def P8421814861032798459.Spec : Prop :=
  ∀ n, P8421814861032798459.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P17777634371385620205

`A376645(A000265(2*(n+1)))`
-/

namespace A375669.P17777634371385620205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376645 (A000265 (2 * (n + 1))).toNat

end

end A375669.P17777634371385620205

namespace A375669

/-- `A376645(A000265(2*(n+1)))` -/
def P17777634371385620205.Spec : Prop :=
  ∀ n, P17777634371385620205.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P11401497971320274877

`A087436(n+1)-A087436(A336158(n+1))`
-/

namespace A375669.P11401497971320274877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A087436 (A336158 (n + 1)).toNat

end

end A375669.P11401497971320274877

namespace A375669

/-- `A087436(n+1)-A087436(A336158(n+1))` -/
def P11401497971320274877.Spec : Prop :=
  ∀ n, P11401497971320274877.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P4326220591060809378

`A051903(A028234(2*(n+1)))`
-/

namespace A375669.P4326220591060809378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A028234 (2 * (n + 1))).toNat

end

end A375669.P4326220591060809378

namespace A375669

/-- `A051903(A028234(2*(n+1)))` -/
def P4326220591060809378.Spec : Prop :=
  ∀ n, P4326220591060809378.a n = A375669 (n + 1)

end A375669

/-! ## A375669.P10917289259060299374

`val(A073039(n+1), 3)`
-/

namespace A375669.P10917289259060299374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073039 (n + 1)).toNat 3

end

end A375669.P10917289259060299374

namespace A375669

/-- `val(A073039(n+1), 3)` -/
def P10917289259060299374.Spec : Prop :=
  ∀ n, (P10917289259060299374.a n : ℤ) = A375669 (n + 1)

end A375669

/-! ## A375669.P12569394892819477399

`A256757((n+1)²)-A256757(n+1)`
-/

namespace A375669.P12569394892819477399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 ((n + 1) ^ 2) - A256757 (n + 1)

end

end A375669.P12569394892819477399

namespace A375669

/-- `A256757((n+1)²)-A256757(n+1)` -/
def P12569394892819477399.Spec : Prop :=
  ∀ n, P12569394892819477399.a n = A375669 (n + 1)

end A375669

/-!
# A375670: The maximum exponent in the prime factorization of the largest 5-rough divisor of n.

The programs for A375670, the canonical program `A375670.P18259153866628924363` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375670 has offset 1).

The definition of A375670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375670.P18259153866628924363

`A051903(A065330(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375670

/-- `A051903(A065330(n+1))` -/
def P18259153866628924363.Spec : Prop :=
  ∀ n, P18259153866628924363.a n = A375670 (n + 1)

theorem P18259153866628924363.correct : P18259153866628924363.Spec := by
  intro n
  simp only [A375670, Nat.add_sub_cancel]

end A375670

/-! ## A375670.P9793501911307038808

`A051903((n+1)/(2^val(n+1, 2)*3^val(n+1, 3)))`
-/

namespace A375670.P9793501911307038808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A375670.P9793501911307038808

namespace A375670

/-- `A051903((n+1)/(2^val(n+1, 2)*3^val(n+1, 3)))` -/
def P9793501911307038808.Spec : Prop :=
  ∀ n, P9793501911307038808.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P15943077416868502282

`val(A046523((n+1)/(2^val(n+1, 2)*3^val(n+1, 3))), 2)`
-/

namespace A375670.P15943077416868502282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat).toNat 2

end

end A375670.P15943077416868502282

namespace A375670

/-- `val(A046523((n+1)/(2^val(n+1, 2)*3^val(n+1, 3))), 2)` -/
def P15943077416868502282.Spec : Prop :=
  ∀ n, (P15943077416868502282.a n : ℤ) = A375670 (n + 1)

end A375670

/-! ## A375670.P892294726473580116

`A051903(A354203(n+1))`
-/

namespace A375670.P892294726473580116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A354203 (n + 1)).toNat

end

end A375670.P892294726473580116

namespace A375670

/-- `A051903(A354203(n+1))` -/
def P892294726473580116.Spec : Prop :=
  ∀ n, P892294726473580116.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P11949886834032314630

`A375669(A064989(n+1))`
-/

namespace A375670.P11949886834032314630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (A064989 (n + 1)).toNat

end

end A375670.P11949886834032314630

namespace A375670

/-- `A375669(A064989(n+1))` -/
def P11949886834032314630.Spec : Prop :=
  ∀ n, P11949886834032314630.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P8817445153433528671

`A375669(A079707(n+1))`
-/

namespace A375670.P8817445153433528671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (A079707 (n + 1)).toNat

end

end A375670.P8817445153433528671

namespace A375670

/-- `A375669(A079707(n+1))` -/
def P8817445153433528671.Spec : Prop :=
  ∀ n, P8817445153433528671.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P15554982114241502129

`A375667(A126760(n+1))`
-/

namespace A375670.P15554982114241502129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375667 (A126760 (n + 1)).toNat

end

end A375670.P15554982114241502129

namespace A375670

/-- `A375667(A126760(n+1))` -/
def P15554982114241502129.Spec : Prop :=
  ∀ n, P15554982114241502129.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P2533037032003293189

`A051903((n+1)/A065331(n+1))`
-/

namespace A375670.P2533037032003293189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A375670.P2533037032003293189

namespace A375670

/-- `A051903((n+1)/A065331(n+1))` -/
def P2533037032003293189.Spec : Prop :=
  ∀ n, P2533037032003293189.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P5213641466530530780

`A375669(2*A065330(n+1))`
-/

namespace A375670.P5213641466530530780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (2 * A065330 (n + 1)).toNat

end

end A375670.P5213641466530530780

namespace A375670

/-- `A375669(2*A065330(n+1))` -/
def P5213641466530530780.Spec : Prop :=
  ∀ n, P5213641466530530780.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P2930509976774760814

`A375669(A065330(n+1)+A065330(n+1))`
-/

namespace A375670.P2930509976774760814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (A065330 (n + 1) + A065330 (n + 1)).toNat

end

end A375670.P2930509976774760814

namespace A375670

/-- `A375669(A065330(n+1)+A065330(n+1))` -/
def P2930509976774760814.Spec : Prop :=
  ∀ n, P2930509976774760814.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P10999081439157492733

`A375669(A065330(2*(n+1)))`
-/

namespace A375670.P10999081439157492733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (A065330 (2 * (n + 1))).toNat

end

end A375670.P10999081439157492733

namespace A375670

/-- `A375669(A065330(2*(n+1)))` -/
def P10999081439157492733.Spec : Prop :=
  ∀ n, P10999081439157492733.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P16103049171692263668

`val(A073039(n+1), 5)`
-/

namespace A375670.P16103049171692263668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073039 (n + 1)).toNat 5

end

end A375670.P16103049171692263668

namespace A375670

/-- `val(A073039(n+1), 5)` -/
def P16103049171692263668.Spec : Prop :=
  ∀ n, (P16103049171692263668.a n : ℤ) = A375670 (n + 1)

end A375670

/-! ## A375670.P15304107354043481805

`A193509(A140215(n+1))`
-/

namespace A375670.P15304107354043481805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (A140215 (n + 1)).toNat

end

end A375670.P15304107354043481805

namespace A375670

/-- `A193509(A140215(n+1))` -/
def P15304107354043481805.Spec : Prop :=
  ∀ n, P15304107354043481805.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P15494011848888107251

`A386259(A065330((n+1)²))`
-/

namespace A375670.P15494011848888107251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386259 (A065330 ((n + 1) ^ 2)).toNat

end

end A375670.P15494011848888107251

namespace A375670

/-- `A386259(A065330((n+1)²))` -/
def P15494011848888107251.Spec : Prop :=
  ∀ n, P15494011848888107251.a n = A375670 (n + 1)

end A375670

/-! ## A375670.P6581058863383099163

`A106799(A053585((n+1)²))/2`
-/

namespace A375670.P6581058863383099163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106799 (A053585 ((n + 1) ^ 2)).toNat : ℚ) / 2

end

end A375670.P6581058863383099163

namespace A375670

/-- `A106799(A053585((n+1)²))/2` -/
def P6581058863383099163.Spec : Prop :=
  ∀ n, P6581058863383099163.a n = (A375670 (n + 1) : ℚ)

end A375670

/-! ## A375670.P3513532156682787311

`A106799(A217434(n+1)²)/2`
-/

namespace A375670.P3513532156682787311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106799 (A217434 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A375670.P3513532156682787311

namespace A375670

/-- `A106799(A217434(n+1)²)/2` -/
def P3513532156682787311.Spec : Prop :=
  ∀ n, P3513532156682787311.a n = (A375670 (n + 1) : ℚ)

end A375670

/-!
# A375671: Expansion of e.g.f. 1 / (1 + x * log(1 - x))^2.

The programs for A375671, there is no canonical definition to state claims against.
-/

/-! ## A375671.P15220479244311124957

`A135997(2*A053490(n))`
-/

namespace A375671.P15220479244311124957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (2 * A053490 n).toNat

end

end A375671.P15220479244311124957

/-! ## A375671.P11972775112018429760

`A008615(4*A053490(n))`
-/

namespace A375671.P11972775112018429760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A053490 n).toNat

end

end A375671.P11972775112018429760

/-!
# A375672: Expansion of e.g.f. 1 / (1 + x * log(1 - x))^3.

The programs for A375672, there is no canonical definition to state claims against.
-/

/-! ## A375672.P5562755800141776770

`A004526(3*A367878(n))`
-/

namespace A375672.P5562755800141776770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A367878 n).toNat

end

end A375672.P5562755800141776770

/-! ## A375672.P17872070351750325433

`A020639(A001019(n))*A371140(n)`
-/

namespace A375672.P17872070351750325433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001019 n).toNat * A371140 n

end

end A375672.P17872070351750325433

/-!
# A375673: n and a(n) (with a(n) >= n) are the edges of the minimum-area rectangle such that its area is an integer multiple of its perimeter.

The programs for A375673, there is no canonical definition to state claims against.
-/

/-! ## A375673.P5043492491020120897

`A375675(n+3)/(n+3)`
-/

namespace A375673.P5043492491020120897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375675 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A375673.P5043492491020120897

/-! ## A375673.P5292093950387213553

`(A375676(n+3)-2*(n+3))/2`
-/

namespace A375673.P5292093950387213553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375676 (n + 3) - (2 * (n + 3) : ℤ) : ℚ) / 2

end

end A375673.P5292093950387213553

/-! ## A375673.P11433069007381945273

`A375676(n+3)/2-(n+3)`
-/

namespace A375673.P11433069007381945273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375676 (n + 3) : ℚ) / 2 - (n + 3 : ℚ)

end

end A375673.P11433069007381945273

/-! ## A375673.P6392907770296930145

`A375674(n+3)*A375676(n+3)/(n+3)`
-/

namespace A375673.P6392907770296930145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375674 (n + 3) * A375676 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A375673.P6392907770296930145

/-! ## A375673.P13439077719949896724

`A080513(A375676(n+3))-(n+4)`
-/

namespace A375673.P13439077719949896724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A375676 (n + 3)).toNat - (n + 4 : ℤ)

end

end A375673.P13439077719949896724

/-!
# A375674: a(n) is the area/perimeter ratio of the rectangle whose edges are n and A375673(n).

The programs for A375674, there is no canonical definition to state claims against.
-/

/-! ## A375674.P19317581565967751

`A375675(n+3)/A375676(n+3)`
-/

namespace A375674.P19317581565967751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375675 (n + 3) : ℚ) / (A375676 (n + 3) : ℚ)

end

end A375674.P19317581565967751

/-! ## A375674.P15586882589438139513

`A383458(A112409(2*n+n+2))`
-/

namespace A375674.P15586882589438139513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383458 (A112409 (2 * n + (n + 2))).toNat

end

end A375674.P15586882589438139513

/-! ## A375674.P9373085409800001496

`A000120(A103789(n+1)%A052548(n))`
-/

namespace A375674.P9373085409800001496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A103789 (n + 1)) (A052548 n)).toNat

end

end A375674.P9373085409800001496

/-!
# A375675: a(n) is the area of the rectangle whose edges are n and A375673(n).

The programs for A375675, there is no canonical definition to state claims against.
-/

/-! ## A375675.P6548839449525590986

`(n+3)*A375673(n+3)`
-/

namespace A375675.P6548839449525590986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A375673 (n + 3)

end

end A375675.P6548839449525590986

/-! ## A375675.P5144113013945038602

`A375674(n+3)*A375676(n+3)`
-/

namespace A375675.P5144113013945038602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375674 (n + 3) * A375676 (n + 3)

end

end A375675.P5144113013945038602

/-! ## A375675.P3803515252175342049

`A001221(A115186(n+2))*A375676(n+3)`
-/

namespace A375675.P3803515252175342049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A115186 (n + 2)).toNat * A375676 (n + 3)

end

end A375675.P3803515252175342049

/-!
# A375676: a(n) is the perimeter of the rectangle whose edges are n and A375673(n).

The programs for A375676, there is no canonical definition to state claims against.
-/

/-! ## A375676.P17006961491331966175

`2*(n+3+A375673(n+3))`
-/

namespace A375676.P17006961491331966175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) + A375673 (n + 3))

end

end A375676.P17006961491331966175

/-! ## A375676.P14341536999813687513

`A375675(n+3)/A375674(n+3)`
-/

namespace A375676.P14341536999813687513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375675 (n + 3) : ℚ) / (A375674 (n + 3) : ℚ)

end

end A375676.P14341536999813687513

/-!
# A375677: Number of partitions of [n] into blocks whose largest element is >= the sum of the remaining block elements.

The programs for A375677, there is no canonical definition to state claims against.
-/

/-! ## A375677.P10024746094467942456

`A318125(n)-A067022(A318125(n))`
-/

namespace A375677.P10024746094467942456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318125 n - A067022 (A318125 n).toNat

end

end A375677.P10024746094467942456

/-! ## A375677.P7800588048022172048

`A024417(A001002(n))`
-/

namespace A375677.P7800588048022172048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A001002 n).toNat

end

end A375677.P7800588048022172048

/-! ## A375677.P10001564974180299864

`A026834(A006012(n))`
-/

namespace A375677.P10001564974180299864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A006012 n).toNat

end

end A375677.P10001564974180299864

/-!
# A375678: Binary expansion of the square root of the golden ratio.

The programs for A375678, there is no canonical definition to state claims against.
-/

/-! ## A375678.P16082887502348739665

`A007089(A353849(3*n)+A351204(n))%2`
-/

namespace A375678.P16082887502348739665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A353849 (3 * n) + A351204 n).toNat) 2

end

end A375678.P16082887502348739665

/-! ## A375678.P1730535898262556673

`A209929(A032758(n+1)²+1)`
-/

namespace A375678.P1730535898262556673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (A032758 (n + 1) ^ 2 + 1).toNat

end

end A375678.P1730535898262556673

/-! ## A375678.P351269651507912039

`A361897(A087687(n+1)*A368556(n+1))`
-/

namespace A375678.P351269651507912039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (A087687 (n + 1) * A368556 (n + 1)).toNat

end

end A375678.P351269651507912039

/-! ## A375678.P2141695410814536270

`A119033(n+1)%A001285(A270469(2*n+5))`
-/

namespace A375678.P2141695410814536270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119033 (n + 1)) (A001285 (A270469 (2 * n + 5)).toNat)

end

end A375678.P2141695410814536270

/-! ## A375678.P4534338940584662421

`A003849(A329564(3*n)+1-2*n%2)`
-/

namespace A375678.P4534338940584662421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A329564 (3 * n) + (1 - ((2 * (n % 2) : ℕ) : ℤ))).toNat

end

end A375678.P4534338940584662421

/-!
# A375679: Expansion of e.g.f. 1 / (1 + x^2 * log(1 - x))^3.

The programs for A375679, there is no canonical definition to state claims against.
-/

/-! ## A375679.P7758332209142762832

`A028920(A024036(n))*A362891(n)`
-/

namespace A375679.P7758332209142762832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A024036 n).toNat * A362891 n

end

end A375679.P7758332209142762832

/-! ## A375679.P5110762388909781623

`A020639(A343975(n))*A362891(n)`
-/

namespace A375679.P5110762388909781623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A343975 n).toNat * A362891 n

end

end A375679.P5110762388909781623

/-! ## A375679.P2868684756252602543

`A262190(A007691(n+1))*A362891(n)`
-/

namespace A375679.P2868684756252602543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A007691 (n + 1)).toNat * A362891 n

end

end A375679.P2868684756252602543

/-!
# A375680: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2))^2.

The programs for A375680, there is no canonical definition to state claims against.
-/

/-! ## A375680.P15277870574214123960

`A325625(n²+11)*A375664(n)`
-/

namespace A375680.P15277870574214123960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325625 (n ^ 2 + 11) * A375664 n

end

end A375680.P15277870574214123960

/-! ## A375680.P2593807348714642708

`A060128(A053556(n))*A375664(n)`
-/

namespace A375680.P2593807348714642708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A053556 n).toNat * A375664 n

end

end A375680.P2593807348714642708

/-! ## A375680.P14063388518462563100

`A060128(A107591(n))*A375664(n)`
-/

namespace A375680.P14063388518462563100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A107591 n).toNat * A375664 n

end

end A375680.P14063388518462563100

/-! ## A375680.P18053519896833999512

`A051064(A363812(n))*A353226(n)`
-/

namespace A375680.P18053519896833999512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A363812 n).toNat * A353226 n

end

end A375680.P18053519896833999512

/-! ## A375680.P15972645361508994683

`A000010(A276142(n+1))*A357966(n)`
-/

namespace A375680.P15972645361508994683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A276142 (n + 1)).toNat * A357966 n

end

end A375680.P15972645361508994683

/-!
# A375681: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2))^3.

The programs for A375681, there is no canonical definition to state claims against.
-/

/-! ## A375681.P4270721790371779443

`A036036(A000088(n))*A375665(n)`
-/

namespace A375681.P4270721790371779443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A000088 n).toNat * A375665 n

end

end A375681.P4270721790371779443

/-! ## A375681.P209482477137001941

`A060128(A053556(n))*A375665(n)`
-/

namespace A375681.P209482477137001941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A053556 n).toNat * A375665 n

end

end A375681.P209482477137001941

/-! ## A375681.P6820277916890713459

`A060128(A107591(n))*A375665(n)`
-/

namespace A375681.P6820277916890713459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A107591 n).toNat * A375665 n

end

end A375681.P6820277916890713459

/-! ## A375681.P10888671867052138154

`A104607(A242783(n))*A375665(n)`
-/

namespace A375681.P10888671867052138154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104607 (A242783 n).toNat * A375665 n

end

end A375681.P10888671867052138154

/-! ## A375681.P3359049919046527097

`A372331(A263451(n+1))*A375665(n)`
-/

namespace A375681.P3359049919046527097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (A263451 (n + 1)).toNat * A375665 n

end

end A375681.P3359049919046527097

/-!
# A375682: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2/2))^3.

The programs for A375682, there is no canonical definition to state claims against.
-/

/-! ## A375682.P10122738498895657224

`A001222(A007226(n))*A375586(n)`
-/

namespace A375682.P10122738498895657224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007226 n).toNat * A375586 n

end

end A375682.P10122738498895657224

/-! ## A375682.P4645771468995347698

`A025480(A375665(n)+A050332(n+1))`
-/

namespace A375682.P4645771468995347698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A375665 n + A050332 (n + 1)).toNat

end

end A375682.P4645771468995347698

/-! ## A375682.P13672661717683213129

`A375167(n)*A379731(2*n²+5)`
-/

namespace A375682.P13672661717683213129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375167 n * A379731 (2 * n ^ 2 + 5)

end

end A375682.P13672661717683213129

/-!
# A375683: Expansion of e.g.f. 1 / (1 + x * (exp(x) - 1)).

The programs for A375683, there is no canonical definition to state claims against.
-/

/-! ## A375683.P16639718506406476135

`A339088(A059845(n))-n`
-/

namespace A375683.P16639718506406476135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (A059845 n).toNat - (n : ℤ)

end

end A375683.P16639718506406476135

/-! ## A375683.P12584515252098740571

`A341164(A392721(n+1))-n`
-/

namespace A375683.P12584515252098740571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341164 (A392721 (n + 1)).toNat - (n : ℤ)

end

end A375683.P12584515252098740571

/-!
# A375685: Expansion of e.g.f. 1 / (1 + x^2/2 * log(1 - x))^2.

The programs for A375685, there is no canonical definition to state claims against.
-/

/-! ## A375685.P606643494729325950

`A046523(A007097(n))*A356752(n)`
-/

namespace A375685.P606643494729325950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007097 n).toNat * A356752 n

end

end A375685.P606643494729325950

/-! ## A375685.P8070771640156540958

`A020639(A202993(n))*A356752(n)`
-/

namespace A375685.P8070771640156540958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202993 n).toNat * A356752 n

end

end A375685.P8070771640156540958

/-! ## A375685.P18349817780877758149

`A101296(A002584(n+1))*A356752(n)`
-/

namespace A375685.P18349817780877758149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A002584 (n + 1)).toNat * A356752 n

end

end A375685.P18349817780877758149

/-! ## A375685.P2029506771998417111

`A130634(A050376(3*n+4))*A375698(n)`
-/

namespace A375685.P2029506771998417111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130634 (A050376 (3 * n + 4)).toNat * A375698 n

end

end A375685.P2029506771998417111

/-!
# A375686: Expansion of e.g.f. 1 / (1 + x^2/2 * log(1 - x))^3.

The programs for A375686, there is no canonical definition to state claims against.
-/

/-! ## A375686.P7389928492478862248

`A006368(A351503(n))`
-/

namespace A375686.P7389928492478862248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A351503 n).toNat

end

end A375686.P7389928492478862248

/-! ## A375686.P11526694837957525692

`A001651(A351503(n)+1)-1`
-/

namespace A375686.P11526694837957525692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A351503 n + 1).toNat - 1

end

end A375686.P11526694837957525692

/-! ## A375686.P9200824233675844625

`A032766(A047996(n)*A351503(n))`
-/

namespace A375686.P9200824233675844625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A047996 n * A351503 n).toNat

end

end A375686.P9200824233675844625

/-! ## A375686.P15968909205262279483

`A032766(A351503(n)%A016940(n))`
-/

namespace A375686.P15968909205262279483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.tmod (A351503 n) (A016940 n)).toNat

end

end A375686.P15968909205262279483

/-!
# A375687: Expansion of e.g.f. 1 / sqrt(1 + 2 * x * log(1 - x)).

The programs for A375687, there is no canonical definition to state claims against.
-/

/-! ## A375687.P1265363977989290991

`A355842(n)-A383147(A000272(n))`
-/

namespace A375687.P1265363977989290991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355842 n - A383147 (A000272 n).toNat

end

end A375687.P1265363977989290991

/-!
# A375689: Expansion of e.g.f. 1 / (1 + 3 * x * log(1 - x))^(2/3).

The programs for A375689, there is no canonical definition to state claims against.
-/

/-! ## A375689.P13947175697858029276

`row(∑{#}[A377438(n), #])`
-/

namespace A375689.P13947175697858029276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A375689.P13947175697858029276

/-! ## A375689.P11813172567194540436

`A377438(n+C(n, 6)*720)`
-/

namespace A375689.P11813172567194540436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377438 (n + Nat.choose n 6 * 720)

end

end A375689.P11813172567194540436

/-!
# A375691: G.f. A(x) satisfies A(x) = 1 + x^4*(1+x)*A(x)^3.

The programs for A375691, the canonical program `A375691.P9820986616808482315` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375691 has offset 0).

The definition of A375691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375691.P9820986616808482315

`∑{#}[floor(n/4), C(#, n-4*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375691

/-- `∑{#}[floor(n/4), C(#, n-4*#)*C(3*#, #)/(2*#+1)]` -/
def P9820986616808482315.Spec : Prop :=
  ∀ n, P9820986616808482315.a n = (A375691 n : ℚ)

end A375691

/-!
# A375692: Decimal concatenation of the 5 numbers n,n+1,n+2,n+3,n+4.

The programs for A375692, there is no canonical definition to state claims against.
-/

/-! ## A375692.P12070344798564648794

`A360287(A086225(n+1))`
-/

namespace A375692.P12070344798564648794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (A086225 (n + 1)).toNat

end

end A375692.P12070344798564648794

/-! ## A375692.P2277699395230382432

`A285807(A141214(n+1))`
-/

namespace A375692.P2277699395230382432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285807 (A141214 (n + 1)).toNat

end

end A375692.P2277699395230382432

/-!
# A375693: Number of multiset permutations of {{1}^n, {2}^n, ..., {n}^n} with no fixed n-tuple {j}^n.

The programs for A375693, the canonical program `A375693.P18375563070063070255` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375693 has offset 0).

The definition of A375693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375693.P18375563070063070255

`∑{#}[n, (-1)^(n-#)*C(n, #)*(n*#)!/n!^#]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375693

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*(n*#)!/n!^#]` -/
def P18375563070063070255.Spec : Prop :=
  ∀ n, P18375563070063070255.a n = (A375693 n : ℚ)

end A375693

/-! ## A375693.P17309703920108003221

`A375694(∑[4*n])`
-/

namespace A375693.P17309703920108003221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375693.P17309703920108003221

namespace A375693

/-- `A375694(∑[4*n])` -/
def P17309703920108003221.Spec : Prop :=
  ∀ n, P17309703920108003221.a n = A375693 n

end A375693

/-!
# A375694: Number A(n,k) of multiset permutations of {{1}^k, {2}^k, ..., {n}^k} with no fixed k-tuple {j}^k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A375694, there is no canonical definition to state claims against.
-/

/-! ## A375694.P11272474564416748497

`A299203(3^A362839(n))`
-/

namespace A375694.P11272474564416748497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A362839 n : ℤ))).toNat

end

end A375694.P11272474564416748497

/-! ## A375694.P10787276791635446487

`A083124(A258997(n)^A213191(n))`
-/

namespace A375694.P10787276791635446487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083124 (SequenceMachineLib.roundAway ((A258997 n : ℚ) ^ (A213191 n : ℤ))).toNat

end

end A375694.P10787276791635446487

/-! ## A375694.P18065577046106070047

`A341025(A053615(2*n)*A103406(n))`
-/

namespace A375694.P18065577046106070047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A053615 (2 * n) * A103406 n).toNat + 120)

end

end A375694.P18065577046106070047

/-! ## A375694.P14453472925657641968

`A163352(A357681(n)^A201198(n+1))`
-/

namespace A375694.P14453472925657641968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (SequenceMachineLib.roundAway ((A357681 n : ℚ) ^ (A201198 (n + 1) : ℤ))).toNat

end

end A375694.P14453472925657641968

/-! ## A375694.P1287586462048506033

`A332673(A294522(n+1)%A014820(n))`
-/

namespace A375694.P1287586462048506033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332673 (Int.tmod (A294522 (n + 1)) (A014820 n)).toNat

end

end A375694.P1287586462048506033

/-!
# A375697: Expansion of e.g.f. 1 / (1 - 3 * x * (exp(x) - 1))^(2/3).

The programs for A375697, there is no canonical definition to state claims against.
-/

/-! ## A375697.P14920351494487275110

`A338840(A377719(n)+1)`
-/

namespace A375697.P14920351494487275110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338840 (A377719 n + 1).toNat

end

end A375697.P14920351494487275110

/-! ## A375697.P16972647997547051651

`A023444(A377719(n)+2)`
-/

namespace A375697.P16972647997547051651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A377719 n + 2).toNat

end

end A375697.P16972647997547051651

