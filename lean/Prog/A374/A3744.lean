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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A374400: Number of balanced inequivalent unate functions of n or fewer variables.

The programs for A374400, there is no canonical definition to state claims against.
-/

/-! ## A374400.P483047404837840965

`∑[A374401(n)]`
-/

namespace A374400.P483047404837840965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374400.P483047404837840965

/-! ## A374400.P8859941649442921483

`A337547(A066629(n+1))`
-/

namespace A374400.P8859941649442921483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337547 (A066629 (n + 1)).toNat

end

end A374400.P8859941649442921483

/-!
# A374401: Number of balanced inequivalent nondegenerate unate functions of n or fewer variables.

The programs for A374401, there is no canonical definition to state claims against.
-/

/-! ## A374401.P1249161025276515374

`A010098(n)-A070939(A089470(n))`
-/

namespace A374401.P1249161025276515374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010098 n - A070939 (A089470 n).toNat

end

end A374401.P1249161025276515374

/-! ## A374401.P9582226724588675963

`A287793(A025547(n+1))-A111840(n)`
-/

namespace A374401.P9582226724588675963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287793 (A025547 (n + 1)).toNat - A111840 n

end

end A374401.P9582226724588675963

/-!
# A374403: Number of n-bit primes.

The programs for A374403, there is no canonical definition to state claims against.
-/

/-! ## A374403.P487491881125161225

`Δ[A007053(n-char[1])]`
-/

namespace A374403.P487491881125161225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A374403.P487491881125161225

/-! ## A374403.P17238109906297389538

`A162145(n+1)%∑[2^n]`
-/

namespace A374403.P17238109906297389538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374403.P17238109906297389538

/-! ## A374403.P1673935418587011563

`A036378(n)-A240329(n)`
-/

namespace A374403.P1673935418587011563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A240329 n

end

end A374403.P1673935418587011563

/-! ## A374403.P16860387226196440190

`A036378(n)-A240330(n)`
-/

namespace A374403.P16860387226196440190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A240330 n

end

end A374403.P16860387226196440190

/-! ## A374403.P5400750386167050093

`A036378(n)-A240331(n)`
-/

namespace A374403.P5400750386167050093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A240331 n

end

end A374403.P5400750386167050093

/-!
# A374405: The nonnegative terms followed by their first position in the concatenation of all terms of the sequence.

The programs for A374405, there is no canonical definition to state claims against.
-/

/-! ## A374405.P5910254930760510879

`gcd(n, ∑[n])-A014376(A122542(2*n))`
-/

namespace A374405.P5910254930760510879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A014376 (A122542 (2 * n)).toNat

end

end A374405.P5910254930760510879

/-!
# A374411: Triangle T(n, k) read by rows: Maximum number of linear patterns of length k in a circular permutation of length n taken from row n in A194832.

The programs for A374411, there is no canonical definition to state claims against.
-/

/-! ## A374411.P13043792415215261032

`A002260(n+1)*A303707(A152842(n))`
-/

namespace A374411.P13043792415215261032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A303707 (A152842 n).toNat

end

end A374411.P13043792415215261032

/-! ## A374411.P3206664005110525600

`A046097(A181842(n+1))`
-/

namespace A374411.P3206664005110525600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046097 (A181842 (n + 1)).toNat

end

end A374411.P3206664005110525600

/-! ## A374411.P9379725695227391779

`A028825(A209572(n+1))`
-/

namespace A374411.P9379725695227391779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028825 (A209572 (n + 1)).toNat

end

end A374411.P9379725695227391779

/-! ## A374411.P12728479712930772524

`A115726(A266183(n+1))`
-/

namespace A374411.P12728479712930772524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A266183 (n + 1)).toNat

end

end A374411.P12728479712930772524

/-! ## A374411.P14618138584878342287

`A209082(A115597(n+2))`
-/

namespace A374411.P14618138584878342287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A115597 (n + 2)).toNat

end

end A374411.P14618138584878342287

/-!
# A374413: Second center column of elementary triangular automaton rule 210, starting from a lone 1 cell.

The programs for A374413, there is no canonical definition to state claims against.
-/

/-! ## A374413.P7300267091940905830

`(A372581(n)+1)%2`
-/

namespace A374413.P7300267091940905830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372581 n + 1) 2

end

end A374413.P7300267091940905830

/-! ## A374413.P5892609060889529463

`A007814(gcd(A039956(n+1), A372581(n)))`
-/

namespace A374413.P5892609060889529463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A039956 (n + 1)) (A372581 n))

end

end A374413.P5892609060889529463

/-! ## A374413.P10267207872799978083

`A036044(A349136(n+1)^val(A372581(n), 2))`
-/

namespace A374413.P10267207872799978083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A349136 (n + 1) ^ SequenceMachineLib.valuation (A372581 n).toNat 2).toNat

end

end A374413.P10267207872799978083

/-! ## A374413.P10038314280559898694

`A117192(A349136(n+1)^val(A372581(n), 2)+1)`
-/

namespace A374413.P10038314280559898694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117192 (A349136 (n + 1) ^ SequenceMachineLib.valuation (A372581 n).toNat 2 + 1).toNat

end

end A374413.P10038314280559898694

/-! ## A374413.P10617272073229666669

`A120325(A372581(n))`
-/

namespace A374413.P10617272073229666669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A372581 n).toNat

end

end A374413.P10617272073229666669

/-! ## A374413.P7804532251235908637

`A000035(A372581(n)+1)`
-/

namespace A374413.P7804532251235908637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A372581 n + 1).toNat

end

end A374413.P7804532251235908637

/-!
# A374414: Numbers k such that 6k+1, 6k+5, 6k+7, 6k+11, 6k+13 and 6k+17 are prime.

The programs for A374414, there is no canonical definition to state claims against.
-/

/-! ## A374414.P13766015748235965279

`(A022008(n+1)-1)/6`
-/

namespace A374414.P13766015748235965279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022008 (n + 1) - 1 : ℚ) / 6

end

end A374414.P13766015748235965279

/-! ## A374414.P9530493514324153538

`floor(A022008(n+1)/6)`
-/

namespace A374414.P9530493514324153538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022008 (n + 1) : ℚ) / 6⌋

end

end A374414.P9530493514324153538

/-! ## A374414.P1192021452541055355

`round(xor(A022008(n+1), A079978(n))/6)`
-/

namespace A374414.P1192021452541055355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (A022008 (n + 1)) (A079978 n) : ℚ) / 6)

end

end A374414.P1192021452541055355

/-! ## A374414.P16608325535003006785

`round(xor(A022008(n+1), A230412(n))/6)`
-/

namespace A374414.P16608325535003006785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (A022008 (n + 1)) (A230412 n) : ℚ) / 6)

end

end A374414.P16608325535003006785

/-! ## A374414.P3897106696058838839

`round(xor(A022008(n+1), A104606(n+1))/6)`
-/

namespace A374414.P3897106696058838839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (A022008 (n + 1)) (A104606 (n + 1)) : ℚ) / 6)

end

end A374414.P3897106696058838839

/-!
# A374415: a(n) is the number of ways n can be written as a sum of a practical number and two octagonal numbers.

The programs for A374415, there is no canonical definition to state claims against.
-/

/-! ## A374415.P8328992950712535242

`A001221(A049934(n+1)+A003627(2*n+1))`
-/

namespace A374415.P8328992950712535242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A049934 (n + 1) + A003627 (2 * n + 1)).toNat

end

end A374415.P8328992950712535242

/-! ## A374415.P17710993247472639310

`A096309(A073815(n+2))`
-/

namespace A374415.P17710993247472639310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (A073815 (n + 2)).toNat

end

end A374415.P17710993247472639310

/-! ## A374415.P4752077623223347658

`A124766(n+2)+∑[A113095(2*n+3)]%2`
-/

namespace A374415.P4752077623223347658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113095 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (n + 2) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A374415.P4752077623223347658

/-! ## A374415.P16686547434383970896

`A353929(and(A000601(n), A328659(n+3)))`
-/

namespace A374415.P16686547434383970896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (Int.land (A000601 n) (A328659 (n + 3))).toNat

end

end A374415.P16686547434383970896

/-! ## A374415.P6017823158646302105

`A061336(A020492(n+3)*A325876(n+2))`
-/

namespace A374415.P6017823158646302105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (A020492 (n + 3) * A325876 (n + 2)).toNat

end

end A374415.P6017823158646302105

/-!
# A374416: a(n) is the number of ways n can be written as a sum of a practical number and two nonagonal numbers.

The programs for A374416, there is no canonical definition to state claims against.
-/

/-! ## A374416.P18174150551954826964

`A082898(A392542(n))`
-/

namespace A374416.P18174150551954826964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082898 (A392542 n).toNat

end

end A374416.P18174150551954826964

/-! ## A374416.P11900053227050636909

`A001221(A005117(n+1)+A001265(3*(n+1)))`
-/

namespace A374416.P11900053227050636909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005117 (n + 1) + A001265 (3 * (n + 1))).toNat

end

end A374416.P11900053227050636909

/-! ## A374416.P12015079846644618617

`A001221(A331425(3*n+4)+n²)`
-/

namespace A374416.P12015079846644618617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331425 (3 * n + 4) + (n ^ 2 : ℤ)).toNat

end

end A374416.P12015079846644618617

/-! ## A374416.P3376469341161782357

`A071625(A032445(n)*A071658(2*n+3))`
-/

namespace A374416.P3376469341161782357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A032445 n * A071658 (2 * n + 3)).toNat

end

end A374416.P3376469341161782357

/-! ## A374416.P11053725566723278675

`A304687(A334676(n+1)*A376589(3*n+4))`
-/

namespace A374416.P11053725566723278675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (A334676 (n + 1) * A376589 (3 * n + 4)).toNat

end

end A374416.P11053725566723278675

/-!
# A374419: Triangle read by rows: T(n,k) = number of permutations in symmetric group S_n with an even number of non-fixed point cycles, without k<=n particular fixed points.

The programs for A374419, there is no canonical definition to state claims against.
-/

/-! ## A374419.P2740281747638967025

`A047920(n)-A374420(n)`
-/

namespace A374419.P2740281747638967025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n - A374420 n

end

end A374419.P2740281747638967025

/-! ## A374419.P1003109654243366120

`A068106(A061579(n))-A374420(n)`
-/

namespace A374419.P1003109654243366120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A061579 n).toNat - A374420 n

end

end A374419.P1003109654243366120

/-! ## A374419.P8932759792044148165

`A134830(lt[1, A378635(n+3)])-A374420(n)`
-/

namespace A374419.P8932759792044148165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A374420 n

end

end A374419.P8932759792044148165

/-!
# A374420: Triangle T(n, k) for the number of permutations of symmetric group S_n with an odd number of non-fixed point cycles, without k <= n particular fixed points.

The programs for A374420, there is no canonical definition to state claims against.
-/

/-! ## A374420.P15862753119313974796

`A047920(n)-A374419(n)`
-/

namespace A374420.P15862753119313974796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n - A374419 n

end

end A374420.P15862753119313974796

/-!
# A374426: a(n) = n*(n + 1)/2 + pi(n), where pi(n) = A000720(n) is the prime counting function.

The programs for A374426, the canonical program `A374426.P13793053293426560037` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374426 has offset 1).

The definition of A374426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374426.P13793053293426560037

`a(n-1)+n+1+A010051(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374426

/-- `a(n-1)+n+1+A010051(n+1)` -/
def P13793053293426560037.Spec : Prop :=
  ∀ n, P13793053293426560037.a n = A374426 (n + 1)

theorem P13793053293426560037.correct : P13793053293426560037.Spec := by
  intro n
  simp only [A374426, Nat.add_sub_cancel]

end A374426

/-! ## A374426.P12206836168694235972

`A000217(n+1)+A000720(n+1)`
-/

namespace A374426.P12206836168694235972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000720 (n + 1)

end

end A374426.P12206836168694235972

namespace A374426

/-- `A000217(n+1)+A000720(n+1)` -/
def P12206836168694235972.Spec : Prop :=
  ∀ n, P12206836168694235972.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P359978044640100358

`∑[C(2, ∑{e}[n+1, #])!+n]`
-/

namespace A374426.P359978044640100358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P359978044640100358

namespace A374426

/-- `∑[C(2, ∑{e}[n+1, #])!+n]` -/
def P359978044640100358.Spec : Prop :=
  ∀ n, (P359978044640100358.a n : ℤ) = A374426 (n + 1)

end A374426

/-! ## A374426.P17005469630017108046

`∑[∑{p}[n+1, val(#, n+1)]+n+1]`
-/

namespace A374426.P17005469630017108046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P17005469630017108046

namespace A374426

/-- `∑[∑{p}[n+1, val(#, n+1)]+n+1]` -/
def P17005469630017108046.Spec : Prop :=
  ∀ n, (P17005469630017108046.a n : ℤ) = A374426 (n + 1)

end A374426

/-! ## A374426.P12354923576454372862

`∑[∑{p}[n+1, C(#, n+1)]+n+1]`
-/

namespace A374426.P12354923576454372862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P12354923576454372862

namespace A374426

/-- `∑[∑{p}[n+1, C(#, n+1)]+n+1]` -/
def P12354923576454372862.Spec : Prop :=
  ∀ n, (P12354923576454372862.a n : ℤ) = A374426 (n + 1)

end A374426

/-! ## A374426.P13311948379401063091

`∑[A014683(n+1)]`
-/

namespace A374426.P13311948379401063091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P13311948379401063091

namespace A374426

/-- `∑[A014683(n+1)]` -/
def P13311948379401063091.Spec : Prop :=
  ∀ n, P13311948379401063091.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P701643927115052807

`∑[A113637(n+1)+1]`
-/

namespace A374426.P701643927115052807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P701643927115052807

namespace A374426

/-- `∑[A113637(n+1)+1]` -/
def P701643927115052807.Spec : Prop :=
  ∀ n, P701643927115052807.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P18144274971899799772

`∑[A010051(n+1)+n+1]`
-/

namespace A374426.P18144274971899799772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P18144274971899799772

namespace A374426

/-- `∑[A010051(n+1)+n+1]` -/
def P18144274971899799772.Spec : Prop :=
  ∀ n, P18144274971899799772.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P673049430643530461

`∑[A129950(n+1)²+n+1]`
-/

namespace A374426.P673049430643530461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P673049430643530461

namespace A374426

/-- `∑[A129950(n+1)²+n+1]` -/
def P673049430643530461.Spec : Prop :=
  ∀ n, P673049430643530461.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P14077485175028756243

`A036234(n+1)+A000096(n)`
-/

namespace A374426.P14077485175028756243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + A000096 n

end

end A374426.P14077485175028756243

namespace A374426

/-- `A036234(n+1)+A000096(n)` -/
def P14077485175028756243.Spec : Prop :=
  ∀ n, P14077485175028756243.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P6483725548264380053

`A028387(n)-A333996(n+1)`
-/

namespace A374426.P6483725548264380053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A333996 (n + 1)

end

end A374426.P6483725548264380053

namespace A374426

/-- `A028387(n)-A333996(n+1)` -/
def P6483725548264380053.Spec : Prop :=
  ∀ n, P6483725548264380053.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P7697571904429372637

`A134869(n+1)+A033270(n+1)`
-/

namespace A374426.P7697571904429372637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + A033270 (n + 1)

end

end A374426.P7697571904429372637

namespace A374426

/-- `A134869(n+1)+A033270(n+1)` -/
def P7697571904429372637.Spec : Prop :=
  ∀ n, P7697571904429372637.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P14885869682116174157

`A034856(n+1)-A065855(n+1)`
-/

namespace A374426.P14885869682116174157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A065855 (n + 1)

end

end A374426.P14885869682116174157

namespace A374426

/-- `A034856(n+1)-A065855(n+1)` -/
def P14885869682116174157.Spec : Prop :=
  ∀ n, P14885869682116174157.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P11501513582660758021

`A000720(n+1)+A256885(n+1)+A000720(n+1)`
-/

namespace A374426.P11501513582660758021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A256885 (n + 1) + A000720 (n + 1))

end

end A374426.P11501513582660758021

namespace A374426

/-- `A000720(n+1)+A256885(n+1)+A000720(n+1)` -/
def P11501513582660758021.Spec : Prop :=
  ∀ n, P11501513582660758021.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P1425570591189628487

`A036234(n+1)+A159073(n+1)+A158976(n+1)`
-/

namespace A374426.P1425570591189628487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (A159073 (n + 1) + A158976 (n + 1))

end

end A374426.P1425570591189628487

namespace A374426

/-- `A036234(n+1)+A159073(n+1)+A158976(n+1)` -/
def P1425570591189628487.Spec : Prop :=
  ∀ n, P1425570591189628487.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P11060365899804046043

`A000217(n+1)+A000217(n+1)-A256885(n+1)`
-/

namespace A374426.P11060365899804046043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A256885 (n + 1))

end

end A374426.P11060365899804046043

namespace A374426

/-- `A000217(n+1)+A000217(n+1)-A256885(n+1)` -/
def P11060365899804046043.Spec : Prop :=
  ∀ n, P11060365899804046043.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P9727415635497672039

`∑[Δ[A095117(n)]+n]`
-/

namespace A374426.P9727415635497672039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374426.P9727415635497672039

namespace A374426

/-- `∑[Δ[A095117(n)]+n]` -/
def P9727415635497672039.Spec : Prop :=
  ∀ n, P9727415635497672039.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P11978029501288496018

`A095117(n+1)+∑[n]`
-/

namespace A374426.P11978029501288496018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374426.P11978029501288496018

namespace A374426

/-- `A095117(n+1)+∑[n]` -/
def P11978029501288496018.Spec : Prop :=
  ∀ n, P11978029501288496018.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P6887617383086078719

`A230980(n+1)+∑[n+1]`
-/

namespace A374426.P6887617383086078719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374426.P6887617383086078719

namespace A374426

/-- `A230980(n+1)+∑[n+1]` -/
def P6887617383086078719.Spec : Prop :=
  ∀ n, P6887617383086078719.a n = A374426 (n + 1)

end A374426

/-! ## A374426.P12836306441785329942

`A161680(n+2)+A000720(n+1)`
-/

namespace A374426.P12836306441785329942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2) + A000720 (n + 1)

end

end A374426.P12836306441785329942

namespace A374426

/-- `A161680(n+2)+A000720(n+1)` -/
def P12836306441785329942.Spec : Prop :=
  ∀ n, P12836306441785329942.a n = A374426 (n + 1)

end A374426

/-!
# A374429: Triangle read by rows: T(n, k) = ((3*(-1)^k + 1)/2)*abs(qStirling2(n, k, -1)). Polynomials related to the Lucas and Fibonacci numbers.

The programs for A374429, there is no canonical definition to state claims against.
-/

/-! ## A374429.P3468125311589296352

`A192011(A192011(n)^6)`
-/

namespace A374429.P3468125311589296352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A192011 n ^ 6).toNat

end

end A374429.P3468125311589296352

/-! ## A374429.P13807134602872730313

`A192011(A192011(n)²²²)`
-/

namespace A374429.P13807134602872730313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (((A192011 n ^ 2) ^ 2) ^ 2).toNat

end

end A374429.P13807134602872730313

/-! ## A374429.P14734261762166080817

`A392374(A392364(n+4))+A269941(n)`
-/

namespace A374429.P14734261762166080817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392374 (A392364 (n + 4)).toNat + A269941 n

end

end A374429.P14734261762166080817

/-! ## A374429.P12585336887309176769

`A192011(lcm(A156139(n+1), A192011(n)))`
-/

namespace A374429.P12585336887309176769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (Int.lcm (A156139 (n + 1)) (A192011 n))

end

end A374429.P12585336887309176769

/-! ## A374429.P1629441941745083219

`A269941(n)+A010054(A002412(2*n+1))`
-/

namespace A374429.P1629441941745083219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269941 n + A010054 (A002412 (2 * n + 1)).toNat

end

end A374429.P1629441941745083219

/-!
# A374430: Odd bisection of A374431.

The programs for A374430, there is no canonical definition to state claims against.
-/

/-! ## A374430.P95712172118760470

`∏{p}[2*n+1, #^ceil(2*n/#)]`
-/

namespace A374430.P95712172118760470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (⌈(2 * n : ℚ) / (p : ℚ)⌉ : ℤ)

end

end A374430.P95712172118760470

/-! ## A374430.P9958740451180354831

`floor(∏{p}[2*n+1, #^((2*n+1)/#)])`
-/

namespace A374430.P9958740451180354831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((2 * n + 1 : ℚ) / (p : ℚ) : ℝ)⌋

end

end A374430.P9958740451180354831

/-! ## A374430.P7771475904918274825

`round(∏{p}[2*n+1, #^((2*n+1)/#)])`
-/

namespace A374430.P7771475904918274825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((2 * n + 1 : ℚ) / (p : ℚ) : ℝ))

end

end A374430.P7771475904918274825

/-! ## A374430.P9981970738602680216

`A374431(Δ[n²])`
-/

namespace A374430.P9981970738602680216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374431 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A374430.P9981970738602680216

/-! ## A374430.P11234849949065595597

`xor(1, A374431(2*n+1))+1`
-/

namespace A374430.P11234849949065595597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A374431 (2 * n + 1)) + 1

end

end A374430.P11234849949065595597

/-!
# A374431: Row product of A374433.

The programs for A374431, there is no canonical definition to state claims against.
-/

/-! ## A374431.P18003404487367582384

`∏{p}[n, #^(n/#)]`
-/

namespace A374431.P18003404487367582384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((n : ℚ) / (p : ℚ) : ℝ)

end

end A374431.P18003404487367582384

/-! ## A374431.P5619767843287414088

`∏{p}[n, root(#, #)]^n`
-/

namespace A374431.P5619767843287414088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / (p : ℝ))) ^ n

end

end A374431.P5619767843287414088

/-! ## A374431.P9477348281663307705

`gcd(∏[∏{p}[n+1, #]], A000312(n))`
-/

namespace A374431.P9477348281663307705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000312 n)

end

end A374431.P9477348281663307705

/-! ## A374431.P15778377140549567326

`gcd(∏[A007947(n+1)], A000312(n))`
-/

namespace A374431.P15778377140549567326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A000312 n)

end

end A374431.P15778377140549567326

/-! ## A374431.P7568727682292906855

`gcd(A000578(A000578(n)), A048803(n))`
-/

namespace A374431.P7568727682292906855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A000578 n).toNat) (A048803 n)

end

end A374431.P7568727682292906855

/-!
# A374433: Triangle read by rows: T(n, k) = Product_{p in PF(n) intersect PF(k)} p, where PF(a) is the set of the prime factors of a.

The programs for A374433, there is no canonical definition to state claims against.
-/

/-! ## A374433.P5489809989678942332

`∏{p}[A389101(n), #]`
-/

namespace A374433.P5489809989678942332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A374433.P5489809989678942332

/-! ## A374433.P2064543088400415248

`A007947(A389101(n))`
-/

namespace A374433.P2064543088400415248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A389101 n).toNat

end

end A374433.P2064543088400415248

/-! ## A374433.P7352024179974730274

`A374443(A010054(n)+n)`
-/

namespace A374433.P7352024179974730274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374443 (A010054 n + (n : ℤ)).toNat

end

end A374433.P7352024179974730274

/-! ## A374433.P10103622820576178910

`A374443(n%A097181(n))`
-/

namespace A374433.P10103622820576178910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374443 (Int.tmod (n : ℤ) (A097181 n)).toNat

end

end A374433.P10103622820576178910

/-! ## A374433.P8170589766952648444

`gcd(A008279(n), A374443(n))`
-/

namespace A374433.P8170589766952648444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008279 n) (A374443 n)

end

end A374433.P8170589766952648444

/-! ## A374433.P2681265489925270090

`gcd(A034386(n), A389101(n))`
-/

namespace A374433.P2681265489925270090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A389101 n)

end

end A374433.P2681265489925270090

/-! ## A374433.P16504424219901000774

`A007947(gcd(A002262(n), A274390(n)))`
-/

namespace A374433.P16504424219901000774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.gcd (A002262 n) (A274390 n))

end

end A374433.P16504424219901000774

/-! ## A374433.P6731730614284779565

`A374436(n)/A374434(n)`
-/

namespace A374433.P6731730614284779565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374436 n : ℚ) / (A374434 n : ℚ)

end

end A374433.P6731730614284779565

/-! ## A374433.P10420876418854933592

`gcd(A003992(n), A374436(n))`
-/

namespace A374433.P10420876418854933592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003992 n) (A374436 n)

end

end A374433.P10420876418854933592

/-!
# A374434: Triangle read by rows: T(n, k) = Product_{p in PF(n) symmetric difference PF(k)} p, where PF(a) is the set of the prime factors of a.

The programs for A374434, there is no canonical definition to state claims against.
-/

/-! ## A374434.P5950141536189734128

`A374436(n)/A374433(n)`
-/

namespace A374434.P5950141536189734128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374436 n : ℚ) / (A374433 n : ℚ)

end

end A374434.P5950141536189734128

/-! ## A374434.P7447594153780548760

`A374436(n)/gcd(A003992(n), A374436(n))`
-/

namespace A374434.P7447594153780548760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374436 n : ℚ) / (Int.gcd (A003992 n) (A374436 n) : ℚ)

end

end A374434.P7447594153780548760

/-!
# A374435: Triangle read by rows: T(n, k) = Product_{p in PF(n) difference PF(k)} p, where PF(a) is the set of the prime factors of a.

The programs for A374435, there is no canonical definition to state claims against.
-/

/-! ## A374435.P3815455229744472349

`gcd(A003056(n), A374434(n))`
-/

namespace A374435.P3815455229744472349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n) (A374434 n)

end

end A374435.P3815455229744472349

/-! ## A374435.P1038409878494322566

`A000188(A374434(n)*A374436(n+1))`
-/

namespace A374435.P1038409878494322566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A374434 n * A374436 (n + 1)).toNat

end

end A374435.P1038409878494322566

/-! ## A374435.P131727331760955677

`A324371(A071207(n))`
-/

namespace A374435.P131727331760955677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A071207 n).toNat

end

end A374435.P131727331760955677

/-! ## A374435.P2696683100012944014

`A006530(A071207(n)^A328698(3*n+4))`
-/

namespace A374435.P2696683100012944014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A071207 n : ℚ) ^ (A328698 (3 * n + 4) : ℤ))).toNat

end

end A374435.P2696683100012944014

/-!
# A374436: Triangle read by rows: T(n, k) = Product_{p in PF(n) union PF(k)} p, where PF(a) is the set of the prime factors of a.

The programs for A374436, there is no canonical definition to state claims against.
-/

/-! ## A374436.P2759301395312846932

`A374433(n)*A374434(n)`
-/

namespace A374436.P2759301395312846932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 n * A374434 n

end

end A374436.P2759301395312846932

/-! ## A374436.P7723910989061366768

`lcm(A374434(n), A374443(n))`
-/

namespace A374436.P7723910989061366768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A374434 n) (A374443 n)

end

end A374436.P7723910989061366768

/-! ## A374436.P17696176790199849371

`A007947(A374434(n)*A374443(n))`
-/

namespace A374436.P17696176790199849371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A374434 n * A374443 n).toNat

end

end A374436.P17696176790199849371

/-! ## A374436.P818306455854602342

`gcd(A008279(n), A374443(n))*A374434(n)`
-/

namespace A374436.P818306455854602342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A008279 n) (A374443 n) : ℤ) * A374434 n

end

end A374436.P818306455854602342

/-!
# A374437: a(n) = [1 - (n + s)/2]_n * [1 - (n - s)/2]_n, where s = sqrt(-n*(2 + n)) and [x]_n is the Pochhammer function.

The programs for A374437, there is no canonical definition to state claims against.
-/

/-! ## A374437.P4097662880942659944

`A245092(A173992(∑[n]))`
-/

namespace A374437.P4097662880942659944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A173992 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A374437.P4097662880942659944

/-!
# A374438: Triangle read by rows: T(n, k) = T(n - 1, k) + T(n - 2, k - 2), with initial values T(n, k) = k + 1 for k < 3.

The programs for A374438, there is no canonical definition to state claims against.
-/

/-! ## A374438.P17580617120113476053

`A288569(A389359(n))`
-/

namespace A374438.P17580617120113476053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288569 (A389359 n).toNat

end

end A374438.P17580617120113476053

/-! ## A374438.P7390362433470982120

`A256911(A211836(n+1))`
-/

namespace A374438.P7390362433470982120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (A211836 (n + 1)).toNat

end

end A374438.P7390362433470982120

/-! ## A374438.P12926953090893664661

`A335108(A210228(n+1))`
-/

namespace A374438.P12926953090893664661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (A210228 (n + 1)).toNat

end

end A374438.P12926953090893664661

/-! ## A374438.P10400076261581427577

`A360617(A208760(n+1))+1`
-/

namespace A374438.P10400076261581427577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (A208760 (n + 1)).toNat + 1

end

end A374438.P10400076261581427577

/-! ## A374438.P7356018819748712762

`A334440(A271075(n+1))+1`
-/

namespace A374438.P7356018819748712762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A271075 (n + 1)).toNat + 1

end

end A374438.P7356018819748712762

/-!
# A374439: Triangle read by rows: the coefficients of the Lucas-Fibonacci polynomials. T(n, k) = T(n - 1, k) + T(n - 2, k - 2) with initial values T(n, k) = k + 1 for k < 2.

The programs for A374439, the canonical program `A374439.P2263089578454840483` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374439 has offset 0).

The definition of A374439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374439.P2263089578454840483

`(A060510(n)+1)*A065941(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A374439

/-- `(A060510(n)+1)*A065941(n)` -/
def P2263089578454840483.Spec : Prop :=
  ∀ n, P2263089578454840483.a n = A374439 n

theorem P2263089578454840483.correct : P2263089578454840483.Spec := by
  intro n
  simp only [A374439]

end A374439

/-! ## A374439.P12584911652289602070

`gcd(2*A065941(n), A053119(n))`
-/

namespace A374439.P12584911652289602070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A065941 n) (A053119 n)

end

end A374439.P12584911652289602070

namespace A374439

/-- `gcd(2*A065941(n), A053119(n))` -/
def P12584911652289602070.Spec : Prop :=
  ∀ n, (P12584911652289602070.a n : ℤ) = A374439 n

end A374439

/-! ## A374439.P15237002411180641204

`A000034(A002262(n))*A065941(n)`
-/

namespace A374439.P15237002411180641204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002262 n).toNat * A065941 n

end

end A374439.P15237002411180641204

namespace A374439

/-- `A000034(A002262(n))*A065941(n)` -/
def P15237002411180641204.Spec : Prop :=
  ∀ n, P15237002411180641204.a n = A374439 n

end A374439

/-! ## A374439.P9578349207880950999

`abs(A124038(A061579(n)))`
-/

namespace A374439.P9578349207880950999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124038 (A061579 n).toNat|

end

end A374439.P9578349207880950999

namespace A374439

/-- `abs(A124038(A061579(n)))` -/
def P9578349207880950999.Spec : Prop :=
  ∀ n, P9578349207880950999.a n = A374439 n

end A374439

/-! ## A374439.P17585145894056382948

`gcd(A053118(n), A124038(A061579(n)))`
-/

namespace A374439.P17585145894056382948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053118 n) (A124038 (A061579 n).toNat)

end

end A374439.P17585145894056382948

namespace A374439

/-- `gcd(A053118(n), A124038(A061579(n)))` -/
def P17585145894056382948.Spec : Prop :=
  ∀ n, (P17585145894056382948.a n : ℤ) = A374439 n

end A374439

/-!
# A374440: Triangle read by rows: T(n, k) = T(n - 1, k) + T(n - 2, k - 2), with boundary conditions: if k = 0 or k = 2 then T = 1; if k = 1 then T = n - 1.

The programs for A374440, there is no canonical definition to state claims against.
-/

/-! ## A374440.P16720019245937062410

`gcd(A052448(A140994(n)), A309148(n+1))`
-/

namespace A374440.P16720019245937062410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052448 (A140994 n).toNat) (A309148 (n + 1))

end

end A374440.P16720019245937062410

/-! ## A374440.P13415894688748920284

`A054055(A343095(n)^A162515(n))`
-/

namespace A374440.P13415894688748920284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.roundAway ((A343095 n : ℚ) ^ (A162515 n : ℤ))).toNat

end

end A374440.P13415894688748920284

/-! ## A374440.P13872157321069470452

`A171882(n)^A319501(A098825(n))`
-/

namespace A374440.P13872157321069470452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171882 n : ℚ) ^ (A319501 (A098825 n).toNat : ℤ)

end

end A374440.P13872157321069470452

/-! ## A374440.P17177972737431574653

`A071919(n)^A142071(A166350(n+1))`
-/

namespace A374440.P17177972737431574653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) ^ (A142071 (A166350 (n + 1)).toNat : ℤ)

end

end A374440.P17177972737431574653

/-! ## A374440.P12846945246042233558

`A337161(n)^A244137(A166350(n+1))`
-/

namespace A374440.P12846945246042233558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337161 n : ℚ) ^ (A244137 (A166350 (n + 1)).toNat : ℤ)

end

end A374440.P12846945246042233558

/-!
# A374441: Triangle read by rows: T(n, k) = binomial(n - floor(k/2), ceiling(k/2)) - binomial(n - ceiling(k/2), floor(k/2)).

The programs for A374441, the canonical program `A374441.P5096802000920575870` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374441 has offset 0).

The definition of A374441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374441.P2939319709329108862

`A194005(n)-A065941(n)`
-/

namespace A374441.P2939319709329108862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 n - A065941 n

end

end A374441.P2939319709329108862

namespace A374441

/-- `A194005(n)-A065941(n)` -/
def P2939319709329108862.Spec : Prop :=
  ∀ n, P2939319709329108862.a n = A374441 n

end A374441

/-! ## A374441.P18227671138823278658

`A060510(n)*A374440(n)`
-/

namespace A374441.P18227671138823278658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n * A374440 n

end

end A374441.P18227671138823278658

namespace A374441

/-- `A060510(n)*A374440(n)` -/
def P18227671138823278658.Spec : Prop :=
  ∀ n, P18227671138823278658.a n = A374441 n

end A374441

/-! ## A374441.P7945004016259575456

`A194005(n)-abs(A108299(n))`
-/

namespace A374441.P7945004016259575456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 n - |A108299 n|

end

end A374441.P7945004016259575456

namespace A374441

/-- `A194005(n)-abs(A108299(n))` -/
def P7945004016259575456.Spec : Prop :=
  ∀ n, P7945004016259575456.a n = A374441 n

end A374441

/-! ## A374441.P5096802000920575870

`A194005(n)-A046854(A061579(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A374441

/-- `A194005(n)-A046854(A061579(n))` -/
def P5096802000920575870.Spec : Prop :=
  ∀ n, P5096802000920575870.a n = A374441 n

theorem P5096802000920575870.correct : P5096802000920575870.Spec := by
  intro n
  simp only [A374441]

end A374441

/-! ## A374441.P2059637336852796791

`A065941(A080036(n))-A065941(n)`
-/

namespace A374441.P2059637336852796791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A080036 n).toNat - A065941 n

end

end A374441.P2059637336852796791

namespace A374441

/-- `A065941(A080036(n))-A065941(n)` -/
def P2059637336852796791.Spec : Prop :=
  ∀ n, P2059637336852796791.a n = A374441 n

end A374441

/-! ## A374441.P3759302127191242130

`A065941(A014132(n+1))-A065941(n)`
-/

namespace A374441.P3759302127191242130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A014132 (n + 1)).toNat - A065941 n

end

end A374441.P3759302127191242130

namespace A374441

/-- `A065941(A014132(n+1))-A065941(n)` -/
def P3759302127191242130.Spec : Prop :=
  ∀ n, P3759302127191242130.a n = A374441 n

end A374441

/-! ## A374441.P2324114802731655445

`A060510(A080036(n+1))*A065941(n+1)`
-/

namespace A374441.P2324114802731655445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (A080036 (n + 1)).toNat * A065941 (n + 1)

end

end A374441.P2324114802731655445

namespace A374441

/-- `A060510(A080036(n+1))*A065941(n+1)` -/
def P2324114802731655445.Spec : Prop :=
  ∀ n, P2324114802731655445.a n = A374441 n

end A374441

/-! ## A374441.P6946432688476355393

`A194005(n)-A000463(A131268(n))`
-/

namespace A374441.P6946432688476355393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 n - A000463 (A131268 n).toNat

end

end A374441.P6946432688476355393

namespace A374441

/-- `A194005(n)-A000463(A131268(n))` -/
def P6946432688476355393.Spec : Prop :=
  ∀ n, P6946432688476355393.a n = A374441 n

end A374441

/-! ## A374441.P7779478489136630169

`A104559(n)/A065941(n)-A065941(n)`
-/

namespace A374441.P7779478489136630169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104559 n : ℚ) / (A065941 n : ℚ) - (A065941 n : ℚ)

end

end A374441.P7779478489136630169

namespace A374441

/-- `A104559(n)/A065941(n)-A065941(n)` -/
def P7779478489136630169.Spec : Prop :=
  ∀ n, P7779478489136630169.a n = (A374441 n : ℚ)

end A374441

/-!
# A374443: Triangle read by rows: T(n, k) = rad(gcd(n, k)) if n, k > 0, T(0, 0) = 1, where rad = A007947 and gcd = A109004.

The programs for A374443, there is no canonical definition to state claims against.
-/

/-! ## A374443.P13322472303286842992

`∏{p}[A109004(n), #]`
-/

namespace A374443.P13322472303286842992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A374443.P13322472303286842992

/-! ## A374443.P11724777226971423164

`∏{p}[1-A281726(n+1), #]`
-/

namespace A374443.P11724777226971423164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A281726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A374443.P11724777226971423164

/-! ## A374443.P2731603806005994062

`gcd(A034386(n), A109004(n))`
-/

namespace A374443.P2731603806005994062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A109004 n)

end

end A374443.P2731603806005994062

/-! ## A374443.P18236870901781340932

`A007947(∏{d}[A109004(n), #])`
-/

namespace A374443.P18236870901781340932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A374443.P18236870901781340932

/-! ## A374443.P4887196152516686061

`gcd(A109004(n)², A121281(n))`
-/

namespace A374443.P4887196152516686061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109004 n ^ 2) (A121281 n)

end

end A374443.P4887196152516686061

/-! ## A374443.P13565232312703248991

`∏{p}[gcd(A109042(n), A114327(n)), #]`
-/

namespace A374443.P13565232312703248991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109042 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A374443.P13565232312703248991

/-! ## A374443.P4540391922081617391

`∏{p}[gcd(A002024(n+1)-1, A057554(2*n+1)), #]`
-/

namespace A374443.P4540391922081617391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1) - 1) (A057554 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A374443.P4540391922081617391

/-! ## A374443.P2609370623546037770

`A007947(A109004(A000007(n)+n))`
-/

namespace A374443.P2609370623546037770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A109004 (A000007 n + (n : ℤ)).toNat).toNat

end

end A374443.P2609370623546037770

/-! ## A374443.P1489140946327109764

`A007947(abs(A000007(n)-A109004(n)))`
-/

namespace A374443.P1489140946327109764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 |A000007 n - A109004 n|.toNat

end

end A374443.P1489140946327109764

/-! ## A374443.P18107956190784406496

`gcd(A025581(n), A374436(n))`
-/

namespace A374443.P18107956190784406496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A374436 n)

end

end A374443.P18107956190784406496

/-!
# A374444: Array read by ascending antidiagonals: T(n, k) = PS(n, k) where PS = 1 if n = 1 or k = 1, otherwise PS = 0 if n = 0 or k = 0, otherwise PS = n^floor(k/2) mods k, where mods is the modulo operator with the symmetric representation.

The programs for A374444, there is no canonical definition to state claims against.
-/

/-! ## A374444.P5999878300355033950

`A372728(n)^∑[A133299(2*(n+1))]`
-/

namespace A374444.P5999878300355033950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372728 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A374444.P5999878300355033950

/-! ## A374444.P13866143173287012116

`A372728(n)^A006530(A035294(n))`
-/

namespace A374444.P13866143173287012116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372728 n : ℚ) ^ (A006530 (A035294 n).toNat : ℤ)

end

end A374444.P13866143173287012116

/-! ## A374444.P8944541889382176722

`A372728(n)^A036452(A008279(n))`
-/

namespace A374444.P8944541889382176722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372728 n : ℚ) ^ (A036452 (A008279 n).toNat : ℤ)

end

end A374444.P8944541889382176722

/-! ## A374444.P1949867660820590234

`A372728(n)^A074630(A278688(n+1))`
-/

namespace A374444.P1949867660820590234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372728 n : ℚ) ^ (A074630 (A278688 (n + 1)).toNat : ℤ)

end

end A374444.P1949867660820590234

/-! ## A374444.P8486124104524904563

`A372728(n)^A362077(A070991(n+1))`
-/

namespace A374444.P8486124104524904563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372728 n : ℚ) ^ (A362077 (A070991 (n + 1)).toNat : ℤ)

end

end A374444.P8486124104524904563

/-!
# A374445: Lexicographically earliest sequence of distinct positive integers such that any pair of consecutive terms are coprime whereas the squarefree kernel of their product is primorial.

The programs for A374445, there is no canonical definition to state claims against.
-/

/-! ## A374445.P3110972819523239928

`A025581(A287022(n))*A098550(n+1)`
-/

namespace A374445.P3110972819523239928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A287022 n).toNat * A098550 (n + 1)

end

end A374445.P3110972819523239928

/-! ## A374445.P17830001570510552068

`A098550(n+1)*A178334(A369614(n))`
-/

namespace A374445.P17830001570510552068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1) * A178334 (A369614 n).toNat

end

end A374445.P17830001570510552068

/-! ## A374445.P16187472223181073739

`A078226(A376836(n))*A373390(n+1)`
-/

namespace A374445.P16187472223181073739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078226 (A376836 n).toNat * A373390 (n + 1)

end

end A374445.P16187472223181073739

/-! ## A374445.P10839912675358913235

`lcm(A226273(A014371(n)), A255509(n+1))`
-/

namespace A374445.P10839912675358913235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226273 (A014371 n).toNat) (A255509 (n + 1))

end

end A374445.P10839912675358913235

/-! ## A374445.P864010007637375269

`A098550(n+1)*A309861(A309861(n)-1)`
-/

namespace A374445.P864010007637375269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1) * A309861 (A309861 n - 1).toNat

end

end A374445.P864010007637375269

/-!
# A374446: Positions of zeros in the expansion of Product_{k>=0} (1 - x^(2^k))^3; A373308(a(n)) = 0 for n >= 1.

The programs for A374446, the canonical program `A374446.P17465126024641626848` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374446 has offset 1).

The definition of A374446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374446.P17465126024641626848

`Δ[A224923(n)]+n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A374446

/-- `Δ[A224923(n)]+n` -/
def P17465126024641626848.Spec : Prop :=
  ∀ n, P17465126024641626848.a n = A374446 (n + 1)

theorem P17465126024641626848.correct : P17465126024641626848.Spec := by
  intro n
  simp only [A374446, Nat.add_sub_cancel]

end A374446

/-! ## A374446.P6085672689068406091

`A001196(n+1)-1`
-/

namespace A374446.P6085672689068406091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (n + 1) - 1

end

end A374446.P6085672689068406091

namespace A374446

/-- `A001196(n+1)-1` -/
def P6085672689068406091.Spec : Prop :=
  ∀ n, P6085672689068406091.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P3100448995519152691

`A332206(2*(n+1))-1`
-/

namespace A374446.P3100448995519152691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (2 * (n + 1)) - 1

end

end A374446.P3100448995519152691

namespace A374446

/-- `A332206(2*(n+1))-1` -/
def P3100448995519152691.Spec : Prop :=
  ∀ n, P3100448995519152691.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P7095142621196769556

`3*A000695(n+1)-1`
-/

namespace A374446.P7095142621196769556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (n + 1) - 1

end

end A374446.P7095142621196769556

namespace A374446

/-- `3*A000695(n+1)-1` -/
def P7095142621196769556.Spec : Prop :=
  ∀ n, P7095142621196769556.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P13681883499197178888

`2*A224915(n+1)+n`
-/

namespace A374446.P13681883499197178888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224915 (n + 1) + (n : ℤ)

end

end A374446.P13681883499197178888

namespace A374446

/-- `2*A224915(n+1)+n` -/
def P13681883499197178888.Spec : Prop :=
  ∀ n, P13681883499197178888.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P2013654385269594495

`A045086(A006520(n+1))`
-/

namespace A374446.P2013654385269594495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045086 (A006520 (n + 1)).toNat

end

end A374446.P2013654385269594495

namespace A374446

/-- `A045086(A006520(n+1))` -/
def P2013654385269594495.Spec : Prop :=
  ∀ n, P2013654385269594495.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P9903637586629126105

`A036779(A047209(n+2))-1`
-/

namespace A374446.P9903637586629126105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (A047209 (n + 2)).toNat - 1

end

end A374446.P9903637586629126105

namespace A374446

/-- `A036779(A047209(n+2))-1` -/
def P9903637586629126105.Spec : Prop :=
  ∀ n, P9903637586629126105.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P4662519778614026796

`A374625(n+1)+A032925(2*n+1)`
-/

namespace A374446.P4662519778614026796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 (n + 1) + A032925 (2 * n + 1)

end

end A374446.P4662519778614026796

namespace A374446

/-- `A374625(n+1)+A032925(2*n+1)` -/
def P4662519778614026796.Spec : Prop :=
  ∀ n, P4662519778614026796.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P524688101619634044

`A023709(A005823(n+2))`
-/

namespace A374446.P524688101619634044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A005823 (n + 2)).toNat

end

end A374446.P524688101619634044

namespace A374446

/-- `A023709(A005823(n+2))` -/
def P524688101619634044.Spec : Prop :=
  ∀ n, P524688101619634044.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P9110356675344940548

`A270804(2*n+1)+A000695(n+1)`
-/

namespace A374446.P9110356675344940548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (2 * n + 1) + A000695 (n + 1)

end

end A374446.P9110356675344940548

namespace A374446

/-- `A270804(2*n+1)+A000695(n+1)` -/
def P9110356675344940548.Spec : Prop :=
  ∀ n, P9110356675344940548.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P14460781873374447914

`eq[0, A373308(n)]`
-/

namespace A374446.P14460781873374447914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374446.P14460781873374447914

namespace A374446

/-- `eq[0, A373308(n)]` -/
def P14460781873374447914.Spec : Prop :=
  ∀ n, (P14460781873374447914.a n : ℤ) = A374446 (n + 1)

end A374446

/-! ## A374446.P10431394349632632130

`eq[0, A309952(n+1)]`
-/

namespace A374446.P10431394349632632130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374446.P10431394349632632130

namespace A374446

/-- `eq[0, A309952(n+1)]` -/
def P10431394349632632130.Spec : Prop :=
  ∀ n, (P10431394349632632130.a n : ℤ) = A374446 (n + 1)

end A374446

/-! ## A374446.P6098635909220652298

`record[A004468(n+1)-1]`
-/

namespace A374446.P6098635909220652298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374446.P6098635909220652298

namespace A374446

/-- `record[A004468(n+1)-1]` -/
def P6098635909220652298.Spec : Prop :=
  ∀ n, P6098635909220652298.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P4407260506011812117

`record[A048647(n+1)-1]`
-/

namespace A374446.P4407260506011812117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374446.P4407260506011812117

namespace A374446

/-- `record[A048647(n+1)-1]` -/
def P4407260506011812117.Spec : Prop :=
  ∀ n, P4407260506011812117.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P2976099646605879938

`record[or(n, A004514(n+1))]`
-/

namespace A374446.P2976099646605879938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004514 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374446.P2976099646605879938

namespace A374446

/-- `record[or(n, A004514(n+1))]` -/
def P2976099646605879938.Spec : Prop :=
  ∀ n, P2976099646605879938.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P9921160761543575175

`eq[n+1, A057300(n+1)]`
-/

namespace A374446.P9921160761543575175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374446.P9921160761543575175

namespace A374446

/-- `eq[n+1, A057300(n+1)]` -/
def P9921160761543575175.Spec : Prop :=
  ∀ n, (P9921160761543575175.a n : ℤ) = A374446 (n + 1)

end A374446

/-! ## A374446.P12029975025679595039

`∑[A171977((n+1)²)]+n`
-/

namespace A374446.P12029975025679595039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A374446.P12029975025679595039

namespace A374446

/-- `∑[A171977((n+1)²)]+n` -/
def P12029975025679595039.Spec : Prop :=
  ∀ n, P12029975025679595039.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P17665965109352919160

`A022424(A000695(n+1))`
-/

namespace A374446.P17665965109352919160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022424 (A000695 (n + 1)).toNat

end

end A374446.P17665965109352919160

namespace A374446

/-- `A022424(A000695(n+1))` -/
def P17665965109352919160.Spec : Prop :=
  ∀ n, P17665965109352919160.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P19585280047350231

`A152754(A224915(n+1))`
-/

namespace A374446.P19585280047350231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (A224915 (n + 1)).toNat

end

end A374446.P19585280047350231

namespace A374446

/-- `A152754(A224915(n+1))` -/
def P19585280047350231.Spec : Prop :=
  ∀ n, P19585280047350231.a n = A374446 (n + 1)

end A374446

/-! ## A374446.P2665203664893236198

`A347838(A332206(n+1))`
-/

namespace A374446.P2665203664893236198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (A332206 (n + 1)).toNat

end

end A374446.P2665203664893236198

namespace A374446

/-- `A347838(A332206(n+1))` -/
def P2665203664893236198.Spec : Prop :=
  ∀ n, P2665203664893236198.a n = A374446 (n + 1)

end A374446

/-!
# A374447: Inverse permutation to A373498.

The programs for A374447, there is no canonical definition to state claims against.
-/

/-! ## A374447.P6810907110502148684

`A373498(A373498(A373498(A373498(A373498(n+1)))))`
-/

namespace A374447.P6810907110502148684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (A373498 (A373498 (A373498 (n + 1)).toNat).toNat).toNat).toNat

end

end A374447.P6810907110502148684

/-! ## A374447.P17489252647878702793

`A374494(A370655(n+1))`
-/

namespace A374447.P17489252647878702793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A370655 (n + 1)).toNat

end

end A374447.P17489252647878702793

/-! ## A374447.P3654328384094890050

`A374531(A373498(n+1))`
-/

namespace A374447.P3654328384094890050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A373498 (n + 1)).toNat

end

end A374447.P3654328384094890050

/-! ## A374447.P10710046800112269274

`A374531(A370655(A374531(n+1)))`
-/

namespace A374447.P10710046800112269274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A370655 (A374531 (n + 1)).toNat).toNat

end

end A374447.P10710046800112269274

/-! ## A374447.P16453319576813507873

`A374494(A373498(A374494(n+1)))`
-/

namespace A374447.P16453319576813507873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A373498 (A374494 (n + 1)).toNat).toNat

end

end A374447.P16453319576813507873

/-!
# A374450: Number of edge covers of the fan graph F_{n,4}.

The programs for A374450, the canonical program `A374450.P16865878036882055767` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374450 has offset 1).

The definition of A374450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374450.P16865878036882055767

`8*15^(n+1)-12*7^(n+1)+9*3^(n+1)-4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374450

/-- `8*15^(n+1)-12*7^(n+1)+9*3^(n+1)-4` -/
def P16865878036882055767.Spec : Prop :=
  ∀ n, P16865878036882055767.a n = A374450 (n + 1)

theorem P16865878036882055767.correct : P16865878036882055767.Spec := by
  intro n
  simp only [A374450, Nat.add_sub_cancel]

end A374450

/-!
# A374451: Triangle T(n, k), n > 1, k = 1..n-1, read by rows; T(n, k) is the least prime number p such that the p-adic valuations of n and k differ.

The programs for A374451, there is no canonical definition to state claims against.
-/

/-! ## A374451.P15056704298664015401

`A020639(A120073(n+2)*A206923(2*(n+1)))`
-/

namespace A374451.P15056704298664015401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120073 (n + 2) * A206923 (2 * (n + 1))).toNat

end

end A374451.P15056704298664015401

/-! ## A374451.P1739014738379996172

`A020639(A120073(n+2))%A316428(n+5)`
-/

namespace A374451.P1739014738379996172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A120073 (n + 2)).toNat) (A316428 (n + 5))

end

end A374451.P1739014738379996172

/-! ## A374451.P9453356916118707265

`A014673(A120073(n+2))`
-/

namespace A374451.P9453356916118707265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A120073 (n + 2)).toNat

end

end A374451.P9453356916118707265

/-! ## A374451.P6456700718322617046

`A020639(A120073(n+2))%A008458(A271152(n))`
-/

namespace A374451.P6456700718322617046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A120073 (n + 2)).toNat) (A008458 (A271152 n).toNat)

end

end A374451.P6456700718322617046

/-! ## A374451.P11036918773913466003

`A020639(A120073(n+2)%A344595(n+1))`
-/

namespace A374451.P11036918773913466003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A120073 (n + 2)) (A344595 (n + 1))).toNat

end

end A374451.P11036918773913466003

/-!
# A374452: Iterated rascal triangle R3: T(n,k) = Sum_{m=0..3} binomial(n-k,m)*binomial(k,m).

The programs for A374452, there is no canonical definition to state claims against.
-/

/-! ## A374452.P9142976248179769185

`A007318(n)-A151795(A007318(n))`
-/

namespace A374452.P9142976248179769185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A151795 (A007318 n).toNat

end

end A374452.P9142976248179769185

/-! ## A374452.P6511454789404582277

`A007318(n)-A122841(A176331(n))`
-/

namespace A374452.P6511454789404582277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A122841 (A176331 n).toNat

end

end A374452.P6511454789404582277

/-! ## A374452.P12689700824955719535

`A007318(n)-A186746(A186733(n+1))`
-/

namespace A374452.P12689700824955719535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A186746 (A186733 (n + 1)).toNat

end

end A374452.P12689700824955719535

/-! ## A374452.P12184288830209506811

`A007318(n)-A091225(A062361(n+3))`
-/

namespace A374452.P12184288830209506811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A091225 (A062361 (n + 3)).toNat

end

end A374452.P12184288830209506811

/-! ## A374452.P11561694630950291513

`A007318(n)-A010056(A375137(n+4))`
-/

namespace A374452.P11561694630950291513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A010056 (A375137 (n + 4)).toNat

end

end A374452.P11561694630950291513

/-!
# A374453: Number of set-systems S composed of nonempty subsets of [n] such that any element k in S appears at most k times.

The programs for A374453, there is no canonical definition to state claims against.
-/

/-! ## A374453.P13507038195892898637

`A160051(A246534(n)+A010872(n))`
-/

namespace A374453.P13507038195892898637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 (A246534 n + A010872 n).toNat

end

end A374453.P13507038195892898637

/-!
# A374454: Expansion of o.g.f. 1/(1 - 4*x - 6*x^2 - 4*x^3 - x^4).

The programs for A374454, the canonical program `A374454.P7820603204630672060` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374454 has offset 0).

The definition of A374454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-6x^2-4x^3-x^4))` (program `A374454.P7820603204630672060`, by `A374454.P7820603204630672060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374454.P7820603204630672060

`ogf(1/(1-4x-6x^2-4x^3-x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374454

/-- `ogf(1/(1-4x-6x^2-4x^3-x^4))` -/
def P7820603204630672060.Spec : Prop :=
  ∀ n, P7820603204630672060.a n = A374454 n

theorem P7820603204630672060.correct : P7820603204630672060.Spec := by
  intro n
  simp only [A374454]

end A374454

/-! ## A374454.P16125154425677529187

`4*a(n-1)+6*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=22, a(3)=116`
-/

namespace A374454.P16125154425677529187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 22, 116] fun n a =>
  4 * a (n - 1) + 6 * a (n - 2) + 4 * a (n - 3) + a (n - 4)

end

end A374454.P16125154425677529187

namespace A374454

/-- `4*a(n-1)+6*a(n-2)+4*a(n-3)+a(n-4)` -/
def P16125154425677529187.Spec : Prop :=
  ∀ n, (P16125154425677529187.a n : ℤ) = A374454 n

end A374454

/-!
# A374455: Expansion of o.g.f. 1/(1 - 5*x - 10*x^2 - 10*x^3 - 5*x^4 - x^5).

The programs for A374455, the canonical program `A374455.P5784655051679105659` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374455 has offset 0).

The definition of A374455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x-10x^2-10x^3-5x^4-x^5))` (program `A374455.P5784655051679105659`, by `A374455.P5784655051679105659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374455.P5784655051679105659

`ogf(1/(1-5x-10x^2-10x^3-5x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374455

/-- `ogf(1/(1-5x-10x^2-10x^3-5x^4-x^5))` -/
def P5784655051679105659.Spec : Prop :=
  ∀ n, P5784655051679105659.a n = A374455 n

theorem P5784655051679105659.correct : P5784655051679105659.Spec := by
  intro n
  simp only [A374455]

end A374455

/-!
# A374456: The Euler phi function values of the exponentially odd numbers (A268335).

The programs for A374456, the canonical program `A374456.P3778587499414482557` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374456 has offset 1).

The definition of A374456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374456.P3778587499414482557

`A000010(A268335(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374456

/-- `A000010(A268335(n+1))` -/
def P3778587499414482557.Spec : Prop :=
  ∀ n, P3778587499414482557.a n = A374456 (n + 1)

theorem P3778587499414482557.correct : P3778587499414482557.Spec := by
  intro n
  simp only [A374456, Nat.add_sub_cancel]

end A374456

/-! ## A374456.P12094496160736201879

`A000010(sqrt(A374458(n+1)))`
-/

namespace A374456.P12094496160736201879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A374458 (n + 1) : ℝ))).toNat

end

end A374456.P12094496160736201879

namespace A374456

/-- `A000010(sqrt(A374458(n+1)))` -/
def P12094496160736201879.Spec : Prop :=
  ∀ n, P12094496160736201879.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P1738673453863806224

`A000010(record[A331737(n+1)])`
-/

namespace A374456.P1738673453863806224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374456.P1738673453863806224

namespace A374456

/-- `A000010(record[A331737(n+1)])` -/
def P1738673453863806224.Spec : Prop :=
  ∀ n, P1738673453863806224.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P2298507845297306555

`A000010(eq[1, A295316(n+1)]+1)`
-/

namespace A374456.P2298507845297306555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A374456.P2298507845297306555

namespace A374456

/-- `A000010(eq[1, A295316(n+1)]+1)` -/
def P2298507845297306555.Spec : Prop :=
  ∀ n, P2298507845297306555.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P6009953507958492117

`A000010(eq[1, A351568(n+1)]+1)`
-/

namespace A374456.P6009953507958492117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A374456.P6009953507958492117

namespace A374456

/-- `A000010(eq[1, A351568(n+1)]+1)` -/
def P6009953507958492117.Spec : Prop :=
  ∀ n, P6009953507958492117.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P15951031181700876605

`A379832(n+1)/A374457(n+1)`
-/

namespace A374456.P15951031181700876605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379832 (n + 1) : ℚ) / (A374457 (n + 1) : ℚ)

end

end A374456.P15951031181700876605

namespace A374456

/-- `A379832(n+1)/A374457(n+1)` -/
def P15951031181700876605.Spec : Prop :=
  ∀ n, P15951031181700876605.a n = (A374456 (n + 1) : ℚ)

end A374456

/-! ## A374456.P3797215434035846895

`A000010(∪[A002035(n+1), A001779(n)])`
-/

namespace A374456.P3797215434035846895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A374456.P3797215434035846895

namespace A374456

/-- `A000010(∪[A002035(n+1), A001779(n)])` -/
def P3797215434035846895.Spec : Prop :=
  ∀ n, P3797215434035846895.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P7779496410879720264

`A000010(record[A350389(n+1)])`
-/

namespace A374456.P7779496410879720264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374456.P7779496410879720264

namespace A374456

/-- `A000010(record[A350389(n+1)])` -/
def P7779496410879720264.Spec : Prop :=
  ∀ n, P7779496410879720264.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P11088787747243730281

`A000010(record[A350390(n+1)])`
-/

namespace A374456.P11088787747243730281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374456.P11088787747243730281

namespace A374456

/-- `A000010(record[A350390(n+1)])` -/
def P11088787747243730281.Spec : Prop :=
  ∀ n, P11088787747243730281.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P1486037038028298426

`A380165(A268335(2*n+1-n))`
-/

namespace A374456.P1486037038028298426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380165 (A268335 (2 * n + 1 - n)).toNat

end

end A374456.P1486037038028298426

namespace A374456

/-- `A380165(A268335(2*n+1-n))` -/
def P1486037038028298426.Spec : Prop :=
  ∀ n, P1486037038028298426.a n = A374456 (n + 1)

end A374456

/-! ## A374456.P3196922665455546007

`A300717(A367406(n+1))`
-/

namespace A374456.P3196922665455546007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A367406 (n + 1)).toNat

end

end A374456.P3196922665455546007

namespace A374456

/-- `A300717(A367406(n+1))` -/
def P3196922665455546007.Spec : Prop :=
  ∀ n, P3196922665455546007.a n = A374456 (n + 1)

end A374456

/-!
# A374457: The Dedekind psi function values of the exponentially odd numbers (A268335).

The programs for A374457, the canonical program `A374457.P2386240306145347940` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374457 has offset 1).

The definition of A374457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374457.P2386240306145347940

`A001615(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374457

/-- `A001615(A268335(n+1))` -/
def P2386240306145347940.Spec : Prop :=
  ∀ n, P2386240306145347940.a n = A374457 (n + 1)

theorem P2386240306145347940.correct : P2386240306145347940.Spec := by
  intro n
  simp only [A374457, Nat.add_sub_cancel]

end A374457

/-! ## A374457.P1418531657757065450

`A367418(n+1)*A380326(n+1)`
-/

namespace A374457.P1418531657757065450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367418 (n + 1) * A380326 (n + 1)

end

end A374457.P1418531657757065450

namespace A374457

/-- `A367418(n+1)*A380326(n+1)` -/
def P1418531657757065450.Spec : Prop :=
  ∀ n, P1418531657757065450.a n = A374457 (n + 1)

end A374457

/-! ## A374457.P4917519387843491726

`A379832(n+1)/A374456(n+1)`
-/

namespace A374457.P4917519387843491726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379832 (n + 1) : ℚ) / (A374456 (n + 1) : ℚ)

end

end A374457.P4917519387843491726

namespace A374457

/-- `A379832(n+1)/A374456(n+1)` -/
def P4917519387843491726.Spec : Prop :=
  ∀ n, P4917519387843491726.a n = (A374457 (n + 1) : ℚ)

end A374457

/-! ## A374457.P2024078484523017220

`A000203(A367417(n+1))*A367418(n+1)`
-/

namespace A374457.P2024078484523017220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A367417 (n + 1)).toNat * A367418 (n + 1)

end

end A374457.P2024078484523017220

namespace A374457

/-- `A000203(A367417(n+1))*A367418(n+1)` -/
def P2024078484523017220.Spec : Prop :=
  ∀ n, P2024078484523017220.a n = A374457 (n + 1)

end A374457

/-! ## A374457.P5716922400896202546

`A001615(sqrt(A374458(n+1)))`
-/

namespace A374457.P5716922400896202546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway (Real.sqrt (A374458 (n + 1) : ℝ))).toNat

end

end A374457.P5716922400896202546

namespace A374457

/-- `A001615(sqrt(A374458(n+1)))` -/
def P5716922400896202546.Spec : Prop :=
  ∀ n, P5716922400896202546.a n = A374457 (n + 1)

end A374457

/-! ## A374457.P10581217220851799172

`A001615(record[A331737(n+1)])`
-/

namespace A374457.P10581217220851799172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374457.P10581217220851799172

namespace A374457

/-- `A001615(record[A331737(n+1)])` -/
def P10581217220851799172.Spec : Prop :=
  ∀ n, P10581217220851799172.a n = A374457 (n + 1)

end A374457

/-! ## A374457.P9932433199193288908

`A001616(A374458(n+1))`
-/

namespace A374457.P9932433199193288908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A374458 (n + 1)).toNat

end

end A374457.P9932433199193288908

namespace A374457

/-- `A001616(A374458(n+1))` -/
def P9932433199193288908.Spec : Prop :=
  ∀ n, P9932433199193288908.a n = A374457 (n + 1)

end A374457

/-!
# A374458: Squares of exponentially odd numbers (A268335).

The programs for A374458, the canonical program `A374458.P2044124364577777506` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374458 has offset 1).

The definition of A374458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374458.P2044124364577777506

`A268335(n+1)²`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374458

/-- `A268335(n+1)²` -/
def P2044124364577777506.Spec : Prop :=
  ∀ n, P2044124364577777506.a n = A374458 (n + 1)

theorem P2044124364577777506.correct : P2044124364577777506.Spec := by
  intro n
  simp only [A374458, Nat.add_sub_cancel]

end A374458

/-! ## A374458.P9415172615128066196

`record[A331737(n+1)²]`
-/

namespace A374458.P9415172615128066196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P9415172615128066196

namespace A374458

/-- `record[A331737(n+1)²]` -/
def P9415172615128066196.Spec : Prop :=
  ∀ n, P9415172615128066196.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P8508001115485665482

`∪[A002035(n+1), A001287(n)]²`
-/

namespace A374458.P8508001115485665482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374458.P8508001115485665482

namespace A374458

/-- `∪[A002035(n+1), A001287(n)]²` -/
def P8508001115485665482.Spec : Prop :=
  ∀ n, (P8508001115485665482.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P14220622888538709009

`∪[A002035(n+1), A001496(n)]²`
-/

namespace A374458.P14220622888538709009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374458.P14220622888538709009

namespace A374458

/-- `∪[A002035(n+1), A001496(n)]²` -/
def P14220622888538709009.Spec : Prop :=
  ∀ n, (P14220622888538709009.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P3179420156392503344

`∪[A002035(n+1), A001779(n)]²`
-/

namespace A374458.P3179420156392503344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374458.P3179420156392503344

namespace A374458

/-- `∪[A002035(n+1), A001779(n)]²` -/
def P3179420156392503344.Spec : Prop :=
  ∀ n, (P3179420156392503344.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P9224533916027678127

`∪[A002035(n+1), A001848(n)]²`
-/

namespace A374458.P9224533916027678127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374458.P9224533916027678127

namespace A374458

/-- `∪[A002035(n+1), A001848(n)]²` -/
def P9224533916027678127.Spec : Prop :=
  ∀ n, (P9224533916027678127.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P10166001705528319092

`A367406(n+1)*A367418(n+1)`
-/

namespace A374458.P10166001705528319092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1) * A367418 (n + 1)

end

end A374458.P10166001705528319092

namespace A374458

/-- `A367406(n+1)*A367418(n+1)` -/
def P10166001705528319092.Spec : Prop :=
  ∀ n, P10166001705528319092.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P2148116882869606261

`A367406(n+1)*A367419(n+1)*A367419(n+1)`
-/

namespace A374458.P2148116882869606261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1) * A367419 (n + 1) * A367419 (n + 1)

end

end A374458.P2148116882869606261

namespace A374458

/-- `A367406(n+1)*A367419(n+1)*A367419(n+1)` -/
def P2148116882869606261.Spec : Prop :=
  ∀ n, P2148116882869606261.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P13341077523467507272

`record[A350389(n+1)²]`
-/

namespace A374458.P13341077523467507272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P13341077523467507272

namespace A374458

/-- `record[A350389(n+1)²]` -/
def P13341077523467507272.Spec : Prop :=
  ∀ n, P13341077523467507272.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P1438411903884100529

`record[A350390(n+1)²]`
-/

namespace A374458.P1438411903884100529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P1438411903884100529

namespace A374458

/-- `record[A350390(n+1)²]` -/
def P1438411903884100529.Spec : Prop :=
  ∀ n, P1438411903884100529.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P5394734744378988618

`record[A390371(n+1)²]`
-/

namespace A374458.P5394734744378988618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P5394734744378988618

namespace A374458

/-- `record[A390371(n+1)²]` -/
def P5394734744378988618.Spec : Prop :=
  ∀ n, P5394734744378988618.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P278242840623955539

`record[A390867(n+1)²]`
-/

namespace A374458.P278242840623955539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P278242840623955539

namespace A374458

/-- `record[A390867(n+1)²]` -/
def P278242840623955539.Spec : Prop :=
  ∀ n, P278242840623955539.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P13139328236011470568

`A102631(A367407(n+1))²`
-/

namespace A374458.P13139328236011470568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A367407 (n + 1)).toNat ^ 2

end

end A374458.P13139328236011470568

namespace A374458

/-- `A102631(A367407(n+1))²` -/
def P13139328236011470568.Spec : Prop :=
  ∀ n, P13139328236011470568.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P4096658335215631449

`record[A102631(A019554(n+1))²]`
-/

namespace A374458.P4096658335215631449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A019554 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374458.P4096658335215631449

namespace A374458

/-- `record[A102631(A019554(n+1))²]` -/
def P4096658335215631449.Spec : Prop :=
  ∀ n, P4096658335215631449.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P15511389952032388161

`A003557(A268335(n+1))*A367406(n+1)`
-/

namespace A374458.P15511389952032388161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A268335 (n + 1)).toNat * A367406 (n + 1)

end

end A374458.P15511389952032388161

namespace A374458

/-- `A003557(A268335(n+1))*A367406(n+1)` -/
def P15511389952032388161.Spec : Prop :=
  ∀ n, P15511389952032388161.a n = A374458 (n + 1)

end A374458

/-! ## A374458.P8384780677492502280

`∩[A334832(n+1), A384418(n+1)]`
-/

namespace A374458.P8384780677492502280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374458.P8384780677492502280

namespace A374458

/-- `∩[A334832(n+1), A384418(n+1)]` -/
def P8384780677492502280.Spec : Prop :=
  ∀ n, (P8384780677492502280.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P14942396164564000343

`∩[A138326(n+1), A384418(n+1)]`
-/

namespace A374458.P14942396164564000343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374458.P14942396164564000343

namespace A374458

/-- `∩[A138326(n+1), A384418(n+1)]` -/
def P14942396164564000343.Spec : Prop :=
  ∀ n, (P14942396164564000343.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P17267832378364779871

`∩[A089237(n+1), A384418(n+1)]`
-/

namespace A374458.P17267832378364779871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374458.P17267832378364779871

namespace A374458

/-- `∩[A089237(n+1), A384418(n+1)]` -/
def P17267832378364779871.Spec : Prop :=
  ∀ n, (P17267832378364779871.a n : ℤ) = A374458 (n + 1)

end A374458

/-! ## A374458.P7047586347187982230

`A064549(A268335(n+1)*A367418(n+1))`
-/

namespace A374458.P7047586347187982230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A268335 (n + 1) * A367418 (n + 1)).toNat

end

end A374458.P7047586347187982230

namespace A374458

/-- `A064549(A268335(n+1)*A367418(n+1))` -/
def P7047586347187982230.Spec : Prop :=
  ∀ n, P7047586347187982230.a n = A374458 (n + 1)

end A374458

/-!
# A374459: 

The programs for A374459, there is no canonical definition to state claims against.
-/

/-! ## A374459.P4009507028172861266

`A268335(A374460(n+1))`
-/

namespace A374459.P4009507028172861266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (A374460 (n + 1)).toNat

end

end A374459.P4009507028172861266

/-! ## A374459.P9190416610231324933

`∪[A056824(n+1), A362594(n+1)]`
-/

namespace A374459.P9190416610231324933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374459.P9190416610231324933

/-! ## A374459.P8708695524461403586

`filter[A240111(n+1), A295316(#)]`
-/

namespace A374459.P8708695524461403586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P8708695524461403586

/-! ## A374459.P10481761162153502430

`filter[A295661(n+1), A295316(#)]`
-/

namespace A374459.P10481761162153502430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P10481761162153502430

/-! ## A374459.P10603242520041162342

`filter[A376142(n+1), A295316(#)]`
-/

namespace A374459.P10603242520041162342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P10603242520041162342

/-! ## A374459.P9469495363769053164

`filter[A060476(n+2), A295316(#)]`
-/

namespace A374459.P9469495363769053164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P9469495363769053164

/-! ## A374459.P15181387309682968329

`filter[A046099(n+1), A295316(#)]`
-/

namespace A374459.P15181387309682968329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P15181387309682968329

/-! ## A374459.P5318280197756209921

`filter[A048108(n+1), A295316(#)]`
-/

namespace A374459.P5318280197756209921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P5318280197756209921

/-! ## A374459.P18235023333376897394

`filter[A046790(n+1), A295316(#)]`
-/

namespace A374459.P18235023333376897394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P18235023333376897394

/-! ## A374459.P5722798855463136785

`filter[A062171(n+1), A295316(#)]`
-/

namespace A374459.P5722798855463136785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P5722798855463136785

/-! ## A374459.P9056193087168102654

`filter[A274141(n+1), A295316(#)]`
-/

namespace A374459.P9056193087168102654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P9056193087168102654

/-! ## A374459.P1016216641031834319

`filter[A051144(n+1), A295316(#)]`
-/

namespace A374459.P1016216641031834319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P1016216641031834319

/-! ## A374459.P14009022519655742569

`filter[A049199(n+1), A295316(#)]`
-/

namespace A374459.P14009022519655742569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P14009022519655742569

/-! ## A374459.P6850090211528710818

`filter[A013929(n+1), A295316(#)]`
-/

namespace A374459.P6850090211528710818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P6850090211528710818

/-! ## A374459.P15734712395684720462

`filter[A080756(n+1), A295316(#)]`
-/

namespace A374459.P15734712395684720462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P15734712395684720462

/-! ## A374459.P7865039643186459985

`filter[A162966(n+2), A295316(#)]`
-/

namespace A374459.P7865039643186459985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A374459.P7865039643186459985

/-! ## A374459.P17862183457875253315

`filter[A365535(n+1), A087049(#)]`
-/

namespace A374459.P17862183457875253315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A374459.P17862183457875253315

/-! ## A374459.P10456652700391737603

`∩[A013929(n+1), A365535(n+1)]`
-/

namespace A374459.P10456652700391737603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374459.P10456652700391737603

/-! ## A374459.P10659221247736959737

`∩[A046099(n+1), A365535(n+1)]`
-/

namespace A374459.P10659221247736959737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374459.P10659221247736959737

/-! ## A374459.P5395119021895828319

`∩[A046790(n+1), A365535(n+1)]`
-/

namespace A374459.P5395119021895828319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374459.P5395119021895828319

/-!
# A374460: Indices of the nonsquarefree terms in the sequence of exponentially odd numbers (A268335).

The programs for A374460, the canonical program `A374460.P17083838947933679680` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374460 has offset 1).

The definition of A374460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374460.P2294787435693880512

`lt[1, A367418(n+1)]+1`
-/

namespace A374460.P2294787435693880512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374460.P2294787435693880512

namespace A374460

/-- `lt[1, A367418(n+1)]+1` -/
def P2294787435693880512.Spec : Prop :=
  ∀ n, (P2294787435693880512.a n : ℤ) = A374460 (n + 1)

end A374460

/-! ## A374460.P17083838947933679680

`lt[1, A368711(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374460

/-- `lt[1, A368711(n+1)]+1` -/
def P17083838947933679680.Spec : Prop :=
  ∀ n, (P17083838947933679680.a n : ℤ) = A374460 (n + 1)

theorem P17083838947933679680.correct : P17083838947933679680.Spec := by
  intro n
  simp only [A374460, Nat.add_sub_cancel]

end A374460

/-! ## A374460.P8156808995286639211

`lt[A367417(n+1), n]+1`
-/

namespace A374460.P8156808995286639211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A374460.P8156808995286639211

namespace A374460

/-- `lt[A367417(n+1), n]+1` -/
def P8156808995286639211.Spec : Prop :=
  ∀ n, (P8156808995286639211.a n : ℤ) = A374460 (n + 1)

end A374460

/-! ## A374460.P12774375579602316217

`lt[1, A368711(A028310(n))]`
-/

namespace A374460.P12774375579602316217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374460.P12774375579602316217

namespace A374460

/-- `lt[1, A368711(A028310(n))]` -/
def P12774375579602316217.Spec : Prop :=
  ∀ n, (P12774375579602316217.a n : ℤ) = A374460 (n + 1)

end A374460

/-! ## A374460.P5115821267887461597

`lt[A367417(A233583(n+1)), n]`
-/

namespace A374460.P5115821267887461597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374460.P5115821267887461597

namespace A374460

/-- `lt[A367417(A233583(n+1)), n]` -/
def P5115821267887461597.Spec : Prop :=
  ∀ n, (P5115821267887461597.a n : ℤ) = A374460 (n + 1)

end A374460

/-!
# A374461: Numbers k such that k and k+1 are both nonsquarefree exponentially odd numbers (A374459).

The programs for A374461, there is no canonical definition to state claims against.
-/

/-! ## A374461.P9055847669493570678

`∩[A068140(n+1), A367695(n+1)]`
-/

namespace A374461.P9055847669493570678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374461.P9055847669493570678

/-! ## A374461.P3055836845152445220

`∩[A068781(n+1), A367695(n+1)]`
-/

namespace A374461.P3055836845152445220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374461.P3055836845152445220

/-! ## A374461.P11734081389850316353

`A342189(lt[A268448(2*n+5), A223663(2*n+1)])`
-/

namespace A374461.P11734081389850316353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374461.P11734081389850316353

/-!
# A374463: Numbers k such that the odd parts of sigma(k) and A064989(k) are equal, where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A374463, there is no canonical definition to state claims against.
-/

/-! ## A374463.P17359413041108622054

`A003961(A374464(n+1))%A351448(3*n+5)`
-/

namespace A374463.P17359413041108622054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A374464 (n + 1)).toNat) (A351448 (3 * n + 5))

end

end A374463.P17359413041108622054

/-! ## A374463.P870253103550732459

`A003961(A064989(A003961(A374464(n+1))))`
-/

namespace A374463.P870253103550732459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A003961 (A374464 (n + 1)).toNat).toNat).toNat

end

end A374463.P870253103550732459

/-! ## A374463.P10168549659998119736

`A003961(A374464(n+1)^A266499(n))`
-/

namespace A374463.P10168549659998119736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A374464 (n + 1) : ℚ) ^ (A266499 n : ℤ))).toNat

end

end A374463.P10168549659998119736

/-!
# A374464: Numbers k such that the odd parts of k and sigma(A003961(k)) are equal, where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A374464, there is no canonical definition to state claims against.
-/

/-! ## A374464.P18296369895750465473

`record[gcd(n+1, A336838(n+1))]`
-/

namespace A374464.P18296369895750465473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336838 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374464.P18296369895750465473

/-! ## A374464.P14895938025757553410

`eq[n, A336838(A028310(n))]`
-/

namespace A374464.P14895938025757553410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336838 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374464.P14895938025757553410

/-! ## A374464.P9568498880690499726

`eq[A003973(n+1), A038040(n+1)]+1`
-/

namespace A374464.P9568498880690499726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374464.P9568498880690499726

/-! ## A374464.P4116532973032210268

`A057020(A374463(n+1))`
-/

namespace A374464.P4116532973032210268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A374463 (n + 1)).toNat

end

end A374464.P4116532973032210268

/-! ## A374464.P15405973685356733833

`A064989(A374463(n+1)%A154532(n+1))`
-/

namespace A374464.P15405973685356733833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.tmod (A374463 (n + 1)) (A154532 (n + 1))).toNat

end

end A374464.P15405973685356733833

/-!
# A374465: Positions of 5's in A347381.

The programs for A374465, there is no canonical definition to state claims against.
-/

/-! ## A374465.P9161226420560773015

`eq[5, A347381(n+1)]+1`
-/

namespace A374465.P9161226420560773015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374465.P9161226420560773015

/-! ## A374465.P11135248495017662937

`A065475(eq[5, A347381(n+1)])`
-/

namespace A374465.P11135248495017662937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A374465.P11135248495017662937

/-! ## A374465.P562414344678482292

`eq[5, A347381(A000038(n)+n)]`
-/

namespace A374465.P562414344678482292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374465.P562414344678482292

/-! ## A374465.P15166905703947749296

`A065475(eq[5, A374215(n+1)+A374214(n+1)])`
-/

namespace A374465.P15166905703947749296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374215 (n + 1) + A374214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A374465.P15166905703947749296

/-! ## A374465.P2514536877360969394

`A065475(eq[5, A252464(n+1)-A347380(n+1)])`
-/

namespace A374465.P2514536877360969394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A347380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A374465.P2514536877360969394

/-!
# A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

The programs for A374466, the canonical program `A374466.P2704209594539488434` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374466 has offset 1).

The definition of A374466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A374466

/-- `A066829(n+1)*(1-A359464(n+1))` -/
def P2704209594539488434.Spec : Prop :=
  ∀ n, P2704209594539488434.a n = A374466 (n + 1)

theorem P2704209594539488434.correct : P2704209594539488434.Spec := by
  intro n
  simp only [A374466, Nat.add_sub_cancel]

end A374466

/-! ## A374466.P17190471506942526919

`A064547(n+1)%2*A066829(n+1)`
-/

namespace A374466.P17190471506942526919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064547 (n + 1)) 2 * A066829 (n + 1)

end

end A374466.P17190471506942526919

namespace A374466

/-- `A064547(n+1)%2*A066829(n+1)` -/
def P17190471506942526919.Spec : Prop :=
  ∀ n, P17190471506942526919.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P6943550546260230987

`char[A374467(n+1)-1]`
-/

namespace A374466.P6943550546260230987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374466.P6943550546260230987

namespace A374466

/-- `char[A374467(n+1)-1]` -/
def P6943550546260230987.Spec : Prop :=
  ∀ n, (P6943550546260230987.a n : ℤ) = A374466 (n + 1)

end A374466

/-! ## A374466.P2025975171846320013

`(log2(∏{e}[n+1, 2^#])*log2(A037445(n+1)))%2`
-/

namespace A374466.P2025975171846320013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) * Real.logb 2 (A037445 (n + 1) : ℝ))) 2

end

end A374466.P2025975171846320013

namespace A374466

/-- `(log2(∏{e}[n+1, 2^#])*log2(A037445(n+1)))%2` -/
def P2025975171846320013.Spec : Prop :=
  ∀ n, P2025975171846320013.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P10518186919178370596

`A000035(∑{e}[n+1, val((2*#)!, 2)]*∑{e}[n+1, #])`
-/

namespace A374466.P10518186919178370596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A374466.P10518186919178370596

namespace A374466

/-- `A000035(∑{e}[n+1, val((2*#)!, 2)]*∑{e}[n+1, #])` -/
def P10518186919178370596.Spec : Prop :=
  ∀ n, P10518186919178370596.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P9049238165797452200

`A172486(A268387(n+1)+2)`
-/

namespace A374466.P9049238165797452200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172486 (A268387 (n + 1) + 2).toNat

end

end A374466.P9049238165797452200

namespace A374466

/-- `A172486(A268387(n+1)+2)` -/
def P9049238165797452200.Spec : Prop :=
  ∀ n, P9049238165797452200.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P18088029341858176868

`lcm(A001222(n+1), A064547(n+1))%2`
-/

namespace A374466.P18088029341858176868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 1)) (A064547 (n + 1)) % 2

end

end A374466.P18088029341858176868

namespace A374466

/-- `lcm(A001222(n+1), A064547(n+1))%2` -/
def P18088029341858176868.Spec : Prop :=
  ∀ n, (P18088029341858176868.a n : ℤ) = A374466 (n + 1)

end A374466

/-! ## A374466.P2728852257608135944

`(log2(∏{e}[n+1, 2^#])*A001221(A160102(n+1)))%2`
-/

namespace A374466.P2728852257608135944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) * (A001221 (A160102 (n + 1)).toNat : ℝ))) 2

end

end A374466.P2728852257608135944

namespace A374466

/-- `(log2(∏{e}[n+1, 2^#])*A001221(A160102(n+1)))%2` -/
def P2728852257608135944.Spec : Prop :=
  ∀ n, P2728852257608135944.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P11370920112010501558

`A000035(A001222(n+1)*A046645(n+1))`
-/

namespace A374466.P11370920112010501558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (n + 1) * A046645 (n + 1)).toNat

end

end A374466.P11370920112010501558

namespace A374466

/-- `A000035(A001222(n+1)*A046645(n+1))` -/
def P11370920112010501558.Spec : Prop :=
  ∀ n, P11370920112010501558.a n = A374466 (n + 1)

end A374466

/-! ## A374466.P5598840169343343155

`A374471(2*A003961(n+1))`
-/

namespace A374466.P5598840169343343155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (2 * A003961 (n + 1)).toNat

end

end A374466.P5598840169343343155

namespace A374466

/-- `A374471(2*A003961(n+1))` -/
def P5598840169343343155.Spec : Prop :=
  ∀ n, P5598840169343343155.a n = A374466 (n + 1)

end A374466

/-!
# A374467: Numbers that are products of an odd number of primes and the total number of 1-bits in the exponents of their prime factorization n is odd.

The programs for A374467, the canonical program `A374467.P9810705810024272100` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374467 has offset 1).

The definition of A374467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374467.P9810705810024272100

`eq[1, A374466(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A374467

/-- `eq[1, A374466(n+1)]+1` -/
def P9810705810024272100.Spec : Prop :=
  ∀ n, (P9810705810024272100.a n : ℤ) = A374467 (n + 1)

theorem P9810705810024272100.correct : P9810705810024272100.Spec := by
  intro n
  simp only [A374467, Nat.add_sub_cancel]

end A374467

/-! ## A374467.P12835475364576408477

`filter[A000028(n+1), A066829(#)]`
-/

namespace A374467.P12835475364576408477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A374467.P12835475364576408477

namespace A374467

/-- `filter[A000028(n+1), A066829(#)]` -/
def P12835475364576408477.Spec : Prop :=
  ∀ n, P12835475364576408477.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P8648656483974773862

`filter[A000028(n+1), A374466(#)]`
-/

namespace A374467.P8648656483974773862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P8648656483974773862

namespace A374467

/-- `filter[A000028(n+1), A374466(#)]` -/
def P8648656483974773862.Spec : Prop :=
  ∀ n, P8648656483974773862.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P6266255519194193460

`filter[A026422(n+1), A374466(#)]`
-/

namespace A374467.P6266255519194193460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P6266255519194193460

namespace A374467

/-- `filter[A026422(n+1), A374466(#)]` -/
def P6266255519194193460.Spec : Prop :=
  ∀ n, P6266255519194193460.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P2440729709570957002

`filter[A026424(n+1), A374466(#)]`
-/

namespace A374467.P2440729709570957002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P2440729709570957002

namespace A374467

/-- `filter[A026424(n+1), A374466(#)]` -/
def P2440729709570957002.Spec : Prop :=
  ∀ n, P2440729709570957002.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P14216196010492890239

`∩[A000028(n+1), A026422(n+1)]`
-/

namespace A374467.P14216196010492890239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374467.P14216196010492890239

namespace A374467

/-- `∩[A000028(n+1), A026422(n+1)]` -/
def P14216196010492890239.Spec : Prop :=
  ∀ n, (P14216196010492890239.a n : ℤ) = A374467 (n + 1)

end A374467

/-! ## A374467.P9785674110579434763

`∩[A000028(n+1), A026424(n+1)]`
-/

namespace A374467.P9785674110579434763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374467.P9785674110579434763

namespace A374467

/-- `∩[A000028(n+1), A026424(n+1)]` -/
def P9785674110579434763.Spec : Prop :=
  ∀ n, (P9785674110579434763.a n : ℤ) = A374467 (n + 1)

end A374467

/-! ## A374467.P13361842481256908045

`filter[A344609(n+1), A374466(#)]`
-/

namespace A374467.P13361842481256908045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P13361842481256908045

namespace A374467

/-- `filter[A344609(n+1), A374466(#)]` -/
def P13361842481256908045.Spec : Prop :=
  ∀ n, P13361842481256908045.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P9171810930271144501

`filter[A359766(n+1), A374466(#)]`
-/

namespace A374467.P9171810930271144501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P9171810930271144501

namespace A374467

/-- `filter[A359766(n+1), A374466(#)]` -/
def P9171810930271144501.Spec : Prop :=
  ∀ n, P9171810930271144501.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P11735817972131942637

`filter[A100959(n+1), A374466(#)]`
-/

namespace A374467.P11735817972131942637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P11735817972131942637

namespace A374467

/-- `filter[A100959(n+1), A374466(#)]` -/
def P11735817972131942637.Spec : Prop :=
  ∀ n, P11735817972131942637.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P16132450851349712977

`filter[A210994(n+1), A374466(#)]`
-/

namespace A374467.P16132450851349712977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P16132450851349712977

namespace A374467

/-- `filter[A210994(n+1), A374466(#)]` -/
def P16132450851349712977.Spec : Prop :=
  ∀ n, P16132450851349712977.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P9716667017604905660

`filter[A246716(n+1), A374466(#)]`
-/

namespace A374467.P9716667017604905660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374467.P9716667017604905660

namespace A374467

/-- `filter[A246716(n+1), A374466(#)]` -/
def P9716667017604905660.Spec : Prop :=
  ∀ n, P9716667017604905660.a n = A374467 (n + 1)

end A374467

/-! ## A374467.P9205518779018027830

`filter[n+1, A374466(#)]`
-/

namespace A374467.P9205518779018027830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j) = 1) n)

end

end A374467.P9205518779018027830

namespace A374467

/-- `filter[n+1, A374466(#)]` -/
def P9205518779018027830.Spec : Prop :=
  ∀ n, (P9205518779018027830.a n : ℤ) = A374467 (n + 1)

end A374467

/-!
# A374468: Parity of the digit sum of n in factorial base.

The programs for A374468, the canonical program `A374468.P16396236909376006343` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374468 has offset 0).

The definition of A374468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374468.P16396236909376006343

`A034968(n)%2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A374468

/-- `A034968(n)%2` -/
def P16396236909376006343.Spec : Prop :=
  ∀ n, P16396236909376006343.a n = A374468 n

theorem P16396236909376006343.correct : P16396236909376006343.Spec := by
  intro n
  simp only [A374468]

end A374468

/-! ## A374468.P16048875464754211688

`A000035(A034968(n))`
-/

namespace A374468.P16048875464754211688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034968 n).toNat

end

end A374468.P16048875464754211688

namespace A374468

/-- `A000035(A034968(n))` -/
def P16048875464754211688.Spec : Prop :=
  ∀ n, P16048875464754211688.a n = A374468 n

end A374468

/-! ## A374468.P18237746178767640597

`A066829(A276076(n))`
-/

namespace A374468.P18237746178767640597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A276076 n).toNat

end

end A374468.P18237746178767640597

namespace A374468

/-- `A066829(A276076(n))` -/
def P18237746178767640597.Spec : Prop :=
  ∀ n, P18237746178767640597.a n = A374468 n

end A374468

/-! ## A374468.P6709001110006417087

`A055091(n)%2`
-/

namespace A374468.P6709001110006417087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055091 n) 2

end

end A374468.P6709001110006417087

namespace A374468

/-- `A055091(n)%2` -/
def P6709001110006417087.Spec : Prop :=
  ∀ n, P6709001110006417087.a n = A374468 n

end A374468

/-! ## A374468.P2606359836300147427

`Δ[A368342(n)]%2`
-/

namespace A374468.P2606359836300147427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A374468.P2606359836300147427

namespace A374468

/-- `Δ[A368342(n)]%2` -/
def P2606359836300147427.Spec : Prop :=
  ∀ n, P2606359836300147427.a n = A374468 n

end A374468

/-! ## A374468.P10028615596815725225

`and(1, A219651(n)+n)`
-/

namespace A374468.P10028615596815725225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A219651 n + (n : ℤ))

end

end A374468.P10028615596815725225

namespace A374468

/-- `and(1, A219651(n)+n)` -/
def P10028615596815725225.Spec : Prop :=
  ∀ n, P10028615596815725225.a n = A374468 n

end A374468

/-! ## A374468.P7097893899272771305

`(1-A262725(n+1))/2`
-/

namespace A374468.P7097893899272771305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A262725 (n + 1) : ℚ) / 2

end

end A374468.P7097893899272771305

namespace A374468

/-- `(1-A262725(n+1))/2` -/
def P7097893899272771305.Spec : Prop :=
  ∀ n, P7097893899272771305.a n = (A374468 n : ℚ)

end A374468

/-! ## A374468.P16685727148287086471

`and(A007664(n), A034968(n))`
-/

namespace A374468.P16685727148287086471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A034968 n)

end

end A374468.P16685727148287086471

namespace A374468

/-- `and(A007664(n), A034968(n))` -/
def P16685727148287086471.Spec : Prop :=
  ∀ n, P16685727148287086471.a n = A374468 n

end A374468

/-! ## A374468.P4050613500694454518

`and(A016760(n), A034968(n))`
-/

namespace A374468.P4050613500694454518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A034968 n)

end

end A374468.P4050613500694454518

namespace A374468

/-- `and(A016760(n), A034968(n))` -/
def P4050613500694454518.Spec : Prop :=
  ∀ n, P4050613500694454518.a n = A374468 n

end A374468

/-! ## A374468.P3469473407433636977

`and(A016820(n), A034968(n))`
-/

namespace A374468.P3469473407433636977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A034968 n)

end

end A374468.P3469473407433636977

namespace A374468

/-- `and(A016820(n), A034968(n))` -/
def P3469473407433636977.Spec : Prop :=
  ∀ n, P3469473407433636977.a n = A374468 n

end A374468

/-! ## A374468.P17940604096962695593

`and(A016760(n), A055091(n))`
-/

namespace A374468.P17940604096962695593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A055091 n)

end

end A374468.P17940604096962695593

namespace A374468

/-- `and(A016760(n), A055091(n))` -/
def P17940604096962695593.Spec : Prop :=
  ∀ n, P17940604096962695593.a n = A374468 n

end A374468

/-! ## A374468.P15769844887336253696

`and(A016820(n), A055091(n))`
-/

namespace A374468.P15769844887336253696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A055091 n)

end

end A374468.P15769844887336253696

namespace A374468

/-- `and(A016820(n), A055091(n))` -/
def P15769844887336253696.Spec : Prop :=
  ∀ n, P15769844887336253696.a n = A374468 n

end A374468

/-! ## A374468.P12393016662030917980

`and(A017286(n), A055091(n))`
-/

namespace A374468.P12393016662030917980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A055091 n)

end

end A374468.P12393016662030917980

namespace A374468

/-- `and(A017286(n), A055091(n))` -/
def P12393016662030917980.Spec : Prop :=
  ∀ n, P12393016662030917980.a n = A374468 n

end A374468

/-! ## A374468.P7521242529566442398

`and(A017310(n), A055091(n))`
-/

namespace A374468.P7521242529566442398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A055091 n)

end

end A374468.P7521242529566442398

namespace A374468

/-- `and(A017310(n), A055091(n))` -/
def P7521242529566442398.Spec : Prop :=
  ∀ n, P7521242529566442398.a n = A374468 n

end A374468

/-! ## A374468.P931358917761113713

`and(A017334(n), A055091(n))`
-/

namespace A374468.P931358917761113713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A055091 n)

end

end A374468.P931358917761113713

namespace A374468

/-- `and(A017334(n), A055091(n))` -/
def P931358917761113713.Spec : Prop :=
  ∀ n, P931358917761113713.a n = A374468 n

end A374468

/-! ## A374468.P3759537406330885421

`and(A017358(n), A055091(n))`
-/

namespace A374468.P3759537406330885421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A055091 n)

end

end A374468.P3759537406330885421

namespace A374468

/-- `and(A017358(n), A055091(n))` -/
def P3759537406330885421.Spec : Prop :=
  ∀ n, P3759537406330885421.a n = A374468 n

end A374468

/-! ## A374468.P2798335070375027227

`and(A017382(n), A055091(n))`
-/

namespace A374468.P2798335070375027227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A055091 n)

end

end A374468.P2798335070375027227

namespace A374468

/-- `and(A017382(n), A055091(n))` -/
def P2798335070375027227.Spec : Prop :=
  ∀ n, P2798335070375027227.a n = A374468 n

end A374468

/-! ## A374468.P2081346986531792661

`and(A017538(n), A055091(n))`
-/

namespace A374468.P2081346986531792661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017538 n) (A055091 n)

end

end A374468.P2081346986531792661

namespace A374468

/-- `and(A017538(n), A055091(n))` -/
def P2081346986531792661.Spec : Prop :=
  ∀ n, P2081346986531792661.a n = A374468 n

end A374468

/-! ## A374468.P13624409922991191927

`and(A017562(n), A055091(n))`
-/

namespace A374468.P13624409922991191927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017562 n) (A055091 n)

end

end A374468.P13624409922991191927

namespace A374468

/-- `and(A017562(n), A055091(n))` -/
def P13624409922991191927.Spec : Prop :=
  ∀ n, P13624409922991191927.a n = A374468 n

end A374468

/-! ## A374468.P15184105421539543418

`and(A017586(n), A055091(n))`
-/

namespace A374468.P15184105421539543418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017586 n) (A055091 n)

end

end A374468.P15184105421539543418

namespace A374468

/-- `and(A017586(n), A055091(n))` -/
def P15184105421539543418.Spec : Prop :=
  ∀ n, P15184105421539543418.a n = A374468 n

end A374468

/-!
# A374469: The odd part of gcd(n, A163511(n)).

The programs for A374469, the canonical program `A374469.P9574300939196503578` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374469 has offset 0).

The definition of A374469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374469.P9574300939196503578

`A000265(A364255(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A374469

/-- `A000265(A364255(n))` -/
def P9574300939196503578.Spec : Prop :=
  ∀ n, P9574300939196503578.a n = A374469 n

theorem P9574300939196503578.correct : P9574300939196503578.Spec := by
  intro n
  simp only [A374469]

end A374469

/-! ## A374469.P16099535769168460360

`A000265(gcd(n, A163511(n)))`
-/

namespace A374469.P16099535769168460360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (n : ℤ) (A163511 n))

end

end A374469.P16099535769168460360

namespace A374469

/-- `A000265(gcd(n, A163511(n)))` -/
def P16099535769168460360.Spec : Prop :=
  ∀ n, P16099535769168460360.a n = A374469 n

end A374469

/-! ## A374469.P1146172472248179338

`A364255(n/A006519(A364255(n)))`
-/

namespace A374469.P1146172472248179338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 (SequenceMachineLib.roundAway ((n : ℚ) / (A006519 (A364255 n).toNat : ℚ))).toNat

end

end A374469.P1146172472248179338

namespace A374469

/-- `A364255(n/A006519(A364255(n)))` -/
def P1146172472248179338.Spec : Prop :=
  ∀ n, P1146172472248179338.a n = A374469 n

end A374469

/-! ## A374469.P9887987920332464062

`A302034(gcd(A005843(n), A364258(n)))`
-/

namespace A374469.P9887987920332464062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (Int.gcd (A005843 n) (A364258 n))

end

end A374469.P9887987920332464062

namespace A374469

/-- `A302034(gcd(A005843(n), A364258(n)))` -/
def P9887987920332464062.Spec : Prop :=
  ∀ n, P9887987920332464062.a n = A374469 n

end A374469

/-! ## A374469.P2149360869654328244

`A028234(A364255(2*n))`
-/

namespace A374469.P2149360869654328244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A364255 (2 * n)).toNat

end

end A374469.P2149360869654328244

namespace A374469

/-- `A028234(A364255(2*n))` -/
def P2149360869654328244.Spec : Prop :=
  ∀ n, P2149360869654328244.a n = A374469 n

end A374469

/-! ## A374469.P6580463618881792909

`gcd(A217858(n+1), A364255(n))`
-/

namespace A374469.P6580463618881792909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A364255 n)

end

end A374469.P6580463618881792909

namespace A374469

/-- `gcd(A217858(n+1), A364255(n))` -/
def P6580463618881792909.Spec : Prop :=
  ∀ n, (P6580463618881792909.a n : ℤ) = A374469 n

end A374469

/-! ## A374469.P7387634544898210337

`gcd(A224085(n), A364255(n))`
-/

namespace A374469.P7387634544898210337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224085 n) (A364255 n)

end

end A374469.P7387634544898210337

namespace A374469

/-- `gcd(A224085(n), A364255(n))` -/
def P7387634544898210337.Spec : Prop :=
  ∀ n, (P7387634544898210337.a n : ℤ) = A374469 n

end A374469

/-!
# A374470: a(n) = gcd(bigomega(n), A064547(n)), where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

The programs for A374470, the canonical program `A374470.P11987963134600028380` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374470 has offset 1).

The definition of A374470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374470.P11987963134600028380

`gcd(∑{e}[n+1, val(#!, 2)], ∑{e}[n+1, #])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374470

/-- `gcd(∑{e}[n+1, val(#!, 2)], ∑{e}[n+1, #])` -/
def P11987963134600028380.Spec : Prop :=
  ∀ n, (P11987963134600028380.a n : ℤ) = A374470 (n + 1)

theorem P11987963134600028380.correct : P11987963134600028380.Spec := by
  intro n
  simp only [A374470, Nat.add_sub_cancel]

end A374470

/-! ## A374470.P986298386397039278

`gcd(∑{e}[n+1, #], A064547(n+1))`
-/

namespace A374470.P986298386397039278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A064547 (n + 1))

end

end A374470.P986298386397039278

namespace A374470

/-- `gcd(∑{e}[n+1, #], A064547(n+1))` -/
def P986298386397039278.Spec : Prop :=
  ∀ n, (P986298386397039278.a n : ℤ) = A374470 (n + 1)

end A374470

/-! ## A374470.P10880617674485239467

`gcd(A001222(n+1), A046645(n+1))`
-/

namespace A374470.P10880617674485239467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A046645 (n + 1))

end

end A374470.P10880617674485239467

namespace A374470

/-- `gcd(A001222(n+1), A046645(n+1))` -/
def P10880617674485239467.Spec : Prop :=
  ∀ n, (P10880617674485239467.a n : ℤ) = A374470 (n + 1)

end A374470

/-! ## A374470.P13832542268126732782

`gcd(A317946(A004652(2*(n+1))), A317946(n+1))`
-/

namespace A374470.P13832542268126732782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317946 (A004652 (2 * (n + 1))).toNat) (A317946 (n + 1))

end

end A374470.P13832542268126732782

namespace A374470

/-- `gcd(A317946(A004652(2*(n+1))), A317946(n+1))` -/
def P13832542268126732782.Spec : Prop :=
  ∀ n, (P13832542268126732782.a n : ℤ) = A374470 (n + 1)

end A374470

/-! ## A374470.P1727962956102159256

`gcd(A255201(n+1)/2, A064894(A046644(n+1)))`
-/

namespace A374470.P1727962956102159256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A255201 (n + 1) : ℚ) / 2)) (A064894 (A046644 (n + 1)).toNat)

end

end A374470.P1727962956102159256

namespace A374470

/-- `gcd(A255201(n+1)/2, A064894(A046644(n+1)))` -/
def P1727962956102159256.Spec : Prop :=
  ∀ n, (P1727962956102159256.a n : ℤ) = A374470 (n + 1)

end A374470

/-! ## A374470.P3345961240930336458

`A362611(n+1)+A070204(A327482(n+1))`
-/

namespace A374470.P3345961240930336458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1) + A070204 (A327482 (n + 1)).toNat

end

end A374470.P3345961240930336458

namespace A374470

/-- `A362611(n+1)+A070204(A327482(n+1))` -/
def P3345961240930336458.Spec : Prop :=
  ∀ n, P3345961240930336458.a n = A374470 (n + 1)

end A374470

/-! ## A374470.P7185451332635156001

`A285572(A093655(n+1))*A362611(n+1)`
-/

namespace A374470.P7185451332635156001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A093655 (n + 1)).toNat * A362611 (n + 1)

end

end A374470.P7185451332635156001

namespace A374470

/-- `A285572(A093655(n+1))*A362611(n+1)` -/
def P7185451332635156001.Spec : Prop :=
  ∀ n, P7185451332635156001.a n = A374470 (n + 1)

end A374470

/-!
# A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

The programs for A374471, the canonical program `A374471.P2134863705312420223` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374471 has offset 1).

The definition of A374471 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A374471

/-- `A065043(n+1)*A359464(n+1)` -/
def P2134863705312420223.Spec : Prop :=
  ∀ n, P2134863705312420223.a n = A374471 (n + 1)

theorem P2134863705312420223.correct : P2134863705312420223.Spec := by
  intro n
  simp only [A374471, Nat.add_sub_cancel]

end A374471

/-! ## A374471.P9682075592962738352

`A353556(A359464(n+1)+2*n+1)`
-/

namespace A374471.P9682075592962738352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A359464 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A374471.P9682075592962738352

namespace A374471

/-- `A353556(A359464(n+1)+2*n+1)` -/
def P9682075592962738352.Spec : Prop :=
  ∀ n, P9682075592962738352.a n = A374471 (n + 1)

end A374471

/-! ## A374471.P10917930972745577727

`A066829(2*(n+1))*A359464(n+1)`
-/

namespace A374471.P10917930972745577727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1)) * A359464 (n + 1)

end

end A374471.P10917930972745577727

namespace A374471

/-- `A066829(2*(n+1))*A359464(n+1)` -/
def P10917930972745577727.Spec : Prop :=
  ∀ n, P10917930972745577727.a n = A374471 (n + 1)

end A374471

/-! ## A374471.P6763382525510063256

`A059841(A374470(n+1)+2*n)`
-/

namespace A374471.P6763382525510063256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374470 (n + 1) + (2 * n : ℤ)).toNat

end

end A374471.P6763382525510063256

namespace A374471

/-- `A059841(A374470(n+1)+2*n)` -/
def P6763382525510063256.Spec : Prop :=
  ∀ n, P6763382525510063256.a n = A374471 (n + 1)

end A374471

/-! ## A374471.P9331333582524816494

`A302030(n+1)%A007421(n+1)`
-/

namespace A374471.P9331333582524816494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302030 (n + 1)) (A007421 (n + 1))

end

end A374471.P9331333582524816494

namespace A374471

/-- `A302030(n+1)%A007421(n+1)` -/
def P9331333582524816494.Spec : Prop :=
  ∀ n, P9331333582524816494.a n = A374471 (n + 1)

end A374471

/-! ## A374471.P968617318452885235

`A374466(2*A003961(n+1))`
-/

namespace A374471.P968617318452885235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (2 * A003961 (n + 1)).toNat

end

end A374471.P968617318452885235

namespace A374471

/-- `A374466(2*A003961(n+1))` -/
def P968617318452885235.Spec : Prop :=
  ∀ n, P968617318452885235.a n = A374471 (n + 1)

end A374471

/-! ## A374471.P15043611667986090684

`A344417(n+1)%A007421(n+1)`
-/

namespace A374471.P15043611667986090684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344417 (n + 1)) (A007421 (n + 1))

end

end A374471.P15043611667986090684

namespace A374471

/-- `A344417(n+1)%A007421(n+1)` -/
def P15043611667986090684.Spec : Prop :=
  ∀ n, P15043611667986090684.a n = A374471 (n + 1)

end A374471

/-!
# A374472: Numbers k such that bigomega(k) and A064547(k) are both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

The programs for A374472, the canonical program `A374472.P9715634022253251052` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374472 has offset 1).

The definition of A374472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374472.P9715634022253251052

`eq[1, A374471(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A374472

/-- `eq[1, A374471(n+1)]+1` -/
def P9715634022253251052.Spec : Prop :=
  ∀ n, (P9715634022253251052.a n : ℤ) = A374472 (n + 1)

theorem P9715634022253251052.correct : P9715634022253251052.Spec := by
  intro n
  simp only [A374472, Nat.add_sub_cancel]

end A374472

/-! ## A374472.P10743678668844965885

`lt[A344617(n+1), A064179(n+1)]+1`
-/

namespace A374472.P10743678668844965885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A374472.P10743678668844965885

namespace A374472

/-- `lt[A344617(n+1), A064179(n+1)]+1` -/
def P10743678668844965885.Spec : Prop :=
  ∀ n, (P10743678668844965885.a n : ℤ) = A374472 (n + 1)

end A374472

/-! ## A374472.P4084290064806062156

`lt[A374471(2*(n+1)), A374471(n+1)]+1`
-/

namespace A374472.P4084290064806062156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A374472.P4084290064806062156

namespace A374472

/-- `lt[A374471(2*(n+1)), A374471(n+1)]+1` -/
def P4084290064806062156.Spec : Prop :=
  ∀ n, (P4084290064806062156.a n : ℤ) = A374472 (n + 1)

end A374472

/-! ## A374472.P163445329369174412

`filter[A028260(n+1), A359464(#)]`
-/

namespace A374472.P163445329369174412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A374472.P163445329369174412

namespace A374472

/-- `filter[A028260(n+1), A359464(#)]` -/
def P163445329369174412.Spec : Prop :=
  ∀ n, P163445329369174412.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P18156557794644487296

`filter[A028260(n+1), A374471(#)]`
-/

namespace A374472.P18156557794644487296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P18156557794644487296

namespace A374472

/-- `filter[A028260(n+1), A374471(#)]` -/
def P18156557794644487296.Spec : Prop :=
  ∀ n, P18156557794644487296.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P12911174006414521177

`filter[A000379(n+1), A065043(#)]`
-/

namespace A374472.P12911174006414521177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A374472.P12911174006414521177

namespace A374472

/-- `filter[A000379(n+1), A065043(#)]` -/
def P12911174006414521177.Spec : Prop :=
  ∀ n, P12911174006414521177.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P9418607807183463951

`filter[A000379(n+1), A374471(#)]`
-/

namespace A374472.P9418607807183463951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P9418607807183463951

namespace A374472

/-- `filter[A000379(n+1), A374471(#)]` -/
def P9418607807183463951.Spec : Prop :=
  ∀ n, P9418607807183463951.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P17827361625759057927

`∩[A000379(n+1), A028260(n+1)]`
-/

namespace A374472.P17827361625759057927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374472.P17827361625759057927

namespace A374472

/-- `∩[A000379(n+1), A028260(n+1)]` -/
def P17827361625759057927.Spec : Prop :=
  ∀ n, (P17827361625759057927.a n : ℤ) = A374472 (n + 1)

end A374472

/-! ## A374472.P17115161497214125091

`filter[A347450(n+1), A374471(#)]`
-/

namespace A374472.P17115161497214125091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P17115161497214125091

namespace A374472

/-- `filter[A347450(n+1), A374471(#)]` -/
def P17115161497214125091.Spec : Prop :=
  ∀ n, P17115161497214125091.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P17343629333018948134

`filter[A174891(n+1), A374471(#)]`
-/

namespace A374472.P17343629333018948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P17343629333018948134

namespace A374472

/-- `filter[A174891(n+1), A374471(#)]` -/
def P17343629333018948134.Spec : Prop :=
  ∀ n, P17343629333018948134.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P4384073961725095438

`filter[A239289(n+1), A374471(#)]`
-/

namespace A374472.P4384073961725095438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P4384073961725095438

namespace A374472

/-- `filter[A239289(n+1), A374471(#)]` -/
def P4384073961725095438.Spec : Prop :=
  ∀ n, P4384073961725095438.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P916055809471715924

`filter[A233182(n+1), A374471(#)]`
-/

namespace A374472.P916055809471715924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P916055809471715924

namespace A374472

/-- `filter[A233182(n+1), A374471(#)]` -/
def P916055809471715924.Spec : Prop :=
  ∀ n, P916055809471715924.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P6499380605290814325

`filter[A018252(n+1), A374471(#)]`
-/

namespace A374472.P6499380605290814325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P6499380605290814325

namespace A374472

/-- `filter[A018252(n+1), A374471(#)]` -/
def P6499380605290814325.Spec : Prop :=
  ∀ n, P6499380605290814325.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P4118279982596651308

`filter[A056653(n+1), A374471(#)]`
-/

namespace A374472.P4118279982596651308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P4118279982596651308

namespace A374472

/-- `filter[A056653(n+1), A374471(#)]` -/
def P4118279982596651308.Spec : Prop :=
  ∀ n, P4118279982596651308.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P9813601061818152435

`filter[A065090(n+1), A374471(#)]`
-/

namespace A374472.P9813601061818152435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P9813601061818152435

namespace A374472

/-- `filter[A065090(n+1), A374471(#)]` -/
def P9813601061818152435.Spec : Prop :=
  ∀ n, P9813601061818152435.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P3236061800365300061

`filter[A171581(n+1), A374471(#)]`
-/

namespace A374472.P3236061800365300061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P3236061800365300061

namespace A374472

/-- `filter[A171581(n+1), A374471(#)]` -/
def P3236061800365300061.Spec : Prop :=
  ∀ n, P3236061800365300061.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P11258438837724040684

`filter[A141468(n+2), A374471(#)]`
-/

namespace A374472.P11258438837724040684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P11258438837724040684

namespace A374472

/-- `filter[A141468(n+2), A374471(#)]` -/
def P11258438837724040684.Spec : Prop :=
  ∀ n, P11258438837724040684.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P16172041677907305654

`filter[A222307(2*n+1), A374471(#)]`
-/

namespace A374472.P16172041677907305654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P16172041677907305654

namespace A374472

/-- `filter[A222307(2*n+1), A374471(#)]` -/
def P16172041677907305654.Spec : Prop :=
  ∀ n, P16172041677907305654.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P2355802199847319897

`filter[A173905(n+2), A374471(#)]`
-/

namespace A374472.P2355802199847319897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P2355802199847319897

namespace A374472

/-- `filter[A173905(n+2), A374471(#)]` -/
def P2355802199847319897.Spec : Prop :=
  ∀ n, P2355802199847319897.a n = A374472 (n + 1)

end A374472

/-! ## A374472.P13503378169319673151

`filter[A338924(n+1), A374471(#)]`
-/

namespace A374472.P13503378169319673151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374472.P13503378169319673151

namespace A374472

/-- `filter[A338924(n+1), A374471(#)]` -/
def P13503378169319673151.Spec : Prop :=
  ∀ n, P13503378169319673151.a n = A374472 (n + 1)

end A374472

/-!
# A374473: Numbers k such that bigomega(k) and A064547(k) are not both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

The programs for A374473, the canonical program `A374473.P16675953149575422784` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374473 has offset 1).

The definition of A374473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374473.P7319240640072786414

`∪[A000028(n+1), A026424(n+1)]`
-/

namespace A374473.P7319240640072786414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P7319240640072786414

namespace A374473

/-- `∪[A000028(n+1), A026424(n+1)]` -/
def P7319240640072786414.Spec : Prop :=
  ∀ n, (P7319240640072786414.a n : ℤ) = A374473 (n + 1)

end A374473

/-! ## A374473.P9098400479860945411

`∪[A000028(n+1), A046339(n+1)]`
-/

namespace A374473.P9098400479860945411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P9098400479860945411

namespace A374473

/-- `∪[A000028(n+1), A046339(n+1)]` -/
def P9098400479860945411.Spec : Prop :=
  ∀ n, (P9098400479860945411.a n : ℤ) = A374473 (n + 1)

end A374473

/-! ## A374473.P16675953149575422784

`∪[A026424(n+1), A066427(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A374473

/-- `∪[A026424(n+1), A066427(n+1)]` -/
def P16675953149575422784.Spec : Prop :=
  ∀ n, (P16675953149575422784.a n : ℤ) = A374473 (n + 1)

theorem P16675953149575422784.correct : P16675953149575422784.Spec := by
  intro n
  simp only [A374473, Nat.add_sub_cancel]

end A374473

/-! ## A374473.P18033266655753007674

`∪[A000028(n+1), A378494(n+1)]`
-/

namespace A374473.P18033266655753007674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P18033266655753007674

namespace A374473

/-- `∪[A000028(n+1), A378494(n+1)]` -/
def P18033266655753007674.Spec : Prop :=
  ∀ n, (P18033266655753007674.a n : ℤ) = A374473 (n + 1)

end A374473

/-! ## A374473.P4409806991966041036

`∪[A026424(n+1), A378489(n+1)]`
-/

namespace A374473.P4409806991966041036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P4409806991966041036

namespace A374473

/-- `∪[A026424(n+1), A378489(n+1)]` -/
def P4409806991966041036.Spec : Prop :=
  ∀ n, (P4409806991966041036.a n : ℤ) = A374473 (n + 1)

end A374473

/-!
# A374474: a(n) = 1 if the least prime dividing the sum of divisors of n is equal to the least prime not dividing n, otherwise a(n) = 0.

The programs for A374474, there is no canonical definition to state claims against.
-/

/-! ## A374474.P7344452426313407477

`char[A374475(n+1)-1]`
-/

namespace A374474.P7344452426313407477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374474.P7344452426313407477

/-! ## A374474.P17400038479212264576

`val(A071189(n+1), A053669(n+1))`
-/

namespace A374474.P17400038479212264576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071189 (n + 1)).toNat (A053669 (n + 1)).toNat

end

end A374474.P17400038479212264576

/-! ## A374474.P18246503857801488615

`val(A020639(∑{d}[n+1, #]), A053669(n+1))`
-/

namespace A374474.P18246503857801488615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (∑ d ∈ Nat.divisors (f1 n), d)).toNat (A053669 (n + 1)).toNat

end

end A374474.P18246503857801488615

/-! ## A374474.P11838052535647834688

`val(A020639(A000203(n+1)), A053669(n+1))`
-/

namespace A374474.P11838052535647834688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A000203 (n + 1)).toNat).toNat (A053669 (n + 1)).toNat

end

end A374474.P11838052535647834688

/-! ## A374474.P2070855113023917593

`val(A071189(n+1), A112046(A285306(n+1)))`
-/

namespace A374474.P2070855113023917593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071189 (n + 1)).toNat (A112046 (A285306 (n + 1)).toNat).toNat

end

end A374474.P2070855113023917593

/-! ## A374474.P8358730782913904385

`and(A053867(n+1), A204638(n+1))`
-/

namespace A374474.P8358730782913904385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053867 (n + 1)) (A204638 (n + 1))

end

end A374474.P8358730782913904385

/-! ## A374474.P14991039629012595816

`and(A053867(n+1), A204640(n+1))`
-/

namespace A374474.P14991039629012595816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053867 (n + 1)) (A204640 (n + 1))

end

end A374474.P14991039629012595816

/-! ## A374474.P14659486104497882912

`and(A007677(n), A053867(n+1))`
-/

namespace A374474.P14659486104497882912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007677 n) (A053867 (n + 1))

end

end A374474.P14659486104497882912

/-! ## A374474.P12687254246925529283

`and(A347861(n)²², A053867(n+1))`
-/

namespace A374474.P12687254246925529283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A347861 n ^ 2) ^ 2) (A053867 (n + 1))

end

end A374474.P12687254246925529283

/-! ## A374474.P3885218674955750284

`val(A020639(∑{d}[n+1, #]²), A020639(n+2))`
-/

namespace A374474.P3885218674955750284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2)).toNat (A020639 (n + 2)).toNat

end

end A374474.P3885218674955750284

/-!
# A374475: Numbers k such that the least prime dividing the sum of divisors of k is equal to the least prime not dividing k.

The programs for A374475, there is no canonical definition to state claims against.
-/

/-! ## A374475.P2520190614724663265

`eq[1, A374474(n+1)]+1`
-/

namespace A374475.P2520190614724663265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374475.P2520190614724663265

/-! ## A374475.P6561595165648516863

`∪[A000040(n+1), A374476(n+1)]`
-/

namespace A374475.P6561595165648516863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374475.P6561595165648516863

/-! ## A374475.P11456502210857080402

`filter[A053868(n+1), A374474(#)]`
-/

namespace A374475.P11456502210857080402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P11456502210857080402

/-! ## A374475.P3979213187506616089

`filter[A263715(n+2), A374474(#)]`
-/

namespace A374475.P3979213187506616089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P3979213187506616089

/-! ## A374475.P9151213967651323385

`filter[A079298(n+2), A374474(#)]`
-/

namespace A374475.P9151213967651323385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P9151213967651323385

/-! ## A374475.P16149923051257660848

`filter[A047595(n+2), A374474(#)]`
-/

namespace A374475.P16149923051257660848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P16149923051257660848

/-! ## A374475.P5117180063187868750

`filter[A129487(n+1), A374474(#)]`
-/

namespace A374475.P5117180063187868750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P5117180063187868750

/-! ## A374475.P15554227508948819968

`filter[A230308(n+1), A374474(#)]`
-/

namespace A374475.P15554227508948819968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P15554227508948819968

/-! ## A374475.P3355803151819778360

`filter[A183570(n), A374474(#)]`
-/

namespace A374475.P3355803151819778360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P3355803151819778360

/-! ## A374475.P12284576070246148871

`filter[A213367(n+1), A374474(#)]`
-/

namespace A374475.P12284576070246148871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P12284576070246148871

/-! ## A374475.P12917598207387678666

`filter[A054027(n+1), A374474(#)]`
-/

namespace A374475.P12917598207387678666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P12917598207387678666

/-! ## A374475.P7762299691122970959

`filter[A057717(n+1), A374474(#)]`
-/

namespace A374475.P7762299691122970959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P7762299691122970959

/-! ## A374475.P13039933942110697143

`filter[A132999(n+1), A374474(#)]`
-/

namespace A374475.P13039933942110697143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P13039933942110697143

/-! ## A374475.P5359789727351723242

`filter[A191598(n+1), A374474(#)]`
-/

namespace A374475.P5359789727351723242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P5359789727351723242

/-! ## A374475.P8008350945760044233

`filter[A139179(n+2), A374474(#)]`
-/

namespace A374475.P8008350945760044233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P8008350945760044233

/-! ## A374475.P6037307904112857950

`filter[A064524(n+2), A374474(#)]`
-/

namespace A374475.P6037307904112857950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P6037307904112857950

/-! ## A374475.P664707996951289842

`filter[A283312(n+1), A374474(#)]`
-/

namespace A374475.P664707996951289842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P664707996951289842

/-! ## A374475.P14817227750662128916

`filter[A282028(n+1), A374474(#)]`
-/

namespace A374475.P14817227750662128916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P14817227750662128916

/-! ## A374475.P6230878184366123800

`filter[A344180(n+1), A374474(#)]`
-/

namespace A374475.P6230878184366123800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374475.P6230878184366123800

/-!
# A374476: Composite numbers k such that the least prime dividing the sum of divisors of k is equal to the least prime not dividing k.

The programs for A374476, there is no canonical definition to state claims against.
-/

/-! ## A374476.P8919225339857154228

`∩[A264828(n+1), A374475(n+1)]`
-/

namespace A374476.P8919225339857154228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P8919225339857154228

/-! ## A374476.P3525680961927908137

`∩[A002808(n+1), A374475(n+1)]`
-/

namespace A374476.P3525680961927908137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P3525680961927908137

/-! ## A374476.P3143584603394773835

`∩[A018252(n+1), A374475(n+1)]`
-/

namespace A374476.P3143584603394773835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P3143584603394773835

/-! ## A374476.P9522698192087041589

`∩[A141468(n+1), A374475(n+1)]`
-/

namespace A374476.P9522698192087041589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P9522698192087041589

/-! ## A374476.P1730444097346932691

`filter[A374475(n+1), A005171(#)]`
-/

namespace A374476.P1730444097346932691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A374476.P1730444097346932691

/-! ## A374476.P17429861406634296495

`filter[A374475(n+1), A066247(#)]`
-/

namespace A374476.P17429861406634296495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A374476.P17429861406634296495

/-! ## A374476.P9141728738160488898

`filter[A374475(n+1), A292438(#)]`
-/

namespace A374476.P9141728738160488898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A374476.P9141728738160488898

/-! ## A374476.P3046989055962673608

`filter[A347202(n+3), A374474(#)]`
-/

namespace A374476.P3046989055962673608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P3046989055962673608

/-! ## A374476.P13732577399952410130

`filter[A264828(n+1), A374474(#)]`
-/

namespace A374476.P13732577399952410130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P13732577399952410130

/-! ## A374476.P15401945994393424521

`filter[A164276(n+2), A374474(#)]`
-/

namespace A374476.P15401945994393424521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P15401945994393424521

/-! ## A374476.P7587115882591263054

`∩[A164276(n+1), A374475(n+1)]`
-/

namespace A374476.P7587115882591263054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P7587115882591263054

/-! ## A374476.P7780803999741495516

`filter[A139118(n+1), A374474(#)]`
-/

namespace A374476.P7780803999741495516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P7780803999741495516

/-! ## A374476.P5297543087432451099

`filter[A268388(n+1), A374474(#)]`
-/

namespace A374476.P5297543087432451099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P5297543087432451099

/-! ## A374476.P5236463417391257865

`∩[A139118(n+1), A374475(n+1)]`
-/

namespace A374476.P5236463417391257865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P5236463417391257865

/-! ## A374476.P15480394801637082639

`∩[A268388(n+1), A374475(n+1)]`
-/

namespace A374476.P15480394801637082639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P15480394801637082639

/-! ## A374476.P11991830052187828538

`filter[A080257(n+1), A374474(#)]`
-/

namespace A374476.P11991830052187828538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P11991830052187828538

/-! ## A374476.P9170450288570754136

`filter[A220571(n+1), A374474(#)]`
-/

namespace A374476.P9170450288570754136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P9170450288570754136

/-! ## A374476.P10585104340316048109

`∩[A080257(n+1), A374475(n+1)]`
-/

namespace A374476.P10585104340316048109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P10585104340316048109

/-! ## A374476.P17406037149435010304

`∩[A220571(n+1), A374475(n+1)]`
-/

namespace A374476.P17406037149435010304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374476.P17406037149435010304

/-! ## A374476.P10403776080420364200

`filter[A002808(n+1), A374474(#)]`
-/

namespace A374476.P10403776080420364200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P10403776080420364200

/-!
# A374477: Lexicographically earliest infinite sequence such that a(i) = a(j) => A348717(i) = A348717(j) and A374469(i) = A374469(j), for all i, j >= 1.

The programs for A374477, there is no canonical definition to state claims against.
-/

/-! ## A374477.P12815687368970458141

`A198632(eq[A108086(n), A193739(n)])`
-/

namespace A374477.P12815687368970458141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A374477.P12815687368970458141

/-! ## A374477.P10308136669295412849

`A293215(n+1)+A285249(A011782(n))`
-/

namespace A374477.P10308136669295412849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293215 (n + 1) + A285249 (A011782 n).toNat

end

end A374477.P10308136669295412849

/-! ## A374477.P17773944943296555213

`A323371(n+1)-A285464(A100901(n+1))`
-/

namespace A374477.P17773944943296555213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323371 (n + 1) - A285464 (A100901 (n + 1)).toNat

end

end A374477.P17773944943296555213

/-! ## A374477.P3757298997642649700

`A322314(n+1)-A000035(A205454(n+1))`
-/

namespace A374477.P3757298997642649700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322314 (n + 1) - A000035 (A205454 (n + 1)).toNat

end

end A374477.P3757298997642649700

/-!
# A374480: Lexicographically earliest infinite sequence such that a(i) = a(j) => A083345(i) = A083345(j) and A343223(i) = A343223(j), for all i, j >= 1.

The programs for A374480, there is no canonical definition to state claims against.
-/

/-! ## A374480.P14889330031524447278

`A396071(A373150(n+1))%A342222(n+3)`
-/

namespace A374480.P14889330031524447278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396071 (A373150 (n + 1)).toNat) (A342222 (n + 3))

end

end A374480.P14889330031524447278

/-! ## A374480.P18348594245226671224

`A305800(n+1)-A328167(A181821(n+1))`
-/

namespace A374480.P18348594245226671224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) - A328167 (A181821 (n + 1)).toNat

end

end A374480.P18348594245226671224

/-! ## A374480.P6342645660678731214

`A326201(n+1)-A121262(A020714(n))`
-/

namespace A374480.P6342645660678731214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1) - A121262 (A020714 n).toNat

end

end A374480.P6342645660678731214

/-! ## A374480.P2695038272840888570

`A326201(n+1)-A354914(A011782(n))`
-/

namespace A374480.P2695038272840888570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1) - A354914 (A011782 n).toNat

end

end A374480.P2695038272840888570

/-!
# A374481: The distance from prime(n) to the nearest common ancestor of prime(n) and 1+prime(n) in the Doudna-tree (A005940).

The programs for A374481, there is no canonical definition to state claims against.
-/

/-! ## A374481.P14943996581206983686

`A347381(A000040(n+1))`
-/

namespace A374481.P14943996581206983686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A000040 (n + 1)).toNat

end

end A374481.P14943996581206983686

/-! ## A374481.P13622800833181611224

`A347381(Δ[A007504(n)])`
-/

namespace A374481.P13622800833181611224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (f1 (n + 1) - f1 n).toNat

end

end A374481.P13622800833181611224

/-! ## A374481.P2351911873276856209

`A347381(A006005(n+1))`
-/

namespace A374481.P2351911873276856209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A006005 (n + 1)).toNat

end

end A374481.P2351911873276856209

/-! ## A374481.P3371238116988330231

`A347381(A008578(n+2))`
-/

namespace A374481.P3371238116988330231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A008578 (n + 2)).toNat

end

end A374481.P3371238116988330231

/-! ## A374481.P7717545986866495184

`A347381(A075643(n+2))`
-/

namespace A374481.P7717545986866495184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A075643 (n + 2)).toNat

end

end A374481.P7717545986866495184

/-! ## A374481.P17775528999660660299

`A347381(A182986(n+2))`
-/

namespace A374481.P17775528999660660299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A182986 (n + 2)).toNat

end

end A374481.P17775528999660660299

/-! ## A374481.P2249177902863403685

`A347381(A040976(n+1)+2)`
-/

namespace A374481.P2249177902863403685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A040976 (n + 1) + 2).toNat

end

end A374481.P2249177902863403685

/-! ## A374481.P5886651674197169422

`A374204(record[A117366(n+1)])`
-/

namespace A374481.P5886651674197169422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374481.P5886651674197169422

/-! ## A374481.P16164857137144185449

`A347381(record[A039649(n+1)])`
-/

namespace A374481.P16164857137144185449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374481.P16164857137144185449

/-! ## A374481.P16237501249648263658

`A374204(A383578(n+1))`
-/

namespace A374481.P16237501249648263658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A383578 (n + 1)).toNat

end

end A374481.P16237501249648263658

/-!
# A374483: Record values in A347381, where A347381 is the distance from n to the nearest common ancestor of n and sigma(n) in the Doudna-tree (A005940).

The programs for A374483, there is no canonical definition to state claims against.
-/

/-! ## A374483.P9492966009767257285

`A347381(A374482(n+1))`
-/

namespace A374483.P9492966009767257285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A374482 (n + 1)).toNat

end

end A374483.P9492966009767257285

/-! ## A374483.P3232777813017702865

`record[A374481(n+1)]`
-/

namespace A374483.P3232777813017702865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P3232777813017702865

/-! ## A374483.P9413037114588850991

`record[A374200(n+1)]`
-/

namespace A374483.P9413037114588850991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P9413037114588850991

/-! ## A374483.P9713868991868887110

`record[A374204(n+1)]`
-/

namespace A374483.P9713868991868887110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P9713868991868887110

/-! ## A374483.P17394783218105688154

`record[A374215(n+1)]`
-/

namespace A374483.P17394783218105688154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P17394783218105688154

/-! ## A374483.P13806015934951706116

`A374215(A374482(2*n+1-n))`
-/

namespace A374483.P13806015934951706116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374215 (A374482 (2 * n + 1 - n)).toNat

end

end A374483.P13806015934951706116

/-! ## A374483.P8817586592603631723

`record[A347381(n+1)]`
-/

namespace A374483.P8817586592603631723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P8817586592603631723

/-! ## A374483.P10245175511247041604

`record[A241917(2*(n+1))-A241917(n+2)]`
-/

namespace A374483.P10245175511247041604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (2 * (n + 1)) - A241917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374483.P10245175511247041604

/-!
# A374484: Index of A006899(n) in A003586.

The programs for A374484, the canonical program `A374484.P17262620912142997286` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374484 has offset 1).

The definition of A374484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374484.P17262620912142997286

`∪[A022330(n), A022331(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374484

/-- `∪[A022330(n), A022331(n)]` -/
def P17262620912142997286.Spec : Prop :=
  ∀ n, (P17262620912142997286.a n : ℤ) = A374484 (n + 1)

theorem P17262620912142997286.correct : P17262620912142997286.Spec := by
  intro n
  simp only [A374484, Nat.add_sub_cancel]

end A374484

/-! ## A374484.P7338122246242336255

`lt[A086412(n+1), 2]+1`
-/

namespace A374484.P7338122246242336255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086412 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A374484.P7338122246242336255

namespace A374484

/-- `lt[A086412(n+1), 2]+1` -/
def P7338122246242336255.Spec : Prop :=
  ∀ n, (P7338122246242336255.a n : ℤ) = A374484 (n + 1)

end A374484

/-! ## A374484.P624367877457510675

`eq[A069352(n+1), A086414(n+1)]+1`
-/

namespace A374484.P624367877457510675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374484.P624367877457510675

namespace A374484

/-- `eq[A069352(n+1), A086414(n+1)]+1` -/
def P624367877457510675.Spec : Prop :=
  ∀ n, (P624367877457510675.a n : ℤ) = A374484 (n + 1)

end A374484

/-! ## A374484.P3640022526829303692

`eq[A069352(n+1), A086415(n+1)]+1`
-/

namespace A374484.P3640022526829303692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374484.P3640022526829303692

namespace A374484

/-- `eq[A069352(n+1), A086415(n+1)]+1` -/
def P3640022526829303692.Spec : Prop :=
  ∀ n, (P3640022526829303692.a n : ℤ) = A374484 (n + 1)

end A374484

/-! ## A374484.P3376069774110321110

`eq[A086410(n+1), A086411(n+1)]+1`
-/

namespace A374484.P3376069774110321110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374484.P3376069774110321110

namespace A374484

/-- `eq[A086410(n+1), A086411(n+1)]+1` -/
def P3376069774110321110.Spec : Prop :=
  ∀ n, (P3376069774110321110.a n : ℤ) = A374484 (n + 1)

end A374484

/-!
# A374486: Numbers k such that Taxicab(2,j,k) exists for large j.

The programs for A374486, there is no canonical definition to state claims against.
-/

/-! ## A374486.P16196788258444178620

`lt[1/(n+1), char[A111178(n)]]`
-/

namespace A374486.P16196788258444178620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111178 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A374486.P16196788258444178620

/-! ## A374486.P5406974910786184774

`eq[char[A111178(n)], A057427(n)]`
-/

namespace A374486.P5406974910786184774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111178 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A374486.P5406974910786184774

/-! ## A374486.P12830726430353699537

`lt[gcd(n+1, (n+13)^9), A115019(A022559(n+3))]`
-/

namespace A374486.P12830726430353699537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((n + 13) ^ 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115019 (A022559 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374486.P12830726430353699537

/-!
# A374487: Expansion of 1/(1 - 2*x - 7*x^2)^(3/2).

The programs for A374487, the canonical program `A374487.P13846524025471116458` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374487 has offset 0).

The definition of A374487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374487.P4506251338352844932

`C(n+2, 2)*A025235(n)`
-/

namespace A374487.P4506251338352844932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A025235 n

end

end A374487.P4506251338352844932

namespace A374487

/-- `C(n+2, 2)*A025235(n)` -/
def P4506251338352844932.Spec : Prop :=
  ∀ n, P4506251338352844932.a n = A374487 n

end A374487

/-! ## A374487.P13846524025471116458

`((2*n+1)*a(n-1)+7*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374487

/-- `((2*n+1)*a(n-1)+7*(n+1)*a(n-2))/n` -/
def P13846524025471116458.Spec : Prop :=
  ∀ n, P13846524025471116458.a n = (A374487 n : ℚ)

end A374487

/-! ## A374487.P11098689281800848663

`∑[n+1]*A025235(n)`
-/

namespace A374487.P11098689281800848663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025235 n

end

end A374487.P11098689281800848663

namespace A374487

/-- `∑[n+1]*A025235(n)` -/
def P11098689281800848663.Spec : Prop :=
  ∀ n, P11098689281800848663.a n = A374487 n

end A374487

/-! ## A374487.P1173871978096037278

`∑[(n+1)*A084601(n)]`
-/

namespace A374487.P1173871978096037278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374487.P1173871978096037278

namespace A374487

/-- `∑[(n+1)*A084601(n)]` -/
def P1173871978096037278.Spec : Prop :=
  ∀ n, P1173871978096037278.a n = A374487 n

end A374487

/-! ## A374487.P13296624824847589266

`A025235(n)/A025237(n)*A374488(n)`
-/

namespace A374487.P13296624824847589266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / (A025237 n : ℚ) * (A374488 n : ℚ)

end

end A374487.P13296624824847589266

namespace A374487

/-- `A025235(n)/A025237(n)*A374488(n)` -/
def P13296624824847589266.Spec : Prop :=
  ∀ n, P13296624824847589266.a n = (A374487 n : ℚ)

end A374487

/-! ## A374487.P17472777436153118711

`A025235(n)/A071356(n)*A374497(n)`
-/

namespace A374487.P17472777436153118711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / (A071356 n : ℚ) * (A374497 n : ℚ)

end

end A374487.P17472777436153118711

namespace A374487

/-- `A025235(n)/A071356(n)*A374497(n)` -/
def P17472777436153118711.Spec : Prop :=
  ∀ n, P17472777436153118711.a n = (A374487 n : ℚ)

end A374487

/-!
# A374488: Expansion of 1/(1 - 2*x - 11*x^2)^(3/2).

The programs for A374488, the canonical program `A374488.P5806980794224730` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374488 has offset 0).

The definition of A374488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374488.P8587737700623541754

`C(n+2, 2)*A025237(n)`
-/

namespace A374488.P8587737700623541754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A025237 n

end

end A374488.P8587737700623541754

namespace A374488

/-- `C(n+2, 2)*A025237(n)` -/
def P8587737700623541754.Spec : Prop :=
  ∀ n, P8587737700623541754.a n = A374488 n

end A374488

/-! ## A374488.P5806980794224730

`((2*n+1)*a(n-1)+11*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374488

/-- `((2*n+1)*a(n-1)+11*(n+1)*a(n-2))/n` -/
def P5806980794224730.Spec : Prop :=
  ∀ n, P5806980794224730.a n = (A374488 n : ℚ)

end A374488

/-! ## A374488.P6458220141503920371

`∑[n+1]*A025237(n)`
-/

namespace A374488.P6458220141503920371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025237 n

end

end A374488.P6458220141503920371

namespace A374488

/-- `∑[n+1]*A025237(n)` -/
def P6458220141503920371.Spec : Prop :=
  ∀ n, P6458220141503920371.a n = A374488 n

end A374488

/-! ## A374488.P14330373551379068920

`∑[(n+1)*A084603(n)]`
-/

namespace A374488.P14330373551379068920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374488.P14330373551379068920

namespace A374488

/-- `∑[(n+1)*A084603(n)]` -/
def P14330373551379068920.Spec : Prop :=
  ∀ n, P14330373551379068920.a n = A374488 n

end A374488

/-! ## A374488.P14224788766792639507

`A025237(n)/A025235(n)*A374487(n)`
-/

namespace A374488.P14224788766792639507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025237 n : ℚ) / (A025235 n : ℚ) * (A374487 n : ℚ)

end

end A374488.P14224788766792639507

namespace A374488

/-- `A025237(n)/A025235(n)*A374487(n)` -/
def P14224788766792639507.Spec : Prop :=
  ∀ n, P14224788766792639507.a n = (A374488 n : ℚ)

end A374488

/-!
# A374489: a(n) = floor(Sum_{k=n^4..(n+1)^4} k^(1/4)).

The programs for A374489, the canonical program `A374489.P13292996333695838344` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374489 has offset 0).

The definition of A374489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374489.P13292996333695838344

`4*n^4+8*n^3+8*n²+5*n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374489

/-- `4*n^4+8*n^3+8*n²+5*n+1` -/
def P13292996333695838344.Spec : Prop :=
  ∀ n, (P13292996333695838344.a n : ℤ) = A374489 n

theorem P13292996333695838344.correct : P13292996333695838344.Spec := by
  intro n
  simp only [A374489]

end A374489

/-! ## A374489.P11103066074409867800

`floor(∑[a(n-1)+4]²+n)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A374489.P11103066074409867800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n

end

end A374489.P11103066074409867800

namespace A374489

/-- `floor(∑[a(n-1)+4]²+n)` -/
def P11103066074409867800.Spec : Prop :=
  ∀ n, (P11103066074409867800.a n : ℤ) = A374489 n

end A374489

/-! ## A374489.P9216285460886289787

`∑[or(1, A007900(n))]`
-/

namespace A374489.P9216285460886289787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374489.P9216285460886289787

namespace A374489

/-- `∑[or(1, A007900(n))]` -/
def P9216285460886289787.Spec : Prop :=
  ∀ n, P9216285460886289787.a n = A374489 n

end A374489

/-! ## A374489.P263486958989284105

`round(sqrt((A007204(n)+n)²+1))`
-/

namespace A374489.P263486958989284105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A007204 n + (n : ℤ)) ^ 2 + 1 : ℝ))

end

end A374489.P263486958989284105

namespace A374489

/-- `round(sqrt((A007204(n)+n)²+1))` -/
def P263486958989284105.Spec : Prop :=
  ∀ n, P263486958989284105.a n = A374489 n

end A374489

/-! ## A374489.P1078502372008666701

`∑[A124350(2*n)+1]`
-/

namespace A374489.P1078502372008666701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124350 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374489.P1078502372008666701

namespace A374489

/-- `∑[A124350(2*n)+1]` -/
def P1078502372008666701.Spec : Prop :=
  ∀ n, P1078502372008666701.a n = A374489 n

end A374489

/-! ## A374489.P12191330991986481263

`(n*A117950(2*n+1)+1)*(n+1)`
-/

namespace A374489.P12191330991986481263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A117950 (2 * n + 1) + 1) * (n + 1 : ℤ)

end

end A374489.P12191330991986481263

namespace A374489

/-- `(n*A117950(2*n+1)+1)*(n+1)` -/
def P12191330991986481263.Spec : Prop :=
  ∀ n, P12191330991986481263.a n = A374489 n

theorem P12191330991986481263.correct : P12191330991986481263.Spec := by
  intro n
  simp only [A374489, Nat.add_sub_cancel, A374489.P12191330991986481263.a, A374489.P13292996333695838344.a, A117950, A117950.P14722515508371885867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374489

/-!
# A374490: Greatest common divisor of sums of n consecutive cubes.

The programs for A374490, the canonical program `A374490.P14971543407539615333` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374490 has offset 1).

The definition of A374490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374490.P14971543407539615333

`gcd(∑[n]², ∑[(n-1)^3])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374490

/-- `gcd(∑[n]², ∑[(n-1)^3])` -/
def P14971543407539615333.Spec : Prop :=
  ∀ n, (P14971543407539615333.a n : ℤ) = A374490 (n + 1)

theorem P14971543407539615333.correct : P14971543407539615333.Spec := by
  intro n
  simp only [A374490, Nat.add_sub_cancel]

end A374490

/-! ## A374490.P14285291051219129517

`(n+1)²/gcd((n+1)², C(n+3, 3))`
-/

namespace A374490.P14285291051219129517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Nat.gcd ((n + 1) ^ 2) (Nat.choose (n + 3) 3) : ℚ)

end

end A374490.P14285291051219129517

namespace A374490

/-- `(n+1)²/gcd((n+1)², C(n+3, 3))` -/
def P14285291051219129517.Spec : Prop :=
  ∀ n, P14285291051219129517.a n = (A374490 (n + 1) : ℚ)

end A374490

/-! ## A374490.P7549376962241720636

`A385555(A026741(n+1))`
-/

namespace A374490.P7549376962241720636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385555 (A026741 (n + 1)).toNat

end

end A374490.P7549376962241720636

namespace A374490

/-- `A385555(A026741(n+1))` -/
def P7549376962241720636.Spec : Prop :=
  ∀ n, P7549376962241720636.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P9235009171352104364

`A385555((n+1)/A000034(n))`
-/

namespace A374490.P9235009171352104364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A374490.P9235009171352104364

namespace A374490

/-- `A385555((n+1)/A000034(n))` -/
def P9235009171352104364.Spec : Prop :=
  ∀ n, P9235009171352104364.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P16468610671196407374

`A203648(n+1)/A138191(n+1)`
-/

namespace A374490.P16468610671196407374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203648 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A374490.P16468610671196407374

namespace A374490

/-- `A203648(n+1)/A138191(n+1)` -/
def P16468610671196407374.Spec : Prop :=
  ∀ n, P16468610671196407374.a n = (A374490 (n + 1) : ℚ)

end A374490

/-! ## A374490.P4505238757332547693

`A026741(n+1)²/A051724(n+1)`
-/

namespace A374490.P4505238757332547693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) ^ 2 : ℚ) / (A051724 (n + 1) : ℚ)

end

end A374490.P4505238757332547693

namespace A374490

/-- `A026741(n+1)²/A051724(n+1)` -/
def P4505238757332547693.Spec : Prop :=
  ∀ n, P4505238757332547693.a n = (A374490 (n + 1) : ℚ)

end A374490

/-! ## A374490.P14198273179478003518

`A203648(A283971(n+1))`
-/

namespace A374490.P14198273179478003518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (A283971 (n + 1)).toNat

end

end A374490.P14198273179478003518

namespace A374490

/-- `A203648(A283971(n+1))` -/
def P14198273179478003518.Spec : Prop :=
  ∀ n, P14198273179478003518.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P8334057760414162251

`A022998(A026741(n+1))*A109007(n+1)`
-/

namespace A374490.P8334057760414162251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A026741 (n + 1)).toNat * A109007 (n + 1)

end

end A374490.P8334057760414162251

namespace A374490

/-- `A022998(A026741(n+1))*A109007(n+1)` -/
def P8334057760414162251.Spec : Prop :=
  ∀ n, P8334057760414162251.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P13816034737411388425

`A168077(n+1)/A060789(A026741(n+1))`
-/

namespace A374490.P13816034737411388425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168077 (n + 1) : ℚ) / (A060789 (A026741 (n + 1)).toNat : ℚ)

end

end A374490.P13816034737411388425

namespace A374490

/-- `A168077(n+1)/A060789(A026741(n+1))` -/
def P13816034737411388425.Spec : Prop :=
  ∀ n, P13816034737411388425.a n = (A374490 (n + 1) : ℚ)

end A374490

/-! ## A374490.P15835513627798388008

`A060819(2*(n+1))²/A051724(n+1)`
-/

namespace A374490.P15835513627798388008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060819 (2 * (n + 1)) ^ 2 : ℚ) / (A051724 (n + 1) : ℚ)

end

end A374490.P15835513627798388008

namespace A374490

/-- `A060819(2*(n+1))²/A051724(n+1)` -/
def P15835513627798388008.Spec : Prop :=
  ∀ n, P15835513627798388008.a n = (A374490 (n + 1) : ℚ)

end A374490

/-! ## A374490.P17693574467222764194

`A026741(A026741(n+1)*A109015(n+1))`
-/

namespace A374490.P17693574467222764194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1) * A109015 (n + 1)).toNat

end

end A374490.P17693574467222764194

namespace A374490

/-- `A026741(A026741(n+1)*A109015(n+1))` -/
def P17693574467222764194.Spec : Prop :=
  ∀ n, P17693574467222764194.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P9578242005764276371

`A064680((n+1)*A089128(A064680(n+1)))`
-/

namespace A374490.P9578242005764276371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((n + 1 : ℤ) * A089128 (A064680 (n + 1)).toNat).toNat

end

end A374490.P9578242005764276371

namespace A374490

/-- `A064680((n+1)*A089128(A064680(n+1)))` -/
def P9578242005764276371.Spec : Prop :=
  ∀ n, P9578242005764276371.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P17284154471638003406

`A385555(A350034(A006370(6*(n+1))))`
-/

namespace A374490.P17284154471638003406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385555 (A350034 (A006370 (6 * (n + 1))).toNat).toNat

end

end A374490.P17284154471638003406

namespace A374490

/-- `A385555(A350034(A006370(6*(n+1))))` -/
def P17284154471638003406.Spec : Prop :=
  ∀ n, P17284154471638003406.a n = A374490 (n + 1)

end A374490

/-! ## A374490.P10042499261609876577

`A268918(∑[n]+1)`
-/

namespace A374490.P10042499261609876577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374490.P10042499261609876577

namespace A374490

/-- `A268918(∑[n]+1)` -/
def P10042499261609876577.Spec : Prop :=
  ∀ n, P10042499261609876577.a n = A374490 (n + 1)

end A374490

/-!
# A374492: Nonsquares with last digit in {0, 1, 4, 5, 6, 9}.

The programs for A374492, the canonical program `A374492.P9547584820120626624` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374492 has offset 1).

The definition of A374492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374492.P9547584820120626624

`comp[∪[A047221(n+1), n²]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A374492

/-- `comp[∪[A047221(n+1), n²]]` -/
def P9547584820120626624.Spec : Prop :=
  ∀ n, (P9547584820120626624.a n : ℤ) = A374492 (n + 1)

theorem P9547584820120626624.correct : P9547584820120626624.Spec := by
  intro n
  simp only [A374492, Nat.add_sub_cancel]

end A374492

/-! ## A374492.P1260090288614301279

`filter[A008854(n+2), A049240(#)]`
-/

namespace A374492.P1260090288614301279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A374492.P1260090288614301279

namespace A374492

/-- `filter[A008854(n+2), A049240(#)]` -/
def P1260090288614301279.Spec : Prop :=
  ∀ n, P1260090288614301279.a n = A374492 (n + 1)

end A374492

/-! ## A374492.P10590928376983446867

`∩[A000037(n+1), A008854(n+1)]`
-/

namespace A374492.P10590928376983446867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374492.P10590928376983446867

namespace A374492

/-- `∩[A000037(n+1), A008854(n+1)]` -/
def P10590928376983446867.Spec : Prop :=
  ∀ n, (P10590928376983446867.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P14076363600007859984

`eq[A000122(n), A152894(n)]`
-/

namespace A374492.P14076363600007859984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374492.P14076363600007859984

namespace A374492

/-- `eq[A000122(n), A152894(n)]` -/
def P14076363600007859984.Spec : Prop :=
  ∀ n, (P14076363600007859984.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P6347182188921545168

`eq[A002448(n), A152894(n)]`
-/

namespace A374492.P6347182188921545168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374492.P6347182188921545168

namespace A374492

/-- `eq[A002448(n), A152894(n)]` -/
def P6347182188921545168.Spec : Prop :=
  ∀ n, (P6347182188921545168.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P9888830208301386622

`eq[A010052(n), A152894(n)]`
-/

namespace A374492.P9888830208301386622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374492.P9888830208301386622

namespace A374492

/-- `eq[A010052(n), A152894(n)]` -/
def P9888830208301386622.Spec : Prop :=
  ∀ n, (P9888830208301386622.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P5212575632351447404

`eq[A089807(n), A152894(n)]`
-/

namespace A374492.P5212575632351447404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374492.P5212575632351447404

namespace A374492

/-- `eq[A089807(n), A152894(n)]` -/
def P5212575632351447404.Spec : Prop :=
  ∀ n, (P5212575632351447404.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P10004865202448443953

`eq[A089810(n), A152894(n)]`
-/

namespace A374492.P10004865202448443953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374492.P10004865202448443953

namespace A374492

/-- `eq[A089810(n), A152894(n)]` -/
def P10004865202448443953.Spec : Prop :=
  ∀ n, (P10004865202448443953.a n : ℤ) = A374492 (n + 1)

end A374492

/-! ## A374492.P9476930360060297106

`filter[A008854(n+2), A267594(#)]`
-/

namespace A374492.P9476930360060297106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A374492.P9476930360060297106

namespace A374492

/-- `filter[A008854(n+2), A267594(#)]` -/
def P9476930360060297106.Spec : Prop :=
  ∀ n, P9476930360060297106.a n = A374492 (n + 1)

end A374492

/-! ## A374492.P7007057171716462130

`filter[A008854(n+2), A267635(#)]`
-/

namespace A374492.P7007057171716462130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A374492.P7007057171716462130

namespace A374492

/-- `filter[A008854(n+2), A267635(#)]` -/
def P7007057171716462130.Spec : Prop :=
  ∀ n, P7007057171716462130.a n = A374492 (n + 1)

end A374492

/-!
# A374493: Number of ways of writing n^2 as a sum of 8 squares.

The programs for A374493, there is no canonical definition to state claims against.
-/

/-! ## A374493.P10715594947310539530

`A000143(n²)`
-/

namespace A374493.P10715594947310539530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (n ^ 2)

end

end A374493.P10715594947310539530

/-! ## A374493.P8589654017966036071

`abs(A035016(n²))`
-/

namespace A374493.P8589654017966036071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 (n ^ 2)|

end

end A374493.P8589654017966036071

/-! ## A374493.P17042323899244111034

`and(-1, A000143(A000290(n)))`
-/

namespace A374493.P17042323899244111034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000143 (A000290 n).toNat)

end

end A374493.P17042323899244111034

/-! ## A374493.P7646535038540586080

`A035016(n²)/A033999(n)`
-/

namespace A374493.P7646535038540586080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 (n ^ 2) : ℚ) / (A033999 n : ℚ)

end

end A374493.P7646535038540586080

/-! ## A374493.P9772811229573438432

`lcm(A000143(A000290(n)), A175077(n+1))`
-/

namespace A374493.P9772811229573438432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000143 (A000290 n).toNat) (A175077 (n + 1))

end

end A374493.P9772811229573438432

/-! ## A374493.P156416198909048542

`A241541(2*n+2)+A000143(A000290(n))`
-/

namespace A374493.P156416198909048542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241541 (2 * n + 2) + A000143 (A000290 n).toNat

end

end A374493.P156416198909048542

/-! ## A374493.P10852286592592876253

`A000143(A000290(n))%A154638(2*n+2)`
-/

namespace A374493.P10852286592592876253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000143 (A000290 n).toNat) (A154638 (2 * n + 2))

end

end A374493.P10852286592592876253

/-! ## A374493.P3781281726501650440

`abs(A259491((2*n)²))`
-/

namespace A374493.P3781281726501650440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259491 ((2 * n) ^ 2)|

end

end A374493.P3781281726501650440

/-!
# A374494: a(n) = A373498(A373498(n)).

The programs for A374494, there is no canonical definition to state claims against.
-/

/-! ## A374494.P5795524997840213108

`A373498(A373498(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374494.P5795524997840213108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (n + 1)).toNat

end

end A374494.P5795524997840213108

/-! ## A374494.P12322246113188165042

`A374447(A370655(n+1))`
-/

namespace A374494.P12322246113188165042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A370655 (n + 1)).toNat

end

end A374494.P12322246113188165042

/-! ## A374494.P3550810201327034377

`A374531(A374531(n+1))`
-/

namespace A374494.P3550810201327034377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A374531 (n + 1)).toNat

end

end A374494.P3550810201327034377

/-! ## A374494.P11309843845996659889

`A374447(A374447(A374447(A374447(n+1))))`
-/

namespace A374494.P11309843845996659889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (A374447 (A374447 (n + 1)).toNat).toNat).toNat

end

end A374494.P11309843845996659889

/-!
# A374495: Number of palindromic periodicities among the binary words of length n.

The programs for A374495, there is no canonical definition to state claims against.
-/

/-! ## A374495.P3306394208574607135

`A382525(A227236(n))+A209816(n+1)`
-/

namespace A374495.P3306394208574607135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382525 (A227236 n).toNat + A209816 (n + 1)

end

end A374495.P3306394208574607135

/-! ## A374495.P17814401770343642630

`A356435(A018076(n))`
-/

namespace A374495.P17814401770343642630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356435 (A018076 n).toNat

end

end A374495.P17814401770343642630

/-! ## A374495.P7600424698196168583

`A356435(A018172(n))`
-/

namespace A374495.P7600424698196168583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356435 (A018172 n).toNat

end

end A374495.P7600424698196168583

/-!
# A374496: The numbers appearing in the first layer of the number stack in A370193.

The programs for A374496, there is no canonical definition to state claims against.
-/

/-! ## A374496.P17635831720988275891

`record[A370193(n+1)]`
-/

namespace A374496.P17635831720988275891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374496.P17635831720988275891

/-! ## A374496.P6787995346341210715

`C(A200672(n+2), A036453(A000330(3*(n+1))))`
-/

namespace A374496.P6787995346341210715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200672 (n + 2)).toNat (A036453 (A000330 (3 * (n + 1))).toNat).toNat

end

end A374496.P6787995346341210715

/-! ## A374496.P14436301278037913413

`A000217(A138934(n+1)^A196879(n+3))`
-/

namespace A374496.P14436301278037913413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A138934 (n + 1) : ℚ) ^ (A196879 (n + 3) : ℤ))).toNat

end

end A374496.P14436301278037913413

/-! ## A374496.P7005638320123913673

`C(A200672(n+2), A000005(A229542(n+1)))`
-/

namespace A374496.P7005638320123913673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200672 (n + 2)).toNat (A000005 (A229542 (n + 1)).toNat).toNat

end

end A374496.P7005638320123913673

/-!
# A374497: Expansion of 1/(1 - 4*x - 4*x^2)^(3/2).

The programs for A374497, the canonical program `A374497.P17563861581021065173` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374497 has offset 0).

The definition of A374497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374497.P4495189198622324694

`C(n+2, 2)*A071356(n)`
-/

namespace A374497.P4495189198622324694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A071356 n

end

end A374497.P4495189198622324694

namespace A374497

/-- `C(n+2, 2)*A071356(n)` -/
def P4495189198622324694.Spec : Prop :=
  ∀ n, P4495189198622324694.a n = A374497 n

end A374497

/-! ## A374497.P17563861581021065173

`(2*(2*n+1)*a(n-1)+4*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A374497

/-- `(2*(2*n+1)*a(n-1)+4*(n+1)*a(n-2))/n` -/
def P17563861581021065173.Spec : Prop :=
  ∀ n, P17563861581021065173.a n = (A374497 n : ℚ)

end A374497

/-! ## A374497.P18308157646438402855

`(n+1)*A119976(n)`
-/

namespace A374497.P18308157646438402855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119976 n

end

end A374497.P18308157646438402855

namespace A374497

/-- `(n+1)*A119976(n)` -/
def P18308157646438402855.Spec : Prop :=
  ∀ n, P18308157646438402855.a n = A374497 n

end A374497

/-! ## A374497.P363851375053847808

`∑[n+1]*A071356(n)`
-/

namespace A374497.P363851375053847808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071356 n

end

end A374497.P363851375053847808

namespace A374497

/-- `∑[n+1]*A071356(n)` -/
def P363851375053847808.Spec : Prop :=
  ∀ n, P363851375053847808.a n = A374497 n

end A374497

/-! ## A374497.P16332596148966567634

`(A306519(n+1)+A306519(n))*∑[n+1]`
-/

namespace A374497.P16332596148966567634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306519 (n + 1) + A306519 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374497.P16332596148966567634

namespace A374497

/-- `(A306519(n+1)+A306519(n))*∑[n+1]` -/
def P16332596148966567634.Spec : Prop :=
  ∀ n, P16332596148966567634.a n = A374497 n

end A374497

/-! ## A374497.P11998000351800357347

`A071356(n)*A225381(A028387(n))`
-/

namespace A374497.P11998000351800357347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n * A225381 (A028387 n).toNat

end

end A374497.P11998000351800357347

namespace A374497

/-- `A071356(n)*A225381(A028387(n))` -/
def P11998000351800357347.Spec : Prop :=
  ∀ n, P11998000351800357347.a n = A374497 n

end A374497

/-!
# A374498: Square array read by antidiagonals: row n lists n-gonal pyramidal numbers that are products of smaller n-gonal pyramidal numbers.

The programs for A374498, there is no canonical definition to state claims against.
-/

/-! ## A374498.P5581995194225175389

`A137564(C(A139558(n+1), A127958(n+1)))`
-/

namespace A374498.P5581995194225175389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Nat.choose (A139558 (n + 1)).toNat (A127958 (n + 1)).toNat)

end

end A374498.P5581995194225175389

/-!
# A374499: Least n-gonal pyramidal number that can be written as a product of two or more smaller n-gonal pyramidal numbers, or 0 if no such number exists.

The programs for A374499, there is no canonical definition to state claims against.
-/

/-! ## A374499.P5832758704615576591

`A374498(C(n+3, 2))`
-/

namespace A374499.P5832758704615576591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374498 (Nat.choose (n + 3) 2)

end

end A374499.P5832758704615576591

/-! ## A374499.P1660095290463044365

`A374498(∑[n+2]+1)`
-/

namespace A374499.P1660095290463044365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374499.P1660095290463044365

