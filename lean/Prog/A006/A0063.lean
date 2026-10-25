import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A006300: Number of rooted maps with n edges on torus.

The programs for A006300, there is no canonical definition to state claims against.
-/

/-! ## A006300.P13157432407682905831

`A269919(A087811(n+2)+1)`
-/

namespace A006300.P13157432407682905831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269919 (A087811 (n + 2) + 1).toNat

end

end A006300.P13157432407682905831

/-! ## A006300.P9765900196948265262

`A238396(∑[n+2]+2)`
-/

namespace A006300.P9765900196948265262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006300.P9765900196948265262

/-! ## A006300.P4363669909811736259

`record[gcd(A238396(n+1), A344855(n))]`
-/

namespace A006300.P4363669909811736259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238396 (n + 1)) (A344855 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006300.P4363669909811736259

/-! ## A006300.P5894025077369083481

`A264668(n)+A238396(A000124(n+2))`
-/

namespace A006300.P5894025077369083481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A238396 (A000124 (n + 2)).toNat

end

end A006300.P5894025077369083481

/-! ## A006300.P5681423077337431566

`A238396(A000124(n+2))%A321606(3*n+2)`
-/

namespace A006300.P5681423077337431566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238396 (A000124 (n + 2)).toNat) (A321606 (3 * n + 2))

end

end A006300.P5681423077337431566

/-!
# A006301: Number of rooted genus-2 maps with n edges.

The programs for A006301, there is no canonical definition to state claims against.
-/

/-! ## A006301.P10004407811051916358

`A238396(A060576(n)+A000124(n))`
-/

namespace A006301.P10004407811051916358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (A060576 n + A000124 n).toNat

end

end A006301.P10004407811051916358

/-! ## A006301.P9160175418789670121

`A238396(A238531(n)+A028310(n))`
-/

namespace A006301.P9160175418789670121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (A238531 n + A028310 n).toNat

end

end A006301.P9160175418789670121

/-! ## A006301.P4177324442237797242

`A157928(n)*A238396(A133263(n))`
-/

namespace A006301.P4177324442237797242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A238396 (A133263 n).toNat

end

end A006301.P4177324442237797242

/-! ## A006301.P5305552947514065844

`A238396(A133263(n))%A005416(n)`
-/

namespace A006301.P5305552947514065844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238396 (A133263 n).toNat) (A005416 n)

end

end A006301.P5305552947514065844

/-! ## A006301.P13204521119029019587

`(2-A141044(n))*A238396(A133263(n))`
-/

namespace A006301.P13204521119029019587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A141044 n) * A238396 (A133263 n).toNat

end

end A006301.P13204521119029019587

/-! ## A006301.P12643807371629952578

`lcm(A182850(n+1), A238396(A133263(n)))`
-/

namespace A006301.P12643807371629952578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A182850 (n + 1)) (A238396 (A133263 n).toNat)

end

end A006301.P12643807371629952578

/-! ## A006301.P10397998538899770051

`char[A281120(n+1)]*A238396(A133263(n))`
-/

namespace A006301.P10397998538899770051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238396 (A133263 n).toNat

end

end A006301.P10397998538899770051

/-! ## A006301.P11429074327093360665

`A066247(A062570(n+1))*A238396(A133263(n))`
-/

namespace A006301.P11429074327093360665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A062570 (n + 1)).toNat * A238396 (A133263 n).toNat

end

end A006301.P11429074327093360665

/-!
# A006302: Related to enumeration of rooted maps.

The programs for A006302, there is no canonical definition to state claims against.
-/

/-! ## A006302.P6714123873559450320

`ogf((4+4x)/(1-6x+5x^2+11x^3))`
-/

namespace A006302.P6714123873559450320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, -6, 5, 11] n

end

end A006302.P6714123873559450320

/-!
# A006304: Coefficients of the '2nd-order' mock theta function A(q).

The programs for A006304, there is no canonical definition to state claims against.
-/

/-! ## A006304.P16870824617251980334

`A153178(2*n)`
-/

namespace A006304.P16870824617251980334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153178 (2 * n)

end

end A006304.P16870824617251980334

/-! ## A006304.P11264996348560406793

`record[A153178(and(n, n+1))]`
-/

namespace A006304.P11264996348560406793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153178 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006304.P11264996348560406793

/-! ## A006304.P3284924877297769661

`record[A153178(n)/A009001(n)²]`
-/

namespace A006304.P3284924877297769661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153178 n : ℚ) / (A009001 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006304.P3284924877297769661

/-! ## A006304.P793109266873552732

`A153178(n+n)%A000041(n+1)`
-/

namespace A006304.P793109266873552732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153178 (n + n)) (A000041 (n + 1))

end

end A006304.P793109266873552732

/-! ## A006304.P12293531781872817013

`A153178(n+n)%∑[A102726(n)]`
-/

namespace A006304.P12293531781872817013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153178 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006304.P12293531781872817013

/-!
# A006305: Taylor series related to one in Ramanujan's Lost Notebook.

The programs for A006305, there is no canonical definition to state claims against.
-/

/-! ## A006305.P14007826625448638374

`A159481(A038348(2*n+1)^A245013(n))`
-/

namespace A006305.P14007826625448638374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (SequenceMachineLib.roundAway ((A038348 (2 * n + 1) : ℚ) ^ (A245013 n : ℤ))).toNat

end

end A006305.P14007826625448638374

/-! ## A006305.P13458665939423563943

`ceil(A097314(n)/A285873(n))`
-/

namespace A006305.P13458665939423563943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097314 n : ℚ) / (A285873 n : ℚ)⌉

end

end A006305.P13458665939423563943

/-! ## A006305.P2637052584004508437

`A137735(∑[2*n]*A026702(n))`
-/

namespace A006305.P2637052584004508437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A026702 n).toNat

end

end A006305.P2637052584004508437

/-! ## A006305.P4091862823014271907

`A024317(A237044(n+2)+A084513(n))`
-/

namespace A006305.P4091862823014271907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A237044 (n + 2) + A084513 n).toNat

end

end A006305.P4091862823014271907

/-! ## A006305.P11703864215079329219

`A137734(A112575(n)*A307761(n+1))`
-/

namespace A006305.P11703864215079329219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A112575 n * A307761 (n + 1)).toNat

end

end A006305.P11703864215079329219

/-!
# A006306: Coefficients of the '2nd-order' mock theta function mu(q).

The programs for A006306, there is no canonical definition to state claims against.
-/

/-! ## A006306.P13222786051410244179

`2*A153172(n)-A260313(n)`
-/

namespace A006306.P13222786051410244179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153172 n - A260313 n

end

end A006306.P13222786051410244179

/-! ## A006306.P10292237420957169563

`A153172(n)-2*A153174(n)`
-/

namespace A006306.P10292237420957169563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 n - 2 * A153174 n

end

end A006306.P10292237420957169563

/-! ## A006306.P14929201946206631029

`A260313(n)-4*A153174(n)`
-/

namespace A006306.P14929201946206631029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260313 n - 4 * A153174 n

end

end A006306.P14929201946206631029

/-! ## A006306.P6930709252492865404

`A153172(n)-(A153174(n)+A153174(n)%A153176(n))`
-/

namespace A006306.P6930709252492865404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 n - (A153174 n + Int.tmod (A153174 n) (A153176 n))

end

end A006306.P6930709252492865404

/-! ## A006306.P16018198570894778929

`A153172(n)+2*A153174(n)*A008683(A064740(n+2))`
-/

namespace A006306.P16018198570894778929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 n + 2 * A153174 n * A008683 (A064740 (n + 2)).toNat

end

end A006306.P16018198570894778929

/-!
# A006307: Number of ways writing 2^n as unordered sums of 2 primes.

The programs for A006307, there is no canonical definition to state claims against.
-/

/-! ## A006307.P4950163620377502583

`A061358(2^n)`
-/

namespace A006307.P4950163620377502583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 ^ n)

end

end A006307.P4950163620377502583

/-! ## A006307.P10927177639907352385

`A061357(ceil(2^(n-1)))+char[2]`
-/

namespace A006307.P10927177639907352385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006307.P10927177639907352385

/-! ## A006307.P15498602449786462199

`A061357(record[A077569(n+1)])`
-/

namespace A006307.P15498602449786462199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006307.P15498602449786462199

/-! ## A006307.P7974851190411999061

`A061357(record[A081532(n+1)])`
-/

namespace A006307.P7974851190411999061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006307.P7974851190411999061

/-! ## A006307.P15091300404405348371

`A061357(record[A117303(n+1)])`
-/

namespace A006307.P15091300404405348371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006307.P15091300404405348371

/-!
# A006308: Coefficients of period polynomials.

The programs for A006308, there is no canonical definition to state claims against.
-/

/-! ## A006308.P11494231642247089457

`C(p?[Δ[n²]], 2)`
-/

namespace A006308.P11494231642247089457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A006308.P11494231642247089457

/-! ## A006308.P8448719879372463775

`record[C(p?[xor(1, n)], 2)]`
-/

namespace A006308.P8448719879372463775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006308.P8448719879372463775

/-! ## A006308.P10860820022741351337

`record[∑{p}[n+3, C(#, 2)]]`
-/

namespace A006308.P10860820022741351337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006308.P10860820022741351337

/-! ## A006308.P7858193979389253148

`record[∏{p}[n+3, C(#, 2)]]`
-/

namespace A006308.P7858193979389253148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006308.P7858193979389253148

/-! ## A006308.P12217157864514225411

`C(or(1, p?[2*n+1]), 2)`
-/

namespace A006308.P12217157864514225411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) 2

end

end A006308.P12217157864514225411

/-!
# A006313: Numbers k such that k^16 + 1 is prime.

The programs for A006313, there is no canonical definition to state claims against.
-/

/-! ## A006313.P17853642768817190992

`A087738(A155212(n)+12)`
-/

namespace A006313.P17853642768817190992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087738 (A155212 n + 12).toNat

end

end A006313.P17853642768817190992

/-! ## A006313.P13067436075451785330

`A087738(A056000(n)+14)`
-/

namespace A006313.P13067436075451785330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087738 (A056000 n + 14).toNat

end

end A006313.P13067436075451785330

/-! ## A006313.P17346428168595615457

`A087738(eq[4, A002262(n)])`
-/

namespace A006313.P17346428168595615457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006313.P17346428168595615457

/-! ## A006313.P922992958397873218

`A087738(eq[5, A140207(n)])`
-/

namespace A006313.P922992958397873218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006313.P922992958397873218

/-!
# A006314: Numbers k such that k^8 + 1 is prime.

The programs for A006314, the canonical program `A006314.P2297966368482912245` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006314 has offset 1).

The definition of A006314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006314.P2297966368482912245

`eq[1, A194003(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A006314

/-- `eq[1, A194003(n)]` -/
def P2297966368482912245.Spec : Prop :=
  ∀ n, (P2297966368482912245.a n : ℤ) = A006314 (n + 1)

theorem P2297966368482912245.correct : P2297966368482912245.Spec := by
  intro n
  simp only [A006314, Nat.add_sub_cancel]

end A006314

/-! ## A006314.P18258265307129527227

`lt[A194003(n+1), 2]+1`
-/

namespace A006314.P18258265307129527227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006314.P18258265307129527227

namespace A006314

/-- `lt[A194003(n+1), 2]+1` -/
def P18258265307129527227.Spec : Prop :=
  ∀ n, (P18258265307129527227.a n : ℤ) = A006314 (n + 1)

end A006314

/-! ## A006314.P11834917579329959328

`lt[A194003(n), atan(A001105(n))]`
-/

namespace A006314.P11834917579329959328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A001105 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A006314.P11834917579329959328

namespace A006314

/-- `lt[A194003(n), atan(A001105(n))]` -/
def P11834917579329959328.Spec : Prop :=
  ∀ n, (P11834917579329959328.a n : ℤ) = A006314 (n + 1)

end A006314

/-! ## A006314.P7625513736581707905

`lt[A194003(n), atan(A014486(n))]`
-/

namespace A006314.P7625513736581707905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A014486 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A006314.P7625513736581707905

namespace A006314

/-- `lt[A194003(n), atan(A014486(n))]` -/
def P7625513736581707905.Spec : Prop :=
  ∀ n, (P7625513736581707905.a n : ℤ) = A006314 (n + 1)

end A006314

/-!
# A006315: Numbers n such that n^32 + 1 is prime.

The programs for A006315, there is no canonical definition to state claims against.
-/

/-! ## A006315.P9560117624531161140

`eq[1, A242555(n+1)]+1`
-/

namespace A006315.P9560117624531161140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006315.P9560117624531161140

/-! ## A006315.P8815207351297543904

`sqrt(∩[A006313(n+1), n²])`
-/

namespace A006315.P8815207351297543904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A006315.P8815207351297543904

/-! ## A006315.P12958562857013229858

`sqrt(∩[A000290(n), A006313(n+1)])`
-/

namespace A006315.P12958562857013229858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A006315.P12958562857013229858

/-! ## A006315.P15702168404668888369

`record[A056926(A006313(n+1))]`
-/

namespace A006315.P15702168404668888369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A006313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006315.P15702168404668888369

/-!
# A006316: Numbers k such that k^64 + 1 is prime.

The programs for A006316, there is no canonical definition to state claims against.
-/

/-! ## A006316.P9164028306739762244

`sqrt(∩[A006315(n+1), n²])`
-/

namespace A006316.P9164028306739762244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006315 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A006316.P9164028306739762244

/-!
# A006317: Maximum number of chess queens of 3 colors on an n X n board such that no queen attacks or protects another queen of its color.

The programs for A006317, there is no canonical definition to state claims against.
-/

/-! ## A006317.P16686858174607867197

`A122154(∑[∑{d}[n+1, lcm(2, #)/2]])`
-/

namespace A006317.P16686858174607867197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A006317.P16686858174607867197

/-! ## A006317.P6678357701833610087

`∑{e}[n!, #]+∑[∑[A335451(n+1)]]`
-/

namespace A006317.P6678357701833610087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006317.P6678357701833610087

/-! ## A006317.P11196918626745081706

`A122156(A088803(n+1))`
-/

namespace A006317.P11196918626745081706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (A088803 (n + 1)).toNat

end

end A006317.P11196918626745081706

/-! ## A006317.P4752637625761820785

`A122154(A350146(n+1))`
-/

namespace A006317.P4752637625761820785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (A350146 (n + 1)).toNat

end

end A006317.P4752637625761820785

/-! ## A006317.P7352254616974793740

`A037820(A244656(n+1))+A005228(n+1)`
-/

namespace A006317.P7352254616974793740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A244656 (n + 1)).toNat + A005228 (n + 1)

end

end A006317.P7352254616974793740

/-!
# A006318: Large Schröder numbers (or large Schroeder numbers, or big Schroeder numbers).

The programs for A006318, the canonical program `A006318.P6019427271403172875` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006318 has offset 0).

The definition of A006318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006318.P5118234746059416498

`∑[A006319(n)]`
-/

namespace A006318.P5118234746059416498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006318.P5118234746059416498

namespace A006318

/-- `∑[A006319(n)]` -/
def P5118234746059416498.Spec : Prop :=
  ∀ n, P5118234746059416498.a n = A006318 n

end A006318

/-! ## A006318.P5447330156054848687

`A073150(∑[n])`
-/

namespace A006318.P5447330156054848687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006318.P5447330156054848687

namespace A006318

/-- `A073150(∑[n])` -/
def P5447330156054848687.Spec : Prop :=
  ∀ n, P5447330156054848687.a n = A006318 n

end A006318

/-! ## A006318.P13323005805950744778

`A080247(∑[n])`
-/

namespace A006318.P13323005805950744778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006318.P13323005805950744778

namespace A006318

/-- `A080247(∑[n])` -/
def P13323005805950744778.Spec : Prop :=
  ∀ n, P13323005805950744778.a n = A006318 n

end A006318

/-! ## A006318.P17342702942634118832

`A133367(∑[n])`
-/

namespace A006318.P17342702942634118832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006318.P17342702942634118832

namespace A006318

/-- `A133367(∑[n])` -/
def P17342702942634118832.Spec : Prop :=
  ∀ n, P17342702942634118832.a n = A006318 n

end A006318

/-! ## A006318.P4128487111143851754

`A351385(∑[n])`
-/

namespace A006318.P4128487111143851754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006318.P4128487111143851754

namespace A006318

/-- `A351385(∑[n])` -/
def P4128487111143851754.Spec : Prop :=
  ∀ n, P4128487111143851754.a n = A006318 n

end A006318

/-! ## A006318.P6019427271403172875

`Δ[A176006(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A006318

/-- `Δ[A176006(n)]` -/
def P6019427271403172875.Spec : Prop :=
  ∀ n, P6019427271403172875.a n = A006318 n

theorem P6019427271403172875.correct : P6019427271403172875.Spec := by
  intro n
  simp only [A006318]

end A006318

/-! ## A006318.P7721015085992812929

`record[A080247(n)]`
-/

namespace A006318.P7721015085992812929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P7721015085992812929

namespace A006318

/-- `record[A080247(n)]` -/
def P7721015085992812929.Spec : Prop :=
  ∀ n, P7721015085992812929.a n = A006318 n

end A006318

/-! ## A006318.P9969553676578808808

`record[A122538(n)]`
-/

namespace A006318.P9969553676578808808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P9969553676578808808

namespace A006318

/-- `record[A122538(n)]` -/
def P9969553676578808808.Spec : Prop :=
  ∀ n, P9969553676578808808.a n = A006318 n

end A006318

/-! ## A006318.P8397070459941093276

`record[A351385(n)]`
-/

namespace A006318.P8397070459941093276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P8397070459941093276

namespace A006318

/-- `record[A351385(n)]` -/
def P8397070459941093276.Spec : Prop :=
  ∀ n, P8397070459941093276.a n = A006318 n

end A006318

/-! ## A006318.P8953880952588217170

`A035011(n)+1`
-/

namespace A006318.P8953880952588217170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 n + 1

end

end A006318.P8953880952588217170

namespace A006318

/-- `A035011(n)+1` -/
def P8953880952588217170.Spec : Prop :=
  ∀ n, P8953880952588217170.a n = A006318 n

end A006318

/-! ## A006318.P17739638019730628400

`A155069(n+1)`
-/

namespace A006318.P17739638019730628400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1)

end

end A006318.P17739638019730628400

namespace A006318

/-- `A155069(n+1)` -/
def P17739638019730628400.Spec : Prop :=
  ∀ n, P17739638019730628400.a n = A006318 n

end A006318

/-! ## A006318.P919704552252738576

`A238111(n)/2`
-/

namespace A006318.P919704552252738576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 n : ℚ) / 2

end

end A006318.P919704552252738576

namespace A006318

/-- `A238111(n)/2` -/
def P919704552252738576.Spec : Prop :=
  ∀ n, P919704552252738576.a n = (A006318 n : ℚ)

theorem P919704552252738576.correct : P919704552252738576.Spec := by
  intro n
  simp only [A006318, Nat.add_sub_cancel, A006318.P919704552252738576.a, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A176006, A176006.P1011772208691613746.a, A238111, A238111.P18207636509686923299.f1, A238111.P18207636509686923299.a, A035011, A035011.P9518209092387552565.a, A086616, A086616.P4854257795119713207.a, A025240, A025240.P15418065983883315172.a, A104858, A104858.P16916997968901490082.f1, A104858.P16916997968901490082.a, A000007, A000007.P6599383543502402472.a, A001003, A001003.P3197254907760158298.a, A080243, A080243.P6426181956936067807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006318

/-! ## A006318.P6500427594993536009

`abs(A080245(∑[n]))`
-/

namespace A006318.P6500427594993536009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A006318.P6500427594993536009

namespace A006318

/-- `abs(A080245(∑[n]))` -/
def P6500427594993536009.Spec : Prop :=
  ∀ n, P6500427594993536009.a n = A006318 n

end A006318

/-! ## A006318.P6055683575779219902

`record[abs(A080245(n))]`
-/

namespace A006318.P6055683575779219902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P6055683575779219902

namespace A006318

/-- `record[abs(A080245(n))]` -/
def P6055683575779219902.Spec : Prop :=
  ∀ n, P6055683575779219902.a n = A006318 n

end A006318

/-! ## A006318.P1461442600815799189

`record[abs(A112477(n))]`
-/

namespace A006318.P1461442600815799189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112477 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P1461442600815799189

namespace A006318

/-- `record[abs(A112477(n))]` -/
def P1461442600815799189.Spec : Prop :=
  ∀ n, P1461442600815799189.a n = A006318 n

end A006318

/-! ## A006318.P2812978408155625690

`record[abs(A117354(n))]`
-/

namespace A006318.P2812978408155625690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117354 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P2812978408155625690

namespace A006318

/-- `record[abs(A117354(n))]` -/
def P2812978408155625690.Spec : Prop :=
  ∀ n, P2812978408155625690.a n = A006318 n

end A006318

/-! ## A006318.P16002508700803219669

`∑[A073151(∑[n])]`
-/

namespace A006318.P16002508700803219669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073151 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006318.P16002508700803219669

namespace A006318

/-- `∑[A073151(∑[n])]` -/
def P16002508700803219669.Spec : Prop :=
  ∀ n, P16002508700803219669.a n = A006318 n

end A006318

/-! ## A006318.P1124257495502802837

`record[ratio[A132372(n)]]`
-/

namespace A006318.P1124257495502802837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006318.P1124257495502802837

namespace A006318

/-- `record[ratio[A132372(n)]]` -/
def P1124257495502802837.Spec : Prop :=
  ∀ n, P1124257495502802837.a n = (A006318 n : ℚ)

end A006318

/-! ## A006318.P10827076848567232299

`abs(A086456(n+1))`
-/

namespace A006318.P10827076848567232299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 (n + 1)|

end

end A006318.P10827076848567232299

namespace A006318

/-- `abs(A086456(n+1))` -/
def P10827076848567232299.Spec : Prop :=
  ∀ n, P10827076848567232299.a n = A006318 n

end A006318

/-! ## A006318.P3210165147467255148

`abs(A103137(n+1))`
-/

namespace A006318.P3210165147467255148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 (n + 1)|

end

end A006318.P3210165147467255148

namespace A006318

/-- `abs(A103137(n+1))` -/
def P3210165147467255148.Spec : Prop :=
  ∀ n, P3210165147467255148.a n = A006318 n

end A006318

/-!
# A006319: Royal paths in a lattice (convolution of A006318).

The programs for A006319, the canonical program `A006319.P5493840374935131367` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006319 has offset 0).

The definition of A006319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006319.P8830690929845551417

`A073151(∑[n])`
-/

namespace A006319.P8830690929845551417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006319.P8830690929845551417

namespace A006319

/-- `A073151(∑[n])` -/
def P8830690929845551417.Spec : Prop :=
  ∀ n, P8830690929845551417.a n = A006319 n

end A006319

/-! ## A006319.P3619455171092235954

`A106579(A027379(n)+1)`
-/

namespace A006319.P3619455171092235954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A027379 n + 1).toNat

end

end A006319.P3619455171092235954

namespace A006319

/-- `A106579(A027379(n)+1)` -/
def P3619455171092235954.Spec : Prop :=
  ∀ n, P3619455171092235954.a n = A006319 n

end A006319

/-! ## A006319.P10090294803023408774

`A033877(A212342(n+1))`
-/

namespace A006319.P10090294803023408774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A212342 (n + 1)).toNat

end

end A006319.P10090294803023408774

namespace A006319

/-- `A033877(A212342(n+1))` -/
def P10090294803023408774.Spec : Prop :=
  ∀ n, P10090294803023408774.a n = A006319 n

end A006319

/-! ## A006319.P5905308425113182149

`A033877(A347553(n+3))`
-/

namespace A006319.P5905308425113182149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A347553 (n + 3)).toNat

end

end A006319.P5905308425113182149

namespace A006319

/-- `A033877(A347553(n+3))` -/
def P5905308425113182149.Spec : Prop :=
  ∀ n, P5905308425113182149.a n = A006319 n

end A006319

/-! ## A006319.P5493840374935131367

`A238112(n)+A001003(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A006319

/-- `A238112(n)+A001003(n)` -/
def P5493840374935131367.Spec : Prop :=
  ∀ n, P5493840374935131367.a n = A006319 n

theorem P5493840374935131367.correct : P5493840374935131367.Spec := by
  intro n
  simp only [A006319]

end A006319

/-! ## A006319.P18437801640473199339

`A033877(A027379(n)-n)`
-/

namespace A006319.P18437801640473199339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A027379 n - (n : ℤ)).toNat

end

end A006319.P18437801640473199339

namespace A006319

/-- `A033877(A027379(n)-n)` -/
def P18437801640473199339.Spec : Prop :=
  ∀ n, P18437801640473199339.a n = A006319 n

end A006319

/-! ## A006319.P12072556801402793810

`A238112(n)+abs(A080243(n))`
-/

namespace A006319.P12072556801402793810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + |A080243 n|

end

end A006319.P12072556801402793810

namespace A006319

/-- `A238112(n)+abs(A080243(n))` -/
def P12072556801402793810.Spec : Prop :=
  ∀ n, P12072556801402793810.a n = A006319 n

end A006319

/-! ## A006319.P11938638181391069238

`A238112(n)+A104219(∑[n])`
-/

namespace A006319.P11938638181391069238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + A104219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006319.P11938638181391069238

namespace A006319

/-- `A238112(n)+A104219(∑[n])` -/
def P11938638181391069238.Spec : Prop :=
  ∀ n, P11938638181391069238.a n = A006319 n

end A006319

/-! ## A006319.P1371039710763479925

`A033877(A179865(n+1)+n)`
-/

namespace A006319.P1371039710763479925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A006319.P1371039710763479925

namespace A006319

/-- `A033877(A179865(n+1)+n)` -/
def P1371039710763479925.Spec : Prop :=
  ∀ n, P1371039710763479925.a n = A006319 n

end A006319

/-! ## A006319.P7568456261434356684

`A155069(n)+2*A238112(n)`
-/

namespace A006319.P7568456261434356684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + 2 * A238112 n

end

end A006319.P7568456261434356684

namespace A006319

/-- `A155069(n)+2*A238112(n)` -/
def P7568456261434356684.Spec : Prop :=
  ∀ n, P7568456261434356684.a n = A006319 n

theorem P7568456261434356684.correct : P7568456261434356684.Spec := by
  intro n
  simp only [A006319, Nat.add_sub_cancel, A006319.P7568456261434356684.a, A006319.P5493840374935131367.a, A001003, A001003.P3197254907760158298.a, A155069, A155069.P2113503701719238828.a, A238112, A238112.P3075264075609945640.a, A080243, A080243.P6426181956936067807.a, A086456, A086456.P993740706458250984.a, A063524, A063524.P5631347671191003537.a, A085403, A085403.P17921680985737888414.a, A176479, A176479.P3498820277277105498.a, A181983, A181983.P3699358180015306672.a, A000007, A000007.P6599383543502402472.a, A001850, A001850.P8225243896153059034.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A047781, A047781.P7244301787128564813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006319

/-! ## A006319.P3320751761980980819

`A033877(A161680(n)+A004277(n))`
-/

namespace A006319.P3320751761980980819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A161680 n + A004277 n).toNat

end

end A006319.P3320751761980980819

namespace A006319

/-- `A033877(A161680(n)+A004277(n))` -/
def P3320751761980980819.Spec : Prop :=
  ∀ n, P3320751761980980819.a n = A006319 n

end A006319

/-! ## A006319.P5807213911505273438

`A001003(n)+A001003(n)-A155069(n)`
-/

namespace A006319.P5807213911505273438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n + (A001003 n - A155069 n)

end

end A006319.P5807213911505273438

namespace A006319

/-- `A001003(n)+A001003(n)-A155069(n)` -/
def P5807213911505273438.Spec : Prop :=
  ∀ n, P5807213911505273438.a n = A006319 n

theorem P5807213911505273438.correct : P5807213911505273438.Spec := by
  intro n
  simp only [A006319, Nat.add_sub_cancel, A006319.P5807213911505273438.a, A006319.P5493840374935131367.a, A001003, A001003.P3197254907760158298.a, A155069, A155069.P2113503701719238828.a, A238112, A238112.P3075264075609945640.a, A080243, A080243.P6426181956936067807.a, A086456, A086456.P993740706458250984.a, A063524, A063524.P5631347671191003537.a, A085403, A085403.P17921680985737888414.a, A176479, A176479.P3498820277277105498.a, A181983, A181983.P3699358180015306672.a, A000007, A000007.P6599383543502402472.a, A001850, A001850.P8225243896153059034.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A047781, A047781.P7244301787128564813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006319

/-! ## A006319.P14290897399960670958

`A001003(n)+A001003(n)-abs(A086456(n))`
-/

namespace A006319.P14290897399960670958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n + (A001003 n - |A086456 n|)

end

end A006319.P14290897399960670958

namespace A006319

/-- `A001003(n)+A001003(n)-abs(A086456(n))` -/
def P14290897399960670958.Spec : Prop :=
  ∀ n, P14290897399960670958.a n = A006319 n

theorem P14290897399960670958.correct : P14290897399960670958.Spec := by
  intro n
  simp only [A006319, Nat.add_sub_cancel, A006319.P14290897399960670958.a, A006319.P5493840374935131367.a, A001003, A001003.P3197254907760158298.a, A086456, A086456.P993740706458250984.a, A238112, A238112.P3075264075609945640.a, A063524, A063524.P5631347671191003537.a, A080243, A080243.P6426181956936067807.a, A085403, A085403.P17921680985737888414.a, A155069, A155069.P2113503701719238828.a, A000007, A000007.P6599383543502402472.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A176479, A176479.P3498820277277105498.a, A181983, A181983.P3699358180015306672.a, A001850, A001850.P8225243896153059034.a, A047781, A047781.P7244301787128564813.a, A176006, A176006.P1011772208691613746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006319

/-! ## A006319.P13024294846983087647

`A001003(n)+A001003(n)-abs(A103137(n))`
-/

namespace A006319.P13024294846983087647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n + (A001003 n - |A103137 n|)

end

end A006319.P13024294846983087647

namespace A006319

/-- `A001003(n)+A001003(n)-abs(A103137(n))` -/
def P13024294846983087647.Spec : Prop :=
  ∀ n, P13024294846983087647.a n = A006319 n

end A006319

/-! ## A006319.P13188498267114125908

`Δ[record[A122538(n+1)]]`
-/

namespace A006319.P13188498267114125908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006319.P13188498267114125908

namespace A006319

/-- `Δ[record[A122538(n+1)]]` -/
def P13188498267114125908.Spec : Prop :=
  ∀ n, P13188498267114125908.a n = A006319 n

end A006319

/-! ## A006319.P17895834301852906492

`A080247(A133263(n)-1)`
-/

namespace A006319.P17895834301852906492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A133263 n - 1).toNat

end

end A006319.P17895834301852906492

namespace A006319

/-- `A080247(A133263(n)-1)` -/
def P17895834301852906492.Spec : Prop :=
  ∀ n, P17895834301852906492.a n = A006319 n

end A006319

/-! ## A006319.P7563509364775903057

`A080247(A253145(n)-n)`
-/

namespace A006319.P7563509364775903057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A253145 n - (n : ℤ)).toNat

end

end A006319.P7563509364775903057

namespace A006319

/-- `A080247(A253145(n)-n)` -/
def P7563509364775903057.Spec : Prop :=
  ∀ n, P7563509364775903057.a n = A006319 n

end A006319

/-! ## A006319.P1995466575963565979

`A000007(n)+Δ[A155069(n)]`
-/

namespace A006319.P1995466575963565979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A006319.P1995466575963565979

namespace A006319

/-- `A000007(n)+Δ[A155069(n)]` -/
def P1995466575963565979.Spec : Prop :=
  ∀ n, P1995466575963565979.a n = A006319 n

end A006319

/-! ## A006319.P1229845501310541083

`Δ[A155069(n)+A057427(n)]`
-/

namespace A006319.P1229845501310541083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006319.P1229845501310541083

namespace A006319

/-- `Δ[A155069(n)+A057427(n)]` -/
def P1229845501310541083.Spec : Prop :=
  ∀ n, P1229845501310541083.a n = A006319 n

end A006319

/-! ## A006319.P8819282239904985632

`Δ[A106579(A027379(n)-n)]`
-/

namespace A006319.P8819282239904985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A027379 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006319.P8819282239904985632

namespace A006319

/-- `Δ[A106579(A027379(n)-n)]` -/
def P8819282239904985632.Spec : Prop :=
  ∀ n, P8819282239904985632.a n = A006319 n

end A006319

/-!
# A006320: Royal paths in a lattice.

The programs for A006320, the canonical program `A006320.P4908016192536168326` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006320 has offset 0).

The definition of A006320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006320.P13283413795131005577

`∑[A110190(n+1)]`
-/

namespace A006320.P13283413795131005577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006320.P13283413795131005577

namespace A006320

/-- `∑[A110190(n+1)]` -/
def P13283413795131005577.Spec : Prop :=
  ∀ n, P13283413795131005577.a n = A006320 n

end A006320

/-! ## A006320.P15889998116067436560

`A033877(∑[n+3]+1)`
-/

namespace A006320.P15889998116067436560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006320.P15889998116067436560

namespace A006320

/-- `A033877(∑[n+3]+1)` -/
def P15889998116067436560.Spec : Prop :=
  ∀ n, P15889998116067436560.a n = A006320 n

end A006320

/-! ## A006320.P9650210923244075108

`A106579(A027379(n+2))`
-/

namespace A006320.P9650210923244075108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A027379 (n + 2)).toNat

end

end A006320.P9650210923244075108

namespace A006320

/-- `A106579(A027379(n+2))` -/
def P9650210923244075108.Spec : Prop :=
  ∀ n, P9650210923244075108.a n = A006320 n

end A006320

/-! ## A006320.P8406572421381749536

`A106579(A055998(n+2))`
-/

namespace A006320.P8406572421381749536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A055998 (n + 2)).toNat

end

end A006320.P8406572421381749536

namespace A006320

/-- `A106579(A055998(n+2))` -/
def P8406572421381749536.Spec : Prop :=
  ∀ n, P8406572421381749536.a n = A006320 n

end A006320

/-! ## A006320.P15632563306258620370

`A268208(n+1)-A006318(n+1)`
-/

namespace A006320.P15632563306258620370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268208 (n + 1) - A006318 (n + 1)

end

end A006320.P15632563306258620370

namespace A006320

/-- `A268208(n+1)-A006318(n+1)` -/
def P15632563306258620370.Spec : Prop :=
  ∀ n, P15632563306258620370.a n = A006320 n

end A006320

/-! ## A006320.P9589165783151530497

`A268208(n+1)+A086456(n+2)`
-/

namespace A006320.P9589165783151530497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268208 (n + 1) + A086456 (n + 2)

end

end A006320.P9589165783151530497

namespace A006320

/-- `A268208(n+1)+A086456(n+2)` -/
def P9589165783151530497.Spec : Prop :=
  ∀ n, P9589165783151530497.a n = A006320 n

end A006320

/-! ## A006320.P12838090356611060744

`Δ[A006319(n+1)]-A006318(n+1)`
-/

namespace A006320.P12838090356611060744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006318 (n + 1)

end

end A006320.P12838090356611060744

namespace A006320

/-- `Δ[A006319(n+1)]-A006318(n+1)` -/
def P12838090356611060744.Spec : Prop :=
  ∀ n, P12838090356611060744.a n = A006320 n

end A006320

/-! ## A006320.P5171648821317864164

`Δ[A006319(n+1)]-2*A001003(n+1)`
-/

namespace A006320.P5171648821317864164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A001003 (n + 1)

end

end A006320.P5171648821317864164

namespace A006320

/-- `Δ[A006319(n+1)]-2*A001003(n+1)` -/
def P5171648821317864164.Spec : Prop :=
  ∀ n, P5171648821317864164.a n = A006320 n

end A006320

/-! ## A006320.P10547268016671864118

`A080247(∑[n+2]+3)`
-/

namespace A006320.P10547268016671864118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006320.P10547268016671864118

namespace A006320

/-- `A080247(∑[n+2]+3)` -/
def P10547268016671864118.Spec : Prop :=
  ∀ n, P10547268016671864118.a n = A006320 n

end A006320

/-! ## A006320.P293442383981020934

`A122538(A167614(n+2))`
-/

namespace A006320.P293442383981020934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A167614 (n + 2)).toNat

end

end A006320.P293442383981020934

namespace A006320

/-- `A122538(A167614(n+2))` -/
def P293442383981020934.Spec : Prop :=
  ∀ n, P293442383981020934.a n = A006320 n

end A006320

/-! ## A006320.P4908016192536168326

`Δ[Δ[A006318(n)]]-A006318(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A006320

/-- `Δ[Δ[A006318(n)]]-A006318(n+1)` -/
def P4908016192536168326.Spec : Prop :=
  ∀ n, P4908016192536168326.a n = A006320 n

theorem P4908016192536168326.correct : P4908016192536168326.Spec := by
  intro n
  simp only [A006320]

end A006320

/-! ## A006320.P3940167298609770141

`record[A033877(n+1)/A080247(n+2)]`
-/

namespace A006320.P3940167298609770141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033877 (n + 1) : ℚ) / (A080247 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006320.P3940167298609770141

namespace A006320

/-- `record[A033877(n+1)/A080247(n+2)]` -/
def P3940167298609770141.Spec : Prop :=
  ∀ n, P3940167298609770141.a n = (A006320 n : ℚ)

end A006320

/-! ## A006320.P11351663940159927082

`record[A033877(n+1)/A144944(n+3)]`
-/

namespace A006320.P11351663940159927082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033877 (n + 1) : ℚ) / (A144944 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006320.P11351663940159927082

namespace A006320

/-- `record[A033877(n+1)/A144944(n+3)]` -/
def P11351663940159927082.Spec : Prop :=
  ∀ n, P11351663940159927082.a n = (A006320 n : ℚ)

end A006320

/-! ## A006320.P3424032908027343719

`record[A106579(n)/A144944(n+3)]`
-/

namespace A006320.P3424032908027343719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106579 n : ℚ) / (A144944 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006320.P3424032908027343719

namespace A006320

/-- `record[A106579(n)/A144944(n+3)]` -/
def P3424032908027343719.Spec : Prop :=
  ∀ n, P3424032908027343719.a n = (A006320 n : ℚ)

end A006320

/-!
# A006321: Royal paths in a lattice.

The programs for A006321, the canonical program `A006321.P11907659347702420123` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006321 has offset 0).

The definition of A006321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006321.P8552814188853506534

`A106579(∑[n+1]+4*n+10)`
-/

namespace A006321.P8552814188853506534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A006321.P8552814188853506534

namespace A006321

/-- `A106579(∑[n+1]+4*n+10)` -/
def P8552814188853506534.Spec : Prop :=
  ∀ n, P8552814188853506534.a n = A006321 n

end A006321

/-! ## A006321.P11399934824395656955

`A033877(A027379(n+2))`
-/

namespace A006321.P11399934824395656955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A027379 (n + 2)).toNat

end

end A006321.P11399934824395656955

namespace A006321

/-- `A033877(A027379(n+2))` -/
def P11399934824395656955.Spec : Prop :=
  ∀ n, P11399934824395656955.a n = A006321 n

end A006321

/-! ## A006321.P770139567803532459

`A033877(A055998(n+2))`
-/

namespace A006321.P770139567803532459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A055998 (n + 2)).toNat

end

end A006321.P770139567803532459

namespace A006321

/-- `A033877(A055998(n+2))` -/
def P770139567803532459.Spec : Prop :=
  ∀ n, P770139567803532459.a n = A006321 n

end A006321

/-! ## A006321.P18044362271009478522

`A033877(A052905(n+1)+2)`
-/

namespace A006321.P18044362271009478522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A052905 (n + 1) + 2).toNat

end

end A006321.P18044362271009478522

namespace A006321

/-- `A033877(A052905(n+1)+2)` -/
def P18044362271009478522.Spec : Prop :=
  ∀ n, P18044362271009478522.a n = A006321 n

end A006321

/-! ## A006321.P13967321188860481153

`A033877(A000124(n+4)-4)`
-/

namespace A006321.P13967321188860481153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A000124 (n + 4) - 4).toNat

end

end A006321.P13967321188860481153

namespace A006321

/-- `A033877(A000124(n+4)-4)` -/
def P13967321188860481153.Spec : Prop :=
  ∀ n, P13967321188860481153.a n = A006321 n

end A006321

/-! ## A006321.P11907659347702420123

`Δ[A006320(n)-A006318(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A006321

/-- `Δ[A006320(n)-A006318(n+1)]` -/
def P11907659347702420123.Spec : Prop :=
  ∀ n, P11907659347702420123.a n = A006321 n

theorem P11907659347702420123.correct : P11907659347702420123.Spec := by
  intro n
  simp only [A006321]

end A006321

/-! ## A006321.P11418883350391702154

`A080247(∑[n+3]+6)`
-/

namespace A006321.P11418883350391702154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A006321.P11418883350391702154

namespace A006321

/-- `A080247(∑[n+3]+6)` -/
def P11418883350391702154.Spec : Prop :=
  ∀ n, P11418883350391702154.a n = A006321 n

end A006321

/-!
# A006322: 4-dimensional analog of centered polygonal numbers.

The programs for A006322, the canonical program `A006322.P17801695648679687487` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006322 has offset 1).

The definition of A006322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006322.P10268132319610576161

`5*C(n+3, 4)+C(n+2, 2)`
-/

namespace A006322.P10268132319610576161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 3) 4 + Nat.choose (n + 2) 2

end

end A006322.P10268132319610576161

namespace A006322

/-- `5*C(n+3, 4)+C(n+2, 2)` -/
def P10268132319610576161.Spec : Prop :=
  ∀ n, (P10268132319610576161.a n : ℤ) = A006322 (n + 1)

end A006322

/-! ## A006322.P11212066031573802340

`(n+1)*(n+2)*(5*(n+1)²+5*(n+1)+2)/24`
-/

namespace A006322.P11212066031573802340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (5 * (n + 1) ^ 2 + 5 * (n + 1) + 2) : ℚ) / 24

end

end A006322.P11212066031573802340

namespace A006322

/-- `(n+1)*(n+2)*(5*(n+1)²+5*(n+1)+2)/24` -/
def P11212066031573802340.Spec : Prop :=
  ∀ n, P11212066031573802340.a n = (A006322 (n + 1) : ℚ)

theorem P11212066031573802340.correct : P11212066031573802340.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006322, Nat.add_sub_cancel, A006322.P11212066031573802340.a, A006322.P17801695648679687487.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006322, Nat.add_sub_cancel, A006322.P11212066031573802340.a, A006322.P17801695648679687487.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006322

/-! ## A006322.P17801695648679687487

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=31, a(3)=85, a(4)=190`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006322

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17801695648679687487.Spec : Prop :=
  ∀ n, P17801695648679687487.a n = A006322 (n + 1)

theorem P17801695648679687487.correct : P17801695648679687487.Spec := by
  intro n
  simp only [A006322, Nat.add_sub_cancel]

end A006322

/-! ## A006322.P2242291093951749213

`A000537(n+1)-A000332(n+3)`
-/

namespace A006322.P2242291093951749213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) - A000332 (n + 3)

end

end A006322.P2242291093951749213

namespace A006322

/-- `A000537(n+1)-A000332(n+3)` -/
def P2242291093951749213.Spec : Prop :=
  ∀ n, P2242291093951749213.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P1758993586991115051

`∑[n+1]²-C(n+3, 4)`
-/

namespace A006322.P1758993586991115051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (n + 3) 4 : ℤ)

end

end A006322.P1758993586991115051

namespace A006322

/-- `∑[n+1]²-C(n+3, 4)` -/
def P1758993586991115051.Spec : Prop :=
  ∀ n, P1758993586991115051.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P3224734238442354669

`∑[5*C(n+2, 3)+n+1]`
-/

namespace A006322.P3224734238442354669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 2) 3 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P3224734238442354669

namespace A006322

/-- `∑[5*C(n+2, 3)+n+1]` -/
def P3224734238442354669.Spec : Prop :=
  ∀ n, (P3224734238442354669.a n : ℤ) = A006322 (n + 1)

end A006322

/-! ## A006322.P16075776290148077258

`∑[(n+1)^3-C(n+2, 3)]`
-/

namespace A006322.P16075776290148077258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P16075776290148077258

namespace A006322

/-- `∑[(n+1)^3-C(n+2, 3)]` -/
def P16075776290148077258.Spec : Prop :=
  ∀ n, P16075776290148077258.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P8480543581656767050

`floor(∑[∑[∑[a(n-1)+5]]])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A006322.P8480543581656767050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P8480543581656767050

namespace A006322

/-- `floor(∑[∑[∑[a(n-1)+5]]])` -/
def P8480543581656767050.Spec : Prop :=
  ∀ n, (P8480543581656767050.a n : ℤ) = A006322 (n + 1)

end A006322

/-! ## A006322.P4505720432495518304

`floor(∑[∑[1-∑[a(n-1)-5]]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A006322.P4505720432495518304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P4505720432495518304

namespace A006322

/-- `floor(∑[∑[1-∑[a(n-1)-5]]])` -/
def P4505720432495518304.Spec : Prop :=
  ∀ n, P4505720432495518304.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P8485044529054904493

`(n+1)^3+a(n-1)-∑[∑[n]]` with `a(0)=1`
-/

namespace A006322.P8485044529054904493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℤ) + (a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A006322.P8485044529054904493

namespace A006322

/-- `(n+1)^3+a(n-1)-∑[∑[n]]` -/
def P8485044529054904493.Spec : Prop :=
  ∀ n, P8485044529054904493.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P1769496340518924983

`∑[n+1]+∑[∑[∑[a(n-1)+5]]]` with `a(0)=0`
-/

namespace A006322.P1769496340518924983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006322.P1769496340518924983

namespace A006322

/-- `∑[n+1]+∑[∑[∑[a(n-1)+5]]]` -/
def P1769496340518924983.Spec : Prop :=
  ∀ n, (P1769496340518924983.a n : ℤ) = A006322 (n + 1)

end A006322

/-! ## A006322.P14250400546075711580

`∑[∑[A005891(n)]]`
-/

namespace A006322.P14250400546075711580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P14250400546075711580

namespace A006322

/-- `∑[∑[A005891(n)]]` -/
def P14250400546075711580.Spec : Prop :=
  ∀ n, P14250400546075711580.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P9098802594285050419

`∑[A092185(n)+1]`
-/

namespace A006322.P9098802594285050419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P9098802594285050419

namespace A006322

/-- `∑[A092185(n)+1]` -/
def P9098802594285050419.Spec : Prop :=
  ∀ n, P9098802594285050419.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P13067319036933813693

`∑[A134481(n)+n+1]`
-/

namespace A006322.P13067319036933813693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P13067319036933813693

namespace A006322

/-- `∑[A134481(n)+n+1]` -/
def P13067319036933813693.Spec : Prop :=
  ∀ n, P13067319036933813693.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P4061949966817947073

`A271663(n)-∑[∑[n]²]`
-/

namespace A006322.P4061949966817947073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006322.P4061949966817947073

namespace A006322

/-- `A271663(n)-∑[∑[n]²]` -/
def P4061949966817947073.Spec : Prop :=
  ∀ n, P4061949966817947073.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P603685283233526055

`A212246(n)+(n+1)^3`
-/

namespace A006322.P603685283233526055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 n + ((n + 1) ^ 3 : ℤ)

end

end A006322.P603685283233526055

namespace A006322

/-- `A212246(n)+(n+1)^3` -/
def P603685283233526055.Spec : Prop :=
  ∀ n, P603685283233526055.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P7775313751316721690

`∑[A162147(n)+(n+1)²]`
-/

namespace A006322.P7775313751316721690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P7775313751316721690

namespace A006322

/-- `∑[A162147(n)+(n+1)²]` -/
def P7775313751316721690.Spec : Prop :=
  ∀ n, P7775313751316721690.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P12512249978110904897

`A007715(n+1)+∑[∑[n]]`
-/

namespace A006322.P12512249978110904897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006322.P12512249978110904897

namespace A006322

/-- `A007715(n+1)+∑[∑[n]]` -/
def P12512249978110904897.Spec : Prop :=
  ∀ n, P12512249978110904897.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P18024569119207483074

`∑[n+1]²-∑[A000292(n)]`
-/

namespace A006322.P18024569119207483074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006322.P18024569119207483074

namespace A006322

/-- `∑[n+1]²-∑[A000292(n)]` -/
def P18024569119207483074.Spec : Prop :=
  ∀ n, P18024569119207483074.a n = A006322 (n + 1)

end A006322

/-! ## A006322.P2509548122597809693

`∑[A033994(n+1)-(n+1)²]`
-/

namespace A006322.P2509548122597809693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033994 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006322.P2509548122597809693

namespace A006322

/-- `∑[A033994(n+1)-(n+1)²]` -/
def P2509548122597809693.Spec : Prop :=
  ∀ n, P2509548122597809693.a n = A006322 (n + 1)

end A006322

/-!
# A006323: 4-dimensional analog of centered polygonal numbers.

The programs for A006323, the canonical program `A006323.P10425342412119786384` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006323 has offset 1).

The definition of A006323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006323.P7888279648137282369

`7*C(n+3, 4)+C(n+2, 2)`
-/

namespace A006323.P7888279648137282369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (n + 3) 4 + Nat.choose (n + 2) 2

end

end A006323.P7888279648137282369

namespace A006323

/-- `7*C(n+3, 4)+C(n+2, 2)` -/
def P7888279648137282369.Spec : Prop :=
  ∀ n, (P7888279648137282369.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P1824921599657376218

`(n+1)*(n+2)*(7*(n+1)²+7*(n+1)-2)/24`
-/

namespace A006323.P1824921599657376218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((7 * (n + 1) ^ 2 + 7 * (n + 1) : ℤ) - 2) : ℚ) / 24

end

end A006323.P1824921599657376218

namespace A006323

/-- `(n+1)*(n+2)*(7*(n+1)²+7*(n+1)-2)/24` -/
def P1824921599657376218.Spec : Prop :=
  ∀ n, P1824921599657376218.a n = (A006323 (n + 1) : ℚ)

theorem P1824921599657376218.correct : P1824921599657376218.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006323, Nat.add_sub_cancel, A006323.P1824921599657376218.a, A006323.P10425342412119786384.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006323, Nat.add_sub_cancel, A006323.P1824921599657376218.a, A006323.P10425342412119786384.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006323

/-! ## A006323.P10425342412119786384

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=41, a(3)=115, a(4)=260`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006323

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10425342412119786384.Spec : Prop :=
  ∀ n, P10425342412119786384.a n = A006323 (n + 1)

theorem P10425342412119786384.correct : P10425342412119786384.Spec := by
  intro n
  simp only [A006323, Nat.add_sub_cancel]

end A006323

/-! ## A006323.P13734295109214254111

`C(n+3, 4)+∑[n+1]²`
-/

namespace A006323.P13734295109214254111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A006323.P13734295109214254111

namespace A006323

/-- `C(n+3, 4)+∑[n+1]²` -/
def P13734295109214254111.Spec : Prop :=
  ∀ n, (P13734295109214254111.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P6164845898476056787

`∑[C(n+2, 3)+(n+1)^3]`
-/

namespace A006323.P6164845898476056787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006323.P6164845898476056787

namespace A006323

/-- `∑[C(n+2, 3)+(n+1)^3]` -/
def P6164845898476056787.Spec : Prop :=
  ∀ n, (P6164845898476056787.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P5624305718575847726

`floor(∑[∑[∑[a(n-1)+7]]])` with `a(0)=1, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A006323.P5624305718575847726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f3 =>
  f3 (n - 1) + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006323.P5624305718575847726

namespace A006323

/-- `floor(∑[∑[∑[a(n-1)+7]]])` -/
def P5624305718575847726.Spec : Prop :=
  ∀ n, (P5624305718575847726.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P2704993489029531545

`(n+1)^3+∑[∑[n]]+a(n-1)` with `a(0)=1`
-/

namespace A006323.P2704993489029531545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 3 + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A006323.P2704993489029531545

namespace A006323

/-- `(n+1)^3+∑[∑[n]]+a(n-1)` -/
def P2704993489029531545.Spec : Prop :=
  ∀ n, (P2704993489029531545.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P3832260636384651403

`∑[∑[a(n-1)+n]]+∑[n+1]²` with `a(0)=0`
-/

namespace A006323.P3832260636384651403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A006323.P3832260636384651403

namespace A006323

/-- `∑[∑[a(n-1)+n]]+∑[n+1]²` -/
def P3832260636384651403.Spec : Prop :=
  ∀ n, (P3832260636384651403.a n : ℤ) = A006323 (n + 1)

end A006323

/-! ## A006323.P10372643554184264193

`∑[∑[A069099(n+1)]]`
-/

namespace A006323.P10372643554184264193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006323.P10372643554184264193

namespace A006323

/-- `∑[∑[A069099(n+1)]]` -/
def P10372643554184264193.Spec : Prop :=
  ∀ n, P10372643554184264193.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P9900063600866569039

`A051740(n)-∑[∑[n]]`
-/

namespace A006323.P9900063600866569039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006323.P9900063600866569039

namespace A006323

/-- `A051740(n)-∑[∑[n]]` -/
def P9900063600866569039.Spec : Prop :=
  ∀ n, P9900063600866569039.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P15740077572080997965

`∑[A245301(n)+(n+1)²]`
-/

namespace A006323.P15740077572080997965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006323.P15740077572080997965

namespace A006323

/-- `∑[A245301(n)+(n+1)²]` -/
def P15740077572080997965.Spec : Prop :=
  ∀ n, P15740077572080997965.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P11168026970419370768

`A338996(n)+∑[(n+1)²]`
-/

namespace A006323.P11168026970419370768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338996 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006323.P11168026970419370768

namespace A006323

/-- `A338996(n)+∑[(n+1)²]` -/
def P11168026970419370768.Spec : Prop :=
  ∀ n, P11168026970419370768.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P8731701213048892637

`∑[A374083(n+1)/(n+1)]`
-/

namespace A006323.P8731701213048892637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374083 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006323.P8731701213048892637

namespace A006323

/-- `∑[A374083(n+1)/(n+1)]` -/
def P8731701213048892637.Spec : Prop :=
  ∀ n, P8731701213048892637.a n = (A006323 (n + 1) : ℚ)

end A006323

/-! ## A006323.P13433898538543536821

`A185505(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A006323.P13433898538543536821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185505 (n + 1) - a (n - 1)

end

end A006323.P13433898538543536821

namespace A006323

/-- `A185505(n+1)-a(n-1)` -/
def P13433898538543536821.Spec : Prop :=
  ∀ n, P13433898538543536821.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P2762050566214008198

`A152457(n)+A008779(n)`
-/

namespace A006323.P2762050566214008198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n + A008779 n

end

end A006323.P2762050566214008198

namespace A006323

/-- `A152457(n)+A008779(n)` -/
def P2762050566214008198.Spec : Prop :=
  ∀ n, P2762050566214008198.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P10914117393424634315

`A051797(n)-A005582(n)`
-/

namespace A006323.P10914117393424634315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A005582 n

end

end A006323.P10914117393424634315

namespace A006323

/-- `A051797(n)-A005582(n)` -/
def P10914117393424634315.Spec : Prop :=
  ∀ n, P10914117393424634315.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P1059931805180085615

`A051799(n)-A215862(n)`
-/

namespace A006323.P1059931805180085615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n - A215862 n

end

end A006323.P1059931805180085615

namespace A006323

/-- `A051799(n)-A215862(n)` -/
def P1059931805180085615.Spec : Prop :=
  ∀ n, P1059931805180085615.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P1142049589100766026

`A033488(n)+A002817(n+1)`
-/

namespace A006323.P1142049589100766026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n + A002817 (n + 1)

end

end A006323.P1142049589100766026

namespace A006323

/-- `A033488(n)+A002817(n+1)` -/
def P1142049589100766026.Spec : Prop :=
  ∀ n, P1142049589100766026.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P9729108079396659399

`A132117(n+1)+A005582(n)`
-/

namespace A006323.P9729108079396659399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) + A005582 n

end

end A006323.P9729108079396659399

namespace A006323

/-- `A132117(n+1)+A005582(n)` -/
def P9729108079396659399.Spec : Prop :=
  ∀ n, P9729108079396659399.a n = A006323 (n + 1)

end A006323

/-! ## A006323.P4105385470769322983

`A168566(n+1)+A145126(n)`
-/

namespace A006323.P4105385470769322983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168566 (n + 1) + A145126 n

end

end A006323.P4105385470769322983

namespace A006323

/-- `A168566(n+1)+A145126(n)` -/
def P4105385470769322983.Spec : Prop :=
  ∀ n, P4105385470769322983.a n = A006323 (n + 1)

end A006323

/-!
# A006324: a(n) = n*(n + 1)*(2*n^2 + 2*n - 1)/6.

The programs for A006324, the canonical program `A006324.P10342644167435010364` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006324 has offset 1).

The definition of A006324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(2*(n+1)²+2*(n+1)-1)/6` (program `A006324.P17168940719695370982`, by `A006324.P17168940719695370982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006324.P7908584425271954137

`8*C(n+3, 4)+C(n+2, 2)`
-/

namespace A006324.P7908584425271954137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n + 3) 4 + Nat.choose (n + 2) 2

end

end A006324.P7908584425271954137

namespace A006324

/-- `8*C(n+3, 4)+C(n+2, 2)` -/
def P7908584425271954137.Spec : Prop :=
  ∀ n, (P7908584425271954137.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P17168940719695370982

`(n+1)*(n+2)*(2*(n+1)²+2*(n+1)-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006324.P17168940719695370982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((2 * (n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 1) : ℚ) / 6

end

end A006324.P17168940719695370982

namespace A006324

/-- `(n+1)*(n+2)*(2*(n+1)²+2*(n+1)-1)/6` -/
def P17168940719695370982.Spec : Prop :=
  ∀ n, P17168940719695370982.a n = (A006324 (n + 1) : ℚ)

theorem P17168940719695370982.correct : P17168940719695370982.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006324, Nat.add_sub_cancel, A006324.P17168940719695370982.a, A006324.P10342644167435010364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006324, Nat.add_sub_cancel, A006324.P17168940719695370982.a, A006324.P10342644167435010364.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006324

/-! ## A006324.P10342644167435010364

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=11, a(2)=46, a(3)=130, a(4)=295`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006324

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10342644167435010364.Spec : Prop :=
  ∀ n, P10342644167435010364.a n = A006324 (n + 1)

theorem P10342644167435010364.correct : P10342644167435010364.Spec := by
  intro n
  simp only [A006324, Nat.add_sub_cancel]

end A006324

/-! ## A006324.P1943722700176631354

`A053134(n)-4*A002415(n+1)`
-/

namespace A006324.P1943722700176631354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - 4 * A002415 (n + 1)

end

end A006324.P1943722700176631354

namespace A006324

/-- `A053134(n)-4*A002415(n+1)` -/
def P1943722700176631354.Spec : Prop :=
  ∀ n, P1943722700176631354.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P12761979809181136372

`record[(1-n)^4-C(2*n, 4)]`
-/

namespace A006324.P12761979809181136372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4 - (Nat.choose (2 * n) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006324.P12761979809181136372

namespace A006324

/-- `record[(1-n)^4-C(2*n, 4)]` -/
def P12761979809181136372.Spec : Prop :=
  ∀ n, P12761979809181136372.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P13605532883961301496

`xor(1, xor(1, ∑[∑[(2*n+1)²]]))`
-/

namespace A006324.P13605532883961301496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A006324.P13605532883961301496

namespace A006324

/-- `xor(1, xor(1, ∑[∑[(2*n+1)²]]))` -/
def P13605532883961301496.Spec : Prop :=
  ∀ n, (P13605532883961301496.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P13810315274189844837

`floor(∑[∑[∑[a(n-1)+8]]])` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A006324.P13810315274189844837
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006324.P13810315274189844837

namespace A006324

/-- `floor(∑[∑[∑[a(n-1)+8]]])` -/
def P13810315274189844837.Spec : Prop :=
  ∀ n, (P13810315274189844837.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P1843245192793537262

`∑[(2*n+1)²]+a(n-1)` with `a(0)=1`
-/

namespace A006324.P1843245192793537262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A006324.P1843245192793537262

namespace A006324

/-- `∑[(2*n+1)²]+a(n-1)` -/
def P1843245192793537262.Spec : Prop :=
  ∀ n, (P1843245192793537262.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P17863336778054176874

`∑[∑[(2*n+1)²]]+and(2, n²)`
-/

namespace A006324.P17863336778054176874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 2 (n ^ 2)

end

end A006324.P17863336778054176874

namespace A006324

/-- `∑[∑[(2*n+1)²]]+and(2, n²)` -/
def P17863336778054176874.Spec : Prop :=
  ∀ n, (P17863336778054176874.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P5553766415244133875

`lcm(ϕ-ϕ², ∑[∑[(2*n+1)²]])`
-/

namespace A006324.P5553766415244133875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006324.P5553766415244133875

namespace A006324

/-- `lcm(ϕ-ϕ², ∑[∑[(2*n+1)²]])` -/
def P5553766415244133875.Spec : Prop :=
  ∀ n, (P5553766415244133875.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P15296922282640549340

`gcd(n, n+1)*∑[∑[(2*n+1)²]]`
-/

namespace A006324.P15296922282640549340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006324.P15296922282640549340

namespace A006324

/-- `gcd(n, n+1)*∑[∑[(2*n+1)²]]` -/
def P15296922282640549340.Spec : Prop :=
  ∀ n, (P15296922282640549340.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P14158202841753528216

`∑[n+1]+n*∑[lcm(n+1, n+2)]`
-/

namespace A006324.P14158202841753528216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A006324.P14158202841753528216

namespace A006324

/-- `∑[n+1]+n*∑[lcm(n+1, n+2)]` -/
def P14158202841753528216.Spec : Prop :=
  ∀ n, (P14158202841753528216.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P7699265323881370827

`(2*n+1)%2*∑[∑[(2*n+1)²]]`
-/

namespace A006324.P7699265323881370827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006324.P7699265323881370827

namespace A006324

/-- `(2*n+1)%2*∑[∑[(2*n+1)²]]` -/
def P7699265323881370827.Spec : Prop :=
  ∀ n, (P7699265323881370827.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P1086836000080544555

`∑[∑[(2*n+1)²]]+val(2*n+1, 2)`
-/

namespace A006324.P1086836000080544555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (2 * n + 1) 2

end

end A006324.P1086836000080544555

namespace A006324

/-- `∑[∑[(2*n+1)²]]+val(2*n+1, 2)` -/
def P1086836000080544555.Spec : Prop :=
  ∀ n, (P1086836000080544555.a n : ℤ) = A006324 (n + 1)

end A006324

/-! ## A006324.P17494281404584283918

`a(n-1)+(n+1)/Δ[(n-1)/(2*n+1)]` with `a(0)=1`
-/

namespace A006324.P17494281404584283918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / (f1 (n + 1) - f1 n)

end

end A006324.P17494281404584283918

namespace A006324

/-- `a(n-1)+(n+1)/Δ[(n-1)/(2*n+1)]` -/
def P17494281404584283918.Spec : Prop :=
  ∀ n, P17494281404584283918.a n = (A006324 (n + 1) : ℚ)

end A006324

/-! ## A006324.P10812306861492565085

`A162668(n)+∑[n+1]`
-/

namespace A006324.P10812306861492565085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006324.P10812306861492565085

namespace A006324

/-- `A162668(n)+∑[n+1]` -/
def P10812306861492565085.Spec : Prop :=
  ∀ n, P10812306861492565085.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P8044434622120859988

`A178073(n+1)+∑[n²]`
-/

namespace A006324.P8044434622120859988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178073 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006324.P8044434622120859988

namespace A006324

/-- `A178073(n+1)+∑[n²]` -/
def P8044434622120859988.Spec : Prop :=
  ∀ n, P8044434622120859988.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P8405079740967296304

`A363706(n+1)-∑[n+1]`
-/

namespace A006324.P8405079740967296304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363706 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006324.P8405079740967296304

namespace A006324

/-- `A363706(n+1)-∑[n+1]` -/
def P8405079740967296304.Spec : Prop :=
  ∀ n, P8405079740967296304.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P14363213796848321202

`A016061(n)+A014820(n)`
-/

namespace A006324.P14363213796848321202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + A014820 n

end

end A006324.P14363213796848321202

namespace A006324

/-- `A016061(n)+A014820(n)` -/
def P14363213796848321202.Spec : Prop :=
  ∀ n, P14363213796848321202.a n = A006324 (n + 1)

end A006324

/-! ## A006324.P4040765257937763975

`A108678(n)+A000292(n)`
-/

namespace A006324.P4040765257937763975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n + A000292 n

end

end A006324.P4040765257937763975

namespace A006324

/-- `A108678(n)+A000292(n)` -/
def P4040765257937763975.Spec : Prop :=
  ∀ n, P4040765257937763975.a n = A006324 (n + 1)

end A006324

/-!
# A006325: 4-dimensional analog of centered polygonal numbers: a(n) = n*(n-1)*(n^2-n+1)/6.

The programs for A006325, the canonical program `A006325.P18271760623299916430` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006325 has offset 0).

The definition of A006325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n²-n+1)/6` (program `A006325.P4139936946155806069`, by `A006325.P4139936946155806069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006325.P17675736636700805106

`(n^5-(n-1)^5-1)/30`
-/

namespace A006325.P17675736636700805106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - ((n : ℤ) - 1) ^ 5 - 1 : ℚ) / 30

end

end A006325.P17675736636700805106

namespace A006325

/-- `(n^5-(n-1)^5-1)/30` -/
def P17675736636700805106.Spec : Prop :=
  ∀ n, P17675736636700805106.a n = (A006325 n : ℚ)

theorem P17675736636700805106.correct : P17675736636700805106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006325, Nat.add_sub_cancel, A006325.P17675736636700805106.a, A006325.P18271760623299916430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006325, Nat.add_sub_cancel, A006325.P17675736636700805106.a, A006325.P18271760623299916430.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006325

/-! ## A006325.P4139936946155806069

`n*(n-1)*(n²-n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006325.P4139936946155806069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (n : ℤ) + 1) : ℚ) / 6

end

end A006325.P4139936946155806069

namespace A006325

/-- `n*(n-1)*(n²-n+1)/6` -/
def P4139936946155806069.Spec : Prop :=
  ∀ n, P4139936946155806069.a n = (A006325 n : ℚ)

theorem P4139936946155806069.correct : P4139936946155806069.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006325, Nat.add_sub_cancel, A006325.P4139936946155806069.a, A006325.P18271760623299916430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006325, Nat.add_sub_cancel, A006325.P4139936946155806069.a, A006325.P18271760623299916430.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006325

/-! ## A006325.P18271760623299916430

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=26`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006325

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18271760623299916430.Spec : Prop :=
  ∀ n, P18271760623299916430.a n = A006325 n

theorem P18271760623299916430.correct : P18271760623299916430.Spec := by
  intro n
  simp only [A006325]

end A006325

/-! ## A006325.P4024596439440656896

`∑[4*C(n, 3)]+C(n, 2)`
-/

namespace A006325.P4024596439440656896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A006325.P4024596439440656896

namespace A006325

/-- `∑[4*C(n, 3)]+C(n, 2)` -/
def P4024596439440656896.Spec : Prop :=
  ∀ n, (P4024596439440656896.a n : ℤ) = A006325 n

end A006325

/-! ## A006325.P4070873735154636505

`C(n, 2)+(n+1)*C(n, 3)`
-/

namespace A006325.P4070873735154636505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n + 1) * Nat.choose n 3

end

end A006325.P4070873735154636505

namespace A006325

/-- `C(n, 2)+(n+1)*C(n, 3)` -/
def P4070873735154636505.Spec : Prop :=
  ∀ n, (P4070873735154636505.a n : ℤ) = A006325 n

end A006325

/-! ## A006325.P15533850611622706862

`ceil(C(n²-(n-1), 2)/3)`
-/

namespace A006325.P15533850611622706862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℚ) / 3⌉

end

end A006325.P15533850611622706862

namespace A006325

/-- `ceil(C(n²-(n-1), 2)/3)` -/
def P15533850611622706862.Spec : Prop :=
  ∀ n, P15533850611622706862.a n = A006325 n

end A006325

/-! ## A006325.P6843688296897126206

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A006325.P6843688296897126206
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006325.P6843688296897126206

namespace A006325

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P6843688296897126206.Spec : Prop :=
  ∀ n, (P6843688296897126206.a n : ℤ) = A006325 n

end A006325

/-! ## A006325.P11108249279836720676

`A006484(n)-n`
-/

namespace A006325.P11108249279836720676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n - (n : ℤ)

end

end A006325.P11108249279836720676

namespace A006325

/-- `A006484(n)-n` -/
def P11108249279836720676.Spec : Prop :=
  ∀ n, P11108249279836720676.a n = A006325 n

end A006325

/-! ## A006325.P13245404828558219246

`A103290(n)-C(n, 2)`
-/

namespace A006325.P13245404828558219246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n - (Nat.choose n 2 : ℤ)

end

end A006325.P13245404828558219246

namespace A006325

/-- `A103290(n)-C(n, 2)` -/
def P13245404828558219246.Spec : Prop :=
  ∀ n, P13245404828558219246.a n = A006325 n

end A006325

/-! ## A006325.P16411229901637606451

`Δ[A131211(abs(1-n))]`
-/

namespace A006325.P16411229901637606451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131211 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006325.P16411229901637606451

namespace A006325

/-- `Δ[A131211(abs(1-n))]` -/
def P16411229901637606451.Spec : Prop :=
  ∀ n, P16411229901637606451.a n = A006325 n

end A006325

/-! ## A006325.P7368043317383474247

`floor(C(A002522(n)-n, 2)/3)`
-/

namespace A006325.P7368043317383474247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A002522 n - (n : ℤ)).toNat 2 : ℚ) / 3⌋

end

end A006325.P7368043317383474247

namespace A006325

/-- `floor(C(A002522(n)-n, 2)/3)` -/
def P7368043317383474247.Spec : Prop :=
  ∀ n, P7368043317383474247.a n = A006325 n

end A006325

/-! ## A006325.P2016186484311754700

`A005900(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A006325.P2016186484311754700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005900 (n - 1) + a (n - 1)

end

end A006325.P2016186484311754700

namespace A006325

/-- `A005900(n-1)+a(n-1)` -/
def P2016186484311754700.Spec : Prop :=
  ∀ n, P2016186484311754700.a n = A006325 n

end A006325

/-! ## A006325.P3726036048335625739

`A245679(n)+A157928(n)`
-/

namespace A006325.P3726036048335625739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245679 n + A157928 n

end

end A006325.P3726036048335625739

namespace A006325

/-- `A245679(n)+A157928(n)` -/
def P3726036048335625739.Spec : Prop :=
  ∀ n, P3726036048335625739.a n = A006325 n

end A006325

/-! ## A006325.P14624970249693143615

`A071239(n)-A006003(n)`
-/

namespace A006325.P14624970249693143615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - A006003 n

end

end A006325.P14624970249693143615

namespace A006325

/-- `A071239(n)-A006003(n)` -/
def P14624970249693143615.Spec : Prop :=
  ∀ n, P14624970249693143615.a n = A006325 n

end A006325

/-! ## A006325.P11665220973939863346

`A071245(n)-A008911(n)`
-/

namespace A006325.P11665220973939863346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n - A008911 n

end

end A006325.P11665220973939863346

namespace A006325

/-- `A071245(n)-A008911(n)` -/
def P11665220973939863346.Spec : Prop :=
  ∀ n, P11665220973939863346.a n = A006325 n

end A006325

/-! ## A006325.P8393930245761936531

`A004320(n)-A101165(n)`
-/

namespace A006325.P8393930245761936531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n - A101165 n

end

end A006325.P8393930245761936531

namespace A006325

/-- `A004320(n)-A101165(n)` -/
def P8393930245761936531.Spec : Prop :=
  ∀ n, P8393930245761936531.a n = A006325 n

end A006325

/-! ## A006325.P1039623750139164441

`A037270(n)-A071238(n)`
-/

namespace A006325.P1039623750139164441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A071238 n

end

end A006325.P1039623750139164441

namespace A006325

/-- `A037270(n)-A071238(n)` -/
def P1039623750139164441.Spec : Prop :=
  ∀ n, P1039623750139164441.a n = A006325 n

end A006325

/-! ## A006325.P4835935833205743750

`A071252(n)-A071246(n)`
-/

namespace A006325.P4835935833205743750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A071246 n

end

end A006325.P4835935833205743750

namespace A006325

/-- `A071252(n)-A071246(n)` -/
def P4835935833205743750.Spec : Prop :=
  ∀ n, P4835935833205743750.a n = A006325 n

end A006325

/-! ## A006325.P5819589807533055091

`A257055(n)-A006527(n)`
-/

namespace A006325.P5819589807533055091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A006527 n

end

end A006325.P5819589807533055091

namespace A006325

/-- `A257055(n)-A006527(n)` -/
def P5819589807533055091.Spec : Prop :=
  ∀ n, P5819589807533055091.a n = A006325 n

end A006325

/-! ## A006325.P2844006944190457815

`A103290(n)-A161680(n)`
-/

namespace A006325.P2844006944190457815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n - A161680 n

end

end A006325.P2844006944190457815

namespace A006325

/-- `A103290(n)-A161680(n)` -/
def P2844006944190457815.Spec : Prop :=
  ∀ n, P2844006944190457815.a n = A006325 n

end A006325

/-!
# A006326: Number of total preorders on a n-set.

The programs for A006326, there is no canonical definition to state claims against.
-/

/-! ## A006326.P7643661187346972304

`(n+1)/2*A000111(n+3)`
-/

namespace A006326.P7643661187346972304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000111 (n + 3) : ℚ)

end

end A006326.P7643661187346972304

/-! ## A006326.P5115674594983866170

`A079502(∑[n+2]-1)`
-/

namespace A006326.P5115674594983866170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006326.P5115674594983866170

/-! ## A006326.P10530759960044515360

`or(A000007(n), A079502(A034856(n+1)))`
-/

namespace A006326.P10530759960044515360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A079502 (A034856 (n + 1)).toNat)

end

end A006326.P10530759960044515360

/-! ## A006326.P7418554758626196135

`A079502(A034856(n+1))^A000038(n)!`
-/

namespace A006326.P7418554758626196135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A034856 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A006326.P7418554758626196135

/-! ## A006326.P1945851358608981654

`A079502(A034856(n+1))+A000038(n+1)`
-/

namespace A006326.P1945851358608981654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A034856 (n + 1)).toNat + A000038 (n + 1)

end

end A006326.P1945851358608981654

/-! ## A006326.P4889416096116009746

`A079502(A034856(n+1))+A000035(2*n)`
-/

namespace A006326.P4889416096116009746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A034856 (n + 1)).toNat + A000035 (2 * n)

end

end A006326.P4889416096116009746

/-! ## A006326.P11660000005412821456

`A189203(A189204(n+1))+A079502(A034856(n+1))`
-/

namespace A006326.P11660000005412821456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A189204 (n + 1)).toNat + A079502 (A034856 (n + 1)).toNat

end

end A006326.P11660000005412821456

/-! ## A006326.P1052818683506105623

`A001222(A045536(n+1))*A079502(A034856(n+1))`
-/

namespace A006326.P1052818683506105623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045536 (n + 1)).toNat * A079502 (A034856 (n + 1)).toNat

end

end A006326.P1052818683506105623

/-!
# A006327: a(n) = Fibonacci(n) - 3. Number of total preorders.

The programs for A006327, the canonical program `A006327.P3291925635036330175` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006327 has offset 4).

The definition of A006327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006327.P3291925635036330175

`a(n-1)+a(n-2)+3` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006327

/-- `a(n-1)+a(n-2)+3` -/
def P3291925635036330175.Spec : Prop :=
  ∀ n, (P3291925635036330175.a n : ℤ) = A006327 (n + 4)

theorem P3291925635036330175.correct : P3291925635036330175.Spec := by
  intro n
  simp only [A006327, Nat.add_sub_cancel]

end A006327

/-! ## A006327.P1696141962207270876

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A006327.P1696141962207270876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A006327.P1696141962207270876

namespace A006327

/-- `2*a(n-1)-a(n-3)` -/
def P1696141962207270876.Spec : Prop :=
  ∀ n, P1696141962207270876.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P16736303245484330590

`ogf((2x+x^2)/(1-2x+x^3))`
-/

namespace A006327.P16736303245484330590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -2, 0, 1] n

end

end A006327.P16736303245484330590

namespace A006327

/-- `ogf((2x+x^2)/(1-2x+x^3))` -/
def P16736303245484330590.Spec : Prop :=
  ∀ n, P16736303245484330590.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P1160006945759765952

`ceil(ϕ*(a(n-1)+1))` with `a(0)=0`
-/

namespace A006327.P1160006945759765952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌉

end

end A006327.P1160006945759765952

namespace A006327

/-- `ceil(ϕ*(a(n-1)+1))` -/
def P1160006945759765952.Spec : Prop :=
  ∀ n, P1160006945759765952.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P2718165193279823707

`floor(ϕ*a(n-1))+2` with `a(0)=0`
-/

namespace A006327.P2718165193279823707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 2

end

end A006327.P2718165193279823707

namespace A006327

/-- `floor(ϕ*a(n-1))+2` -/
def P2718165193279823707.Spec : Prop :=
  ∀ n, P2718165193279823707.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P6448614043691933970

`round(ϕ*(a(n-1)+1))` with `a(0)=0`
-/

namespace A006327.P6448614043691933970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 1 : ℝ))

end

end A006327.P6448614043691933970

namespace A006327

/-- `round(ϕ*(a(n-1)+1))` -/
def P6448614043691933970.Spec : Prop :=
  ∀ n, P6448614043691933970.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P16155555279299434981

`2-ceil(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A006327.P16155555279299434981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ⌈-(Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A006327.P16155555279299434981

namespace A006327

/-- `2-ceil(-(ϕ*a(n-1)))` -/
def P16155555279299434981.Spec : Prop :=
  ∀ n, P16155555279299434981.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P17443648039458813932

`2-round(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A006327.P17443648039458813932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A006327.P17443648039458813932

namespace A006327

/-- `2-round(-(ϕ*a(n-1)))` -/
def P17443648039458813932.Spec : Prop :=
  ∀ n, P17443648039458813932.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P12313085210329752596

`floor(a(n-1)/(ϕ-1))+2` with `a(0)=0`
-/

namespace A006327.P12313085210329752596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋ + 2

end

end A006327.P12313085210329752596

namespace A006327

/-- `floor(a(n-1)/(ϕ-1))+2` -/
def P12313085210329752596.Spec : Prop :=
  ∀ n, P12313085210329752596.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P7648989288687873880

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A006327.P7648989288687873880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A006327.P7648989288687873880

namespace A006327

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P7648989288687873880.Spec : Prop :=
  ∀ n, P7648989288687873880.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P17325860211038774535

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=-1`
-/

namespace A006327.P17325860211038774535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006327.P17325860211038774535

namespace A006327

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P17325860211038774535.Spec : Prop :=
  ∀ n, P17325860211038774535.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P10676214034134462692

`4-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A006327.P10676214034134462692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A006327.P10676214034134462692

namespace A006327

/-- `4-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P10676214034134462692.Spec : Prop :=
  ∀ n, P10676214034134462692.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P11611507933335870695

`A020701(n)-3`
-/

namespace A006327.P11611507933335870695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - 3

end

end A006327.P11611507933335870695

namespace A006327

/-- `A020701(n)-3` -/
def P11611507933335870695.Spec : Prop :=
  ∀ n, P11611507933335870695.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P8348342269885558928

`A020706(n)-4`
-/

namespace A006327.P8348342269885558928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 4

end

end A006327.P8348342269885558928

namespace A006327

/-- `A020706(n)-4` -/
def P8348342269885558928.Spec : Prop :=
  ∀ n, P8348342269885558928.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P6747998433395286398

`A048584(n)-5`
-/

namespace A006327.P6747998433395286398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - 5

end

end A006327.P6747998433395286398

namespace A006327

/-- `A048584(n)-5` -/
def P6747998433395286398.Spec : Prop :=
  ∀ n, P6747998433395286398.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P13890563168620432061

`n+A001924(n)`
-/

namespace A006327.P13890563168620432061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001924 n

end

end A006327.P13890563168620432061

namespace A006327

/-- `n+A001924(n)` -/
def P13890563168620432061.Spec : Prop :=
  ∀ n, P13890563168620432061.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P9382200878021206603

`A001911(n+1)-1`
-/

namespace A006327.P9382200878021206603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - 1

end

end A006327.P9382200878021206603

namespace A006327

/-- `A001911(n+1)-1` -/
def P9382200878021206603.Spec : Prop :=
  ∀ n, P9382200878021206603.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P17811292480330952314

`A020695(n+1)-3`
-/

namespace A006327.P17811292480330952314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) - 3

end

end A006327.P17811292480330952314

namespace A006327

/-- `A020695(n+1)-3` -/
def P17811292480330952314.Spec : Prop :=
  ∀ n, P17811292480330952314.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P7414895054588516048

`A048577(n+1)-4`
-/

namespace A006327.P7414895054588516048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 1) - 4

end

end A006327.P7414895054588516048

namespace A006327

/-- `A048577(n+1)-4` -/
def P7414895054588516048.Spec : Prop :=
  ∀ n, P7414895054588516048.a n = A006327 (n + 4)

end A006327

/-! ## A006327.P12403112569165565778

`A071679(n+2)-3`
-/

namespace A006327.P12403112569165565778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2) - 3

end

end A006327.P12403112569165565778

namespace A006327

/-- `A071679(n+2)-3` -/
def P12403112569165565778.Spec : Prop :=
  ∀ n, P12403112569165565778.a n = A006327 (n + 4)

end A006327

/-!
# A006328: Total preorders.

The programs for A006328, there is no canonical definition to state claims against.
-/

/-! ## A006328.P12578184369655319363

`A079502(∑[n+2]+3)`
-/

namespace A006328.P12578184369655319363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006328.P12578184369655319363

/-! ## A006328.P10259111202566252417

`record[A079502(A135223(n+2)+2)]`
-/

namespace A006328.P10259111202566252417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A135223 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006328.P10259111202566252417

/-! ## A006328.P4941875836956268505

`record[A079502(n+5)/A079502(n+3)]`
-/

namespace A006328.P4941875836956268505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079502 (n + 5) : ℚ) / (A079502 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006328.P4941875836956268505

/-!
# A006329: Total preorders.

The programs for A006329, there is no canonical definition to state claims against.
-/

/-! ## A006329.P18183642860518457883

`A079502(∑[n+3])`
-/

namespace A006329.P18183642860518457883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006329.P18183642860518457883

/-! ## A006329.P13380882779481792931

`record[A079502(n)/A079502(n+3)]`
-/

namespace A006329.P13380882779481792931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079502 n : ℚ) / (A079502 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006329.P13380882779481792931

/-! ## A006329.P4213942320816310297

`record[A079502(A055998(A008615(n)))]`
-/

namespace A006329.P4213942320816310297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A055998 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006329.P4213942320816310297

/-! ## A006329.P9878486189011679792

`record[A079502(A055998(A141256(n)))]`
-/

namespace A006329.P9878486189011679792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A055998 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006329.P9878486189011679792

/-! ## A006329.P10231148574762739625

`record[A079502(A055998(A249738(n+1)))]`
-/

namespace A006329.P10231148574762739625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079502 (A055998 (A249738 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006329.P10231148574762739625

/-!
# A006330: Number of corners, or planar partitions of n with only one row and one column.

The programs for A006330, there is no canonical definition to state claims against.
-/

/-! ## A006330.P1862163994668640102

`A114921(A028310(n))+A001523(n)`
-/

namespace A006330.P1862163994668640102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114921 (A028310 n).toNat + A001523 n

end

end A006330.P1862163994668640102

/-! ## A006330.P14564415888558593079

`A114921(A000007(n)+n)+A001523(n)`
-/

namespace A006330.P14564415888558593079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114921 (A000007 n + (n : ℤ)).toNat + A001523 n

end

end A006330.P14564415888558593079

/-! ## A006330.P17765456576160407461

`A001523(n)+A057427(n)*A114921(n)`
-/

namespace A006330.P17765456576160407461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + A057427 n * A114921 n

end

end A006330.P17765456576160407461

/-! ## A006330.P7725915328469320982

`(A114921(n)+A000712(n))/2`
-/

namespace A006330.P7725915328469320982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114921 n + A000712 n : ℚ) / 2

end

end A006330.P7725915328469320982

/-! ## A006330.P1427442700519101223

`A000712(n)-A001523(n)*A057427(n)`
-/

namespace A006330.P1427442700519101223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A001523 n * A057427 n

end

end A006330.P1427442700519101223

/-! ## A006330.P3562494373212852525

`A247255(∑[n]+1)`
-/

namespace A006330.P3562494373212852525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006330.P3562494373212852525

/-! ## A006330.P10825860517214504167

`and(1, n)!*A247255(A000124(n))`
-/

namespace A006330.P10825860517214504167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A247255 (A000124 n).toNat

end

end A006330.P10825860517214504167

/-! ## A006330.P429232306746139463

`A247255(A000124(n))%A000051(n)`
-/

namespace A006330.P429232306746139463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247255 (A000124 n).toNat) (A000051 n)

end

end A006330.P429232306746139463

/-! ## A006330.P15366751077699206629

`lcm(A033999(n), A247255(A000124(n)))`
-/

namespace A006330.P15366751077699206629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A247255 (A000124 n).toNat)

end

end A006330.P15366751077699206629

/-! ## A006330.P10216270306270054759

`A344610(∑[4*n])`
-/

namespace A006330.P10216270306270054759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006330.P10216270306270054759

/-!
# A006331: a(n) = n*(n+1)*(2*n+1)/3.

The programs for A006331, the canonical program `A006331.P17861476964948562924` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006331 has offset 0).

The definition of A006331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)/3` (program `A006331.P1323500829710668037`, by `A006331.P1323500829710668037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006331.P5633860891201269070

`C(2*n+2, 3)/2`
-/

namespace A006331.P5633860891201269070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 2) 3 : ℚ) / 2

end

end A006331.P5633860891201269070

namespace A006331

/-- `C(2*n+2, 3)/2` -/
def P5633860891201269070.Spec : Prop :=
  ∀ n, P5633860891201269070.a n = (A006331 n : ℚ)

end A006331

/-! ## A006331.P1323500829710668037

`n*(n+1)*(2*n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006331.P1323500829710668037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) : ℚ) / 3

end

end A006331.P1323500829710668037

namespace A006331

/-- `n*(n+1)*(2*n+1)/3` -/
def P1323500829710668037.Spec : Prop :=
  ∀ n, P1323500829710668037.a n = (A006331 n : ℚ)

theorem P1323500829710668037.correct : P1323500829710668037.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A006331, Nat.add_sub_cancel, A006331.P1323500829710668037.a, A006331.P17861476964948562924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A006331, Nat.add_sub_cancel, A006331.P1323500829710668037.a, A006331.P17861476964948562924.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006331

/-! ## A006331.P14695525773895732221

`2*C(n+1, 3)+2*C(n+2, 3)`
-/

namespace A006331.P14695525773895732221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) 3 + 2 * Nat.choose (n + 2) 3

end

end A006331.P14695525773895732221

namespace A006331

/-- `2*C(n+1, 3)+2*C(n+2, 3)` -/
def P14695525773895732221.Spec : Prop :=
  ∀ n, (P14695525773895732221.a n : ℤ) = A006331 n

end A006331

/-! ## A006331.P17861476964948562924

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006331

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17861476964948562924.Spec : Prop :=
  ∀ n, P17861476964948562924.a n = A006331 n

theorem P17861476964948562924.correct : P17861476964948562924.Spec := by
  intro n
  simp only [A006331]

end A006331

/-! ## A006331.P790040475873498381

`A188475(n)-1`
-/

namespace A006331.P790040475873498381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n - 1

end

end A006331.P790040475873498381

namespace A006331

/-- `A188475(n)-1` -/
def P790040475873498381.Spec : Prop :=
  ∀ n, P790040475873498381.a n = A006331 n

theorem P790040475873498381.correct : P790040475873498381.Spec := by
  intro n
  simp only [A006331, Nat.add_sub_cancel, A006331.P790040475873498381.a, A006331.P17861476964948562924.a, A188475, A188475.P10141490287828620120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006331

/-! ## A006331.P14919606719955872404

`2*A000330(n)`
-/

namespace A006331.P14919606719955872404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n

end

end A006331.P14919606719955872404

namespace A006331

/-- `2*A000330(n)` -/
def P14919606719955872404.Spec : Prop :=
  ∀ n, P14919606719955872404.a n = A006331 n

end A006331

/-! ## A006331.P2858302620322714820

`A000292(n)+A002411(n)`
-/

namespace A006331.P2858302620322714820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A002411 n

end

end A006331.P2858302620322714820

namespace A006331

/-- `A000292(n)+A002411(n)` -/
def P2858302620322714820.Spec : Prop :=
  ∀ n, P2858302620322714820.a n = A006331 n

end A006331

/-! ## A006331.P14090214499012018006

`A096000(n)-A000578(n+1)`
-/

namespace A006331.P14090214499012018006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n - A000578 (n + 1)

end

end A006331.P14090214499012018006

namespace A006331

/-- `A096000(n)-A000578(n+1)` -/
def P14090214499012018006.Spec : Prop :=
  ∀ n, P14090214499012018006.a n = A006331 n

end A006331

/-! ## A006331.P6744629119048053182

`A000578(n+1)-A077415(n+2)-1`
-/

namespace A006331.P6744629119048053182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A077415 (n + 2) - 1

end

end A006331.P6744629119048053182

namespace A006331

/-- `A000578(n+1)-A077415(n+2)-1` -/
def P6744629119048053182.Spec : Prop :=
  ∀ n, P6744629119048053182.a n = A006331 n

end A006331

/-! ## A006331.P3894531763297204008

`2*(A000332(n+3)-A000332(n+1))`
-/

namespace A006331.P3894531763297204008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000332 (n + 3) - A000332 (n + 1))

end

end A006331.P3894531763297204008

namespace A006331

/-- `2*(A000332(n+3)-A000332(n+1))` -/
def P3894531763297204008.Spec : Prop :=
  ∀ n, P3894531763297204008.a n = A006331 n

end A006331

/-! ## A006331.P6100695263262088194

`lcm(2, ∑[2*n²])`
-/

namespace A006331.P6100695263262088194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006331.P6100695263262088194

namespace A006331

/-- `lcm(2, ∑[2*n²])` -/
def P6100695263262088194.Spec : Prop :=
  ∀ n, (P6100695263262088194.a n : ℤ) = A006331 n

end A006331

/-! ## A006331.P11627097175569962174

`Δ[C(n², 2)/3]`
-/

namespace A006331.P11627097175569962174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006331.P11627097175569962174

namespace A006331

/-- `Δ[C(n², 2)/3]` -/
def P11627097175569962174.Spec : Prop :=
  ∀ n, P11627097175569962174.a n = (A006331 n : ℚ)

end A006331

/-! ## A006331.P795673457564154127

`Δ[n*C(n+1, 3)]`
-/

namespace A006331.P795673457564154127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006331.P795673457564154127

namespace A006331

/-- `Δ[n*C(n+1, 3)]` -/
def P795673457564154127.Spec : Prop :=
  ∀ n, P795673457564154127.a n = A006331 n

end A006331

/-! ## A006331.P6433307561474318883

`and(-2, ∑[2*n²])`
-/

namespace A006331.P6433307561474318883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006331.P6433307561474318883

namespace A006331

/-- `and(-2, ∑[2*n²])` -/
def P6433307561474318883.Spec : Prop :=
  ∀ n, P6433307561474318883.a n = A006331 n

end A006331

/-! ## A006331.P9810311528646413415

`2*∑[n^acos(cos(2))]`
-/

namespace A006331.P9810311528646413415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006331.P9810311528646413415

namespace A006331

/-- `2*∑[n^acos(cos(2))]` -/
def P9810311528646413415.Spec : Prop :=
  ∀ n, P9810311528646413415.a n = (A006331 n : ℝ)

end A006331

/-! ## A006331.P5048207945468429528

`2*∑[floor(n/acot(n))]`
-/

namespace A006331.P5048207945468429528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006331.P5048207945468429528

namespace A006331

/-- `2*∑[floor(n/acot(n))]` -/
def P5048207945468429528.Spec : Prop :=
  ∀ n, P5048207945468429528.a n = A006331 n

end A006331

/-! ## A006331.P18241949351047896484

`2*∑[round(n/acot(n))]`
-/

namespace A006331.P18241949351047896484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006331.P18241949351047896484

namespace A006331

/-- `2*∑[round(n/acot(n))]` -/
def P18241949351047896484.Spec : Prop :=
  ∀ n, P18241949351047896484.a n = A006331 n

end A006331

/-! ## A006331.P17870177313029253803

`∑[C(2*n, 2)]+∑[n]`
-/

namespace A006331.P17870177313029253803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006331.P17870177313029253803

namespace A006331

/-- `∑[C(2*n, 2)]+∑[n]` -/
def P17870177313029253803.Spec : Prop :=
  ∀ n, (P17870177313029253803.a n : ℤ) = A006331 n

end A006331

/-! ## A006331.P18324108449807004795

`a(n-1)+2*n²` with `a(0)=0`
-/

namespace A006331.P18324108449807004795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n ^ 2

end

end A006331.P18324108449807004795

namespace A006331

/-- `a(n-1)+2*n²` -/
def P18324108449807004795.Spec : Prop :=
  ∀ n, (P18324108449807004795.a n : ℤ) = A006331 n

end A006331

/-! ## A006331.P17890717795548308130

`floor(C(n+2+n, 3)/2)`
-/

namespace A006331.P17890717795548308130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2 + n) 3 : ℚ) / 2⌋

end

end A006331.P17890717795548308130

namespace A006331

/-- `floor(C(n+2+n, 3)/2)` -/
def P17890717795548308130.Spec : Prop :=
  ∀ n, P17890717795548308130.a n = A006331 n

end A006331

/-!
# A006332: From the enumeration of corners.

The programs for A006332, the canonical program `A006332.P18180310474384925349` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006332 has offset 0).

The definition of A006332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006332.P6948906244204922344

`C(n+2, 3)*C(2*n+3, 3)/5`
-/

namespace A006332.P6948906244204922344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 * Nat.choose (2 * n + 3) 3 : ℚ) / 5

end

end A006332.P6948906244204922344

namespace A006332

/-- `C(n+2, 3)*C(2*n+3, 3)/5` -/
def P6948906244204922344.Spec : Prop :=
  ∀ n, P6948906244204922344.a n = (A006332 n : ℚ)

end A006332

/-! ## A006332.P2348598601200202282

`n*(1+n)²*(2+n)*(1+2*n)*(3+2*n)/90`
-/

namespace A006332.P2348598601200202282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + n) ^ 2 * (2 + n) * (1 + 2 * n) * (3 + 2 * n) : ℚ) / 90

end

end A006332.P2348598601200202282

namespace A006332

/-- `n*(1+n)²*(2+n)*(1+2*n)*(3+2*n)/90` -/
def P2348598601200202282.Spec : Prop :=
  ∀ n, P2348598601200202282.a n = (A006332 n : ℚ)

end A006332

/-! ## A006332.P18180310474384925349

`2*A006858(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006332

/-- `2*A006858(n)` -/
def P18180310474384925349.Spec : Prop :=
  ∀ n, P18180310474384925349.a n = A006332 n

theorem P18180310474384925349.correct : P18180310474384925349.Spec := by
  intro n
  simp only [A006332]

end A006332

/-! ## A006332.P14207078738088039644

`∑[∑[2*A071270(n)]]`
-/

namespace A006332.P14207078738088039644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P14207078738088039644

namespace A006332

/-- `∑[∑[2*A071270(n)]]` -/
def P14207078738088039644.Spec : Prop :=
  ∀ n, P14207078738088039644.a n = A006332 n

end A006332

/-! ## A006332.P8919329776907058124

`∑[∑[n*A035597(n)]]`
-/

namespace A006332.P8919329776907058124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035597 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P8919329776907058124

namespace A006332

/-- `∑[∑[n*A035597(n)]]` -/
def P8919329776907058124.Spec : Prop :=
  ∀ n, P8919329776907058124.a n = A006332 n

end A006332

/-! ## A006332.P9206562310188042204

`∑[∑[A187756(n)+n²]]`
-/

namespace A006332.P9206562310188042204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P9206562310188042204

namespace A006332

/-- `∑[∑[A187756(n)+n²]]` -/
def P9206562310188042204.Spec : Prop :=
  ∀ n, P9206562310188042204.a n = A006332 n

end A006332

/-! ## A006332.P15750560644737488806

`∑[2*(A277229(n)+A277228(n))]`
-/

namespace A006332.P15750560644737488806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277229 n + A277228 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P15750560644737488806

namespace A006332

/-- `∑[2*(A277229(n)+A277228(n))]` -/
def P15750560644737488806.Spec : Prop :=
  ∀ n, P15750560644737488806.a n = A006332 n

end A006332

/-! ## A006332.P14959314705003589055

`A006858(n+1)+A006858(n)-A085461(n+1)`
-/

namespace A006332.P14959314705003589055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006858 (n + 1) + (A006858 n - A085461 (n + 1))

end

end A006332.P14959314705003589055

namespace A006332

/-- `A006858(n+1)+A006858(n)-A085461(n+1)` -/
def P14959314705003589055.Spec : Prop :=
  ∀ n, P14959314705003589055.a n = A006332 n

end A006332

/-! ## A006332.P16567605415527035334

`∑[∑[A289161(2*n+1)]]`
-/

namespace A006332.P16567605415527035334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289161 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P16567605415527035334

namespace A006332

/-- `∑[∑[A289161(2*n+1)]]` -/
def P16567605415527035334.Spec : Prop :=
  ∀ n, P16567605415527035334.a n = A006332 n

end A006332

/-! ## A006332.P3390516804986076395

`∑[A337173(2*n+1)/2]`
-/

namespace A006332.P3390516804986076395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337173 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P3390516804986076395

namespace A006332

/-- `∑[A337173(2*n+1)/2]` -/
def P3390516804986076395.Spec : Prop :=
  ∀ n, P3390516804986076395.a n = (A006332 n : ℚ)

end A006332

/-! ## A006332.P16592226178174301496

`A002415(n+1)+∑[∑[A002415(2*n)]]`
-/

namespace A006332.P16592226178174301496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P16592226178174301496

namespace A006332

/-- `A002415(n+1)+∑[∑[A002415(2*n)]]` -/
def P16592226178174301496.Spec : Prop :=
  ∀ n, P16592226178174301496.a n = A006332 n

end A006332

/-! ## A006332.P10936428151348538986

`A051923(2*n)-A000292(2*n+1)*A000292(n+1)`
-/

namespace A006332.P10936428151348538986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 (2 * n) - A000292 (2 * n + 1) * A000292 (n + 1)

end

end A006332.P10936428151348538986

namespace A006332

/-- `A051923(2*n)-A000292(2*n+1)*A000292(n+1)` -/
def P10936428151348538986.Spec : Prop :=
  ∀ n, P10936428151348538986.a n = A006332 n

end A006332

/-! ## A006332.P10671149931031197628

`∑[2*∑[A000217(2*n²)/3]]`
-/

namespace A006332.P10671149931031197628
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n ^ 2) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006332.P10671149931031197628

namespace A006332

/-- `∑[2*∑[A000217(2*n²)/3]]` -/
def P10671149931031197628.Spec : Prop :=
  ∀ n, P10671149931031197628.a n = (A006332 n : ℚ)

end A006332

/-!
# A006333: From the enumeration of corners.

The programs for A006333, the canonical program `A006333.P758461644222166681` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006333 has offset 0).

The definition of A006333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006333.P758461644222166681

`∑[n+1]/3*∑[A006332(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006333

/-- `∑[n+1]/3*∑[A006332(n)]` -/
def P758461644222166681.Spec : Prop :=
  ∀ n, P758461644222166681.a n = (A006333 n : ℚ)

end A006333

/-! ## A006333.P4112891113944087732

`2*(A111910(A167614(n+1))-A000007(n))`
-/

namespace A006333.P4112891113944087732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111910 (A167614 (n + 1)).toNat - A000007 n)

end

end A006333.P4112891113944087732

namespace A006333

/-- `2*(A111910(A167614(n+1))-A000007(n))` -/
def P4112891113944087732.Spec : Prop :=
  ∀ n, P4112891113944087732.a n = A006333 n

end A006333

/-! ## A006333.P12404032640713097079

`2*A111910(A167614(n+1))*A178334(n)`
-/

namespace A006333.P12404032640713097079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111910 (A167614 (n + 1)).toNat * A178334 n)

end

end A006333.P12404032640713097079

namespace A006333

/-- `2*A111910(A167614(n+1))*A178334(n)` -/
def P12404032640713097079.Spec : Prop :=
  ∀ n, P12404032640713097079.a n = A006333 n

end A006333

/-! ## A006333.P6013866312868064084

`A025581(A055998(n))*A111910(A167614(n+1))`
-/

namespace A006333.P6013866312868064084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A055998 n).toNat * A111910 (A167614 (n + 1)).toNat

end

end A006333.P6013866312868064084

namespace A006333

/-- `A025581(A055998(n))*A111910(A167614(n+1))` -/
def P6013866312868064084.Spec : Prop :=
  ∀ n, P6013866312868064084.a n = A006333 n

end A006333

/-! ## A006333.P187307955412680095

`A107286(A008592(n))*A111910(A167614(n+1))`
-/

namespace A006333.P187307955412680095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A008592 n).toNat * A111910 (A167614 (n + 1)).toNat

end

end A006333.P187307955412680095

namespace A006333

/-- `A107286(A008592(n))*A111910(A167614(n+1))` -/
def P187307955412680095.Spec : Prop :=
  ∀ n, P187307955412680095.a n = A006333 n

end A006333

/-! ## A006333.P15037942738465208067

`A111910(A167614(n+1))*A264986(A178334(n))`
-/

namespace A006333.P15037942738465208067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 (A167614 (n + 1)).toNat * A264986 (A178334 n).toNat

end

end A006333.P15037942738465208067

namespace A006333

/-- `A111910(A167614(n+1))*A264986(A178334(n))` -/
def P15037942738465208067.Spec : Prop :=
  ∀ n, P15037942738465208067.a n = A006333 n

end A006333

/-!
# A006334: From the enumeration of corners.

The programs for A006334, there is no canonical definition to state claims against.
-/

/-! ## A006334.P8608441076855197464

`record[abs(A132339(A167499(n)))]`
-/

namespace A006334.P8608441076855197464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132339 (A167499 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006334.P8608441076855197464

/-! ## A006334.P10616475355870392960

`abs(A132339(A167499(n+4)))`
-/

namespace A006334.P10616475355870392960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132339 (A167499 (n + 4)).toNat|

end

end A006334.P10616475355870392960

/-! ## A006334.P1605431925096460263

`A033999(n+1)*A132339(A167499(n+4))`
-/

namespace A006334.P1605431925096460263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A132339 (A167499 (n + 4)).toNat

end

end A006334.P1605431925096460263

/-! ## A006334.P286129666411966915

`gcd(A112316(n+1), A132339(A167499(n+4)))`
-/

namespace A006334.P286129666411966915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 (n + 1)) (A132339 (A167499 (n + 4)).toNat)

end

end A006334.P286129666411966915

/-! ## A006334.P4239290579985571533

`record[(2*A000035(n)-1)*A132339(A167499(n))]`
-/

namespace A006334.P4239290579985571533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000035 n - 1) * A132339 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006334.P4239290579985571533

/-!
# A006335: a(n) = 4^n*(3*n)!/((n+1)!*(2*n+1)!).

The programs for A006335, the canonical program `A006335.P15497146616122857426` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006335 has offset 0).

The definition of A006335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006335.P15497146616122857426

`4^n*(3*n)!/((n+1)!*(2*n+1)!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006335

/-- `4^n*(3*n)!/((n+1)!*(2*n+1)!)` -/
def P15497146616122857426.Spec : Prop :=
  ∀ n, P15497146616122857426.a n = (A006335 n : ℚ)

end A006335

/-! ## A006335.P15541573285776531404

`2^n*A000309(n)`
-/

namespace A006335.P15541573285776531404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000309 n

end

end A006335.P15541573285776531404

namespace A006335

/-- `2^n*A000309(n)` -/
def P15541573285776531404.Spec : Prop :=
  ∀ n, P15541573285776531404.a n = A006335 n

end A006335

/-! ## A006335.P16109546234462115730

`4^n/(n+1)*A001764(n)`
-/

namespace A006335.P16109546234462115730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A006335.P16109546234462115730

namespace A006335

/-- `4^n/(n+1)*A001764(n)` -/
def P16109546234462115730.Spec : Prop :=
  ∀ n, P16109546234462115730.a n = (A006335 n : ℚ)

end A006335

/-! ## A006335.P15962539645345539758

`A000139(n)/2*2^n*2^n`
-/

namespace A006335.P15962539645345539758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) / 2 * (2 ^ n : ℚ) * (2 ^ n : ℚ)

end

end A006335.P15962539645345539758

namespace A006335

/-- `A000139(n)/2*2^n*2^n` -/
def P15962539645345539758.Spec : Prop :=
  ∀ n, P15962539645345539758.a n = (A006335 n : ℚ)

end A006335

/-! ## A006335.P14195067740014371178

`A000139(n)/2*A000302(n)`
-/

namespace A006335.P14195067740014371178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) / 2 * (A000302 n : ℚ)

end

end A006335.P14195067740014371178

namespace A006335

/-- `A000139(n)/2*A000302(n)` -/
def P14195067740014371178.Spec : Prop :=
  ∀ n, P14195067740014371178.a n = (A006335 n : ℚ)

end A006335

/-! ## A006335.P14038025492489070384

`A000309(n)*A008949(A000096(n))`
-/

namespace A006335.P14038025492489070384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000309 n * A008949 (A000096 n).toNat

end

end A006335.P14038025492489070384

namespace A006335

/-- `A000309(n)*A008949(A000096(n))` -/
def P14038025492489070384.Spec : Prop :=
  ∀ n, P14038025492489070384.a n = A006335 n

end A006335

/-! ## A006335.P15213587321368679209

`A000309(n)*A054582(A000217(n))`
-/

namespace A006335.P15213587321368679209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000309 n * A054582 (A000217 n).toNat

end

end A006335.P15213587321368679209

namespace A006335

/-- `A000309(n)*A054582(A000217(n))` -/
def P15213587321368679209.Spec : Prop :=
  ∀ n, P15213587321368679209.a n = A006335 n

end A006335

/-! ## A006335.P7112256654418114664

`A000139(A028310(n))*A011782(2*n)`
-/

namespace A006335.P7112256654418114664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (A028310 n).toNat * A011782 (2 * n)

end

end A006335.P7112256654418114664

namespace A006335

/-- `A000139(A028310(n))*A011782(2*n)` -/
def P7112256654418114664.Spec : Prop :=
  ∀ n, P7112256654418114664.a n = A006335 n

end A006335

/-! ## A006335.P10825438228618037893

`A098272(n)/(2*(n+1))`
-/

namespace A006335.P10825438228618037893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098272 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A006335.P10825438228618037893

namespace A006335

/-- `A098272(n)/(2*(n+1))` -/
def P10825438228618037893.Spec : Prop :=
  ∀ n, P10825438228618037893.a n = (A006335 n : ℚ)

end A006335

/-! ## A006335.P7997948133482316772

`A006588(n)/A000217(2*n+1)`
-/

namespace A006335.P7997948133482316772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006588 n : ℚ) / (A000217 (2 * n + 1) : ℚ)

end

end A006335.P7997948133482316772

namespace A006335

/-- `A006588(n)/A000217(2*n+1)` -/
def P7997948133482316772.Spec : Prop :=
  ∀ n, P7997948133482316772.a n = (A006335 n : ℚ)

end A006335

/-!
# A006336: a(n) = a(n-1) + a(n - 1 - number of even terms so far).

The programs for A006336, the canonical program `A006336.P15032282325692999716` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006336 has offset 1).

The definition of A006336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006336.P15032282325692999716

`a(n-1)+a(A060143(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006336

/-- `a(n-1)+a(A060143(n+1)-1)` -/
def P15032282325692999716.Spec : Prop :=
  ∀ n, (P15032282325692999716.a n : ℤ) = A006336 (n + 1)

theorem P15032282325692999716.correct : P15032282325692999716.Spec := by
  intro n
  simp only [A006336, Nat.add_sub_cancel]

end A006336

/-! ## A006336.P13069124495232160428

`a(n-1)*ratio[a(n-1)+a(floor(n/ϕ))]` with `a(0)=1`
-/

namespace A006336.P13069124495232160428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A006336.P13069124495232160428

namespace A006336

/-- `a(n-1)*ratio[a(n-1)+a(floor(n/ϕ))]` -/
def P13069124495232160428.Spec : Prop :=
  ∀ n, P13069124495232160428.a n = (A006336 (n + 1) : ℚ)

end A006336

/-! ## A006336.P10478712487922081954

`A134408(n)+a(n-1)` with `a(0)=1`
-/

namespace A006336.P10478712487922081954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134408 n + a (n - 1)

end

end A006336.P10478712487922081954

namespace A006336

/-- `A134408(n)+a(n-1)` -/
def P10478712487922081954.Spec : Prop :=
  ∀ n, P10478712487922081954.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P14229060346682043747

`∑[A134408(n+1)]+1-A134408(n+1)`
-/

namespace A006336.P14229060346682043747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A134408 (n + 1))

end

end A006336.P14229060346682043747

namespace A006336

/-- `∑[A134408(n+1)]+1-A134408(n+1)` -/
def P14229060346682043747.Spec : Prop :=
  ∀ n, P14229060346682043747.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P3592552170165351129

`A131882(n+1)/2`
-/

namespace A006336.P3592552170165351129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131882 (n + 1) : ℚ) / 2

end

end A006336.P3592552170165351129

namespace A006336

/-- `A131882(n+1)/2` -/
def P3592552170165351129.Spec : Prop :=
  ∀ n, P3592552170165351129.a n = (A006336 (n + 1) : ℚ)

end A006336

/-! ## A006336.P6674474986806828035

`A134408(∑[A001468(n)])`
-/

namespace A006336.P6674474986806828035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006336.P6674474986806828035

namespace A006336

/-- `A134408(∑[A001468(n)])` -/
def P6674474986806828035.Spec : Prop :=
  ∀ n, P6674474986806828035.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P7263708819493130012

`A134408(A000201(n+1))`
-/

namespace A006336.P7263708819493130012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A000201 (n + 1)).toNat

end

end A006336.P7263708819493130012

namespace A006336

/-- `A134408(A000201(n+1))` -/
def P7263708819493130012.Spec : Prop :=
  ∀ n, P7263708819493130012.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P9234258821752413244

`A134408(A007067(n+1))`
-/

namespace A006336.P9234258821752413244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A007067 (n + 1)).toNat

end

end A006336.P9234258821752413244

namespace A006336

/-- `A134408(A007067(n+1))` -/
def P9234258821752413244.Spec : Prop :=
  ∀ n, P9234258821752413244.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P7906923899139768911

`A134408(A026355(n+1))`
-/

namespace A006336.P7906923899139768911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A026355 (n + 1)).toNat

end

end A006336.P7906923899139768911

namespace A006336

/-- `A134408(A026355(n+1))` -/
def P7906923899139768911.Spec : Prop :=
  ∀ n, P7906923899139768911.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P13498259404308821060

`A134408(A058065(n+1))`
-/

namespace A006336.P13498259404308821060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A058065 (n + 1)).toNat

end

end A006336.P13498259404308821060

namespace A006336

/-- `A134408(A058065(n+1))` -/
def P13498259404308821060.Spec : Prop :=
  ∀ n, P13498259404308821060.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P1093177429415520777

`A134408(A066096(n+1))`
-/

namespace A006336.P1093177429415520777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A066096 (n + 1)).toNat

end

end A006336.P1093177429415520777

namespace A006336

/-- `A134408(A066096(n+1))` -/
def P1093177429415520777.Spec : Prop :=
  ∀ n, P1093177429415520777.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P9986468033311962369

`A134408(A099267(n+1))`
-/

namespace A006336.P9986468033311962369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A099267 (n + 1)).toNat

end

end A006336.P9986468033311962369

namespace A006336

/-- `A134408(A099267(n+1))` -/
def P9986468033311962369.Spec : Prop :=
  ∀ n, P9986468033311962369.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P12026487649269013574

`A134408(A184582(n+1))`
-/

namespace A006336.P12026487649269013574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A184582 (n + 1)).toNat

end

end A006336.P12026487649269013574

namespace A006336

/-- `A134408(A184582(n+1))` -/
def P12026487649269013574.Spec : Prop :=
  ∀ n, P12026487649269013574.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P7840733392815240627

`A134408(A189662(n+1))`
-/

namespace A006336.P7840733392815240627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A189662 (n + 1)).toNat

end

end A006336.P7840733392815240627

namespace A006336

/-- `A134408(A189662(n+1))` -/
def P7840733392815240627.Spec : Prop :=
  ∀ n, P7840733392815240627.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P12307947099175341608

`A134408(A022342(n+2))`
-/

namespace A006336.P12307947099175341608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A022342 (n + 2)).toNat

end

end A006336.P12307947099175341608

namespace A006336

/-- `A134408(A022342(n+2))` -/
def P12307947099175341608.Spec : Prop :=
  ∀ n, P12307947099175341608.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P6320937655511349292

`A134408(A005206(n)+1+n)`
-/

namespace A006336.P6320937655511349292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A005206 n + 1 + (n : ℤ)).toNat

end

end A006336.P6320937655511349292

namespace A006336

/-- `A134408(A005206(n)+1+n)` -/
def P6320937655511349292.Spec : Prop :=
  ∀ n, P6320937655511349292.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P16501043821865133142

`A134408(A005378(n)+1+n)`
-/

namespace A006336.P16501043821865133142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A005378 n + 1 + (n : ℤ)).toNat

end

end A006336.P16501043821865133142

namespace A006336

/-- `A134408(A005378(n)+1+n)` -/
def P16501043821865133142.Spec : Prop :=
  ∀ n, P16501043821865133142.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P1609461648629805108

`A134408(A060143(n)+2+n)`
-/

namespace A006336.P1609461648629805108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A060143 n + 2 + (n : ℤ)).toNat

end

end A006336.P1609461648629805108

namespace A006336

/-- `A134408(A060143(n)+2+n)` -/
def P1609461648629805108.Spec : Prop :=
  ∀ n, P1609461648629805108.a n = A006336 (n + 1)

end A006336

/-! ## A006336.P2627396135800594262

`A134408(A001950(n+1)-(n+1))`
-/

namespace A006336.P2627396135800594262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (A001950 (n + 1) - (n + 1 : ℤ)).toNat

end

end A006336.P2627396135800594262

namespace A006336

/-- `A134408(A001950(n+1)-(n+1))` -/
def P2627396135800594262.Spec : Prop :=
  ∀ n, P2627396135800594262.a n = A006336 (n + 1)

end A006336

/-!
# A006337: An "eta-sequence": a(n) = floor( (n+1)*sqrt(2) ) - floor( n*sqrt(2) ).

The programs for A006337, the canonical program `A006337.P7691167176776546628` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006337 has offset 1).

The definition of A006337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*sqrt(2))-floor((n+1)*sqrt(2))` (program `A006337.P7691167176776546628`, by `A006337.P7691167176776546628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006337.P7691167176776546628

`floor((n+2)*sqrt(2))-floor((n+1)*sqrt(2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006337

/-- `floor((n+2)*sqrt(2))-floor((n+1)*sqrt(2))` -/
def P7691167176776546628.Spec : Prop :=
  ∀ n, P7691167176776546628.a n = A006337 (n + 1)

theorem P7691167176776546628.correct : P7691167176776546628.Spec := by
  intro n
  simp only [A006337, Nat.add_sub_cancel]

end A006337

/-! ## A006337.P1995454788406891861

`Δ[ceil((n+1)*sqrt(2))]!`
-/

namespace A006337.P1995454788406891861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A006337.P1995454788406891861

namespace A006337

/-- `Δ[ceil((n+1)*sqrt(2))]!` -/
def P1995454788406891861.Spec : Prop :=
  ∀ n, (P1995454788406891861.a n : ℤ) = A006337 (n + 1)

end A006337

/-! ## A006337.P13179386695292029456

`dr(Δ[ceil((n+1)*sqrt(2))])`
-/

namespace A006337.P13179386695292029456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A006337.P13179386695292029456

namespace A006337

/-- `dr(Δ[ceil((n+1)*sqrt(2))])` -/
def P13179386695292029456.Spec : Prop :=
  ∀ n, (P13179386695292029456.a n : ℤ) = A006337 (n + 1)

end A006337

/-! ## A006337.P6435967296791037440

`gcd(2, Δ[ceil((n+1)*sqrt(2))])`
-/

namespace A006337.P6435967296791037440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A006337.P6435967296791037440

namespace A006337

/-- `gcd(2, Δ[ceil((n+1)*sqrt(2))])` -/
def P6435967296791037440.Spec : Prop :=
  ∀ n, (P6435967296791037440.a n : ℤ) = A006337 (n + 1)

end A006337

/-! ## A006337.P12346091250794878739

`Δ[ceil((n+1)*sqrt(2))]%3`
-/

namespace A006337.P12346091250794878739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A006337.P12346091250794878739

namespace A006337

/-- `Δ[ceil((n+1)*sqrt(2))]%3` -/
def P12346091250794878739.Spec : Prop :=
  ∀ n, P12346091250794878739.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P7482968924455699519

`and(3, Δ[ceil((n+1)*sqrt(2))])`
-/

namespace A006337.P7482968924455699519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A006337.P7482968924455699519

namespace A006337

/-- `and(3, Δ[ceil((n+1)*sqrt(2))])` -/
def P7482968924455699519.Spec : Prop :=
  ∀ n, P7482968924455699519.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P8288672600327499682

`ceil(ratio[A097509(n)])`
-/

namespace A006337.P8288672600327499682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A006337.P8288672600327499682

namespace A006337

/-- `ceil(ratio[A097509(n)])` -/
def P8288672600327499682.Spec : Prop :=
  ∀ n, P8288672600327499682.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P16932116969290875781

`A000005(Δ[ceil((n+1)*sqrt(2))])`
-/

namespace A006337.P16932116969290875781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A006337.P16932116969290875781

namespace A006337

/-- `A000005(Δ[ceil((n+1)*sqrt(2))])` -/
def P16932116969290875781.Spec : Prop :=
  ∀ n, P16932116969290875781.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P16122308464084520668

`A001222(Δ[ceil(2*n+(n+1)*sqrt(2))])`
-/

namespace A006337.P16122308464084520668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A006337.P16122308464084520668

namespace A006337

/-- `A001222(Δ[ceil(2*n+(n+1)*sqrt(2))])` -/
def P16122308464084520668.Spec : Prop :=
  ∀ n, P16122308464084520668.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P9144634414979253606

`A000010(Δ[ceil(sqrt((n+1)²+(n+1)²+1))]+1)`
-/

namespace A006337.P9144634414979253606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1) ^ 2 + ((n + 1) ^ 2 + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n + 1).toNat

end

end A006337.P9144634414979253606

namespace A006337

/-- `A000010(Δ[ceil(sqrt((n+1)²+(n+1)²+1))]+1)` -/
def P9144634414979253606.Spec : Prop :=
  ∀ n, P9144634414979253606.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P10887395953114905046

`A040001(A286926(n+1))`
-/

namespace A006337.P10887395953114905046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A286926 (n + 1)).toNat

end

end A006337.P10887395953114905046

namespace A006337

/-- `A040001(A286926(n+1))` -/
def P10887395953114905046.Spec : Prop :=
  ∀ n, P10887395953114905046.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P17929043603824823074

`A000034(A352427(n+1))`
-/

namespace A006337.P17929043603824823074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A352427 (n + 1)).toNat

end

end A006337.P17929043603824823074

namespace A006337

/-- `A000034(A352427(n+1))` -/
def P17929043603824823074.Spec : Prop :=
  ∀ n, P17929043603824823074.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P18177879651820124614

`A000034(A383032(n+1))`
-/

namespace A006337.P18177879651820124614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A383032 (n + 1)).toNat

end

end A006337.P18177879651820124614

namespace A006337

/-- `A000034(A383032(n+1))` -/
def P18177879651820124614.Spec : Prop :=
  ∀ n, P18177879651820124614.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P7139230288184634538

`Δ[A001951(n+1)]`
-/

namespace A006337.P7139230288184634538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006337.P7139230288184634538

namespace A006337

/-- `Δ[A001951(n+1)]` -/
def P7139230288184634538.Spec : Prop :=
  ∀ n, P7139230288184634538.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P16212736300444605607

`Δ[A087057(n+1)]`
-/

namespace A006337.P16212736300444605607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006337.P16212736300444605607

namespace A006337

/-- `Δ[A087057(n+1)]` -/
def P16212736300444605607.Spec : Prop :=
  ∀ n, P16212736300444605607.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P1166962411278236577

`Δ[A395101(n+1)]`
-/

namespace A006337.P1166962411278236577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006337.P1166962411278236577

namespace A006337

/-- `Δ[A395101(n+1)]` -/
def P1166962411278236577.Spec : Prop :=
  ∀ n, P1166962411278236577.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P15094567575084896401

`Δ[A289036(n+3)]`
-/

namespace A006337.P15094567575084896401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006337.P15094567575084896401

namespace A006337

/-- `Δ[A289036(n+3)]` -/
def P15094567575084896401.Spec : Prop :=
  ∀ n, P15094567575084896401.a n = A006337 (n + 1)

end A006337

/-! ## A006337.P8995653346068994773

`A080763(A001953(n+1))`
-/

namespace A006337.P8995653346068994773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A001953 (n + 1)).toNat

end

end A006337.P8995653346068994773

namespace A006337

/-- `A080763(A001953(n+1))` -/
def P8995653346068994773.Spec : Prop :=
  ∀ n, P8995653346068994773.a n = A006337 (n + 1)

end A006337

/-!
# A006338: An "eta-sequence": floor((n+1)*sqrt(2) + 1/2) - floor(n*sqrt(2) + 1/2).

The programs for A006338, the canonical program `A006338.P569038052797078453` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006338 has offset 1).

The definition of A006338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*sqrt(2)+1/2)-floor((n+1)*sqrt(2)+1/2)` (program `A006338.P569038052797078453`, by `A006338.P569038052797078453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006338.P569038052797078453

`floor((n+2)*sqrt(2)+1/2)-floor((n+1)*sqrt(2)+1/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006338

/-- `floor((n+2)*sqrt(2)+1/2)-floor((n+1)*sqrt(2)+1/2)` -/
def P569038052797078453.Spec : Prop :=
  ∀ n, P569038052797078453.a n = A006338 (n + 1)

theorem P569038052797078453.correct : P569038052797078453.Spec := by
  intro n
  simp only [A006338, Nat.add_sub_cancel]

end A006338

/-! ## A006338.P1991728860015172364

`A214848(n+1)`
-/

namespace A006338.P1991728860015172364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (n + 1)

end

end A006338.P1991728860015172364

namespace A006338

/-- `A214848(n+1)` -/
def P1991728860015172364.Spec : Prop :=
  ∀ n, P1991728860015172364.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P10645979155112603164

`ceil(ratio[A214848(n)])`
-/

namespace A006338.P10645979155112603164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A006338.P10645979155112603164

namespace A006338

/-- `ceil(ratio[A214848(n)])` -/
def P10645979155112603164.Spec : Prop :=
  ∀ n, P10645979155112603164.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P8355854391803645294

`Δ[A022846(n+1)]`
-/

namespace A006338.P8355854391803645294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006338.P8355854391803645294

namespace A006338

/-- `Δ[A022846(n+1)]` -/
def P8355854391803645294.Spec : Prop :=
  ∀ n, P8355854391803645294.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P13488469388698872181

`Δ[A049473(2*(n+1))]`
-/

namespace A006338.P13488469388698872181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006338.P13488469388698872181

namespace A006338

/-- `Δ[A049473(2*(n+1))]` -/
def P13488469388698872181.Spec : Prop :=
  ∀ n, P13488469388698872181.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P6629039259193833638

`Δ[A258703(2*(n+1))]`
-/

namespace A006338.P6629039259193833638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006338.P6629039259193833638

namespace A006338

/-- `Δ[A258703(2*(n+1))]` -/
def P6629039259193833638.Spec : Prop :=
  ∀ n, P6629039259193833638.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P6174853043621205127

`Δ[A248231(2*(n+1))]`
-/

namespace A006338.P6174853043621205127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006338.P6174853043621205127

namespace A006338

/-- `Δ[A248231(2*(n+1))]` -/
def P6174853043621205127.Spec : Prop :=
  ∀ n, P6174853043621205127.a n = A006338 (n + 1)

end A006338

/-! ## A006338.P3726759411839126095

`Δ[A080604(∑[n+1])]`
-/

namespace A006338.P3726759411839126095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080604 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006338.P3726759411839126095

namespace A006338

/-- `Δ[A080604(∑[n+1])]` -/
def P3726759411839126095.Spec : Prop :=
  ∀ n, P3726759411839126095.a n = A006338 (n + 1)

end A006338

/-!
# A006339: Least hypotenuse of n distinct Pythagorean triangles.

The programs for A006339, there is no canonical definition to state claims against.
-/

/-! ## A006339.P3461100301345995780

`sqrt(A018782(Δ[n²]))`
-/

namespace A006339.P3461100301345995780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A006339.P3461100301345995780

/-! ## A006339.P15036861064268850298

`sqrt(A340388(Δ[n²]))`
-/

namespace A006339.P15036861064268850298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340388 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A006339.P15036861064268850298

/-! ## A006339.P1998807630833555657

`root(A018782(2*n+1), 2)`
-/

namespace A006339.P1998807630833555657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018782 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A006339.P1998807630833555657

/-! ## A006339.P17397078291390553581

`floor(sqrt(A340388(2*n+1)))`
-/

namespace A006339.P17397078291390553581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340388 (2 * n + 1))

end

end A006339.P17397078291390553581

/-! ## A006339.P3349324598315898042

`or(sqrt(A018782(2*n+1)), A010054(n))`
-/

namespace A006339.P3349324598315898042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (A018782 (2 * n + 1) : ℝ))) (A010054 n)

end

end A006339.P3349324598315898042

/-!
# A006340: An "eta-sequence": [ (n+1)*tau + 1/2 ] - [ n*tau + 1/2 ], tau = (1 + sqrt(5))/2.

The programs for A006340, the canonical program `A006340.P5648138728573061714` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006340 has offset 0).

The definition of A006340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006340.P952655719367484105

`Δ[round(ϕ*n)]`
-/

namespace A006340.P952655719367484105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006340.P952655719367484105

namespace A006340

/-- `Δ[round(ϕ*n)]` -/
def P952655719367484105.Spec : Prop :=
  ∀ n, P952655719367484105.a n = A006340 n

end A006340

/-! ## A006340.P13777633198551826023

`C(2, Δ[round(n/ϕ)])`
-/

namespace A006340.P13777633198551826023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A006340.P13777633198551826023

namespace A006340

/-- `C(2, Δ[round(n/ϕ)])` -/
def P13777633198551826023.Spec : Prop :=
  ∀ n, (P13777633198551826023.a n : ℤ) = A006340 n

end A006340

/-! ## A006340.P16149942837213070739

`(Δ[round(n/ϕ)]+1)!`
-/

namespace A006340.P16149942837213070739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n + 1).toNat

end

end A006340.P16149942837213070739

namespace A006340

/-- `(Δ[round(n/ϕ)]+1)!` -/
def P16149942837213070739.Spec : Prop :=
  ∀ n, (P16149942837213070739.a n : ℤ) = A006340 n

end A006340

/-! ## A006340.P8126684768126947885

`gcd(2, Δ[round(n/ϕ²)])`
-/

namespace A006340.P8126684768126947885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A006340.P8126684768126947885

namespace A006340

/-- `gcd(2, Δ[round(n/ϕ²)])` -/
def P8126684768126947885.Spec : Prop :=
  ∀ n, (P8126684768126947885.a n : ℤ) = A006340 n

end A006340

/-! ## A006340.P9723666536700448490

`dr(Δ[round(n/ϕ)])+1`
-/

namespace A006340.P9723666536700448490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) + 1

end

end A006340.P9723666536700448490

namespace A006340

/-- `dr(Δ[round(n/ϕ)])+1` -/
def P9723666536700448490.Spec : Prop :=
  ∀ n, (P9723666536700448490.a n : ℤ) = A006340 n

end A006340

/-! ## A006340.P14424501099603149793

`2-dr(Δ[round(n/ϕ²)])`
-/

namespace A006340.P14424501099603149793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℤ)

end

end A006340.P14424501099603149793

namespace A006340

/-- `2-dr(Δ[round(n/ϕ²)])` -/
def P14424501099603149793.Spec : Prop :=
  ∀ n, P14424501099603149793.a n = A006340 n

end A006340

/-! ## A006340.P5648138728573061714

`A334413(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006340

/-- `A334413(n)+1` -/
def P5648138728573061714.Spec : Prop :=
  ∀ n, P5648138728573061714.a n = A006340 n

theorem P5648138728573061714.correct : P5648138728573061714.Spec := by
  intro n
  simp only [A006340]

end A006340

/-! ## A006340.P3132381292579935023

`2-A334414(n)`
-/

namespace A006340.P3132381292579935023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A334414 n

end

end A006340.P3132381292579935023

namespace A006340

/-- `2-A334414(n)` -/
def P3132381292579935023.Spec : Prop :=
  ∀ n, P3132381292579935023.a n = A006340 n

end A006340

/-! ## A006340.P9416542221871853608

`abs(Δ[A007067(n)])`
-/

namespace A006340.P9416542221871853608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006340.P9416542221871853608

namespace A006340

/-- `abs(Δ[A007067(n)])` -/
def P9416542221871853608.Spec : Prop :=
  ∀ n, P9416542221871853608.a n = A006340 n

end A006340

/-! ## A006340.P15119087397712552156

`Δ[A004937(n)]-1`
-/

namespace A006340.P15119087397712552156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A006340.P15119087397712552156

namespace A006340

/-- `Δ[A004937(n)]-1` -/
def P15119087397712552156.Spec : Prop :=
  ∀ n, P15119087397712552156.a n = A006340 n

end A006340

/-! ## A006340.P343292046723112912

`A000032(Δ[round(n/ϕ²)])`
-/

namespace A006340.P343292046723112912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A006340.P343292046723112912

namespace A006340

/-- `A000032(Δ[round(n/ϕ²)])` -/
def P343292046723112912.Spec : Prop :=
  ∀ n, P343292046723112912.a n = A006340 n

end A006340

/-! ## A006340.P10943066929926328189

`A000045(Δ[round(n/ϕ)])+1`
-/

namespace A006340.P10943066929926328189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat + 1

end

end A006340.P10943066929926328189

namespace A006340

/-- `A000045(Δ[round(n/ϕ)])+1` -/
def P10943066929926328189.Spec : Prop :=
  ∀ n, P10943066929926328189.a n = A006340 n

end A006340

/-! ## A006340.P8416863682508202826

`3-A000032(Δ[round(n/ϕ)])`
-/

namespace A006340.P8416863682508202826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000032 (f1 (n + 1) - f1 n).toNat

end

end A006340.P8416863682508202826

namespace A006340

/-- `3-A000032(Δ[round(n/ϕ)])` -/
def P8416863682508202826.Spec : Prop :=
  ∀ n, P8416863682508202826.a n = A006340 n

end A006340

/-! ## A006340.P10176860279493362850

`2-char[A188222(2*n+1)]`
-/

namespace A006340.P10176860279493362850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A006340.P10176860279493362850

namespace A006340

/-- `2-char[A188222(2*n+1)]` -/
def P10176860279493362850.Spec : Prop :=
  ∀ n, P10176860279493362850.a n = A006340 n

end A006340

/-! ## A006340.P8571075509807607279

`2-A000045(Δ[round(n/ϕ²)])`
-/

namespace A006340.P8571075509807607279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000045 (f1 (n + 1) - f1 n).toNat

end

end A006340.P8571075509807607279

namespace A006340

/-- `2-A000045(Δ[round(n/ϕ²)])` -/
def P8571075509807607279.Spec : Prop :=
  ∀ n, P8571075509807607279.a n = A006340 n

end A006340

/-! ## A006340.P6411132482188679251

`Δ[floor(2*n/ϕ)]+2-A001468(n)`
-/

namespace A006340.P6411132482188679251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 - A001468 n

end

end A006340.P6411132482188679251

namespace A006340

/-- `Δ[floor(2*n/ϕ)]+2-A001468(n)` -/
def P6411132482188679251.Spec : Prop :=
  ∀ n, P6411132482188679251.a n = A006340 n

end A006340

/-! ## A006340.P7551820048559304012

`ceil((Δ[floor(2*n/ϕ)]+2)/A282162(n))`
-/

namespace A006340.P7551820048559304012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n + 2 : ℚ) / (A282162 n : ℚ)⌉

end

end A006340.P7551820048559304012

namespace A006340

/-- `ceil((Δ[floor(2*n/ϕ)]+2)/A282162(n))` -/
def P7551820048559304012.Spec : Prop :=
  ∀ n, P7551820048559304012.a n = A006340 n

end A006340

/-! ## A006340.P6343445996191862609

`A014675(A343646(n))`
-/

namespace A006340.P6343445996191862609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A343646 n).toNat

end

end A006340.P6343445996191862609

namespace A006340

/-- `A014675(A343646(n))` -/
def P6343445996191862609.Spec : Prop :=
  ∀ n, P6343445996191862609.a n = A006340 n

end A006340

/-! ## A006340.P9898206191149173538

`A000005(Δ[A007067(n)])`
-/

namespace A006340.P9898206191149173538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A006340.P9898206191149173538

namespace A006340

/-- `A000005(Δ[A007067(n)])` -/
def P9898206191149173538.Spec : Prop :=
  ∀ n, P9898206191149173538.a n = A006340 n

end A006340

/-!
# A006341: Octal palindromes which are also primes.

The programs for A006341, there is no canonical definition to state claims against.
-/

/-! ## A006341.P11116290003131339857

`∩[A002113(n+1), A004682(n+1)]`
-/

namespace A006341.P11116290003131339857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P11116290003131339857

/-! ## A006341.P15141683626932889481

`∩[A004682(n+1), A056525(n+1)]`
-/

namespace A006341.P15141683626932889481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P15141683626932889481

/-! ## A006341.P2320128742850964475

`∩[A004682(n+1), A061917(n+1)]`
-/

namespace A006341.P2320128742850964475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P2320128742850964475

/-! ## A006341.P1856357378312309556

`∩[A004682(n+1), A083158(n+1)]`
-/

namespace A006341.P1856357378312309556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P1856357378312309556

/-! ## A006341.P1988585626274978973

`∩[A004682(n+1), A098897(n+1)]`
-/

namespace A006341.P1988585626274978973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P1988585626274978973

/-! ## A006341.P11684283396060809388

`∩[A004682(n+1), A110751(n+1)]`
-/

namespace A006341.P11684283396060809388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P11684283396060809388

/-! ## A006341.P10965210606073568880

`∩[A004682(n+1), A118599(n+1)]`
-/

namespace A006341.P10965210606073568880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P10965210606073568880

/-! ## A006341.P13217929601061863501

`∩[A004682(n+1), A118600(n+1)]`
-/

namespace A006341.P13217929601061863501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P13217929601061863501

/-! ## A006341.P10433492262485209206

`∩[A004682(n+1), A169824(n+1)]`
-/

namespace A006341.P10433492262485209206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P10433492262485209206

/-! ## A006341.P2388403586584473302

`∩[A004682(n+1), A226732(n+1)]`
-/

namespace A006341.P2388403586584473302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006341.P2388403586584473302

/-!
# A006342: Coloring a circuit with 4 colors.

The programs for A006342, the canonical program `A006342.P16070883464243912782` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006342 has offset 0).

The definition of A006342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006342.P16070883464243912782

`2*a(n-1)+3*a(n-2)-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006342

/-- `2*a(n-1)+3*a(n-2)-1` -/
def P16070883464243912782.Spec : Prop :=
  ∀ n, P16070883464243912782.a n = A006342 n

theorem P16070883464243912782.correct : P16070883464243912782.Spec := by
  intro n
  simp only [A006342]

end A006342

/-! ## A006342.P17443774960901818853

`a(n-1)+A054878(n)` with `a(0)=1`
-/

namespace A006342.P17443774960901818853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054878 n

end

end A006342.P17443774960901818853

namespace A006342

/-- `a(n-1)+A054878(n)` -/
def P17443774960901818853.Spec : Prop :=
  ∀ n, P17443774960901818853.a n = A006342 n

end A006342

/-! ## A006342.P14618079646799440784

`3*3^n/8+1/4+3*(-1)^n/8`
-/

namespace A006342.P14618079646799440784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 3 ^ n : ℚ) / 8 + (1 : ℚ) / 4 + (3 * (-1) ^ n : ℚ) / 8

end

end A006342.P14618079646799440784

namespace A006342

/-- `3*3^n/8+1/4+3*(-1)^n/8` -/
def P14618079646799440784.Spec : Prop :=
  ∀ n, P14618079646799440784.a n = (A006342 n : ℚ)

theorem P14618079646799440784.correct : P14618079646799440784.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A006342, Nat.add_sub_cancel, A006342.P14618079646799440784.a, A006342.P16070883464243912782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A006342, Nat.add_sub_cancel, A006342.P14618079646799440784.a, A006342.P16070883464243912782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006342

/-! ## A006342.P9921113442467167139

`∑[ogf((-1+2x)/(-1+2x+3x^2))]`
-/

namespace A006342.P9921113442467167139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P9921113442467167139

namespace A006342

/-- `∑[ogf((-1+2x)/(-1+2x+3x^2))]` -/
def P9921113442467167139.Spec : Prop :=
  ∀ n, P9921113442467167139.a n = A006342 n

end A006342

/-! ## A006342.P14939779259096110883

`ogf((1-2x)/(1-3x-x^2+3x^3))`
-/

namespace A006342.P14939779259096110883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, -1, 3] n

end

end A006342.P14939779259096110883

namespace A006342

/-- `ogf((1-2x)/(1-3x-x^2+3x^3))` -/
def P14939779259096110883.Spec : Prop :=
  ∀ n, P14939779259096110883.a n = A006342 n

end A006342

/-! ## A006342.P545411878782103123

`∑[3*xor(1, a(n-1))]` with `a(0)=1`
-/

namespace A006342.P545411878782103123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * Nat.xor 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P545411878782103123

namespace A006342

/-- `∑[3*xor(1, a(n-1))]` -/
def P545411878782103123.Spec : Prop :=
  ∀ n, (P545411878782103123.a n : ℤ) = A006342 n

end A006342

/-! ## A006342.P10806157848924160539

`∑[xor(1, round((sqrt(3)^n/2)²))]`
-/

namespace A006342.P10806157848924160539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) ^ n / 2) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P10806157848924160539

namespace A006342

/-- `∑[xor(1, round((sqrt(3)^n/2)²))]` -/
def P10806157848924160539.Spec : Prop :=
  ∀ n, P10806157848924160539.a n = A006342 n

end A006342

/-! ## A006342.P823352628350739406

`∑[3^(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A006342.P823352628350739406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P823352628350739406

namespace A006342

/-- `∑[3^(n-1)-a(n-1)]` -/
def P823352628350739406.Spec : Prop :=
  ∀ n, P823352628350739406.a n = (A006342 n : ℚ)

end A006342

/-! ## A006342.P10388423116448864127

`∑[A054878(n)]`
-/

namespace A006342.P10388423116448864127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P10388423116448864127

namespace A006342

/-- `∑[A054878(n)]` -/
def P10388423116448864127.Spec : Prop :=
  ∀ n, P10388423116448864127.a n = A006342 n

end A006342

/-! ## A006342.P7446064755572271322

`∑[abs(A084567(n))]`
-/

namespace A006342.P7446064755572271322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084567 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P7446064755572271322

namespace A006342

/-- `∑[abs(A084567(n))]` -/
def P7446064755572271322.Spec : Prop :=
  ∀ n, P7446064755572271322.a n = A006342 n

end A006342

/-! ## A006342.P17867289992382399431

`abs(∑[A341463(n)])`
-/

namespace A006342.P17867289992382399431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006342.P17867289992382399431

namespace A006342

/-- `abs(∑[A341463(n)])` -/
def P17867289992382399431.Spec : Prop :=
  ∀ n, P17867289992382399431.a n = A006342 n

end A006342

/-! ## A006342.P8434688071730323916

`∑[abs(1-A014983(n))]`
-/

namespace A006342.P8434688071730323916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014983 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P8434688071730323916

namespace A006342

/-- `∑[abs(1-A014983(n))]` -/
def P8434688071730323916.Spec : Prop :=
  ∀ n, P8434688071730323916.a n = A006342 n

end A006342

/-! ## A006342.P17429735733419927550

`ceil(∑[A046717(n)/2])`
-/

namespace A006342.P17429735733419927550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046717 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A006342.P17429735733419927550

namespace A006342

/-- `ceil(∑[A046717(n)/2])` -/
def P17429735733419927550.Spec : Prop :=
  ∀ n, P17429735733419927550.a n = A006342 n

end A006342

/-! ## A006342.P10187012478645852099

`∑[abs(∑[A141413(n+1)])]`
-/

namespace A006342.P10187012478645852099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006342.P10187012478645852099

namespace A006342

/-- `∑[abs(∑[A141413(n+1)])]` -/
def P10187012478645852099.Spec : Prop :=
  ∀ n, P10187012478645852099.a n = A006342 n

end A006342

/-! ## A006342.P12558995263866854471

`A340395(n+2)%A037488(n+1)`
-/

namespace A006342.P12558995263866854471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340395 (n + 2)) (A037488 (n + 1))

end

end A006342.P12558995263866854471

namespace A006342

/-- `A340395(n+2)%A037488(n+1)` -/
def P12558995263866854471.Spec : Prop :=
  ∀ n, P12558995263866854471.a n = A006342 n

end A006342

/-!
# A006343: Arkons: number of elementary maps with n-1 nodes.

The programs for A006343, there is no canonical definition to state claims against.
-/

/-! ## A006343.P1153625774015455349

`A046767(n)+A033183(A071718(n))`
-/

namespace A006343.P1153625774015455349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n + A033183 (A071718 n).toNat

end

end A006343.P1153625774015455349

/-! ## A006343.P5594675889583561571

`A054404(A127768(n))+A008617(n)`
-/

namespace A006343.P5594675889583561571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A127768 n).toNat + A008617 n

end

end A006343.P5594675889583561571

/-! ## A006343.P15807065001930049372

`A198324(n)-A198318(A005314(n))`
-/

namespace A006343.P15807065001930049372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198324 n - A198318 (A005314 n).toNat

end

end A006343.P15807065001930049372

/-! ## A006343.P4201112147369701167

`and(A006739(A377920(n)), A059710(n))`
-/

namespace A006343.P4201112147369701167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006739 (A377920 n).toNat) (A059710 n)

end

end A006343.P4201112147369701167

/-!
# A006344: Number of rooted maps with n edges on Klein bottle.

The programs for A006344, there is no canonical definition to state claims against.
-/

/-! ## A006344.P6187305586268248707

`A267180(∑[n+1]+2)`
-/

namespace A006344.P6187305586268248707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006344.P6187305586268248707

/-! ## A006344.P4562232385929390331

`record[A267180(A133825(n)+2)]`
-/

namespace A006344.P4562232385929390331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006344.P4562232385929390331

/-! ## A006344.P7065304127789537760

`A267180(A133263(n+1))+A025465(n)`
-/

namespace A006344.P7065304127789537760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267180 (A133263 (n + 1)).toNat + A025465 n

end

end A006344.P7065304127789537760

/-!
# A006345: Linus sequence: a(n) "breaks the pattern" by avoiding the longest doubled suffix.

The programs for A006345, there is no canonical definition to state claims against.
-/

/-! ## A006345.P17925257607314465687

`A157238(n+1)+1`
-/

namespace A006345.P17925257607314465687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157238 (n + 1) + 1

end

end A006345.P17925257607314465687

/-! ## A006345.P17146675873483193556

`(1-A283131(n+1))!`
-/

namespace A006345.P17146675873483193556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 - A283131 (n + 1)).toNat

end

end A006345.P17146675873483193556

/-! ## A006345.P13274234807060203629

`3-a(n-A006346(n+1))` with `a(0)=1`
-/

namespace A006345.P13274234807060203629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - a ((n : ℤ) - A006346 (n + 1)).toNat

end

end A006345.P13274234807060203629

/-! ## A006345.P13001651573533562049

`A135299(gcd(n, n+1)-A283131(n+1))`
-/

namespace A006345.P13001651573533562049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135299 ((Nat.gcd n (n + 1) : ℤ) - A283131 (n + 1)).toNat

end

end A006345.P13001651573533562049

/-! ## A006345.P16754638659652838235

`A100833((A283131(n+1)+2)^A100833(n+1)+1)`
-/

namespace A006345.P16754638659652838235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (SequenceMachineLib.roundAway ((A283131 (n + 1) + 2 : ℚ) ^ (A100833 (n + 1) : ℤ) + 1)).toNat

end

end A006345.P16754638659652838235

/-! ## A006345.P7504129979870874760

`A000005(A000005(A107182(n+1))-A283131(n+1))`
-/

namespace A006345.P7504129979870874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A107182 (n + 1)).toNat - A283131 (n + 1)).toNat

end

end A006345.P7504129979870874760

/-!
# A006346: The Sally sequence: the length of repetition avoided in A006345.

The programs for A006346, there is no canonical definition to state claims against.
-/

/-! ## A006346.P1208167279326914468

`A065120(A226331(n+7))%A123412(n+1)`
-/

namespace A006346.P1208167279326914468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065120 (A226331 (n + 7)).toNat) (A123412 (n + 1))

end

end A006346.P1208167279326914468

/-! ## A006346.P10364383048819381508

`gcd(∑[A101736(n+1)], A280984(n+1))`
-/

namespace A006346.P10364383048819381508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A280984 (n + 1))

end

end A006346.P10364383048819381508

/-! ## A006346.P5122505792760768276

`A065120(A211014(2*(n+2))*A351014(n))`
-/

namespace A006346.P5122505792760768276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A211014 (2 * (n + 2)) * A351014 n).toNat

end

end A006346.P5122505792760768276

/-! ## A006346.P7653626318551473135

`A306737(A177487(n+1))`
-/

namespace A006346.P7653626318551473135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306737 (A177487 (n + 1)).toNat

end

end A006346.P7653626318551473135

/-! ## A006346.P11555235592250958228

`A032742(n+1)%A355836(A114177(n))`
-/

namespace A006346.P11555235592250958228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1)) (A355836 (A114177 n).toNat)

end

end A006346.P11555235592250958228

/-!
# A006347: a(n) = (n+1) a(n-1) + (-1)^n.

The programs for A006347, the canonical program `A006347.P16040333583616590403` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006347 has offset 1).

The definition of A006347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*a(n-1)+(-1)^(n+1)` (program `A006347.P16040333583616590403`, by `A006347.P16040333583616590403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006347.P12674108445765786894

`(n+1)*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006347.P12674108445765786894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1) * (a (n - 1) + a (n - 2))

end

end A006347.P12674108445765786894

namespace A006347

/-- `(n+1)*(a(n-1)+a(n-2))` -/
def P12674108445765786894.Spec : Prop :=
  ∀ n, (P12674108445765786894.a n : ℤ) = A006347 (n + 1)

end A006347

/-! ## A006347.P16040333583616590403

`(n+2)*a(n-1)+(-1)^(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006347

/-- `(n+2)*a(n-1)+(-1)^(n+1)` -/
def P16040333583616590403.Spec : Prop :=
  ∀ n, P16040333583616590403.a n = A006347 (n + 1)

theorem P16040333583616590403.correct : P16040333583616590403.Spec := by
  intro n
  simp only [A006347, Nat.add_sub_cancel]

end A006347

/-! ## A006347.P2413229464669681925

`round((1/2-exp(-1))*(n+2)!)`
-/

namespace A006347.P2413229464669681925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((1 : ℚ) / 2 : ℝ) - Real.exp (-1 : ℝ)) * (Nat.factorial (n + 2) : ℝ))

end

end A006347.P2413229464669681925

namespace A006347

/-- `round((1/2-exp(-1))*(n+2)!)` -/
def P2413229464669681925.Spec : Prop :=
  ∀ n, P2413229464669681925.a n = A006347 (n + 1)

end A006347

/-! ## A006347.P7703001393788859150

`1/2*(n+2)!-floor(((n+2)!+1)/e)`
-/

namespace A006347.P7703001393788859150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ) - (⌊(Nat.factorial (n + 2) + 1 : ℝ) / Real.exp 1⌋ : ℚ)

end

end A006347.P7703001393788859150

namespace A006347

/-- `1/2*(n+2)!-floor(((n+2)!+1)/e)` -/
def P7703001393788859150.Spec : Prop :=
  ∀ n, P7703001393788859150.a n = (A006347 (n + 1) : ℚ)

end A006347

/-! ## A006347.P3066923365932223114

`abs(xor(1, -((n+2)*a(n-1))))` with `a(0)=0`
-/

namespace A006347.P3066923365932223114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor 1 (-((n + 2 : ℤ) * a (n - 1)))|

end

end A006347.P3066923365932223114

namespace A006347

/-- `abs(xor(1, -((n+2)*a(n-1))))` -/
def P3066923365932223114.Spec : Prop :=
  ∀ n, P3066923365932223114.a n = A006347 (n + 1)

end A006347

/-! ## A006347.P11284675406303825037

`record[abs(xor(1, -(n*a(n-1))))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A006347.P11284675406303825037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  |Int.xor 1 (-((n : ℤ) * f1 (n - 1)))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006347.P11284675406303825037

namespace A006347

/-- `record[abs(xor(1, -(n*a(n-1))))]` -/
def P11284675406303825037.Spec : Prop :=
  ∀ n, P11284675406303825037.a n = A006347 (n + 1)

end A006347

/-! ## A006347.P16414472597929952663

`(a(n-1)+a(n-2))/(n+1)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A006347.P16414472597929952663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A006347.P16414472597929952663

namespace A006347

/-- `(a(n-1)+a(n-2))/(n+1)^(-1)` -/
def P16414472597929952663.Spec : Prop :=
  ∀ n, P16414472597929952663.a n = (A006347 (n + 1) : ℚ)

end A006347

/-! ## A006347.P13769847086281213479

`A055596(n+2)/2`
-/

namespace A006347.P13769847086281213479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055596 (n + 2) : ℚ) / 2

end

end A006347.P13769847086281213479

namespace A006347

/-- `A055596(n+2)/2` -/
def P13769847086281213479.Spec : Prop :=
  ∀ n, P13769847086281213479.a n = (A006347 (n + 1) : ℚ)

end A006347

/-! ## A006347.P10677893194465049199

`A155521(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A006347.P10677893194465049199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A155521 n + (n : ℤ) * a (n - 1)

end

end A006347.P10677893194465049199

namespace A006347

/-- `A155521(n)+n*a(n-1)` -/
def P10677893194465049199.Spec : Prop :=
  ∀ n, P10677893194465049199.a n = A006347 (n + 1)

end A006347

/-! ## A006347.P15887979213092761216

`A001710(n+2)-A000166(n+2)`
-/

namespace A006347.P15887979213092761216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2) - A000166 (n + 2)

end

end A006347.P15887979213092761216

namespace A006347

/-- `A001710(n+2)-A000166(n+2)` -/
def P15887979213092761216.Spec : Prop :=
  ∀ n, P15887979213092761216.a n = A006347 (n + 1)

end A006347

/-!
# A006348: a(n) = (n+2)*a(n-1) + (-1)^n.

The programs for A006348, the canonical program `A006348.P15194431516350169306` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006348 has offset 1).

The definition of A006348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*a(n-1)+(-1)^(n+1)` (program `A006348.P15194431516350169306`, by `A006348.P15194431516350169306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006348.P6947812660877760581

`(n+2)*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006348.P6947812660877760581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 2) * (a (n - 1) + a (n - 2))

end

end A006348.P6947812660877760581

namespace A006348

/-- `(n+2)*(a(n-1)+a(n-2))` -/
def P6947812660877760581.Spec : Prop :=
  ∀ n, (P6947812660877760581.a n : ℤ) = A006348 (n + 1)

end A006348

/-! ## A006348.P15194431516350169306

`(n+3)*a(n-1)+(-1)^(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006348

/-- `(n+3)*a(n-1)+(-1)^(n+1)` -/
def P15194431516350169306.Spec : Prop :=
  ∀ n, P15194431516350169306.a n = A006348 (n + 1)

theorem P15194431516350169306.correct : P15194431516350169306.Spec := by
  intro n
  simp only [A006348, Nat.add_sub_cancel]

end A006348

/-! ## A006348.P16886443083835177100

`xor(1, a(n-1)*(n+3))` with `a(0)=0`
-/

namespace A006348.P16886443083835177100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (a (n - 1) * (n + 3))

end

end A006348.P16886443083835177100

namespace A006348

/-- `xor(1, a(n-1)*(n+3))` -/
def P16886443083835177100.Spec : Prop :=
  ∀ n, (P16886443083835177100.a n : ℤ) = A006348 (n + 1)

end A006348

/-! ## A006348.P5252294386644376589

`record[xor(1, n*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A006348.P5252294386644376589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  Nat.xor 1 (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006348.P5252294386644376589

namespace A006348

/-- `record[xor(1, n*a(n-1))]` -/
def P5252294386644376589.Spec : Prop :=
  ∀ n, (P5252294386644376589.a n : ℤ) = A006348 (n + 1)

end A006348

/-! ## A006348.P2868640886201388727

`xor(1, a(n-1)+lcm(n+2, a(n-1)))` with `a(0)=0`
-/

namespace A006348.P2868640886201388727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (a (n - 1) + Nat.lcm (n + 2) (a (n - 1)))

end

end A006348.P2868640886201388727

namespace A006348

/-- `xor(1, a(n-1)+lcm(n+2, a(n-1)))` -/
def P2868640886201388727.Spec : Prop :=
  ∀ n, (P2868640886201388727.a n : ℤ) = A006348 (n + 1)

end A006348

/-! ## A006348.P5480561247708728889

`A176408(n+1)/3`
-/

namespace A006348.P5480561247708728889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176408 (n + 1) : ℚ) / 3

end

end A006348.P5480561247708728889

namespace A006348

/-- `A176408(n+1)/3` -/
def P5480561247708728889.Spec : Prop :=
  ∀ n, P5480561247708728889.a n = (A006348 (n + 1) : ℚ)

end A006348

/-! ## A006348.P18237178109204250088

`A001715(n+3)-A006347(n+2)`
-/

namespace A006348.P18237178109204250088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 3) - A006347 (n + 2)

end

end A006348.P18237178109204250088

namespace A006348

/-- `A001715(n+3)-A006347(n+2)` -/
def P18237178109204250088.Spec : Prop :=
  ∀ n, P18237178109204250088.a n = A006348 (n + 1)

end A006348

/-! ## A006348.P6302790200323635378

`A000166(n+3)%A001715(n+3)`
-/

namespace A006348.P6302790200323635378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 (n + 3)) (A001715 (n + 3))

end

end A006348.P6302790200323635378

namespace A006348

/-- `A000166(n+3)%A001715(n+3)` -/
def P6302790200323635378.Spec : Prop :=
  ∀ n, P6302790200323635378.a n = A006348 (n + 1)

end A006348

/-!
# A006349: Related to series-parallel networks.

The programs for A006349, there is no canonical definition to state claims against.
-/

/-! ## A006349.P4812527135850467790

`∑{d}[n+1, A058353(#)]`
-/

namespace A006349.P4812527135850467790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058353 d

end

end A006349.P4812527135850467790

/-! ## A006349.P14602435764204745903

`2*A058757(n+1)-1`
-/

namespace A006349.P14602435764204745903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058757 (n + 1) - 1

end

end A006349.P14602435764204745903

/-! ## A006349.P15306195545863689221

`∑{d}[n+1, #*A000084(#)]`
-/

namespace A006349.P15306195545863689221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000084 d

end

end A006349.P15306195545863689221

/-! ## A006349.P1482217422260109238

`A058353(n+1)+A058352(n)`
-/

namespace A006349.P1482217422260109238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058353 (n + 1) + A058352 n

end

end A006349.P1482217422260109238

/-! ## A006349.P17493343552674899620

`A058353(n+1)+A036655(n)-1`
-/

namespace A006349.P17493343552674899620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058353 (n + 1) + (A036655 n - 1)

end

end A006349.P17493343552674899620

/-! ## A006349.P13988082420367613276

`A058352(n)+(n+1)*A000084(n+1)`
-/

namespace A006349.P13988082420367613276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058352 n + (n + 1 : ℤ) * A000084 (n + 1)

end

end A006349.P13988082420367613276

/-!
# A006350: Related to series-parallel networks.

The programs for A006350, there is no canonical definition to state claims against.
-/

/-! ## A006350.P8161917406885432849

`A058353(n+1)-(A058351(n)+A036655(n))`
-/

namespace A006350.P8161917406885432849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058353 (n + 1) - (A058351 n + A036655 n)

end

end A006350.P8161917406885432849

/-! ## A006350.P6468811852624084106

`A000669(n+1)*A103517(n)-(A058351(n)+A036655(n))`
-/

namespace A006350.P6468811852624084106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A103517 n - (A058351 n + A036655 n)

end

end A006350.P6468811852624084106

/-! ## A006350.P3989974567689631064

`(n+1)*A000669(n+1)*A036453(n+1)-(A058351(n)+A036655(n))`
-/

namespace A006350.P3989974567689631064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000669 (n + 1) * A036453 (n + 1)) - (A058351 n + A036655 n)

end

end A006350.P3989974567689631064

/-! ## A006350.P3339978064229202204

`(n+1)*A036654(∑[n+1])-(A058351(n)+A036655(n))`
-/

namespace A006350.P3339978064229202204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036654 (∑ j ∈ Finset.range (n + 1), f1 j) - (A058351 n + A036655 n)

end

end A006350.P3339978064229202204

/-!
# A006351: Number of series-parallel networks with n labeled edges. Also called yoke-chains by Cayley and MacMahon.

The programs for A006351, there is no canonical definition to state claims against.
-/

/-! ## A006351.P14194293094676759371

`(Δ[n²]-comp[2*(n+1)])*A000311(n+1)`
-/

namespace A006351.P14194293094676759371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) * A000311 (n + 1)

end

end A006351.P14194293094676759371

/-! ## A006351.P12214866211511077858

`A000311(n+1)/A000670(n)*A000629(n)`
-/

namespace A006351.P12214866211511077858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000311 (n + 1) : ℚ) / (A000670 n : ℚ) * (A000629 n : ℚ)

end

end A006351.P12214866211511077858

/-! ## A006351.P5121433544406888374

`A000311(n+1)/A001003(n)*A006318(n)`
-/

namespace A006351.P5121433544406888374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000311 (n + 1) : ℚ) / (A001003 n : ℚ) * (A006318 n : ℚ)

end

end A006351.P5121433544406888374

/-! ## A006351.P11347789680556437099

`A000311(n+1)+A000311(1-A000007(n)+n)`
-/

namespace A006351.P11347789680556437099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 (n + 1) + A000311 (1 - A000007 n + (n : ℤ)).toNat

end

end A006351.P11347789680556437099

/-! ## A006351.P12430026192471058369

`A000311(n+1)/A000111(n+1)*A001250(n+1)`
-/

namespace A006351.P12430026192471058369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000311 (n + 1) : ℚ) / (A000111 (n + 1) : ℚ) * (A001250 (n + 1) : ℚ)

end

end A006351.P12430026192471058369

/-! ## A006351.P1040225170130571533

`A278458(∑[n+1])`
-/

namespace A006351.P1040225170130571533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006351.P1040225170130571533

/-! ## A006351.P9563204292517939668

`A005172(n+1)/(A000051(n)-1)`
-/

namespace A006351.P9563204292517939668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005172 (n + 1) : ℚ) / (A000051 n - 1 : ℚ)

end

end A006351.P9563204292517939668

/-! ## A006351.P4026085051490257992

`A005172(n+1)/A228693(2*n+1)`
-/

namespace A006351.P4026085051490257992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005172 (n + 1) : ℚ) / (A228693 (2 * n + 1) : ℚ)

end

end A006351.P4026085051490257992

/-!
# A006352: Coefficients in expansion of Eisenstein series E_2 (also called E_1 or G_2).

The programs for A006352, there is no canonical definition to state claims against.
-/

/-! ## A006352.P2131680348083289581

`A033999(n)*A143337(n)`
-/

namespace A006352.P2131680348083289581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143337 n

end

end A006352.P2131680348083289581

/-! ## A006352.P8045550725553488425

`or(A005408(n), A165747(n))*A004011(n)`
-/

namespace A006352.P8045550725553488425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005408 n) (A165747 n) * A004011 n

end

end A006352.P8045550725553488425

/-! ## A006352.P1471836288392947412

`or(A005843(n), A165747(n))*A004011(n)`
-/

namespace A006352.P1471836288392947412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 n) (A165747 n) * A004011 n

end

end A006352.P1471836288392947412

/-! ## A006352.P9242113960307461950

`or(A042948(n), A165747(n))*A004011(n)`
-/

namespace A006352.P9242113960307461950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042948 n) (A165747 n) * A004011 n

end

end A006352.P9242113960307461950

/-! ## A006352.P1328815103692759078

`A000203(n+1)/A143348(n+1)*A143337(n)`
-/

namespace A006352.P1328815103692759078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A143348 (n + 1) : ℚ) * (A143337 n : ℚ)

end

end A006352.P1328815103692759078

/-! ## A006352.P6517332149535471525

`2*A122858(2*n)-A122858(n)`
-/

namespace A006352.P6517332149535471525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122858 (2 * n) - A122858 n

end

end A006352.P6517332149535471525

/-! ## A006352.P638696204690911640

`(A122858(2*n)+A122858(4*n))/2`
-/

namespace A006352.P638696204690911640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122858 (2 * n) + A122858 (4 * n) : ℚ) / 2

end

end A006352.P638696204690911640

/-! ## A006352.P1655545716698849118

`(A228746(2*n)+A143337(2*n))/2`
-/

namespace A006352.P1655545716698849118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228746 (2 * n) + A143337 (2 * n) : ℚ) / 2

end

end A006352.P1655545716698849118

/-!
# A006353: Expansion of (phi(-q^3) * psi(q))^3 / (phi(-q) * psi(q^3)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A006353, there is no canonical definition to state claims against.
-/

/-! ## A006353.P12652555366813738338

`(A125514(n)+A125510(n))/2`
-/

namespace A006353.P12652555366813738338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125514 n + A125510 n : ℚ) / 2

end

end A006353.P12652555366813738338

/-! ## A006353.P7236784542837680345

`(A282544(2*n)+A125514(n))/2`
-/

namespace A006353.P7236784542837680345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282544 (2 * n) + A125514 n : ℚ) / 2

end

end A006353.P7236784542837680345

/-! ## A006353.P17685113590977247673

`A004525(A125514(n)+A125510(n))`
-/

namespace A006353.P17685113590977247673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A125514 n + A125510 n).toNat

end

end A006353.P17685113590977247673

/-! ## A006353.P916082473827859027

`A004526(A125514(n)+A125510(n))`
-/

namespace A006353.P916082473827859027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A125514 n + A125510 n).toNat

end

end A006353.P916082473827859027

/-! ## A006353.P11031911244935259867

`A026741(A125514(n)+A125510(n))`
-/

namespace A006353.P11031911244935259867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A125514 n + A125510 n).toNat

end

end A006353.P11031911244935259867

/-! ## A006353.P1617771852510815714

`A032742(A125514(n)+A125510(n))`
-/

namespace A006353.P1617771852510815714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A125514 n + A125510 n).toNat

end

end A006353.P1617771852510815714

/-! ## A006353.P7468738127291010914

`A064680(A125514(n)+A125510(n))`
-/

namespace A006353.P7468738127291010914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A125514 n + A125510 n).toNat

end

end A006353.P7468738127291010914

/-! ## A006353.P4185544884301167466

`A064680(A282544(2*n)+A125514(n))`
-/

namespace A006353.P4185544884301167466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A282544 (2 * n) + A125514 n).toNat

end

end A006353.P4185544884301167466

/-!
# A006355: Number of binary vectors of length n containing no singletons.

The programs for A006355, the canonical program `A006355.P1385237304681338080` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006355 has offset 0).

The definition of A006355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006355.P1385237304681338080

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006355

/-- `a(n-1)+a(n-2)` -/
def P1385237304681338080.Spec : Prop :=
  ∀ n, (P1385237304681338080.a n : ℤ) = A006355 n

theorem P1385237304681338080.correct : P1385237304681338080.Spec := by
  intro n
  simp only [A006355]

end A006355

/-! ## A006355.P16115373759305685667

`ogf((1-x+x^2)/(1-x-x^2))`
-/

namespace A006355.P16115373759305685667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -1, -1] n

end

end A006355.P16115373759305685667

namespace A006355

/-- `ogf((1-x+x^2)/(1-x-x^2))` -/
def P16115373759305685667.Spec : Prop :=
  ∀ n, P16115373759305685667.a n = A006355 n

end A006355

/-! ## A006355.P13931563485341668622

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A006355.P13931563485341668622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A006355.P13931563485341668622

namespace A006355

/-- `2*a(n-1)-a(n-3)` -/
def P13931563485341668622.Spec : Prop :=
  ∀ n, P13931563485341668622.a n = A006355 n

end A006355

/-! ## A006355.P4043400245289699142

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A006355.P4043400245289699142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A006355.P4043400245289699142

namespace A006355

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P4043400245289699142.Spec : Prop :=
  ∀ n, P4043400245289699142.a n = A006355 n

end A006355

/-! ## A006355.P18303290524787965469

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A006355.P18303290524787965469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A006355.P18303290524787965469

namespace A006355

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P18303290524787965469.Spec : Prop :=
  ∀ n, P18303290524787965469.a n = A006355 n

end A006355

/-! ## A006355.P16998300768605402603

`A118658(n)-floor(acot(n))`
-/

namespace A006355.P16998300768605402603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A006355.P16998300768605402603

namespace A006355

/-- `A118658(n)-floor(acot(n))` -/
def P16998300768605402603.Spec : Prop :=
  ∀ n, P16998300768605402603.a n = A006355 n

end A006355

/-! ## A006355.P6698030771336752022

`A214927(2*n+1)+C(2, n+2)`
-/

namespace A006355.P6698030771336752022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (2 * n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A006355.P6698030771336752022

namespace A006355

/-- `A214927(2*n+1)+C(2, n+2)` -/
def P6698030771336752022.Spec : Prop :=
  ∀ n, P6698030771336752022.a n = A006355 n

end A006355

/-! ## A006355.P354675731565844492

`2*(A000032(n-1)-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A006355.P354675731565844492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (A000032 (n - 1) - a (n - 1))

end

end A006355.P354675731565844492

namespace A006355

/-- `2*(A000032(n-1)-a(n-1))` -/
def P354675731565844492.Spec : Prop :=
  ∀ n, P354675731565844492.a n = A006355 n

end A006355

/-! ## A006355.P14380761734788629558

`A118658(n)-A000007(n)`
-/

namespace A006355.P14380761734788629558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A000007 n

end

end A006355.P14380761734788629558

namespace A006355

/-- `A118658(n)-A000007(n)` -/
def P14380761734788629558.Spec : Prop :=
  ∀ n, P14380761734788629558.a n = A006355 n

end A006355

/-! ## A006355.P5328649513056619357

`A295686(n)-A117569(n)`
-/

namespace A006355.P5328649513056619357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 n - A117569 n

end

end A006355.P5328649513056619357

namespace A006355

/-- `A295686(n)-A117569(n)` -/
def P5328649513056619357.Spec : Prop :=
  ∀ n, P5328649513056619357.a n = A006355 n

end A006355

/-! ## A006355.P9832784396438702165

`A118658(n)/A054977(n)`
-/

namespace A006355.P9832784396438702165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / (A054977 n : ℚ)

end

end A006355.P9832784396438702165

namespace A006355

/-- `A118658(n)/A054977(n)` -/
def P9832784396438702165.Spec : Prop :=
  ∀ n, P9832784396438702165.a n = (A006355 n : ℚ)

end A006355

/-! ## A006355.P17238837370116552060

`A118658(n)/A141044(n)`
-/

namespace A006355.P17238837370116552060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / (A141044 n : ℚ)

end

end A006355.P17238837370116552060

namespace A006355

/-- `A118658(n)/A141044(n)` -/
def P17238837370116552060.Spec : Prop :=
  ∀ n, P17238837370116552060.a n = (A006355 n : ℚ)

end A006355

/-! ## A006355.P5089117129069820438

`A198834(n+1)+A000007(n)`
-/

namespace A006355.P5089117129069820438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 1) + A000007 n

end

end A006355.P5089117129069820438

namespace A006355

/-- `A198834(n+1)+A000007(n)` -/
def P5089117129069820438.Spec : Prop :=
  ∀ n, P5089117129069820438.a n = A006355 n

end A006355

/-! ## A006355.P2588763009239174407

`A163733(n+1)+A159075(n)`
-/

namespace A006355.P2588763009239174407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1) + A159075 n

end

end A006355.P2588763009239174407

namespace A006355

/-- `A163733(n+1)+A159075(n)` -/
def P2588763009239174407.Spec : Prop :=
  ∀ n, P2588763009239174407.a n = A006355 n

end A006355

/-! ## A006355.P4241250144030495157

`A057427(n)+A118658(n)-1`
-/

namespace A006355.P4241250144030495157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A118658 n - 1)

end

end A006355.P4241250144030495157

namespace A006355

/-- `A057427(n)+A118658(n)-1` -/
def P4241250144030495157.Spec : Prop :=
  ∀ n, P4241250144030495157.a n = A006355 n

end A006355

/-! ## A006355.P16139841300668394492

`A154955(n+2)+A118658(n)`
-/

namespace A006355.P16139841300668394492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2) + A118658 n

end

end A006355.P16139841300668394492

namespace A006355

/-- `A154955(n+2)+A118658(n)` -/
def P16139841300668394492.Spec : Prop :=
  ∀ n, P16139841300668394492.a n = A006355 n

end A006355

/-! ## A006355.P3751217306308885506

`(A057427(n)+1)*A212804(n)`
-/

namespace A006355.P3751217306308885506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A212804 n

end

end A006355.P3751217306308885506

namespace A006355

/-- `(A057427(n)+1)*A212804(n)` -/
def P3751217306308885506.Spec : Prop :=
  ∀ n, P3751217306308885506.a n = A006355 n

end A006355

/-! ## A006355.P15609394140614816252

`(2-A000007(n))*A212804(n)`
-/

namespace A006355.P15609394140614816252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A212804 n

end

end A006355.P15609394140614816252

namespace A006355

/-- `(2-A000007(n))*A212804(n)` -/
def P15609394140614816252.Spec : Prop :=
  ∀ n, P15609394140614816252.a n = A006355 n

end A006355

/-! ## A006355.P8828860111303360583

`(3-A141044(n))*A212804(n)`
-/

namespace A006355.P8828860111303360583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A141044 n) * A212804 n

end

end A006355.P8828860111303360583

namespace A006355

/-- `(3-A141044(n))*A212804(n)` -/
def P8828860111303360583.Spec : Prop :=
  ∀ n, P8828860111303360583.a n = A006355 n

end A006355

/-!
# A006356: a(n) = 2*a(n-1) + a(n-2) - a(n-3) for n >= 3, starting with a(0) = 1, a(1) = 3, and a(2) = 6.

The programs for A006356, the canonical program `A006356.P9763101395776818287` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006356 has offset 0).

The definition of A006356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-3)` (program `A006356.P9763101395776818287`, by `A006356.P9763101395776818287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006356.P9763101395776818287

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006356

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P9763101395776818287.Spec : Prop :=
  ∀ n, P9763101395776818287.a n = A006356 n

theorem P9763101395776818287.correct : P9763101395776818287.Spec := by
  intro n
  simp only [A006356]

end A006356

/-! ## A006356.P4013693582931084185

`a(n-1)+a(n-2)+A006054(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A006356.P4013693582931084185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 2) + A006054 (n + 1)

end

end A006356.P4013693582931084185

namespace A006356

/-- `a(n-1)+a(n-2)+A006054(n+1)` -/
def P4013693582931084185.Spec : Prop :=
  ∀ n, P4013693582931084185.a n = A006356 n

end A006356

/-! ## A006356.P4500772062565768954

`A006054(n+2)+A006054(n+1)-A006054(n)`
-/

namespace A006356.P4500772062565768954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 2) + A006054 (n + 1) - A006054 n

end

end A006356.P4500772062565768954

namespace A006356

/-- `A006054(n+2)+A006054(n+1)-A006054(n)` -/
def P4500772062565768954.Spec : Prop :=
  ∀ n, P4500772062565768954.a n = A006356 n

end A006356

/-! ## A006356.P6602967241596880047

`ogf((1+x-x^2)/(1-2x-x^2+x^3))`
-/

namespace A006356.P6602967241596880047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -1, 1] n

end

end A006356.P6602967241596880047

namespace A006356

/-- `ogf((1+x-x^2)/(1-2x-x^2+x^3))` -/
def P6602967241596880047.Spec : Prop :=
  ∀ n, P6602967241596880047.a n = A006356 n

end A006356

/-! ## A006356.P15286375331081757997

`record[A120771(n)]`
-/

namespace A006356.P15286375331081757997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006356.P15286375331081757997

namespace A006356

/-- `record[A120771(n)]` -/
def P15286375331081757997.Spec : Prop :=
  ∀ n, P15286375331081757997.a n = A006356 n

end A006356

/-! ## A006356.P18011651776246834968

`record[A370377(n)]`
-/

namespace A006356.P18011651776246834968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006356.P18011651776246834968

namespace A006356

/-- `record[A370377(n)]` -/
def P18011651776246834968.Spec : Prop :=
  ∀ n, P18011651776246834968.a n = A006356 n

end A006356

/-! ## A006356.P11021636799262506119

`A077998(n+1)`
-/

namespace A006356.P11021636799262506119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1)

end

end A006356.P11021636799262506119

namespace A006356

/-- `A077998(n+1)` -/
def P11021636799262506119.Spec : Prop :=
  ∀ n, P11021636799262506119.a n = A006356 n

end A006356

/-! ## A006356.P7695601805228624048

`A106803(n+2)`
-/

namespace A006356.P7695601805228624048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 2)

end

end A006356.P7695601805228624048

namespace A006356

/-- `A106803(n+2)` -/
def P7695601805228624048.Spec : Prop :=
  ∀ n, P7695601805228624048.a n = A006356 n

end A006356

/-! ## A006356.P4494319809373097330

`record[A187068(2*n)]`
-/

namespace A006356.P4494319809373097330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006356.P4494319809373097330

namespace A006356

/-- `record[A187068(2*n)]` -/
def P4494319809373097330.Spec : Prop :=
  ∀ n, P4494319809373097330.a n = A006356 n

end A006356

/-! ## A006356.P8418822494592356226

`A052949(n+1)-1`
-/

namespace A006356.P8418822494592356226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 (n + 1) - 1

end

end A006356.P8418822494592356226

namespace A006356

/-- `A052949(n+1)-1` -/
def P8418822494592356226.Spec : Prop :=
  ∀ n, P8418822494592356226.a n = A006356 n

end A006356

/-! ## A006356.P10059652653956332539

`A038196(2*(n+1))`
-/

namespace A006356.P10059652653956332539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * (n + 1))

end

end A006356.P10059652653956332539

namespace A006356

/-- `A038196(2*(n+1))` -/
def P10059652653956332539.Spec : Prop :=
  ∀ n, P10059652653956332539.a n = A006356 n

end A006356

/-! ## A006356.P536490068874564385

`A120771(3*(n+1))`
-/

namespace A006356.P536490068874564385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * (n + 1))

end

end A006356.P536490068874564385

namespace A006356

/-- `A120771(3*(n+1))` -/
def P536490068874564385.Spec : Prop :=
  ∀ n, P536490068874564385.a n = A006356 n

end A006356

/-! ## A006356.P17867220967592342756

`A187070(2*(n+2))`
-/

namespace A006356.P17867220967592342756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * (n + 2))

end

end A006356.P17867220967592342756

namespace A006356

/-- `A187070(2*(n+2))` -/
def P17867220967592342756.Spec : Prop :=
  ∀ n, P17867220967592342756.a n = A006356 n

end A006356

/-! ## A006356.P8111107599938511539

`A187068(2*(n+3))`
-/

namespace A006356.P8111107599938511539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * (n + 3))

end

end A006356.P8111107599938511539

namespace A006356

/-- `A187068(2*(n+3))` -/
def P8111107599938511539.Spec : Prop :=
  ∀ n, P8111107599938511539.a n = A006356 n

end A006356

/-! ## A006356.P8403814779577932974

`record[A106803(abs(1-n))]`
-/

namespace A006356.P8403814779577932974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006356.P8403814779577932974

namespace A006356

/-- `record[A106803(abs(1-n))]` -/
def P8403814779577932974.Spec : Prop :=
  ∀ n, P8403814779577932974.a n = A006356 n

end A006356

/-! ## A006356.P1412274012979903029

`A219788(n)+a(n-1)` with `a(0)=1`
-/

namespace A006356.P1412274012979903029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219788 n + a (n - 1)

end

end A006356.P1412274012979903029

namespace A006356

/-- `A219788(n)+a(n-1)` -/
def P1412274012979903029.Spec : Prop :=
  ∀ n, P1412274012979903029.a n = A006356 n

end A006356

/-! ## A006356.P8167815821748315066

`A370377(A004273(n))`
-/

namespace A006356.P8167815821748315066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (A004273 n).toNat

end

end A006356.P8167815821748315066

namespace A006356

/-- `A370377(A004273(n))` -/
def P8167815821748315066.Spec : Prop :=
  ∀ n, P8167815821748315066.a n = A006356 n

end A006356

/-! ## A006356.P8550293448338124605

`A373567(n)+A159075(n)`
-/

namespace A006356.P8550293448338124605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373567 n + A159075 n

end

end A006356.P8550293448338124605

namespace A006356

/-- `A373567(n)+A159075(n)` -/
def P8550293448338124605.Spec : Prop :=
  ∀ n, P8550293448338124605.a n = A006356 n

end A006356

/-! ## A006356.P16283575299254771984

`A373567(n)-A063524(n)`
-/

namespace A006356.P16283575299254771984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373567 n - A063524 n

end

end A006356.P16283575299254771984

namespace A006356

/-- `A373567(n)-A063524(n)` -/
def P16283575299254771984.Spec : Prop :=
  ∀ n, P16283575299254771984.a n = A006356 n

end A006356

/-! ## A006356.P12555215811643769370

`A052534(n)+A006054(n+1)`
-/

namespace A006356.P12555215811643769370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n + A006054 (n + 1)

end

end A006356.P12555215811643769370

namespace A006356

/-- `A052534(n)+A006054(n+1)` -/
def P12555215811643769370.Spec : Prop :=
  ∀ n, P12555215811643769370.a n = A006356 n

end A006356

/-!
# A006357: Number of antichains in the product of a fence poset with n elements and a chain with 3 elements; also number of paths with n turns when light is reflected from 4 glass plates.

The programs for A006357, the canonical program `A006357.P14031608036293907670` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006357 has offset 0).

The definition of A006357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006357.P14031608036293907670

`2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=30`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006357

/-- `2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P14031608036293907670.Spec : Prop :=
  ∀ n, P14031608036293907670.a n = A006357 n

theorem P14031608036293907670.correct : P14031608036293907670.Spec := by
  intro n
  simp only [A006357]

end A006357

/-! ## A006357.P15858695954069821227

`ogf((1+2x-x^2-x^3)/(1-2x-3x^2+x^3+x^4))`
-/

namespace A006357.P15858695954069821227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -2, -3, 1, 1] n

end

end A006357.P15858695954069821227

namespace A006357

/-- `ogf((1+2x-x^2-x^3)/(1-2x-3x^2+x^3+x^4))` -/
def P15858695954069821227.Spec : Prop :=
  ∀ n, P15858695954069821227.a n = A006357 n

end A006357

/-! ## A006357.P2544459922419088125

`A038197(3*(n+1))`
-/

namespace A006357.P2544459922419088125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (3 * (n + 1))

end

end A006357.P2544459922419088125

namespace A006357

/-- `A038197(3*(n+1))` -/
def P2544459922419088125.Spec : Prop :=
  ∀ n, P2544459922419088125.a n = A006357 n

end A006357

/-! ## A006357.P16985791072706423795

`A187506(3*(n+1)+2)`
-/

namespace A006357.P16985791072706423795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * (n + 1) + 2)

end

end A006357.P16985791072706423795

namespace A006357

/-- `A187506(3*(n+1)+2)` -/
def P16985791072706423795.Spec : Prop :=
  ∀ n, P16985791072706423795.a n = A006357 n

end A006357

/-! ## A006357.P17907943190039017967

`A187503(3*(n+2)+2)`
-/

namespace A006357.P17907943190039017967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * (n + 2) + 2)

end

end A006357.P17907943190039017967

namespace A006357

/-- `A187503(3*(n+2)+2)` -/
def P17907943190039017967.Spec : Prop :=
  ∀ n, P17907943190039017967.a n = A006357 n

end A006357

/-! ## A006357.P2229646129892366361

`A052963(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A006357.P2229646129892366361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052963 (n + 1) - a (n - 1)

end

end A006357.P2229646129892366361

namespace A006357

/-- `A052963(n+1)-a(n-1)` -/
def P2229646129892366361.Spec : Prop :=
  ∀ n, P2229646129892366361.a n = A006357 n

end A006357

/-! ## A006357.P5137224378149889464

`∑[record[A123941(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A006357.P5137224378149889464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A123941 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006357.P5137224378149889464

namespace A006357

/-- `∑[record[A123941(n)-a(n-1)]]` -/
def P5137224378149889464.Spec : Prop :=
  ∀ n, P5137224378149889464.a n = A006357 n

end A006357

/-! ## A006357.P1440707538694928444

`A373568(n)+A159075(n)`
-/

namespace A006357.P1440707538694928444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 n + A159075 n

end

end A006357.P1440707538694928444

namespace A006357

/-- `A373568(n)+A159075(n)` -/
def P1440707538694928444.Spec : Prop :=
  ∀ n, P1440707538694928444.a n = A006357 n

end A006357

/-! ## A006357.P6187899890507716811

`A373568(n)-A063524(n)`
-/

namespace A006357.P6187899890507716811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 n - A063524 n

end

end A006357.P6187899890507716811

namespace A006357

/-- `A373568(n)-A063524(n)` -/
def P6187899890507716811.Spec : Prop :=
  ∀ n, P6187899890507716811.a n = A006357 n

end A006357

/-! ## A006357.P8705248166013638881

`A123941(n)+A091650(n+1)`
-/

namespace A006357.P8705248166013638881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n + A091650 (n + 1)

end

end A006357.P8705248166013638881

namespace A006357

/-- `A123941(n)+A091650(n+1)` -/
def P8705248166013638881.Spec : Prop :=
  ∀ n, P8705248166013638881.a n = A006357 n

end A006357

/-! ## A006357.P1051243010620665880

`A147704(n+1)+A091024(n)`
-/

namespace A006357.P1051243010620665880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 (n + 1) + A091024 n

end

end A006357.P1051243010620665880

namespace A006357

/-- `A147704(n+1)+A091024(n)` -/
def P1051243010620665880.Spec : Prop :=
  ∀ n, P1051243010620665880.a n = A006357 n

end A006357

/-! ## A006357.P12228021221995350713

`A052536(n+1)-A091024(n+1)`
-/

namespace A006357.P12228021221995350713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (n + 1) - A091024 (n + 1)

end

end A006357.P12228021221995350713

namespace A006357

/-- `A052536(n+1)-A091024(n+1)` -/
def P12228021221995350713.Spec : Prop :=
  ∀ n, P12228021221995350713.a n = A006357 n

end A006357

/-! ## A006357.P8072509058092851377

`A091024(n)+abs(Δ[A122099(n+2)])`
-/

namespace A006357.P8072509058092851377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 n + |f1 (n + 1) - f1 n|

end

end A006357.P8072509058092851377

namespace A006357

/-- `A091024(n)+abs(Δ[A122099(n+2)])` -/
def P8072509058092851377.Spec : Prop :=
  ∀ n, P8072509058092851377.a n = A006357 n

end A006357

/-! ## A006357.P537710792501678785

`A060823(n+3)/2`
-/

namespace A006357.P537710792501678785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060823 (n + 3) : ℚ) / 2

end

end A006357.P537710792501678785

namespace A006357

/-- `A060823(n+3)/2` -/
def P537710792501678785.Spec : Prop :=
  ∀ n, P537710792501678785.a n = (A006357 n : ℚ)

end A006357

/-! ## A006357.P2082047471779251090

`A091024(n+2)-A076264(n)`
-/

namespace A006357.P2082047471779251090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 2) - A076264 n

end

end A006357.P2082047471779251090

namespace A006357

/-- `A091024(n+2)-A076264(n)` -/
def P2082047471779251090.Spec : Prop :=
  ∀ n, P2082047471779251090.a n = A006357 n

end A006357

/-! ## A006357.P807077049818217722

`A091024(n+2)-∑[A052536(n)]`
-/

namespace A006357.P807077049818217722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006357.P807077049818217722

namespace A006357

/-- `A091024(n+2)-∑[A052536(n)]` -/
def P807077049818217722.Spec : Prop :=
  ∀ n, P807077049818217722.a n = A006357 n

end A006357

/-! ## A006357.P10520731773919960935

`Δ[A091024(n+1)]-A091024(n)`
-/

namespace A006357.P10520731773919960935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091024 n

end

end A006357.P10520731773919960935

namespace A006357

/-- `Δ[A091024(n+1)]-A091024(n)` -/
def P10520731773919960935.Spec : Prop :=
  ∀ n, P10520731773919960935.a n = A006357 n

end A006357

/-! ## A006357.P8516266329977042318

`A091024(n+2)-A123941(n+1)`
-/

namespace A006357.P8516266329977042318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 2) - A123941 (n + 1)

end

end A006357.P8516266329977042318

namespace A006357

/-- `A091024(n+2)-A123941(n+1)` -/
def P8516266329977042318.Spec : Prop :=
  ∀ n, P8516266329977042318.a n = A006357 n

end A006357

/-! ## A006357.P3889435884908640719

`A091024(n+2)-∑[∑[A052545(n)]]`
-/

namespace A006357.P3889435884908640719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006357.P3889435884908640719

namespace A006357

/-- `A091024(n+2)-∑[∑[A052545(n)]]` -/
def P3889435884908640719.Spec : Prop :=
  ∀ n, P3889435884908640719.a n = A006357 n

end A006357

/-! ## A006357.P3427191326049742124

`(A091650(n+2)+A033999(n+1))/2`
-/

namespace A006357.P3427191326049742124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091650 (n + 2) + A033999 (n + 1) : ℚ) / 2

end

end A006357.P3427191326049742124

namespace A006357

/-- `(A091650(n+2)+A033999(n+1))/2` -/
def P3427191326049742124.Spec : Prop :=
  ∀ n, P3427191326049742124.a n = (A006357 n : ℚ)

end A006357

/-!
# A006358: Number of antichains in the product of a fence poset with n elements and a chain with 4 elements; also number of paths with n turns when light is reflected from 5 glass plates.

The programs for A006358, the canonical program `A006358.P16530237441691084826` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006358 has offset 0).

The definition of A006358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006358.P16530237441691084826

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=55, a(4)=190`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006358

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P16530237441691084826.Spec : Prop :=
  ∀ n, P16530237441691084826.a n = A006358 n

theorem P16530237441691084826.correct : P16530237441691084826.Spec := by
  intro n
  simp only [A006358]

end A006358

/-! ## A006358.P5568254849970532511

`A038201(4*(n+1))`
-/

namespace A006358.P5568254849970532511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (4 * (n + 1))

end

end A006358.P5568254849970532511

namespace A006358

/-- `A038201(4*(n+1))` -/
def P5568254849970532511.Spec : Prop :=
  ∀ n, P5568254849970532511.a n = A006358 n

end A006358

/-! ## A006358.P3021060919914809164

`A373569(n)+A159075(n)`
-/

namespace A006358.P3021060919914809164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373569 n + A159075 n

end

end A006358.P3021060919914809164

namespace A006358

/-- `A373569(n)+A159075(n)` -/
def P3021060919914809164.Spec : Prop :=
  ∀ n, P3021060919914809164.a n = A006358 n

end A006358

/-! ## A006358.P2673937039491272363

`A373569(n)-A063524(n)`
-/

namespace A006358.P2673937039491272363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373569 n - A063524 n

end

end A006358.P2673937039491272363

namespace A006358

/-- `A373569(n)-A063524(n)` -/
def P2673937039491272363.Spec : Prop :=
  ∀ n, P2673937039491272363.a n = A006358 n

end A006358

/-! ## A006358.P11240695721265189802

`record[A038201(A058281(n)-1)]`
-/

namespace A006358.P11240695721265189802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A058281 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P11240695721265189802

namespace A006358

/-- `record[A038201(A058281(n)-1)]` -/
def P11240695721265189802.Spec : Prop :=
  ∀ n, P11240695721265189802.a n = A006358 n

end A006358

/-! ## A006358.P7472559154449044543

`record[A038201(A309492(n+1)-1)]`
-/

namespace A006358.P7472559154449044543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A309492 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P7472559154449044543

namespace A006358

/-- `record[A038201(A309492(n+1)-1)]` -/
def P7472559154449044543.Spec : Prop :=
  ∀ n, P7472559154449044543.a n = A006358 n

end A006358

/-! ## A006358.P8016134856389359757

`record[A038201(2*A117910(2*n))]`
-/

namespace A006358.P8016134856389359757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (2 * A117910 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P8016134856389359757

namespace A006358

/-- `record[A038201(2*A117910(2*n))]` -/
def P8016134856389359757.Spec : Prop :=
  ∀ n, P8016134856389359757.a n = A006358 n

end A006358

/-! ## A006358.P7530196125451252815

`A069006(n+1)-A120747(n+2)`
-/

namespace A006358.P7530196125451252815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069006 (n + 1) - A120747 (n + 2)

end

end A006358.P7530196125451252815

namespace A006358

/-- `A069006(n+1)-A120747(n+2)` -/
def P7530196125451252815.Spec : Prop :=
  ∀ n, P7530196125451252815.a n = A006358 n

end A006358

/-! ## A006358.P15180982293230004827

`A038342(n+1)-(A120747(n+2)+A038342(n))`
-/

namespace A006358.P15180982293230004827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038342 (n + 1) - (A120747 (n + 2) + A038342 n)

end

end A006358.P15180982293230004827

namespace A006358

/-- `A038342(n+1)-(A120747(n+2)+A038342(n))` -/
def P15180982293230004827.Spec : Prop :=
  ∀ n, P15180982293230004827.a n = A006358 n

end A006358

/-! ## A006358.P6887807844514643437

`A050446(eq[4, A002262(n)])`
-/

namespace A006358.P6887807844514643437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006358.P6887807844514643437

namespace A006358

/-- `A050446(eq[4, A002262(n)])` -/
def P6887807844514643437.Spec : Prop :=
  ∀ n, P6887807844514643437.a n = A006358 n

end A006358

/-! ## A006358.P2723514857356278112

`A050447(A052905(n+2))`
-/

namespace A006358.P2723514857356278112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 2)).toNat

end

end A006358.P2723514857356278112

namespace A006358

/-- `A050447(A052905(n+2))` -/
def P2723514857356278112.Spec : Prop :=
  ∀ n, P2723514857356278112.a n = A006358 n

end A006358

/-! ## A006358.P2286554371446736716

`A050447(eq[4, A025581(n)])`
-/

namespace A006358.P2286554371446736716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006358.P2286554371446736716

namespace A006358

/-- `A050447(eq[4, A025581(n)])` -/
def P2286554371446736716.Spec : Prop :=
  ∀ n, P2286554371446736716.a n = A006358 n

end A006358

/-! ## A006358.P3579240638165473172

`record[A050447(A052905(A008611(n)))]`
-/

namespace A006358.P3579240638165473172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P3579240638165473172

namespace A006358

/-- `record[A050447(A052905(A008611(n)))]` -/
def P3579240638165473172.Spec : Prop :=
  ∀ n, P3579240638165473172.a n = A006358 n

end A006358

/-! ## A006358.P6413995986223180691

`record[A050447(A052905(A008612(n)))]`
-/

namespace A006358.P6413995986223180691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P6413995986223180691

namespace A006358

/-- `record[A050447(A052905(A008612(n)))]` -/
def P6413995986223180691.Spec : Prop :=
  ∀ n, P6413995986223180691.a n = A006358 n

end A006358

/-! ## A006358.P12852834034637246168

`record[A050447(A052905(A008624(n)))]`
-/

namespace A006358.P12852834034637246168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P12852834034637246168

namespace A006358

/-- `record[A050447(A052905(A008624(n)))]` -/
def P12852834034637246168.Spec : Prop :=
  ∀ n, P12852834034637246168.a n = A006358 n

end A006358

/-! ## A006358.P6304609707749627681

`record[A050447(A052905(A025480(n)))]`
-/

namespace A006358.P6304609707749627681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P6304609707749627681

namespace A006358

/-- `record[A050447(A052905(A025480(n)))]` -/
def P6304609707749627681.Spec : Prop :=
  ∀ n, P6304609707749627681.a n = A006358 n

end A006358

/-! ## A006358.P7179365618752608629

`record[A050447(A052905(A028242(n)))]`
-/

namespace A006358.P7179365618752608629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P7179365618752608629

namespace A006358

/-- `record[A050447(A052905(A028242(n)))]` -/
def P7179365618752608629.Spec : Prop :=
  ∀ n, P7179365618752608629.a n = A006358 n

end A006358

/-! ## A006358.P6807220098969321070

`record[A050447(A052905(A057979(n)))]`
-/

namespace A006358.P6807220098969321070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P6807220098969321070

namespace A006358

/-- `record[A050447(A052905(A057979(n)))]` -/
def P6807220098969321070.Spec : Prop :=
  ∀ n, P6807220098969321070.a n = A006358 n

end A006358

/-! ## A006358.P2385427800343507820

`record[A050447(A052905(A117910(n)))]`
-/

namespace A006358.P2385427800343507820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006358.P2385427800343507820

namespace A006358

/-- `record[A050447(A052905(A117910(n)))]` -/
def P2385427800343507820.Spec : Prop :=
  ∀ n, P2385427800343507820.a n = A006358 n

end A006358

/-!
# A006359: Number of antichains in the product of a fence poset with n elements and a chain with 5 elements; also number of paths with n turns when light is reflected from 6 glass plates.

The programs for A006359, there is no canonical definition to state claims against.
-/

/-! ## A006359.P1332000802035029981

`A070778(n+1)-A069007(n)`
-/

namespace A006359.P1332000802035029981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 (n + 1) - A069007 n

end

end A006359.P1332000802035029981

/-! ## A006359.P5169740438396284647

`A069009(n+1)-(A069008(n)+A069007(n))`
-/

namespace A006359.P5169740438396284647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069009 (n + 1) - (A069008 n + A069007 n)

end

end A006359.P5169740438396284647

/-! ## A006359.P2425421265910696079

`A050446(eq[5, A002262(n)])`
-/

namespace A006359.P2425421265910696079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006359.P2425421265910696079

/-! ## A006359.P11835337381720419821

`A050446(A000124(n+6)-(n+2))`
-/

namespace A006359.P11835337381720419821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A006359.P11835337381720419821

/-! ## A006359.P7762007968876982322

`A050447(A055999(n+3))`
-/

namespace A006359.P7762007968876982322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A055999 (n + 3)).toNat

end

end A006359.P7762007968876982322

/-! ## A006359.P8991783055924934160

`A050447(eq[5, A025581(n)])`
-/

namespace A006359.P8991783055924934160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006359.P8991783055924934160

/-! ## A006359.P8650583346071714765

`A050447(Δ[A023551(n+1)])`
-/

namespace A006359.P8650583346071714765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (f1 (n + 1) - f1 n).toNat

end

end A006359.P8650583346071714765

/-! ## A006359.P11102425978176491750

`A050447(A052905(n+3)-1)`
-/

namespace A006359.P11102425978176491750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 3) - 1).toNat

end

end A006359.P11102425978176491750

/-! ## A006359.P2673655254670780884

`A050447(A000217(n+6)-6)`
-/

namespace A006359.P2673655254670780884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 6) - 6).toNat

end

end A006359.P2673655254670780884

/-! ## A006359.P10532506478592581754

`A050447(eq[6, A004736(n+1)])`
-/

namespace A006359.P10532506478592581754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006359.P10532506478592581754

/-!
# A006364: Numbers k with an even number of 1's in binary, ignoring last bit.

The programs for A006364, the canonical program `A006364.P18180856889258136777` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006364 has offset 1).

The definition of A006364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006364.P16126197294780434419

`comp[xor(n, 2*or(1, n))]`
-/

namespace A006364.P16126197294780434419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A006364.P16126197294780434419

namespace A006364

/-- `comp[xor(n, 2*or(1, n))]` -/
def P16126197294780434419.Spec : Prop :=
  ∀ n, (P16126197294780434419.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P4529127858974021094

`comp[xor(n, xor(1, n)+1+n)]`
-/

namespace A006364.P4529127858974021094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 1 n + 1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A006364.P4529127858974021094

namespace A006364

/-- `comp[xor(n, xor(1, n)+1+n)]` -/
def P4529127858974021094.Spec : Prop :=
  ∀ n, (P4529127858974021094.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P18180856889258136777

`eq[1, 1-a(and(n, n-2))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006364

/-- `eq[1, 1-a(and(n, n-2))]` -/
def P18180856889258136777.Spec : Prop :=
  ∀ n, (P18180856889258136777.a n : ℤ) = A006364 (n + 1)

theorem P18180856889258136777.correct : P18180856889258136777.Spec := by
  intro n
  simp only [A006364, Nat.add_sub_cancel]

end A006364

/-! ## A006364.P11573151001263454704

`lt[0, -(a(and(n, n-2))+1)]` with `a(0)=1, a(1)=1`
-/

namespace A006364.P11573151001263454704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -(f2 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A006364.P11573151001263454704

namespace A006364

/-- `lt[0, -(a(and(n, n-2))+1)]` -/
def P11573151001263454704.Spec : Prop :=
  ∀ n, (P11573151001263454704.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P1937883316889955839

`∑[A254378(n+1)]-1`
-/

namespace A006364.P1937883316889955839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006364.P1937883316889955839

namespace A006364

/-- `∑[A254378(n+1)]-1` -/
def P1937883316889955839.Spec : Prop :=
  ∀ n, P1937883316889955839.a n = A006364 (n + 1)

end A006364

/-! ## A006364.P5652472123062902304

`eq[0, A010060(floor(n/2))]`
-/

namespace A006364.P5652472123062902304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P5652472123062902304

namespace A006364

/-- `eq[0, A010060(floor(n/2))]` -/
def P5652472123062902304.Spec : Prop :=
  ∀ n, (P5652472123062902304.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P1449293733671050226

`eq[0, A163539(2*n+1)]`
-/

namespace A006364.P1449293733671050226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P1449293733671050226

namespace A006364

/-- `eq[0, A163539(2*n+1)]` -/
def P1449293733671050226.Spec : Prop :=
  ∀ n, (P1449293733671050226.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P14849546230205459281

`eq[1, A163538(2*n+1)²]`
-/

namespace A006364.P14849546230205459281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P14849546230205459281

namespace A006364

/-- `eq[1, A163538(2*n+1)²]` -/
def P14849546230205459281.Spec : Prop :=
  ∀ n, (P14849546230205459281.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P13820867060341654440

`2*A286727(n+1)-(n+2)`
-/

namespace A006364.P13820867060341654440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286727 (n + 1) - (n + 2 : ℤ)

end

end A006364.P13820867060341654440

namespace A006364

/-- `2*A286727(n+1)-(n+2)` -/
def P13820867060341654440.Spec : Prop :=
  ∀ n, P13820867060341654440.a n = A006364 (n + 1)

end A006364

/-! ## A006364.P2441887029359093896

`2*(n+1)+(-1)^(n+1-A000120(n))-(3+(-1)^(n+1))/2`
-/

namespace A006364.P2441887029359093896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) + (-1 : ℚ) ^ ((n + 1 : ℤ) - A000120 n : ℤ) - (3 + (-1) ^ (n + 1) : ℚ) / 2

end

end A006364.P2441887029359093896

namespace A006364

/-- `2*(n+1)+(-1)^(n+1-A000120(n))-(3+(-1)^(n+1))/2` -/
def P2441887029359093896.Spec : Prop :=
  ∀ n, P2441887029359093896.a n = (A006364 (n + 1) : ℚ)

end A006364

/-! ## A006364.P16123733111668883071

`eq[1, A004718(A060632(n))]`
-/

namespace A006364.P16123733111668883071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A060632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P16123733111668883071

namespace A006364

/-- `eq[1, A004718(A060632(n))]` -/
def P16123733111668883071.Spec : Prop :=
  ∀ n, (P16123733111668883071.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P11944278239192964298

`xor(A042963(n+1), A268676(n))`
-/

namespace A006364.P11944278239192964298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A042963 (n + 1)) (A268676 n)

end

end A006364.P11944278239192964298

namespace A006364

/-- `xor(A042963(n+1), A268676(n))` -/
def P11944278239192964298.Spec : Prop :=
  ∀ n, P11944278239192964298.a n = A006364 (n + 1)

end A006364

/-! ## A006364.P12208605733930066717

`∪[A092246(n+1), A125592(n+1)]`
-/

namespace A006364.P12208605733930066717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006364.P12208605733930066717

namespace A006364

/-- `∪[A092246(n+1), A125592(n+1)]` -/
def P12208605733930066717.Spec : Prop :=
  ∀ n, (P12208605733930066717.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P6440026869829613563

`∪[A125592(n+1), A195608(n+1)]`
-/

namespace A006364.P6440026869829613563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006364.P6440026869829613563

namespace A006364

/-- `∪[A125592(n+1), A195608(n+1)]` -/
def P6440026869829613563.Spec : Prop :=
  ∀ n, (P6440026869829613563.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P13121830526908479421

`eq[A059252(2*n+1), A059252(2*n)]`
-/

namespace A006364.P13121830526908479421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006364.P13121830526908479421

namespace A006364

/-- `eq[A059252(2*n+1), A059252(2*n)]` -/
def P13121830526908479421.Spec : Prop :=
  ∀ n, (P13121830526908479421.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P10064724044471320066

`eq[and(1, n), A268726(n)]`
-/

namespace A006364.P10064724044471320066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P10064724044471320066

namespace A006364

/-- `eq[and(1, n), A268726(n)]` -/
def P10064724044471320066.Spec : Prop :=
  ∀ n, (P10064724044471320066.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P12305557443799476167

`A254614(A286727(n+1))`
-/

namespace A006364.P12305557443799476167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (A286727 (n + 1)).toNat

end

end A006364.P12305557443799476167

namespace A006364

/-- `A254614(A286727(n+1))` -/
def P12305557443799476167.Spec : Prop :=
  ∀ n, P12305557443799476167.a n = A006364 (n + 1)

end A006364

/-! ## A006364.P10333645315236593580

`lt[A007814(A005187(n)+1-n), 1]`
-/

namespace A006364.P10333645315236593580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005187 n + (1 - (n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006364.P10333645315236593580

namespace A006364

/-- `lt[A007814(A005187(n)+1-n), 1]` -/
def P10333645315236593580.Spec : Prop :=
  ∀ n, (P10333645315236593580.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P6384156424822239898

`eq[0, A095190(n)]`
-/

namespace A006364.P6384156424822239898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P6384156424822239898

namespace A006364

/-- `eq[0, A095190(n)]` -/
def P6384156424822239898.Spec : Prop :=
  ∀ n, (P6384156424822239898.a n : ℤ) = A006364 (n + 1)

end A006364

/-! ## A006364.P4848302936032784369

`eq[1, A179020(n)]`
-/

namespace A006364.P4848302936032784369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006364.P4848302936032784369

namespace A006364

/-- `eq[1, A179020(n)]` -/
def P4848302936032784369.Spec : Prop :=
  ∀ n, (P4848302936032784369.a n : ℤ) = A006364 (n + 1)

end A006364

/-!
# A006365: Number of binary tree partitions.

The programs for A006365, there is no canonical definition to state claims against.
-/

/-! ## A006365.P2981483444337004529

`ceil(∑[A143094(n)/3])`
-/

namespace A006365.P2981483444337004529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143094 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A006365.P2981483444337004529

/-! ## A006365.P13515936886398650439

`A023190(A047033(n+1))`
-/

namespace A006365.P13515936886398650439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A047033 (n + 1)).toNat

end

end A006365.P13515936886398650439

/-! ## A006365.P15540943686713643478

`A026819(A066534(n)+1)`
-/

namespace A006365.P15540943686713643478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A066534 n + 1).toNat

end

end A006365.P15540943686713643478

/-!
# A006366: Number of cyclically symmetric plane partitions in the n-cube; also number of 2n X 2n half-turn symmetric alternating sign matrices divided by number of n X n alternating sign matrices.

The programs for A006366, there is no canonical definition to state claims against.
-/

/-! ## A006366.P8161889856658789314

`A059475(n)/A005130(n)`
-/

namespace A006366.P8161889856658789314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059475 n : ℚ) / (A005130 n : ℚ)

end

end A006366.P8161889856658789314

/-! ## A006366.P14804192751554537002

`A059475(n)/sqrt(A049503(n))`
-/

namespace A006366.P14804192751554537002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059475 n : ℝ) / Real.sqrt (A049503 n : ℝ)

end

end A006366.P14804192751554537002

/-! ## A006366.P18038049495603758384

`A005158(A004277(n))/A005130(n)`
-/

namespace A006366.P18038049495603758384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005158 (A004277 n).toNat : ℚ) / (A005130 n : ℚ)

end

end A006366.P18038049495603758384

/-! ## A006366.P13568325247777556407

`A005158(A004277(n))/sqrt(A049503(n))`
-/

namespace A006366.P13568325247777556407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005158 (A004277 n).toNat : ℝ) / Real.sqrt (A049503 n : ℝ)

end

end A006366.P13568325247777556407

/-! ## A006366.P13432495107654909069

`A059475(n)/A048601(∑[A028310(n)])`
-/

namespace A006366.P13432495107654909069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059475 n : ℚ) / (A048601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A006366.P13432495107654909069

/-!
# A006367: Number of binary vectors of length n+1 beginning with 0 and containing just 1 singleton.

The programs for A006367, the canonical program `A006367.P14194102360147231418` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006367 has offset 0).

The definition of A006367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006367.P14194102360147231418

`A010049(n+1)-A010049(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006367

/-- `A010049(n+1)-A010049(n)` -/
def P14194102360147231418.Spec : Prop :=
  ∀ n, P14194102360147231418.a n = A006367 n

theorem P14194102360147231418.correct : P14194102360147231418.Spec := by
  intro n
  simp only [A006367]

end A006367

/-! ## A006367.P1329599978101350603

`ogf((1-2x+x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A006367.P1329599978101350603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2, -1, 2, 1] n

end

end A006367.P1329599978101350603

namespace A006367

/-- `ogf((1-2x+x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P1329599978101350603.Spec : Prop :=
  ∀ n, P1329599978101350603.a n = A006367 n

end A006367

/-! ## A006367.P12397800180503248375

`a(n-1)+A000045(n-3)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A006367.P12397800180503248375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + (A000045 (n - 3) + a (n - 2))

end

end A006367.P12397800180503248375

namespace A006367

/-- `a(n-1)+A000045(n-3)+a(n-2)` -/
def P12397800180503248375.Spec : Prop :=
  ∀ n, P12397800180503248375.a n = A006367 n

end A006367

/-! ## A006367.P2299541036949349548

`A000045(n+1)-A240847(n+1)`
-/

namespace A006367.P2299541036949349548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A240847 (n + 1)

end

end A006367.P2299541036949349548

namespace A006367

/-- `A000045(n+1)-A240847(n+1)` -/
def P2299541036949349548.Spec : Prop :=
  ∀ n, P2299541036949349548.a n = A006367 n

end A006367

/-! ## A006367.P12508485466491058189

`A208354(n)-a(n-1)` with `a(0)=1`
-/

namespace A006367.P12508485466491058189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208354 n - a (n - 1)

end

end A006367.P12508485466491058189

namespace A006367

/-- `A208354(n)-a(n-1)` -/
def P12508485466491058189.Spec : Prop :=
  ∀ n, P12508485466491058189.a n = A006367 n

end A006367

/-! ## A006367.P13216291617122401592

`A191830(n+2)-A000045(n+1)`
-/

namespace A006367.P13216291617122401592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191830 (n + 2) - A000045 (n + 1)

end

end A006367.P13216291617122401592

namespace A006367

/-- `A191830(n+2)-A000045(n+1)` -/
def P13216291617122401592.Spec : Prop :=
  ∀ n, P13216291617122401592.a n = A006367 n

end A006367

/-! ## A006367.P27703376372754043

`A010049(n)+A240847(n)+A152163(n)`
-/

namespace A006367.P27703376372754043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (A240847 n + A152163 n)

end

end A006367.P27703376372754043

namespace A006367

/-- `A010049(n)+A240847(n)+A152163(n)` -/
def P27703376372754043.Spec : Prop :=
  ∀ n, P27703376372754043.a n = A006367 n

end A006367

/-! ## A006367.P16936902707316394832

`A208354(n)+A240847(n)-A000045(n)`
-/

namespace A006367.P16936902707316394832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + (A240847 n - A000045 n)

end

end A006367.P16936902707316394832

namespace A006367

/-- `A208354(n)+A240847(n)-A000045(n)` -/
def P16936902707316394832.Spec : Prop :=
  ∀ n, P16936902707316394832.a n = A006367 n

end A006367

/-! ## A006367.P7019480810263950698

`Δ[A010049(n)]`
-/

namespace A006367.P7019480810263950698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006367.P7019480810263950698

namespace A006367

/-- `Δ[A010049(n)]` -/
def P7019480810263950698.Spec : Prop :=
  ∀ n, P7019480810263950698.a n = A006367 n

theorem P7019480810263950698.correct : P7019480810263950698.Spec := by
  intro n
  simp only [A006367, Nat.add_sub_cancel, A006367.P7019480810263950698.f1, A006367.P7019480810263950698.a, A006367.P14194102360147231418.a, SequenceMachineLib.memo_apply]

end A006367

/-! ## A006367.P15567530712172938545

`A240847(n+2)+A001629(n)`
-/

namespace A006367.P15567530712172938545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 2) + A001629 n

end

end A006367.P15567530712172938545

namespace A006367

/-- `A240847(n+2)+A001629(n)` -/
def P15567530712172938545.Spec : Prop :=
  ∀ n, P15567530712172938545.a n = A006367 n

end A006367

/-! ## A006367.P6477994102425069737

`A102702(n)-A206268(n+2)`
-/

namespace A006367.P6477994102425069737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n - A206268 (n + 2)

end

end A006367.P6477994102425069737

namespace A006367

/-- `A102702(n)-A206268(n+2)` -/
def P6477994102425069737.Spec : Prop :=
  ∀ n, P6477994102425069737.a n = A006367 n

end A006367

/-! ## A006367.P17179109781475795269

`A208354(n+1)-(A240847(n+1)+A029907(n))`
-/

namespace A006367.P17179109781475795269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) - (A240847 (n + 1) + A029907 n)

end

end A006367.P17179109781475795269

namespace A006367

/-- `A208354(n+1)-(A240847(n+1)+A029907(n))` -/
def P17179109781475795269.Spec : Prop :=
  ∀ n, P17179109781475795269.a n = A006367 n

end A006367

/-! ## A006367.P11805260486626851058

`Δ[A029907(n)-a(n-1)]` with `a(0)=0`
-/

namespace A006367.P11805260486626851058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A029907 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006367.P11805260486626851058

namespace A006367

/-- `Δ[A029907(n)-a(n-1)]` -/
def P11805260486626851058.Spec : Prop :=
  ∀ n, P11805260486626851058.a n = A006367 n

end A006367

/-! ## A006367.P11168537289934618079

`A102702(n)-Δ[A102702(n)]`
-/

namespace A006367.P11168537289934618079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n - (f1 (n + 1) - f1 n)

end

end A006367.P11168537289934618079

namespace A006367

/-- `A102702(n)-Δ[A102702(n)]` -/
def P11168537289934618079.Spec : Prop :=
  ∀ n, P11168537289934618079.a n = A006367 n

end A006367

/-! ## A006367.P12657373314180296551

`A006490(n+1)-A001629(n)`
-/

namespace A006367.P12657373314180296551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - A001629 n

end

end A006367.P12657373314180296551

namespace A006367

/-- `A006490(n+1)-A001629(n)` -/
def P12657373314180296551.Spec : Prop :=
  ∀ n, P12657373314180296551.a n = A006367 n

end A006367

/-! ## A006367.P6132885901001310028

`A136391(n+1)-A029907(n)`
-/

namespace A006367.P6132885901001310028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) - A029907 n

end

end A006367.P6132885901001310028

namespace A006367

/-- `A136391(n+1)-A029907(n)` -/
def P6132885901001310028.Spec : Prop :=
  ∀ n, P6132885901001310028.a n = A006367 n

end A006367

/-! ## A006367.P7191705039458808443

`∑[A208354(n)]-2*A010049(n)`
-/

namespace A006367.P7191705039458808443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A010049 n

end

end A006367.P7191705039458808443

namespace A006367

/-- `∑[A208354(n)]-2*A010049(n)` -/
def P7191705039458808443.Spec : Prop :=
  ∀ n, P7191705039458808443.a n = A006367 n

end A006367

/-! ## A006367.P13886012107533257172

`A006490(n+1)+A000045(n)-A029907(n)`
-/

namespace A006367.P13886012107533257172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + (A000045 n - A029907 n)

end

end A006367.P13886012107533257172

namespace A006367

/-- `A006490(n+1)+A000045(n)-A029907(n)` -/
def P13886012107533257172.Spec : Prop :=
  ∀ n, P13886012107533257172.a n = A006367 n

end A006367

/-! ## A006367.P403981512147494613

`A000045(n+1)+A264147(n)-A001629(n)`
-/

namespace A006367.P403981512147494613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A264147 n - A001629 n)

end

end A006367.P403981512147494613

namespace A006367

/-- `A000045(n+1)+A264147(n)-A001629(n)` -/
def P403981512147494613.Spec : Prop :=
  ∀ n, P403981512147494613.a n = A006367 n

end A006367

/-! ## A006367.P9786529305901670670

`A102702(n)+A102702(n)-A102702(n+1)`
-/

namespace A006367.P9786529305901670670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n + (A102702 n - A102702 (n + 1))

end

end A006367.P9786529305901670670

namespace A006367

/-- `A102702(n)+A102702(n)-A102702(n+1)` -/
def P9786529305901670670.Spec : Prop :=
  ∀ n, P9786529305901670670.a n = A006367 n

end A006367

/-!
# A006368: The "amusical permutation" of the nonnegative numbers: a(2n) = 3n, a(4n+1) = 3n+1, a(4n-1) = 3n-1.

The programs for A006368, the canonical program `A006368.P10938297488155149240` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006368 has offset 0).

The definition of A006368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006368.P10938297488155149240

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=6, a(5)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006368

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P10938297488155149240.Spec : Prop :=
  ∀ n, P10938297488155149240.a n = A006368 n

theorem P10938297488155149240.correct : P10938297488155149240.Spec := by
  intro n
  simp only [A006368]

end A006368

/-! ## A006368.P15864604491052695670

`A006369(n)-A168223(n)`
-/

namespace A006368.P15864604491052695670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - A168223 n

end

end A006368.P15864604491052695670

namespace A006368

/-- `A006369(n)-A168223(n)` -/
def P15864604491052695670.Spec : Prop :=
  ∀ n, P15864604491052695670.a n = A006368 n

theorem P15864604491052695670.correct : P15864604491052695670.Spec := by
  intro n
  simp only [A006368, Nat.add_sub_cancel, A006368.P15864604491052695670.a, A006368.P10938297488155149240.a, A006369, A006369.P842576174392056214.a, A168223, A168223.P6736241960057185808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006368

/-! ## A006368.P10117640533277859133

`floor(lcm(2, 3*n+1)/4)`
-/

namespace A006368.P10117640533277859133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋

end

end A006368.P10117640533277859133

namespace A006368

/-- `floor(lcm(2, 3*n+1)/4)` -/
def P10117640533277859133.Spec : Prop :=
  ∀ n, P10117640533277859133.a n = A006368 n

end A006368

/-! ## A006368.P14014795767615757571

`(a(n-2)+2)%3+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A006368.P14014795767615757571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) + 2) % 3 + (a (n - 2) + 1)

end

end A006368.P14014795767615757571

namespace A006368

/-- `(a(n-2)+2)%3+a(n-2)+1` -/
def P14014795767615757571.Spec : Prop :=
  ∀ n, (P14014795767615757571.a n : ℤ) = A006368 n

end A006368

/-! ## A006368.P4676730515239583988

`3-((2*a(n-2))%3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006368.P4676730515239583988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (Int.tmod (2 * a (n - 2)) 3 - a (n - 2))

end

end A006368.P4676730515239583988

namespace A006368

/-- `3-((2*a(n-2))%3-a(n-2))` -/
def P4676730515239583988.Spec : Prop :=
  ∀ n, P4676730515239583988.a n = A006368 n

end A006368

/-! ## A006368.P11683424176138544179

`floor(A165355(n)/2)`
-/

namespace A006368.P11683424176138544179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165355 n : ℚ) / 2⌋

end

end A006368.P11683424176138544179

namespace A006368

/-- `floor(A165355(n)/2)` -/
def P11683424176138544179.Spec : Prop :=
  ∀ n, P11683424176138544179.a n = A006368 n

end A006368

/-! ## A006368.P17915988256122593076

`round(A298028(n)/4)`
-/

namespace A006368.P17915988256122593076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A298028 n : ℚ) / 4)

end

end A006368.P17915988256122593076

namespace A006368

/-- `round(A298028(n)/4)` -/
def P17915988256122593076.Spec : Prop :=
  ∀ n, P17915988256122593076.a n = A006368 n

end A006368

/-! ## A006368.P13067854323133821754

`round(A168221(2*n)/3)`
-/

namespace A006368.P13067854323133821754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168221 (2 * n) : ℚ) / 3)

end

end A006368.P13067854323133821754

namespace A006368

/-- `round(A168221(2*n)/3)` -/
def P13067854323133821754.Spec : Prop :=
  ∀ n, P13067854323133821754.a n = A006368 n

end A006368

/-! ## A006368.P12972410270657075328

`A168221(A006369(n))`
-/

namespace A006368.P12972410270657075328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A006369 n).toNat

end

end A006368.P12972410270657075328

namespace A006368

/-- `A168221(A006369(n))` -/
def P12972410270657075328.Spec : Prop :=
  ∀ n, P12972410270657075328.a n = A006368 n

end A006368

/-! ## A006368.P6631183625023233077

`A074306(A159966(n))`
-/

namespace A006368.P6631183625023233077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A159966 n).toNat

end

end A006368.P6631183625023233077

namespace A006368

/-- `A074306(A159966(n))` -/
def P6631183625023233077.Spec : Prop :=
  ∀ n, P6631183625023233077.a n = A006368 n

end A006368

/-! ## A006368.P5847030056800629180

`A318972(n)+A038608(n)`
-/

namespace A006368.P5847030056800629180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 n + A038608 n

end

end A006368.P5847030056800629180

namespace A006368

/-- `A318972(n)+A038608(n)` -/
def P5847030056800629180.Spec : Prop :=
  ∀ n, P5847030056800629180.a n = A006368 n

end A006368

/-! ## A006368.P6762493432012251309

`A074306(n)-A101455(n)`
-/

namespace A006368.P6762493432012251309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n - A101455 n

end

end A006368.P6762493432012251309

namespace A006368

/-- `A074306(n)-A101455(n)` -/
def P6762493432012251309.Spec : Prop :=
  ∀ n, P6762493432012251309.a n = A006368 n

end A006368

/-! ## A006368.P8751086467378739027

`A318972(n)-A181983(n)`
-/

namespace A006368.P8751086467378739027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 n - A181983 n

end

end A006368.P8751086467378739027

namespace A006368

/-- `A318972(n)-A181983(n)` -/
def P8751086467378739027.Spec : Prop :=
  ∀ n, P8751086467378739027.a n = A006368 n

end A006368

/-! ## A006368.P10554553163395173555

`A047229(n+1)/A000034(n)`
-/

namespace A006368.P10554553163395173555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047229 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A006368.P10554553163395173555

namespace A006368

/-- `A047229(n+1)/A000034(n)` -/
def P10554553163395173555.Spec : Prop :=
  ∀ n, P10554553163395173555.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P5045240283403926322

`A157932(n+1)/A010694(n)`
-/

namespace A006368.P5045240283403926322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157932 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A006368.P5045240283403926322

namespace A006368

/-- `A157932(n+1)/A010694(n)` -/
def P5045240283403926322.Spec : Prop :=
  ∀ n, P5045240283403926322.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P5941932498283685176

`A157932(n+1)/A382713(n)`
-/

namespace A006368.P5941932498283685176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157932 (n + 1) : ℚ) / (A382713 n : ℚ)

end

end A006368.P5941932498283685176

namespace A006368

/-- `A157932(n+1)/A382713(n)` -/
def P5941932498283685176.Spec : Prop :=
  ∀ n, P5941932498283685176.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P10051156956591113613

`(A195140(n)+A004525(n))/2`
-/

namespace A006368.P10051156956591113613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195140 n + A004525 n : ℚ) / 2

end

end A006368.P10051156956591113613

namespace A006368

/-- `(A195140(n)+A004525(n))/2` -/
def P10051156956591113613.Spec : Prop :=
  ∀ n, P10051156956591113613.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P15662366931969876253

`(A186421(n)+A022998(n))/2`
-/

namespace A006368.P15662366931969876253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186421 n + A022998 n : ℚ) / 2

end

end A006368.P15662366931969876253

namespace A006368

/-- `(A186421(n)+A022998(n))/2` -/
def P15662366931969876253.Spec : Prop :=
  ∀ n, P15662366931969876253.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P6379221399808126837

`(A004525(n)+n)/A000034(n)`
-/

namespace A006368.P6379221399808126837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 n + (n : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A006368.P6379221399808126837

namespace A006368

/-- `(A004525(n)+n)/A000034(n)` -/
def P6379221399808126837.Spec : Prop :=
  ∀ n, P6379221399808126837.a n = (A006368 n : ℚ)

end A006368

/-! ## A006368.P481842710476358417

`ceil(A032766(n)/Δ[A032766(n)])`
-/

namespace A006368.P481842710476358417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032766 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A006368.P481842710476358417

namespace A006368

/-- `ceil(A032766(n)/Δ[A032766(n)])` -/
def P481842710476358417.Spec : Prop :=
  ∀ n, P481842710476358417.a n = A006368 n

end A006368

/-!
# A006369: a(n) = 2*n/3 for n divisible by 3, otherwise a(n) = round(4*n/3). Or, equivalently, a(3*n-2) = 4*n-3, a(3*n-1) = 4*n-1, a(3*n) = 2*n.

The programs for A006369, the canonical program `A006369.P842576174392056214` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006369 has offset 0).

The definition of A006369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006369.P842576174392056214

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006369

/-- `2*a(n-3)-a(n-6)` -/
def P842576174392056214.Spec : Prop :=
  ∀ n, P842576174392056214.a n = A006369 n

theorem P842576174392056214.correct : P842576174392056214.Spec := by
  intro n
  simp only [A006369]

end A006369

/-! ## A006369.P3183837734701559920

`n+floor((n+1)/3)*(-1)^((n+1)%3)`
-/

namespace A006369.P3183837734701559920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n + 1 : ℚ) / 3⌋ * (-1) ^ ((n + 1) % 3)

end

end A006369.P3183837734701559920

namespace A006369

/-- `n+floor((n+1)/3)*(-1)^((n+1)%3)` -/
def P3183837734701559920.Spec : Prop :=
  ∀ n, P3183837734701559920.a n = A006369 n

end A006369

/-! ## A006369.P1426835631573145810

`round((lcm(3, n)+n)/3)`
-/

namespace A006369.P1426835631573145810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)

end

end A006369.P1426835631573145810

namespace A006369

/-- `round((lcm(3, n)+n)/3)` -/
def P1426835631573145810.Spec : Prop :=
  ∀ n, P1426835631573145810.a n = A006369 n

end A006369

/-! ## A006369.P8314758135468221208

`xor(1, a(n-3)+3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006369.P8314758135468221208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Nat.xor 1 (a (n - 3) + 3)

end

end A006369.P8314758135468221208

namespace A006369

/-- `xor(1, a(n-3)+3)` -/
def P8314758135468221208.Spec : Prop :=
  ∀ n, (P8314758135468221208.a n : ℤ) = A006369 n

end A006369

/-! ## A006369.P16372645036878549745

`a(n-3)-gcd(3, n)+5` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006369.P16372645036878549745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) - (Nat.gcd 3 n : ℤ) + 5

end

end A006369.P16372645036878549745

namespace A006369

/-- `a(n-3)-gcd(3, n)+5` -/
def P16372645036878549745.Spec : Prop :=
  ∀ n, P16372645036878549745.a n = A006369 n

end A006369

/-! ## A006369.P4374432237315364025

`a(n-3)+3-(-1)^a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006369.P4374432237315364025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 3 - (-1 : ℝ) ^ (a (n - 3))

end

end A006369.P4374432237315364025

namespace A006369

/-- `a(n-3)+3-(-1)^a(n-3)` -/
def P4374432237315364025.Spec : Prop :=
  ∀ n, P4374432237315364025.a n = (A006369 n : ℝ)

end A006369

/-! ## A006369.P17258351184995441222

`3-((-1)^a(n-3)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006369.P17258351184995441222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 - ((-1 : ℝ) ^ (a (n - 3)) - a (n - 3))

end

end A006369.P17258351184995441222

namespace A006369

/-- `3-((-1)^a(n-3)-a(n-3))` -/
def P17258351184995441222.Spec : Prop :=
  ∀ n, P17258351184995441222.a n = (A006369 n : ℝ)

end A006369

/-! ## A006369.P5289811375145250903

`lcm(2, A042965(n+1))/2`
-/

namespace A006369.P5289811375145250903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042965 (n + 1)) : ℚ) / 2

end

end A006369.P5289811375145250903

namespace A006369

/-- `lcm(2, A042965(n+1))/2` -/
def P5289811375145250903.Spec : Prop :=
  ∀ n, P5289811375145250903.a n = (A006369 n : ℚ)

end A006369

/-! ## A006369.P17706906431627856071

`A074305(A064429(n))`
-/

namespace A006369.P17706906431627856071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A064429 n).toNat

end

end A006369.P17706906431627856071

namespace A006369

/-- `A074305(A064429(n))` -/
def P17706906431627856071.Spec : Prop :=
  ∀ n, P17706906431627856071.a n = A006369 n

end A006369

/-! ## A006369.P2698179587235523501

`A168223(n)+A006368(n)`
-/

namespace A006369.P2698179587235523501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 n + A006368 n

end

end A006369.P2698179587235523501

namespace A006369

/-- `A168223(n)+A006368(n)` -/
def P2698179587235523501.Spec : Prop :=
  ∀ n, P2698179587235523501.a n = A006369 n

theorem P2698179587235523501.correct : P2698179587235523501.Spec := by
  intro n
  simp only [A006369, Nat.add_sub_cancel, A006369.P2698179587235523501.a, A006369.P842576174392056214.a, A006368, A006368.P10938297488155149240.a, A168223, A168223.P6736241960057185808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006369

/-! ## A006369.P10353680739564121504

`A186101(n)+A087509(n)`
-/

namespace A006369.P10353680739564121504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n + A087509 n

end

end A006369.P10353680739564121504

namespace A006369

/-- `A186101(n)+A087509(n)` -/
def P10353680739564121504.Spec : Prop :=
  ∀ n, P10353680739564121504.a n = A006369 n

end A006369

/-! ## A006369.P15471752333932098421

`A186731(n)+A091684(n)`
-/

namespace A006369.P15471752333932098421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n + A091684 n

end

end A006369.P15471752333932098421

namespace A006369

/-- `A186731(n)+A091684(n)` -/
def P15471752333932098421.Spec : Prop :=
  ∀ n, P15471752333932098421.a n = A006369 n

end A006369

/-! ## A006369.P13710811995379805453

`A298024(n)-A298788(n)`
-/

namespace A006369.P13710811995379805453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A298788 n

end

end A006369.P13710811995379805453

namespace A006369

/-- `A298024(n)-A298788(n)` -/
def P13710811995379805453.Spec : Prop :=
  ∀ n, P13710811995379805453.a n = A006369 n

end A006369

/-! ## A006369.P2687508491571881846

`A071619(n)%A264788(n)`
-/

namespace A006369.P2687508491571881846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071619 n) (A264788 n)

end

end A006369.P2687508491571881846

namespace A006369

/-- `A071619(n)%A264788(n)` -/
def P2687508491571881846.Spec : Prop :=
  ∀ n, P2687508491571881846.a n = A006369 n

end A006369

/-! ## A006369.P3255257483813595323

`A320281(n)%A264788(n)`
-/

namespace A006369.P3255257483813595323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320281 n) (A264788 n)

end

end A006369.P3255257483813595323

namespace A006369

/-- `A320281(n)%A264788(n)` -/
def P3255257483813595323.Spec : Prop :=
  ∀ n, P3255257483813595323.a n = A006369 n

end A006369

/-! ## A006369.P6005209414757199059

`A051176(n)+A002264(n+1)`
-/

namespace A006369.P6005209414757199059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n + A002264 (n + 1)

end

end A006369.P6005209414757199059

namespace A006369

/-- `A051176(n)+A002264(n+1)` -/
def P6005209414757199059.Spec : Prop :=
  ∀ n, P6005209414757199059.a n = A006369 n

end A006369

/-! ## A006369.P5866557709735259260

`A260316(n)+A008611(n+1)`
-/

namespace A006369.P5866557709735259260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 n + A008611 (n + 1)

end

end A006369.P5866557709735259260

namespace A006369

/-- `A260316(n)+A008611(n+1)` -/
def P5866557709735259260.Spec : Prop :=
  ∀ n, P5866557709735259260.a n = A006369 n

end A006369

/-! ## A006369.P5010357877883859902

`A032793(n+1)-A087507(n)`
-/

namespace A006369.P5010357877883859902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) - A087507 n

end

end A006369.P5010357877883859902

namespace A006369

/-- `A032793(n+1)-A087507(n)` -/
def P5010357877883859902.Spec : Prop :=
  ∀ n, P5010357877883859902.a n = A006369 n

end A006369

/-! ## A006369.P14448516408400846458

`A004396(n)+2*A087509(n)`
-/

namespace A006369.P14448516408400846458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + 2 * A087509 n

end

end A006369.P14448516408400846458

namespace A006369

/-- `A004396(n)+2*A087509(n)` -/
def P14448516408400846458.Spec : Prop :=
  ∀ n, P14448516408400846458.a n = A006369 n

end A006369

/-! ## A006369.P9313653990418984594

`A042965(n+1)/A100063(n)`
-/

namespace A006369.P9313653990418984594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 1) : ℚ) / (A100063 n : ℚ)

end

end A006369.P9313653990418984594

namespace A006369

/-- `A042965(n+1)/A100063(n)` -/
def P9313653990418984594.Spec : Prop :=
  ∀ n, P9313653990418984594.a n = (A006369 n : ℚ)

end A006369

/-!
# A006370: The Collatz or 3x+1 map: a(n) = n/2 if n is even, 3n + 1 if n is odd.

The programs for A006370, the canonical program `A006370.P14740809103021286772` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006370 has offset 0).

The definition of A006370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006370.P14740809103021286772

`1/4*(7*n+2-(-1)^n*(5*n+2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006370

/-- `1/4*(7*n+2-(-1)^n*(5*n+2))` -/
def P14740809103021286772.Spec : Prop :=
  ∀ n, P14740809103021286772.a n = (A006370 n : ℚ)

end A006370

/-! ## A006370.P7568733230413116556

`∑[∑[ogf((4x+x^2+2x^3)/(1+2x+x^2))]]`
-/

namespace A006370.P7568733230413116556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006370.P7568733230413116556

namespace A006370

/-- `∑[∑[ogf((4x+x^2+2x^3)/(1+2x+x^2))]]` -/
def P7568733230413116556.Spec : Prop :=
  ∀ n, P7568733230413116556.a n = A006370 n

end A006370

/-! ## A006370.P5840430779818620461

`ogf((4x+x^2+2x^3)/(1-2x^2+x^4))`
-/

namespace A006370.P5840430779818620461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 2] [1, 0, -2, 0, 1] n

end

end A006370.P5840430779818620461

namespace A006370

/-- `ogf((4x+x^2+2x^3)/(1-2x^2+x^4))` -/
def P5840430779818620461.Spec : Prop :=
  ∀ n, P5840430779818620461.a n = A006370 n

end A006370

/-! ## A006370.P1231146390980641669

`a(n-2)+6^(n%2)` with `a(0)=0, a(1)=4`
-/

namespace A006370.P1231146390980641669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 6 ^ (n % 2)

end

end A006370.P1231146390980641669

namespace A006370

/-- `a(n-2)+6^(n%2)` -/
def P1231146390980641669.Spec : Prop :=
  ∀ n, (P1231146390980641669.a n : ℤ) = A006370 n

end A006370

/-! ## A006370.P8941044747852839427

`a(n-2)+gcd(6, (n+1)%2)` with `a(0)=0, a(1)=4`
-/

namespace A006370.P8941044747852839427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + Nat.gcd 6 ((n + 1) % 2)

end

end A006370.P8941044747852839427

namespace A006370

/-- `a(n-2)+gcd(6, (n+1)%2)` -/
def P8941044747852839427.Spec : Prop :=
  ∀ n, (P8941044747852839427.a n : ℤ) = A006370 n

end A006370

/-! ## A006370.P18197038534077724554

`a(n-2)+(2*and(1, n)+1)!` with `a(0)=0, a(1)=4`
-/

namespace A006370.P18197038534077724554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + Nat.factorial (2 * Nat.land 1 n + 1)

end

end A006370.P18197038534077724554

namespace A006370

/-- `a(n-2)+(2*and(1, n)+1)!` -/
def P18197038534077724554.Spec : Prop :=
  ∀ n, (P18197038534077724554.a n : ℤ) = A006370 n

end A006370

/-! ## A006370.P8078808706878512402

`∑[7-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A006370.P8078808706878512402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A006370.P8078808706878512402

namespace A006370

/-- `∑[7-a(n-1)]-a(n-1)` -/
def P8078808706878512402.Spec : Prop :=
  ∀ n, P8078808706878512402.a n = A006370 n

end A006370

/-! ## A006370.P5776082948253015992

`abs(A381055(n))`
-/

namespace A006370.P5776082948253015992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A381055 n|

end

end A006370.P5776082948253015992

namespace A006370

/-- `abs(A381055(n))` -/
def P5776082948253015992.Spec : Prop :=
  ∀ n, P5776082948253015992.a n = A006370 n

end A006370

/-! ## A006370.P11096345932983574076

`A147875(n)%(Δ[n²]+3*n+1)`
-/

namespace A006370.P11096345932983574076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147875 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (3 * n + 1 : ℤ))

end

end A006370.P11096345932983574076

namespace A006370

/-- `A147875(n)%(Δ[n²]+3*n+1)` -/
def P11096345932983574076.Spec : Prop :=
  ∀ n, P11096345932983574076.a n = A006370 n

end A006370

/-! ## A006370.P14926089512904851714

`(comp[3*n]+1)*(and(1, n)+1)-1-A093178(n+1)`
-/

namespace A006370.P14926089512904851714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * (Nat.land 1 n + 1) : ℤ) - 1 - A093178 (n + 1)

end

end A006370.P14926089512904851714

namespace A006370

/-- `(comp[3*n]+1)*(and(1, n)+1)-1-A093178(n+1)` -/
def P14926089512904851714.Spec : Prop :=
  ∀ n, P14926089512904851714.a n = A006370 n

end A006370

/-! ## A006370.P10365614550537849646

`A010673(n)+A001281(n)`
-/

namespace A006370.P10365614550537849646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A001281 n

end

end A006370.P10365614550537849646

namespace A006370

/-- `A010673(n)+A001281(n)` -/
def P10365614550537849646.Spec : Prop :=
  ∀ n, P10365614550537849646.a n = A006370 n

end A006370

/-! ## A006370.P10216698227241566623

`A176447(n)+A059029(n)`
-/

namespace A006370.P10216698227241566623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n + A059029 n

end

end A006370.P10216698227241566623

namespace A006370

/-- `A176447(n)+A059029(n)` -/
def P10216698227241566623.Spec : Prop :=
  ∀ n, P10216698227241566623.a n = A006370 n

end A006370

/-! ## A006370.P18426985868147460157

`A381055(n)+A237420(n)`
-/

namespace A006370.P18426985868147460157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381055 n + A237420 n

end

end A006370.P18426985868147460157

namespace A006370

/-- `A381055(n)+A237420(n)` -/
def P18426985868147460157.Spec : Prop :=
  ∀ n, P18426985868147460157.a n = A006370 n

end A006370

/-! ## A006370.P6238531668021865833

`A181762(n)-A010675(n)`
-/

namespace A006370.P6238531668021865833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 n - A010675 n

end

end A006370.P6238531668021865833

namespace A006370

/-- `A181762(n)-A010675(n)` -/
def P6238531668021865833.Spec : Prop :=
  ∀ n, P6238531668021865833.a n = A006370 n

end A006370

/-! ## A006370.P7931830863149835613

`gcd(A014633(n), A381055(n))`
-/

namespace A006370.P7931830863149835613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014633 n) (A381055 n)

end

end A006370.P7931830863149835613

namespace A006370

/-- `gcd(A014633(n), A381055(n))` -/
def P7931830863149835613.Spec : Prop :=
  ∀ n, (P7931830863149835613.a n : ℤ) = A006370 n

end A006370

/-! ## A006370.P13879866282772309342

`lcm(A000034(n), A381055(n))`
-/

namespace A006370.P13879866282772309342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A381055 n)

end

end A006370.P13879866282772309342

namespace A006370

/-- `lcm(A000034(n), A381055(n))` -/
def P13879866282772309342.Spec : Prop :=
  ∀ n, (P13879866282772309342.a n : ℤ) = A006370 n

end A006370

/-! ## A006370.P14823896894802950007

`A047615(n+1)-A195159(n)`
-/

namespace A006370.P14823896894802950007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) - A195159 n

end

end A006370.P14823896894802950007

namespace A006370

/-- `A047615(n+1)-A195159(n)` -/
def P14823896894802950007.Spec : Prop :=
  ∀ n, P14823896894802950007.a n = A006370 n

end A006370

/-! ## A006370.P4277854696170564391

`A036498(n+1)-A249127(n)`
-/

namespace A006370.P4277854696170564391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036498 (n + 1) - A249127 n

end

end A006370.P4277854696170564391

namespace A006370

/-- `A036498(n+1)-A249127(n)` -/
def P4277854696170564391.Spec : Prop :=
  ∀ n, P4277854696170564391.a n = A006370 n

end A006370

/-! ## A006370.P10507643010191022841

`A357946(n)-A309805(n+1)`
-/

namespace A006370.P10507643010191022841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357946 n - A309805 (n + 1)

end

end A006370.P10507643010191022841

namespace A006370

/-- `A357946(n)-A309805(n+1)` -/
def P10507643010191022841.Spec : Prop :=
  ∀ n, P10507643010191022841.a n = A006370 n

end A006370

/-! ## A006370.P16643017064515797203

`A047233(n+1)/A040011(n)`
-/

namespace A006370.P16643017064515797203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047233 (n + 1) : ℚ) / (A040011 n : ℚ)

end

end A006370.P16643017064515797203

namespace A006370

/-- `A047233(n+1)/A040011(n)` -/
def P16643017064515797203.Spec : Prop :=
  ∀ n, P16643017064515797203.a n = (A006370 n : ℚ)

end A006370

/-!
# A006371: Number of positive definite reduced binary quadratic forms of discriminant -A014601(n).

The programs for A006371, there is no canonical definition to state claims against.
-/

/-! ## A006371.P12469772944951189421

`A257023(∑[A166514(A002998(n))])`
-/

namespace A006371.P12469772944951189421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006371.P12469772944951189421

/-! ## A006371.P2949050068013287014

`A060500(A016727(n)+A000322(n))`
-/

namespace A006371.P2949050068013287014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A016727 n + A000322 n).toNat

end

end A006371.P2949050068013287014

/-! ## A006371.P16106928029991845311

`A055642(lcm(A286940(n), A286951(n)))`
-/

namespace A006371.P16106928029991845311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.lcm (A286940 n) (A286951 n))

end

end A006371.P16106928029991845311

/-! ## A006371.P7708239327989058140

`A124765(A242572(n+1)+A174725(n+1))`
-/

namespace A006371.P7708239327989058140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A242572 (n + 1) + A174725 (n + 1)).toNat

end

end A006371.P7708239327989058140

/-!
# A006372: Numbers of terms in expressions for coefficients of "Lovelock Lagrangians" (or "Gauss-Bonnet forms") in terms of Riemann-Christoffel curvature tensor and two of its contractions (viz., the Ricci curvature tensor and the Riemann curvature scalar) for n-dimensional differentiable manifolds having a general linear connection.

The programs for A006372, there is no canonical definition to state claims against.
-/

/-! ## A006372.P2743002526332763314

`A308057(A150175(n))`
-/

namespace A006372.P2743002526332763314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308057 (A150175 n).toNat

end

end A006372.P2743002526332763314

/-! ## A006372.P9293178519367092173

`A361853(ceil(2^(n-1)))+A000958(n+1)`
-/

namespace A006372.P9293178519367092173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361853 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A000958 (n + 1)

end

end A006372.P9293178519367092173

/-! ## A006372.P12098628838078813348

`A333222(A025272(n+1))+A002426(n)`
-/

namespace A006372.P12098628838078813348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A025272 (n + 1)).toNat + A002426 n

end

end A006372.P12098628838078813348

/-!
# A006373: Numbers of terms in expressions for coefficients of Euler-Lagrange tensors in terms of Riemann-Christoffel curvature tensor and two of its contractions (viz., the Ricci curvature tensor and the Riemann curvature scalar) for n-dimensional differentiable manifolds having a general linear connection.

The programs for A006373, there is no canonical definition to state claims against.
-/

/-! ## A006373.P12371774524189708174

`round((n/(sqrt(2)+sqrt(3))+2)^n)`
-/

namespace A006373.P12371774524189708174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) / (Real.sqrt (2 : ℝ) + Real.sqrt (3 : ℝ)) + 2) ^ n)

end

end A006373.P12371774524189708174

/-!
# A006374: Number of positive definite reduced binary quadratic forms of discriminant -4*n.

The programs for A006374, there is no canonical definition to state claims against.
-/

/-! ## A006374.P2800076225529044540

`A006371(2*(n+1))`
-/

namespace A006374.P2800076225529044540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (2 * (n + 1))

end

end A006374.P2800076225529044540

/-! ## A006374.P4948398510852193960

`A290870(n+1)+A067752(n+1)`
-/

namespace A006374.P4948398510852193960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1) + A067752 (n + 1)

end

end A006374.P4948398510852193960

/-! ## A006374.P3986021498732324130

`A320111(n+1)+2*A290870(n+1)`
-/

namespace A006374.P3986021498732324130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + 2 * A290870 (n + 1)

end

end A006374.P3986021498732324130

/-! ## A006374.P8651421163776287986

`2*A067752(n+1)-A320111(n+1)`
-/

namespace A006374.P8651421163776287986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067752 (n + 1) - A320111 (n + 1)

end

end A006374.P8651421163776287986

/-! ## A006374.P13723958563445236405

`A320111(n+1)+A005843(A290870(n+1))`
-/

namespace A006374.P13723958563445236405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A005843 (A290870 (n + 1)).toNat

end

end A006374.P13723958563445236405

/-! ## A006374.P11563057334645525700

`A338117(n+1)+A005408(A290870(n+1))`
-/

namespace A006374.P11563057334645525700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 1) + A005408 (A290870 (n + 1)).toNat

end

end A006374.P11563057334645525700

/-! ## A006374.P4806949648168770405

`A004277(A067752(n+1))-A320111(n+1)`
-/

namespace A006374.P4806949648168770405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067752 (n + 1)).toNat - A320111 (n + 1)

end

end A006374.P4806949648168770405

/-! ## A006374.P16366532792504005777

`A000005(A252463(n+1))+2*A290870(n+1)`
-/

namespace A006374.P16366532792504005777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A252463 (n + 1)).toNat + 2 * A290870 (n + 1)

end

end A006374.P16366532792504005777

/-! ## A006374.P10275736553973453133

`2*A067752(n+1)-A000005(A252463(n+1))`
-/

namespace A006374.P10275736553973453133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067752 (n + 1) - A000005 (A252463 (n + 1)).toNat

end

end A006374.P10275736553973453133

/-! ## A006374.P1111240901829468309

`A038548(n+1)+A290870(n+1)+A066955(n+1)`
-/

namespace A006374.P1111240901829468309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A290870 (n + 1) + A066955 (n + 1))

end

end A006374.P1111240901829468309

/-! ## A006374.P12607862200605435031

`A066955(n+1)+A067752(n+1)-A100073(n+1)`
-/

namespace A006374.P12607862200605435031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) + (A067752 (n + 1) - A100073 (n + 1))

end

end A006374.P12607862200605435031

/-! ## A006374.P17620506766332284593

`A005843(A290870(n+1))+A000005(A252463(n+1))`
-/

namespace A006374.P17620506766332284593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A290870 (n + 1)).toNat + A000005 (A252463 (n + 1)).toNat

end

end A006374.P17620506766332284593

/-!
# A006375: Number of equivalence classes of cycles (or periods) of reduced indefinite binary quadratic forms of determinant -n (see comments).

The programs for A006375, there is no canonical definition to state claims against.
-/

/-! ## A006375.P5489018345726743178

`A193348(∑[2*A032810(n+1)])`
-/

namespace A006375.P5489018345726743178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006375.P5489018345726743178

/-! ## A006375.P1843198097517928885

`A323023(A112632(2*n+5)+(n+1)²/∏{p}[n+1, #])`
-/

namespace A006375.P1843198097517928885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (SequenceMachineLib.roundAway ((A112632 (2 * n + 5) : ℚ) + ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A006375.P1843198097517928885

/-! ## A006375.P5587481455212384598

`A001511(A151930(n)+A018180(n))`
-/

namespace A006375.P5587481455212384598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A151930 n + A018180 n).toNat

end

end A006375.P5587481455212384598

/-! ## A006375.P3832226889276276544

`A193348(A005843(∑[A032810(n+1)]))`
-/

namespace A006375.P3832226889276276544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A006375.P3832226889276276544

/-! ## A006375.P871974515359273184

`A237271(A065033(n)+A002267(n+1))`
-/

namespace A006375.P871974515359273184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A065033 n + A002267 (n + 1)).toNat

end

end A006375.P871974515359273184

/-!
# A006376: Number of indecomposable positive definite ternary quadratic forms of determinant n.

The programs for A006376, there is no canonical definition to state claims against.
-/

/-! ## A006376.P5737793304598477223

`A102679(A295857(n+1))`
-/

namespace A006376.P5737793304598477223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A295857 (n + 1)).toNat

end

end A006376.P5737793304598477223

/-! ## A006376.P8567287516994362753

`A111441(n+1)%A001221(A329352(n+3))`
-/

namespace A006376.P8567287516994362753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111441 (n + 1)) (A001221 (A329352 (n + 3)).toNat)

end

end A006376.P8567287516994362753

/-! ## A006376.P7632213650115218885

`A278778(A341746(n+1))%A072749(n+4)`
-/

namespace A006376.P7632213650115218885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278778 (A341746 (n + 1)).toNat) (A072749 (n + 4))

end

end A006376.P7632213650115218885

/-!
# A006378: Prime self (or Colombian) numbers: primes not expressible as the sum of an integer and its digit sum.

The programs for A006378, there is no canonical definition to state claims against.
-/

/-! ## A006378.P17735138946759745817

`p?[A247104(n+1)]`
-/

namespace A006378.P17735138946759745817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006378.P17735138946759745817

/-! ## A006378.P15310405940950548285

`∩[A009087(n+1), A247104(n+1)]`
-/

namespace A006378.P15310405940950548285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P15310405940950548285

/-! ## A006378.P13050081126281634993

`∩[A065091(n+1), A247104(n+1)]`
-/

namespace A006378.P13050081126281634993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P13050081126281634993

/-! ## A006378.P10158276924770747322

`A065091(eq[1, A107740(n+1)+1])`
-/

namespace A006378.P10158276924770747322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107740 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006378.P10158276924770747322

/-! ## A006378.P9861549814324084955

`∩[A000040(n+1), A247104(n+1)]`
-/

namespace A006378.P9861549814324084955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P9861549814324084955

/-! ## A006378.P15776574524204598617

`∩[A006005(n+1), A247104(n+1)]`
-/

namespace A006378.P15776574524204598617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P15776574524204598617

/-! ## A006378.P12783226117902871371

`∩[A008578(n+1), A247104(n+1)]`
-/

namespace A006378.P12783226117902871371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P12783226117902871371

/-! ## A006378.P16916811732132438803

`∩[A033946(n+1), A247104(n+1)]`
-/

namespace A006378.P16916811732132438803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P16916811732132438803

/-! ## A006378.P3192812037799970475

`∩[A046022(n+1), A247104(n+1)]`
-/

namespace A006378.P3192812037799970475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P3192812037799970475

/-! ## A006378.P8936494526367398974

`∩[A053813(n+1), A247104(n+1)]`
-/

namespace A006378.P8936494526367398974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P8936494526367398974

/-! ## A006378.P16831958591224442820

`∩[A062972(n+1), A247104(n+1)]`
-/

namespace A006378.P16831958591224442820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P16831958591224442820

/-! ## A006378.P15637103243573795354

`∩[A066542(n+1), A247104(n+1)]`
-/

namespace A006378.P15637103243573795354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P15637103243573795354

/-! ## A006378.P12861272652140265310

`∩[A067126(n+1), A247104(n+1)]`
-/

namespace A006378.P12861272652140265310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P12861272652140265310

/-! ## A006378.P9844393652604759489

`∩[A067133(n+1), A247104(n+1)]`
-/

namespace A006378.P9844393652604759489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P9844393652604759489

/-! ## A006378.P12901249997500129094

`∩[A189710(n+1), A247104(n+1)]`
-/

namespace A006378.P12901249997500129094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P12901249997500129094

/-! ## A006378.P18086886785256990260

`∩[A193339(n+1), A247104(n+1)]`
-/

namespace A006378.P18086886785256990260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P18086886785256990260

/-! ## A006378.P7622048035190456235

`∩[A055977(n+1), A247104(n+1)]`
-/

namespace A006378.P7622048035190456235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P7622048035190456235

/-! ## A006378.P18113181763884025005

`∩[A000430(n+1), A247104(n+1)]`
-/

namespace A006378.P18113181763884025005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P18113181763884025005

/-! ## A006378.P1948433181514499057

`∩[A050150(n+1), A247104(n+1)]`
-/

namespace A006378.P1948433181514499057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P1948433181514499057

/-! ## A006378.P3534871949604802357

`∩[A050376(n+1), A247104(n+1)]`
-/

namespace A006378.P3534871949604802357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006378.P3534871949604802357

/-!
# A006380: Number of equivalence classes of 4 X n binary matrices when one can permute rows, permute columns and complement columns.

The programs for A006380, the canonical program `A006380.P15822107496695707583` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006380 has offset 0).

The definition of A006380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006380.P15822107496695707583

`∑[∑[A003082(n)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006380

/-- `∑[∑[A003082(n)]]` -/
def P15822107496695707583.Spec : Prop :=
  ∀ n, P15822107496695707583.a n = A006380 n

theorem P15822107496695707583.correct : P15822107496695707583.Spec := by
  intro n
  simp only [A006380]

end A006380

/-! ## A006380.P10107185485432524549

`∑[∑[A090491(n)+a(n-3)]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A006380.P10107185485432524549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  A090491 n + f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P10107185485432524549

namespace A006380

/-- `∑[∑[A090491(n)+a(n-3)]]` -/
def P10107185485432524549.Spec : Prop :=
  ∀ n, P10107185485432524549.a n = A006380 n

end A006380

/-! ## A006380.P3585207183378408575

`∑[∑[A173196(A110654(n))+A054473(n)]]`
-/

namespace A006380.P3585207183378408575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A110654 n).toNat + A054473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P3585207183378408575

namespace A006380

/-- `∑[∑[A173196(A110654(n))+A054473(n)]]` -/
def P3585207183378408575.Spec : Prop :=
  ∀ n, P3585207183378408575.a n = A006380 n

theorem P3585207183378408575.correct : P3585207183378408575.Spec := by
  intro n
  simp only [A006380, Nat.add_sub_cancel, A006380.P3585207183378408575.f2, A006380.P3585207183378408575.f1, A006380.P3585207183378408575.a, A006380.P15822107496695707583.f2, A006380.P15822107496695707583.f1, A006380.P15822107496695707583.a, A003082, A003082.P8532452631219291351.a, A054473, A054473.P5529264726719540084.a, A110654, A110654.P360289776162656549.a, A173196, A173196.P2423826778333667374.a, A090491, A090491.P1940977484404229344.f1, A090491.P1940977484404229344.a, A026810, A026810.P8500249767737753929.a, A052282, A052282.P8537123680179149703.f1, A052282.P8537123680179149703.a, A008627, A008627.P17336718027921360282.f2, A008627.P17336718027921360282.f1, A008627.P17336718027921360282.a, A052938, A052938.P15385682642359846143.a, A058212, A058212.P4769622711738520392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006380

/-! ## A006380.P14079727239812861338

`∑[∑[A328652(A028310(n))+A001399(n)]]`
-/

namespace A006380.P14079727239812861338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A028310 n).toNat + A001399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P14079727239812861338

namespace A006380

/-- `∑[∑[A328652(A028310(n))+A001399(n)]]` -/
def P14079727239812861338.Spec : Prop :=
  ∀ n, P14079727239812861338.a n = A006380 n

end A006380

/-! ## A006380.P14434847065637640345

`∑[∑[A328652(A028310(n))+A266755(2*n)]]`
-/

namespace A006380.P14434847065637640345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A028310 n).toNat + A266755 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P14434847065637640345

namespace A006380

/-- `∑[∑[A328652(A028310(n))+A266755(2*n)]]` -/
def P14434847065637640345.Spec : Prop :=
  ∀ n, P14434847065637640345.a n = A006380 n

end A006380

/-!
# A006381: Number of n X 3 binary matrices under row and column permutations and column complementations.

The programs for A006381, there is no canonical definition to state claims against.
-/

/-! ## A006381.P17133797391160495499

`A363349(∑[n+5]+1-n)`
-/

namespace A006381.P17133797391160495499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - n)

end

end A006381.P17133797391160495499

/-! ## A006381.P1990727065140638267

`A057427(3*(n+1))*A363349(∑[n+4]+2)`
-/

namespace A006381.P1990727065140638267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A363349 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006381.P1990727065140638267

/-! ## A006381.P100438880136490368

`A000027(A363349(∑[n+4]+2))`
-/

namespace A006381.P100438880136490368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A363349 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A006381.P100438880136490368

/-!
# A006382: Number of n X 4 binary matrices under row and column permutations and column complementations.

The programs for A006382, there is no canonical definition to state claims against.
-/

/-! ## A006382.P16452898346443806761

`A363349(∑[n+5]+5)`
-/

namespace A006382.P16452898346443806761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A006382.P16452898346443806761

/-! ## A006382.P1709823059651314959

`A363349(A052905(n+2))%A042358(n)`
-/

namespace A006382.P1709823059651314959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363349 (A052905 (n + 2)).toNat) (A042358 n)

end

end A006382.P1709823059651314959

/-! ## A006382.P10998919860145236407

`A363349(A052905(n+2))/A088840(2*n+3)`
-/

namespace A006382.P10998919860145236407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363349 (A052905 (n + 2)).toNat : ℚ) / (A088840 (2 * n + 3) : ℚ)

end

end A006382.P10998919860145236407

/-!
# A006383: Number of equivalence classes of n X n binary matrices when one can permute rows, permute columns and complement columns.

The programs for A006383, there is no canonical definition to state claims against.
-/

/-! ## A006383.P13513860571349767681

`A363349(∑[4*n])`
-/

namespace A006383.P13513860571349767681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006383.P13513860571349767681

/-! ## A006383.P1014828214031155854

`A036225(n)*A363349(A046092(n))`
-/

namespace A006383.P1014828214031155854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A363349 (A046092 n).toNat

end

end A006383.P1014828214031155854

/-! ## A006383.P8350248790944206892

`A291168(n)*A363349(A046092(n))`
-/

namespace A006383.P8350248790944206892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A363349 (A046092 n).toNat

end

end A006383.P8350248790944206892

/-! ## A006383.P12803765514818703776

`A266227(n+1)*A363349(A046092(n))`
-/

namespace A006383.P12803765514818703776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1) * A363349 (A046092 n).toNat

end

end A006383.P12803765514818703776

/-! ## A006383.P13216803446882023972

`or(A086008(n+2), A363349(A046092(n)))`
-/

namespace A006383.P13216803446882023972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086008 (n + 2)) (A363349 (A046092 n).toNat)

end

end A006383.P13216803446882023972

/-!
# A006384: Number of sensed planar maps with n edges.

The programs for A006384, there is no canonical definition to state claims against.
-/

/-! ## A006384.P898260403010141274

`A379438(∑[A110654(n)])`
-/

namespace A006384.P898260403010141274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006384.P898260403010141274

/-! ## A006384.P6856940434784274144

`A379438(A002620(n+1))`
-/

namespace A006384.P6856940434784274144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (A002620 (n + 1)).toNat

end

end A006384.P6856940434784274144

/-! ## A006384.P15993096776422319484

`A379438(∑[∑[A000035(n)]])`
-/

namespace A006384.P15993096776422319484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006384.P15993096776422319484

/-! ## A006384.P5754608857527954991

`2*A006385(n)-A006443(n)`
-/

namespace A006384.P5754608857527954991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006385 n - A006443 n

end

end A006384.P5754608857527954991

/-! ## A006384.P11256656372951197935

`A054937(n)+A006385(n)`
-/

namespace A006384.P11256656372951197935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054937 n + A006385 n

end

end A006384.P11256656372951197935

/-!
# A006385: Number of unsensed planar maps with n edges.

The programs for A006385, there is no canonical definition to state claims against.
-/

/-! ## A006385.P3160760066830148612

`(A006384(n)+A006443(n))/2`
-/

namespace A006385.P3160760066830148612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006384 n + A006443 n : ℚ) / 2

end

end A006385.P3160760066830148612

/-! ## A006385.P14370821187987528679

`A379439(∑[∑[n%2]])`
-/

namespace A006385.P14370821187987528679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006385.P14370821187987528679

/-! ## A006385.P18017270098131866509

`A379439(A002620(n+1))`
-/

namespace A006385.P18017270098131866509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379439 (A002620 (n + 1)).toNat

end

end A006385.P18017270098131866509

/-! ## A006385.P7958692485253187356

`A379439(eq[0, A055087(n)])`
-/

namespace A006385.P7958692485253187356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006385.P7958692485253187356

/-! ## A006385.P13553843859556746570

`A054937(n)+A006443(n)`
-/

namespace A006385.P13553843859556746570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054937 n + A006443 n

end

end A006385.P13553843859556746570

/-!
# A006386: Number of sensed genus 1 maps with n edges.

The programs for A006386, there is no canonical definition to state claims against.
-/

/-! ## A006386.P13132989418878179973

`A379438(eq[1, A055087(n)])`
-/

namespace A006386.P13132989418878179973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006386.P13132989418878179973

/-! ## A006386.P18412862392269888201

`A379438(A002620(n+3)+1)`
-/

namespace A006386.P18412862392269888201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (A002620 (n + 3) + 1).toNat

end

end A006386.P18412862392269888201

/-! ## A006386.P4648571731580257765

`A379438(eq[2, A122197(n+1)])`
-/

namespace A006386.P4648571731580257765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006386.P4648571731580257765

/-!
# A006387: Number of unsensed genus 1 maps with n edges.

The programs for A006387, there is no canonical definition to state claims against.
-/

/-! ## A006387.P7863932672177383658

`A152467(∏[comp[∑[n+2]-2]])`
-/

namespace A006387.P7863932672177383658
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A006387.P7863932672177383658

/-! ## A006387.P10642994434507834809

`A140281(A309294(n))`
-/

namespace A006387.P10642994434507834809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 (A309294 n).toNat

end

end A006387.P10642994434507834809

/-!
# A006388: Number of sensed planar maps with n edges and without faces of degree 1.

The programs for A006388, there is no canonical definition to state claims against.
-/

/-! ## A006388.P7778343231001304495

`A103221(A052560(n)+A001787(n))`
-/

namespace A006388.P7778343231001304495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A052560 n + A001787 n).toNat

end

end A006388.P7778343231001304495

/-! ## A006388.P4484262899013115988

`A283472(A000272(n))+A000108(n)`
-/

namespace A006388.P4484262899013115988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (A000272 n).toNat + A000108 n

end

end A006388.P4484262899013115988

/-! ## A006388.P3924110934937942423

`A194163(A383807(n)+A000142(n))`
-/

namespace A006388.P3924110934937942423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194163 (A383807 n + A000142 n).toNat

end

end A006388.P3924110934937942423

/-!
# A006389: Number of unsensed planar maps with n edges and without faces of degree 1.

The programs for A006389, there is no canonical definition to state claims against.
-/

/-! ## A006389.P14208728657939006584

`A070106(A251180(n))+A000110(n)`
-/

namespace A006389.P14208728657939006584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A251180 n).toNat + A000110 n

end

end A006389.P14208728657939006584

/-! ## A006389.P10135978519590524358

`A384318(A001523(n))+A000108(n)`
-/

namespace A006389.P10135978519590524358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384318 (A001523 n).toNat + A000108 n

end

end A006389.P10135978519590524358

/-! ## A006389.P13587510156260892761

`A220658(A279555(n)+A004211(n))`
-/

namespace A006389.P13587510156260892761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A279555 n + A004211 n).toNat

end

end A006389.P13587510156260892761

/-!
# A006390: Number of sensed loopless planar maps with n edges.

The programs for A006390, there is no canonical definition to state claims against.
-/

/-! ## A006390.P7923600289328388576

`∑[A096781(ceil(2^(n-1)))]-n`
-/

namespace A006390.P7923600289328388576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096781 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A006390.P7923600289328388576

/-! ## A006390.P4051852441023474776

`A195778(A032021(n²))`
-/

namespace A006390.P4051852441023474776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195778 (A032021 (n ^ 2)).toNat

end

end A006390.P4051852441023474776

/-! ## A006390.P15054277071175899307

`A350799(∑[A020010(n)])`
-/

namespace A006390.P15054277071175899307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006390.P15054277071175899307

/-!
# A006391: Number of unsensed loopless planar maps with n edges.

The programs for A006391, there is no canonical definition to state claims against.
-/

/-! ## A006391.P12369299644496933258

`A378117(A054365(n+1))`
-/

namespace A006391.P12369299644496933258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378117 (A054365 (n + 1)).toNat

end

end A006391.P12369299644496933258

/-! ## A006391.P11334447730955224118

`A046155(A122082(n)+A028657(n))`
-/

namespace A006391.P11334447730955224118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A122082 n + A028657 n).toNat

end

end A006391.P11334447730955224118

/-! ## A006391.P3110800043266267006

`A046155(A122082(n)+A046155(n))`
-/

namespace A006391.P3110800043266267006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A122082 n + A046155 n).toNat

end

end A006391.P3110800043266267006

/-!
# A006392: Number of sensed planar maps with n edges and without faces of degree 1 or 2.

The programs for A006392, there is no canonical definition to state claims against.
-/

/-! ## A006392.P4652471239993306853

`A232076(n+1)%A026480(A006602(n))`
-/

namespace A006392.P4652471239993306853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232076 (n + 1)) (A026480 (A006602 n).toNat)

end

end A006392.P4652471239993306853

/-!
# A006393: Number of unsensed planar maps with n edges and without faces of degree 1 or 2.

The programs for A006393, there is no canonical definition to state claims against.
-/

/-! ## A006393.P7126872538454401403

`A333223(A210478(n)+char[xor(n, 2*n)])`
-/

namespace A006393.P7126872538454401403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A210478 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A006393.P7126872538454401403

/-! ## A006393.P10449350837623308085

`A333223(A357939(n)+A209626(n))`
-/

namespace A006393.P10449350837623308085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A357939 n + A209626 n).toNat

end

end A006393.P10449350837623308085

/-! ## A006393.P4992038846394964192

`A358096(A073989(n+1))-A025581(n)`
-/

namespace A006393.P4992038846394964192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358096 (A073989 (n + 1)).toNat - A025581 n

end

end A006393.P4992038846394964192

/-!
# A006394: Number of sensed planar maps with n edges and without loops or parallel edges.

The programs for A006394, there is no canonical definition to state claims against.
-/

/-! ## A006394.P17681927493313392747

`A205556(A318895(n))-1`
-/

namespace A006394.P17681927493313392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (A318895 n).toNat - 1

end

end A006394.P17681927493313392747

/-! ## A006394.P3301826100967977663

`A007306(A107948(n))-A184199(n)`
-/

namespace A006394.P3301826100967977663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A107948 n).toNat - A184199 n

end

end A006394.P3301826100967977663

/-! ## A006394.P11427196972916696443

`A152467(n+1)+A120562(A321735(n))`
-/

namespace A006394.P11427196972916696443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (n + 1) + A120562 (A321735 n).toNat

end

end A006394.P11427196972916696443

/-! ## A006394.P2111944153538906892

`A083382(A203643(n+1)+A189666(n+1))`
-/

namespace A006394.P2111944153538906892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A203643 (n + 1) + A189666 (n + 1)).toNat

end

end A006394.P2111944153538906892

/-!
# A006395: Number of unsensed planar maps with n edges and without loops or parallel edges.

The programs for A006395, there is no canonical definition to state claims against.
-/

/-! ## A006395.P8948951781592506594

`A242527(n+2)+A003963(A262133(n))`
-/

namespace A006395.P8948951781592506594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242527 (n + 2) + A003963 (A262133 n).toNat

end

end A006395.P8948951781592506594

/-! ## A006395.P3695616627595288199

`A002635(A061278(n)-A046660(n+5))`
-/

namespace A006395.P3695616627595288199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A061278 n - A046660 (n + 5)).toNat

end

end A006395.P3695616627595288199

/-!
# A006397: Number of unsensed planar maps with n edges and without faces or vertices of degree 1.

The programs for A006397, there is no canonical definition to state claims against.
-/

/-! ## A006397.P14123367723853507830

`A033182(A004114(n+3)+3)`
-/

namespace A006397.P14123367723853507830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A004114 (n + 3) + 3).toNat

end

end A006397.P14123367723853507830

/-! ## A006397.P10958225672240695284

`A007814(A042191(n))+A006343(n)`
-/

namespace A006397.P10958225672240695284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A042191 n).toNat + A006343 n

end

end A006397.P10958225672240695284

/-! ## A006397.P4646395576516628038

`A127782(n)-A324692(A223702(n+1))`
-/

namespace A006397.P4646395576516628038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127782 n - A324692 (A223702 (n + 1)).toNat

end

end A006397.P4646395576516628038

/-! ## A006397.P8604750489916847024

`A002877(n+1)-A046800(A008365(n+1))`
-/

namespace A006397.P8604750489916847024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002877 (n + 1) - A046800 (A008365 (n + 1)).toNat

end

end A006397.P8604750489916847024

