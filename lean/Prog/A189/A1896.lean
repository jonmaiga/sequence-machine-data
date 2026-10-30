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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A189600: Number of permutations of 1..n with displacements restricted to {-7,-6,-5,-4,-3,-2,0,1}.

The programs for A189600, the canonical program `A189600.P5523603604027758349` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189600 has offset 1).

The definition of A189600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189600.P15577746594026956787

`ogf((1+x^2+x^3+x^4+x^5+x^6+x^7)/(1-x-x^3-x^4-x^5-x^6-x^7-x^8))`
-/

namespace A189600.P15577746594026956787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, 1, 1, 1, 1] [1, -1, 0, -1, -1, -1, -1, -1, -1] n

end

end A189600.P15577746594026956787

namespace A189600

/-- `ogf((1+x^2+x^3+x^4+x^5+x^6+x^7)/(1-x-x^3-x^4-x^5-x^6-x^7-x^8))` -/
def P15577746594026956787.Spec : Prop :=
  ∀ n, P15577746594026956787.a n = A189600 (n + 1)

end A189600

/-! ## A189600.P5523603604027758349

`A079960(n+1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189600

/-- `A079960(n+1)-a(n-2)` -/
def P5523603604027758349.Spec : Prop :=
  ∀ n, P5523603604027758349.a n = A189600 (n + 1)

theorem P5523603604027758349.correct : P5523603604027758349.Spec := by
  intro n
  simp only [A189600, Nat.add_sub_cancel]

end A189600

/-! ## A189600.P1634572954124154715

`∑[round(sqrt(A331686(n+1)))]-n`
-/

namespace A189600.P1634572954124154715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A331686 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A189600.P1634572954124154715

namespace A189600

/-- `∑[round(sqrt(A331686(n+1)))]-n` -/
def P1634572954124154715.Spec : Prop :=
  ∀ n, P1634572954124154715.a n = A189600 (n + 1)

end A189600

/-! ## A189600.P14716145451097148928

`A194698(A301789(n+1))`
-/

namespace A189600.P14716145451097148928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A301789 (n + 1)).toNat

end

end A189600.P14716145451097148928

namespace A189600

/-- `A194698(A301789(n+1))` -/
def P14716145451097148928.Spec : Prop :=
  ∀ n, P14716145451097148928.a n = A189600 (n + 1)

end A189600

/-! ## A189600.P2126754425867421101

`A001462(A238219(2*n)+A025048(2*n))`
-/

namespace A189600.P2126754425867421101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A238219 (2 * n) + A025048 (2 * n)).toNat

end

end A189600.P2126754425867421101

namespace A189600

/-- `A001462(A238219(2*n)+A025048(2*n))` -/
def P2126754425867421101.Spec : Prop :=
  ∀ n, P2126754425867421101.a n = A189600 (n + 1)

end A189600

/-!
# A189601: Number of permutations of 1..n with displacements restricted to {-7,-6,-5,-4,-3,-1,0,2}.

The programs for A189601, there is no canonical definition to state claims against.
-/

/-! ## A189601.P2234004155851488063

`A052980(n)-A374748(A202844(n))`
-/

namespace A189601.P2234004155851488063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n - A374748 (A202844 n).toNat

end

end A189601.P2234004155851488063

/-! ## A189601.P14581508333763962481

`A321126(A369229(n)-A033768(n))`
-/

namespace A189601.P14581508333763962481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (A369229 n - A033768 n).toNat

end

end A189601.P14581508333763962481

/-! ## A189601.P11272138837862733460

`A031346(A008988(n))+A003019(n+1)`
-/

namespace A189601.P11272138837862733460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A008988 n).toNat + A003019 (n + 1)

end

end A189601.P11272138837862733460

/-! ## A189601.P386606259939629020

`A003056(A074434(n+1)+A014138(n))`
-/

namespace A189601.P386606259939629020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A074434 (n + 1) + A014138 n).toNat

end

end A189601.P386606259939629020

/-!
# A189602: Number of permutations of 1..n with displacements restricted to {-7,-6,-5,-4,-3,0,1,2}.

The programs for A189602, there is no canonical definition to state claims against.
-/

/-! ## A189602.P2484707166227819664

`A054846(C(2*n, n))-n`
-/

namespace A189602.P2484707166227819664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Nat.choose (2 * n) n) - (n : ℤ)

end

end A189602.P2484707166227819664

/-! ## A189602.P9356093634212929165

`A054846(A000984(n))-n`
-/

namespace A189602.P9356093634212929165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000984 n).toNat - (n : ℤ)

end

end A189602.P9356093634212929165

/-! ## A189602.P2089588359362801868

`A054846(record[A081668(n)])-n`
-/

namespace A189602.P2089588359362801868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n : ℤ)

end

end A189602.P2089588359362801868

/-! ## A189602.P6297128110765109571

`A106733(A128734(n+1)+1)`
-/

namespace A189602.P6297128110765109571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (A128734 (n + 1) + 1).toNat

end

end A189602.P6297128110765109571

/-!
# A189603: Number of n X n array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189603, there is no canonical definition to state claims against.
-/

/-! ## A189603.P12477336124432891593

`A189610(∑[4*n]+1)`
-/

namespace A189603.P12477336124432891593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189603.P12477336124432891593

/-! ## A189603.P14593491174286954813

`record[A189610(gcd(n, A265129(n+1)))]`
-/

namespace A189603.P14593491174286954813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (Int.gcd (n : ℤ) (A265129 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189603.P14593491174286954813

/-! ## A189603.P17813195187834522386

`record[gcd(A189610(n+1), A274650(n))]`
-/

namespace A189603.P17813195187834522386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189610 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189603.P17813195187834522386

/-! ## A189603.P7677139704681562375

`gcd(A189610(A001844(n)), A269250(n))`
-/

namespace A189603.P7677139704681562375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189610 (A001844 n).toNat) (A269250 n)

end

end A189603.P7677139704681562375

/-! ## A189603.P7905354650106960070

`or(A028597(n), A189610(A001844(n)))`
-/

namespace A189603.P7905354650106960070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028597 n) (A189610 (A001844 n).toNat)

end

end A189603.P7905354650106960070

/-!
# A189604: Number of n X 3 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189604, the canonical program `A189604.P17677737635600031219` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189604 has offset 1).

The definition of A189604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189604.P17677737635600031219

`ogf((1+3x)/(1-3x-2x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189604

/-- `ogf((1+3x)/(1-3x-2x^2))` -/
def P17677737635600031219.Spec : Prop :=
  ∀ n, P17677737635600031219.a n = A189604 (n + 1)

theorem P17677737635600031219.correct : P17677737635600031219.Spec := by
  intro n
  simp only [A189604, Nat.add_sub_cancel]

end A189604

/-! ## A189604.P17035671448703042391

`2*a(n-2)+3*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A189604.P17035671448703042391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 2) + 3 * a (n - 1)

end

end A189604.P17035671448703042391

namespace A189604

/-- `2*a(n-2)+3*a(n-1)` -/
def P17035671448703042391.Spec : Prop :=
  ∀ n, (P17035671448703042391.a n : ℤ) = A189604 (n + 1)

end A189604

/-! ## A189604.P18273215751899089851

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A189604.P18273215751899089851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A189604.P18273215751899089851

namespace A189604

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P18273215751899089851.Spec : Prop :=
  ∀ n, P18273215751899089851.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P7895498803793086764

`Δ[A104934(n)]`
-/

namespace A189604.P7895498803793086764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189604.P7895498803793086764

namespace A189604

/-- `Δ[A104934(n)]` -/
def P7895498803793086764.Spec : Prop :=
  ∀ n, P7895498803793086764.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P1249068005614819767

`A189736(n+2)/2`
-/

namespace A189604.P1249068005614819767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189736 (n + 2) : ℚ) / 2

end

end A189604.P1249068005614819767

namespace A189604

/-- `A189736(n+2)/2` -/
def P1249068005614819767.Spec : Prop :=
  ∀ n, P1249068005614819767.a n = (A189604 (n + 1) : ℚ)

end A189604

/-! ## A189604.P18193870210720618420

`Δ[A322940(n+1)/2]`
-/

namespace A189604.P18193870210720618420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322940 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189604.P18193870210720618420

namespace A189604

/-- `Δ[A322940(n+1)/2]` -/
def P18193870210720618420.Spec : Prop :=
  ∀ n, P18193870210720618420.a n = (A189604 (n + 1) : ℚ)

end A189604

/-! ## A189604.P2601506031025792933

`2*(A322940(n)+a(n-1))` with `a(0)=1`
-/

namespace A189604.P2601506031025792933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A322940 n + a (n - 1))

end

end A189604.P2601506031025792933

namespace A189604

/-- `2*(A322940(n)+a(n-1))` -/
def P2601506031025792933.Spec : Prop :=
  ∀ n, P2601506031025792933.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P76747510051001656

`∑{#}[n+1, C(n+1, #)*A176738(#)]`
-/

namespace A189604.P76747510051001656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A176738 k

end

end A189604.P76747510051001656

namespace A189604

/-- `∑{#}[n+1, C(n+1, #)*A176738(#)]` -/
def P76747510051001656.Spec : Prop :=
  ∀ n, P76747510051001656.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P5742307902357378179

`A246313(n)+A206776(n)`
-/

namespace A189604.P5742307902357378179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246313 n + A206776 n

end

end A189604.P5742307902357378179

namespace A189604

/-- `A246313(n)+A206776(n)` -/
def P5742307902357378179.Spec : Prop :=
  ∀ n, P5742307902357378179.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P7396622544270844978

`A106434(n+1)+A055099(n)`
-/

namespace A189604.P7396622544270844978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A055099 n

end

end A189604.P7396622544270844978

namespace A189604

/-- `A106434(n+1)+A055099(n)` -/
def P7396622544270844978.Spec : Prop :=
  ∀ n, P7396622544270844978.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P3959151080216441361

`A104934(n+1)-A104934(n)`
-/

namespace A189604.P3959151080216441361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 1) - A104934 n

end

end A189604.P3959151080216441361

namespace A189604

/-- `A104934(n+1)-A104934(n)` -/
def P3959151080216441361.Spec : Prop :=
  ∀ n, P3959151080216441361.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P10460112056417749772

`A206776(n+1)-A007484(n)`
-/

namespace A189604.P10460112056417749772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) - A007484 n

end

end A189604.P10460112056417749772

namespace A189604

/-- `A206776(n+1)-A007484(n)` -/
def P10460112056417749772.Spec : Prop :=
  ∀ n, P10460112056417749772.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P12678930270544929245

`2*A007483(n)-A055099(n)`
-/

namespace A189604.P12678930270544929245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007483 n - A055099 n

end

end A189604.P12678930270544929245

namespace A189604

/-- `2*A007483(n)-A055099(n)` -/
def P12678930270544929245.Spec : Prop :=
  ∀ n, P12678930270544929245.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P7739027067096858720

`2*A055099(n)-A104934(n)`
-/

namespace A189604.P7739027067096858720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 n - A104934 n

end

end A189604.P7739027067096858720

namespace A189604

/-- `2*A055099(n)-A104934(n)` -/
def P7739027067096858720.Spec : Prop :=
  ∀ n, P7739027067096858720.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P11241349694534845582

`Δ[A230269(n+1)+A193653(n)]`
-/

namespace A189604.P11241349694534845582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 1) + A193653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189604.P11241349694534845582

namespace A189604

/-- `Δ[A230269(n+1)+A193653(n)]` -/
def P11241349694534845582.Spec : Prop :=
  ∀ n, P11241349694534845582.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P17062004985459147938

`A104934(n)+2*A106434(n+1)`
-/

namespace A189604.P17062004985459147938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n + 2 * A106434 (n + 1)

end

end A189604.P17062004985459147938

namespace A189604

/-- `A104934(n)+2*A106434(n+1)` -/
def P17062004985459147938.Spec : Prop :=
  ∀ n, P17062004985459147938.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P788246076722619550

`A007483(n)+A106434(n+1)/2`
-/

namespace A189604.P788246076722619550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 n : ℚ) + (A106434 (n + 1) : ℚ) / 2

end

end A189604.P788246076722619550

namespace A189604

/-- `A007483(n)+A106434(n+1)/2` -/
def P788246076722619550.Spec : Prop :=
  ∀ n, P788246076722619550.a n = (A189604 (n + 1) : ℚ)

end A189604

/-! ## A189604.P7056642888797160815

`A206776(n+1)-A007481(2*n+1)`
-/

namespace A189604.P7056642888797160815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) - A007481 (2 * n + 1)

end

end A189604.P7056642888797160815

namespace A189604

/-- `A206776(n+1)-A007481(2*n+1)` -/
def P7056642888797160815.Spec : Prop :=
  ∀ n, P7056642888797160815.a n = A189604 (n + 1)

end A189604

/-! ## A189604.P10910963734427635301

`A206776(n+1)-A055099(n+1)/2`
-/

namespace A189604.P10910963734427635301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206776 (n + 1) : ℚ) - (A055099 (n + 1) : ℚ) / 2

end

end A189604.P10910963734427635301

namespace A189604

/-- `A206776(n+1)-A055099(n+1)/2` -/
def P10910963734427635301.Spec : Prop :=
  ∀ n, P10910963734427635301.a n = (A189604 (n + 1) : ℚ)

end A189604

/-! ## A189604.P2821464879211445073

`A007484(n)-A007455(A004273(n))`
-/

namespace A189604.P2821464879211445073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n - A007455 (A004273 n).toNat

end

end A189604.P2821464879211445073

namespace A189604

/-- `A007484(n)-A007455(A004273(n))` -/
def P2821464879211445073.Spec : Prop :=
  ∀ n, P2821464879211445073.a n = A189604 (n + 1)

end A189604

/-!
# A189605: Number of nX4 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189605, there is no canonical definition to state claims against.
-/

/-! ## A189605.P12405860217321103428

`sqrt(A264367(2*n+1))`
-/

namespace A189605.P12405860217321103428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264367 (2 * n + 1) : ℝ)

end

end A189605.P12405860217321103428

/-! ## A189605.P15005121024460503519

`A264367(n+1+n)^(1/2)`
-/

namespace A189605.P15005121024460503519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264367 (n + 1 + n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A189605.P15005121024460503519

/-! ## A189605.P11336924600533743522

`A189610(A374004(n+1))`
-/

namespace A189605.P11336924600533743522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A374004 (n + 1)).toNat

end

end A189605.P11336924600533743522

/-! ## A189605.P9601663182728325642

`A189610(A141214(n)+7)`
-/

namespace A189605.P9601663182728325642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A141214 n + 7).toNat

end

end A189605.P9601663182728325642

/-! ## A189605.P14431400251868530671

`A189610(A052905(n)+9)`
-/

namespace A189605.P14431400251868530671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A052905 n + 9).toNat

end

end A189605.P14431400251868530671

/-!
# A189606: Number of nX5 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189606, there is no canonical definition to state claims against.
-/

/-! ## A189606.P9879242606002947444

`sqrt(A264368(2*n+1))`
-/

namespace A189606.P9879242606002947444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264368 (2 * n + 1) : ℝ)

end

end A189606.P9879242606002947444

/-! ## A189606.P8733496633381311750

`A189610(A374005(n+1))`
-/

namespace A189606.P8733496633381311750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A374005 (n + 1)).toNat

end

end A189606.P8733496633381311750

/-! ## A189606.P12815272518004957161

`A189610(A155212(n)+13)`
-/

namespace A189606.P12815272518004957161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A155212 n + 13).toNat

end

end A189606.P12815272518004957161

/-! ## A189606.P3876551799814251785

`A189610(A133263(n+4)+3)`
-/

namespace A189606.P3876551799814251785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A133263 (n + 4) + 3).toNat

end

end A189606.P3876551799814251785

/-! ## A189606.P7272476400373991757

`A189610(A052905(n+1)+10)`
-/

namespace A189606.P7272476400373991757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A052905 (n + 1) + 10).toNat

end

end A189606.P7272476400373991757

/-!
# A189607: Number of nX6 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189607, there is no canonical definition to state claims against.
-/

/-! ## A189607.P7982803112984278080

`sqrt(A264369(2*n+1))`
-/

namespace A189607.P7982803112984278080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264369 (2 * n + 1) : ℝ)

end

end A189607.P7982803112984278080

/-! ## A189607.P10213013073095708890

`A189610(A374007(n+1))`
-/

namespace A189607.P10213013073095708890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A374007 (n + 1)).toNat

end

end A189607.P10213013073095708890

/-! ## A189607.P8155161861404526710

`A189610(eq[7, A131818(n+1)])`
-/

namespace A189607.P8155161861404526710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189607.P8155161861404526710

/-! ## A189607.P13672664689750548371

`A189610(eq[3, A219347(n)])`
-/

namespace A189607.P13672664689750548371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189607.P13672664689750548371

/-! ## A189607.P17215954563782989267

`A189610(eq[5, A193592(n)])`
-/

namespace A189607.P17215954563782989267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189607.P17215954563782989267

/-!
# A189608: Number of nX7 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189608, there is no canonical definition to state claims against.
-/

/-! ## A189608.P1764335824676012335

`A189610(A374008(n+1))`
-/

namespace A189608.P1764335824676012335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A374008 (n + 1)).toNat

end

end A189608.P1764335824676012335

/-! ## A189608.P15924412573633183122

`A189610(eq[11, A066657(n)])`
-/

namespace A189608.P15924412573633183122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189608.P15924412573633183122

/-! ## A189608.P5813214321967376362

`A189610(eq[8, A131818(n+1)])`
-/

namespace A189608.P5813214321967376362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189608.P5813214321967376362

/-! ## A189608.P10674253125823194656

`A189610(A055999(n+4))`
-/

namespace A189608.P10674253125823194656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A055999 (n + 4)).toNat

end

end A189608.P10674253125823194656

/-! ## A189608.P4729516005951543972

`A189610(eq[4, A219347(n)])`
-/

namespace A189608.P4729516005951543972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189608.P4729516005951543972

/-!
# A189609: Number of n X 8 array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189609, there is no canonical definition to state claims against.
-/

/-! ## A189609.P16580211844701920532

`A189610(A374009(n+1))`
-/

namespace A189609.P16580211844701920532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A374009 (n + 1)).toNat

end

end A189609.P16580211844701920532

/-! ## A189609.P8514461343592637116

`A189610(eq[13, A066657(n)])`
-/

namespace A189609.P8514461343592637116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189609.P8514461343592637116

/-! ## A189609.P18427224927865682008

`A189610(eq[9, A131818(n+1)])`
-/

namespace A189609.P18427224927865682008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189609.P18427224927865682008

/-! ## A189609.P16843042862359810071

`A189610(eq[5, A219347(n)])`
-/

namespace A189609.P16843042862359810071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189609.P16843042862359810071

/-! ## A189609.P15689344103295711295

`A189610(eq[7, A193592(n)])`
-/

namespace A189609.P15689344103295711295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189609.P15689344103295711295

/-!
# A189610: T(n,k)=Number of nXk array permutations with each element not moving, or moving one space E, S or NW.

The programs for A189610, there is no canonical definition to state claims against.
-/

/-! ## A189610.P7768105157062373496

`A357849(A146766(n))+A146769(n)`
-/

namespace A189610.P7768105157062373496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A146766 n).toNat + A146769 n

end

end A189610.P7768105157062373496

/-!
# A189611: Number of n X n binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189611, there is no canonical definition to state claims against.
-/

/-! ## A189611.P1540627394030477990

`A189617(∑[4*n]+1)`
-/

namespace A189611.P1540627394030477990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189611.P1540627394030477990

/-! ## A189611.P1504824763218268254

`record[gcd(A114327(n), A189617(n+1))]`
-/

namespace A189611.P1504824763218268254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A189617 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189611.P1504824763218268254

/-! ## A189611.P9291993783789439062

`A189617(A001844(n))+A174616(n)`
-/

namespace A189611.P9291993783789439062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A001844 n).toNat + A174616 n

end

end A189611.P9291993783789439062

/-! ## A189611.P5203497741983092737

`A206499(n+1)+A189617(A001844(n))`
-/

namespace A189611.P5203497741983092737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (n + 1) + A189617 (A001844 n).toNat

end

end A189611.P5203497741983092737

/-! ## A189611.P351581681513620444

`A353482(n+1)+A189617(A001844(n))`
-/

namespace A189611.P351581681513620444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) + A189617 (A001844 n).toNat

end

end A189611.P351581681513620444

/-!
# A189612: Number of n X 4 binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189612, there is no canonical definition to state claims against.
-/

/-! ## A189612.P7436840288176309915

`A189617(A141214(n+1))`
-/

namespace A189612.P7436840288176309915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A141214 (n + 1)).toNat

end

end A189612.P7436840288176309915

/-! ## A189612.P8020692148747894962

`A189617(A155212(n)+5)`
-/

namespace A189612.P8020692148747894962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A155212 n + 5).toNat

end

end A189612.P8020692148747894962

/-! ## A189612.P5781998695590310125

`A189617(A056000(n)+7)`
-/

namespace A189612.P5781998695590310125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A056000 n + 7).toNat

end

end A189612.P5781998695590310125

/-! ## A189612.P16823850813349444082

`A189617(eq[3, A193592(n)])`
-/

namespace A189612.P16823850813349444082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189612.P16823850813349444082

/-! ## A189612.P1187165926396338472

`A189617(Δ[A006416(n+2)])`
-/

namespace A189612.P1187165926396338472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (f1 (n + 1) - f1 n).toNat

end

end A189612.P1187165926396338472

/-!
# A189613: Number of nX5 binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189613, there is no canonical definition to state claims against.
-/

/-! ## A189613.P4762663133079105887

`A189617(Δ[A264443(n)])`
-/

namespace A189613.P4762663133079105887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (f1 (n + 1) - f1 n).toNat

end

end A189613.P4762663133079105887

/-! ## A189613.P9496809193272989485

`A189617(A046691(n+3))`
-/

namespace A189613.P9496809193272989485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A046691 (n + 3)).toNat

end

end A189613.P9496809193272989485

/-! ## A189613.P17770344049252770048

`A189617(A056115(n)+11)`
-/

namespace A189613.P17770344049252770048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A056115 n + 11).toNat

end

end A189613.P17770344049252770048

/-! ## A189613.P12270526037670147043

`A189617(eq[2, A092921(n)])`
-/

namespace A189613.P12270526037670147043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189613.P12270526037670147043

/-! ## A189613.P16501327510977873116

`A189617(eq[4, A193592(n)])`
-/

namespace A189613.P16501327510977873116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189613.P16501327510977873116

/-!
# A189614: Number of nX6 binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189614, there is no canonical definition to state claims against.
-/

/-! ## A189614.P4239827528099796417

`A189617(A052905(n+3))`
-/

namespace A189614.P4239827528099796417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A052905 (n + 3)).toNat

end

end A189614.P4239827528099796417

/-! ## A189614.P4190585867536783567

`A189617(eq[3, A219347(n)])`
-/

namespace A189614.P4190585867536783567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189614.P4190585867536783567

/-! ## A189614.P6871101350323636391

`A189617(eq[5, A193592(n)])`
-/

namespace A189614.P6871101350323636391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189614.P6871101350323636391

/-! ## A189614.P138321035492371699

`A189617(eq[6, A200370(n+1)])`
-/

namespace A189614.P138321035492371699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189614.P138321035492371699

/-! ## A189614.P4339655314487909048

`A189617(eq[8, A185782(n+1)])`
-/

namespace A189614.P4339655314487909048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189614.P4339655314487909048

/-!
# A189615: Number of nX7 binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189615, there is no canonical definition to state claims against.
-/

/-! ## A189615.P8522961661619912136

`A189617(A055999(n+4))`
-/

namespace A189615.P8522961661619912136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A055999 (n + 4)).toNat

end

end A189615.P8522961661619912136

/-! ## A189615.P7557910242341963198

`A189617(eq[4, A219347(n)])`
-/

namespace A189615.P7557910242341963198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189615.P7557910242341963198

/-! ## A189615.P5305430913917598549

`A189617(eq[6, A193592(n)])`
-/

namespace A189615.P5305430913917598549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189615.P5305430913917598549

/-! ## A189615.P17496305785613694221

`A189617(A056115(n+2)+9)`
-/

namespace A189615.P17496305785613694221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A056115 (n + 2) + 9).toNat

end

end A189615.P17496305785613694221

/-! ## A189615.P9427300564906376766

`A189617(eq[7, A200370(n+1)])`
-/

namespace A189615.P9427300564906376766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189615.P9427300564906376766

/-!
# A189616: Number of nX8 binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189616, there is no canonical definition to state claims against.
-/

/-! ## A189616.P444937129473125480

`A189617(eq[5, A219347(n)])`
-/

namespace A189616.P444937129473125480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189616.P444937129473125480

/-! ## A189616.P3078377549723704288

`A189617(eq[7, A193592(n)])`
-/

namespace A189616.P3078377549723704288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189616.P3078377549723704288

/-! ## A189616.P14917098524374816961

`A189617(eq[12, A185782(n+1)])`
-/

namespace A189616.P14917098524374816961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189616.P14917098524374816961

/-! ## A189616.P1580105459792005230

`A189617(eq[6, log2(A057728(n+1))])`
-/

namespace A189616.P1580105459792005230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A189616.P1580105459792005230

/-! ## A189616.P17030718853703303194

`A189617(A000217(n+7)+n+1)`
-/

namespace A189616.P17030718853703303194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A189616.P17030718853703303194

/-!
# A189617: T(n,k)=Number of nXk binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189617, there is no canonical definition to state claims against.
-/

/-! ## A189617.P15779914819802572623

`A189064(n+1)-A005927(A292604(n))%A189064(n+1)`
-/

namespace A189617.P15779914819802572623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (n + 1) - Int.tmod (A005927 (A292604 n).toNat) (A189064 (n + 1))

end

end A189617.P15779914819802572623

/-! ## A189617.P14788009818290652251

`A189064(n+1)-A364755(A174616(n))`
-/

namespace A189617.P14788009818290652251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (n + 1) - A364755 (A174616 n).toNat

end

end A189617.P14788009818290652251

/-!
# A189618: Number of 3Xn binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189618, there is no canonical definition to state claims against.
-/

/-! ## A189618.P16221558329290178204

`A189617(∑[n+2]+4)`
-/

namespace A189618.P16221558329290178204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189618.P16221558329290178204

/-! ## A189618.P18308433072289273242

`lcm(2, A189617(A167499(n)+n))`
-/

namespace A189618.P18308433072289273242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189617 (A167499 n + (n : ℤ)).toNat)

end

end A189618.P18308433072289273242

/-! ## A189618.P11412825359963754107

`A189617(A167614(n+1))+A025469(n)`
-/

namespace A189618.P11412825359963754107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167614 (n + 1)).toNat + A025469 n

end

end A189618.P11412825359963754107

/-! ## A189618.P5228220118763940672

`A189617(A167614(n+1))%A221562(n+1)`
-/

namespace A189618.P5228220118763940672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189617 (A167614 (n + 1)).toNat) (A221562 (n + 1))

end

end A189618.P5228220118763940672

/-! ## A189618.P13263232657050431379

`A189617(A000124(n+2)+2)%A189612(n+1)`
-/

namespace A189618.P13263232657050431379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189617 (A000124 (n + 2) + 2).toNat) (A189612 (n + 1))

end

end A189618.P13263232657050431379

/-!
# A189619: Number of 4 X n binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189619, there is no canonical definition to state claims against.
-/

/-! ## A189619.P14238210353088297185

`A189617(A141214(n)+7)`
-/

namespace A189619.P14238210353088297185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A141214 n + 7).toNat

end

end A189619.P14238210353088297185

/-! ## A189619.P16210301331095912325

`A189617(A055999(n)+10)`
-/

namespace A189619.P16210301331095912325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A055999 n + 10).toNat

end

end A189619.P16210301331095912325

/-! ## A189619.P13256761737065494970

`record[A189617(A167499(n)-1)]`
-/

namespace A189619.P13256761737065494970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189619.P13256761737065494970

/-! ## A189619.P14107411427316182203

`A189617(A167614(n+2)+1)`
-/

namespace A189619.P14107411427316182203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167614 (n + 2) + 1).toNat

end

end A189619.P14107411427316182203

/-! ## A189619.P10046500308105832672

`A189617(A167499(n+2)-1)`
-/

namespace A189619.P10046500308105832672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167499 (n + 2) - 1).toNat

end

end A189619.P10046500308105832672

/-!
# A189620: Number of 5 X n binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189620, there is no canonical definition to state claims against.
-/

/-! ## A189620.P7744317357124796482

`A189617(A167499(n+3))`
-/

namespace A189620.P7744317357124796482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167499 (n + 3)).toNat

end

end A189620.P7744317357124796482

/-! ## A189620.P12657248391716674529

`A189617(A155212(n)+13)`
-/

namespace A189620.P12657248391716674529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A155212 n + 13).toNat

end

end A189620.P12657248391716674529

/-! ## A189620.P5700384198248624963

`A189617(A056000(n)+15)`
-/

namespace A189620.P5700384198248624963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A056000 n + 15).toNat

end

end A189620.P5700384198248624963

/-! ## A189620.P8990704091241594343

`A189617(eq[7, A066657(n)])`
-/

namespace A189620.P8990704091241594343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189620.P8990704091241594343

/-! ## A189620.P4013076390789869576

`A189617(A046691(n+2)+9)`
-/

namespace A189620.P4013076390789869576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A046691 (n + 2) + 9).toNat

end

end A189620.P4013076390789869576

/-!
# A189621: Number of 6 X n binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189621, there is no canonical definition to state claims against.
-/

/-! ## A189621.P10316782340470748729

`A189617(A056115(n)+21)`
-/

namespace A189621.P10316782340470748729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A056115 n + 21).toNat

end

end A189621.P10316782340470748729

/-! ## A189621.P7867497432233747061

`A189617(A167499(n+4)+1)`
-/

namespace A189621.P7867497432233747061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167499 (n + 4) + 1).toNat

end

end A189621.P7867497432233747061

/-! ## A189621.P3831544884350528392

`A189617(A000124(n+5)+5)`
-/

namespace A189621.P3831544884350528392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A000124 (n + 5) + 5).toNat

end

end A189621.P3831544884350528392

/-! ## A189621.P10089326835338069601

`A189617(eq[7, A131818(n+1)])`
-/

namespace A189621.P10089326835338069601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189621.P10089326835338069601

/-! ## A189621.P2902978449240891074

`A189617(Δ[A023545(n+1)]+10)`
-/

namespace A189621.P2902978449240891074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (f1 (n + 1) - f1 n + 10).toNat

end

end A189621.P2902978449240891074

/-!
# A189622: Number of 7Xn binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189622, there is no canonical definition to state claims against.
-/

/-! ## A189622.P14309587562837366261

`A189617(A000124(n+6)+6)`
-/

namespace A189622.P14309587562837366261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A000124 (n + 6) + 6).toNat

end

end A189622.P14309587562837366261

/-! ## A189622.P3391079279566863121

`A189617(A000217(n+6)+7)`
-/

namespace A189622.P3391079279566863121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A000217 (n + 6) + 7).toNat

end

end A189622.P3391079279566863121

/-! ## A189622.P928530563853641033

`A189617(eq[8, A131818(n+1)])`
-/

namespace A189622.P928530563853641033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189622.P928530563853641033

/-! ## A189622.P11344423745088768058

`A189617(eq[3, A219347(n)]+12)`
-/

namespace A189622.P11344423745088768058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A189622.P11344423745088768058

/-! ## A189622.P13560488090390244997

`A189617(A167499(n+4)+n+8)`
-/

namespace A189622.P13560488090390244997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A167499 (n + 4) + (n + 8 : ℤ)).toNat

end

end A189622.P13560488090390244997

/-!
# A189623: Number of 8Xn binary arrays without the pattern 0 1 0 diagonally, antidiagonally or horizontally.

The programs for A189623, there is no canonical definition to state claims against.
-/

/-! ## A189623.P18114240967197356375

`A189617(eq[13, A066657(n)])`
-/

namespace A189623.P18114240967197356375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189623.P18114240967197356375

/-! ## A189623.P10638914596141300005

`A189617(eq[9, A131818(n+1)])`
-/

namespace A189623.P10638914596141300005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189623.P10638914596141300005

/-! ## A189623.P17417643343615519999

`A189617(A133263(n+8)-(n+2))`
-/

namespace A189623.P17417643343615519999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A189623.P17417643343615519999

/-! ## A189623.P77316395695099228

`A189617(eq[7, A025581(n)]+8-n)`
-/

namespace A189623.P77316395695099228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8 - n)

end

end A189623.P77316395695099228

/-! ## A189623.P15947104291615436237

`A189617(eq[8, A025581(n)]-A005843(n))`
-/

namespace A189623.P15947104291615436237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A189623.P15947104291615436237

/-!
# A189624: Fixed point of the morphism 0->001, 1->10.

The programs for A189624, there is no canonical definition to state claims against.
-/

/-! ## A189624.P17586624857970660413

`char[A189626(n+1)-1]`
-/

namespace A189624.P17586624857970660413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189624.P17586624857970660413

/-! ## A189624.P5068238227905519193

`1-char[A189625(n+1)-1]`
-/

namespace A189624.P5068238227905519193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189624.P5068238227905519193

/-! ## A189624.P10450425383309213806

`Δ[A189627(A028310(n))]`
-/

namespace A189624.P10450425383309213806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189627 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189624.P10450425383309213806

/-! ## A189624.P14439218861820583459

`val(A007066(n+1), A189626(n+1))`
-/

namespace A189624.P14439218861820583459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007066 (n + 1)).toNat (A189626 (n + 1)).toNat

end

end A189624.P14439218861820583459

/-! ## A189624.P11347764267661617271

`A189627(n+1)-A189627(A028310(n))`
-/

namespace A189624.P11347764267661617271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189627 (n + 1) - A189627 (A028310 n).toNat

end

end A189624.P11347764267661617271

/-! ## A189624.P988339390616633500

`A002262(Δ[A189626(n+1)])`
-/

namespace A189624.P988339390616633500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (n + 1) - f1 n).toNat

end

end A189624.P988339390616633500

/-! ## A189624.P13767410853382522755

`A026922(Δ[A189626(n+1)])`
-/

namespace A189624.P13767410853382522755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (n + 1) - f1 n).toNat

end

end A189624.P13767410853382522755

/-! ## A189624.P9062869194378555912

`A058175(Δ[A189626(n+1)])`
-/

namespace A189624.P9062869194378555912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058175 (f1 (n + 1) - f1 n).toNat

end

end A189624.P9062869194378555912

/-! ## A189624.P11325212290097489108

`A058176(Δ[A189626(n+1)])`
-/

namespace A189624.P11325212290097489108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 (f1 (n + 1) - f1 n).toNat

end

end A189624.P11325212290097489108

/-! ## A189624.P1462841826249359930

`A059841(Δ[A189626(n+1)])`
-/

namespace A189624.P1462841826249359930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f1 (n + 1) - f1 n).toNat

end

end A189624.P1462841826249359930

/-! ## A189624.P15831371216564519765

`A085791(Δ[A189626(n+1)])`
-/

namespace A189624.P15831371216564519765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085791 (f1 (n + 1) - f1 n).toNat

end

end A189624.P15831371216564519765

/-! ## A189624.P17624055407538263845

`A094344(Δ[A189626(n+1)])`
-/

namespace A189624.P17624055407538263845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094344 (f1 (n + 1) - f1 n).toNat

end

end A189624.P17624055407538263845

/-! ## A189624.P13171089662753659515

`A091949(Δ[A189626(n+1)]²)`
-/

namespace A189624.P13171089662753659515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A189624.P13171089662753659515

/-! ## A189624.P14991777438359071065

`A189702(Δ[A189626(n+1)]²)`
-/

namespace A189624.P14991777438359071065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A189624.P14991777438359071065

/-! ## A189624.P14943033656550669646

`A091949(Δ[A189626(n+1)]!)`
-/

namespace A189624.P14943033656550669646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A189624.P14943033656550669646

/-! ## A189624.P622842067836523267

`A327222(Δ[A189626(n+1)]!)`
-/

namespace A189624.P622842067836523267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A189624.P622842067836523267

/-! ## A189624.P1764617593485826515

`A094344(A189626(n+2)-A189626(n+1))`
-/

namespace A189624.P1764617593485826515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094344 (A189626 (n + 2) - A189626 (n + 1)).toNat

end

end A189624.P1764617593485826515

/-! ## A189624.P10713673993372305489

`A189661(A189626(n+1))`
-/

namespace A189624.P10713673993372305489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A189626 (n + 1)).toNat

end

end A189624.P10713673993372305489

/-!
# A189625: Positions of 0 in A189624; complement of A189626.

The programs for A189625, there is no canonical definition to state claims against.
-/

/-! ## A189625.P10809471506372766221

`eq[0, A189624(n+1)]+1`
-/

namespace A189625.P10809471506372766221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189625.P10809471506372766221

/-! ## A189625.P201534261354452564

`lt[n*char[A189626(n+1)], n]`
-/

namespace A189625.P201534261354452564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189625.P201534261354452564

/-! ## A189625.P14294556619997352024

`lt[n*A189624(A028310(n)), n]`
-/

namespace A189625.P14294556619997352024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189624 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189625.P14294556619997352024

/-! ## A189625.P3961929855771540665

`lt[char[A189626(n+1)], A057427(n)]`
-/

namespace A189625.P3961929855771540665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189625.P3961929855771540665

/-! ## A189625.P436883126747335942

`record[n+1-A005843(n*A189624(n+1))]`
-/

namespace A189625.P436883126747335942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 ((n : ℤ) * A189624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P436883126747335942

/-! ## A189625.P13190673321235205534

`lt[A189624(A028310(n)), A057427(n)]`
-/

namespace A189625.P13190673321235205534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189625.P13190673321235205534

/-! ## A189625.P4877885448799991474

`A000720(p?[A189624(n+1)+A000040(n+1)])`
-/

namespace A189625.P4877885448799991474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189625.P4877885448799991474

/-! ## A189625.P17902617108677803512

`record[A032742(A189624(n+1)+A103517(n))]`
-/

namespace A189625.P17902617108677803512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A189624 (n + 1) + A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P17902617108677803512

/-! ## A189625.P9386578405213791587

`record[A028242(A005843(n)-A189624(n+1))]`
-/

namespace A189625.P9386578405213791587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A189624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P9386578405213791587

/-! ## A189625.P8337510894080911515

`eq[A000038(n), A189624(A065033(2*n))]`
-/

namespace A189625.P8337510894080911515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189625.P8337510894080911515

/-! ## A189625.P6591106063008218246

`record[C(n-floor(n/ϕ), A189627(n+1))]`
-/

namespace A189625.P6591106063008218246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - ⌊(n : ℝ) / Real.goldenRatio⌋).toNat (A189627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P6591106063008218246

/-! ## A189625.P6699575230410071740

`record[A008611(n*(3-A189624(n+1)))]`
-/

namespace A189625.P6699575230410071740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) * (3 - A189624 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P6699575230410071740

/-! ## A189625.P6274869429228458777

`record[A008611(n*xor(3, A189624(n+1)))]`
-/

namespace A189625.P6274869429228458777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) * Int.xor 3 (A189624 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189625.P6274869429228458777

/-!
# A189626: Positions of 1 in A189624; complement of A189625.

The programs for A189626, there is no canonical definition to state claims against.
-/

/-! ## A189626.P7806274237460397818

`comp[A189625(n+1)-1]+1`
-/

namespace A189626.P7806274237460397818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189626.P7806274237460397818

/-! ## A189626.P9514011890191963984

`eq[1, A189624(n+1)]+1`
-/

namespace A189626.P9514011890191963984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189626.P9514011890191963984

/-! ## A189626.P4511163861407609536

`lt[0, A189624(A028310(n))]`
-/

namespace A189626.P4511163861407609536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189626.P4511163861407609536

/-! ## A189626.P11249485105000355319

`filter[A344180(n), A189624(#)]`
-/

namespace A189626.P11249485105000355319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P11249485105000355319

/-! ## A189626.P17693891341275362138

`eq[1, A189624(A000038(n)+n)]`
-/

namespace A189626.P17693891341275362138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189626.P17693891341275362138

/-! ## A189626.P8623409173843352189

`eq[1, A189624(A000007(n)+n)]`
-/

namespace A189626.P8623409173843352189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189626.P8623409173843352189

/-! ## A189626.P10674066821700647936

`lt[char[A189625(n+1)], A057427(n)]`
-/

namespace A189626.P10674066821700647936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189626.P10674066821700647936

/-! ## A189626.P2480778575556665727

`A000720(p?[A000040(n+1)*A189624(n+1)])`
-/

namespace A189626.P2480778575556665727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189626.P2480778575556665727

/-! ## A189626.P18351591747825277068

`record[A145569(n+3)*A189624(A145569(n+3))]`
-/

namespace A189626.P18351591747825277068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (n + 3) * A189624 (A145569 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189626.P18351591747825277068

/-! ## A189626.P1438359529272688584

`filter[A092942(n+1), A189624(#)]`
-/

namespace A189626.P1438359529272688584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P1438359529272688584

/-! ## A189626.P1217188357875389351

`filter[A133622(n+1), A189624(#)]`
-/

namespace A189626.P1217188357875389351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P1217188357875389351

/-! ## A189626.P14413755136077382014

`filter[A179820(n+1), A189624(#)]`
-/

namespace A189626.P14413755136077382014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P14413755136077382014

/-! ## A189626.P13699562698439362554

`filter[A152271(n), A189624(#)]`
-/

namespace A189626.P13699562698439362554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P13699562698439362554

/-! ## A189626.P6660656096081033787

`filter[A158416(n), A189624(#)]`
-/

namespace A189626.P6660656096081033787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P6660656096081033787

/-! ## A189626.P7098658908871137539

`eq[1, A189624(A065033(2*n))]`
-/

namespace A189626.P7098658908871137539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189626.P7098658908871137539

/-! ## A189626.P11338290245575529524

`eq[1, A189624(A123108(2*n))]`
-/

namespace A189626.P11338290245575529524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189626.P11338290245575529524

/-! ## A189626.P12469881162365482903

`filter[A038459(n+1), A189624(#)]`
-/

namespace A189626.P12469881162365482903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P12469881162365482903

/-! ## A189626.P18153100464958912146

`filter[A174571(n+1), A189624(#)]`
-/

namespace A189626.P18153100464958912146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P18153100464958912146

/-! ## A189626.P13788798267971995288

`filter[A100727(n), A189624(#)]`
-/

namespace A189626.P13788798267971995288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189624 (f1 j).toNat = 1) n)

end

end A189626.P13788798267971995288

/-!
# A189627: Partial sums of A189624.

The programs for A189627, there is no canonical definition to state claims against.
-/

/-! ## A189627.P4304606907303955604

`∑[A189624(1+n)]`
-/

namespace A189627.P4304606907303955604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P4304606907303955604

/-! ## A189627.P17983482123836172347

`∑[char[A189626(n+1)-1]]`
-/

namespace A189627.P17983482123836172347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P17983482123836172347

/-! ## A189627.P10063852018908882276

`∑[1-char[A189625(n+1)-1]]`
-/

namespace A189627.P10063852018908882276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P10063852018908882276

/-! ## A189627.P14336376801174430282

`∑[val(A007066(n+1), A189626(n+1))]`
-/

namespace A189627.P14336376801174430282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007066 (n + 1)).toNat (A189626 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P14336376801174430282

/-! ## A189627.P16964231374925766630

`∑[A002262(Δ[A189626(n+1)])]`
-/

namespace A189627.P16964231374925766630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P16964231374925766630

/-! ## A189627.P7133388661178765410

`∑[A026922(Δ[A189626(n+1)])]`
-/

namespace A189627.P7133388661178765410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P7133388661178765410

/-! ## A189627.P3191917180225096451

`∑[A058175(Δ[A189626(n+1)])]`
-/

namespace A189627.P3191917180225096451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058175 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P3191917180225096451

/-! ## A189627.P5615563711148946551

`∑[A058176(Δ[A189626(n+1)])]`
-/

namespace A189627.P5615563711148946551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P5615563711148946551

/-! ## A189627.P10073563939632157326

`∑[A059841(Δ[A189626(n+1)])]`
-/

namespace A189627.P10073563939632157326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P10073563939632157326

/-! ## A189627.P9998797529136644189

`∑[A085791(Δ[A189626(n+1)])]`
-/

namespace A189627.P9998797529136644189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085791 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P9998797529136644189

/-! ## A189627.P14811765006017786703

`∑[A094344(Δ[A189626(n+1)])]`
-/

namespace A189627.P14811765006017786703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094344 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P14811765006017786703

/-! ## A189627.P8901006800798942015

`∑[A091949(Δ[A189626(n+1)]²)]`
-/

namespace A189627.P8901006800798942015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P8901006800798942015

/-! ## A189627.P11990707460803666111

`∑[A189702(Δ[A189626(n+1)]²)]`
-/

namespace A189627.P11990707460803666111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P11990707460803666111

/-! ## A189627.P11063010712210504702

`∑[A189661(A189626(n+1))]`
-/

namespace A189627.P11063010712210504702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A189626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189627.P11063010712210504702

/-!
# A189628: Fixed point of the morphism 0->001, 1->010.

The programs for A189628, the canonical program `A189628.P9825578065611583787` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189628 has offset 1).

The definition of A189628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189628.P9825578065611583787

`C((a(floor(n/3))+n)%3, 2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189628

/-- `C((a(floor(n/3))+n)%3, 2)` -/
def P9825578065611583787.Spec : Prop :=
  ∀ n, (P9825578065611583787.a n : ℤ) = A189628 (n + 1)

theorem P9825578065611583787.correct : P9825578065611583787.Spec := by
  intro n
  simp only [A189628, Nat.add_sub_cancel]

end A189628

/-! ## A189628.P9521007331161790814

`((2*n-a(floor(n/3)))%3)%2` with `a(0)=0`
-/

namespace A189628.P9521007331161790814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.tmod ((2 * n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 3) 2

end

end A189628.P9521007331161790814

namespace A189628

/-- `((2*n-a(floor(n/3)))%3)%2` -/
def P9521007331161790814.Spec : Prop :=
  ∀ n, P9521007331161790814.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P4026355209953911655

`A284880(n+1)%2`
-/

namespace A189628.P4026355209953911655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284880 (n + 1)) 2

end

end A189628.P4026355209953911655

namespace A189628

/-- `A284880(n+1)%2` -/
def P4026355209953911655.Spec : Prop :=
  ∀ n, P4026355209953911655.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P418520606841282211

`C(A287516(n+1), 2)`
-/

namespace A189628.P418520606841282211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287516 (n + 1)).toNat 2

end

end A189628.P418520606841282211

namespace A189628

/-- `C(A287516(n+1), 2)` -/
def P418520606841282211.Spec : Prop :=
  ∀ n, (P418520606841282211.a n : ℤ) = A189628 (n + 1)

end A189628

/-! ## A189628.P7680698305446198187

`C(A287520(n+1), 2)`
-/

namespace A189628.P7680698305446198187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287520 (n + 1)).toNat 2

end

end A189628.P7680698305446198187

namespace A189628

/-- `C(A287520(n+1), 2)` -/
def P7680698305446198187.Spec : Prop :=
  ∀ n, (P7680698305446198187.a n : ℤ) = A189628 (n + 1)

end A189628

/-! ## A189628.P15646074900062287136

`char[A189630(n+1)-1]`
-/

namespace A189628.P15646074900062287136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189628.P15646074900062287136

namespace A189628

/-- `char[A189630(n+1)-1]` -/
def P15646074900062287136.Spec : Prop :=
  ∀ n, (P15646074900062287136.a n : ℤ) = A189628 (n + 1)

end A189628

/-! ## A189628.P13900016305068213948

`char[A284885(2*n+1)]`
-/

namespace A189628.P13900016305068213948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189628.P13900016305068213948

namespace A189628

/-- `char[A284885(2*n+1)]` -/
def P13900016305068213948.Spec : Prop :=
  ∀ n, (P13900016305068213948.a n : ℤ) = A189628 (n + 1)

end A189628

/-! ## A189628.P12462155519911465658

`and(1, A284879(n+1)+1)`
-/

namespace A189628.P12462155519911465658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284879 (n + 1) + 1)

end

end A189628.P12462155519911465658

namespace A189628

/-- `and(1, A284879(n+1)+1)` -/
def P12462155519911465658.Spec : Prop :=
  ∀ n, P12462155519911465658.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P5619070804593250382

`val(A020639(A284879(n+1)), 2)`
-/

namespace A189628.P5619070804593250382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A284879 (n + 1)).toNat).toNat 2

end

end A189628.P5619070804593250382

namespace A189628

/-- `val(A020639(A284879(n+1)), 2)` -/
def P5619070804593250382.Spec : Prop :=
  ∀ n, (P5619070804593250382.a n : ℤ) = A189628 (n + 1)

end A189628

/-! ## A189628.P12263816759910634670

`A016754(n)%A284879(n+1)`
-/

namespace A189628.P12263816759910634670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A284879 (n + 1))

end

end A189628.P12263816759910634670

namespace A189628

/-- `A016754(n)%A284879(n+1)` -/
def P12263816759910634670.Spec : Prop :=
  ∀ n, P12263816759910634670.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P2520809217644764240

`A016756(n)%A284879(n+1)`
-/

namespace A189628.P2520809217644764240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A284879 (n + 1))

end

end A189628.P2520809217644764240

namespace A189628

/-- `A016756(n)%A284879(n+1)` -/
def P2520809217644764240.Spec : Prop :=
  ∀ n, P2520809217644764240.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P7481867131729325439

`A016758(n)%A284879(n+1)`
-/

namespace A189628.P7481867131729325439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016758 n) (A284879 (n + 1))

end

end A189628.P7481867131729325439

namespace A189628

/-- `A016758(n)%A284879(n+1)` -/
def P7481867131729325439.Spec : Prop :=
  ∀ n, P7481867131729325439.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P1738833958102490138

`A016760(n)%A284879(n+1)`
-/

namespace A189628.P1738833958102490138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A284879 (n + 1))

end

end A189628.P1738833958102490138

namespace A189628

/-- `A016760(n)%A284879(n+1)` -/
def P1738833958102490138.Spec : Prop :=
  ∀ n, P1738833958102490138.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P7270865647177855786

`A272850(n)%A284879(n+1)`
-/

namespace A189628.P7270865647177855786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272850 n) (A284879 (n + 1))

end

end A189628.P7270865647177855786

namespace A189628

/-- `A272850(n)%A284879(n+1)` -/
def P7270865647177855786.Spec : Prop :=
  ∀ n, P7270865647177855786.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P3337494728783008489

`A280321(n)%A284879(n+1)`
-/

namespace A189628.P3337494728783008489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280321 n) (A284879 (n + 1))

end

end A189628.P3337494728783008489

namespace A189628

/-- `A280321(n)%A284879(n+1)` -/
def P3337494728783008489.Spec : Prop :=
  ∀ n, P3337494728783008489.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P17937714338978871537

`and(A011655(n), A284880(n+1))`
-/

namespace A189628.P17937714338978871537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011655 n) (A284880 (n + 1))

end

end A189628.P17937714338978871537

namespace A189628

/-- `and(A011655(n), A284880(n+1))` -/
def P17937714338978871537.Spec : Prop :=
  ∀ n, P17937714338978871537.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P5127561842300466484

`and(A014578(n), A284880(n+1))`
-/

namespace A189628.P5127561842300466484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014578 n) (A284880 (n + 1))

end

end A189628.P5127561842300466484

namespace A189628

/-- `and(A014578(n), A284880(n+1))` -/
def P5127561842300466484.Spec : Prop :=
  ∀ n, P5127561842300466484.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P16767670642796612656

`and(A057427(n), A284880(n+1))`
-/

namespace A189628.P16767670642796612656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A284880 (n + 1))

end

end A189628.P16767670642796612656

namespace A189628

/-- `and(A057427(n), A284880(n+1))` -/
def P16767670642796612656.Spec : Prop :=
  ∀ n, P16767670642796612656.a n = A189628 (n + 1)

end A189628

/-! ## A189628.P7965486852694562504

`A284878(Δ[n²])`
-/

namespace A189628.P7965486852694562504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A189628.P7965486852694562504

namespace A189628

/-- `A284878(Δ[n²])` -/
def P7965486852694562504.Spec : Prop :=
  ∀ n, P7965486852694562504.a n = A189628 (n + 1)

end A189628

/-!
# A189629: Positions of 0 in A189628; complement of A189630.

The programs for A189629, the canonical program `A189629.P4801279269901383408` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189629 has offset 1).

The definition of A189629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189629.P6437244994027070950

`floor(A284882(n+1)/2)`
-/

namespace A189629.P6437244994027070950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284882 (n + 1) : ℚ) / 2⌋

end

end A189629.P6437244994027070950

namespace A189629

/-- `floor(A284882(n+1)/2)` -/
def P6437244994027070950.Spec : Prop :=
  ∀ n, P6437244994027070950.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P4801279269901383408

`ceil(A284884(n+1)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189629

/-- `ceil(A284884(n+1)/2)` -/
def P4801279269901383408.Spec : Prop :=
  ∀ n, P4801279269901383408.a n = A189629 (n + 1)

theorem P4801279269901383408.correct : P4801279269901383408.Spec := by
  intro n
  simp only [A189629, Nat.add_sub_cancel]

end A189629

/-! ## A189629.P12692720213245304104

`∑[char[A284880(n+1)]+1]`
-/

namespace A189629.P12692720213245304104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189629.P12692720213245304104

namespace A189629

/-- `∑[char[A284880(n+1)]+1]` -/
def P12692720213245304104.Spec : Prop :=
  ∀ n, (P12692720213245304104.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P6668713399597737527

`comp[comp[A284879(n+1)]+n]`
-/

namespace A189629.P6668713399597737527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189629.P6668713399597737527

namespace A189629

/-- `comp[comp[A284879(n+1)]+n]` -/
def P6668713399597737527.Spec : Prop :=
  ∀ n, (P6668713399597737527.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P10241735580233245607

`ceil((A284914(n+1)+n)/2)`
-/

namespace A189629.P10241735580233245607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284914 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A189629.P10241735580233245607

namespace A189629

/-- `ceil((A284914(n+1)+n)/2)` -/
def P10241735580233245607.Spec : Prop :=
  ∀ n, P10241735580233245607.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P14938374634116419583

`a(n-1)+A284878(n)+1` with `a(0)=1`
-/

namespace A189629.P14938374634116419583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284878 n + 1)

end

end A189629.P14938374634116419583

namespace A189629

/-- `a(n-1)+A284878(n)+1` -/
def P14938374634116419583.Spec : Prop :=
  ∀ n, P14938374634116419583.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P1044799880842213728

`∪[A287517(n+1), A287518(n+1)]`
-/

namespace A189629.P1044799880842213728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189629.P1044799880842213728

namespace A189629

/-- `∪[A287517(n+1), A287518(n+1)]` -/
def P1044799880842213728.Spec : Prop :=
  ∀ n, (P1044799880842213728.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P10624094019486950920

`∪[A287521(n+1), A287522(n+1)]`
-/

namespace A189629.P10624094019486950920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189629.P10624094019486950920

namespace A189629

/-- `∪[A287521(n+1), A287522(n+1)]` -/
def P10624094019486950920.Spec : Prop :=
  ∀ n, (P10624094019486950920.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P1532319187138339832

`(A284882(n+1)-A284878(n+1))/2`
-/

namespace A189629.P1532319187138339832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284882 (n + 1) - A284878 (n + 1) : ℚ) / 2

end

end A189629.P1532319187138339832

namespace A189629

/-- `(A284882(n+1)-A284878(n+1))/2` -/
def P1532319187138339832.Spec : Prop :=
  ∀ n, P1532319187138339832.a n = (A189629 (n + 1) : ℚ)

theorem P1532319187138339832.correct : P1532319187138339832.Spec := by
  intro n
  simp only [A189629, Nat.add_sub_cancel, A189629.P1532319187138339832.a, A189629.P4801279269901383408.a, A284878, A284878.P13204157183764191036.f1, A284878.P13204157183764191036.a, A284882, A284882.P13401279417778518260.a, A284884, A284884.P16973292987527739528.f1, A284884.P16973292987527739528.f2, A284884.P16973292987527739528.a, A284880, A284880.P15578922149436779160.a, A189630, A189630.P2663930822857088844.a, A189628, A189628.P9825578065611583787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189629

/-! ## A189629.P14505296042830349723

`lt[A189628(n+1), 1]+1`
-/

namespace A189629.P14505296042830349723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189629.P14505296042830349723

namespace A189629

/-- `lt[A189628(n+1), 1]+1` -/
def P14505296042830349723.Spec : Prop :=
  ∀ n, (P14505296042830349723.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P10512772034515495876

`lt[A287516(n+1), 2]+1`
-/

namespace A189629.P10512772034515495876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189629.P10512772034515495876

namespace A189629

/-- `lt[A287516(n+1), 2]+1` -/
def P10512772034515495876.Spec : Prop :=
  ∀ n, (P10512772034515495876.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P14934397949117973782

`lt[A287520(n+1), 2]+1`
-/

namespace A189629.P14934397949117973782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189629.P14934397949117973782

namespace A189629

/-- `lt[A287520(n+1), 2]+1` -/
def P14934397949117973782.Spec : Prop :=
  ∀ n, (P14934397949117973782.a n : ℤ) = A189629 (n + 1)

end A189629

/-! ## A189629.P13393635359952826949

`A284879(a(n-1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A189629.P13393635359952826949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284879 (a (n - 1) + 1).toNat - a (n - 1)

end

end A189629.P13393635359952826949

namespace A189629

/-- `A284879(a(n-1)+1)-a(n-1)` -/
def P13393635359952826949.Spec : Prop :=
  ∀ n, P13393635359952826949.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P8457941966063176754

`ceil(A189633(2*n+1)/2)`
-/

namespace A189629.P8457941966063176754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189633 (2 * n + 1) : ℚ) / 2⌉

end

end A189629.P8457941966063176754

namespace A189629

/-- `ceil(A189633(2*n+1)/2)` -/
def P8457941966063176754.Spec : Prop :=
  ∀ n, P8457941966063176754.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P842154940711813615

`A008621(A284914(n+1))+n`
-/

namespace A189629.P842154940711813615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A284914 (n + 1)).toNat + (n : ℤ)

end

end A189629.P842154940711813615

namespace A189629

/-- `A008621(A284914(n+1))+n` -/
def P842154940711813615.Spec : Prop :=
  ∀ n, P842154940711813615.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P6672584664837408389

`A057353(A284914(n+1)-1)+1`
-/

namespace A189629.P6672584664837408389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A284914 (n + 1) - 1).toNat + 1

end

end A189629.P6672584664837408389

namespace A189629

/-- `A057353(A284914(n+1)-1)+1` -/
def P6672584664837408389.Spec : Prop :=
  ∀ n, P6672584664837408389.a n = A189629 (n + 1)

end A189629

/-! ## A189629.P9656893148652390997

`A189633(2*(n+1))-A189669(n+1)`
-/

namespace A189629.P9656893148652390997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (2 * (n + 1)) - A189669 (n + 1)

end

end A189629.P9656893148652390997

namespace A189629

/-- `A189633(2*(n+1))-A189669(n+1)` -/
def P9656893148652390997.Spec : Prop :=
  ∀ n, P9656893148652390997.a n = A189629 (n + 1)

end A189629

/-!
# A189630: Positions of 1 in A189628; complement of A189629.

The programs for A189630, the canonical program `A189630.P2663930822857088844` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189630 has offset 1).

The definition of A189630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189630.P3897359468213131337

`A284880(n+1)+1+n`
-/

namespace A189630.P3897359468213131337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1) + 1 + (n : ℤ)

end

end A189630.P3897359468213131337

namespace A189630

/-- `A284880(n+1)+1+n` -/
def P3897359468213131337.Spec : Prop :=
  ∀ n, P3897359468213131337.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P2663930822857088844

`3*(n+1)-A189628(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189630

/-- `3*(n+1)-A189628(n+1)` -/
def P2663930822857088844.Spec : Prop :=
  ∀ n, P2663930822857088844.a n = A189630 (n + 1)

theorem P2663930822857088844.correct : P2663930822857088844.Spec := by
  intro n
  simp only [A189630, Nat.add_sub_cancel]

end A189630

/-! ## A189630.P10297116966167512015

`A016897(n)-A284879(n+1)`
-/

namespace A189630.P10297116966167512015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A284879 (n + 1)

end

end A189630.P10297116966167512015

namespace A189630

/-- `A016897(n)-A284879(n+1)` -/
def P10297116966167512015.Spec : Prop :=
  ∀ n, P10297116966167512015.a n = A189630 (n + 1)

theorem P10297116966167512015.correct : P10297116966167512015.Spec := by
  intro n
  simp only [A189630, Nat.add_sub_cancel, A189630.P10297116966167512015.a, A189630.P2663930822857088844.a, A016897, A016897.P9287350145607759688.a, A189628, A189628.P9825578065611583787.a, A284879, A284879.P577505175711310991.f1, A284879.P577505175711310991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189630

/-! ## A189630.P9224602581900461272

`A283234(n+1)-(A189628(n+1)+A050140(n+1))`
-/

namespace A189630.P9224602581900461272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1) - (A189628 (n + 1) + A050140 (n + 1))

end

end A189630.P9224602581900461272

namespace A189630

/-- `A283234(n+1)-(A189628(n+1)+A050140(n+1))` -/
def P9224602581900461272.Spec : Prop :=
  ∀ n, P9224602581900461272.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P1399728483797969665

`A287438(n+1)+A287441(n+1)-A189628(n+1)`
-/

namespace A189630.P1399728483797969665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1) + (A287441 (n + 1) - A189628 (n + 1))

end

end A189630.P1399728483797969665

namespace A189630

/-- `A287438(n+1)+A287441(n+1)-A189628(n+1)` -/
def P1399728483797969665.Spec : Prop :=
  ∀ n, P1399728483797969665.a n = A189630 (n + 1)

theorem P1399728483797969665.correct : P1399728483797969665.Spec := by
  intro n
  simp only [A189630, Nat.add_sub_cancel, A189630.P1399728483797969665.a, A189630.P2663930822857088844.a, A189628, A189628.P9825578065611583787.a, A287438, A287438.P2963112552505513428.a, A287441, A287441.P16492158289097742092.a, A189668, A189668.P16396119617420465884.a, A189727, A189727.P5761544860663102643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189630

/-! ## A189630.P10647491886113985165

`A284885(2*(n+1))`
-/

namespace A189630.P10647491886113985165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 (2 * (n + 1))

end

end A189630.P10647491886113985165

namespace A189630

/-- `A284885(2*(n+1))` -/
def P10647491886113985165.Spec : Prop :=
  ∀ n, P10647491886113985165.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P8215994930218487718

`A284885(Δ[n²])+1`
-/

namespace A189630.P8215994930218487718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A189630.P8215994930218487718

namespace A189630

/-- `A284885(Δ[n²])+1` -/
def P8215994930218487718.Spec : Prop :=
  ∀ n, P8215994930218487718.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P8467518231892135338

`A189634(2*(n+1))/2`
-/

namespace A189630.P8467518231892135338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189634 (2 * (n + 1)) : ℚ) / 2

end

end A189630.P8467518231892135338

namespace A189630

/-- `A189634(2*(n+1))/2` -/
def P8467518231892135338.Spec : Prop :=
  ∀ n, P8467518231892135338.a n = (A189630 (n + 1) : ℚ)

end A189630

/-! ## A189630.P10849048135221693967

`A189728(2*(n+1))/2`
-/

namespace A189630.P10849048135221693967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189728 (2 * (n + 1)) : ℚ) / 2

end

end A189630.P10849048135221693967

namespace A189630

/-- `A189728(2*(n+1))/2` -/
def P10849048135221693967.Spec : Prop :=
  ∀ n, P10849048135221693967.a n = (A189630 (n + 1) : ℚ)

end A189630

/-! ## A189630.P2415726863422147337

`A284883(2*(n+1))/2`
-/

namespace A189630.P2415726863422147337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284883 (2 * (n + 1)) : ℚ) / 2

end

end A189630.P2415726863422147337

namespace A189630

/-- `A284883(2*(n+1))/2` -/
def P2415726863422147337.Spec : Prop :=
  ∀ n, P2415726863422147337.a n = (A189630 (n + 1) : ℚ)

end A189630

/-! ## A189630.P17274878347119525104

`A284913(2*(n+1))-(n+1)`
-/

namespace A189630.P17274878347119525104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189630.P17274878347119525104

namespace A189630

/-- `A284913(2*(n+1))-(n+1)` -/
def P17274878347119525104.Spec : Prop :=
  ∀ n, P17274878347119525104.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P9699006885687280426

`3*(n+1)-A189632(2*(n+1))`
-/

namespace A189630.P9699006885687280426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A189632 (2 * (n + 1))

end

end A189630.P9699006885687280426

namespace A189630

/-- `3*(n+1)-A189632(2*(n+1))` -/
def P9699006885687280426.Spec : Prop :=
  ∀ n, P9699006885687280426.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P16439564381513786649

`A189727(2*(n+1))+3*n+2`
-/

namespace A189630.P16439564381513786649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (2 * (n + 1)) + (3 * n + 2 : ℤ)

end

end A189630.P16439564381513786649

namespace A189630

/-- `A189727(2*(n+1))+3*n+2` -/
def P16439564381513786649.Spec : Prop :=
  ∀ n, P16439564381513786649.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P14469797334569440419

`A284878(2*(n+1))+3*n+2`
-/

namespace A189630.P14469797334569440419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (2 * (n + 1)) + (3 * n + 2 : ℤ)

end

end A189630.P14469797334569440419

namespace A189630

/-- `A284878(2*(n+1))+3*n+2` -/
def P14469797334569440419.Spec : Prop :=
  ∀ n, P14469797334569440419.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P11606850177152414568

`A007494(A284880(n+1))`
-/

namespace A189630.P11606850177152414568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A284880 (n + 1)).toNat

end

end A189630.P11606850177152414568

namespace A189630

/-- `A007494(A284880(n+1))` -/
def P11606850177152414568.Spec : Prop :=
  ∀ n, P11606850177152414568.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P5455064737419689573

`A328399(A284883(2*n+1))`
-/

namespace A189630.P5455064737419689573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A284883 (2 * n + 1)).toNat

end

end A189630.P5455064737419689573

namespace A189630

/-- `A328399(A284883(2*n+1))` -/
def P5455064737419689573.Spec : Prop :=
  ∀ n, P5455064737419689573.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P9777609730258828180

`record[A284885(n+1)+A284881(n+1)]`
-/

namespace A189630.P9777609730258828180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 (n + 1) + A284881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189630.P9777609730258828180

namespace A189630

/-- `record[A284885(n+1)+A284881(n+1)]` -/
def P9777609730258828180.Spec : Prop :=
  ∀ n, P9777609730258828180.a n = A189630 (n + 1)

end A189630

/-! ## A189630.P1342449147687897312

`filter[A080036(n), A189628(#)]`
-/

namespace A189630.P1342449147687897312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189628 (f1 j).toNat = 1) n)

end

end A189630.P1342449147687897312

namespace A189630

/-- `filter[A080036(n), A189628(#)]` -/
def P1342449147687897312.Spec : Prop :=
  ∀ n, P1342449147687897312.a n = A189630 (n + 1)

end A189630

/-!
# A189631: Partial sums of A189628.

The programs for A189631, the canonical program `A189631.P229276549313710375` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189631 has offset 1).

The definition of A189631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189631.P229276549313710375

`∑[A189628(1+n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189631

/-- `∑[A189628(1+n)]` -/
def P229276549313710375.Spec : Prop :=
  ∀ n, P229276549313710375.a n = A189631 (n + 1)

theorem P229276549313710375.correct : P229276549313710375.Spec := by
  intro n
  simp only [A189631, Nat.add_sub_cancel]

end A189631

/-! ## A189631.P10313978421418080180

`∑[A284880(n+1)%2]`
-/

namespace A189631.P10313978421418080180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284880 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P10313978421418080180

namespace A189631

/-- `∑[A284880(n+1)%2]` -/
def P10313978421418080180.Spec : Prop :=
  ∀ n, P10313978421418080180.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P5788688042557000961

`∑[C(A287516(n+1), 2)]`
-/

namespace A189631.P5788688042557000961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287516 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P5788688042557000961

namespace A189631

/-- `∑[C(A287516(n+1), 2)]` -/
def P5788688042557000961.Spec : Prop :=
  ∀ n, (P5788688042557000961.a n : ℤ) = A189631 (n + 1)

end A189631

/-! ## A189631.P6031105739067801296

`∑[C(A287520(n+1), 2)]`
-/

namespace A189631.P6031105739067801296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287520 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P6031105739067801296

namespace A189631

/-- `∑[C(A287520(n+1), 2)]` -/
def P6031105739067801296.Spec : Prop :=
  ∀ n, (P6031105739067801296.a n : ℤ) = A189631 (n + 1)

end A189631

/-! ## A189631.P6091120582189461666

`∑[char[A189630(n+1)-1]]`
-/

namespace A189631.P6091120582189461666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P6091120582189461666

namespace A189631

/-- `∑[char[A189630(n+1)-1]]` -/
def P6091120582189461666.Spec : Prop :=
  ∀ n, (P6091120582189461666.a n : ℤ) = A189631 (n + 1)

end A189631

/-! ## A189631.P3414120563969107232

`∑[char[A284885(2*n+1)]]`
-/

namespace A189631.P3414120563969107232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P3414120563969107232

namespace A189631

/-- `∑[char[A284885(2*n+1)]]` -/
def P3414120563969107232.Spec : Prop :=
  ∀ n, (P3414120563969107232.a n : ℤ) = A189631 (n + 1)

end A189631

/-! ## A189631.P6839516384311875682

`∑[A284879(n+1)]-(n+1)²`
-/

namespace A189631.P6839516384311875682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A189631.P6839516384311875682

namespace A189631

/-- `∑[A284879(n+1)]-(n+1)²` -/
def P6839516384311875682.Spec : Prop :=
  ∀ n, P6839516384311875682.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P14558653487061459518

`A004526(A189726(A189628(n+1)+n+1))`
-/

namespace A189631.P14558653487061459518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189726 (A189628 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A189631.P14558653487061459518

namespace A189631

/-- `A004526(A189726(A189628(n+1)+n+1))` -/
def P14558653487061459518.Spec : Prop :=
  ∀ n, P14558653487061459518.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P8912017699215215565

`∑[A284817(Δ[A284880(n+1)])]`
-/

namespace A189631.P8912017699215215565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P8912017699215215565

namespace A189631

/-- `∑[A284817(Δ[A284880(n+1)])]` -/
def P8912017699215215565.Spec : Prop :=
  ∀ n, P8912017699215215565.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P4517864829612991824

`∑[A284834(Δ[A284880(n+1)])]`
-/

namespace A189631.P4517864829612991824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284834 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P4517864829612991824

namespace A189631

/-- `∑[A284834(Δ[A284880(n+1)])]` -/
def P4517864829612991824.Spec : Prop :=
  ∀ n, P4517864829612991824.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P4199987461349181201

`∑[A284932(Δ[A284880(n+1)])]`
-/

namespace A189631.P4199987461349181201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P4199987461349181201

namespace A189631

/-- `∑[A284932(Δ[A284880(n+1)])]` -/
def P4199987461349181201.Spec : Prop :=
  ∀ n, P4199987461349181201.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P17931835513020272234

`∑[A284938(Δ[A284880(n+1)])]`
-/

namespace A189631.P17931835513020272234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P17931835513020272234

namespace A189631

/-- `∑[A284938(Δ[A284880(n+1)])]` -/
def P17931835513020272234.Spec : Prop :=
  ∀ n, P17931835513020272234.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P834640741887205672

`∑[A116178(A189630(n+1))]`
-/

namespace A189631.P834640741887205672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A189630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P834640741887205672

namespace A189631

/-- `∑[A116178(A189630(n+1))]` -/
def P834640741887205672.Spec : Prop :=
  ∀ n, P834640741887205672.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P633050407224502031

`∑[A284878(A284880(n+1)-1)]`
-/

namespace A189631.P633050407224502031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (A284880 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P633050407224502031

namespace A189631

/-- `∑[A284878(A284880(n+1)-1)]` -/
def P633050407224502031.Spec : Prop :=
  ∀ n, P633050407224502031.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P10275148127596355072

`∑[A189632(2*(n+1))]`
-/

namespace A189631.P10275148127596355072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P10275148127596355072

namespace A189631

/-- `∑[A189632(2*(n+1))]` -/
def P10275148127596355072.Spec : Prop :=
  ∀ n, P10275148127596355072.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P11578512051604643277

`∑[A284878(2*n+1)]`
-/

namespace A189631.P11578512051604643277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P11578512051604643277

namespace A189631

/-- `∑[A284878(2*n+1)]` -/
def P11578512051604643277.Spec : Prop :=
  ∀ n, P11578512051604643277.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P14775010684289828719

`∑[1-A189727(2*(n+1))]`
-/

namespace A189631.P14775010684289828719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189727 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P14775010684289828719

namespace A189631

/-- `∑[1-A189727(2*(n+1))]` -/
def P14775010684289828719.Spec : Prop :=
  ∀ n, P14775010684289828719.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P216042547967878133

`∑[A284913(2*(n+1))%2]`
-/

namespace A189631.P216042547967878133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284913 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P216042547967878133

namespace A189631

/-- `∑[A284913(2*(n+1))%2]` -/
def P216042547967878133.Spec : Prop :=
  ∀ n, P216042547967878133.a n = A189631 (n + 1)

end A189631

/-! ## A189631.P9387513195794274566

`∑[C(A287524(2*(n+1)), 2)]`
-/

namespace A189631.P9387513195794274566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287524 (2 * (n + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P9387513195794274566

namespace A189631

/-- `∑[C(A287524(2*(n+1)), 2)]` -/
def P9387513195794274566.Spec : Prop :=
  ∀ n, (P9387513195794274566.a n : ℤ) = A189631 (n + 1)

end A189631

/-!
# A189632: Fixed point starting with 0 of the morphism 0->001, 1->100.

The programs for A189632, the canonical program `A189632.P15931714177452615149` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189632 has offset 1).

The definition of A189632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189632.P15931714177452615149

`C((n-a(floor(n/3)))%3, 2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189632

/-- `C((n-a(floor(n/3)))%3, 2)` -/
def P15931714177452615149.Spec : Prop :=
  ∀ n, (P15931714177452615149.a n : ℤ) = A189632 (n + 1)

theorem P15931714177452615149.correct : P15931714177452615149.Spec := by
  intro n
  simp only [A189632, Nat.add_sub_cancel]

end A189632

/-! ## A189632.P6644170898442261419

`A189634(1+n)%3`
-/

namespace A189632.P6644170898442261419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189634 (1 + n)) 3

end

end A189632.P6644170898442261419

namespace A189632

/-- `A189634(1+n)%3` -/
def P6644170898442261419.Spec : Prop :=
  ∀ n, P6644170898442261419.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P8587237049578610853

`C(A287524(n+1), 2)`
-/

namespace A189632.P8587237049578610853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287524 (n + 1)).toNat 2

end

end A189632.P8587237049578610853

namespace A189632

/-- `C(A287524(n+1), 2)` -/
def P8587237049578610853.Spec : Prop :=
  ∀ n, (P8587237049578610853.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P17109024681518891508

`C(A287528(n+1), 2)`
-/

namespace A189632.P17109024681518891508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287528 (n + 1)).toNat 2

end

end A189632.P17109024681518891508

namespace A189632

/-- `C(A287528(n+1), 2)` -/
def P17109024681518891508.Spec : Prop :=
  ∀ n, (P17109024681518891508.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P1375702948941238723

`xor(A189727(n+1), A316829(n))`
-/

namespace A189632.P1375702948941238723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189727 (n + 1)) (A316829 n)

end

end A189632.P1375702948941238723

namespace A189632

/-- `xor(A189727(n+1), A316829(n))` -/
def P1375702948941238723.Spec : Prop :=
  ∀ n, P1375702948941238723.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P5994915303550830189

`A287524(n+1)-A189723(n+1)`
-/

namespace A189632.P5994915303550830189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1) - A189723 (n + 1)

end

end A189632.P5994915303550830189

namespace A189632

/-- `A287524(n+1)-A189723(n+1)` -/
def P5994915303550830189.Spec : Prop :=
  ∀ n, P5994915303550830189.a n = A189632 (n + 1)

theorem P5994915303550830189.correct : P5994915303550830189.Spec := by
  intro n
  simp only [A189632, Nat.add_sub_cancel, A189632.P5994915303550830189.a, A189632.P15931714177452615149.a, A189723, A189723.P17700089988259517662.a, A287524, A287524.P2131839873874398650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189632

/-! ## A189632.P2870276083998620729

`val(A287526(n+1), A016777(n)+2)`
-/

namespace A189632.P2870276083998620729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287526 (n + 1)).toNat (A016777 n + 2).toNat

end

end A189632.P2870276083998620729

namespace A189632

/-- `val(A287526(n+1), A016777(n)+2)` -/
def P2870276083998620729.Spec : Prop :=
  ∀ n, (P2870276083998620729.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P5596612578177474040

`A287547(n+1)%A287528(n+1)!`
-/

namespace A189632.P5596612578177474040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287547 (n + 1)) (Nat.factorial (A287528 (n + 1)).toNat : ℤ)

end

end A189632.P5596612578177474040

namespace A189632

/-- `A287547(n+1)%A287528(n+1)!` -/
def P5596612578177474040.Spec : Prop :=
  ∀ n, P5596612578177474040.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P17664961518274393687

`char[lt[A189668(n+1), A287528(n+1)]]`
-/

namespace A189632.P17664961518274393687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189632.P17664961518274393687

namespace A189632

/-- `char[lt[A189668(n+1), A287528(n+1)]]` -/
def P17664961518274393687.Spec : Prop :=
  ∀ n, (P17664961518274393687.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P14315848504835033859

`char[lt[A189727(n+1), A287528(n+1)]]`
-/

namespace A189632.P14315848504835033859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189632.P14315848504835033859

namespace A189632

/-- `char[lt[A189727(n+1), A287528(n+1)]]` -/
def P14315848504835033859.Spec : Prop :=
  ∀ n, (P14315848504835033859.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P2011620696407909498

`char[A004488(A285353(n+1))]`
-/

namespace A189632.P2011620696407909498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A285353 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189632.P2011620696407909498

namespace A189632

/-- `char[A004488(A285353(n+1))]` -/
def P2011620696407909498.Spec : Prop :=
  ∀ n, (P2011620696407909498.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P13491473992416981763

`A189633(2*n+1)-(3*n+1)`
-/

namespace A189632.P13491473992416981763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (2 * n + 1) - (3 * n + 1 : ℤ)

end

end A189632.P13491473992416981763

namespace A189632

/-- `A189633(2*n+1)-(3*n+1)` -/
def P13491473992416981763.Spec : Prop :=
  ∀ n, P13491473992416981763.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P12992768634749505163

`val(A287526(A016777(n)), 3)`
-/

namespace A189632.P12992768634749505163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287526 (A016777 n).toNat).toNat 3

end

end A189632.P12992768634749505163

namespace A189632

/-- `val(A287526(A016777(n)), 3)` -/
def P12992768634749505163.Spec : Prop :=
  ∀ n, (P12992768634749505163.a n : ℤ) = A189632 (n + 1)

end A189632

/-! ## A189632.P13420441820776403936

`A080846(A189633(2*n+1))`
-/

namespace A189632.P13420441820776403936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A189633 (2 * n + 1)).toNat

end

end A189632.P13420441820776403936

namespace A189632

/-- `A080846(A189633(2*n+1))` -/
def P13420441820776403936.Spec : Prop :=
  ∀ n, P13420441820776403936.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P7218294504171511413

`A189635(A287526(n+1))-n`
-/

namespace A189632.P7218294504171511413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (A287526 (n + 1)).toNat - (n : ℤ)

end

end A189632.P7218294504171511413

namespace A189632

/-- `A189635(A287526(n+1))-n` -/
def P7218294504171511413.Spec : Prop :=
  ∀ n, P7218294504171511413.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P6153203961907996732

`A189635(A287529(n+1))-n`
-/

namespace A189632.P6153203961907996732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (A287529 (n + 1)).toNat - (n : ℤ)

end

end A189632.P6153203961907996732

namespace A189632

/-- `A189635(A287529(n+1))-n` -/
def P6153203961907996732.Spec : Prop :=
  ∀ n, P6153203961907996732.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P8859426663679749202

`A189635(A016933(n)/2)-n`
-/

namespace A189632.P8859426663679749202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (SequenceMachineLib.roundAway ((A016933 n : ℚ) / 2)).toNat - (n : ℤ)

end

end A189632.P8859426663679749202

namespace A189632

/-- `A189635(A016933(n)/2)-n` -/
def P8859426663679749202.Spec : Prop :=
  ∀ n, P8859426663679749202.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P7990499693005494659

`A189635(A005408(n)+n)-n`
-/

namespace A189632.P7990499693005494659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (A005408 n + (n : ℤ)).toNat - (n : ℤ)

end

end A189632.P7990499693005494659

namespace A189632

/-- `A189635(A005408(n)+n)-n` -/
def P7990499693005494659.Spec : Prop :=
  ∀ n, P7990499693005494659.a n = A189632 (n + 1)

end A189632

/-! ## A189632.P5907865052243221526

`A156595(A189633(2*n+1)-1)`
-/

namespace A189632.P5907865052243221526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A189633 (2 * n + 1) - 1).toNat

end

end A189632.P5907865052243221526

namespace A189632

/-- `A156595(A189633(2*n+1)-1)` -/
def P5907865052243221526.Spec : Prop :=
  ∀ n, P5907865052243221526.a n = A189632 (n + 1)

end A189632

/-!
# A189633: Positions of 0 in A189632; complement of A189634.

The programs for A189633, the canonical program `A189633.P179509301148812189` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189633 has offset 1).

The definition of A189633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189633.P11143489801238220569

`comp[A189634(n+1)-1]+1`
-/

namespace A189633.P11143489801238220569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189633.P11143489801238220569

namespace A189633

/-- `comp[A189634(n+1)-1]+1` -/
def P11143489801238220569.Spec : Prop :=
  ∀ n, (P11143489801238220569.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P17391532121347475844

`∪[A026138(n+1), A287526(n+1)]`
-/

namespace A189633.P17391532121347475844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189633.P17391532121347475844

namespace A189633

/-- `∪[A026138(n+1), A287526(n+1)]` -/
def P17391532121347475844.Spec : Prop :=
  ∀ n, (P17391532121347475844.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P18091112615017383643

`∪[A026138(n+1), A287529(n+1)]`
-/

namespace A189633.P18091112615017383643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189633.P18091112615017383643

namespace A189633

/-- `∪[A026138(n+1), A287529(n+1)]` -/
def P18091112615017383643.Spec : Prop :=
  ∀ n, (P18091112615017383643.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P5599468359607841015

`∪[A189670(n+1), A287529(n+1)]`
-/

namespace A189633.P5599468359607841015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189633.P5599468359607841015

namespace A189633

/-- `∪[A189670(n+1), A287529(n+1)]` -/
def P5599468359607841015.Spec : Prop :=
  ∀ n, (P5599468359607841015.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P5878999366664736493

`∪[A189724(n+1), A287526(n+1)]`
-/

namespace A189633.P5878999366664736493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189633.P5878999366664736493

namespace A189633

/-- `∪[A189724(n+1), A287526(n+1)]` -/
def P5878999366664736493.Spec : Prop :=
  ∀ n, (P5878999366664736493.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P179509301148812189

`A008619(n)+A189632(A008619(n))+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189633

/-- `A008619(n)+A189632(A008619(n))+n` -/
def P179509301148812189.Spec : Prop :=
  ∀ n, P179509301148812189.a n = A189633 (n + 1)

theorem P179509301148812189.correct : P179509301148812189.Spec := by
  intro n
  simp only [A189633, Nat.add_sub_cancel]

end A189633

/-! ## A189633.P17697290078468065442

`record[n/a(A287524(n))]` with `a(0)=1`
-/

namespace A189633.P17697290078468065442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A287524 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189633.P17697290078468065442

namespace A189633

/-- `record[n/a(A287524(n))]` -/
def P17697290078468065442.Spec : Prop :=
  ∀ n, P17697290078468065442.a n = (A189633 (n + 1) : ℚ)

end A189633

/-! ## A189633.P7459695160566794665

`record[n/a(A287528(n))]` with `a(0)=1`
-/

namespace A189633.P7459695160566794665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A287528 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189633.P7459695160566794665

namespace A189633

/-- `record[n/a(A287528(n))]` -/
def P7459695160566794665.Spec : Prop :=
  ∀ n, P7459695160566794665.a n = (A189633 (n + 1) : ℚ)

end A189633

/-! ## A189633.P16550789277684219851

`lt[A189632(n+1), 1]+1`
-/

namespace A189633.P16550789277684219851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189633.P16550789277684219851

namespace A189633

/-- `lt[A189632(n+1), 1]+1` -/
def P16550789277684219851.Spec : Prop :=
  ∀ n, (P16550789277684219851.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P3238108512376984797

`lt[A287524(n+1), 2]+1`
-/

namespace A189633.P3238108512376984797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189633.P3238108512376984797

namespace A189633

/-- `lt[A287524(n+1), 2]+1` -/
def P3238108512376984797.Spec : Prop :=
  ∀ n, (P3238108512376984797.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P16292117830822101490

`lt[A287528(n+1), 2]+1`
-/

namespace A189633.P16292117830822101490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189633.P16292117830822101490

namespace A189633

/-- `lt[A287528(n+1), 2]+1` -/
def P16292117830822101490.Spec : Prop :=
  ∀ n, (P16292117830822101490.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P2184658211726855830

`lt[n*A189632(A028310(n)), n]`
-/

namespace A189633.P2184658211726855830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189632 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189633.P2184658211726855830

namespace A189633

/-- `lt[n*A189632(A028310(n)), n]` -/
def P2184658211726855830.Spec : Prop :=
  ∀ n, (P2184658211726855830.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P17573857084342576463

`record[n+1-A006190(a(A287528(n)))]` with `a(0)=1`
-/

namespace A189633.P17573857084342576463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - A006190 (f1 (A287528 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189633.P17573857084342576463

namespace A189633

/-- `record[n+1-A006190(a(A287528(n)))]` -/
def P17573857084342576463.Spec : Prop :=
  ∀ n, P17573857084342576463.a n = A189633 (n + 1)

end A189633

/-! ## A189633.P17698290272750253267

`lt[A287528(A028310(n)), 2*A057427(n)]`
-/

namespace A189633.P17698290272750253267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189633.P17698290272750253267

namespace A189633

/-- `lt[A287528(A028310(n)), 2*A057427(n)]` -/
def P17698290272750253267.Spec : Prop :=
  ∀ n, (P17698290272750253267.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P16382343636710276935

`record[A001057(A004396(A287529(n+1)))]`
-/

namespace A189633.P16382343636710276935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004396 (A287529 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189633.P16382343636710276935

namespace A189633

/-- `record[A001057(A004396(A287529(n+1)))]` -/
def P16382343636710276935.Spec : Prop :=
  ∀ n, P16382343636710276935.a n = A189633 (n + 1)

end A189633

/-! ## A189633.P5591434585532524348

`eq[2, A287524(3*(n+1))]+1`
-/

namespace A189633.P5591434585532524348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189633.P5591434585532524348

namespace A189633

/-- `eq[2, A287524(3*(n+1))]+1` -/
def P5591434585532524348.Spec : Prop :=
  ∀ n, (P5591434585532524348.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P10555222938596763241

`eq[2, A287524(A008486(n))]`
-/

namespace A189633.P10555222938596763241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189633.P10555222938596763241

namespace A189633

/-- `eq[2, A287524(A008486(n))]` -/
def P10555222938596763241.Spec : Prop :=
  ∀ n, (P10555222938596763241.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P18401965523360461577

`eq[2, A287524(A267528(2*n+1))]`
-/

namespace A189633.P18401965523360461577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A267528 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189633.P18401965523360461577

namespace A189633

/-- `eq[2, A287524(A267528(2*n+1))]` -/
def P18401965523360461577.Spec : Prop :=
  ∀ n, (P18401965523360461577.a n : ℤ) = A189633 (n + 1)

end A189633

/-! ## A189633.P8819666054725300657

`record[gcd(A189671(n+1), A287529(n+1))]`
-/

namespace A189633.P8819666054725300657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189671 (n + 1)) (A287529 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189633.P8819666054725300657

namespace A189633

/-- `record[gcd(A189671(n+1), A287529(n+1))]` -/
def P8819666054725300657.Spec : Prop :=
  ∀ n, (P8819666054725300657.a n : ℤ) = A189633 (n + 1)

end A189633

/-!
# A189634: Positions of 1 in A189632; complement of A189633.

The programs for A189634, the canonical program `A189634.P909356562777891474` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189634 has offset 1).

The definition of A189634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189634.P909356562777891474

`A287529(n+1)+2-A287528(n+1)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189634

/-- `A287529(n+1)+2-A287528(n+1)²` -/
def P909356562777891474.Spec : Prop :=
  ∀ n, P909356562777891474.a n = A189634 (n + 1)

theorem P909356562777891474.correct : P909356562777891474.Spec := by
  intro n
  simp only [A189634, Nat.add_sub_cancel]

end A189634

/-! ## A189634.P6045992210564479394

`A189728(n+1)+A287441(n+1)-A287529(n+1)`
-/

namespace A189634.P6045992210564479394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) + (A287441 (n + 1) - A287529 (n + 1))

end

end A189634.P6045992210564479394

namespace A189634

/-- `A189728(n+1)+A287441(n+1)-A287529(n+1)` -/
def P6045992210564479394.Spec : Prop :=
  ∀ n, P6045992210564479394.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P18203524913338015040

`3*(n+1)-A287528(A189669(2*n+1))`
-/

namespace A189634.P18203524913338015040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287528 (A189669 (2 * n + 1)).toNat

end

end A189634.P18203524913338015040

namespace A189634

/-- `3*(n+1)-A287528(A189669(2*n+1))` -/
def P18203524913338015040.Spec : Prop :=
  ∀ n, P18203524913338015040.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P1102516197233294323

`lt[0, A189632(n+1)]+1`
-/

namespace A189634.P1102516197233294323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189634.P1102516197233294323

namespace A189634

/-- `lt[0, A189632(n+1)]+1` -/
def P1102516197233294323.Spec : Prop :=
  ∀ n, (P1102516197233294323.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P8682212803638220810

`lt[1, A287524(n+1)]+1`
-/

namespace A189634.P8682212803638220810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189634.P8682212803638220810

namespace A189634

/-- `lt[1, A287524(n+1)]+1` -/
def P8682212803638220810.Spec : Prop :=
  ∀ n, (P8682212803638220810.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P12153936147099008231

`lt[1, A287528(n+1)]+1`
-/

namespace A189634.P12153936147099008231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189634.P12153936147099008231

namespace A189634

/-- `lt[1, A287528(n+1)]+1` -/
def P12153936147099008231.Spec : Prop :=
  ∀ n, (P12153936147099008231.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P5781896360436197886

`eq[1, a(A287524(n))-2]` with `a(0)=0, a(1)=5`
-/

namespace A189634.P5781896360436197886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (A287524 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189634.P5781896360436197886

namespace A189634

/-- `eq[1, a(A287524(n))-2]` -/
def P5781896360436197886.Spec : Prop :=
  ∀ n, (P5781896360436197886.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P3607131375716760950

`eq[0, A287526(n+1)%3]+1`
-/

namespace A189634.P3607131375716760950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287526 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189634.P3607131375716760950

namespace A189634

/-- `eq[0, A287526(n+1)%3]+1` -/
def P3607131375716760950.Spec : Prop :=
  ∀ n, (P3607131375716760950.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P3189805789400699748

`lt[0, A189632(A028310(n))]`
-/

namespace A189634.P3189805789400699748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189634.P3189805789400699748

namespace A189634

/-- `lt[0, A189632(A028310(n))]` -/
def P3189805789400699748.Spec : Prop :=
  ∀ n, (P3189805789400699748.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P14194910445143066609

`filter[A133259(n), A189632(#)]`
-/

namespace A189634.P14194910445143066609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P14194910445143066609

namespace A189634

/-- `filter[A133259(n), A189632(#)]` -/
def P14194910445143066609.Spec : Prop :=
  ∀ n, P14194910445143066609.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P18058020523176980294

`filter[A271830(n), A189632(#)]`
-/

namespace A189634.P18058020523176980294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P18058020523176980294

namespace A189634

/-- `filter[A271830(n), A189632(#)]` -/
def P18058020523176980294.Spec : Prop :=
  ∀ n, P18058020523176980294.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P3803971104248067238

`filter[A344180(n), A189632(#)]`
-/

namespace A189634.P3803971104248067238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P3803971104248067238

namespace A189634

/-- `filter[A344180(n), A189632(#)]` -/
def P3803971104248067238.Spec : Prop :=
  ∀ n, P3803971104248067238.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P17521192591557973069

`eq[1, A000010(a(A287524(n)))]` with `a(0)=5`
-/

namespace A189634.P17521192591557973069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189634.P17521192591557973069

namespace A189634

/-- `eq[1, A000010(a(A287524(n)))]` -/
def P17521192591557973069.Spec : Prop :=
  ∀ n, (P17521192591557973069.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P18249396583393080369

`eq[2, A000005(a(A287524(n)))]` with `a(0)=14`
-/

namespace A189634.P18249396583393080369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f2 =>
  A000005 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189634.P18249396583393080369

namespace A189634

/-- `eq[2, A000005(a(A287524(n)))]` -/
def P18249396583393080369.Spec : Prop :=
  ∀ n, (P18249396583393080369.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P6322020698697673025

`eq[15, A000041(a(A287524(n)))]` with `a(0)=4`
-/

namespace A189634.P6322020698697673025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000041 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189634.P6322020698697673025

namespace A189634

/-- `eq[15, A000041(a(A287524(n)))]` -/
def P6322020698697673025.Spec : Prop :=
  ∀ n, (P6322020698697673025.a n : ℤ) = A189634 (n + 1)

end A189634

/-! ## A189634.P15617388452501862851

`filter[A026137(n+1), A189632(#)]`
-/

namespace A189634.P15617388452501862851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P15617388452501862851

namespace A189634

/-- `filter[A026137(n+1), A189632(#)]` -/
def P15617388452501862851.Spec : Prop :=
  ∀ n, P15617388452501862851.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P9097186549457588624

`filter[A026227(n+1), A189632(#)]`
-/

namespace A189634.P9097186549457588624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P9097186549457588624

namespace A189634

/-- `filter[A026227(n+1), A189632(#)]` -/
def P9097186549457588624.Spec : Prop :=
  ∀ n, P9097186549457588624.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P11945939514797883185

`filter[A026232(n+1), A189632(#)]`
-/

namespace A189634.P11945939514797883185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P11945939514797883185

namespace A189634

/-- `filter[A026232(n+1), A189632(#)]` -/
def P11945939514797883185.Spec : Prop :=
  ∀ n, P11945939514797883185.a n = A189634 (n + 1)

end A189634

/-! ## A189634.P10361858302862195727

`filter[A032766(n+1), A189632(#)]`
-/

namespace A189634.P10361858302862195727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189632 (f1 j).toNat = 1) n)

end

end A189634.P10361858302862195727

namespace A189634

/-- `filter[A032766(n+1), A189632(#)]` -/
def P10361858302862195727.Spec : Prop :=
  ∀ n, P10361858302862195727.a n = A189634 (n + 1)

end A189634

/-!
# A189635: Partial sums of A189632.

The programs for A189635, the canonical program `A189635.P9372128624568086310` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189635 has offset 1).

The definition of A189635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189635.P9372128624568086310

`∑[A189632(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189635

/-- `∑[A189632(n+1)]` -/
def P9372128624568086310.Spec : Prop :=
  ∀ n, P9372128624568086310.a n = A189635 (n + 1)

theorem P9372128624568086310.correct : P9372128624568086310.Spec := by
  intro n
  simp only [A189635, Nat.add_sub_cancel]

end A189635

/-! ## A189635.P13869166013232717578

`∑[A189634(n+1)%3]`
-/

namespace A189635.P13869166013232717578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189634 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P13869166013232717578

namespace A189635

/-- `∑[A189634(n+1)%3]` -/
def P13869166013232717578.Spec : Prop :=
  ∀ n, P13869166013232717578.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P7044727152618028907

`∑[C(A287524(n+1), 2)]`
-/

namespace A189635.P7044727152618028907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287524 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P7044727152618028907

namespace A189635

/-- `∑[C(A287524(n+1), 2)]` -/
def P7044727152618028907.Spec : Prop :=
  ∀ n, (P7044727152618028907.a n : ℤ) = A189635 (n + 1)

end A189635

/-! ## A189635.P11603139988585461264

`∑[C(A287528(n+1), 2)]`
-/

namespace A189635.P11603139988585461264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287528 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P11603139988585461264

namespace A189635

/-- `∑[C(A287528(n+1), 2)]` -/
def P11603139988585461264.Spec : Prop :=
  ∀ n, (P11603139988585461264.a n : ℤ) = A189635 (n + 1)

end A189635

/-! ## A189635.P13905306976310827315

`∑[A287524(n+1)-A189723(n+1)]`
-/

namespace A189635.P13905306976310827315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1) - A189723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P13905306976310827315

namespace A189635

/-- `∑[A287524(n+1)-A189723(n+1)]` -/
def P13905306976310827315.Spec : Prop :=
  ∀ n, P13905306976310827315.a n = A189635 (n + 1)

theorem P13905306976310827315.correct : P13905306976310827315.Spec := by
  intro n
  simp only [A189635, Nat.add_sub_cancel, A189635.P13905306976310827315.f1, A189635.P13905306976310827315.a, A189635.P9372128624568086310.f1, A189635.P9372128624568086310.a, A189632, A189632.P15931714177452615149.a, A189723, A189723.P17700089988259517662.a, A287524, A287524.P2131839873874398650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189635

/-! ## A189635.P6109264663022669314

`∑[A287524(n+1)]-A189726(n+1)`
-/

namespace A189635.P6109264663022669314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189726 (n + 1)

end

end A189635.P6109264663022669314

namespace A189635

/-- `∑[A287524(n+1)]-A189726(n+1)` -/
def P6109264663022669314.Spec : Prop :=
  ∀ n, P6109264663022669314.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P17333205454158004707

`∑[A287528(n+1)!]-A000027(n+1)`
-/

namespace A189635.P17333205454158004707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000027 (n + 1)

end

end A189635.P17333205454158004707

namespace A189635

/-- `∑[A287528(n+1)!]-A000027(n+1)` -/
def P17333205454158004707.Spec : Prop :=
  ∀ n, P17333205454158004707.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P10218217528161599520

`∑[A080846(A189633(2*n+1))]`
-/

namespace A189635.P10218217528161599520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A189633 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P10218217528161599520

namespace A189635

/-- `∑[A080846(A189633(2*n+1))]` -/
def P10218217528161599520.Spec : Prop :=
  ∀ n, P10218217528161599520.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P7940939403262168884

`∑[A004396(A287529(n+1))]%(n+1)`
-/

namespace A189635.P7940939403262168884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A287529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A189635.P7940939403262168884

namespace A189635

/-- `∑[A004396(A287529(n+1))]%(n+1)` -/
def P7940939403262168884.Spec : Prop :=
  ∀ n, P7940939403262168884.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P15154111495304794351

`∑[A287526(3*(n+1))%3]`
-/

namespace A189635.P15154111495304794351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287526 (3 * (n + 1))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P15154111495304794351

namespace A189635

/-- `∑[A287526(3*(n+1))%3]` -/
def P15154111495304794351.Spec : Prop :=
  ∀ n, P15154111495304794351.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P17855525915975980561

`∑[A189628(A287526(3*n+1))]`
-/

namespace A189635.P17855525915975980561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A287526 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P17855525915975980561

namespace A189635

/-- `∑[A189628(A287526(3*n+1))]` -/
def P17855525915975980561.Spec : Prop :=
  ∀ n, P17855525915975980561.a n = A189635 (n + 1)

end A189635

/-! ## A189635.P13953625880916584808

`∑[A189628(A287529(A189669(2*n+1)))]`
-/

namespace A189635.P13953625880916584808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A287529 (A189669 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P13953625880916584808

namespace A189635

/-- `∑[A189628(A287529(A189669(2*n+1)))]` -/
def P13953625880916584808.Spec : Prop :=
  ∀ n, P13953625880916584808.a n = A189635 (n + 1)

end A189635

/-!
# A189636: Positions of 0 in A116178; complement of A189637.

The programs for A189636, the canonical program `A189636.P992378438989201092` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189636 has offset 1).

The definition of A189636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189636.P9623561964277080633

`record[(n/(xor(n, n+1)+1)+1)/((n+1)/3^val(n+1, 3))%3]`
-/

namespace A189636.P9623561964277080633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + 1) / (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189636.P9623561964277080633

namespace A189636

/-- `record[(n/(xor(n, n+1)+1)+1)/((n+1)/3^val(n+1, 3))%3]` -/
def P9623561964277080633.Spec : Prop :=
  ∀ n, P9623561964277080633.a n = (A189636 (n + 1) : ℚ)

end A189636

/-! ## A189636.P992378438989201092

`A138670(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189636

/-- `A138670(n)+1` -/
def P992378438989201092.Spec : Prop :=
  ∀ n, P992378438989201092.a n = A189636 (n + 1)

theorem P992378438989201092.correct : P992378438989201092.Spec := by
  intro n
  simp only [A189636, Nat.add_sub_cancel]

end A189636

/-! ## A189636.P12865424316145033244

`comp[A138671(n)]+1`
-/

namespace A189636.P12865424316145033244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189636.P12865424316145033244

namespace A189636

/-- `comp[A138671(n)]+1` -/
def P12865424316145033244.Spec : Prop :=
  ∀ n, (P12865424316145033244.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P4643898514977116248

`A106036(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A189636.P4643898514977116248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106036 (n - 1) + a (n - 1)

end

end A189636.P4643898514977116248

namespace A189636

/-- `A106036(n-1)+a(n-1)` -/
def P4643898514977116248.Spec : Prop :=
  ∀ n, P4643898514977116248.a n = A189636 (n + 1)

end A189636

/-! ## A189636.P7639768682707247977

`lt[A004488(2*n), A004488(2*n+1)]+1`
-/

namespace A189636.P7639768682707247977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189636.P7639768682707247977

namespace A189636

/-- `lt[A004488(2*n), A004488(2*n+1)]+1` -/
def P7639768682707247977.Spec : Prop :=
  ∀ n, (P7639768682707247977.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P16458487472291082143

`eq[0, A116178(n)]+1`
-/

namespace A189636.P16458487472291082143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189636.P16458487472291082143

namespace A189636

/-- `eq[0, A116178(n)]+1` -/
def P16458487472291082143.Spec : Prop :=
  ∀ n, (P16458487472291082143.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P4585671940768513081

`record[A026202(n+1)]`
-/

namespace A189636.P4585671940768513081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189636.P4585671940768513081

namespace A189636

/-- `record[A026202(n+1)]` -/
def P4585671940768513081.Spec : Prop :=
  ∀ n, P4585671940768513081.a n = A189636 (n + 1)

end A189636

/-! ## A189636.P10804456903870017015

`A026202(lt[n, A026202(n+1)]+1)`
-/

namespace A189636.P10804456903870017015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A189636.P10804456903870017015

namespace A189636

/-- `A026202(lt[n, A026202(n+1)]+1)` -/
def P10804456903870017015.Spec : Prop :=
  ∀ n, P10804456903870017015.a n = A189636 (n + 1)

end A189636

/-! ## A189636.P9315083312517075749

`A004482(A138670(n))`
-/

namespace A189636.P9315083312517075749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A138670 n).toNat

end

end A189636.P9315083312517075749

namespace A189636

/-- `A004482(A138670(n))` -/
def P9315083312517075749.Spec : Prop :=
  ∀ n, P9315083312517075749.a n = A189636 (n + 1)

end A189636

/-! ## A189636.P15340444340595487988

`eq[0, A060398(A286577(n))]`
-/

namespace A189636.P15340444340595487988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A286577 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189636.P15340444340595487988

namespace A189636

/-- `eq[0, A060398(A286577(n))]` -/
def P15340444340595487988.Spec : Prop :=
  ∀ n, (P15340444340595487988.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P11015812673459449609

`eq[1, Δ[A061295(n)]]+1`
-/

namespace A189636.P11015812673459449609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189636.P11015812673459449609

namespace A189636

/-- `eq[1, Δ[A061295(n)]]+1` -/
def P11015812673459449609.Spec : Prop :=
  ∀ n, (P11015812673459449609.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P14466458041651453279

`lt[gcd(2, A253887(n+1)), 2]+1`
-/

namespace A189636.P14466458041651453279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A253887 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189636.P14466458041651453279

namespace A189636

/-- `lt[gcd(2, A253887(n+1)), 2]+1` -/
def P14466458041651453279.Spec : Prop :=
  ∀ n, (P14466458041651453279.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P11182711485999355045

`eq[A026203(n+1), A117909(n)]+1`
-/

namespace A189636.P11182711485999355045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189636.P11182711485999355045

namespace A189636

/-- `eq[A026203(n+1), A117909(n)]+1` -/
def P11182711485999355045.Spec : Prop :=
  ∀ n, (P11182711485999355045.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P8292681683824630271

`eq[A026203(n+1), A133310(n)]+1`
-/

namespace A189636.P8292681683824630271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189636.P8292681683824630271

namespace A189636

/-- `eq[A026203(n+1), A133310(n)]+1` -/
def P8292681683824630271.Spec : Prop :=
  ∀ n, (P8292681683824630271.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P14265146390983686069

`eq[A026203(n+1), A269098(n)]+1`
-/

namespace A189636.P14265146390983686069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269098 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189636.P14265146390983686069

namespace A189636

/-- `eq[A026203(n+1), A269098(n)]+1` -/
def P14265146390983686069.Spec : Prop :=
  ∀ n, (P14265146390983686069.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P8013763649464860227

`eq[2, p?[A106036(n)]]+1`
-/

namespace A189636.P8013763649464860227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189636.P8013763649464860227

namespace A189636

/-- `eq[2, p?[A106036(n)]]+1` -/
def P8013763649464860227.Spec : Prop :=
  ∀ n, (P8013763649464860227.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P14346840985155227072

`lt[Δ[A343230(n)], 1]+1`
-/

namespace A189636.P14346840985155227072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A189636.P14346840985155227072

namespace A189636

/-- `lt[Δ[A343230(n)], 1]+1` -/
def P14346840985155227072.Spec : Prop :=
  ∀ n, (P14346840985155227072.a n : ℤ) = A189636 (n + 1)

end A189636

/-! ## A189636.P1209953041075453468

`lt[A343229(n), Δ[A343228(n)²]]+1`
-/

namespace A189636.P1209953041075453468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189636.P1209953041075453468

namespace A189636

/-- `lt[A343229(n), Δ[A343228(n)²]]+1` -/
def P1209953041075453468.Spec : Prop :=
  ∀ n, (P1209953041075453468.a n : ℤ) = A189636 (n + 1)

end A189636

/-!
# A189637: Positions of 1 in A116178; complement of A189636.

The programs for A189637, the canonical program `A189637.P3446270201682603484` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189637 has offset 1).

The definition of A189637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189637.P3446270201682603484

`A138671(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189637

/-- `A138671(n)+1` -/
def P3446270201682603484.Spec : Prop :=
  ∀ n, P3446270201682603484.a n = A189637 (n + 1)

theorem P3446270201682603484.correct : P3446270201682603484.Spec := by
  intro n
  simp only [A189637, Nat.add_sub_cancel]

end A189637

/-! ## A189637.P9725068469151132726

`∪[A305495(n+1), A305496(n+1)]`
-/

namespace A189637.P9725068469151132726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189637.P9725068469151132726

namespace A189637

/-- `∪[A305495(n+1), A305496(n+1)]` -/
def P9725068469151132726.Spec : Prop :=
  ∀ n, (P9725068469151132726.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P541613323491801637

`eq[A005812(n+1)+1, A005812(n)]+1`
-/

namespace A189637.P541613323491801637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189637.P541613323491801637

namespace A189637

/-- `eq[A005812(n+1)+1, A005812(n)]+1` -/
def P541613323491801637.Spec : Prop :=
  ∀ n, (P541613323491801637.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P14939779114239052980

`lt[A004488(2*n+1), A004488(2*n)]+1`
-/

namespace A189637.P14939779114239052980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P14939779114239052980

namespace A189637

/-- `lt[A004488(2*n+1), A004488(2*n)]+1` -/
def P14939779114239052980.Spec : Prop :=
  ∀ n, (P14939779114239052980.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P13424310841292878781

`lt[A300222(2*n), A300222(2*n+1)]+1`
-/

namespace A189637.P13424310841292878781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P13424310841292878781

namespace A189637

/-- `lt[A300222(2*n), A300222(2*n+1)]+1` -/
def P13424310841292878781.Spec : Prop :=
  ∀ n, (P13424310841292878781.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P18064187538899095277

`lt[0, A116178(n)]+1`
-/

namespace A189637.P18064187538899095277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189637.P18064187538899095277

namespace A189637

/-- `lt[0, A116178(n)]+1` -/
def P18064187538899095277.Spec : Prop :=
  ∀ n, (P18064187538899095277.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P1668874800226755728

`∑[runs[n-A061295(n)]]`
-/

namespace A189637.P1668874800226755728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061295 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189637.P1668874800226755728

namespace A189637

/-- `∑[runs[n-A061295(n)]]` -/
def P1668874800226755728.Spec : Prop :=
  ∀ n, (P1668874800226755728.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P15264861481713234975

`lt[Δ[A308364(n)], 0]+1`
-/

namespace A189637.P15264861481713234975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A189637.P15264861481713234975

namespace A189637

/-- `lt[Δ[A308364(n)], 0]+1` -/
def P15264861481713234975.Spec : Prop :=
  ∀ n, (P15264861481713234975.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P6834595418447728184

`eq[1, A265342(n)%3]+1`
-/

namespace A189637.P6834595418447728184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265342 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189637.P6834595418447728184

namespace A189637

/-- `eq[1, A265342(n)%3]+1` -/
def P6834595418447728184.Spec : Prop :=
  ∀ n, (P6834595418447728184.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P14727495381604911843

`∑[runs[A189638(n+1)]]+1`
-/

namespace A189637.P14727495381604911843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189637.P14727495381604911843

namespace A189637

/-- `∑[runs[A189638(n+1)]]+1` -/
def P14727495381604911843.Spec : Prop :=
  ∀ n, (P14727495381604911843.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P13776882348772294914

`lt[1, gcd(2, A253887(n+1))]+1`
-/

namespace A189637.P13776882348772294914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A253887 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P13776882348772294914

namespace A189637

/-- `lt[1, gcd(2, A253887(n+1))]+1` -/
def P13776882348772294914.Spec : Prop :=
  ∀ n, (P13776882348772294914.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P3620674652491821613

`A020725(A138671(n))`
-/

namespace A189637.P3620674652491821613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138671 n).toNat

end

end A189637.P3620674652491821613

namespace A189637

/-- `A020725(A138671(n))` -/
def P3620674652491821613.Spec : Prop :=
  ∀ n, P3620674652491821613.a n = A189637 (n + 1)

end A189637

/-! ## A189637.P7966121508304242840

`lt[A026166(n+1), A026203(n+1)]+1`
-/

namespace A189637.P7966121508304242840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P7966121508304242840

namespace A189637

/-- `lt[A026166(n+1), A026203(n+1)]+1` -/
def P7966121508304242840.Spec : Prop :=
  ∀ n, (P7966121508304242840.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P2468554897911248830

`lt[A026168(n+1), A026203(n+1)]+1`
-/

namespace A189637.P2468554897911248830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P2468554897911248830

namespace A189637

/-- `lt[A026168(n+1), A026203(n+1)]+1` -/
def P2468554897911248830.Spec : Prop :=
  ∀ n, (P2468554897911248830.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P9752639511092399511

`lt[A026183(n+1), A026203(n+1)]+1`
-/

namespace A189637.P9752639511092399511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P9752639511092399511

namespace A189637

/-- `lt[A026183(n+1), A026203(n+1)]+1` -/
def P9752639511092399511.Spec : Prop :=
  ∀ n, (P9752639511092399511.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P13679456595037323970

`lt[A026201(n+1), A026203(n+1)]+1`
-/

namespace A189637.P13679456595037323970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189637.P13679456595037323970

namespace A189637

/-- `lt[A026201(n+1), A026203(n+1)]+1` -/
def P13679456595037323970.Spec : Prop :=
  ∀ n, (P13679456595037323970.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P4157640296212705454

`eq[A026203(n+1), A051755(n+2)]+1`
-/

namespace A189637.P4157640296212705454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189637.P4157640296212705454

namespace A189637

/-- `eq[A026203(n+1), A051755(n+2)]+1` -/
def P4157640296212705454.Spec : Prop :=
  ∀ n, (P4157640296212705454.a n : ℤ) = A189637 (n + 1)

end A189637

/-! ## A189637.P5849445531926643005

`lt[Δ[A338247(n)], 0]+1`
-/

namespace A189637.P5849445531926643005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A189637.P5849445531926643005

namespace A189637

/-- `lt[Δ[A338247(n)], 0]+1` -/
def P5849445531926643005.Spec : Prop :=
  ∀ n, (P5849445531926643005.a n : ℤ) = A189637 (n + 1)

end A189637

/-!
# A189638: Partial sums of A116178.

The programs for A189638, the canonical program `A189638.P15037763071711005940` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189638 has offset 1).

The definition of A189638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189638.P1819205824701935534

`a(floor((n+2)/3)-1)+floor((n+1)/3)` with `a(0)=0`
-/

namespace A189638.P1819205824701935534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (⌊(n + 2 : ℚ) / 3⌋ - 1).toNat + ⌊(n + 1 : ℚ) / 3⌋

end

end A189638.P1819205824701935534

namespace A189638

/-- `a(floor((n+2)/3)-1)+floor((n+1)/3)` -/
def P1819205824701935534.Spec : Prop :=
  ∀ n, P1819205824701935534.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P15037763071711005940

`∑[A116178(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189638

/-- `∑[A116178(n)]` -/
def P15037763071711005940.Spec : Prop :=
  ∀ n, P15037763071711005940.a n = A189638 (n + 1)

theorem P15037763071711005940.correct : P15037763071711005940.Spec := by
  intro n
  simp only [A189638, Nat.add_sub_cancel]

end A189638

/-! ## A189638.P7344757272873516641

`∑[char[A138671(n)]]`
-/

namespace A189638.P7344757272873516641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P7344757272873516641

namespace A189638

/-- `∑[char[A138671(n)]]` -/
def P7344757272873516641.Spec : Prop :=
  ∀ n, (P7344757272873516641.a n : ℤ) = A189638 (n + 1)

end A189638

/-! ## A189638.P7274033813887589022

`∑[A265389(n+1)%2]`
-/

namespace A189638.P7274033813887589022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265389 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P7274033813887589022

namespace A189638

/-- `∑[A265389(n+1)%2]` -/
def P7274033813887589022.Spec : Prop :=
  ∀ n, P7274033813887589022.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P7956911139854093274

`∑[(1-A305490(n+1))²]`
-/

namespace A189638.P7956911139854093274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A305490 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P7956911139854093274

namespace A189638

/-- `∑[(1-A305490(n+1))²]` -/
def P7956911139854093274.Spec : Prop :=
  ∀ n, P7956911139854093274.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P9363349625439668135

`(n+1-A005812(n+1))/2`
-/

namespace A189638.P9363349625439668135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A005812 (n + 1) : ℚ) / 2

end

end A189638.P9363349625439668135

namespace A189638

/-- `(n+1-A005812(n+1))/2` -/
def P9363349625439668135.Spec : Prop :=
  ∀ n, P9363349625439668135.a n = (A189638 (n + 1) : ℚ)

end A189638

/-! ## A189638.P6141309146390626763

`∑[A047967(a(floor(n/3))+n%3)]` with `a(0)=0`
-/

namespace A189638.P6141309146390626763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A047967 (f1 ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P6141309146390626763

namespace A189638

/-- `∑[A047967(a(floor(n/3))+n%3)]` -/
def P6141309146390626763.Spec : Prop :=
  ∀ n, P6141309146390626763.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P18269871840179998483

`∑[floor(A004488(2*n)/A004488(2*n+1))]`
-/

namespace A189638.P18269871840179998483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004488 (2 * n) : ℚ) / (A004488 (2 * n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P18269871840179998483

namespace A189638

/-- `∑[floor(A004488(2*n)/A004488(2*n+1))]` -/
def P18269871840179998483.Spec : Prop :=
  ∀ n, P18269871840179998483.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P15406507047071444339

`∑[A080846(Δ[n²])]`
-/

namespace A189638.P15406507047071444339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P15406507047071444339

namespace A189638

/-- `∑[A080846(Δ[n²])]` -/
def P15406507047071444339.Spec : Prop :=
  ∀ n, P15406507047071444339.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P9310166034932576383

`∑[A189640(2*(n+1))]`
-/

namespace A189638.P9310166034932576383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P9310166034932576383

namespace A189638

/-- `∑[A189640(2*(n+1))]` -/
def P9310166034932576383.Spec : Prop :=
  ∀ n, P9310166034932576383.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P14955609045618775849

`∑[log2(A060236(2*n+1))]`
-/

namespace A189638.P14955609045618775849
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060236 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P14955609045618775849

namespace A189638

/-- `∑[log2(A060236(2*n+1))]` -/
def P14955609045618775849.Spec : Prop :=
  ∀ n, P14955609045618775849.a n = (A189638 (n + 1) : ℝ)

end A189638

/-! ## A189638.P2456099595184562169

`∑[1-A137893(2*n+1)]`
-/

namespace A189638.P2456099595184562169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P2456099595184562169

namespace A189638

/-- `∑[1-A137893(2*n+1)]` -/
def P2456099595184562169.Spec : Prop :=
  ∀ n, P2456099595184562169.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P3443897447733564396

`∑[1-A189673(2*(n+1))]`
-/

namespace A189638.P3443897447733564396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189673 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P3443897447733564396

namespace A189638

/-- `∑[1-A189673(2*(n+1))]` -/
def P3443897447733564396.Spec : Prop :=
  ∀ n, P3443897447733564396.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P14266848653488033537

`∑[A126759(2*n+1)%2]`
-/

namespace A189638.P14266848653488033537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126759 (2 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P14266848653488033537

namespace A189638

/-- `∑[A126759(2*n+1)%2]` -/
def P14266848653488033537.Spec : Prop :=
  ∀ n, P14266848653488033537.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P13876025442655982580

`A189672(2*n+1)-A189674(n+1)`
-/

namespace A189638.P13876025442655982580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (2 * n + 1) - A189674 (n + 1)

end

end A189638.P13876025442655982580

namespace A189638

/-- `A189672(2*n+1)-A189674(n+1)` -/
def P13876025442655982580.Spec : Prop :=
  ∀ n, P13876025442655982580.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P18219563019458413973

`∑[floor(A256293(2*n)/A256293(2*n+1))]`
-/

namespace A189638.P18219563019458413973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256293 (2 * n) : ℚ) / (A256293 (2 * n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P18219563019458413973

namespace A189638

/-- `∑[floor(A256293(2*n)/A256293(2*n+1))]` -/
def P18219563019458413973.Spec : Prop :=
  ∀ n, P18219563019458413973.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P859980130032702084

`∑[A080846(A001651(2*n+1))+A080846(2*n+1)]`
-/

namespace A189638.P859980130032702084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A001651 (2 * n + 1)).toNat + A080846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P859980130032702084

namespace A189638

/-- `∑[A080846(A001651(2*n+1))+A080846(2*n+1)]` -/
def P859980130032702084.Spec : Prop :=
  ∀ n, P859980130032702084.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P6007356299819091786

`∑[A137893(2*(2*n+1))]`
-/

namespace A189638.P6007356299819091786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P6007356299819091786

namespace A189638

/-- `∑[A137893(2*(2*n+1))]` -/
def P6007356299819091786.Spec : Prop :=
  ∀ n, P6007356299819091786.a n = A189638 (n + 1)

end A189638

/-! ## A189638.P2101587913456892195

`∑[log2(A204697(2*n+1))]`
-/

namespace A189638.P2101587913456892195
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A204697 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P2101587913456892195

namespace A189638

/-- `∑[log2(A204697(2*n+1))]` -/
def P2101587913456892195.Spec : Prop :=
  ∀ n, P2101587913456892195.a n = (A189638 (n + 1) : ℝ)

end A189638

/-!
# A189640: Fixed point of the morphism 0->001, 1->101.

The programs for A189640, the canonical program `A189640.P14910625713861930897` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189640 has offset 1).

The definition of A189640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189640.P5419026413079228181

`col(2*a(floor(n/3))+n-3*floor(n/3))` with `a(0)=0`
-/

namespace A189640.P5419026413079228181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triCol ((2 * a ⌊(n : ℚ) / 3⌋.toNat + n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋).toNat

end

end A189640.P5419026413079228181

namespace A189640

/-- `col(2*a(floor(n/3))+n-3*floor(n/3))` -/
def P5419026413079228181.Spec : Prop :=
  ∀ n, (P5419026413079228181.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P16868340272482722218

`char[A026179(n+2)]`
-/

namespace A189640.P16868340272482722218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189640.P16868340272482722218

namespace A189640

/-- `char[A026179(n+2)]` -/
def P16868340272482722218.Spec : Prop :=
  ∀ n, (P16868340272482722218.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P10084702907515632702

`char[lt[A327252(n), 0]]`
-/

namespace A189640.P10084702907515632702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189640.P10084702907515632702

namespace A189640

/-- `char[lt[A327252(n), 0]]` -/
def P10084702907515632702.Spec : Prop :=
  ∀ n, (P10084702907515632702.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P12804925483569616092

`val(dr(∑[A309677(n)]), 2)`
-/

namespace A189640.P12804925483569616092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A189640.P12804925483569616092

namespace A189640

/-- `val(dr(∑[A309677(n)]), 2)` -/
def P12804925483569616092.Spec : Prop :=
  ∀ n, (P12804925483569616092.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P3533682671718612410

`char[record[A026214(n+1)]]`
-/

namespace A189640.P3533682671718612410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189640.P3533682671718612410

namespace A189640

/-- `char[record[A026214(n+1)]]` -/
def P3533682671718612410.Spec : Prop :=
  ∀ n, (P3533682671718612410.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P15329310012096203984

`1-char[A026140(n+1)]`
-/

namespace A189640.P15329310012096203984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189640.P15329310012096203984

namespace A189640

/-- `1-char[A026140(n+1)]` -/
def P15329310012096203984.Spec : Prop :=
  ∀ n, P15329310012096203984.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P7011796342008863858

`char[A026232(n+1)-1]`
-/

namespace A189640.P7011796342008863858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189640.P7011796342008863858

namespace A189640

/-- `char[A026232(n+1)-1]` -/
def P7011796342008863858.Spec : Prop :=
  ∀ n, (P7011796342008863858.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P3026286793872713999

`floor(n/A026136(n+1))`
-/

namespace A189640.P3026286793872713999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A026136 (n + 1) : ℚ)⌋

end

end A189640.P3026286793872713999

namespace A189640

/-- `floor(n/A026136(n+1))` -/
def P3026286793872713999.Spec : Prop :=
  ∀ n, P3026286793872713999.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P6906201312466710294

`char[record[A026137(n+2)-1]]`
-/

namespace A189640.P6906201312466710294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189640.P6906201312466710294

namespace A189640

/-- `char[record[A026137(n+2)-1]]` -/
def P6906201312466710294.Spec : Prop :=
  ∀ n, (P6906201312466710294.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P7419745926217172288

`char[comp[A026138(n+1)-1]]`
-/

namespace A189640.P7419745926217172288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189640.P7419745926217172288

namespace A189640

/-- `char[comp[A026138(n+1)-1]]` -/
def P7419745926217172288.Spec : Prop :=
  ∀ n, (P7419745926217172288.a n : ℤ) = A189640 (n + 1)

end A189640

/-! ## A189640.P14910625713861930897

`A080846(a(a(n-1))+n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189640

/-- `A080846(a(a(n-1))+n)` -/
def P14910625713861930897.Spec : Prop :=
  ∀ n, P14910625713861930897.a n = A189640 (n + 1)

theorem P14910625713861930897.correct : P14910625713861930897.Spec := by
  intro n
  simp only [A189640, Nat.add_sub_cancel]

end A189640

/-! ## A189640.P6201098543715219125

`A080846(n-a(a(n-1)))` with `a(0)=0`
-/

namespace A189640.P6201098543715219125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080846 ((n : ℤ) - a (a (n - 1)).toNat).toNat

end

end A189640.P6201098543715219125

namespace A189640

/-- `A080846(n-a(a(n-1)))` -/
def P6201098543715219125.Spec : Prop :=
  ∀ n, P6201098543715219125.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P13595740088605835958

`A080846(A028310(n))`
-/

namespace A189640.P13595740088605835958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A028310 n).toNat

end

end A189640.P13595740088605835958

namespace A189640

/-- `A080846(A028310(n))` -/
def P13595740088605835958.Spec : Prop :=
  ∀ n, P13595740088605835958.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P1351128319687090549

`A080846(A143051(n+1))`
-/

namespace A189640.P1351128319687090549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A143051 (n + 1)).toNat

end

end A189640.P1351128319687090549

namespace A189640

/-- `A080846(A143051(n+1))` -/
def P1351128319687090549.Spec : Prop :=
  ∀ n, P1351128319687090549.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P5188251753380537991

`A080846(A004277(n)-n)`
-/

namespace A189640.P5188251753380537991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A004277 n - (n : ℤ)).toNat

end

end A189640.P5188251753380537991

namespace A189640

/-- `A080846(A004277(n)-n)` -/
def P5188251753380537991.Spec : Prop :=
  ∀ n, P5188251753380537991.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P7711404905862730728

`1-A189673(A028310(n)+1)`
-/

namespace A189640.P7711404905862730728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189673 (A028310 n + 1).toNat

end

end A189640.P7711404905862730728

namespace A189640

/-- `1-A189673(A028310(n)+1)` -/
def P7711404905862730728.Spec : Prop :=
  ∀ n, P7711404905862730728.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P252759334875044201

`A080846(A004275(n+1)-n)`
-/

namespace A189640.P252759334875044201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A189640.P252759334875044201

namespace A189640

/-- `A080846(A004275(n+1)-n)` -/
def P252759334875044201.Spec : Prop :=
  ∀ n, P252759334875044201.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P2808169225485117616

`A057427(n)-A189673(n+1)`
-/

namespace A189640.P2808169225485117616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A189673 (n + 1)

end

end A189640.P2808169225485117616

namespace A189640

/-- `A057427(n)-A189673(n+1)` -/
def P2808169225485117616.Spec : Prop :=
  ∀ n, P2808169225485117616.a n = A189640 (n + 1)

end A189640

/-! ## A189640.P3182685367182010396

`A100431(n)%A026183(n+1)`
-/

namespace A189640.P3182685367182010396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100431 n) (A026183 (n + 1))

end

end A189640.P3182685367182010396

namespace A189640

/-- `A100431(n)%A026183(n+1)` -/
def P3182685367182010396.Spec : Prop :=
  ∀ n, P3182685367182010396.a n = A189640 (n + 1)

end A189640

/-!
# A189641: Partial sums of A189640.

The programs for A189641, the canonical program `A189641.P10060285463731301186` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189641 has offset 1).

The definition of A189641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189641.P10060285463731301186

`a(floor((n+3)/3)-1)+floor((n+1)/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189641

/-- `a(floor((n+3)/3)-1)+floor((n+1)/3)` -/
def P10060285463731301186.Spec : Prop :=
  ∀ n, P10060285463731301186.a n = A189641 (n + 1)

theorem P10060285463731301186.correct : P10060285463731301186.Spec := by
  intro n
  simp only [A189641, Nat.add_sub_cancel]

end A189641

/-! ## A189641.P7944171904385878166

`round(a(floor(n/3))+n/3)` with `a(0)=0`
-/

namespace A189641.P7944171904385878166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 3⌋.toNat : ℚ) + (n : ℚ) / 3)

end

end A189641.P7944171904385878166

namespace A189641

/-- `round(a(floor(n/3))+n/3)` -/
def P7944171904385878166.Spec : Prop :=
  ∀ n, P7944171904385878166.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P3082896630057854777

`floor((n+1)/3)+a(floor(n/3))` with `a(0)=0`
-/

namespace A189641.P3082896630057854777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 3⌋ + a ⌊(n : ℚ) / 3⌋.toNat

end

end A189641.P3082896630057854777

namespace A189641

/-- `floor((n+1)/3)+a(floor(n/3))` -/
def P3082896630057854777.Spec : Prop :=
  ∀ n, P3082896630057854777.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P1660361899762457329

`∑[A189640(n+1)]`
-/

namespace A189641.P1660361899762457329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189641.P1660361899762457329

namespace A189641

/-- `∑[A189640(n+1)]` -/
def P1660361899762457329.Spec : Prop :=
  ∀ n, P1660361899762457329.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P3743370862932121396

`n-A189674(n+1)`
-/

namespace A189641.P3743370862932121396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A189674 (n + 1)

end

end A189641.P3743370862932121396

namespace A189641

/-- `n-A189674(n+1)` -/
def P3743370862932121396.Spec : Prop :=
  ∀ n, P3743370862932121396.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P12169747031443675386

`(n-A062756(n))/2`
-/

namespace A189641.P12169747031443675386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062756 n : ℚ) / 2

end

end A189641.P12169747031443675386

namespace A189641

/-- `(n-A062756(n))/2` -/
def P12169747031443675386.Spec : Prop :=
  ∀ n, P12169747031443675386.a n = (A189641 (n + 1) : ℚ)

end A189641

/-! ## A189641.P17112159530557432835

`∑[char[A026179(n+2)]]`
-/

namespace A189641.P17112159530557432835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189641.P17112159530557432835

namespace A189641

/-- `∑[char[A026179(n+2)]]` -/
def P17112159530557432835.Spec : Prop :=
  ∀ n, (P17112159530557432835.a n : ℤ) = A189641 (n + 1)

end A189641

/-! ## A189641.P7323007396331281307

`(n-log2(A120880(n)))/2`
-/

namespace A189641.P7323007396331281307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - Real.logb 2 (A120880 n : ℝ)) / 2

end

end A189641.P7323007396331281307

namespace A189641

/-- `(n-log2(A120880(n)))/2` -/
def P7323007396331281307.Spec : Prop :=
  ∀ n, P7323007396331281307.a n = (A189641 (n + 1) : ℝ)

end A189641

/-! ## A189641.P9961420623010559116

`n-∑[A189673(n+1)]`
-/

namespace A189641.P9961420623010559116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189641.P9961420623010559116

namespace A189641

/-- `n-∑[A189673(n+1)]` -/
def P9961420623010559116.Spec : Prop :=
  ∀ n, P9961420623010559116.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P1481090079673290894

`(n-val(A006047(n), 2))/2`
-/

namespace A189641.P1481090079673290894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.valuation (A006047 n).toNat 2 : ℤ) : ℚ) / 2

end

end A189641.P1481090079673290894

namespace A189641

/-- `(n-val(A006047(n), 2))/2` -/
def P1481090079673290894.Spec : Prop :=
  ∀ n, P1481090079673290894.a n = (A189641 (n + 1) : ℚ)

end A189641

/-! ## A189641.P4377617248399189267

`∑[1-char[A026140(n+1)]]`
-/

namespace A189641.P4377617248399189267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189641.P4377617248399189267

namespace A189641

/-- `∑[1-char[A026140(n+1)]]` -/
def P4377617248399189267.Spec : Prop :=
  ∀ n, P4377617248399189267.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P5899295609237812298

`∑[char[A026232(n+1)-1]]`
-/

namespace A189641.P5899295609237812298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189641.P5899295609237812298

namespace A189641

/-- `∑[char[A026232(n+1)-1]]` -/
def P5899295609237812298.Spec : Prop :=
  ∀ n, (P5899295609237812298.a n : ℤ) = A189641 (n + 1)

end A189641

/-! ## A189641.P13017960996307433455

`n-∑[char[A026225(n+1)]]`
-/

namespace A189641.P13017960996307433455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189641.P13017960996307433455

namespace A189641

/-- `n-∑[char[A026225(n+1)]]` -/
def P13017960996307433455.Spec : Prop :=
  ∀ n, P13017960996307433455.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P11505156852008897918

`A189672(A028310(n))`
-/

namespace A189641.P11505156852008897918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A028310 n).toNat

end

end A189641.P11505156852008897918

namespace A189641

/-- `A189672(A028310(n))` -/
def P11505156852008897918.Spec : Prop :=
  ∀ n, P11505156852008897918.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P6221170947439022369

`A189672(A147534(n+1))`
-/

namespace A189641.P6221170947439022369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A147534 (n + 1)).toNat

end

end A189641.P6221170947439022369

namespace A189641

/-- `A189672(A147534(n+1))` -/
def P6221170947439022369.Spec : Prop :=
  ∀ n, P6221170947439022369.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P3245090921504801552

`A081603(n)+A054861(n)`
-/

namespace A189641.P3245090921504801552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + A054861 n

end

end A189641.P3245090921504801552

namespace A189641

/-- `A081603(n)+A054861(n)` -/
def P3245090921504801552.Spec : Prop :=
  ∀ n, P3245090921504801552.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P10767869105061164470

`A189672(A000007(n)+n)`
-/

namespace A189641.P10767869105061164470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A000007 n + (n : ℤ)).toNat

end

end A189641.P10767869105061164470

namespace A189641

/-- `A189672(A000007(n)+n)` -/
def P10767869105061164470.Spec : Prop :=
  ∀ n, P10767869105061164470.a n = A189641 (n + 1)

end A189641

/-! ## A189641.P10245324109606858309

`A089792(n)-A160384(n)`
-/

namespace A189641.P10245324109606858309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n - A160384 n

end

end A189641.P10245324109606858309

namespace A189641

/-- `A089792(n)-A160384(n)` -/
def P10245324109606858309.Spec : Prop :=
  ∀ n, P10245324109606858309.a n = A189641 (n + 1)

end A189641

/-!
# A189642: Numerator of H(n+4) - H(n), where H(n) = Sum_{k=1..n} 1/k.

The programs for A189642, the canonical program `A189642.P401202128290837100` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189642 has offset 0).

The definition of A189642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189642.P401202128290837100

`A165676(n+1)/gcd(A165676(n+1), A165677(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189642

/-- `A165676(n+1)/gcd(A165676(n+1), A165677(n+1))` -/
def P401202128290837100.Spec : Prop :=
  ∀ n, P401202128290837100.a n = (A189642 n : ℚ)

end A189642

/-! ## A189642.P9491851732910160180

`A106610(2*n+5)*A229525(2*(n+1))`
-/

namespace A189642.P9491851732910160180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (2 * n + 5) * A229525 (2 * (n + 1))

end

end A189642.P9491851732910160180

namespace A189642

/-- `A106610(2*n+5)*A229525(2*(n+1))` -/
def P9491851732910160180.Spec : Prop :=
  ∀ n, P9491851732910160180.a n = A189642 n

end A189642

/-! ## A189642.P3526374449500699026

`A005408(A000096(n+1))*A106610(2*n+5)`
-/

namespace A189642.P3526374449500699026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000096 (n + 1)).toNat * A106610 (2 * n + 5)

end

end A189642.P3526374449500699026

namespace A189642

/-- `A005408(A000096(n+1))*A106610(2*n+5)` -/
def P3526374449500699026.Spec : Prop :=
  ∀ n, P3526374449500699026.a n = A189642 n

end A189642

/-! ## A189642.P17524210524517540511

`A106610(A165676(n+1)/2)`
-/

namespace A189642.P17524210524517540511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (SequenceMachineLib.roundAway ((A165676 (n + 1) : ℚ) / 2)).toNat

end

end A189642.P17524210524517540511

namespace A189642

/-- `A106610(A165676(n+1)/2)` -/
def P17524210524517540511.Spec : Prop :=
  ∀ n, P17524210524517540511.a n = A189642 n

end A189642

/-! ## A189642.P8287242176933838064

`A106610(Δ[A000096((n+2)²-3)])`
-/

namespace A189642.P8287242176933838064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((n + 2) ^ 2 - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (f1 (n + 1) - f1 n).toNat

end

end A189642.P8287242176933838064

namespace A189642

/-- `A106610(Δ[A000096((n+2)²-3)])` -/
def P8287242176933838064.Spec : Prop :=
  ∀ n, P8287242176933838064.a n = A189642 n

end A189642

/-!
# A189643: Number of n X n array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189643, there is no canonical definition to state claims against.
-/

/-! ## A189643.P4089207174871518766

`A189650(∑[4*n]+1)`
-/

namespace A189643.P4089207174871518766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189643.P4089207174871518766

/-!
# A189644: Number of n X 3 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189644, the canonical program `A189644.P10343819040725453852` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189644 has offset 1).

The definition of A189644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189644.P10343819040725453852

`ogf((3+6x-16x^2+16x^3)/(1-9x+6x^2+8x^3-16x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189644

/-- `ogf((3+6x-16x^2+16x^3)/(1-9x+6x^2+8x^3-16x^4))` -/
def P10343819040725453852.Spec : Prop :=
  ∀ n, P10343819040725453852.a n = A189644 (n + 1)

theorem P10343819040725453852.correct : P10343819040725453852.Spec := by
  intro n
  simp only [A189644, Nat.add_sub_cancel]

end A189644

/-! ## A189644.P10814794816023700020

`sqrt(A264005(2*n+1))`
-/

namespace A189644.P10814794816023700020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264005 (2 * n + 1) : ℝ)

end

end A189644.P10814794816023700020

namespace A189644

/-- `sqrt(A264005(2*n+1))` -/
def P10814794816023700020.Spec : Prop :=
  ∀ n, P10814794816023700020.a n = (A189644 (n + 1) : ℝ)

end A189644

/-! ## A189644.P12688470653275677163

`A189650(∑[n+3]+1)`
-/

namespace A189644.P12688470653275677163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189644.P12688470653275677163

namespace A189644

/-- `A189650(∑[n+3]+1)` -/
def P12688470653275677163.Spec : Prop :=
  ∀ n, P12688470653275677163.a n = A189644 (n + 1)

end A189644

/-! ## A189644.P3130715813142269381

`or(1, A189650(Δ[A008778(n)]))`
-/

namespace A189644.P3130715813142269381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189650 (f1 (n + 1) - f1 n).toNat)

end

end A189644.P3130715813142269381

namespace A189644

/-- `or(1, A189650(Δ[A008778(n)]))` -/
def P3130715813142269381.Spec : Prop :=
  ∀ n, P3130715813142269381.a n = A189644 (n + 1)

end A189644

/-! ## A189644.P15494611646331044383

`A189650(Δ[A008778(n)])%A189649(n+1)`
-/

namespace A189644.P15494611646331044383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189650 (f1 (n + 1) - f1 n).toNat) (A189649 (n + 1))

end

end A189644.P15494611646331044383

namespace A189644

/-- `A189650(Δ[A008778(n)])%A189649(n+1)` -/
def P15494611646331044383.Spec : Prop :=
  ∀ n, P15494611646331044383.a n = A189644 (n + 1)

end A189644

/-!
# A189645: Number of n X 4 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189645, there is no canonical definition to state claims against.
-/

/-! ## A189645.P17723224668224459142

`sqrt(A264006(2*n+1))`
-/

namespace A189645.P17723224668224459142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264006 (2 * n + 1) : ℝ)

end

end A189645.P17723224668224459142

/-! ## A189645.P8340181679043504331

`A189650(A141214(n+1))`
-/

namespace A189645.P8340181679043504331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A141214 (n + 1)).toNat

end

end A189645.P8340181679043504331

/-! ## A189645.P4856038411334422738

`A189650(A155212(n)+5)`
-/

namespace A189645.P4856038411334422738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A155212 n + 5).toNat

end

end A189645.P4856038411334422738

/-! ## A189645.P14391930195853768865

`A189650(A056000(n)+7)`
-/

namespace A189645.P14391930195853768865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A056000 n + 7).toNat

end

end A189645.P14391930195853768865

/-! ## A189645.P12333096256819727916

`A189650(A052905(n+1)+2)`
-/

namespace A189645.P12333096256819727916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A052905 (n + 1) + 2).toNat

end

end A189645.P12333096256819727916

/-!
# A189646: Number of nX5 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189646, there is no canonical definition to state claims against.
-/

/-! ## A189646.P16700824859420178416

`A189650(Δ[A264443(n)])`
-/

namespace A189646.P16700824859420178416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (f1 (n + 1) - f1 n).toNat

end

end A189646.P16700824859420178416

/-! ## A189646.P9802011907549465182

`A189650(eq[4, A193592(n)])`
-/

namespace A189646.P9802011907549465182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189646.P9802011907549465182

/-! ## A189646.P16566924557950791852

`A189650(eq[4, A049286(n+1)])`
-/

namespace A189646.P16566924557950791852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189646.P16566924557950791852

/-! ## A189646.P11262403899558629419

`A189650(eq[5, A200370(n+1)])`
-/

namespace A189646.P11262403899558629419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189646.P11262403899558629419

/-! ## A189646.P2356348744369250432

`A189650(A264443(n+1)-A264443(n))`
-/

namespace A189646.P2356348744369250432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A264443 (n + 1) - A264443 n).toNat

end

end A189646.P2356348744369250432

/-!
# A189647: Number of n X 6 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189647, there is no canonical definition to state claims against.
-/

/-! ## A189647.P13762983597082685739

`A189650(eq[5, A193592(n)])`
-/

namespace A189647.P13762983597082685739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189647.P13762983597082685739

/-! ## A189647.P16904050988424951915

`A189650(A055998(n+4)-2)`
-/

namespace A189647.P16904050988424951915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A055998 (n + 4) - 2).toNat

end

end A189647.P16904050988424951915

/-! ## A189647.P9047713851124377546

`A189650(A056000(n+2)+5)`
-/

namespace A189647.P9047713851124377546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A056000 (n + 2) + 5).toNat

end

end A189647.P9047713851124377546

/-! ## A189647.P14406176092409239716

`A189650(eq[6, A200370(n+1)])`
-/

namespace A189647.P14406176092409239716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189647.P14406176092409239716

/-! ## A189647.P16429858878456874127

`A189650(eq[7, A049286(n+1)])`
-/

namespace A189647.P16429858878456874127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189647.P16429858878456874127

/-!
# A189648: Number of nX7 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189648, there is no canonical definition to state claims against.
-/

/-! ## A189648.P15848039028534256071

`A189650(Δ[A023551(n+2)])`
-/

namespace A189648.P15848039028534256071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (f1 (n + 1) - f1 n).toNat

end

end A189648.P15848039028534256071

/-! ## A189648.P3665091746421253004

`A189650(eq[7, A200370(n+1)])`
-/

namespace A189648.P3665091746421253004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189648.P3665091746421253004

/-! ## A189648.P9460537904596000761

`A189650(eq[6, A243060(n+1)])`
-/

namespace A189648.P9460537904596000761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189648.P9460537904596000761

/-!
# A189649: Number of n X 8 array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189649, there is no canonical definition to state claims against.
-/

/-! ## A189649.P6863778186908460040

`A189650(eq[7, A193592(n)])`
-/

namespace A189649.P6863778186908460040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189649.P6863778186908460040

/-!
# A189650: T(n,k) = Number of n X k array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189650, there is no canonical definition to state claims against.
-/

/-! ## A189650.P4785610551500124861

`A237859(A032555(n+1))-(n+1)`
-/

namespace A189650.P4785610551500124861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A032555 (n + 1)).toNat - (n + 1 : ℤ)

end

end A189650.P4785610551500124861

/-! ## A189650.P3576663779203040420

`A237859(A032557(n+1))-(n+1)`
-/

namespace A189650.P3576663779203040420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A032557 (n + 1)).toNat - (n + 1 : ℤ)

end

end A189650.P3576663779203040420

/-! ## A189650.P17807115327924200232

`A237859(A032559(n+1))-(n+1)`
-/

namespace A189650.P17807115327924200232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237859 (A032559 (n + 1)).toNat - (n + 1 : ℤ)

end

end A189650.P17807115327924200232

/-! ## A189650.P13383880739539153461

`A202802(n+1)-A001221(A174810(n))`
-/

namespace A189650.P13383880739539153461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (n + 1) - A001221 (A174810 n).toNat

end

end A189650.P13383880739539153461

/-! ## A189650.P6558432801389800081

`A295416(n+1)-A001221(A174810(n))`
-/

namespace A189650.P6558432801389800081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (n + 1) - A001221 (A174810 n).toNat

end

end A189650.P6558432801389800081

/-!
# A189651: Number of 3Xn array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189651, there is no canonical definition to state claims against.
-/

/-! ## A189651.P17536625826777356905

`A189650(∑[n+2]+4)`
-/

namespace A189651.P17536625826777356905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189651.P17536625826777356905

/-! ## A189651.P5137312433414917609

`(n%2)^(n%2)*A189650(A167614(n+1))`
-/

namespace A189651.P5137312433414917609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ (n % 2) : ℕ) : ℤ) * A189650 (A167614 (n + 1)).toNat

end

end A189651.P5137312433414917609

/-! ## A189651.P10140938588427045429

`gcd(A000038(n), A189650(A167614(n+1)))`
-/

namespace A189651.P10140938588427045429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A189650 (A167614 (n + 1)).toNat)

end

end A189651.P10140938588427045429

/-! ## A189651.P3520838219081654971

`or(A000007(n), A189650(A167614(n+1)))`
-/

namespace A189651.P3520838219081654971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A189650 (A167614 (n + 1)).toNat)

end

end A189651.P3520838219081654971

/-! ## A189651.P7631982907913945964

`A007318(round(1/(n+1)))*A189650(A167614(n+1))`
-/

namespace A189651.P7631982907913945964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A189650 (A167614 (n + 1)).toNat

end

end A189651.P7631982907913945964

/-!
# A189652: Number of 4Xn array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189652, there is no canonical definition to state claims against.
-/

/-! ## A189652.P17013410531985183375

`A189650(A141214(n)+7)`
-/

namespace A189652.P17013410531985183375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A141214 n + 7).toNat

end

end A189652.P17013410531985183375

/-! ## A189652.P15223346294599343336

`A189650(A052905(n)+9)`
-/

namespace A189652.P15223346294599343336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A052905 n + 9).toNat

end

end A189652.P15223346294599343336

/-! ## A189652.P17020890751055824541

`A189650(A055999(n)+10)`
-/

namespace A189652.P17020890751055824541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A055999 n + 10).toNat

end

end A189652.P17020890751055824541

/-! ## A189652.P13840628357475463288

`A189650(Δ[A008778(n)]+6)`
-/

namespace A189652.P13840628357475463288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (f1 (n + 1) - f1 n + 6).toNat

end

end A189652.P13840628357475463288

/-! ## A189652.P339919353365502732

`A189650(A167614(n+2)+1)`
-/

namespace A189652.P339919353365502732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A167614 (n + 2) + 1).toNat

end

end A189652.P339919353365502732

/-!
# A189653: Number of 5Xn array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189653, there is no canonical definition to state claims against.
-/

/-! ## A189653.P598157288532896248

`A189650(A167499(n+3))`
-/

namespace A189653.P598157288532896248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A167499 (n + 3)).toNat

end

end A189653.P598157288532896248

/-! ## A189653.P14455597912149553539

`A189650(A155212(n)+13)`
-/

namespace A189653.P14455597912149553539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A155212 n + 13).toNat

end

end A189653.P14455597912149553539

/-! ## A189653.P15331241550469989660

`A189650(A056000(n)+15)`
-/

namespace A189653.P15331241550469989660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A056000 n + 15).toNat

end

end A189653.P15331241550469989660

/-! ## A189653.P10918503709056204264

`A189650(eq[7, A066657(n)])`
-/

namespace A189653.P10918503709056204264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189653.P10918503709056204264

/-! ## A189653.P16980975227369542052

`A189650(A133263(n+4)+3)`
-/

namespace A189653.P16980975227369542052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A133263 (n + 4) + 3).toNat

end

end A189653.P16980975227369542052

/-!
# A189654: Number of 6Xn array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189654, there is no canonical definition to state claims against.
-/

/-! ## A189654.P8819301383531134532

`A189650(A056115(n)+21)`
-/

namespace A189654.P8819301383531134532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A056115 n + 21).toNat

end

end A189654.P8819301383531134532

/-! ## A189654.P11261303438253173820

`A189650(A167499(n+4)+1)`
-/

namespace A189654.P11261303438253173820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A167499 (n + 4) + 1).toNat

end

end A189654.P11261303438253173820

/-! ## A189654.P5754240234869438092

`A189650(A155212(n+1)+14)`
-/

namespace A189654.P5754240234869438092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A155212 (n + 1) + 14).toNat

end

end A189654.P5754240234869438092

/-! ## A189654.P15468046362983742494

`A189650(eq[6, A130270(n+1)])`
-/

namespace A189654.P15468046362983742494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189654.P15468046362983742494

/-! ## A189654.P17363926791434484137

`A189650(eq[7, A131818(n+1)])`
-/

namespace A189654.P17363926791434484137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189654.P17363926791434484137

/-!
# A189655: Number of 7Xn array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189655, there is no canonical definition to state claims against.
-/

/-! ## A189655.P2984598080839878310

`A189650(eq[8, A131818(n+1)])`
-/

namespace A189655.P2984598080839878310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189655.P2984598080839878310

/-!
# A189656: Number of 8 X n array permutations with each element moving zero or one space horizontally, diagonally or antidiagonally.

The programs for A189656, there is no canonical definition to state claims against.
-/

/-! ## A189656.P1533420227174116530

`A189650(eq[9, A131818(n+1)])`
-/

namespace A189656.P1533420227174116530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189656.P1533420227174116530

/-! ## A189656.P5716563427255746430

`A189650(Δ[A023551(n+2)]+14)`
-/

namespace A189656.P5716563427255746430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (f1 (n + 1) - f1 n + 14).toNat

end

end A189656.P5716563427255746430

/-! ## A189656.P17921341263170194060

`A189650(A000124(n+8)-(n+1))`
-/

namespace A189656.P17921341263170194060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189650 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A189656.P17921341263170194060

/-!
# A189658: Positions of 0 in A064990; complement of A189659.

The programs for A189658, the canonical program `A189658.P15755839361929138990` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189658 has offset 1).

The definition of A189658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189658.P3003961514002551726

`lt[A004488(n)%2, 1]+1`
-/

namespace A189658.P3003961514002551726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189658.P3003961514002551726

namespace A189658

/-- `lt[A004488(n)%2, 1]+1` -/
def P3003961514002551726.Spec : Prop :=
  ∀ n, (P3003961514002551726.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P16442293896210440116

`comp[A189659(1+n)-1]+1`
-/

namespace A189658.P16442293896210440116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189659 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189658.P16442293896210440116

namespace A189658

/-- `comp[A189659(1+n)-1]+1` -/
def P16442293896210440116.Spec : Prop :=
  ∀ n, (P16442293896210440116.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P14893459520459232548

`comp[A004488(2*n+1)]+1`
-/

namespace A189658.P14893459520459232548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189658.P14893459520459232548

namespace A189658

/-- `comp[A004488(2*n+1)]+1` -/
def P14893459520459232548.Spec : Prop :=
  ∀ n, (P14893459520459232548.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P7413665865444463930

`eq[1, and(1, A004488(3*n)+1)]+1`
-/

namespace A189658.P7413665865444463930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 (3 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189658.P7413665865444463930

namespace A189658

/-- `eq[1, and(1, A004488(3*n)+1)]+1` -/
def P7413665865444463930.Spec : Prop :=
  ∀ n, (P7413665865444463930.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P15755839361929138990

`record[A138950(A006047(n))+n]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189658

/-- `record[A138950(A006047(n))+n]` -/
def P15755839361929138990.Spec : Prop :=
  ∀ n, P15755839361929138990.a n = A189658 (n + 1)

theorem P15755839361929138990.correct : P15755839361929138990.Spec := by
  intro n
  simp only [A189658, Nat.add_sub_cancel]

end A189658

/-! ## A189658.P8774356441474286142

`eq[0, A064990(n)]+1`
-/

namespace A189658.P8774356441474286142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189658.P8774356441474286142

namespace A189658

/-- `eq[0, A064990(n)]+1` -/
def P8774356441474286142.Spec : Prop :=
  ∀ n, (P8774356441474286142.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P1996865197263140215

`eq[0, and(1, A081603(n))]+1`
-/

namespace A189658.P1996865197263140215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081603 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189658.P1996865197263140215

namespace A189658

/-- `eq[0, and(1, A081603(n))]+1` -/
def P1996865197263140215.Spec : Prop :=
  ∀ n, (P1996865197263140215.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P10754237119476398869

`record[A258228(A117592(n))+n]`
-/

namespace A189658.P10754237119476398869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (A117592 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189658.P10754237119476398869

namespace A189658

/-- `record[A258228(A117592(n))+n]` -/
def P10754237119476398869.Spec : Prop :=
  ∀ n, P10754237119476398869.a n = A189658 (n + 1)

end A189658

/-! ## A189658.P17868428234733295475

`eq[A000035(n), A189718(n)]+1`
-/

namespace A189658.P17868428234733295475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189658.P17868428234733295475

namespace A189658

/-- `eq[A000035(n), A189718(n)]+1` -/
def P17868428234733295475.Spec : Prop :=
  ∀ n, (P17868428234733295475.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P11964848135020891578

`lt[n²*A081603(n)%2, A000203(n+1)]+1`
-/

namespace A189658.P11964848135020891578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * Int.tmod (A081603 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189658.P11964848135020891578

namespace A189658

/-- `lt[n²*A081603(n)%2, A000203(n+1)]+1` -/
def P11964848135020891578.Spec : Prop :=
  ∀ n, (P11964848135020891578.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P17557885741576033359

`eq[1, A000034(A004488(n))]+1`
-/

namespace A189658.P17557885741576033359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189658.P17557885741576033359

namespace A189658

/-- `eq[1, A000034(A004488(n))]+1` -/
def P17557885741576033359.Spec : Prop :=
  ∀ n, (P17557885741576033359.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P6968707946350052708

`eq[3, A020639(A004488(A122709(n)))]`
-/

namespace A189658.P6968707946350052708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004488 (A122709 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189658.P6968707946350052708

namespace A189658

/-- `eq[3, A020639(A004488(A122709(n)))]` -/
def P6968707946350052708.Spec : Prop :=
  ∀ n, (P6968707946350052708.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P6610261779539249327

`eq[A059841(n), A163539(A023717(n))]`
-/

namespace A189658.P6610261779539249327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189658.P6610261779539249327

namespace A189658

/-- `eq[A059841(n), A163539(A023717(n))]` -/
def P6610261779539249327.Spec : Prop :=
  ∀ n, (P6610261779539249327.a n : ℤ) = A189658 (n + 1)

end A189658

/-! ## A189658.P15093108197864184832

`record[A117910(A278997(2*n+1))]`
-/

namespace A189658.P15093108197864184832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A278997 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189658.P15093108197864184832

namespace A189658

/-- `record[A117910(A278997(2*n+1))]` -/
def P15093108197864184832.Spec : Prop :=
  ∀ n, P15093108197864184832.a n = A189658 (n + 1)

end A189658

/-!
# A189659: Positions of 1 in A064990; complement of A189658.

The programs for A189659, the canonical program `A189659.P14804931919716832985` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189659 has offset 1).

The definition of A189659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189659.P6543233704159355815

`eq[1, and(1, A004488(n))]+1`
-/

namespace A189659.P6543233704159355815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P6543233704159355815

namespace A189659

/-- `eq[1, and(1, A004488(n))]+1` -/
def P6543233704159355815.Spec : Prop :=
  ∀ n, (P6543233704159355815.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P4292613420322084226

`comp[A004488(2*n)]+1`
-/

namespace A189659.P4292613420322084226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189659.P4292613420322084226

namespace A189659

/-- `comp[A004488(2*n)]+1` -/
def P4292613420322084226.Spec : Prop :=
  ∀ n, (P4292613420322084226.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P9346555957177946054

`eq[2, and(2, A128173(n))]+1`
-/

namespace A189659.P9346555957177946054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A128173 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P9346555957177946054

namespace A189659

/-- `eq[2, and(2, A128173(n))]+1` -/
def P9346555957177946054.Spec : Prop :=
  ∀ n, (P9346555957177946054.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P14804931919716832985

`eq[2, A122864(A006047(n))]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189659

/-- `eq[2, A122864(A006047(n))]+1` -/
def P14804931919716832985.Spec : Prop :=
  ∀ n, (P14804931919716832985.a n : ℤ) = A189659 (n + 1)

theorem P14804931919716832985.correct : P14804931919716832985.Spec := by
  intro n
  simp only [A189659, Nat.add_sub_cancel]

end A189659

/-! ## A189659.P16073862391132330558

`eq[1, A081603(n)%2]+1`
-/

namespace A189659.P16073862391132330558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P16073862391132330558

namespace A189659

/-- `eq[1, A081603(n)%2]+1` -/
def P16073862391132330558.Spec : Prop :=
  ∀ n, (P16073862391132330558.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P3491570843421927429

`eq[2, A101825(A117592(n))]+1`
-/

namespace A189659.P3491570843421927429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (A117592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P3491570843421927429

namespace A189659

/-- `eq[2, A101825(A117592(n))]+1` -/
def P3491570843421927429.Spec : Prop :=
  ∀ n, (P3491570843421927429.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P9372488702800353940

`lt[0, A064990(n)]+1`
-/

namespace A189659.P9372488702800353940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189659.P9372488702800353940

namespace A189659

/-- `lt[0, A064990(n)]+1` -/
def P9372488702800353940.Spec : Prop :=
  ∀ n, (P9372488702800353940.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P9266413290748350788

`eq[A059841(n), A189718(n)]+1`
-/

namespace A189659.P9266413290748350788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189659.P9266413290748350788

namespace A189659

/-- `eq[A059841(n), A189718(n)]+1` -/
def P9266413290748350788.Spec : Prop :=
  ∀ n, (P9266413290748350788.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P2149403498741008679

`eq[1, A000035(A004488(n))]+1`
-/

namespace A189659.P2149403498741008679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P2149403498741008679

namespace A189659

/-- `eq[1, A000035(A004488(n))]+1` -/
def P2149403498741008679.Spec : Prop :=
  ∀ n, (P2149403498741008679.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P5528534102317345674

`eq[1, A000035(A137305(n))]+1`
-/

namespace A189659.P5528534102317345674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P5528534102317345674

namespace A189659

/-- `eq[1, A000035(A137305(n))]+1` -/
def P5528534102317345674.Spec : Prop :=
  ∀ n, (P5528534102317345674.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P377902001740762758

`eq[A059841(n), A163538(A023717(n))]`
-/

namespace A189659.P377902001740762758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189659.P377902001740762758

namespace A189659

/-- `eq[A059841(n), A163538(A023717(n))]` -/
def P377902001740762758.Spec : Prop :=
  ∀ n, (P377902001740762758.a n : ℤ) = A189659 (n + 1)

end A189659

/-! ## A189659.P8996152105018065722

`A028242(2*comp[A004488(2*n)])`
-/

namespace A189659.P8996152105018065722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189659.P8996152105018065722

namespace A189659

/-- `A028242(2*comp[A004488(2*n)])` -/
def P8996152105018065722.Spec : Prop :=
  ∀ n, P8996152105018065722.a n = A189659 (n + 1)

end A189659

/-! ## A189659.P12651563644102799605

`eq[2, A136693(n)]+1`
-/

namespace A189659.P12651563644102799605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P12651563644102799605

namespace A189659

/-- `eq[2, A136693(n)]+1` -/
def P12651563644102799605.Spec : Prop :=
  ∀ n, (P12651563644102799605.a n : ℤ) = A189659 (n + 1)

end A189659

/-!
# A189660: Partial sums of A064990.

The programs for A189660, the canonical program `A189660.P4547749914452871862` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189660 has offset 1).

The definition of A189660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189660.P4547749914452871862

`∑[A064990(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189660

/-- `∑[A064990(n)]` -/
def P4547749914452871862.Spec : Prop :=
  ∀ n, P4547749914452871862.a n = A189660 (n + 1)

theorem P4547749914452871862.correct : P4547749914452871862.Spec := by
  intro n
  simp only [A189660, Nat.add_sub_cancel]

end A189660

/-! ## A189660.P1576040545100986465

`∑[A004488(n)%2]`
-/

namespace A189660.P1576040545100986465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P1576040545100986465

namespace A189660

/-- `∑[A004488(n)%2]` -/
def P1576040545100986465.Spec : Prop :=
  ∀ n, P1576040545100986465.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P12211591340917016051

`∑[A081603(n)%2]`
-/

namespace A189660.P12211591340917016051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P12211591340917016051

namespace A189660

/-- `∑[A081603(n)%2]` -/
def P12211591340917016051.Spec : Prop :=
  ∀ n, P12211591340917016051.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P6401625390355629511

`∑[A120855(n)%2]`
-/

namespace A189660.P6401625390355629511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120855 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P6401625390355629511

namespace A189660

/-- `∑[A120855(n)%2]` -/
def P6401625390355629511.Spec : Prop :=
  ∀ n, P6401625390355629511.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P8708907710586195479

`∑[A300956(n)%2]`
-/

namespace A189660.P8708907710586195479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300956 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P8708907710586195479

namespace A189660

/-- `∑[A300956(n)%2]` -/
def P8708907710586195479.Spec : Prop :=
  ∀ n, P8708907710586195479.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P5016285754677996022

`∑[and(1, A256184(n))]`
-/

namespace A189660.P5016285754677996022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256184 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P5016285754677996022

namespace A189660

/-- `∑[and(1, A256184(n))]` -/
def P5016285754677996022.Spec : Prop :=
  ∀ n, P5016285754677996022.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P13592291876631877219

`∑[and(1, A274107(n))]`
-/

namespace A189660.P13592291876631877219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A274107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P13592291876631877219

namespace A189660

/-- `∑[and(1, A274107(n))]` -/
def P13592291876631877219.Spec : Prop :=
  ∀ n, P13592291876631877219.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P11603702299147729508

`∑[char[A004488(or(1, n))]]`
-/

namespace A189660.P11603702299147729508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P11603702299147729508

namespace A189660

/-- `∑[char[A004488(or(1, n))]]` -/
def P11603702299147729508.Spec : Prop :=
  ∀ n, (P11603702299147729508.a n : ℤ) = A189660 (n + 1)

end A189660

/-! ## A189660.P17368172795636013622

`∑[A061436(n+1)%2]`
-/

namespace A189660.P17368172795636013622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061436 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P17368172795636013622

namespace A189660

/-- `∑[A061436(n+1)%2]` -/
def P17368172795636013622.Spec : Prop :=
  ∀ n, P17368172795636013622.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P2992544419937039145

`∑[and(1, A004488(3*n))]`
-/

namespace A189660.P2992544419937039145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P2992544419937039145

namespace A189660

/-- `∑[and(1, A004488(3*n))]` -/
def P2992544419937039145.Spec : Prop :=
  ∀ n, P2992544419937039145.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P2063631187949372042

`∑[and(1, A117966(n)+n)]`
-/

namespace A189660.P2063631187949372042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117966 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P2063631187949372042

namespace A189660

/-- `∑[and(1, A117966(n)+n)]` -/
def P2063631187949372042.Spec : Prop :=
  ∀ n, P2063631187949372042.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P9491764210772358040

`∑[and(1, A327252(n)+n)]`
-/

namespace A189660.P9491764210772358040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327252 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P9491764210772358040

namespace A189660

/-- `∑[and(1, A327252(n)+n)]` -/
def P9491764210772358040.Spec : Prop :=
  ∀ n, P9491764210772358040.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P18240859700638314149

`∑[and(1, A333773(n)+n)]`
-/

namespace A189660.P18240859700638314149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A333773 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P18240859700638314149

namespace A189660

/-- `∑[and(1, A333773(n)+n)]` -/
def P18240859700638314149.Spec : Prop :=
  ∀ n, P18240859700638314149.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P12649027134404664314

`∑[char[A004488(2*n+1)]]`
-/

namespace A189660.P12649027134404664314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P12649027134404664314

namespace A189660

/-- `∑[char[A004488(2*n+1)]]` -/
def P12649027134404664314.Spec : Prop :=
  ∀ n, (P12649027134404664314.a n : ℤ) = A189660 (n + 1)

end A189660

/-! ## A189660.P627249722739573691

`∑[1-char[A004488(2*n)]]`
-/

namespace A189660.P627249722739573691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P627249722739573691

namespace A189660

/-- `∑[1-char[A004488(2*n)]]` -/
def P627249722739573691.Spec : Prop :=
  ∀ n, P627249722739573691.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P13190103194556809282

`∑[and(A057427(n), A081603(n))]`
-/

namespace A189660.P13190103194556809282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A081603 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P13190103194556809282

namespace A189660

/-- `∑[and(A057427(n), A081603(n))]` -/
def P13190103194556809282.Spec : Prop :=
  ∀ n, P13190103194556809282.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P1398791230512500155

`∑[A000035(A004488(n))]`
-/

namespace A189660.P1398791230512500155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P1398791230512500155

namespace A189660

/-- `∑[A000035(A004488(n))]` -/
def P1398791230512500155.Spec : Prop :=
  ∀ n, P1398791230512500155.a n = A189660 (n + 1)

end A189660

/-! ## A189660.P2997081935245447940

`∑[char[A357616(2*n+1)]]`
-/

namespace A189660.P2997081935245447940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P2997081935245447940

namespace A189660

/-- `∑[char[A357616(2*n+1)]]` -/
def P2997081935245447940.Spec : Prop :=
  ∀ n, (P2997081935245447940.a n : ℤ) = A189660 (n + 1)

end A189660

/-! ## A189660.P831538151467723430

`∑[A160383(eq[0, A160382(n)])%2]`
-/

namespace A189660.P831538151467723430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160383 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P831538151467723430

namespace A189660

/-- `∑[A160383(eq[0, A160382(n)])%2]` -/
def P831538151467723430.Spec : Prop :=
  ∀ n, P831538151467723430.a n = A189660 (n + 1)

end A189660

/-!
# A189661: Fixed point of the morphism 0->010, 1->10 starting with 0.

The programs for A189661, the canonical program `A189661.P11079895270296849068` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189661 has offset 1).

The definition of A189661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189661.P6030466310728002234

`char[comp[ceil(ϕ*n)]]`
-/

namespace A189661.P6030466310728002234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189661.P6030466310728002234

namespace A189661

/-- `char[comp[ceil(ϕ*n)]]` -/
def P6030466310728002234.Spec : Prop :=
  ∀ n, (P6030466310728002234.a n : ℤ) = A189661 (n + 1)

end A189661

/-! ## A189661.P9167134805021477179

`xor(1, char[ceil(ϕ*n)])`
-/

namespace A189661.P9167134805021477179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A189661.P9167134805021477179

namespace A189661

/-- `xor(1, char[ceil(ϕ*n)])` -/
def P9167134805021477179.Spec : Prop :=
  ∀ n, (P9167134805021477179.a n : ℤ) = A189661 (n + 1)

end A189661

/-! ## A189661.P14095621367831207074

`row(1-char[ceil(ϕ*n)])`
-/

namespace A189661.P14095621367831207074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A189661.P14095621367831207074

namespace A189661

/-- `row(1-char[ceil(ϕ*n)])` -/
def P14095621367831207074.Spec : Prop :=
  ∀ n, (P14095621367831207074.a n : ℤ) = A189661 (n + 1)

end A189661

/-! ## A189661.P12187437929751489573

`Δ[floor(ϕ*(n-1))]%2`
-/

namespace A189661.P12187437929751489573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A189661.P12187437929751489573

namespace A189661

/-- `Δ[floor(ϕ*(n-1))]%2` -/
def P12187437929751489573.Spec : Prop :=
  ∀ n, P12187437929751489573.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P3469049196780217256

`and(1, Δ[floor(ϕ*(n-1))])`
-/

namespace A189661.P3469049196780217256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A189661.P3469049196780217256

namespace A189661

/-- `and(1, Δ[floor(ϕ*(n-1))])` -/
def P3469049196780217256.Spec : Prop :=
  ∀ n, P3469049196780217256.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P8462611637706551932

`2-runs[ceil((n-1)/ϕ)]`
-/

namespace A189661.P8462611637706551932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ)

end

end A189661.P8462611637706551932

namespace A189661

/-- `2-runs[ceil((n-1)/ϕ)]` -/
def P8462611637706551932.Spec : Prop :=
  ∀ n, P8462611637706551932.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P1003890222023755357

`2-Δ[floor(ϕ*(n-1))]!`
-/

namespace A189661.P1003890222023755357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A189661.P1003890222023755357

namespace A189661

/-- `2-Δ[floor(ϕ*(n-1))]!` -/
def P1003890222023755357.Spec : Prop :=
  ∀ n, P1003890222023755357.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P11711927929050342611

`Δ[gcd(2, floor(ϕ*(n-1)))]²`
-/

namespace A189661.P11711927929050342611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A189661.P11711927929050342611

namespace A189661

/-- `Δ[gcd(2, floor(ϕ*(n-1)))]²` -/
def P11711927929050342611.Spec : Prop :=
  ∀ n, P11711927929050342611.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P1773133607197286410

`C(2, Δ[floor((n-1)*ϕ²)])`
-/

namespace A189661.P1773133607197286410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A189661.P1773133607197286410

namespace A189661

/-- `C(2, Δ[floor((n-1)*ϕ²)])` -/
def P1773133607197286410.Spec : Prop :=
  ∀ n, (P1773133607197286410.a n : ℤ) = A189661 (n + 1)

end A189661

/-! ## A189661.P15457700647885845876

`a(Δ[floor(ϕ*(n-1))])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A189661.P15457700647885845876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A189661.P15457700647885845876

namespace A189661

/-- `a(Δ[floor(ϕ*(n-1))])` -/
def P15457700647885845876.Spec : Prop :=
  ∀ n, (P15457700647885845876.a n : ℤ) = A189661 (n + 1)

end A189661

/-! ## A189661.P12999384685614748424

`1-C(Δ[floor(ϕ*(n-1))], 2)`
-/

namespace A189661.P12999384685614748424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (f1 (n + 1) - f1 n).toNat 2 : ℤ)

end

end A189661.P12999384685614748424

namespace A189661

/-- `1-C(Δ[floor(ϕ*(n-1))], 2)` -/
def P12999384685614748424.Spec : Prop :=
  ∀ n, P12999384685614748424.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P12042863643128851787

`1-and(1, Δ[floor((n-1)/ϕ)])`
-/

namespace A189661.P12042863643128851787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A189661.P12042863643128851787

namespace A189661

/-- `1-and(1, Δ[floor((n-1)/ϕ)])` -/
def P12042863643128851787.Spec : Prop :=
  ∀ n, P12042863643128851787.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P4565195403756457042

`1-a(Δ[floor((n-1)/ϕ)])` with `a(0)=0`
-/

namespace A189661.P4565195403756457042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (f1 (n + 1) - f1 n).toNat

end

end A189661.P4565195403756457042

namespace A189661

/-- `1-a(Δ[floor((n-1)/ϕ)])` -/
def P4565195403756457042.Spec : Prop :=
  ∀ n, P4565195403756457042.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P10866340133546070319

`2-gcd(2*n, Δ[floor(ϕ*(n-1))])`
-/

namespace A189661.P10866340133546070319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd (2 * n : ℤ) (f1 (n + 1) - f1 n) : ℤ)

end

end A189661.P10866340133546070319

namespace A189661

/-- `2-gcd(2*n, Δ[floor(ϕ*(n-1))])` -/
def P10866340133546070319.Spec : Prop :=
  ∀ n, P10866340133546070319.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P9228115393619268881

`Δ[lcm(2, 2*n)-floor(ϕ*(n-1))]`
-/

namespace A189661.P9228115393619268881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189661.P9228115393619268881

namespace A189661

/-- `Δ[lcm(2, 2*n)-floor(ϕ*(n-1))]` -/
def P9228115393619268881.Spec : Prop :=
  ∀ n, P9228115393619268881.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P3334822641082361135

`gcd(n, n+1)-Δ[floor((n-1)/ϕ)]`
-/

namespace A189661.P3334822641082361135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) - (f1 (n + 1) - f1 n)

end

end A189661.P3334822641082361135

namespace A189661

/-- `gcd(n, n+1)-Δ[floor((n-1)/ϕ)]` -/
def P3334822641082361135.Spec : Prop :=
  ∀ n, P3334822641082361135.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P7423786508053463375

`Δ[C(n+1, n)-floor((n-1)/ϕ)]`
-/

namespace A189661.P7423786508053463375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) - ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189661.P7423786508053463375

namespace A189661

/-- `Δ[C(n+1, n)-floor((n-1)/ϕ)]` -/
def P7423786508053463375.Spec : Prop :=
  ∀ n, P7423786508053463375.a n = A189661 (n + 1)

end A189661

/-! ## A189661.P11079895270296849068

`A003849(abs(2-n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189661

/-- `A003849(abs(2-n))` -/
def P11079895270296849068.Spec : Prop :=
  ∀ n, P11079895270296849068.a n = A189661 (n + 1)

theorem P11079895270296849068.correct : P11079895270296849068.Spec := by
  intro n
  simp only [A189661, Nat.add_sub_cancel]

end A189661

/-! ## A189661.P12934844442248166602

`1-char[A004956(n)]`
-/

namespace A189661.P12934844442248166602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189661.P12934844442248166602

namespace A189661

/-- `1-char[A004956(n)]` -/
def P12934844442248166602.Spec : Prop :=
  ∀ n, P12934844442248166602.a n = A189661 (n + 1)

end A189661

/-!
# A189662: Positions of 0 in A189661; complement of A026356.

The programs for A189662, the canonical program `A189662.P5985364805556277292` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189662 has offset 1).

The definition of A189662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189662.P18072772120191657461

`1+ceil(ϕ*n)`
-/

namespace A189662.P18072772120191657461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A189662.P18072772120191657461

namespace A189662

/-- `1+ceil(ϕ*n)` -/
def P18072772120191657461.Spec : Prop :=
  ∀ n, P18072772120191657461.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P17958317271573374024

`abs(xor(ceil(ϕ*n), -1))`
-/

namespace A189662.P17958317271573374024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌈Real.goldenRatio * (n : ℝ)⌉ (-1)|

end

end A189662.P17958317271573374024

namespace A189662

/-- `abs(xor(ceil(ϕ*n), -1))` -/
def P17958317271573374024.Spec : Prop :=
  ∀ n, P17958317271573374024.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P8592179971836814251

`-xor(-1, ceil(ϕ*n))`
-/

namespace A189662.P8592179971836814251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A189662.P8592179971836814251

namespace A189662

/-- `-xor(-1, ceil(ϕ*n))` -/
def P8592179971836814251.Spec : Prop :=
  ∀ n, P8592179971836814251.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P15682307701180259627

`ceil(1/acot(ceil(ϕ*n)))`
-/

namespace A189662.P15682307701180259627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (⌈Real.goldenRatio * (n : ℝ)⌉ : ℝ)⌉

end

end A189662.P15682307701180259627

namespace A189662

/-- `ceil(1/acot(ceil(ϕ*n)))` -/
def P15682307701180259627.Spec : Prop :=
  ∀ n, P15682307701180259627.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P17261817795046822777

`∑[runs[floor((n-1)/ϕ)]]`
-/

namespace A189662.P17261817795046822777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189662.P17261817795046822777

namespace A189662

/-- `∑[runs[floor((n-1)/ϕ)]]` -/
def P17261817795046822777.Spec : Prop :=
  ∀ n, (P17261817795046822777.a n : ℤ) = A189662 (n + 1)

end A189662

/-! ## A189662.P477994595588726780

`ceil(C(n+1, n)+n/ϕ)`
-/

namespace A189662.P477994595588726780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) + (n : ℝ) / Real.goldenRatio⌉

end

end A189662.P477994595588726780

namespace A189662

/-- `ceil(C(n+1, n)+n/ϕ)` -/
def P477994595588726780.Spec : Prop :=
  ∀ n, P477994595588726780.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P4769948985628454185

`ceil(a(n-1)/ϕ²+n+1)` with `a(0)=1`
-/

namespace A189662.P4769948985628454185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.goldenRatio ^ 2 + (n + 1 : ℝ)⌉

end

end A189662.P4769948985628454185

namespace A189662

/-- `ceil(a(n-1)/ϕ²+n+1)` -/
def P4769948985628454185.Spec : Prop :=
  ∀ n, P4769948985628454185.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P8349436046327630013

`floor(a(n-1)/ϕ²+n+2)` with `a(0)=1`
-/

namespace A189662.P8349436046327630013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio ^ 2 + (n + 2 : ℝ)⌋

end

end A189662.P8349436046327630013

namespace A189662

/-- `floor(a(n-1)/ϕ²+n+2)` -/
def P8349436046327630013.Spec : Prop :=
  ∀ n, P8349436046327630013.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P5985364805556277292

`ceil(n²/a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189662

/-- `ceil(n²/a(n-1)+n+1)` -/
def P5985364805556277292.Spec : Prop :=
  ∀ n, P5985364805556277292.a n = A189662 (n + 1)

theorem P5985364805556277292.correct : P5985364805556277292.Spec := by
  intro n
  simp only [A189662, Nat.add_sub_cancel]

end A189662

/-! ## A189662.P2518217956896474689

`floor((2-ϕ)*a(n-1)+n+2)` with `a(0)=1`
-/

namespace A189662.P2518217956896474689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 - Real.goldenRatio) * (a (n - 1) : ℝ) + (n + 2 : ℝ)⌋

end

end A189662.P2518217956896474689

namespace A189662

/-- `floor((2-ϕ)*a(n-1)+n+2)` -/
def P2518217956896474689.Spec : Prop :=
  ∀ n, P2518217956896474689.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P15981321501985571486

`floor(n/(n/a(n-1)+1)+2+n)` with `a(0)=1`
-/

namespace A189662.P15981321501985571486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / ((n : ℚ) / (a (n - 1) : ℚ) + 1) + 2 + (n : ℚ)⌋

end

end A189662.P15981321501985571486

namespace A189662

/-- `floor(n/(n/a(n-1)+1)+2+n)` -/
def P15981321501985571486.Spec : Prop :=
  ∀ n, P15981321501985571486.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P7138974303997235834

`∑[A059426(abs(3-n))]`
-/

namespace A189662.P7138974303997235834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189662.P7138974303997235834

namespace A189662

/-- `∑[A059426(abs(3-n))]` -/
def P7138974303997235834.Spec : Prop :=
  ∀ n, P7138974303997235834.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P4743396139176832020

`∑[char[A026351(n)]+1]`
-/

namespace A189662.P4743396139176832020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189662.P4743396139176832020

namespace A189662

/-- `∑[char[A026351(n)]+1]` -/
def P4743396139176832020.Spec : Prop :=
  ∀ n, (P4743396139176832020.a n : ℤ) = A189662 (n + 1)

end A189662

/-! ## A189662.P12129154485404351526

`∑[A189479(n+1)+1]`
-/

namespace A189662.P12129154485404351526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189662.P12129154485404351526

namespace A189662

/-- `∑[A189479(n+1)+1]` -/
def P12129154485404351526.Spec : Prop :=
  ∀ n, P12129154485404351526.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P11091357953994008633

`∑[2-A289034(n+1)]`
-/

namespace A189662.P11091357953994008633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A289034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189662.P11091357953994008633

namespace A189662

/-- `∑[2-A289034(n+1)]` -/
def P11091357953994008633.Spec : Prop :=
  ∀ n, P11091357953994008633.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P10734325984805627900

`comp[A026355(n)-1+n]`
-/

namespace A189662.P10734325984805627900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189662.P10734325984805627900

namespace A189662

/-- `comp[A026355(n)-1+n]` -/
def P10734325984805627900.Spec : Prop :=
  ∀ n, (P10734325984805627900.a n : ℤ) = A189662 (n + 1)

end A189662

/-! ## A189662.P7116322247848348621

`comp[comp[A004957(n+1)]+n]`
-/

namespace A189662.P7116322247848348621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189662.P7116322247848348621

namespace A189662

/-- `comp[comp[A004957(n+1)]+n]` -/
def P7116322247848348621.Spec : Prop :=
  ∀ n, (P7116322247848348621.a n : ℤ) = A189662 (n + 1)

end A189662

/-! ## A189662.P815693923352298157

`floor(gcd(2, A000010(n+2))+ϕ*n)`
-/

namespace A189662.P815693923352298157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd 2 (A000010 (n + 2)) : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A189662.P815693923352298157

namespace A189662

/-- `floor(gcd(2, A000010(n+2))+ϕ*n)` -/
def P815693923352298157.Spec : Prop :=
  ∀ n, P815693923352298157.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P14785584571849486509

`floor(A000032(C(2, n+2))+ϕ*n)`
-/

namespace A189662.P14785584571849486509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (Nat.choose 2 (n + 2)) : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A189662.P14785584571849486509

namespace A189662

/-- `floor(A000032(C(2, n+2))+ϕ*n)` -/
def P14785584571849486509.Spec : Prop :=
  ∀ n, P14785584571849486509.a n = A189662 (n + 1)

end A189662

/-! ## A189662.P5012111512417554402

`∪[A022413(n), A026352(n)]`
-/

namespace A189662.P5012111512417554402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189662.P5012111512417554402

namespace A189662

/-- `∪[A022413(n), A026352(n)]` -/
def P5012111512417554402.Spec : Prop :=
  ∀ n, (P5012111512417554402.a n : ℤ) = A189662 (n + 1)

end A189662

/-!
# A189663: Partial sums of A189661.

The programs for A189663, the canonical program `A189663.P2701264429035756382` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189663 has offset 1).

The definition of A189663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189663.P2701264429035756382

`2*n-floor(n*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189663

/-- `2*n-floor(n*(1+sqrt(5))/2)` -/
def P2701264429035756382.Spec : Prop :=
  ∀ n, P2701264429035756382.a n = A189663 (n + 1)

theorem P2701264429035756382.correct : P2701264429035756382.Spec := by
  intro n
  simp only [A189663, Nat.add_sub_cancel]

end A189663

/-! ## A189663.P17471536005056903740

`lcm(2, 2*n)-floor(ϕ*n)`
-/

namespace A189663.P17471536005056903740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A189663.P17471536005056903740

namespace A189663

/-- `lcm(2, 2*n)-floor(ϕ*n)` -/
def P17471536005056903740.Spec : Prop :=
  ∀ n, P17471536005056903740.a n = A189663 (n + 1)

theorem P17471536005056903740.correct : P17471536005056903740.Spec := by
  intro n
  simp only [A189663, Nat.add_sub_cancel, A189663.P17471536005056903740.a, A189663.P2701264429035756382.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A189663

/-! ## A189663.P16706951784562690468

`n-ceil(ϕ*n)%(n+1)`
-/

namespace A189663.P16706951784562690468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ (n + 1 : ℤ)

end

end A189663.P16706951784562690468

namespace A189663

/-- `n-ceil(ϕ*n)%(n+1)` -/
def P16706951784562690468.Spec : Prop :=
  ∀ n, P16706951784562690468.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P12328328601149621843

`gcd(n, 2*n)-floor(n/ϕ)`
-/

namespace A189663.P12328328601149621843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℤ) - ⌊(n : ℝ) / Real.goldenRatio⌋

end

end A189663.P12328328601149621843

namespace A189663

/-- `gcd(n, 2*n)-floor(n/ϕ)` -/
def P12328328601149621843.Spec : Prop :=
  ∀ n, P12328328601149621843.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P4223839055510839175

`ceil((a(a(n-1))+n)/3)` with `a(0)=0`
-/

namespace A189663.P4223839055510839175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (a (n - 1)).toNat + (n : ℤ) : ℚ) / 3⌉

end

end A189663.P4223839055510839175

namespace A189663

/-- `ceil((a(a(n-1))+n)/3)` -/
def P4223839055510839175.Spec : Prop :=
  ∀ n, P4223839055510839175.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P6390484414896988996

`-floor((a(n-1)-n)/ϕ)` with `a(0)=0`
-/

namespace A189663.P6390484414896988996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌊(a (n - 1) - (n : ℤ) : ℝ) / Real.goldenRatio⌋

end

end A189663.P6390484414896988996

namespace A189663

/-- `-floor((a(n-1)-n)/ϕ)` -/
def P6390484414896988996.Spec : Prop :=
  ∀ n, P6390484414896988996.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P5214918282265462166

`(2*n+1)%(floor(ϕ*n)+1)`
-/

namespace A189663.P5214918282265462166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (⌊Real.goldenRatio * (n : ℝ)⌋ + 1)

end

end A189663.P5214918282265462166

namespace A189663

/-- `(2*n+1)%(floor(ϕ*n)+1)` -/
def P5214918282265462166.Spec : Prop :=
  ∀ n, P5214918282265462166.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P17054467211313479181

`xor(1, 2*n+1)-floor(ϕ*n)`
-/

namespace A189663.P17054467211313479181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 1) : ℤ) - ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A189663.P17054467211313479181

namespace A189663

/-- `xor(1, 2*n+1)-floor(ϕ*n)` -/
def P17054467211313479181.Spec : Prop :=
  ∀ n, P17054467211313479181.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P8654658088703315844

`floor((n-a(n-1))/ϕ)+1` with `a(0)=0`
-/

namespace A189663.P8654658088703315844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n : ℤ) - a (n - 1) : ℝ) / Real.goldenRatio⌋ + 1

end

end A189663.P8654658088703315844

namespace A189663

/-- `floor((n-a(n-1))/ϕ)+1` -/
def P8654658088703315844.Spec : Prop :=
  ∀ n, P8654658088703315844.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P13649146033279069654

`floor((ϕ-(a(n-1)-n))/ϕ)` with `a(0)=0`
-/

namespace A189663.P13649146033279069654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.goldenRatio - (a (n - 1) - (n : ℤ) : ℝ)) / Real.goldenRatio⌋

end

end A189663.P13649146033279069654

namespace A189663

/-- `floor((ϕ-(a(n-1)-n))/ϕ)` -/
def P13649146033279069654.Spec : Prop :=
  ∀ n, P13649146033279069654.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P8260998120026083726

`∑[and(1, char[floor(ϕ*n)+1+n])]`
-/

namespace A189663.P8260998120026083726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P8260998120026083726

namespace A189663

/-- `∑[and(1, char[floor(ϕ*n)+1+n])]` -/
def P8260998120026083726.Spec : Prop :=
  ∀ n, (P8260998120026083726.a n : ℤ) = A189663 (n + 1)

end A189663

/-! ## A189663.P14522128225004322813

`floor((a(a(n-1))+2+n)/3)` with `a(0)=0`
-/

namespace A189663.P14522128225004322813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat + 2 + (n : ℤ) : ℚ) / 3⌋

end

end A189663.P14522128225004322813

namespace A189663

/-- `floor((a(a(n-1))+2+n)/3)` -/
def P14522128225004322813.Spec : Prop :=
  ∀ n, P14522128225004322813.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P1395007858820862221

`∑[char[A026352(n)]]`
-/

namespace A189663.P1395007858820862221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P1395007858820862221

namespace A189663

/-- `∑[char[A026352(n)]]` -/
def P1395007858820862221.Spec : Prop :=
  ∀ n, (P1395007858820862221.a n : ℤ) = A189663 (n + 1)

end A189663

/-! ## A189663.P12129311961051988708

`∑[A189661(n+1)]`
-/

namespace A189663.P12129311961051988708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P12129311961051988708

namespace A189663

/-- `∑[A189661(n+1)]` -/
def P12129311961051988708.Spec : Prop :=
  ∀ n, P12129311961051988708.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P374490140256712709

`∑[1-A287523(n+1)]`
-/

namespace A189663.P374490140256712709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P374490140256712709

namespace A189663

/-- `∑[1-A287523(n+1)]` -/
def P374490140256712709.Spec : Prop :=
  ∀ n, P374490140256712709.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P15228163457263027742

`∑[char[A188010(2*n+1)]]`
-/

namespace A189663.P15228163457263027742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P15228163457263027742

namespace A189663

/-- `∑[char[A188010(2*n+1)]]` -/
def P15228163457263027742.Spec : Prop :=
  ∀ n, (P15228163457263027742.a n : ℤ) = A189663 (n + 1)

end A189663

/-! ## A189663.P960295792405870645

`∑[char[A188188(2*n+1)]]`
-/

namespace A189663.P960295792405870645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189663.P960295792405870645

namespace A189663

/-- `∑[char[A188188(2*n+1)]]` -/
def P960295792405870645.Spec : Prop :=
  ∀ n, (P960295792405870645.a n : ℤ) = A189663 (n + 1)

end A189663

/-! ## A189663.P8456750181209092824

`A110654(A195172(n))`
-/

namespace A189663.P8456750181209092824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A195172 n).toNat

end

end A189663.P8456750181209092824

namespace A189663

/-- `A110654(A195172(n))` -/
def P8456750181209092824.Spec : Prop :=
  ∀ n, P8456750181209092824.a n = A189663 (n + 1)

end A189663

/-! ## A189663.P7676210482012107098

`A005206(A022342(n+1-A060143(n)))`
-/

namespace A189663.P7676210482012107098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A022342 ((n + 1 : ℤ) - A060143 n).toNat).toNat

end

end A189663.P7676210482012107098

namespace A189663

/-- `A005206(A022342(n+1-A060143(n)))` -/
def P7676210482012107098.Spec : Prop :=
  ∀ n, P7676210482012107098.a n = A189663 (n + 1)

end A189663

/-!
# A189664: Fixed point of the morphism 0->010, 1->001.

The programs for A189664, the canonical program `A189664.P1404059983888781989` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189664 has offset 1).

The definition of A189664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284777, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189664.P1404059983888781989

`A284777(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A189664

/-- `A284777(n+1)-2*(n+1)` -/
def P1404059983888781989.Spec : Prop :=
  ∀ n, P1404059983888781989.a n = A189664 (n + 1)

theorem P1404059983888781989.correct : P1404059983888781989.Spec := by
  intro n
  simp only [A189664, Nat.add_sub_cancel]

end A189664

/-! ## A189664.P5161920501832387079

`((n-a(floor(n/3)))%3)%2` with `a(0)=0`
-/

namespace A189664.P5161920501832387079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 3) 2

end

end A189664.P5161920501832387079

namespace A189664

/-- `((n-a(floor(n/3)))%3)%2` -/
def P5161920501832387079.Spec : Prop :=
  ∀ n, P5161920501832387079.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P9012362184412695992

`A284777(n+1)%2`
-/

namespace A189664.P9012362184412695992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284777 (n + 1)) 2

end

end A189664.P9012362184412695992

namespace A189664

/-- `A284777(n+1)%2` -/
def P9012362184412695992.Spec : Prop :=
  ∀ n, P9012362184412695992.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P1158522805839998116

`A285306(n+1)%2`
-/

namespace A189664.P1158522805839998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285306 (n + 1)) 2

end

end A189664.P1158522805839998116

namespace A189664

/-- `A285306(n+1)%2` -/
def P1158522805839998116.Spec : Prop :=
  ∀ n, P1158522805839998116.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P1454691000966145913

`A287455(n+1)%2`
-/

namespace A189664.P1454691000966145913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287455 (n + 1)) 2

end

end A189664.P1454691000966145913

namespace A189664

/-- `A287455(n+1)%2` -/
def P1454691000966145913.Spec : Prop :=
  ∀ n, P1454691000966145913.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P15581998195503650500

`A284819(n+1)%3`
-/

namespace A189664.P15581998195503650500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284819 (n + 1)) 3

end

end A189664.P15581998195503650500

namespace A189664

/-- `A284819(n+1)%3` -/
def P15581998195503650500.Spec : Prop :=
  ∀ n, P15581998195503650500.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P2174001689391146528

`char[A189666(n+1)-1]`
-/

namespace A189664.P2174001689391146528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189664.P2174001689391146528

namespace A189664

/-- `char[A189666(n+1)-1]` -/
def P2174001689391146528.Spec : Prop :=
  ∀ n, (P2174001689391146528.a n : ℤ) = A189664 (n + 1)

end A189664

/-! ## A189664.P7075143851730865646

`char[A285307(n+1)+n]`
-/

namespace A189664.P7075143851730865646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189664.P7075143851730865646

namespace A189664

/-- `char[A285307(n+1)+n]` -/
def P7075143851730865646.Spec : Prop :=
  ∀ n, (P7075143851730865646.a n : ℤ) = A189664 (n + 1)

end A189664

/-! ## A189664.P8492022982121999511

`1-char[A284818(n+1)-2]`
-/

namespace A189664.P8492022982121999511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189664.P8492022982121999511

namespace A189664

/-- `1-char[A284818(n+1)-2]` -/
def P8492022982121999511.Spec : Prop :=
  ∀ n, P8492022982121999511.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P8622228271706869164

`A189666(n+1)-A016789(n)`
-/

namespace A189664.P8622228271706869164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - A016789 n

end

end A189664.P8622228271706869164

namespace A189664

/-- `A189666(n+1)-A016789(n)` -/
def P8622228271706869164.Spec : Prop :=
  ∀ n, P8622228271706869164.a n = A189664 (n + 1)

theorem P8622228271706869164.correct : P8622228271706869164.Spec := by
  intro n
  simp only [A189664, Nat.add_sub_cancel, A189664.P8622228271706869164.a, A189664.P1404059983888781989.a, A016789, A016789.P8277564872725303677.a, A189666, A189666.P13703486958930581488.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284819, A284819.P13627960389545771610.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189664

/-! ## A189664.P4849193195788856823

`A016792(n)%A189666(n+1)`
-/

namespace A189664.P4849193195788856823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016792 n) (A189666 (n + 1))

end

end A189664.P4849193195788856823

namespace A189664

/-- `A016792(n)%A189666(n+1)` -/
def P4849193195788856823.Spec : Prop :=
  ∀ n, P4849193195788856823.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P12087184847978080859

`A016794(n)%A189666(n+1)`
-/

namespace A189664.P12087184847978080859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016794 n) (A189666 (n + 1))

end

end A189664.P12087184847978080859

namespace A189664

/-- `A016794(n)%A189666(n+1)` -/
def P12087184847978080859.Spec : Prop :=
  ∀ n, P12087184847978080859.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P4368623155583129949

`A016796(n)%A189666(n+1)`
-/

namespace A189664.P4368623155583129949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016796 n) (A189666 (n + 1))

end

end A189664.P4368623155583129949

namespace A189664

/-- `A016796(n)%A189666(n+1)` -/
def P4368623155583129949.Spec : Prop :=
  ∀ n, P4368623155583129949.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P10475907719970206067

`A016754(n)%A285307(n+1)`
-/

namespace A189664.P10475907719970206067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A285307 (n + 1))

end

end A189664.P10475907719970206067

namespace A189664

/-- `A016754(n)%A285307(n+1)` -/
def P10475907719970206067.Spec : Prop :=
  ∀ n, P10475907719970206067.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P6971162613773246206

`A016756(n)%A285307(n+1)`
-/

namespace A189664.P6971162613773246206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A285307 (n + 1))

end

end A189664.P6971162613773246206

namespace A189664

/-- `A016756(n)%A285307(n+1)` -/
def P6971162613773246206.Spec : Prop :=
  ∀ n, P6971162613773246206.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P15724114163118482621

`A016758(n)%A285307(n+1)`
-/

namespace A189664.P15724114163118482621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016758 n) (A285307 (n + 1))

end

end A189664.P15724114163118482621

namespace A189664

/-- `A016758(n)%A285307(n+1)` -/
def P15724114163118482621.Spec : Prop :=
  ∀ n, P15724114163118482621.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P10382713608641603593

`A016760(n)%A285307(n+1)`
-/

namespace A189664.P10382713608641603593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A285307 (n + 1))

end

end A189664.P10382713608641603593

namespace A189664

/-- `A016760(n)%A285307(n+1)` -/
def P10382713608641603593.Spec : Prop :=
  ∀ n, P10382713608641603593.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P8859778683036042862

`A285307(n+1)%A033465(n)`
-/

namespace A189664.P8859778683036042862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285307 (n + 1)) (A033465 n)

end

end A189664.P8859778683036042862

namespace A189664

/-- `A285307(n+1)%A033465(n)` -/
def P8859778683036042862.Spec : Prop :=
  ∀ n, P8859778683036042862.a n = A189664 (n + 1)

end A189664

/-! ## A189664.P4161412531649387562

`A272850(n)%A285307(n+1)`
-/

namespace A189664.P4161412531649387562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272850 n) (A285307 (n + 1))

end

end A189664.P4161412531649387562

namespace A189664

/-- `A272850(n)%A285307(n+1)` -/
def P4161412531649387562.Spec : Prop :=
  ∀ n, P4161412531649387562.a n = A189664 (n + 1)

end A189664

/-!
# A189665: Positions of 0's in A189664; complement of A189666.

The programs for A189665, the canonical program `A189665.P13427667427402099611` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189665 has offset 1).

The definition of A189665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189665.P5369482452479460734

`A284794(n+1)/2`
-/

namespace A189665.P5369482452479460734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284794 (n + 1) : ℚ) / 2

end

end A189665.P5369482452479460734

namespace A189665

/-- `A284794(n+1)/2` -/
def P5369482452479460734.Spec : Prop :=
  ∀ n, P5369482452479460734.a n = (A189665 (n + 1) : ℚ)

theorem P5369482452479460734.correct : P5369482452479460734.Spec := by
  intro n
  simp only [A189665, Nat.add_sub_cancel, A189665.P5369482452479460734.a, A189665.P13427667427402099611.a, A189667, A189667.P3450249148691323656.f1, A189667.P3450249148691323656.a, A284794, A284794.P2972452500732799436.a, A320928, A320928.P14647254000613725565.a, A284914, A284914.P18201955164397708571.a, A189727, A189727.P5761544860663102643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189665

/-! ## A189665.P6563863740907039894

`∑[A284775(n+1)+1]`
-/

namespace A189665.P6563863740907039894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189665.P6563863740907039894

namespace A189665

/-- `∑[A284775(n+1)+1]` -/
def P6563863740907039894.Spec : Prop :=
  ∀ n, P6563863740907039894.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P2058137261115319419

`ceil((A284796(n+1)+1)/2)`
-/

namespace A189665.P2058137261115319419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284796 (n + 1) + 1 : ℚ) / 2⌉

end

end A189665.P2058137261115319419

namespace A189665

/-- `ceil((A284796(n+1)+1)/2)` -/
def P2058137261115319419.Spec : Prop :=
  ∀ n, P2058137261115319419.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P18183508181986889522

`comp[A189666(n+1)-1]+1`
-/

namespace A189665.P18183508181986889522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189665.P18183508181986889522

namespace A189665

/-- `comp[A189666(n+1)-1]+1` -/
def P18183508181986889522.Spec : Prop :=
  ∀ n, (P18183508181986889522.a n : ℤ) = A189665 (n + 1)

end A189665

/-! ## A189665.P5500357455119626325

`comp[A285307(n+1)+n]+1`
-/

namespace A189665.P5500357455119626325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189665.P5500357455119626325

namespace A189665

/-- `comp[A285307(n+1)+n]+1` -/
def P5500357455119626325.Spec : Prop :=
  ∀ n, (P5500357455119626325.a n : ℤ) = A189665 (n + 1)

end A189665

/-! ## A189665.P4816734390813017969

`a(n-1)+A285305(n)+1` with `a(0)=1`
-/

namespace A189665.P4816734390813017969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285305 n + 1)

end

end A189665.P4816734390813017969

namespace A189665

/-- `a(n-1)+A285305(n)+1` -/
def P4816734390813017969.Spec : Prop :=
  ∀ n, P4816734390813017969.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P6939928538870855205

`A284818(n+1)+A284775(n+1)`
-/

namespace A189665.P6939928538870855205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) + A284775 (n + 1)

end

end A189665.P6939928538870855205

namespace A189665

/-- `A284818(n+1)+A284775(n+1)` -/
def P6939928538870855205.Spec : Prop :=
  ∀ n, P6939928538870855205.a n = A189665 (n + 1)

theorem P6939928538870855205.correct : P6939928538870855205.Spec := by
  intro n
  simp only [A189665, Nat.add_sub_cancel, A189665.P6939928538870855205.a, A189665.P13427667427402099611.a, A189667, A189667.P3450249148691323656.f1, A189667.P3450249148691323656.a, A284775, A284775.P8645433344841049155.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A320928, A320928.P14647254000613725565.a, A284914, A284914.P18201955164397708571.a, A189727, A189727.P5761544860663102643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189665

/-! ## A189665.P6839921100655451931

`∪[A287456(n+1), A287458(n+1)]`
-/

namespace A189665.P6839921100655451931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189665.P6839921100655451931

namespace A189665

/-- `∪[A287456(n+1), A287458(n+1)]` -/
def P6839921100655451931.Spec : Prop :=
  ∀ n, (P6839921100655451931.a n : ℤ) = A189665 (n + 1)

end A189665

/-! ## A189665.P9065915058694324057

`A285254(n+1)-∑[A285255(n+1)]`
-/

namespace A189665.P9065915058694324057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285254 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189665.P9065915058694324057

namespace A189665

/-- `A285254(n+1)-∑[A285255(n+1)]` -/
def P9065915058694324057.Spec : Prop :=
  ∀ n, P9065915058694324057.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P4403062166926703241

`A284818(n+2)-1`
-/

namespace A189665.P4403062166926703241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 2) - 1

end

end A189665.P4403062166926703241

namespace A189665

/-- `A284818(n+2)-1` -/
def P4403062166926703241.Spec : Prop :=
  ∀ n, P4403062166926703241.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P10449296035554249771

`∑[A284818(Δ[A284818(n+1)])]`
-/

namespace A189665.P10449296035554249771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189665.P10449296035554249771

namespace A189665

/-- `∑[A284818(Δ[A284818(n+1)])]` -/
def P10449296035554249771.Spec : Prop :=
  ∀ n, P10449296035554249771.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P16425578312975103152

`record[(n+1)*abs(A287455(n+1)-1)]`
-/

namespace A189665.P16425578312975103152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A287455 (n + 1) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189665.P16425578312975103152

namespace A189665

/-- `record[(n+1)*abs(A287455(n+1)-1)]` -/
def P16425578312975103152.Spec : Prop :=
  ∀ n, P16425578312975103152.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P4137578074582968658

`A285307(a(n-1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A189665.P4137578074582968658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285307 (a (n - 1) + 1).toNat - a (n - 1)

end

end A189665.P4137578074582968658

namespace A189665

/-- `A285307(a(n-1)+1)-a(n-1)` -/
def P4137578074582968658.Spec : Prop :=
  ∀ n, P4137578074582968658.a n = A189665 (n + 1)

end A189665

/-! ## A189665.P13427667427402099611

`A189667(A320928(n+1))+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189665

/-- `A189667(A320928(n+1))+1+n` -/
def P13427667427402099611.Spec : Prop :=
  ∀ n, P13427667427402099611.a n = A189665 (n + 1)

theorem P13427667427402099611.correct : P13427667427402099611.Spec := by
  intro n
  simp only [A189665, Nat.add_sub_cancel]

end A189665

/-! ## A189665.P11720190093657919852

`∩[A284777(n+1), A285306(n+1)]/2`
-/

namespace A189665.P11720190093657919852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A189665.P11720190093657919852

namespace A189665

/-- `∩[A284777(n+1), A285306(n+1)]/2` -/
def P11720190093657919852.Spec : Prop :=
  ∀ n, P11720190093657919852.a n = (A189665 (n + 1) : ℚ)

end A189665

/-! ## A189665.P15217797794778091449

`∩[A284777(n+1), A317440(n+1)]/2`
-/

namespace A189665.P15217797794778091449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A189665.P15217797794778091449

namespace A189665

/-- `∩[A284777(n+1), A317440(n+1)]/2` -/
def P15217797794778091449.Spec : Prop :=
  ∀ n, P15217797794778091449.a n = (A189665 (n + 1) : ℚ)

end A189665

/-! ## A189665.P17437820796228103850

`eq[A000007(n), A284817(n+1)]`
-/

namespace A189665.P17437820796228103850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189665.P17437820796228103850

namespace A189665

/-- `eq[A000007(n), A284817(n+1)]` -/
def P17437820796228103850.Spec : Prop :=
  ∀ n, (P17437820796228103850.a n : ℤ) = A189665 (n + 1)

end A189665

/-!
# A189666: Positions of 1 in A189664; complement of A189665.

The programs for A189666, the canonical program `A189666.P13703486958930581488` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189666 has offset 1).

The definition of A189666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189666.P13703486958930581488

`A284819(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A189666

/-- `A284819(n+1)-1` -/
def P13703486958930581488.Spec : Prop :=
  ∀ n, P13703486958930581488.a n = A189666 (n + 1)

theorem P13703486958930581488.correct : P13703486958930581488.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel]

end A189666

/-! ## A189666.P6968811090494181993

`A284777(n+1)+n`
-/

namespace A189666.P6968811090494181993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) + (n : ℤ)

end

end A189666.P6968811090494181993

namespace A189666

/-- `A284777(n+1)+n` -/
def P6968811090494181993.Spec : Prop :=
  ∀ n, P6968811090494181993.a n = A189666 (n + 1)

theorem P6968811090494181993.correct : P6968811090494181993.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P6968811090494181993.a, A189666.P13703486958930581488.a, A284777, A284777.P2957116488474719438.a, A284819, A284819.P13627960389545771610.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P6544249392471064522

`A285307(n+1)+1+n`
-/

namespace A189666.P6544249392471064522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + 1 + (n : ℤ)

end

end A189666.P6544249392471064522

namespace A189666

/-- `A285307(n+1)+1+n` -/
def P6544249392471064522.Spec : Prop :=
  ∀ n, P6544249392471064522.a n = A189666 (n + 1)

theorem P6544249392471064522.correct : P6544249392471064522.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P6544249392471064522.a, A189666.P13703486958930581488.a, A284819, A284819.P13627960389545771610.a, A285307, A285307.P1018427192164928864.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P17606521251761540997

`3*n+2+A189664(n+1)`
-/

namespace A189666.P17606521251761540997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) + A189664 (n + 1)

end

end A189666.P17606521251761540997

namespace A189666

/-- `3*n+2+A189664(n+1)` -/
def P17606521251761540997.Spec : Prop :=
  ∀ n, P17606521251761540997.a n = A189666 (n + 1)

theorem P17606521251761540997.correct : P17606521251761540997.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P17606521251761540997.a, A189666.P13703486958930581488.a, A189664, A189664.P1404059983888781989.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P17946260129009370498

`A189664(n+1)+A016789(n)`
-/

namespace A189666.P17946260129009370498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + A016789 n

end

end A189666.P17946260129009370498

namespace A189666

/-- `A189664(n+1)+A016789(n)` -/
def P17946260129009370498.Spec : Prop :=
  ∀ n, P17946260129009370498.a n = A189666 (n + 1)

theorem P17946260129009370498.correct : P17946260129009370498.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P17946260129009370498.a, A189666.P13703486958930581488.a, A016789, A016789.P8277564872725303677.a, A189664, A189664.P1404059983888781989.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P4978273326308581777

`A016897(n)-A285306(n+1)`
-/

namespace A189666.P4978273326308581777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A285306 (n + 1)

end

end A189666.P4978273326308581777

namespace A189666

/-- `A016897(n)-A285306(n+1)` -/
def P4978273326308581777.Spec : Prop :=
  ∀ n, P4978273326308581777.a n = A189666 (n + 1)

theorem P4978273326308581777.correct : P4978273326308581777.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P4978273326308581777.a, A189666.P13703486958930581488.a, A016897, A016897.P9287350145607759688.a, A284819, A284819.P13627960389545771610.a, A285306, A285306.P713584507056425595.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P11305527263886467258

`A189664(n+1)+A016777(n)+1`
-/

namespace A189666.P11305527263886467258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + (A016777 n + 1)

end

end A189666.P11305527263886467258

namespace A189666

/-- `A189664(n+1)+A016777(n)+1` -/
def P11305527263886467258.Spec : Prop :=
  ∀ n, P11305527263886467258.a n = A189666 (n + 1)

theorem P11305527263886467258.correct : P11305527263886467258.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P11305527263886467258.a, A189666.P13703486958930581488.a, A016777, A016777.P9931792138852554157.a, A189664, A189664.P1404059983888781989.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P617847902693068758

`A001478(n+1)+A284819(n+1)+n`
-/

namespace A189666.P617847902693068758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A284819 (n + 1) + (n : ℤ))

end

end A189666.P617847902693068758

namespace A189666

/-- `A001478(n+1)+A284819(n+1)+n` -/
def P617847902693068758.Spec : Prop :=
  ∀ n, P617847902693068758.a n = A189666 (n + 1)

theorem P617847902693068758.correct : P617847902693068758.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P617847902693068758.a, A189666.P13703486958930581488.a, A001478, A001478.P11279598861711037921.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P1436590272835988057

`A189664(n+1)+A317440(n+1)+n`
-/

namespace A189666.P1436590272835988057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + (A317440 (n + 1) + (n : ℤ))

end

end A189666.P1436590272835988057

namespace A189666

/-- `A189664(n+1)+A317440(n+1)+n` -/
def P1436590272835988057.Spec : Prop :=
  ∀ n, P1436590272835988057.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P2973175821542377127

`A000027(C(2, A287455(n+1))+n)+n+n+1`
-/

namespace A189666.P2973175821542377127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose 2 (A287455 (n + 1)).toNat + n) + (n : ℤ) + (n + 1 : ℤ)

end

end A189666.P2973175821542377127

namespace A189666

/-- `A000027(C(2, A287455(n+1))+n)+n+n+1` -/
def P2973175821542377127.Spec : Prop :=
  ∀ n, P2973175821542377127.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P13881831070930082240

`xor(1, A284776(n+2))+n`
-/

namespace A189666.P13881831070930082240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2)) + (n : ℤ)

end

end A189666.P13881831070930082240

namespace A189666

/-- `xor(1, A284776(n+2))+n` -/
def P13881831070930082240.Spec : Prop :=
  ∀ n, P13881831070930082240.a n = A189666 (n + 1)

theorem P13881831070930082240.correct : P13881831070930082240.Spec := by
  intro n
  simp only [A189666, Nat.add_sub_cancel, A189666.P13881831070930082240.a, A189666.P13703486958930581488.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, A189667, A189667.P3450249148691323656.f1, A189667.P3450249148691323656.a, A320928, A320928.P14647254000613725565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189666

/-! ## A189666.P14719738282716889024

`3*n+2+A284817(n+2)`
-/

namespace A189666.P14719738282716889024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) + A284817 (n + 2)

end

end A189666.P14719738282716889024

namespace A189666

/-- `3*n+2+A284817(n+2)` -/
def P14719738282716889024.Spec : Prop :=
  ∀ n, P14719738282716889024.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P15447454813130772926

`A005843(n+1)+A284817(n+2)+n`
-/

namespace A189666.P15447454813130772926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A284817 (n + 2) + (n : ℤ))

end

end A189666.P15447454813130772926

namespace A189666

/-- `A005843(n+1)+A284817(n+2)+n` -/
def P15447454813130772926.Spec : Prop :=
  ∀ n, P15447454813130772926.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P2557142496515651342

`ceil(A284795(2*n+1)/2)`
-/

namespace A189666.P2557142496515651342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284795 (2 * n + 1) : ℚ) / 2⌉

end

end A189666.P2557142496515651342

namespace A189666

/-- `ceil(A284795(2*n+1)/2)` -/
def P2557142496515651342.Spec : Prop :=
  ∀ n, P2557142496515651342.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P16892012828401924561

`(A284795(2*(n+1))-1)/2`
-/

namespace A189666.P16892012828401924561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284795 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A189666.P16892012828401924561

namespace A189666

/-- `(A284795(2*(n+1))-1)/2` -/
def P16892012828401924561.Spec : Prop :=
  ∀ n, P16892012828401924561.a n = (A189666 (n + 1) : ℚ)

end A189666

/-! ## A189666.P5030655735520993337

`A285250(2*(n+1))-(n+1)`
-/

namespace A189666.P5030655735520993337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189666.P5030655735520993337

namespace A189666

/-- `A285250(2*(n+1))-(n+1)` -/
def P5030655735520993337.Spec : Prop :=
  ∀ n, P5030655735520993337.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P13436218710252052296

`A285253(2*(n+1))-(n+1)`
-/

namespace A189666.P13436218710252052296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189666.P13436218710252052296

namespace A189666

/-- `A285253(2*(n+1))-(n+1)` -/
def P13436218710252052296.Spec : Prop :=
  ∀ n, P13436218710252052296.a n = A189666 (n + 1)

end A189666

/-! ## A189666.P2494259422114497271

`A007494(A285307(n+1))`
-/

namespace A189666.P2494259422114497271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A285307 (n + 1)).toNat

end

end A189666.P2494259422114497271

namespace A189666

/-- `A007494(A285307(n+1))` -/
def P2494259422114497271.Spec : Prop :=
  ∀ n, P2494259422114497271.a n = A189666 (n + 1)

end A189666

/-!
# A189667: Partial sums of A189664.

The programs for A189667, the canonical program `A189667.P3450249148691323656` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189667 has offset 1).

The definition of A189667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189667.P3450249148691323656

`∑[((n-a(floor(n/3)))%3)%2]` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189667

/-- `∑[((n-a(floor(n/3)))%3)%2]` -/
def P3450249148691323656.Spec : Prop :=
  ∀ n, P3450249148691323656.a n = A189667 (n + 1)

theorem P3450249148691323656.correct : P3450249148691323656.Spec := by
  intro n
  simp only [A189667, Nat.add_sub_cancel]

end A189667

/-! ## A189667.P6621144992983244726

`∑[A189664(n+1)]`
-/

namespace A189667.P6621144992983244726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P6621144992983244726

namespace A189667

/-- `∑[A189664(n+1)]` -/
def P6621144992983244726.Spec : Prop :=
  ∀ n, P6621144992983244726.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P16797457114955390572

`∑[A284777(n+1)%2]`
-/

namespace A189667.P16797457114955390572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284777 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P16797457114955390572

namespace A189667

/-- `∑[A284777(n+1)%2]` -/
def P16797457114955390572.Spec : Prop :=
  ∀ n, P16797457114955390572.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P6645648513038791854

`∑[A285306(n+1)%2]`
-/

namespace A189667.P6645648513038791854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285306 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P6645648513038791854

namespace A189667

/-- `∑[A285306(n+1)%2]` -/
def P6645648513038791854.Spec : Prop :=
  ∀ n, P6645648513038791854.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P6623428114857562395

`∑[A287455(n+1)%2]`
-/

namespace A189667.P6623428114857562395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287455 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P6623428114857562395

namespace A189667

/-- `∑[A287455(n+1)%2]` -/
def P6623428114857562395.Spec : Prop :=
  ∀ n, P6623428114857562395.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P10025506240749375367

`∑[A284819(n+1)%3]`
-/

namespace A189667.P10025506240749375367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284819 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P10025506240749375367

namespace A189667

/-- `∑[A284819(n+1)%3]` -/
def P10025506240749375367.Spec : Prop :=
  ∀ n, P10025506240749375367.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P14608279883814557011

`∑[char[A189666(n+1)-1]]`
-/

namespace A189667.P14608279883814557011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P14608279883814557011

namespace A189667

/-- `∑[char[A189666(n+1)-1]]` -/
def P14608279883814557011.Spec : Prop :=
  ∀ n, (P14608279883814557011.a n : ℤ) = A189667 (n + 1)

end A189667

/-! ## A189667.P2276430925105003270

`∑[A285307(n+1)-Δ[n²]]`
-/

namespace A189667.P2276430925105003270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P2276430925105003270

namespace A189667

/-- `∑[A285307(n+1)-Δ[n²]]` -/
def P2276430925105003270.Spec : Prop :=
  ∀ n, P2276430925105003270.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P13084958013293448111

`∑[A189666(n+1)-(A016777(n)+1)]`
-/

namespace A189667.P13084958013293448111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - (A016777 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P13084958013293448111

namespace A189667

/-- `∑[A189666(n+1)-(A016777(n)+1)]` -/
def P13084958013293448111.Spec : Prop :=
  ∀ n, P13084958013293448111.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P15156768959520094925

`∑[A056305(A189666(n+1)-3*n+1)]`
-/

namespace A189667.P15156768959520094925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056305 (A189666 (n + 1) - (3 * n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P15156768959520094925

namespace A189667

/-- `∑[A056305(A189666(n+1)-3*n+1)]` -/
def P15156768959520094925.Spec : Prop :=
  ∀ n, P15156768959520094925.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P18107213504325902207

`∑[A284817(2+n)]`
-/

namespace A189667.P18107213504325902207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P18107213504325902207

namespace A189667

/-- `∑[A284817(2+n)]` -/
def P18107213504325902207.Spec : Prop :=
  ∀ n, P18107213504325902207.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P14574095758154509609

`∑[xor(1, A284776(n+2))%2]`
-/

namespace A189667.P14574095758154509609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A284776 (n + 2))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P14574095758154509609

namespace A189667

/-- `∑[xor(1, A284776(n+2))%2]` -/
def P14574095758154509609.Spec : Prop :=
  ∀ n, P14574095758154509609.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P145853409022381971

`∑[A285277(Δ[A285307(n+1)])]`
-/

namespace A189667.P145853409022381971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P145853409022381971

namespace A189667

/-- `∑[A285277(Δ[A285307(n+1)])]` -/
def P145853409022381971.Spec : Prop :=
  ∀ n, P145853409022381971.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P17545353204761098423

`∑[A285305(2*(n+1))]`
-/

namespace A189667.P17545353204761098423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P17545353204761098423

namespace A189667

/-- `∑[A285305(2*(n+1))]` -/
def P17545353204761098423.Spec : Prop :=
  ∀ n, P17545353204761098423.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P10829789937759758125

`∑[1-A284775(2*(n+1))]`
-/

namespace A189667.P10829789937759758125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284775 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P10829789937759758125

namespace A189667

/-- `∑[1-A284775(2*(n+1))]` -/
def P10829789937759758125.Spec : Prop :=
  ∀ n, P10829789937759758125.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P11921051491551822465

`A008615(A285307(n+1))`
-/

namespace A189667.P11921051491551822465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A285307 (n + 1)).toNat

end

end A189667.P11921051491551822465

namespace A189667

/-- `A008615(A285307(n+1))` -/
def P11921051491551822465.Spec : Prop :=
  ∀ n, P11921051491551822465.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P836304065274997786

`A004396(A285307(n+1)-1)-n`
-/

namespace A189667.P836304065274997786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A285307 (n + 1) - 1).toNat - (n : ℤ)

end

end A189667.P836304065274997786

namespace A189667

/-- `A004396(A285307(n+1)-1)-n` -/
def P836304065274997786.Spec : Prop :=
  ∀ n, P836304065274997786.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P598021805031760701

`∑[∑[A284793(2*n+1)+A284793(2*(n+1))]]`
-/

namespace A189667.P598021805031760701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (2 * n + 1) + A284793 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P598021805031760701

namespace A189667

/-- `∑[∑[A284793(2*n+1)+A284793(2*(n+1))]]` -/
def P598021805031760701.Spec : Prop :=
  ∀ n, P598021805031760701.a n = A189667 (n + 1)

end A189667

/-! ## A189667.P1165981064101271767

`∑[A284775(2*n+3)]`
-/

namespace A189667.P1165981064101271767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189667.P1165981064101271767

namespace A189667

/-- `∑[A284775(2*n+3)]` -/
def P1165981064101271767.Spec : Prop :=
  ∀ n, P1165981064101271767.a n = A189667 (n + 1)

end A189667

/-!
# A189668: Fixed point of the morphism 0->010, 1->100.

The programs for A189668, the canonical program `A189668.P16396119617420465884` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189668 has offset 1).

The definition of A189668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189668.P16396119617420465884

`((a(floor(n/3))+n)%3)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189668

/-- `((a(floor(n/3))+n)%3)%2` -/
def P16396119617420465884.Spec : Prop :=
  ∀ n, (P16396119617420465884.a n : ℤ) = A189668 (n + 1)

theorem P16396119617420465884.correct : P16396119617420465884.Spec := by
  intro n
  simp only [A189668, Nat.add_sub_cancel]

end A189668

/-! ## A189668.P2859285301242823746

`col((2*n-a(floor(n/3)))%3)` with `a(0)=0`
-/

namespace A189668.P2859285301242823746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triCol (Int.tmod ((2 * n : ℤ) - (a ⌊(n : ℚ) / 3⌋.toNat : ℤ)) 3).toNat

end

end A189668.P2859285301242823746

namespace A189668

/-- `col((2*n-a(floor(n/3)))%3)` -/
def P2859285301242823746.Spec : Prop :=
  ∀ n, (P2859285301242823746.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P2112510581892902984

`char[A285353(n+1)]`
-/

namespace A189668.P2112510581892902984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189668.P2112510581892902984

namespace A189668

/-- `char[A285353(n+1)]` -/
def P2112510581892902984.Spec : Prop :=
  ∀ n, (P2112510581892902984.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P6884608537728275912

`A284907(n+1)%2`
-/

namespace A189668.P6884608537728275912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284907 (n + 1)) 2

end

end A189668.P6884608537728275912

namespace A189668

/-- `A284907(n+1)%2` -/
def P6884608537728275912.Spec : Prop :=
  ∀ n, P6884608537728275912.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P14748012019846917858

`A287438(n+1)%2`
-/

namespace A189668.P14748012019846917858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287438 (n + 1)) 2

end

end A189668.P14748012019846917858

namespace A189668

/-- `A287438(n+1)%2` -/
def P14748012019846917858.Spec : Prop :=
  ∀ n, P14748012019846917858.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P1211795375896524862

`A287528(n+1)%2`
-/

namespace A189668.P1211795375896524862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287528 (n + 1)) 2

end

end A189668.P1211795375896524862

namespace A189668

/-- `A287528(n+1)%2` -/
def P1211795375896524862.Spec : Prop :=
  ∀ n, P1211795375896524862.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P3929684363723941653

`4%A326420(n+1)`
-/

namespace A189668.P3929684363723941653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A326420 (n + 1))

end

end A189668.P3929684363723941653

namespace A189668

/-- `4%A326420(n+1)` -/
def P3929684363723941653.Spec : Prop :=
  ∀ n, P3929684363723941653.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P10408455037793209654

`char[A189670(n+1)-1]`
-/

namespace A189668.P10408455037793209654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189668.P10408455037793209654

namespace A189668

/-- `char[A189670(n+1)-1]` -/
def P10408455037793209654.Spec : Prop :=
  ∀ n, (P10408455037793209654.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P4051089113886151454

`char[A285347(n+1)+n]`
-/

namespace A189668.P4051089113886151454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189668.P4051089113886151454

namespace A189668

/-- `char[A285347(n+1)+n]` -/
def P4051089113886151454.Spec : Prop :=
  ∀ n, (P4051089113886151454.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P5105752288909762533

`val(A287441(n+1)+n, 2)`
-/

namespace A189668.P5105752288909762533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287441 (n + 1) + (n : ℤ)).toNat 2

end

end A189668.P5105752288909762533

namespace A189668

/-- `val(A287441(n+1)+n, 2)` -/
def P5105752288909762533.Spec : Prop :=
  ∀ n, (P5105752288909762533.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P9770025205447688951

`val(A287529(n+1)+n, 2)`
-/

namespace A189668.P9770025205447688951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287529 (n + 1) + (n : ℤ)).toNat 2

end

end A189668.P9770025205447688951

namespace A189668

/-- `val(A287529(n+1)+n, 2)` -/
def P9770025205447688951.Spec : Prop :=
  ∀ n, (P9770025205447688951.a n : ℤ) = A189668 (n + 1)

end A189668

/-! ## A189668.P11327483672595927036

`A284906(n+1)-Δ[n²]`
-/

namespace A189668.P11327483672595927036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A189668.P11327483672595927036

namespace A189668

/-- `A284906(n+1)-Δ[n²]` -/
def P11327483672595927036.Spec : Prop :=
  ∀ n, P11327483672595927036.a n = A189668 (n + 1)

theorem P11327483672595927036.correct : P11327483672595927036.Spec := by
  intro n
  simp only [A189668, Nat.add_sub_cancel, A189668.P11327483672595927036.f1, A189668.P11327483672595927036.a, A189668.P16396119617420465884.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189668

/-! ## A189668.P2794393517089376613

`A016789(n)-A189670(n+1)`
-/

namespace A189668.P2794393517089376613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A189670 (n + 1)

end

end A189668.P2794393517089376613

namespace A189668

/-- `A016789(n)-A189670(n+1)` -/
def P2794393517089376613.Spec : Prop :=
  ∀ n, P2794393517089376613.a n = A189668 (n + 1)

theorem P2794393517089376613.correct : P2794393517089376613.Spec := by
  intro n
  simp only [A189668, Nat.add_sub_cancel, A189668.P2794393517089376613.a, A189668.P16396119617420465884.a, A016789, A016789.P8277564872725303677.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189668

/-! ## A189668.P8279953704112422535

`A016777(n)-A285353(n+1)`
-/

namespace A189668.P8279953704112422535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A285353 (n + 1)

end

end A189668.P8279953704112422535

namespace A189668

/-- `A016777(n)-A285353(n+1)` -/
def P8279953704112422535.Spec : Prop :=
  ∀ n, P8279953704112422535.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P7508219321255949616

`A016791(n)%A189670(n+1)`
-/

namespace A189668.P7508219321255949616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016791 n) (A189670 (n + 1))

end

end A189668.P7508219321255949616

namespace A189668

/-- `A016791(n)%A189670(n+1)` -/
def P7508219321255949616.Spec : Prop :=
  ∀ n, P7508219321255949616.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P5040080575217994746

`A016792(n)%A189670(n+1)`
-/

namespace A189668.P5040080575217994746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016792 n) (A189670 (n + 1))

end

end A189668.P5040080575217994746

namespace A189668

/-- `A016792(n)%A189670(n+1)` -/
def P5040080575217994746.Spec : Prop :=
  ∀ n, P5040080575217994746.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P14347359507715233464

`A016793(n)%A189670(n+1)`
-/

namespace A189668.P14347359507715233464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016793 n) (A189670 (n + 1))

end

end A189668.P14347359507715233464

namespace A189668

/-- `A016793(n)%A189670(n+1)` -/
def P14347359507715233464.Spec : Prop :=
  ∀ n, P14347359507715233464.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P16750927370189351419

`A016794(n)%A189670(n+1)`
-/

namespace A189668.P16750927370189351419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016794 n) (A189670 (n + 1))

end

end A189668.P16750927370189351419

namespace A189668

/-- `A016794(n)%A189670(n+1)` -/
def P16750927370189351419.Spec : Prop :=
  ∀ n, P16750927370189351419.a n = A189668 (n + 1)

end A189668

/-! ## A189668.P2928943432765620432

`A016795(n)%A189670(n+1)`
-/

namespace A189668.P2928943432765620432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016795 n) (A189670 (n + 1))

end

end A189668.P2928943432765620432

namespace A189668

/-- `A016795(n)%A189670(n+1)` -/
def P2928943432765620432.Spec : Prop :=
  ∀ n, P2928943432765620432.a n = A189668 (n + 1)

end A189668

/-!
# A189669: Positions of 0 in A189668; complement of A189679.

The programs for A189669, the canonical program `A189669.P962645693037667387` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189669 has offset 1).

The definition of A189669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189669.P15189148645907246589

`∑[A284905(n+1)+1]`
-/

namespace A189669.P15189148645907246589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189669.P15189148645907246589

namespace A189669

/-- `∑[A284905(n+1)+1]` -/
def P15189148645907246589.Spec : Prop :=
  ∀ n, P15189148645907246589.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P962645693037667387

`comp[A285353(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189669

/-- `comp[A285353(n+1)]+1` -/
def P962645693037667387.Spec : Prop :=
  ∀ n, (P962645693037667387.a n : ℤ) = A189669 (n + 1)

theorem P962645693037667387.correct : P962645693037667387.Spec := by
  intro n
  simp only [A189669, Nat.add_sub_cancel]

end A189669

/-! ## A189669.P10340828750005908055

`∑[char[A285347(n+1)]+1]`
-/

namespace A189669.P10340828750005908055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189669.P10340828750005908055

namespace A189669

/-- `∑[char[A285347(n+1)]+1]` -/
def P10340828750005908055.Spec : Prop :=
  ∀ n, (P10340828750005908055.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P16605779079995120581

`comp[A189670(n+1)-1]+1`
-/

namespace A189669.P16605779079995120581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189669.P16605779079995120581

namespace A189669

/-- `comp[A189670(n+1)-1]+1` -/
def P16605779079995120581.Spec : Prop :=
  ∀ n, (P16605779079995120581.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P2443489401230089653

`a(n-1)+A285345(n)+1` with `a(0)=1`
-/

namespace A189669.P2443489401230089653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285345 n + 1)

end

end A189669.P2443489401230089653

namespace A189669

/-- `a(n-1)+A285345(n)+1` -/
def P2443489401230089653.Spec : Prop :=
  ∀ n, P2443489401230089653.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P11161208157883791195

`A285354(n+1)-A285345(n+1)`
-/

namespace A189669.P11161208157883791195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (n + 1) - A285345 (n + 1)

end

end A189669.P11161208157883791195

namespace A189669

/-- `A285354(n+1)-A285345(n+1)` -/
def P11161208157883791195.Spec : Prop :=
  ∀ n, P11161208157883791195.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P9325248677302214511

`∪[A026227(n+1), A287441(n+1)]`
-/

namespace A189669.P9325248677302214511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189669.P9325248677302214511

namespace A189669

/-- `∪[A026227(n+1), A287441(n+1)]` -/
def P9325248677302214511.Spec : Prop :=
  ∀ n, (P9325248677302214511.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P13407277373438999972

`∪[A026227(n+1), A287529(n+1)]`
-/

namespace A189669.P13407277373438999972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189669.P13407277373438999972

namespace A189669

/-- `∪[A026227(n+1), A287529(n+1)]` -/
def P13407277373438999972.Spec : Prop :=
  ∀ n, (P13407277373438999972.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P2322311128983006574

`∪[A026232(n+1), A287529(n+1)]`
-/

namespace A189669.P2322311128983006574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189669.P2322311128983006574

namespace A189669

/-- `∪[A026232(n+1), A287529(n+1)]` -/
def P2322311128983006574.Spec : Prop :=
  ∀ n, (P2322311128983006574.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P1020082337748062971

`∪[A189634(n+1), A287529(n+1)]`
-/

namespace A189669.P1020082337748062971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189669.P1020082337748062971

namespace A189669

/-- `∪[A189634(n+1), A287529(n+1)]` -/
def P1020082337748062971.Spec : Prop :=
  ∀ n, (P1020082337748062971.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P15862482016805303939

`∪[A189728(n+1), A287441(n+1)]`
-/

namespace A189669.P15862482016805303939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189669.P15862482016805303939

namespace A189669

/-- `∪[A189728(n+1), A287441(n+1)]` -/
def P15862482016805303939.Spec : Prop :=
  ∀ n, (P15862482016805303939.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P6691382537523558784

`A285354(n+1)-A284905(n+2)`
-/

namespace A189669.P6691382537523558784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (n + 1) - A284905 (n + 2)

end

end A189669.P6691382537523558784

namespace A189669

/-- `A285354(n+1)-A284905(n+2)` -/
def P6691382537523558784.Spec : Prop :=
  ∀ n, P6691382537523558784.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P619008529135919781

`a(n-1)+3-A326420(a(n-1))` with `a(0)=1`
-/

namespace A189669.P619008529135919781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 - A326420 (a (n - 1)).toNat)

end

end A189669.P619008529135919781

namespace A189669

/-- `a(n-1)+3-A326420(a(n-1))` -/
def P619008529135919781.Spec : Prop :=
  ∀ n, P619008529135919781.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P8410715598517160037

`record[gcd(n+1, A284907(n+1))]`
-/

namespace A189669.P8410715598517160037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A284907 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189669.P8410715598517160037

namespace A189669

/-- `record[gcd(n+1, A284907(n+1))]` -/
def P8410715598517160037.Spec : Prop :=
  ∀ n, (P8410715598517160037.a n : ℤ) = A189669 (n + 1)

end A189669

/-! ## A189669.P3087521897814559672

`A284906(a(n-1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A189669.P3087521897814559672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284906 (a (n - 1) + 1).toNat - a (n - 1)

end

end A189669.P3087521897814559672

namespace A189669

/-- `A284906(a(n-1)+1)-a(n-1)` -/
def P3087521897814559672.Spec : Prop :=
  ∀ n, P3087521897814559672.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P17940500079054313753

`A189671(∑[n%2]+n+1)+n+1`
-/

namespace A189669.P17940500079054313753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) + (n + 1 : ℤ)

end

end A189669.P17940500079054313753

namespace A189669

/-- `A189671(∑[n%2]+n+1)+n+1` -/
def P17940500079054313753.Spec : Prop :=
  ∀ n, P17940500079054313753.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P17259314882701884231

`A189671(A189665(n+1))+1+n`
-/

namespace A189669.P17259314882701884231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A189665 (n + 1)).toNat + 1 + (n : ℤ)

end

end A189669.P17259314882701884231

namespace A189669

/-- `A189671(A189665(n+1))+1+n` -/
def P17259314882701884231.Spec : Prop :=
  ∀ n, P17259314882701884231.a n = A189669 (n + 1)

end A189669

/-! ## A189669.P14269510446204036653

`eq[A000038(n), A189668(A000038(n)+n)]`
-/

namespace A189669.P14269510446204036653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189669.P14269510446204036653

namespace A189669

/-- `eq[A000038(n), A189668(A000038(n)+n)]` -/
def P14269510446204036653.Spec : Prop :=
  ∀ n, (P14269510446204036653.a n : ℤ) = A189669 (n + 1)

end A189669

/-!
# A189670: Positions of 1 in A189668; complement of A189669.

The programs for A189670, the canonical program `A189670.P13812974504116450926` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189670 has offset 1).

The definition of A189670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189670.P8938318416655135372

`A285353(1+n)+1`
-/

namespace A189670.P8938318416655135372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (1 + n) + 1

end

end A189670.P8938318416655135372

namespace A189670

/-- `A285353(1+n)+1` -/
def P8938318416655135372.Spec : Prop :=
  ∀ n, P8938318416655135372.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P8996223908739687850

`A284907(n+1)+n`
-/

namespace A189670.P8996223908739687850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) + (n : ℤ)

end

end A189670.P8996223908739687850

namespace A189670

/-- `A284907(n+1)+n` -/
def P8996223908739687850.Spec : Prop :=
  ∀ n, P8996223908739687850.a n = A189670 (n + 1)

theorem P8996223908739687850.correct : P8996223908739687850.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P8996223908739687850.a, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, A284907, A284907.P2959481405445577709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P17411880245298431642

`A285347(n+1)+1+n`
-/

namespace A189670.P17411880245298431642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + 1 + (n : ℤ)

end

end A189670.P17411880245298431642

namespace A189670

/-- `A285347(n+1)+1+n` -/
def P17411880245298431642.Spec : Prop :=
  ∀ n, P17411880245298431642.a n = A189670 (n + 1)

theorem P17411880245298431642.correct : P17411880245298431642.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P17411880245298431642.a, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, A285347, A285347.P10878793886673022585.a, A284907, A284907.P2959481405445577709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P13812974504116450926

`3*n+2-A189668(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189670

/-- `3*n+2-A189668(n+1)` -/
def P13812974504116450926.Spec : Prop :=
  ∀ n, P13812974504116450926.a n = A189670 (n + 1)

theorem P13812974504116450926.correct : P13812974504116450926.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel]

end A189670

/-! ## A189670.P5672500602366142531

`a(n-1)+A326420(n)+1` with `a(0)=2`
-/

namespace A189670.P5672500602366142531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A326420 n + 1)

end

end A189670.P5672500602366142531

namespace A189670

/-- `a(n-1)+A326420(n)+1` -/
def P5672500602366142531.Spec : Prop :=
  ∀ n, P5672500602366142531.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P13006319038919867468

`A016789(n)-A189668(n+1)`
-/

namespace A189670.P13006319038919867468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A189668 (n + 1)

end

end A189670.P13006319038919867468

namespace A189670

/-- `A016789(n)-A189668(n+1)` -/
def P13006319038919867468.Spec : Prop :=
  ∀ n, P13006319038919867468.a n = A189670 (n + 1)

theorem P13006319038919867468.correct : P13006319038919867468.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P13006319038919867468.a, A189670.P13812974504116450926.a, A016789, A016789.P8277564872725303677.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P15417054339835539753

`A016885(n)-A284906(n+1)`
-/

namespace A189670.P15417054339835539753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A284906 (n + 1)

end

end A189670.P15417054339835539753

namespace A189670

/-- `A016885(n)-A284906(n+1)` -/
def P15417054339835539753.Spec : Prop :=
  ∀ n, P15417054339835539753.a n = A189670 (n + 1)

theorem P15417054339835539753.correct : P15417054339835539753.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P15417054339835539753.a, A189670.P13812974504116450926.a, A016885, A016885.P12442016633976001399.a, A189668, A189668.P16396119617420465884.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P17661762166731339369

`A016873(n)+1-A284906(n+1)`
-/

namespace A189670.P17661762166731339369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + (1 - A284906 (n + 1))

end

end A189670.P17661762166731339369

namespace A189670

/-- `A016873(n)+1-A284906(n+1)` -/
def P17661762166731339369.Spec : Prop :=
  ∀ n, P17661762166731339369.a n = A189670 (n + 1)

theorem P17661762166731339369.correct : P17661762166731339369.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P17661762166731339369.a, A189670.P13812974504116450926.a, A016873, A016873.P366335242068170250.a, A189668, A189668.P16396119617420465884.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P3563616458548119631

`A004767(n)-A284906(n+1)+n`
-/

namespace A189670.P3563616458548119631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284906 (n + 1) + (n : ℤ)

end

end A189670.P3563616458548119631

namespace A189670

/-- `A004767(n)-A284906(n+1)+n` -/
def P3563616458548119631.Spec : Prop :=
  ∀ n, P3563616458548119631.a n = A189670 (n + 1)

theorem P3563616458548119631.correct : P3563616458548119631.Spec := by
  intro n
  simp only [A189670, Nat.add_sub_cancel, A189670.P3563616458548119631.a, A189670.P13812974504116450926.a, A004767, A004767.P13352534504447192883.a, A189668, A189668.P16396119617420465884.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189670

/-! ## A189670.P10763604186714452025

`A016777(n)+(1-A287528(n+1))²`
-/

namespace A189670.P10763604186714452025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A287528 (n + 1)) ^ 2

end

end A189670.P10763604186714452025

namespace A189670

/-- `A016777(n)+(1-A287528(n+1))²` -/
def P10763604186714452025.Spec : Prop :=
  ∀ n, P10763604186714452025.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P12086974171078423885

`xor(A088837(n+1), A284906(n+1))+n`
-/

namespace A189670.P12086974171078423885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284906 (n + 1)) + (n : ℤ)

end

end A189670.P12086974171078423885

namespace A189670

/-- `xor(A088837(n+1), A284906(n+1))+n` -/
def P12086974171078423885.Spec : Prop :=
  ∀ n, P12086974171078423885.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P12763962564076659104

`A287403(n+1)+A287404(n+1)-A287441(n+1)`
-/

namespace A189670.P12763962564076659104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287403 (n + 1) + (A287404 (n + 1) - A287441 (n + 1))

end

end A189670.P12763962564076659104

namespace A189670

/-- `A287403(n+1)+A287404(n+1)-A287441(n+1)` -/
def P12763962564076659104.Spec : Prop :=
  ∀ n, P12763962564076659104.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P8092939309449441896

`(A189634(2*n+1)+1)/2`
-/

namespace A189670.P8092939309449441896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189634 (2 * n + 1) + 1 : ℚ) / 2

end

end A189670.P8092939309449441896

namespace A189670

/-- `(A189634(2*n+1)+1)/2` -/
def P8092939309449441896.Spec : Prop :=
  ∀ n, P8092939309449441896.a n = (A189670 (n + 1) : ℚ)

end A189670

/-! ## A189670.P4991988489139994447

`3*n+2-A189632(2*n+1)`
-/

namespace A189670.P4991988489139994447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A189632 (2 * n + 1)

end

end A189670.P4991988489139994447

namespace A189670

/-- `3*n+2-A189632(2*n+1)` -/
def P4991988489139994447.Spec : Prop :=
  ∀ n, P4991988489139994447.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P15410926257377560515

`A001651(A284907(n+1))`
-/

namespace A189670.P15410926257377560515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A284907 (n + 1)).toNat

end

end A189670.P15410926257377560515

namespace A189670

/-- `A001651(A284907(n+1))` -/
def P15410926257377560515.Spec : Prop :=
  ∀ n, P15410926257377560515.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P3548257442348619148

`A285354(A285347(n+1))`
-/

namespace A189670.P3548257442348619148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (A285347 (n + 1)).toNat

end

end A189670.P3548257442348619148

namespace A189670

/-- `A285354(A285347(n+1))` -/
def P3548257442348619148.Spec : Prop :=
  ∀ n, P3548257442348619148.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P9407347546050161139

`A285354(A285345(2*n+1)+2*n)`
-/

namespace A189670.P9407347546050161139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (A285345 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A189670.P9407347546050161139

namespace A189670

/-- `A285354(A285345(2*n+1)+2*n)` -/
def P9407347546050161139.Spec : Prop :=
  ∀ n, P9407347546050161139.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P682010128471938402

`A285354(2*n+1-A284905(2*n+1))`
-/

namespace A189670.P682010128471938402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 ((2 * n + 1 : ℤ) - A284905 (2 * n + 1)).toNat

end

end A189670.P682010128471938402

namespace A189670

/-- `A285354(2*n+1-A284905(2*n+1))` -/
def P682010128471938402.Spec : Prop :=
  ∀ n, P682010128471938402.a n = A189670 (n + 1)

end A189670

/-! ## A189670.P6851914318369960092

`A285354(A284905(A285346(n+1))+2*n)`
-/

namespace A189670.P6851914318369960092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (A284905 (A285346 (n + 1)).toNat + (2 * n : ℤ)).toNat

end

end A189670.P6851914318369960092

namespace A189670

/-- `A285354(A284905(A285346(n+1))+2*n)` -/
def P6851914318369960092.Spec : Prop :=
  ∀ n, P6851914318369960092.a n = A189670 (n + 1)

end A189670

/-!
# A189671: Partial sums of A189668.

The programs for A189671, the canonical program `A189671.P7623084911066251781` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189671 has offset 1).

The definition of A189671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189671.P7623084911066251781

`∑[col((2*n-a(floor(n/3)))%3)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189671

/-- `∑[col((2*n-a(floor(n/3)))%3)]` -/
def P7623084911066251781.Spec : Prop :=
  ∀ n, (P7623084911066251781.a n : ℤ) = A189671 (n + 1)

theorem P7623084911066251781.correct : P7623084911066251781.Spec := by
  intro n
  simp only [A189671, Nat.add_sub_cancel]

end A189671

/-! ## A189671.P4609188921975697455

`∑[A189668(1+n)]`
-/

namespace A189671.P4609188921975697455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P4609188921975697455

namespace A189671

/-- `∑[A189668(1+n)]` -/
def P4609188921975697455.Spec : Prop :=
  ∀ n, P4609188921975697455.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P4195782077970703465

`∑[char[A285353(n+1)]]`
-/

namespace A189671.P4195782077970703465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P4195782077970703465

namespace A189671

/-- `∑[char[A285353(n+1)]]` -/
def P4195782077970703465.Spec : Prop :=
  ∀ n, (P4195782077970703465.a n : ℤ) = A189671 (n + 1)

end A189671

/-! ## A189671.P1675883208859308146

`∑[A284907(n+1)%2]`
-/

namespace A189671.P1675883208859308146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284907 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P1675883208859308146

namespace A189671

/-- `∑[A284907(n+1)%2]` -/
def P1675883208859308146.Spec : Prop :=
  ∀ n, P1675883208859308146.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P4923540769479706190

`∑[A287438(n+1)%2]`
-/

namespace A189671.P4923540769479706190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287438 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P4923540769479706190

namespace A189671

/-- `∑[A287438(n+1)%2]` -/
def P4923540769479706190.Spec : Prop :=
  ∀ n, P4923540769479706190.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P6452823745899124980

`∑[A287528(n+1)%2]`
-/

namespace A189671.P6452823745899124980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287528 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P6452823745899124980

namespace A189671

/-- `∑[A287528(n+1)%2]` -/
def P6452823745899124980.Spec : Prop :=
  ∀ n, P6452823745899124980.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P10353165085127773406

`∑[4%A326420(n+1)]`
-/

namespace A189671.P10353165085127773406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A326420 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P10353165085127773406

namespace A189671

/-- `∑[4%A326420(n+1)]` -/
def P10353165085127773406.Spec : Prop :=
  ∀ n, P10353165085127773406.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P9660468283073289369

`∑[char[A285347(n+1)+n]]`
-/

namespace A189671.P9660468283073289369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P9660468283073289369

namespace A189671

/-- `∑[char[A285347(n+1)+n]]` -/
def P9660468283073289369.Spec : Prop :=
  ∀ n, (P9660468283073289369.a n : ℤ) = A189671 (n + 1)

end A189671

/-! ## A189671.P16044682909145972776

`∑[val(A287441(n+1)+n, 2)]`
-/

namespace A189671.P16044682909145972776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287441 (n + 1) + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P16044682909145972776

namespace A189671

/-- `∑[val(A287441(n+1)+n, 2)]` -/
def P16044682909145972776.Spec : Prop :=
  ∀ n, (P16044682909145972776.a n : ℤ) = A189671 (n + 1)

end A189671

/-! ## A189671.P14944662797663962683

`∑[val(A287529(n+1)+n, 2)]`
-/

namespace A189671.P14944662797663962683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A287529 (n + 1) + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P14944662797663962683

namespace A189671

/-- `∑[val(A287529(n+1)+n, 2)]` -/
def P14944662797663962683.Spec : Prop :=
  ∀ n, (P14944662797663962683.a n : ℤ) = A189671 (n + 1)

end A189671

/-! ## A189671.P7360878099685119422

`∑[A284906(n+1)-Δ[n²]]`
-/

namespace A189671.P7360878099685119422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P7360878099685119422

namespace A189671

/-- `∑[A284906(n+1)-Δ[n²]]` -/
def P7360878099685119422.Spec : Prop :=
  ∀ n, P7360878099685119422.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P1316057441117328454

`a(n-1)+1-A285351(n)` with `a(0)=0`
-/

namespace A189671.P1316057441117328454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A285351 n)

end

end A189671.P1316057441117328454

namespace A189671

/-- `a(n-1)+1-A285351(n)` -/
def P1316057441117328454.Spec : Prop :=
  ∀ n, P1316057441117328454.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P6370092759920371590

`∑[val(A189670(n+1)+1+n, 2)]`
-/

namespace A189671.P6370092759920371590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A189670 (n + 1) + 1 + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P6370092759920371590

namespace A189671

/-- `∑[val(A189670(n+1)+1+n, 2)]` -/
def P6370092759920371590.Spec : Prop :=
  ∀ n, (P6370092759920371590.a n : ℤ) = A189671 (n + 1)

end A189671

/-! ## A189671.P3726806023995322518

`∑[2*A189727(n+1)-A287438(n+1)]`
-/

namespace A189671.P3726806023995322518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189727 (n + 1) - A287438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P3726806023995322518

namespace A189671

/-- `∑[2*A189727(n+1)-A287438(n+1)]` -/
def P3726806023995322518.Spec : Prop :=
  ∀ n, P3726806023995322518.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P17710193099628669634

`A285351(n+1)-∑[A285351(n+1)]+n`
-/

namespace A189671.P17710193099628669634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285351 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A189671.P17710193099628669634

namespace A189671

/-- `A285351(n+1)-∑[A285351(n+1)]+n` -/
def P17710193099628669634.Spec : Prop :=
  ∀ n, P17710193099628669634.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P10651998777098175121

`∑[A284932(Δ[A284907(n+1)])]`
-/

namespace A189671.P10651998777098175121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P10651998777098175121

namespace A189671

/-- `∑[A284932(Δ[A284907(n+1)])]` -/
def P10651998777098175121.Spec : Prop :=
  ∀ n, P10651998777098175121.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P13379608105211348154

`∑[A284938(Δ[A284907(n+1)])]`
-/

namespace A189671.P13379608105211348154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P13379608105211348154

namespace A189671

/-- `∑[A284938(Δ[A284907(n+1)])]` -/
def P13379608105211348154.Spec : Prop :=
  ∀ n, P13379608105211348154.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P2105828593974050236

`A285345(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A189671.P2105828593974050236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285345 (2 * n) + a (n - 1)

end

end A189671.P2105828593974050236

namespace A189671

/-- `A285345(2*n)+a(n-1)` -/
def P2105828593974050236.Spec : Prop :=
  ∀ n, P2105828593974050236.a n = A189671 (n + 1)

end A189671

/-! ## A189671.P5833068535906988476

`∑[A189632(2*n+1)]`
-/

namespace A189671.P5833068535906988476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P5833068535906988476

namespace A189671

/-- `∑[A189632(2*n+1)]` -/
def P5833068535906988476.Spec : Prop :=
  ∀ n, P5833068535906988476.a n = A189671 (n + 1)

end A189671

/-!
# A189672: Partial sums of A080846.

The programs for A189672, the canonical program `A189672.P3330123813147637` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189672 has offset 1).

The definition of A189672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189672.P3330123813147637

`floor((n+2)/3)+a(floor((n+1)/3)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189672

/-- `floor((n+2)/3)+a(floor((n+1)/3)-1)` -/
def P3330123813147637.Spec : Prop :=
  ∀ n, P3330123813147637.a n = A189672 (n + 1)

theorem P3330123813147637.correct : P3330123813147637.Spec := by
  intro n
  simp only [A189672, Nat.add_sub_cancel]

end A189672

/-! ## A189672.P7678249379855851138

`∑[log2(((n+1)/3^val(n+1, 3))%3)]`
-/

namespace A189672.P7678249379855851138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P7678249379855851138

namespace A189672

/-- `∑[log2(((n+1)/3^val(n+1, 3))%3)]` -/
def P7678249379855851138.Spec : Prop :=
  ∀ n, P7678249379855851138.a n = (A189672 (n + 1) : ℝ)

end A189672

/-! ## A189672.P12969892876658816587

`∑[A080846(n+1)]`
-/

namespace A189672.P12969892876658816587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P12969892876658816587

namespace A189672

/-- `∑[A080846(n+1)]` -/
def P12969892876658816587.Spec : Prop :=
  ∀ n, P12969892876658816587.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P3709571346329255251

`∑[abs(Δ[A136690(n)])]`
-/

namespace A189672.P3709571346329255251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P3709571346329255251

namespace A189672

/-- `∑[abs(Δ[A136690(n)])]` -/
def P3709571346329255251.Spec : Prop :=
  ∀ n, P3709571346329255251.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P1881589641965634428

`∑[log2(A060236(n+1))]`
-/

namespace A189672.P1881589641965634428
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060236 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P1881589641965634428

namespace A189672

/-- `∑[log2(A060236(n+1))]` -/
def P1881589641965634428.Spec : Prop :=
  ∀ n, P1881589641965634428.a n = (A189672 (n + 1) : ℝ)

end A189672

/-! ## A189672.P7240400624044181202

`∑[1-A137893(n+1)]`
-/

namespace A189672.P7240400624044181202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P7240400624044181202

namespace A189672

/-- `∑[1-A137893(n+1)]` -/
def P7240400624044181202.Spec : Prop :=
  ∀ n, P7240400624044181202.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P7132101517194046517

`∑[A319444(n+1)%2]`
-/

namespace A189672.P7132101517194046517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319444 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P7132101517194046517

namespace A189672

/-- `∑[A319444(n+1)%2]` -/
def P7132101517194046517.Spec : Prop :=
  ∀ n, P7132101517194046517.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P1948412053501493693

`∑[char[A026179(n+2)-1]]`
-/

namespace A189672.P1948412053501493693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P1948412053501493693

namespace A189672

/-- `∑[char[A026179(n+2)-1]]` -/
def P1948412053501493693.Spec : Prop :=
  ∀ n, (P1948412053501493693.a n : ℤ) = A189672 (n + 1)

end A189672

/-! ## A189672.P13569659532621864027

`∑[char[A026232(n+1)-2]]`
-/

namespace A189672.P13569659532621864027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P13569659532621864027

namespace A189672

/-- `∑[char[A026232(n+1)-2]]` -/
def P13569659532621864027.Spec : Prop :=
  ∀ n, (P13569659532621864027.a n : ℤ) = A189672 (n + 1)

end A189672

/-! ## A189672.P18088338166290198665

`∑[(1-A343785(n+1))/2]`
-/

namespace A189672.P18088338166290198665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A343785 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P18088338166290198665

namespace A189672

/-- `∑[(1-A343785(n+1))/2]` -/
def P18088338166290198665.Spec : Prop :=
  ∀ n, P18088338166290198665.a n = (A189672 (n + 1) : ℚ)

end A189672

/-! ## A189672.P1145668409211255318

`∑[(A038502(n+1)-1)%3]`
-/

namespace A189672.P1145668409211255318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038502 (n + 1) - 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P1145668409211255318

namespace A189672

/-- `∑[(A038502(n+1)-1)%3]` -/
def P1145668409211255318.Spec : Prop :=
  ∀ n, P1145668409211255318.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P10221553651502386007

`∑[char[record[A026214(n+1)-1]]]`
-/

namespace A189672.P10221553651502386007
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P10221553651502386007

namespace A189672

/-- `∑[char[record[A026214(n+1)-1]]]` -/
def P10221553651502386007.Spec : Prop :=
  ∀ n, (P10221553651502386007.a n : ℤ) = A189672 (n + 1)

end A189672

/-! ## A189672.P18140483057060435568

`(n+1-A062756(n+1))/2`
-/

namespace A189672.P18140483057060435568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A062756 (n + 1) : ℚ) / 2

end

end A189672.P18140483057060435568

namespace A189672

/-- `(n+1-A062756(n+1))/2` -/
def P18140483057060435568.Spec : Prop :=
  ∀ n, P18140483057060435568.a n = (A189672 (n + 1) : ℚ)

end A189672

/-! ## A189672.P5492096975304165575

`∑[1-char[A026140(n+1)-1]]`
-/

namespace A189672.P5492096975304165575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P5492096975304165575

namespace A189672

/-- `∑[1-char[A026140(n+1)-1]]` -/
def P5492096975304165575.Spec : Prop :=
  ∀ n, P5492096975304165575.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P10674738517730853048

`∑[1-char[A026225(n+1)-1]]`
-/

namespace A189672.P10674738517730853048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189672.P10674738517730853048

namespace A189672

/-- `∑[1-char[A026225(n+1)-1]]` -/
def P10674738517730853048.Spec : Prop :=
  ∀ n, P10674738517730853048.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P17772301093722802441

`A189641(A060236(n+1)+n)`
-/

namespace A189672.P17772301093722802441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (A060236 (n + 1) + (n : ℤ)).toNat

end

end A189672.P17772301093722802441

namespace A189672

/-- `A189641(A060236(n+1)+n)` -/
def P17772301093722802441.Spec : Prop :=
  ∀ n, P17772301093722802441.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P6673381043461528912

`A081603(n+1)+A054861(n+1)`
-/

namespace A189672.P6673381043461528912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (n + 1) + A054861 (n + 1)

end

end A189672.P6673381043461528912

namespace A189672

/-- `A081603(n+1)+A054861(n+1)` -/
def P6673381043461528912.Spec : Prop :=
  ∀ n, P6673381043461528912.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P1485366246622727810

`A189641(A080846(n+1)+1+n)`
-/

namespace A189672.P1485366246622727810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (A080846 (n + 1) + 1 + (n : ℤ)).toNat

end

end A189672.P1485366246622727810

namespace A189672

/-- `A189641(A080846(n+1)+1+n)` -/
def P1485366246622727810.Spec : Prop :=
  ∀ n, P1485366246622727810.a n = A189672 (n + 1)

end A189672

/-! ## A189672.P909962459081293079

`A189641(2-A137893(n+1)+n)`
-/

namespace A189672.P909962459081293079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (2 - A137893 (n + 1) + (n : ℤ)).toNat

end

end A189672.P909962459081293079

namespace A189672

/-- `A189641(2-A137893(n+1)+n)` -/
def P909962459081293079.Spec : Prop :=
  ∀ n, P909962459081293079.a n = A189672 (n + 1)

end A189672

/-!
# A189673: Fixed point of the morphism 0->010, 1->110.

The programs for A189673, the canonical program `A189673.P730405193398399512` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189673 has offset 1).

The definition of A189673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189673.P7719570535651874648

`char[A026225(n+1)]`
-/

namespace A189673.P7719570535651874648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189673.P7719570535651874648

namespace A189673

/-- `char[A026225(n+1)]` -/
def P7719570535651874648.Spec : Prop :=
  ∀ n, (P7719570535651874648.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P14134501938253093417

`char[A026140(n+2)]`
-/

namespace A189673.P14134501938253093417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189673.P14134501938253093417

namespace A189673

/-- `char[A026140(n+2)]` -/
def P14134501938253093417.Spec : Prop :=
  ∀ n, (P14134501938253093417.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P420040580719272369

`char[lt[0, A327252(n)]]`
-/

namespace A189673.P420040580719272369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189673.P420040580719272369

namespace A189673

/-- `char[lt[0, A327252(n)]]` -/
def P420040580719272369.Spec : Prop :=
  ∀ n, (P420040580719272369.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P18249153524645424582

`char[∑[A026141(n+2)]]`
-/

namespace A189673.P18249153524645424582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189673.P18249153524645424582

namespace A189673

/-- `char[∑[A026141(n+2)]]` -/
def P18249153524645424582.Spec : Prop :=
  ∀ n, (P18249153524645424582.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P4057550249684518249

`char[record[A026178(n+1)]]`
-/

namespace A189673.P4057550249684518249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189673.P4057550249684518249

namespace A189673

/-- `char[record[A026178(n+1)]]` -/
def P4057550249684518249.Spec : Prop :=
  ∀ n, (P4057550249684518249.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P730405193398399512

`a(1-A080846(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189673

/-- `a(1-A080846(n))` -/
def P730405193398399512.Spec : Prop :=
  ∀ n, (P730405193398399512.a n : ℤ) = A189673 (n + 1)

theorem P730405193398399512.correct : P730405193398399512.Spec := by
  intro n
  simp only [A189673, Nat.add_sub_cancel]

end A189673

/-! ## A189673.P4235796064359653493

`1-ceil(1/A109041(n))`
-/

namespace A189673.P4235796064359653493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈1 / (A109041 n : ℚ)⌉

end

end A189673.P4235796064359653493

namespace A189673

/-- `1-ceil(1/A109041(n))` -/
def P4235796064359653493.Spec : Prop :=
  ∀ n, P4235796064359653493.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P12138950549859985732

`char[A026138(n+2)-1]`
-/

namespace A189673.P12138950549859985732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189673.P12138950549859985732

namespace A189673

/-- `char[A026138(n+2)-1]` -/
def P12138950549859985732.Spec : Prop :=
  ∀ n, (P12138950549859985732.a n : ℤ) = A189673 (n + 1)

end A189673

/-! ## A189673.P17035240924186293364

`floor(A026136(n+1)/(n+2))`
-/

namespace A189673.P17035240924186293364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026136 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A189673.P17035240924186293364

namespace A189673

/-- `floor(A026136(n+1)/(n+2))` -/
def P17035240924186293364.Spec : Prop :=
  ∀ n, P17035240924186293364.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P2212439272961078485

`ceil(A134028(n)/((n+1)*(∑[n]+1)))`
-/

namespace A189673.P2212439272961078485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134028 n : ℚ) / (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℚ)⌉

end

end A189673.P2212439272961078485

namespace A189673

/-- `ceil(A134028(n)/((n+1)*(∑[n]+1)))` -/
def P2212439272961078485.Spec : Prop :=
  ∀ n, P2212439272961078485.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P16828687799883989092

`1-A156595(A308364(n)+2)`
-/

namespace A189673.P16828687799883989092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156595 (A308364 n + 2).toNat

end

end A189673.P16828687799883989092

namespace A189673

/-- `1-A156595(A308364(n)+2)` -/
def P16828687799883989092.Spec : Prop :=
  ∀ n, P16828687799883989092.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P4095050178817031871

`A057427(n)-A189640(n+1)`
-/

namespace A189673.P4095050178817031871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A189640 (n + 1)

end

end A189673.P4095050178817031871

namespace A189673

/-- `A057427(n)-A189640(n+1)` -/
def P4095050178817031871.Spec : Prop :=
  ∀ n, P4095050178817031871.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P10438782224314398991

`A137893(∑{p}[A047789(n), #]+n)`
-/

namespace A189673.P10438782224314398991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + n)

end

end A189673.P10438782224314398991

namespace A189673

/-- `A137893(∑{p}[A047789(n), #]+n)` -/
def P10438782224314398991.Spec : Prop :=
  ∀ n, P10438782224314398991.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P16840019176322724062

`A089207(n+1)%A026136(n+1)`
-/

namespace A189673.P16840019176322724062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089207 (n + 1)) (A026136 (n + 1))

end

end A189673.P16840019176322724062

namespace A189673

/-- `A089207(n+1)%A026136(n+1)` -/
def P16840019176322724062.Spec : Prop :=
  ∀ n, P16840019176322724062.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P2049863131159779395

`p?[A006015(a(A049321(n)))]-2` with `a(0)=2`
-/

namespace A189673.P2049863131159779395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A006015 (f1 (A049321 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A189673.P2049863131159779395

namespace A189673

/-- `p?[A006015(a(A049321(n)))]-2` -/
def P2049863131159779395.Spec : Prop :=
  ∀ n, P2049863131159779395.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P7274842543108480301

`A368230(n)%2`
-/

namespace A189673.P7274842543108480301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368230 n) 2

end

end A189673.P7274842543108480301

namespace A189673

/-- `A368230(n)%2` -/
def P7274842543108480301.Spec : Prop :=
  ∀ n, P7274842543108480301.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P8201115217900068699

`and(A054977(n), A368230(n))`
-/

namespace A189673.P8201115217900068699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A368230 n)

end

end A189673.P8201115217900068699

namespace A189673

/-- `and(A054977(n), A368230(n))` -/
def P8201115217900068699.Spec : Prop :=
  ∀ n, P8201115217900068699.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P7555972732819880730

`and(A057427(n), A368230(n))`
-/

namespace A189673.P7555972732819880730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A368230 n)

end

end A189673.P7555972732819880730

namespace A189673

/-- `and(A057427(n), A368230(n))` -/
def P7555972732819880730.Spec : Prop :=
  ∀ n, P7555972732819880730.a n = A189673 (n + 1)

end A189673

/-! ## A189673.P15468652998537227514

`and(A158388(n), A368230(n))`
-/

namespace A189673.P15468652998537227514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A368230 n)

end

end A189673.P15468652998537227514

namespace A189673

/-- `and(A158388(n), A368230(n))` -/
def P15468652998537227514.Spec : Prop :=
  ∀ n, P15468652998537227514.a n = A189673 (n + 1)

end A189673

/-!
# A189674: Partial sums of A189673.

The programs for A189674, the canonical program `A189674.P3860847685041181610` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189674 has offset 1).

The definition of A189674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189674.P3860847685041181610

`a(floor((n+3)/3)-1)+floor((n+2)/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189674

/-- `a(floor((n+3)/3)-1)+floor((n+2)/3)` -/
def P3860847685041181610.Spec : Prop :=
  ∀ n, P3860847685041181610.a n = A189674 (n + 1)

theorem P3860847685041181610.correct : P3860847685041181610.Spec := by
  intro n
  simp only [A189674, Nat.add_sub_cancel]

end A189674

/-! ## A189674.P3813691341911402897

`ceil(a(floor(n/3))+n/3)` with `a(0)=0`
-/

namespace A189674.P3813691341911402897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a ⌊(n : ℚ) / 3⌋.toNat : ℚ) + (n : ℚ) / 3⌉

end

end A189674.P3813691341911402897

namespace A189674

/-- `ceil(a(floor(n/3))+n/3)` -/
def P3813691341911402897.Spec : Prop :=
  ∀ n, P3813691341911402897.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P9579812605063603810

`round(a(floor(n/3))+(n+1)/3)` with `a(0)=0`
-/

namespace A189674.P9579812605063603810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 3⌋.toNat : ℚ) + (n + 1 : ℚ) / 3)

end

end A189674.P9579812605063603810

namespace A189674

/-- `round(a(floor(n/3))+(n+1)/3)` -/
def P9579812605063603810.Spec : Prop :=
  ∀ n, P9579812605063603810.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P18082955449114089685

`n+a(floor(n/3))-floor(2*n/3)` with `a(0)=0, a(1)=1`
-/

namespace A189674.P18082955449114089685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) + a ⌊(n : ℚ) / 3⌋.toNat - ⌊(2 * n : ℚ) / 3⌋

end

end A189674.P18082955449114089685

namespace A189674

/-- `n+a(floor(n/3))-floor(2*n/3)` -/
def P18082955449114089685.Spec : Prop :=
  ∀ n, P18082955449114089685.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P7586787473946514746

`∑[A189673(n+1)]`
-/

namespace A189674.P7586787473946514746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189674.P7586787473946514746

namespace A189674

/-- `∑[A189673(n+1)]` -/
def P7586787473946514746.Spec : Prop :=
  ∀ n, P7586787473946514746.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P4412169199794488421

`n-A189641(n+1)`
-/

namespace A189674.P4412169199794488421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A189641 (n + 1)

end

end A189674.P4412169199794488421

namespace A189674

/-- `n-A189641(n+1)` -/
def P4412169199794488421.Spec : Prop :=
  ∀ n, P4412169199794488421.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P5005842237193225030

`(A062756(n)+n)/2`
-/

namespace A189674.P5005842237193225030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n + (n : ℤ) : ℚ) / 2

end

end A189674.P5005842237193225030

namespace A189674

/-- `(A062756(n)+n)/2` -/
def P5005842237193225030.Spec : Prop :=
  ∀ n, P5005842237193225030.a n = (A189674 (n + 1) : ℚ)

end A189674

/-! ## A189674.P782076730914020616

`∑[char[A026225(n+1)]]`
-/

namespace A189674.P782076730914020616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189674.P782076730914020616

namespace A189674

/-- `∑[char[A026225(n+1)]]` -/
def P782076730914020616.Spec : Prop :=
  ∀ n, (P782076730914020616.a n : ℤ) = A189674 (n + 1)

end A189674

/-! ## A189674.P6144030071800650593

`∑[char[A026140(n+2)]]`
-/

namespace A189674.P6144030071800650593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189674.P6144030071800650593

namespace A189674

/-- `∑[char[A026140(n+2)]]` -/
def P6144030071800650593.Spec : Prop :=
  ∀ n, (P6144030071800650593.a n : ℤ) = A189674 (n + 1)

end A189674

/-! ## A189674.P11810395480808278708

`(log2(A120880(n))+n)/2`
-/

namespace A189674.P11810395480808278708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A120880 n : ℝ) + (n : ℝ)) / 2

end

end A189674.P11810395480808278708

namespace A189674

/-- `(log2(A120880(n))+n)/2` -/
def P11810395480808278708.Spec : Prop :=
  ∀ n, P11810395480808278708.a n = (A189674 (n + 1) : ℝ)

end A189674

/-! ## A189674.P6391554168198140168

`n-∑[A189640(n+1)]`
-/

namespace A189674.P6391554168198140168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189674.P6391554168198140168

namespace A189674

/-- `n-∑[A189640(n+1)]` -/
def P6391554168198140168.Spec : Prop :=
  ∀ n, P6391554168198140168.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P10670492495618339063

`(val(A006047(n), 2)+n)/2`
-/

namespace A189674.P10670492495618339063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A006047 n).toNat 2 + n : ℚ) / 2

end

end A189674.P10670492495618339063

namespace A189674

/-- `(val(A006047(n), 2)+n)/2` -/
def P10670492495618339063.Spec : Prop :=
  ∀ n, P10670492495618339063.a n = (A189674 (n + 1) : ℚ)

end A189674

/-! ## A189674.P12274361744240072449

`A137893(n)+a(n-1)` with `a(0)=0`
-/

namespace A189674.P12274361744240072449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A137893 n + a (n - 1)

end

end A189674.P12274361744240072449

namespace A189674

/-- `A137893(n)+a(n-1)` -/
def P12274361744240072449.Spec : Prop :=
  ∀ n, P12274361744240072449.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P13790741367727250093

`∑[char[A026138(n+2)-1]]`
-/

namespace A189674.P13790741367727250093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189674.P13790741367727250093

namespace A189674

/-- `∑[char[A026138(n+2)-1]]` -/
def P13790741367727250093.Spec : Prop :=
  ∀ n, (P13790741367727250093.a n : ℤ) = A189674 (n + 1)

end A189674

/-! ## A189674.P16135108178041868515

`n-∑[char[A026179(n+2)]]`
-/

namespace A189674.P16135108178041868515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189674.P16135108178041868515

namespace A189674

/-- `n-∑[char[A026179(n+2)]]` -/
def P16135108178041868515.Spec : Prop :=
  ∀ n, P16135108178041868515.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P7100492681278256303

`A160384(n)+A054861(n)`
-/

namespace A189674.P7100492681278256303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n + A054861 n

end

end A189674.P7100492681278256303

namespace A189674

/-- `A160384(n)+A054861(n)` -/
def P7100492681278256303.Spec : Prop :=
  ∀ n, P7100492681278256303.a n = A189674 (n + 1)

end A189674

/-! ## A189674.P15313543438310566216

`A089792(n)-A081603(n)`
-/

namespace A189674.P15313543438310566216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n - A081603 n

end

end A189674.P15313543438310566216

namespace A189674

/-- `A089792(n)-A081603(n)` -/
def P15313543438310566216.Spec : Prop :=
  ∀ n, P15313543438310566216.a n = A189674 (n + 1)

end A189674

/-!
# A189675: Composition of Catalan and Fibonacci numbers.

The programs for A189675, the canonical program `A189675.P6081265892549474111` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189675 has offset 1).

The definition of A189675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189675.P6081265892549474111

`A171567(n)*A193588(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189675

/-- `A171567(n)*A193588(n)` -/
def P6081265892549474111.Spec : Prop :=
  ∀ n, P6081265892549474111.a n = A189675 (n + 1)

theorem P6081265892549474111.correct : P6081265892549474111.Spec := by
  intro n
  simp only [A189675, Nat.add_sub_cancel]

end A189675

/-! ## A189675.P11109463832928151613

`A033184(n+1)*A097807(n)*A193588(n)`
-/

namespace A189675.P11109463832928151613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A097807 n * A193588 n

end

end A189675.P11109463832928151613

namespace A189675

/-- `A033184(n+1)*A097807(n)*A193588(n)` -/
def P11109463832928151613.Spec : Prop :=
  ∀ n, P11109463832928151613.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P1927986345669292938

`A099039(comp[∑[n]])*A193588(n)`
-/

namespace A189675.P1927986345669292938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A193588 n

end

end A189675.P1927986345669292938

namespace A189675

/-- `A099039(comp[∑[n]])*A193588(n)` -/
def P1927986345669292938.Spec : Prop :=
  ∀ n, P1927986345669292938.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P10630103668129992018

`A099039(A014132(n+1))*A193588(n)*A033999(n)²`
-/

namespace A189675.P10630103668129992018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (A014132 (n + 1)).toNat * A193588 n * A033999 n ^ 2

end

end A189675.P10630103668129992018

namespace A189675

/-- `A099039(A014132(n+1))*A193588(n)*A033999(n)²` -/
def P10630103668129992018.Spec : Prop :=
  ∀ n, P10630103668129992018.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P12870233872781748220

`A099039(A014132(n+1))*A193588(n)*A087960(n)²`
-/

namespace A189675.P12870233872781748220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (A014132 (n + 1)).toNat * A193588 n * A087960 n ^ 2

end

end A189675.P12870233872781748220

namespace A189675

/-- `A099039(A014132(n+1))*A193588(n)*A087960(n)²` -/
def P12870233872781748220.Spec : Prop :=
  ∀ n, P12870233872781748220.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P12902804097189601736

`A099039(A014132(n+1))*A193588(n)*A097807(n)²`
-/

namespace A189675.P12902804097189601736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (A014132 (n + 1)).toNat * A193588 n * A097807 n ^ 2

end

end A189675.P12902804097189601736

namespace A189675

/-- `A099039(A014132(n+1))*A193588(n)*A097807(n)²` -/
def P12902804097189601736.Spec : Prop :=
  ∀ n, P12902804097189601736.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P2394772937452554389

`(A099039(A014132(n+1))*A193588(n))^A062157(n)²`
-/

namespace A189675.P2394772937452554389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099039 (A014132 (n + 1)).toNat * A193588 n : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A189675.P2394772937452554389

namespace A189675

/-- `(A099039(A014132(n+1))*A193588(n))^A062157(n)²` -/
def P2394772937452554389.Spec : Prop :=
  ∀ n, P2394772937452554389.a n = (A189675 (n + 1) : ℚ)

end A189675

/-! ## A189675.P12861736282713755920

`(A099039(A014132(n+1))+A008683(9*(n+1)))*A193588(n)`
-/

namespace A189675.P12861736282713755920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099039 (A014132 (n + 1)).toNat + A008683 (9 * (n + 1))) * A193588 n

end

end A189675.P12861736282713755920

namespace A189675

/-- `(A099039(A014132(n+1))+A008683(9*(n+1)))*A193588(n)` -/
def P12861736282713755920.Spec : Prop :=
  ∀ n, P12861736282713755920.a n = A189675 (n + 1)

end A189675

/-! ## A189675.P3979819934063822804

`A099039(A014132(n+1))%A000041(n+2)*A193588(n)`
-/

namespace A189675.P3979819934063822804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099039 (A014132 (n + 1)).toNat) (A000041 (n + 2)) * A193588 n

end

end A189675.P3979819934063822804

namespace A189675

/-- `A099039(A014132(n+1))%A000041(n+2)*A193588(n)` -/
def P3979819934063822804.Spec : Prop :=
  ∀ n, P3979819934063822804.a n = A189675 (n + 1)

end A189675

/-!
# A189676: a(n) = n + [nr/s] + [nt/s]; r=Pi/2, s=arcsin(3/5), t=arcsin(4/5).

The programs for A189676, the canonical program `A189676.P9275464916315744742` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189676 has offset 1).

The definition of A189676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189676.P9275464916315744742

`2*A189681(1+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189676

/-- `2*A189681(1+n)` -/
def P9275464916315744742.Spec : Prop :=
  ∀ n, P9275464916315744742.a n = A189676 (n + 1)

theorem P9275464916315744742.correct : P9275464916315744742.Spec := by
  intro n
  simp only [A189676, Nat.add_sub_cancel]

end A189676

/-! ## A189676.P9635138884490397316

`A189681(n+1)+A189681(Δ[n²]-n)`
-/

namespace A189676.P9635138884490397316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189681 (n + 1) + A189681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A189676.P9635138884490397316

namespace A189676

/-- `A189681(n+1)+A189681(Δ[n²]-n)` -/
def P9635138884490397316.Spec : Prop :=
  ∀ n, P9635138884490397316.a n = A189676 (n + 1)

end A189676

/-! ## A189676.P7654774353974059820

`A004277(A189681(n+1))`
-/

namespace A189676.P7654774353974059820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189681 (n + 1)).toNat

end

end A189676.P7654774353974059820

namespace A189676

/-- `A004277(A189681(n+1))` -/
def P7654774353974059820.Spec : Prop :=
  ∀ n, P7654774353974059820.a n = A189676 (n + 1)

end A189676

/-! ## A189676.P5310953414869464061

`A005843(A189681(n+1)%A400699(n))`
-/

namespace A189676.P5310953414869464061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A189681 (n + 1)) (A400699 n)).toNat

end

end A189676.P5310953414869464061

namespace A189676

/-- `A005843(A189681(n+1)%A400699(n))` -/
def P5310953414869464061.Spec : Prop :=
  ∀ n, P5310953414869464061.a n = A189676 (n + 1)

end A189676

/-! ## A189676.P10310742980187766722

`A004275(A189681(n+1)+1)`
-/

namespace A189676.P10310742980187766722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A189681 (n + 1) + 1).toNat

end

end A189676.P10310742980187766722

namespace A189676

/-- `A004275(A189681(n+1)+1)` -/
def P10310742980187766722.Spec : Prop :=
  ∀ n, P10310742980187766722.a n = A189676 (n + 1)

end A189676

/-!
# A189677: n+[ns/r]+[nt/r]; r=1, s=arctan(1/2), t=arctan(2).

The programs for A189677, there is no canonical definition to state claims against.
-/

/-! ## A189677.P946879145010546938

`A171397(∑[p?[A127326(n)]])`
-/

namespace A189677.P946879145010546938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189677.P946879145010546938

/-! ## A189677.P9190043178446632953

`A052382(n+1)+A292665(n+1)+A185284(A034870(n))`
-/

namespace A189677.P9190043178446632953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) + (A292665 (n + 1) + A185284 (A034870 n).toNat)

end

end A189677.P9190043178446632953

/-! ## A189677.P99386243363877998

`A239215(n+1)+A286355(n+1)%A078859(n+1)`
-/

namespace A189677.P99386243363877998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239215 (n + 1) + Int.tmod (A286355 (n + 1)) (A078859 (n + 1))

end

end A189677.P99386243363877998

/-! ## A189677.P831818383414379251

`A194979(3*(n+1))+A000523(A301480(n+1))`
-/

namespace A189677.P831818383414379251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (3 * (n + 1)) + A000523 (A301480 (n + 1)).toNat

end

end A189677.P831818383414379251

/-! ## A189677.P10235534198467938242

`∑[A100429(ceil(2^(n-1))+1)+1]`
-/

namespace A189677.P10235534198467938242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189677.P10235534198467938242

/-!
# A189678: n+[nr/s]+[nt/s]; r=1, s=arctan(1/2), t=arctan(2).

The programs for A189678, the canonical program `A189678.P17554122643238606645` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189678 has offset 1).

The definition of A189678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189678.P17554122643238606645

`n+1+floor((n+1)/atan(1/2))+floor((n+1)*atan(2)/atan(1/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189678

/-- `n+1+floor((n+1)/atan(1/2))+floor((n+1)*atan(2)/atan(1/2))` -/
def P17554122643238606645.Spec : Prop :=
  ∀ n, P17554122643238606645.a n = A189678 (n + 1)

theorem P17554122643238606645.correct : P17554122643238606645.Spec := by
  intro n
  simp only [A189678, Nat.add_sub_cancel]

end A189678

/-! ## A189678.P7641293923874570897

`A189535(2*(n+1))`
-/

namespace A189678.P7641293923874570897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189535 (2 * (n + 1))

end

end A189678.P7641293923874570897

namespace A189678

/-- `A189535(2*(n+1))` -/
def P7641293923874570897.Spec : Prop :=
  ∀ n, P7641293923874570897.a n = A189678 (n + 1)

end A189678

/-! ## A189678.P1224597342524282213

`record[A189535(A114112(n+2))]`
-/

namespace A189678.P1224597342524282213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189535 (A114112 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189678.P1224597342524282213

namespace A189678

/-- `record[A189535(A114112(n+2))]` -/
def P1224597342524282213.Spec : Prop :=
  ∀ n, P1224597342524282213.a n = A189678 (n + 1)

end A189678

/-! ## A189678.P6805526702968887352

`or(char[3], A189535(A317440(n+1)))`
-/

namespace A189678.P6805526702968887352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189535 (A317440 (n + 1)).toNat)

end

end A189678.P6805526702968887352

namespace A189678

/-- `or(char[3], A189535(A317440(n+1)))` -/
def P6805526702968887352.Spec : Prop :=
  ∀ n, P6805526702968887352.a n = A189678 (n + 1)

end A189678

/-! ## A189678.P3603768070015587764

`A189535(A317108(n+1))%A189124(n+1)`
-/

namespace A189678.P3603768070015587764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189535 (A317108 (n + 1)).toNat) (A189124 (n + 1))

end

end A189678.P3603768070015587764

namespace A189678

/-- `A189535(A317108(n+1))%A189124(n+1)` -/
def P3603768070015587764.Spec : Prop :=
  ∀ n, P3603768070015587764.a n = A189678 (n + 1)

end A189678

/-! ## A189678.P1371218172815268356

`A189535(A317440(n+1))%A189124(n+1)`
-/

namespace A189678.P1371218172815268356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189535 (A317440 (n + 1)).toNat) (A189124 (n + 1))

end

end A189678.P1371218172815268356

namespace A189678

/-- `A189535(A317440(n+1))%A189124(n+1)` -/
def P1371218172815268356.Spec : Prop :=
  ∀ n, P1371218172815268356.a n = A189678 (n + 1)

end A189678

/-!
# A189679: a(n) = n + floor(nr/t) + floor(ns/t) with r=1, s=arctan(1/2), t=arctan(2).

The programs for A189679, the canonical program `A189679.P18313937688351137506` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189679 has offset 1).

The definition of A189679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189679.P18313937688351137506

`n+1+floor((n+1)/atan(2))+floor((n+1)*atan(1/2)/atan(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189679

/-- `n+1+floor((n+1)/atan(2))+floor((n+1)*atan(1/2)/atan(2))` -/
def P18313937688351137506.Spec : Prop :=
  ∀ n, P18313937688351137506.a n = A189679 (n + 1)

theorem P18313937688351137506.correct : P18313937688351137506.Spec := by
  intro n
  simp only [A189679, Nat.add_sub_cancel]

end A189679

/-! ## A189679.P13988011036105160679

`A189795(n+1)-(A020753(n+1)+1)`
-/

namespace A189679.P13988011036105160679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189795 (n + 1) - (A020753 (n + 1) + 1)

end

end A189679.P13988011036105160679

namespace A189679

/-- `A189795(n+1)-(A020753(n+1)+1)` -/
def P13988011036105160679.Spec : Prop :=
  ∀ n, P13988011036105160679.a n = A189679 (n + 1)

end A189679

/-! ## A189679.P13225095855328517007

`A059561(A016789(n))-A020753(n+1)`
-/

namespace A189679.P13225095855328517007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A016789 n).toNat - A020753 (n + 1)

end

end A189679.P13225095855328517007

namespace A189679

/-- `A059561(A016789(n))-A020753(n+1)` -/
def P13225095855328517007.Spec : Prop :=
  ∀ n, P13225095855328517007.a n = A189679 (n + 1)

end A189679

/-! ## A189679.P8785710602566709659

`A023443(A189795(n+1)-A020753(n+1))`
-/

namespace A189679.P8785710602566709659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189795 (n + 1) - A020753 (n + 1)).toNat

end

end A189679.P8785710602566709659

namespace A189679

/-- `A023443(A189795(n+1)-A020753(n+1))` -/
def P8785710602566709659.Spec : Prop :=
  ∀ n, P8785710602566709659.a n = A189679 (n + 1)

end A189679

/-! ## A189679.P7802003431244623861

`A260999(A028387(n))+A022846(n)`
-/

namespace A189679.P7802003431244623861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A028387 n).toNat + A022846 n

end

end A189679.P7802003431244623861

namespace A189679

/-- `A260999(A028387(n))+A022846(n)` -/
def P7802003431244623861.Spec : Prop :=
  ∀ n, P7802003431244623861.a n = A189679 (n + 1)

end A189679

/-!
# A189680: a(n) = n + [nr/t] + [ns/t]; r=Pi/2, s=arcsin(3/5), t=arcsin(4/5).

The programs for A189680, the canonical program `A189680.P5623634359219258761` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189680 has offset 1).

The definition of A189680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189680.P5623634359219258761

`2*A189682(1+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189680

/-- `2*A189682(1+n)` -/
def P5623634359219258761.Spec : Prop :=
  ∀ n, P5623634359219258761.a n = A189680 (n + 1)

theorem P5623634359219258761.correct : P5623634359219258761.Spec := by
  intro n
  simp only [A189680, Nat.add_sub_cancel]

end A189680

/-! ## A189680.P3379792357408291540

`A189682(n+1)+A189682(abs(xor(n, -1)))`
-/

namespace A189680.P3379792357408291540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189682 (n + 1) + A189682 |Int.xor (n : ℤ) (-1)|.toNat

end

end A189680.P3379792357408291540

namespace A189680

/-- `A189682(n+1)+A189682(abs(xor(n, -1)))` -/
def P3379792357408291540.Spec : Prop :=
  ∀ n, P3379792357408291540.a n = A189680 (n + 1)

end A189680

/-! ## A189680.P15966141127607982346

`A189682(n+1)+A189682(Δ[n²]-n)`
-/

namespace A189680.P15966141127607982346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189682 (n + 1) + A189682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A189680.P15966141127607982346

namespace A189680

/-- `A189682(n+1)+A189682(Δ[n²]-n)` -/
def P15966141127607982346.Spec : Prop :=
  ∀ n, P15966141127607982346.a n = A189680 (n + 1)

end A189680

/-! ## A189680.P13174597624830155353

`A004277(A189682(n+1))`
-/

namespace A189680.P13174597624830155353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189682 (n + 1)).toNat

end

end A189680.P13174597624830155353

namespace A189680

/-- `A004277(A189682(n+1))` -/
def P13174597624830155353.Spec : Prop :=
  ∀ n, P13174597624830155353.a n = A189680 (n + 1)

end A189680

/-! ## A189680.P3831761274833426926

`A004275(A189682(n+1)+1)`
-/

namespace A189680.P3831761274833426926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A189682 (n + 1) + 1).toNat

end

end A189680.P3831761274833426926

namespace A189680

/-- `A004275(A189682(n+1)+1)` -/
def P3831761274833426926.Spec : Prop :=
  ∀ n, P3831761274833426926.a n = A189680 (n + 1)

end A189680

/-! ## A189680.P7160761123888259325

`2*floor(log(A305525(n+1)))`
-/

namespace A189680.P7160761123888259325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.log (A305525 (n + 1) : ℝ)⌋

end

end A189680.P7160761123888259325

namespace A189680

/-- `2*floor(log(A305525(n+1)))` -/
def P7160761123888259325.Spec : Prop :=
  ∀ n, P7160761123888259325.a n = A189680 (n + 1)

end A189680

/-! ## A189680.P3702656994165159246

`2*(A094500(n+2)+n-1)`
-/

namespace A189680.P3702656994165159246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094500 (n + 2) + ((n : ℤ) - 1))

end

end A189680.P3702656994165159246

namespace A189680

/-- `2*(A094500(n+2)+n-1)` -/
def P3702656994165159246.Spec : Prop :=
  ∀ n, P3702656994165159246.a n = A189680 (n + 1)

end A189680

/-!
# A189681: (A189676)/2; from a 3-way partition of the positive integers.

The programs for A189681, the canonical program `A189681.P13035803910750786183` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189681 has offset 1).

The definition of A189681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189681.P13035803910750786183

`floor((n+1)*acot(1)/acot(3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189681

/-- `floor((n+1)*acot(1)/acot(3))` -/
def P13035803910750786183.Spec : Prop :=
  ∀ n, P13035803910750786183.a n = A189681 (n + 1)

theorem P13035803910750786183.correct : P13035803910750786183.Spec := by
  intro n
  simp only [A189681, Nat.add_sub_cancel]

end A189681

/-! ## A189681.P14416137259582815078

`A189676(n+1)/2`
-/

namespace A189681.P14416137259582815078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189676 (n + 1) : ℚ) / 2

end

end A189681.P14416137259582815078

namespace A189681

/-- `A189676(n+1)/2` -/
def P14416137259582815078.Spec : Prop :=
  ∀ n, P14416137259582815078.a n = (A189681 (n + 1) : ℚ)

end A189681

/-! ## A189681.P8895088090064571327

`A014682(A189676(n+1))`
-/

namespace A189681.P8895088090064571327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A189676 (n + 1)).toNat

end

end A189681.P8895088090064571327

namespace A189681

/-- `A014682(A189676(n+1))` -/
def P8895088090064571327.Spec : Prop :=
  ∀ n, P8895088090064571327.a n = A189681 (n + 1)

end A189681

/-! ## A189681.P7277076700508980239

`A008619(A189676(n+1)-2)`
-/

namespace A189681.P7277076700508980239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189676 (n + 1) - 2).toNat

end

end A189681.P7277076700508980239

namespace A189681

/-- `A008619(A189676(n+1)-2)` -/
def P7277076700508980239.Spec : Prop :=
  ∀ n, P7277076700508980239.a n = A189681 (n + 1)

end A189681

/-! ## A189681.P3576908910337618792

`A001281(A189676(n+1))`
-/

namespace A189681.P3576908910337618792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189676 (n + 1)).toNat

end

end A189681.P3576908910337618792

namespace A189681

/-- `A001281(A189676(n+1))` -/
def P3576908910337618792.Spec : Prop :=
  ∀ n, P3576908910337618792.a n = A189681 (n + 1)

end A189681

/-! ## A189681.P17198257649511366898

`A004526(A189676(n+1)+1)`
-/

namespace A189681.P17198257649511366898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189676 (n + 1) + 1).toNat

end

end A189681.P17198257649511366898

namespace A189681

/-- `A004526(A189676(n+1)+1)` -/
def P17198257649511366898.Spec : Prop :=
  ∀ n, P17198257649511366898.a n = A189681 (n + 1)

end A189681

/-! ## A189681.P7790253797848727226

`A057979(A189676(n+1)+1)`
-/

namespace A189681.P7790253797848727226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A189676 (n + 1) + 1).toNat

end

end A189681.P7790253797848727226

namespace A189681

/-- `A057979(A189676(n+1)+1)` -/
def P7790253797848727226.Spec : Prop :=
  ∀ n, P7790253797848727226.a n = A189681 (n + 1)

end A189681

/-!
# A189682: (A189680)/2; from a 3-way partition of the positive integers.

The programs for A189682, the canonical program `A189682.P1354051967655501564` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189682 has offset 1).

The definition of A189682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189682.P1354051967655501564

`floor((n+1)*acot(1)/acot(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189682

/-- `floor((n+1)*acot(1)/acot(2))` -/
def P1354051967655501564.Spec : Prop :=
  ∀ n, P1354051967655501564.a n = A189682 (n + 1)

theorem P1354051967655501564.correct : P1354051967655501564.Spec := by
  intro n
  simp only [A189682, Nat.add_sub_cancel]

end A189682

/-! ## A189682.P14559643600999232737

`A189680(1+n)/2`
-/

namespace A189682.P14559643600999232737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189680 (1 + n) : ℚ) / 2

end

end A189682.P14559643600999232737

namespace A189682

/-- `A189680(1+n)/2` -/
def P14559643600999232737.Spec : Prop :=
  ∀ n, P14559643600999232737.a n = (A189682 (n + 1) : ℚ)

end A189682

/-! ## A189682.P12536149574268394483

`comp[A189681(n+1)-1]+1`
-/

namespace A189682.P12536149574268394483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189681 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189682.P12536149574268394483

namespace A189682

/-- `comp[A189681(n+1)-1]+1` -/
def P12536149574268394483.Spec : Prop :=
  ∀ n, (P12536149574268394483.a n : ℤ) = A189682 (n + 1)

end A189682

/-! ## A189682.P14628913985317119351

`A078898(A189680(n+1))`
-/

namespace A189682.P14628913985317119351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A189680 (n + 1)).toNat

end

end A189682.P14628913985317119351

namespace A189682

/-- `A078898(A189680(n+1))` -/
def P14628913985317119351.Spec : Prop :=
  ∀ n, P14628913985317119351.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P8898482158413156242

`A008619(A189680(n+1)-1)`
-/

namespace A189682.P8898482158413156242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189680 (n + 1) - 1).toNat

end

end A189682.P8898482158413156242

namespace A189682

/-- `A008619(A189680(n+1)-1)` -/
def P8898482158413156242.Spec : Prop :=
  ∀ n, P8898482158413156242.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P6999881538425599124

`A052938(A189680(n+1)-2)`
-/

namespace A189682.P6999881538425599124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A189680 (n + 1) - 2).toNat

end

end A189682.P6999881538425599124

namespace A189682

/-- `A052938(A189680(n+1)-2)` -/
def P6999881538425599124.Spec : Prop :=
  ∀ n, P6999881538425599124.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P15782491130944683802

`A057979(A189680(n+1)-1)+1`
-/

namespace A189682.P15782491130944683802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A189680 (n + 1) - 1).toNat + 1

end

end A189682.P15782491130944683802

namespace A189682

/-- `A057979(A189680(n+1)-1)+1` -/
def P15782491130944683802.Spec : Prop :=
  ∀ n, P15782491130944683802.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P8749232456111433998

`A001281(A189680(n+1))`
-/

namespace A189682.P8749232456111433998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189680 (n + 1)).toNat

end

end A189682.P8749232456111433998

namespace A189682

/-- `A001281(A189680(n+1))` -/
def P8749232456111433998.Spec : Prop :=
  ∀ n, P8749232456111433998.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P564544739055072246

`A057979(A189680(n+1)+1)`
-/

namespace A189682.P564544739055072246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A189680 (n + 1) + 1).toNat

end

end A189682.P564544739055072246

namespace A189682

/-- `A057979(A189680(n+1)+1)` -/
def P564544739055072246.Spec : Prop :=
  ∀ n, P564544739055072246.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P2182319224869910765

`A246277(A189680(n+1)+2)-1`
-/

namespace A189682.P2182319224869910765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A189680 (n + 1) + 2).toNat - 1

end

end A189682.P2182319224869910765

namespace A189682

/-- `A246277(A189680(n+1)+2)-1` -/
def P2182319224869910765.Spec : Prop :=
  ∀ n, P2182319224869910765.a n = A189682 (n + 1)

end A189682

/-! ## A189682.P6205066739393686981

`floor(log(A305525(n+1)))`
-/

namespace A189682.P6205066739393686981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A305525 (n + 1) : ℝ)⌋

end

end A189682.P6205066739393686981

namespace A189682

/-- `floor(log(A305525(n+1)))` -/
def P6205066739393686981.Spec : Prop :=
  ∀ n, P6205066739393686981.a n = A189682 (n + 1)

end A189682

/-!
# A189684: Number of irregular pairs (p,2n).

The programs for A189684, there is no canonical definition to state claims against.
-/

/-! ## A189684.P4898919430338689076

`A001221(A039951(n+1))*A250213(2*n+2)`
-/

namespace A189684.P4898919430338689076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039951 (n + 1)).toNat * A250213 (2 * n + 2)

end

end A189684.P4898919430338689076

/-! ## A189684.P3978779678796220165

`A250213(2*n+2)+A059841(A085366(n+4))`
-/

namespace A189684.P3978779678796220165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (2 * n + 2) + A059841 (A085366 (n + 4)).toNat

end

end A189684.P3978779678796220165

/-! ## A189684.P17131636047663891277

`A250213(2*n+2)+A079261(A259527(n+4))`
-/

namespace A189684.P17131636047663891277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (2 * n + 2) + A079261 (A259527 (n + 4)).toNat

end

end A189684.P17131636047663891277

/-! ## A189684.P13067618749845748669

`A250213(2*(n+1))+A069847(A054000(3*n+4))`
-/

namespace A189684.P13067618749845748669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (2 * (n + 1)) + A069847 (A054000 (3 * n + 4)).toNat

end

end A189684.P13067618749845748669

/-! ## A189684.P12122121305968453612

`A250213(lt[A335488(n+1), A000010(3*n+5)])`
-/

namespace A189684.P12122121305968453612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189684.P12122121305968453612

/-!
# A189685: Numbers 2k in A189683.

The programs for A189685, there is no canonical definition to state claims against.
-/

/-! ## A189685.P1429625573096819317

`A189683(2*(n+1))`
-/

namespace A189685.P1429625573096819317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189683 (2 * (n + 1))

end

end A189685.P1429625573096819317

/-! ## A189685.P3375990097060116245

`2*A190572(n+1)`
-/

namespace A189685.P3375990097060116245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190572 (n + 1)

end

end A189685.P3375990097060116245

/-! ## A189685.P6540202290453567321

`A004277(A190572(n+1))`
-/

namespace A189685.P6540202290453567321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190572 (n + 1)).toNat

end

end A189685.P6540202290453567321

/-! ## A189685.P1042332978518216832

`A000267(A190572(n+1)²)`
-/

namespace A189685.P1042332978518216832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A190572 (n + 1) ^ 2).toNat

end

end A189685.P1042332978518216832

/-! ## A189685.P15976999970541507817

`A004275(A190572(n+1)+1)`
-/

namespace A189685.P15976999970541507817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A190572 (n + 1) + 1).toNat

end

end A189685.P15976999970541507817

/-! ## A189685.P11297495381631026447

`A005843(A190572(n+1)%(n+8))`
-/

namespace A189685.P11297495381631026447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A190572 (n + 1)) (n + 8 : ℤ)).toNat

end

end A189685.P11297495381631026447

/-! ## A189685.P9481709084309615244

`A005843(A190572(∑[n+1]-∑[n]))`
-/

namespace A189685.P9481709084309615244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A190572 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A189685.P9481709084309615244

/-! ## A189685.P6794993356197784736

`A005843(A190572(n+1))+A000007(n+1)`
-/

namespace A189685.P6794993356197784736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A190572 (n + 1)).toNat + A000007 (n + 1)

end

end A189685.P6794993356197784736

/-! ## A189685.P14784976122788882147

`A190572(A000027(n+1))+A190572(n+1)`
-/

namespace A189685.P14784976122788882147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190572 (A000027 (n + 1)).toNat + A190572 (n + 1)

end

end A189685.P14784976122788882147

/-! ## A189685.P7570047268373462051

`A190572(n+1)+A000196(A190572(n+1)²)`
-/

namespace A189685.P7570047268373462051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190572 (n + 1) + A000196 (A190572 (n + 1) ^ 2).toNat

end

end A189685.P7570047268373462051

/-!
# A189686: Superabundant numbers (A004394) satisfying the reverse of Robin's inequality (A091901).

The programs for A189686, there is no canonical definition to state claims against.
-/

/-! ## A189686.P4411307620991941089

`A004394(comp[or(13, n-3)+n])`
-/

namespace A189686.P4411307620991941089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 13 ((n : ℤ) - 3) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189686.P4411307620991941089

/-! ## A189686.P12378948267624435012

`record[lcm(∏{p}[n+1, 1-#], A002182(n+2))]`
-/

namespace A189686.P12378948267624435012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))) (A002182 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189686.P12378948267624435012

/-! ## A189686.P9885531514447472811

`A135372(comp[or(a(n-1), n)]+2)-1` with `a(0)=-6, a(1)=14, a(2)=-22, a(3)=14`
-/

namespace A189686.P9885531514447472811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-6, 14, -22, 14] fun n f1 =>
  Int.lor (f1 (n - 1)) (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A189686.P9885531514447472811

/-! ## A189686.P1877618595983951954

`A002182(comp[A341114(n)])`
-/

namespace A189686.P1877618595983951954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341114 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189686.P1877618595983951954

/-! ## A189686.P1321141857899557564

`A004394(comp[A341114(n)])`
-/

namespace A189686.P1321141857899557564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341114 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189686.P1321141857899557564

/-!
# A189688: Partial sums of A189687.

The programs for A189688, the canonical program `A189688.P13233593620070041608` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189688 has offset 1).

The definition of A189688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189688.P15659668717432469320

`∑[2-runs[round((1+n)/sqrt(2))]]`
-/

namespace A189688.P15659668717432469320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + n : ℝ) / Real.sqrt (2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P15659668717432469320

namespace A189688

/-- `∑[2-runs[round((1+n)/sqrt(2))]]` -/
def P15659668717432469320.Spec : Prop :=
  ∀ n, P15659668717432469320.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P1438193206038216533

`∑[runs[round((1+n)/sqrt(2))]%2]`
-/

namespace A189688.P1438193206038216533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + n : ℝ) / Real.sqrt (2 : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P1438193206038216533

namespace A189688

/-- `∑[runs[round((1+n)/sqrt(2))]%2]` -/
def P1438193206038216533.Spec : Prop :=
  ∀ n, (P1438193206038216533.a n : ℤ) = A189688 (n + 1)

end A189688

/-! ## A189688.P1203552726202585040

`ceil(2*(n+1-sqrt(∑[n+1])))`
-/

namespace A189688.P1203552726202585040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n + 1 : ℝ) - Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A189688.P1203552726202585040

namespace A189688

/-- `ceil(2*(n+1-sqrt(∑[n+1])))` -/
def P1203552726202585040.Spec : Prop :=
  ∀ n, P1203552726202585040.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P4665427261058436802

`(2*(n+1))%floor(2*sqrt(∑[n+1]))`
-/

namespace A189688.P4665427261058436802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A189688.P4665427261058436802

namespace A189688

/-- `(2*(n+1))%floor(2*sqrt(∑[n+1]))` -/
def P4665427261058436802.Spec : Prop :=
  ∀ n, P4665427261058436802.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P15765527390526058703

`∑[A189687(n+1)]`
-/

namespace A189688.P15765527390526058703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P15765527390526058703

namespace A189688

/-- `∑[A189687(n+1)]` -/
def P15765527390526058703.Spec : Prop :=
  ∀ n, P15765527390526058703.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P3362301718090301225

`∑[log2(A279620(n+1))]`
-/

namespace A189688.P3362301718090301225
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A279620 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P3362301718090301225

namespace A189688

/-- `∑[log2(A279620(n+1))]` -/
def P3362301718090301225.Spec : Prop :=
  ∀ n, P3362301718090301225.a n = (A189688 (n + 1) : ℝ)

end A189688

/-! ## A189688.P13233593620070041608

`∑[2-Δ[A001953(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189688

/-- `∑[2-Δ[A001953(n)]]` -/
def P13233593620070041608.Spec : Prop :=
  ∀ n, P13233593620070041608.a n = A189688 (n + 1)

theorem P13233593620070041608.correct : P13233593620070041608.Spec := by
  intro n
  simp only [A189688, Nat.add_sub_cancel]

end A189688

/-! ## A189688.P3389606012652952025

`∑[1-A004641(n+1)]`
-/

namespace A189688.P3389606012652952025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P3389606012652952025

namespace A189688

/-- `∑[1-A004641(n+1)]` -/
def P3389606012652952025.Spec : Prop :=
  ∀ n, P3389606012652952025.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P4142718196343792101

`∑[2-A001030(n+1)]`
-/

namespace A189688.P4142718196343792101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P4142718196343792101

namespace A189688

/-- `∑[2-A001030(n+1)]` -/
def P4142718196343792101.Spec : Prop :=
  ∀ n, P4142718196343792101.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P7283137250818233343

`1-A088462(n+1)+n`
-/

namespace A189688.P7283137250818233343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088462 (n + 1) + (n : ℤ)

end

end A189688.P7283137250818233343

namespace A189688

/-- `1-A088462(n+1)+n` -/
def P7283137250818233343.Spec : Prop :=
  ∀ n, P7283137250818233343.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P576458473663375404

`∑[char[A189573(n+1)-2]]`
-/

namespace A189688.P576458473663375404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P576458473663375404

namespace A189688

/-- `∑[char[A189573(n+1)-2]]` -/
def P576458473663375404.Spec : Prop :=
  ∀ n, (P576458473663375404.a n : ℤ) = A189688 (n + 1)

end A189688

/-! ## A189688.P1565442845896747027

`Δ[n²]-A184117(n+1)`
-/

namespace A189688.P1565442845896747027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A184117 (n + 1)

end

end A189688.P1565442845896747027

namespace A189688

/-- `Δ[n²]-A184117(n+1)` -/
def P1565442845896747027.Spec : Prop :=
  ∀ n, P1565442845896747027.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P18358232405828767771

`∑[char[A049473(n+1)+n]]`
-/

namespace A189688.P18358232405828767771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P18358232405828767771

namespace A189688

/-- `∑[char[A049473(n+1)+n]]` -/
def P18358232405828767771.Spec : Prop :=
  ∀ n, (P18358232405828767771.a n : ℤ) = A189688 (n + 1)

end A189688

/-! ## A189688.P10087030097409714771

`2*(n+1)-A001953(n+1)`
-/

namespace A189688.P10087030097409714771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A001953 (n + 1)

end

end A189688.P10087030097409714771

namespace A189688

/-- `2*(n+1)-A001953(n+1)` -/
def P10087030097409714771.Spec : Prop :=
  ∀ n, P10087030097409714771.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P11208273365280254533

`4*(n+1)-A184118(n+1)`
-/

namespace A189688.P11208273365280254533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A184118 (n + 1)

end

end A189688.P11208273365280254533

namespace A189688

/-- `4*(n+1)-A184118(n+1)` -/
def P11208273365280254533.Spec : Prop :=
  ∀ n, P11208273365280254533.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P16364878455501301604

`A000290(n+1)-(A184117(n+1)+A000290(n))`
-/

namespace A189688.P16364878455501301604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A184117 (n + 1) + A000290 n)

end

end A189688.P16364878455501301604

namespace A189688

/-- `A000290(n+1)-(A184117(n+1)+A000290(n))` -/
def P16364878455501301604.Spec : Prop :=
  ∀ n, P16364878455501301604.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P18173902381243065804

`A184119(n+1)-(A001953(n+1)+A001953(n))`
-/

namespace A189688.P18173902381243065804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - (A001953 (n + 1) + A001953 n)

end

end A189688.P18173902381243065804

namespace A189688

/-- `A184119(n+1)-(A001953(n+1)+A001953(n))` -/
def P18173902381243065804.Spec : Prop :=
  ∀ n, P18173902381243065804.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P18229229014333638758

`A001964(n+1)-(A001963(n+1)+A001954(n+1))`
-/

namespace A189688.P18229229014333638758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 (n + 1) - (A001963 (n + 1) + A001954 (n + 1))

end

end A189688.P18229229014333638758

namespace A189688

/-- `A001964(n+1)-(A001963(n+1)+A001954(n+1))` -/
def P18229229014333638758.Spec : Prop :=
  ∀ n, P18229229014333638758.a n = A189688 (n + 1)

end A189688

/-! ## A189688.P2436934311004793214

`A005843(n+1)+A005843(n+1)-A184118(n+1)`
-/

namespace A189688.P2436934311004793214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A005843 (n + 1) - A184118 (n + 1))

end

end A189688.P2436934311004793214

namespace A189688

/-- `A005843(n+1)+A005843(n+1)-A184118(n+1)` -/
def P2436934311004793214.Spec : Prop :=
  ∀ n, P2436934311004793214.a n = A189688 (n + 1)

end A189688

/-!
# A189689: Number of n X n binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189689, there is no canonical definition to state claims against.
-/

/-! ## A189689.P5794004392728617580

`A189696(∑[4*n]+1)`
-/

namespace A189689.P5794004392728617580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189689.P5794004392728617580

/-! ## A189689.P9907537733494224169

`record[A003982(n)*A189696(n+1)]`
-/

namespace A189689.P9907537733494224169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189689.P9907537733494224169

/-! ## A189689.P3570332673895833415

`record[gcd(A049581(n), A189696(n+1))]`
-/

namespace A189689.P3570332673895833415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A189696 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189689.P3570332673895833415

/-! ## A189689.P1491896455222064629

`record[root(A189696(n+1), A341458(n+1))]`
-/

namespace A189689.P1491896455222064629
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189696 (n + 1) : ℝ) ^ (1 / (A341458 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189689.P1491896455222064629

/-! ## A189689.P3392627656919574295

`A189696(A001844(n))+A025443(n)`
-/

namespace A189689.P3392627656919574295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A001844 n).toNat + A025443 n

end

end A189689.P3392627656919574295

/-!
# A189690: Number of nX3 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189690, there is no canonical definition to state claims against.
-/

/-! ## A189690.P6332346824634301727

`A189696(∑[n+3]+1)`
-/

namespace A189690.P6332346824634301727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189690.P6332346824634301727

/-! ## A189690.P14898304124411906947

`lcm(2, A189696(A034856(n+2)))`
-/

namespace A189690.P14898304124411906947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189696 (A034856 (n + 2)).toNat)

end

end A189690.P14898304124411906947

/-! ## A189690.P6488959733512914362

`A189696(A034856(n+2))+A185284(n)`
-/

namespace A189690.P6488959733512914362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A034856 (n + 2)).toNat + A185284 n

end

end A189690.P6488959733512914362

/-! ## A189690.P16599741224490460178

`A189696(A034856(n+2))+A151934(n+1)`
-/

namespace A189690.P16599741224490460178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A034856 (n + 2)).toNat + A151934 (n + 1)

end

end A189690.P16599741224490460178

/-!
# A189691: Number of nX4 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189691, there is no canonical definition to state claims against.
-/

/-! ## A189691.P5636704270484749945

`A189696(A141214(n+1))`
-/

namespace A189691.P5636704270484749945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A141214 (n + 1)).toNat

end

end A189691.P5636704270484749945

/-! ## A189691.P183134513819721504

`A189696(A155212(n)+5)`
-/

namespace A189691.P183134513819721504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A155212 n + 5).toNat

end

end A189691.P183134513819721504

/-! ## A189691.P1039188149528302892

`A189696(A056000(n)+7)`
-/

namespace A189691.P1039188149528302892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056000 n + 7).toNat

end

end A189691.P1039188149528302892

/-! ## A189691.P4132330405696408800

`A189696(A052905(n+1)+2)`
-/

namespace A189691.P4132330405696408800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A052905 (n + 1) + 2).toNat

end

end A189691.P4132330405696408800

/-! ## A189691.P17184043975114939855

`A189696(A055999(n+1)+3)`
-/

namespace A189691.P17184043975114939855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A055999 (n + 1) + 3).toNat

end

end A189691.P17184043975114939855

/-!
# A189692: Number of nX5 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189692, there is no canonical definition to state claims against.
-/

/-! ## A189692.P4970634569770991248

`A189696(Δ[A264443(n)])`
-/

namespace A189692.P4970634569770991248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (f1 (n + 1) - f1 n).toNat

end

end A189692.P4970634569770991248

/-! ## A189692.P3925325674133762108

`A189696(A046691(n+3))`
-/

namespace A189692.P3925325674133762108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A046691 (n + 3)).toNat

end

end A189692.P3925325674133762108

/-! ## A189692.P17219798965702084175

`A189696(A056115(n)+11)`
-/

namespace A189692.P17219798965702084175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056115 n + 11).toNat

end

end A189692.P17219798965702084175

/-! ## A189692.P15572304961836777374

`A189696(eq[2, A092921(n)])`
-/

namespace A189692.P15572304961836777374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189692.P15572304961836777374

/-! ## A189692.P7219032639578986593

`A189696(Δ[A023545(n+1)])`
-/

namespace A189692.P7219032639578986593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (f1 (n + 1) - f1 n).toNat

end

end A189692.P7219032639578986593

/-!
# A189693: Number of nX6 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189693, there is no canonical definition to state claims against.
-/

/-! ## A189693.P17938981857252407604

`A189696(A052905(n+3))`
-/

namespace A189693.P17938981857252407604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A052905 (n + 3)).toNat

end

end A189693.P17938981857252407604

/-! ## A189693.P3975536126898529822

`A189696(eq[3, A219347(n)])`
-/

namespace A189693.P3975536126898529822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189693.P3975536126898529822

/-! ## A189693.P6317959377477869624

`A189696(eq[5, A193592(n)])`
-/

namespace A189693.P6317959377477869624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189693.P6317959377477869624

/-! ## A189693.P3057446165077628931

`A189696(eq[8, A185782(n+1)])`
-/

namespace A189693.P3057446165077628931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189693.P3057446165077628931

/-! ## A189693.P8786440005963634266

`A189696(eq[16, A057728(n+1)])`
-/

namespace A189693.P8786440005963634266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189693.P8786440005963634266

/-!
# A189694: Number of nX7 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189694, there is no canonical definition to state claims against.
-/

/-! ## A189694.P15462302306055064198

`A189696(A055999(n+4))`
-/

namespace A189694.P15462302306055064198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A055999 (n + 4)).toNat

end

end A189694.P15462302306055064198

/-! ## A189694.P4810795448380764928

`A189696(eq[4, A219347(n)])`
-/

namespace A189694.P4810795448380764928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189694.P4810795448380764928

/-! ## A189694.P10164797048301253153

`A189696(eq[6, A193592(n)])`
-/

namespace A189694.P10164797048301253153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189694.P10164797048301253153

/-! ## A189694.P11819426626622945971

`A189696(A056115(n+2)+9)`
-/

namespace A189694.P11819426626622945971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056115 (n + 2) + 9).toNat

end

end A189694.P11819426626622945971

/-! ## A189694.P5276564210090611599

`A189696(eq[10, A185782(n+1)])`
-/

namespace A189694.P5276564210090611599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189694.P5276564210090611599

/-!
# A189695: Number of nX8 binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189695, there is no canonical definition to state claims against.
-/

/-! ## A189695.P15324720198844471029

`A189696(eq[5, A219347(n)])`
-/

namespace A189695.P15324720198844471029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189695.P15324720198844471029

/-! ## A189695.P5186271866917076844

`A189696(eq[7, A193592(n)])`
-/

namespace A189695.P5186271866917076844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189695.P5186271866917076844

/-! ## A189695.P14162428739877717801

`A189696(eq[12, A185782(n+1)])`
-/

namespace A189695.P14162428739877717801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189695.P14162428739877717801

/-! ## A189695.P17017506913937944113

`A189696(A134227(n+5)+n+7)`
-/

namespace A189695.P17017506913937944113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A134227 (n + 5) + (n + 7 : ℤ)).toNat

end

end A189695.P17017506913937944113

/-! ## A189695.P4439625049496061180

`A189696(A077168(n+1)+A000096(n+6))`
-/

namespace A189695.P4439625049496061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A077168 (n + 1) + A000096 (n + 6)).toNat

end

end A189695.P4439625049496061180

/-!
# A189696: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189696, there is no canonical definition to state claims against.
-/

/-! ## A189696.P13885266939575087937

`A189617(A114327(n)+A077168(n))`
-/

namespace A189696.P13885266939575087937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (A114327 n + A077168 n).toNat

end

end A189696.P13885266939575087937

/-! ## A189696.P5635771947924542240

`A189617(A038722(n+1)%A095505(n))`
-/

namespace A189696.P5635771947924542240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (Int.tmod (A038722 (n + 1)) (A095505 n)).toNat

end

end A189696.P5635771947924542240

/-! ## A189696.P2653750082433354809

`A189617((A077168(n)-n)*A038722(n+1))`
-/

namespace A189696.P2653750082433354809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 ((A077168 n - (n : ℤ)) * A038722 (n + 1)).toNat

end

end A189696.P2653750082433354809

/-! ## A189696.P9070349842805303317

`A188747(n+1)-A025469(A051164(n))`
-/

namespace A189696.P9070349842805303317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (n + 1) - A025469 (A051164 n).toNat

end

end A189696.P9070349842805303317

/-!
# A189697: Number of 4Xn binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189697, there is no canonical definition to state claims against.
-/

/-! ## A189697.P2160369607573364440

`A189696(A141214(n)+7)`
-/

namespace A189697.P2160369607573364440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A141214 n + 7).toNat

end

end A189697.P2160369607573364440

/-! ## A189697.P8622621270603020956

`A189696(A052905(n)+9)`
-/

namespace A189697.P8622621270603020956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A052905 n + 9).toNat

end

end A189697.P8622621270603020956

/-! ## A189697.P530309049575113489

`A189696(A055999(n)+10)`
-/

namespace A189697.P530309049575113489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A055999 n + 10).toNat

end

end A189697.P530309049575113489

/-! ## A189697.P5051795140711810517

`A189696(A167614(n+2)+1)`
-/

namespace A189697.P5051795140711810517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167614 (n + 2) + 1).toNat

end

end A189697.P5051795140711810517

/-! ## A189697.P5789704911569312801

`A189696(A167499(n+2)-1)`
-/

namespace A189697.P5789704911569312801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167499 (n + 2) - 1).toNat

end

end A189697.P5789704911569312801

/-!
# A189698: Number of 5Xn binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189698, there is no canonical definition to state claims against.
-/

/-! ## A189698.P3523992360405717525

`A189696(A167499(n+3))`
-/

namespace A189698.P3523992360405717525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167499 (n + 3)).toNat

end

end A189698.P3523992360405717525

/-! ## A189698.P4797822740870801543

`A189696(A155212(n)+13)`
-/

namespace A189698.P4797822740870801543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A155212 n + 13).toNat

end

end A189698.P4797822740870801543

/-! ## A189698.P12728614696577273728

`A189696(A056000(n)+15)`
-/

namespace A189698.P12728614696577273728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056000 n + 15).toNat

end

end A189698.P12728614696577273728

/-! ## A189698.P588333883666919348

`A189696(eq[7, A066657(n)])`
-/

namespace A189698.P588333883666919348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189698.P588333883666919348

/-! ## A189698.P2462053835754876886

`A189696(A145018(n+5)+1)`
-/

namespace A189698.P2462053835754876886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A145018 (n + 5) + 1).toNat

end

end A189698.P2462053835754876886

/-!
# A189699: Number of 6Xn binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189699, there is no canonical definition to state claims against.
-/

/-! ## A189699.P14473871890178144604

`A189696(A056115(n)+21)`
-/

namespace A189699.P14473871890178144604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056115 n + 21).toNat

end

end A189699.P14473871890178144604

/-! ## A189699.P5108949348711575717

`A189696(A167499(n+4)+1)`
-/

namespace A189699.P5108949348711575717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167499 (n + 4) + 1).toNat

end

end A189699.P5108949348711575717

/-! ## A189699.P8439275208430906259

`A189696(eq[7, A131818(n+1)])`
-/

namespace A189699.P8439275208430906259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189699.P8439275208430906259

/-! ## A189699.P1276955149322804939

`A189696(eq[4, A193592(n)]+10)`
-/

namespace A189699.P1276955149322804939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A189699.P1276955149322804939

/-! ## A189699.P12868325289195786995

`A189696(Δ[A023545(n+1)]+10)`
-/

namespace A189699.P12868325289195786995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (f1 (n + 1) - f1 n + 10).toNat

end

end A189699.P12868325289195786995

