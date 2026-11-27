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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246200: Self-inverse permutation of natural numbers: a(n) = A057889(3*n) / 3.

The programs for A246200, the canonical program `A246200.P12941183571808914625` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246200 has offset 0).

The definition of A246200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246200.P12941183571808914625

`A057889(3*n)/3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246200

/-- `A057889(3*n)/3` -/
def P12941183571808914625.Spec : Prop :=
  ∀ n, P12941183571808914625.a n = (A246200 n : ℚ)

end A246200

/-! ## A246200.P14757660597485513413

`A266644(A263273(n))`
-/

namespace A246200.P14757660597485513413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A263273 n).toNat

end

end A246200.P14757660597485513413

namespace A246200

/-- `A266644(A263273(n))` -/
def P14757660597485513413.Spec : Prop :=
  ∀ n, P14757660597485513413.a n = A246200 n

end A246200

/-! ## A246200.P7761849475304988676

`A264968(A263272(n))`
-/

namespace A246200.P7761849475304988676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A263272 n).toNat

end

end A246200.P7761849475304988676

namespace A246200

/-- `A264968(A263272(n))` -/
def P7761849475304988676.Spec : Prop :=
  ∀ n, P7761849475304988676.a n = A246200 n

end A246200

/-! ## A246200.P17891486815404969838

`A263272(A264967(n))`
-/

namespace A246200.P17891486815404969838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 n).toNat

end

end A246200.P17891486815404969838

namespace A246200

/-- `A263272(A264967(n))` -/
def P17891486815404969838.Spec : Prop :=
  ∀ n, P17891486815404969838.a n = A246200 n

end A246200

/-! ## A246200.P16185409602325664384

`A263273(A266643(n))`
-/

namespace A246200.P16185409602325664384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 n).toNat

end

end A246200.P16185409602325664384

namespace A246200

/-- `A263273(A266643(n))` -/
def P16185409602325664384.Spec : Prop :=
  ∀ n, P16185409602325664384.a n = A246200 n

end A246200

/-! ## A246200.P4826219323098736372

`A366389(3*n)/3`
-/

namespace A246200.P4826219323098736372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366389 (3 * n) : ℚ) / 3

end

end A246200.P4826219323098736372

namespace A246200

/-- `A366389(3*n)/3` -/
def P4826219323098736372.Spec : Prop :=
  ∀ n, P4826219323098736372.a n = (A246200 n : ℚ)

end A246200

/-! ## A246200.P579219087081714159

`A264974(A264967(2*n)/2)`
-/

namespace A246200.P579219087081714159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (SequenceMachineLib.roundAway ((A264967 (2 * n) : ℚ) / 2)).toNat

end

end A246200.P579219087081714159

namespace A246200

/-- `A264974(A264967(2*n)/2)` -/
def P579219087081714159.Spec : Prop :=
  ∀ n, P579219087081714159.a n = A246200 n

end A246200

/-! ## A246200.P14101066156180110916

`A265329(A264965(A266643(A265329(A265329(n)))))`
-/

namespace A246200.P14101066156180110916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A264965 (A266643 (A265329 (A265329 n).toNat).toNat).toNat).toNat

end

end A246200.P14101066156180110916

namespace A246200

/-- `A265329(A264965(A266643(A265329(A265329(n)))))` -/
def P14101066156180110916.Spec : Prop :=
  ∀ n, P14101066156180110916.a n = A246200 n

end A246200

/-!
# A246201: Permutation of natural numbers: a(1) = 1, a(A014580(n)) = (2*a(n))+1, a(A091242(n)) = 2*a(n), where A014580(n) = binary code for n-th irreducible polynomial over GF(2), A091242(n) = binary code for n-th reducible polynomial over GF(2).

The programs for A246201, there is no canonical definition to state claims against.
-/

/-! ## A246201.P4558220754424061422

`A246203(A193231(n+1))`
-/

namespace A246201.P4558220754424061422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246203 (A193231 (n + 1)).toNat

end

end A246201.P4558220754424061422

/-! ## A246201.P16638573278720431309

`A006068(A246161(n+1))`
-/

namespace A246201.P16638573278720431309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (n + 1)).toNat

end

end A246201.P16638573278720431309

/-! ## A246201.P9551582533839882057

`A054429(A245701(n+1))`
-/

namespace A246201.P9551582533839882057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A245701 (n + 1)).toNat

end

end A246201.P9551582533839882057

/-! ## A246201.P11504681409342784791

`A193231(A246163(n+1))`
-/

namespace A246201.P11504681409342784791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (n + 1)).toNat

end

end A246201.P11504681409342784791

/-! ## A246201.P7386584788079228118

`A246203(A234745(n+1))/2`
-/

namespace A246201.P7386584788079228118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246203 (A234745 (n + 1)).toNat : ℚ) / 2

end

end A246201.P7386584788079228118

/-! ## A246201.P18097836849036900936

`A246377(A245704(n+1))`
-/

namespace A246201.P18097836849036900936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A245704 (n + 1)).toNat

end

end A246201.P18097836849036900936

/-! ## A246201.P7754790626808241960

`A260421(A260425(n+1))`
-/

namespace A246201.P7754790626808241960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260421 (A260425 (n + 1)).toNat

end

end A246201.P7754790626808241960

/-! ## A246201.P5508915923229062912

`A234612(A003188(A246163(A054429(A054429(n+1)))))`
-/

namespace A246201.P5508915923229062912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A246163 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P5508915923229062912

/-! ## A246201.P12454416029194762008

`A234026(A054429(A246163(A234027(A234027(n+1)))))`
-/

namespace A246201.P12454416029194762008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A054429 (A246163 (A234027 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P12454416029194762008

/-! ## A246201.P7419608643737061928

`A234025(A245812(A246163(A234025(A234026(n+1)))))`
-/

namespace A246201.P7419608643737061928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A245812 (A246163 (A234025 (A234026 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P7419608643737061928

/-!
# A246202: Permutation of natural numbers: a(1) = 1, a(2n) = A091242(a(n)), a(2n+1) = A014580(a(n)), where A091242(n) = binary code for n-th reducible polynomial over GF(2) and A014580(n) = binary code for n-th irreducible polynomial over GF(2).

The programs for A246202, there is no canonical definition to state claims against.
-/

/-! ## A246202.P12815732976485459483

`A260426(A260422(n+1))`
-/

namespace A246202.P12815732976485459483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260426 (A260422 (n + 1)).toNat

end

end A246202.P12815732976485459483

/-! ## A246202.P12774619679699718246

`A245702(A054429(n+1))`
-/

namespace A246202.P12774619679699718246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A054429 (n + 1)).toNat

end

end A246202.P12774619679699718246

/-! ## A246202.P2321568598004857841

`A246162(A003188(n+1))`
-/

namespace A246202.P2321568598004857841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A003188 (n + 1)).toNat

end

end A246202.P2321568598004857841

/-! ## A246202.P8155834594574467087

`A246164(A193231(n+1))`
-/

namespace A246202.P8155834594574467087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A193231 (n + 1)).toNat

end

end A246202.P8155834594574467087

/-! ## A246202.P7413504632367478355

`A193231(A246204(n+1))`
-/

namespace A246202.P7413504632367478355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246204 (n + 1)).toNat

end

end A246202.P7413504632367478355

/-! ## A246202.P13813401598477990379

`A245703(A246378(n+1))`
-/

namespace A246202.P13813401598477990379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A246378 (n + 1)).toNat

end

end A246202.P13813401598477990379

/-! ## A246202.P9340558133480407603

`fo[A246201(n+1)-1]+1`
-/

namespace A246202.P9340558133480407603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246202.P9340558133480407603

/-!
# A246203: Permutation of natural numbers: a(n) = A246201(A193231(n)).

The programs for A246203, there is no canonical definition to state claims against.
-/

/-! ## A246203.P14585774867352206253

`A246201(A193231(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246203.P14585774867352206253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A193231 (n + 1)).toNat

end

end A246203.P14585774867352206253

/-! ## A246203.P6751671279042228806

`A193231(A246163(A193231(n+1)))`
-/

namespace A246203.P6751671279042228806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A193231 (n + 1)).toNat).toNat

end

end A246203.P6751671279042228806

/-! ## A246203.P3815855229650850578

`A006068(A246161(A003188(A234613(n+1))))`
-/

namespace A246203.P3815855229650850578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A003188 (A234613 (n + 1)).toNat).toNat).toNat

end

end A246203.P3815855229650850578

/-! ## A246203.P13514350062898695157

`A054429(A234025(A246163(A054429(A234025(n+1)))))`
-/

namespace A246203.P13514350062898695157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246163 (A054429 (A234025 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P13514350062898695157

/-! ## A246203.P17078305047276852944

`A234613(A193231(A246161(A234612(A003188(n+1)))))`
-/

namespace A246203.P17078305047276852944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 (A246161 (A234612 (A003188 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P17078305047276852944

/-! ## A246203.P18048713513295225967

`A234026(A054429(A246163(A245812(A234026(n+1)))))`
-/

namespace A246203.P18048713513295225967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A054429 (A246163 (A245812 (A234026 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P18048713513295225967

/-! ## A246203.P3749789728554116002

`A234025(A245812(A246163(A234025(A245812(n+1)))))`
-/

namespace A246203.P3749789728554116002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A245812 (A246163 (A234025 (A245812 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P3749789728554116002

/-!
# A246204: Permutation of natural numbers: a(n) = A193231(A246202(n)).

The programs for A246204, there is no canonical definition to state claims against.
-/

/-! ## A246204.P3837850137305915004

`A193231(A246202(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246204.P3837850137305915004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246202 (n + 1)).toNat

end

end A246204.P3837850137305915004

/-! ## A246204.P6206598332888261726

`A193231(A246164(A193231(n+1)))`
-/

namespace A246204.P6206598332888261726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246164 (A193231 (n + 1)).toNat).toNat

end

end A246204.P6206598332888261726

/-! ## A246204.P11466838323385539238

`fo[A246203(n+1)-1]+1`
-/

namespace A246204.P11466838323385539238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246203 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246204.P11466838323385539238

/-! ## A246204.P6785158576075650294

`A054429(A234025(A246164(A054429(A234025(n+1)))))`
-/

namespace A246204.P6785158576075650294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246164 (A054429 (A234025 (n + 1)).toNat).toNat).toNat).toNat

end

end A246204.P6785158576075650294

/-! ## A246204.P876402638662949377

`A234026(A054429(A246164(A234026(A054429(n+1)))))`
-/

namespace A246204.P876402638662949377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A054429 (A246164 (A234026 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A246204.P876402638662949377

/-!
# A246205: Permutation of natural numbers: a(1) = 1, a(A014580(n)) = A117968(a(n)), a(A091242(n)) = A117967(1+a(n)), where A117967 and A117968 give positive and negative parts of inverse of balanced ternary enumeration of integers, and A014580 resp. A091242 are the binary coded irreducible resp. reducible polynomials over GF(2).

The programs for A246205, there is no canonical definition to state claims against.
-/

/-! ## A246205.P6125486254338143597

`A246207(A245701(n+1))`
-/

namespace A246205.P6125486254338143597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A245701 (n + 1)).toNat

end

end A246205.P6125486254338143597

/-! ## A246205.P2892929378408311586

`A246209(A246201(n+1))`
-/

namespace A246205.P2892929378408311586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A246201 (n + 1)).toNat

end

end A246205.P2892929378408311586

/-! ## A246205.P2397367018369262483

`fo[A246206(n+1)-1]+1`
-/

namespace A246205.P2397367018369262483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246206 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246205.P2397367018369262483

/-!
# A246206: Permutation of natural numbers: a(1) = 1, if A117966(n) < 0, a(n) = A014580(a(-(A117966(n)))), otherwise a(n) = A091242(a(A117966(n)-1)).

The programs for A246206, there is no canonical definition to state claims against.
-/

/-! ## A246206.P1849644465663694554

`A245702(A246208(n+1))`
-/

namespace A246206.P1849644465663694554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A246208 (n + 1)).toNat

end

end A246206.P1849644465663694554

/-! ## A246206.P673168252001547007

`A246202(A246210(n+1))`
-/

namespace A246206.P673168252001547007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A246210 (n + 1)).toNat

end

end A246206.P673168252001547007

/-! ## A246206.P12883662825308717071

`fo[A246205(n+1)-1]+1`
-/

namespace A246206.P12883662825308717071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246205 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246206.P12883662825308717071

/-!
# A246207: Permutation of nonnegative integers: a(0) = 0, a(1) = 1, a(2n) = A117968(a(n)), a(2n+1) = A117967(1+a(n)).

The programs for A246207, there is no canonical definition to state claims against.
-/

/-! ## A246207.P10519471508563703426

`A246211(A246209(n))`
-/

namespace A246207.P10519471508563703426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246211 (A246209 n).toNat

end

end A246207.P10519471508563703426

/-! ## A246207.P3915416399178479242

`A246209(A092569(2*n)/2)`
-/

namespace A246207.P3915416399178479242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A246207.P3915416399178479242

/-! ## A246207.P2066083117626623761

`fo[A246208(n)]`
-/

namespace A246207.P2066083117626623761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A246207.P2066083117626623761

/-!
# A246208: Permutation of nonnegative integers: a(0) = 0, a(1) = 1, and for n > 1, if A117966(n) < 1, a(n) = 2*a(-(A117966(n))), otherwise a(n) = 1 + 2*a(A117966(n)-1).

The programs for A246208, there is no canonical definition to state claims against.
-/

/-! ## A246208.P13508437284157776686

`A246210(A246211(n))`
-/

namespace A246208.P13508437284157776686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 (A246211 n).toNat

end

end A246208.P13508437284157776686

/-! ## A246208.P5011399289727555524

`fo[A246207(n)]`
-/

namespace A246208.P5011399289727555524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A246208.P5011399289727555524

/-! ## A246208.P15105817718595677954

`A092569(xor(A157928(n), A246210(n)))`
-/

namespace A246208.P15105817718595677954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A157928 n) (A246210 n)).toNat

end

end A246208.P15105817718595677954

/-! ## A246208.P18154494504169802369

`A092569(2*A246210(n))/2`
-/

namespace A246208.P18154494504169802369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A246210 n).toNat : ℚ) / 2

end

end A246208.P18154494504169802369

/-! ## A246208.P11806453442202651792

`A193231(A245812(A193231(A246210(n))))`
-/

namespace A246208.P11806453442202651792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245812 (A193231 (A246210 n).toNat).toNat).toNat

end

end A246208.P11806453442202651792

/-!
# A246209: Permutation of nonnegative integers: a(0) = 0, a(1) = 1, a(2n) = A117967(1+a(n)), a(2n+1) = A117968(a(n)).

The programs for A246209, there is no canonical definition to state claims against.
-/

/-! ## A246209.P12877629620207265670

`A246211(A246207(n))`
-/

namespace A246209.P12877629620207265670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246211 (A246207 n).toNat

end

end A246209.P12877629620207265670

/-! ## A246209.P16286031473831467157

`A246207(A092569(2*n)/2)`
-/

namespace A246209.P16286031473831467157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A246209.P16286031473831467157

/-! ## A246209.P1158417777808534317

`fo[A246210(n)]`
-/

namespace A246209.P1158417777808534317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A246209.P1158417777808534317

/-!
# A246210: Permutation of nonnegative integers: a(0) = 0, a(1) = 1, and for n > 1, if A117966(n) < 1, a(n) = 1 + 2*a(-(A117966(n))), otherwise a(n) = 2*a(A117966(n)-1).

The programs for A246210, there is no canonical definition to state claims against.
-/

/-! ## A246210.P17981965801652297583

`A246208(A246211(n))`
-/

namespace A246210.P17981965801652297583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246211 n).toNat

end

end A246210.P17981965801652297583

/-! ## A246210.P4645841632099820097

`A092569(xor(A157928(n), A246208(n)))`
-/

namespace A246210.P4645841632099820097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A157928 n) (A246208 n)).toNat

end

end A246210.P4645841632099820097

/-! ## A246210.P8385033511322606648

`A092569(2*A246208(n))/2`
-/

namespace A246210.P8385033511322606648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A246208 n).toNat : ℚ) / 2

end

end A246210.P8385033511322606648

/-! ## A246210.P14920879377996508319

`fo[A246209(n)]`
-/

namespace A246210.P14920879377996508319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A246210.P14920879377996508319

/-! ## A246210.P5402822124956335533

`A193231(A245812(A193231(A246208(n))))`
-/

namespace A246210.P5402822124956335533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245812 (A193231 (A246208 n).toNat).toNat).toNat

end

end A246210.P5402822124956335533

/-!
# A246211: Self-inverse permutation of natural numbers: a(0) = 0, a(1) = 1, and for n > 1, if A117966(n) < 0, a(n) = A117967(1+a(-(A117966(n)))), otherwise a(n) = A117968(a(A117966(n)-1)).

The programs for A246211, there is no canonical definition to state claims against.
-/

/-! ## A246211.P4611127193647005677

`A246207(A246210(n))`
-/

namespace A246211.P4611127193647005677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A246210 n).toNat

end

end A246211.P4611127193647005677

/-! ## A246211.P14401390243302431767

`A246209(A246208(n))`
-/

namespace A246211.P14401390243302431767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A246208 n).toNat

end

end A246211.P14401390243302431767

/-!
# A246213: Number of endofunctions on [n] where the largest cycle length equals 3.

The programs for A246213, there is no canonical definition to state claims against.
-/

/-! ## A246213.P8328050665903419593

`A241981(eq[1, col(n)-2])`
-/

namespace A246213.P8328050665903419593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P8328050665903419593

/-!
# A246214: Number of endofunctions on [n] where the largest cycle length equals 4.

The programs for A246214, there is no canonical definition to state claims against.
-/

/-! ## A246214.P7869174714146595422

`A241981(eq[0, 4-col(n)])`
-/

namespace A246214.P7869174714146595422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P7869174714146595422

/-!
# A246215: Number of endofunctions on [n] where the largest cycle length equals 5.

The programs for A246215, there is no canonical definition to state claims against.
-/

/-! ## A246215.P6426637927893265443

`A241981(eq[0, 5-col(n)])`
-/

namespace A246215.P6426637927893265443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P6426637927893265443

/-!
# A246216: Number of endofunctions on [n] where the largest cycle length equals 6.

The programs for A246216, there is no canonical definition to state claims against.
-/

/-! ## A246216.P10814713614005583108

`A241981(eq[6, col(n)])`
-/

namespace A246216.P10814713614005583108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246216.P10814713614005583108

/-!
# A246217: Number of endofunctions on [n] where the largest cycle length equals 7.

The programs for A246217, there is no canonical definition to state claims against.
-/

/-! ## A246217.P16622899039691966120

`A241981(eq[5, col(n)-2])`
-/

namespace A246217.P16622899039691966120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P16622899039691966120

/-!
# A246218: Number of endofunctions on [n] where the largest cycle length equals 8.

The programs for A246218, there is no canonical definition to state claims against.
-/

/-! ## A246218.P12794026274420141105

`A241981(eq[8, A002262(n)])`
-/

namespace A246218.P12794026274420141105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246218.P12794026274420141105

/-!
# A246219: Number of endofunctions on [n] where the largest cycle length equals 9.

The programs for A246219, there is no canonical definition to state claims against.
-/

/-! ## A246219.P1601500210431534438

`A241981(eq[9, A002262(n)])`
-/

namespace A246219.P1601500210431534438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246219.P1601500210431534438

/-!
# A246220: Number of endofunctions on [n] where the largest cycle length equals 10.

The programs for A246220, there is no canonical definition to state claims against.
-/

/-! ## A246220.P11926405576184096619

`A241981(eq[10, A002262(n)])`
-/

namespace A246220.P11926405576184096619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246220.P11926405576184096619

/-!
# A246221: Number of permutations of [n] with exactly one occurrence of the consecutive step pattern given by the binary expansion of n, where 1=up and 0=down.

The programs for A246221, there is no canonical definition to state claims against.
-/

/-! ## A246221.P5430324256098739609

`A242783(record[A105681(n+4)])`
-/

namespace A246221.P5430324256098739609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242783 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246221.P5430324256098739609

/-!
# A246230: Number of compositions of n into exactly three different parts with distinct multiplicities.

The programs for A246230, there is no canonical definition to state claims against.
-/

/-! ## A246230.P7622271080921829587

`filter[A242896(2*n), A011740(#)]`
-/

namespace A246230.P7622271080921829587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011740 (f1 j).toNat = 1) n)

end

end A246230.P7622271080921829587

/-!
# A246235: Number of rooted trees with n nodes and 6-colored non-root nodes.

The programs for A246235, there is no canonical definition to state claims against.
-/

/-! ## A246235.P15726661193015030804

`A242249(eq[3, (row(n)-col(n))/2])`
-/

namespace A246235.P15726661193015030804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A246235.P15726661193015030804

/-! ## A246235.P9766496761061032606

`record[A242249(A046691(n+1)+n+1)]`
-/

namespace A246235.P9766496761061032606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A046691 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246235.P9766496761061032606

/-! ## A246235.P2166806248018994997

`record[A242249(A001105(n)%A133263(n))]`
-/

namespace A246235.P2166806248018994997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (Int.tmod (A001105 n) (A133263 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246235.P2166806248018994997

/-!
# A246236: Number of rooted trees with n nodes and 7-colored non-root nodes.

The programs for A246236, there is no canonical definition to state claims against.
-/

/-! ## A246236.P17094985148252924825

`A242249(A155212(n+4))`
-/

namespace A246236.P17094985148252924825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A155212 (n + 4)).toNat

end

end A246236.P17094985148252924825

/-!
# A246237: Number of rooted trees with n nodes and 8-colored non-root nodes.

The programs for A246237, there is no canonical definition to state claims against.
-/

/-! ## A246237.P13223962630856456436

`A242249(eq[8, A025581(n)])`
-/

namespace A246237.P13223962630856456436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246237.P13223962630856456436

/-!
# A246238: Number of rooted trees with n nodes and 9-colored non-root nodes.

The programs for A246238, there is no canonical definition to state claims against.
-/

/-! ## A246238.P11260186044962368814

`A242249(eq[9, A025581(n)])`
-/

namespace A246238.P11260186044962368814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246238.P11260186044962368814

/-!
# A246239: Number of rooted trees with n nodes and 10-colored non-root nodes.

The programs for A246239, there is no canonical definition to state claims against.
-/

/-! ## A246239.P1241111776996311582

`A242249(eq[10, A025581(n)])`
-/

namespace A246239.P1241111776996311582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246239.P1241111776996311582

/-!
# A246240: Sum of fifth powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246240, there is no canonical definition to state claims against.
-/

/-! ## A246240.P4643788338173931050

`A245397(eq[4, A212551(n)])`
-/

namespace A246240.P4643788338173931050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246240.P4643788338173931050

/-!
# A246241: Sum of sixth powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246241, there is no canonical definition to state claims against.
-/

/-! ## A246241.P6044271738109381052

`A245397(eq[6, A025581(n)])`
-/

namespace A246241.P6044271738109381052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246241.P6044271738109381052

/-!
# A246242: Sum of seventh powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246242, there is no canonical definition to state claims against.
-/

/-! ## A246242.P15050425481926098600

`A245397(eq[7, A025581(n)])`
-/

namespace A246242.P15050425481926098600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246242.P15050425481926098600

/-!
# A246243: Sum of eighth powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246243, there is no canonical definition to state claims against.
-/

/-! ## A246243.P11859254838389815563

`A245397(eq[2, row(n)-col(n)-6])`
-/

namespace A246243.P11859254838389815563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246243.P11859254838389815563

/-!
# A246244: Sum of ninth powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246244, there is no canonical definition to state claims against.
-/

/-! ## A246244.P15824082101696163657

`A245397(eq[9, A025581(n)])`
-/

namespace A246244.P15824082101696163657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246244.P15824082101696163657

/-!
# A246246: Number of permutations of [n] with exactly one occurrence of the consecutive step pattern up, down, down.

The programs for A246246, there is no canonical definition to state claims against.
-/

/-! ## A246246.P4126244652193038219

`A242819(A008748(n+4)+1)`
-/

namespace A246246.P4126244652193038219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242819 (A008748 (n + 4) + 1).toNat

end

end A246246.P4126244652193038219

/-!
# A246256: Triangular array read by rows. Row n lists the coefficients of the closed form of hypergeometric([1/2, -n/2, (1-n)/2], [], 4*z).

The programs for A246256, there is no canonical definition to state claims against.
-/

/-! ## A246256.P7083071899894280066

`A096713(n)²/A109446(n)`
-/

namespace A246256.P7083071899894280066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096713 n ^ 2 : ℚ) / (A109446 n : ℚ)

end

end A246256.P7083071899894280066

/-! ## A246256.P208611516396545866

`A066325(record[n-A025581(n)])²/A109446(n)`
-/

namespace A246256.P208611516396545866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2 : ℚ) / (A109446 n : ℚ)

end

end A246256.P208611516396545866

/-! ## A246256.P14063837202022290661

`A066325(2*n-A259361(n))²/A109446(n)`
-/

namespace A246256.P14063837202022290661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 ((2 * n : ℤ) - A259361 n).toNat ^ 2 : ℚ) / (A109446 n : ℚ)

end

end A246256.P14063837202022290661

/-! ## A246256.P13083178532567071823

`A066325(n-A259361(n)+n)²/A109446(n)`
-/

namespace A246256.P13083178532567071823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 ((n : ℤ) - A259361 n + (n : ℤ)).toNat ^ 2 : ℚ) / (A109446 n : ℚ)

end

end A246256.P13083178532567071823

/-! ## A246256.P11581269853011107752

`A066325(n-(A259361(n)-n))²/A109446(n)`
-/

namespace A246256.P11581269853011107752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 ((n : ℤ) - (A259361 n - (n : ℤ))).toNat ^ 2 : ℚ) / (A109446 n : ℚ)

end

end A246256.P11581269853011107752

/-!
# A246257: Triangular array read by rows: T(n, k) = S(n, [n/2]-k) and S(n,k) = C(n, 2*k)*(2*k-1)!!*((2*k-1)!! + 1)/2, n>=0, 0<=k<=[n/2].

The programs for A246257, there is no canonical definition to state claims against.
-/

/-! ## A246257.P13618365604378545563

`A254503(A246256(n))`
-/

namespace A246257.P13618365604378545563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A246256 n).toNat

end

end A246257.P13618365604378545563

/-!
# A246258: Transpose of array A246259.

The programs for A246258, there is no canonical definition to state claims against.
-/

/-! ## A246258.P14360535633455613793

`A246259(∑[char[∑[n]]]²-n)`
-/

namespace A246258.P14360535633455613793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A246258.P14360535633455613793

/-!
# A246259: Square array: row n contains in ascending order all natural numbers k for which A246271(k)+1 = n, i.e., numbers m for which we need n-1 additional iterations of A003961, starting from A003961(m), before the result is 1 modulo 4.

The programs for A246259, there is no canonical definition to state claims against.
-/

/-! ## A246259.P201963445831843248

`A246258(∑[char[∑[n]]]²-n)`
-/

namespace A246259.P201963445831843248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246258 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A246259.P201963445831843248

/-!
# A246260: a(n) = 1 if A003961(n) is of the form 4k+1, otherwise a(n) = 0, (when A003961(n) is of the form 4k+3). [A003961 is fully multiplicative with a(p) = nextprime(p)].

The programs for A246260, the canonical program `A246260.P15139320144047363680` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246260 has offset 1).

The definition of A246260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246260.P15139320144047363680

`A000035(A048673(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A246260

/-- `A000035(A048673(n+1))` -/
def P15139320144047363680.Spec : Prop :=
  ∀ n, P15139320144047363680.a n = A246260 (n + 1)

theorem P15139320144047363680.correct : P15139320144047363680.Spec := by
  intro n
  simp only [A246260, Nat.add_sub_cancel]

end A246260

/-! ## A246260.P3327661015129217628

`1-A000035((A003961(n+1)-1)/2)`
-/

namespace A246260.P3327661015129217628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 (SequenceMachineLib.roundAway ((A003961 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A246260.P3327661015129217628

namespace A246260

/-- `1-A000035((A003961(n+1)-1)/2)` -/
def P3327661015129217628.Spec : Prop :=
  ∀ n, P3327661015129217628.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P2393792185096521636

`Δ[A246262(n)]`
-/

namespace A246260.P2393792185096521636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246260.P2393792185096521636

namespace A246260

/-- `Δ[A246262(n)]` -/
def P2393792185096521636.Spec : Prop :=
  ∀ n, P2393792185096521636.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P4504659001560963054

`1-Δ[A246264(n)]`
-/

namespace A246260.P4504659001560963054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A246260.P4504659001560963054

namespace A246260

/-- `1-Δ[A246264(n)]` -/
def P4504659001560963054.Spec : Prop :=
  ∀ n, P4504659001560963054.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P1176067988057079894

`A048673(1+n)%2`
-/

namespace A246260.P1176067988057079894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (1 + n)) 2

end

end A246260.P1176067988057079894

namespace A246260

/-- `A048673(1+n)%2` -/
def P1176067988057079894.Spec : Prop :=
  ∀ n, P1176067988057079894.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P5865502917187432006

`A286584(n+1)%2`
-/

namespace A246260.P5865502917187432006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286584 (n + 1)) 2

end

end A246260.P5865502917187432006

namespace A246260

/-- `A286584(n+1)%2` -/
def P5865502917187432006.Spec : Prop :=
  ∀ n, P5865502917187432006.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P6779822627670405693

`A286585(n+1)%2`
-/

namespace A246260.P6779822627670405693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286585 (n + 1)) 2

end

end A246260.P6779822627670405693

namespace A246260

/-- `A286585(n+1)%2` -/
def P6779822627670405693.Spec : Prop :=
  ∀ n, P6779822627670405693.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P16473460125042686701

`A340378(n+1)%2`
-/

namespace A246260.P16473460125042686701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340378 (n + 1)) 2

end

end A246260.P16473460125042686701

namespace A246260

/-- `A340378(n+1)%2` -/
def P16473460125042686701.Spec : Prop :=
  ∀ n, P16473460125042686701.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P13151115362655371676

`Δ[fp[A246261(n+1)]]`
-/

namespace A246260.P13151115362655371676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A246260.P13151115362655371676

namespace A246260

/-- `Δ[fp[A246261(n+1)]]` -/
def P13151115362655371676.Spec : Prop :=
  ∀ n, P13151115362655371676.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P12888807818781361677

`char[fp[A246262(n+1)]]`
-/

namespace A246260.P12888807818781361677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A246260.P12888807818781361677

namespace A246260

/-- `char[fp[A246262(n+1)]]` -/
def P12888807818781361677.Spec : Prop :=
  ∀ n, (P12888807818781361677.a n : ℤ) = A246260 (n + 1)

end A246260

/-! ## A246260.P14038439406215566867

`C(2, A246271(n+1)+2)`
-/

namespace A246260.P14038439406215566867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A246271 (n + 1) + 2).toNat

end

end A246260.P14038439406215566867

namespace A246260

/-- `C(2, A246271(n+1)+2)` -/
def P14038439406215566867.Spec : Prop :=
  ∀ n, (P14038439406215566867.a n : ℤ) = A246260 (n + 1)

end A246260

/-! ## A246260.P10754879894568064701

`and(1, A243501(n+1)/2)`
-/

namespace A246260.P10754879894568064701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2))

end

end A246260.P10754879894568064701

namespace A246260

/-- `and(1, A243501(n+1)/2)` -/
def P10754879894568064701.Spec : Prop :=
  ∀ n, P10754879894568064701.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P13432547419847469674

`(A003961(n+1)%4)%3`
-/

namespace A246260.P13432547419847469674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A003961 (n + 1)) 4) 3

end

end A246260.P13432547419847469674

namespace A246260

/-- `(A003961(n+1)%4)%3` -/
def P13432547419847469674.Spec : Prop :=
  ∀ n, P13432547419847469674.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P18177538683032056674

`(and(2, A253885(n))+1)%3`
-/

namespace A246260.P18177538683032056674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 2 (A253885 n) + 1) 3

end

end A246260.P18177538683032056674

namespace A246260

/-- `(and(2, A253885(n))+1)%3` -/
def P18177538683032056674.Spec : Prop :=
  ∀ n, P18177538683032056674.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P8149237149784062331

`val(A246270(n+1)²+2, 2)`
-/

namespace A246260.P8149237149784062331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246270 (n + 1) ^ 2 + 2).toNat 2

end

end A246260.P8149237149784062331

namespace A246260

/-- `val(A246270(n+1)²+2, 2)` -/
def P8149237149784062331.Spec : Prop :=
  ∀ n, (P8149237149784062331.a n : ℤ) = A246260 (n + 1)

end A246260

/-! ## A246260.P17195550150000633738

`1-char[A246263(n+1)-1]`
-/

namespace A246260.P17195550150000633738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A246260.P17195550150000633738

namespace A246260

/-- `1-char[A246263(n+1)-1]` -/
def P17195550150000633738.Spec : Prop :=
  ∀ n, P17195550150000633738.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P1248631443946459638

`A000007(Δ[A246264(n)])`
-/

namespace A246260.P1248631443946459638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f1 (n + 1) - f1 n).toNat

end

end A246260.P1248631443946459638

namespace A246260

/-- `A000007(Δ[A246264(n)])` -/
def P1248631443946459638.Spec : Prop :=
  ∀ n, P1248631443946459638.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P14919530003958493450

`A000166(Δ[A246264(n)])`
-/

namespace A246260.P14919530003958493450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (f1 (n + 1) - f1 n).toNat

end

end A246260.P14919530003958493450

namespace A246260

/-- `A000166(Δ[A246264(n)])` -/
def P14919530003958493450.Spec : Prop :=
  ∀ n, P14919530003958493450.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P960192418088586801

`A000360(Δ[A246264(n)])`
-/

namespace A246260.P960192418088586801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (f1 (n + 1) - f1 n).toNat

end

end A246260.P960192418088586801

namespace A246260

/-- `A000360(Δ[A246264(n)])` -/
def P960192418088586801.Spec : Prop :=
  ∀ n, P960192418088586801.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P1105558414396840775

`A000586(Δ[A246264(n)])`
-/

namespace A246260.P1105558414396840775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (n + 1) - f1 n).toNat

end

end A246260.P1105558414396840775

namespace A246260

/-- `A000586(Δ[A246264(n)])` -/
def P1105558414396840775.Spec : Prop :=
  ∀ n, P1105558414396840775.a n = A246260 (n + 1)

end A246260

/-!
# A246261: Numbers n such that A003961(n) is of the form 4k+1.

The programs for A246261, the canonical program `A246261.P7900957373872323894` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246261 has offset 1).

The definition of A246261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246261.P7900957373872323894

`eq[1, A246260(1+n)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246261

/-- `eq[1, A246260(1+n)]+1` -/
def P7900957373872323894.Spec : Prop :=
  ∀ n, (P7900957373872323894.a n : ℤ) = A246261 (n + 1)

theorem P7900957373872323894.correct : P7900957373872323894.Spec := by
  intro n
  simp only [A246261, Nat.add_sub_cancel]

end A246261

/-! ## A246261.P2708980046167381372

`eq[1, A336842(1+n)]+1`
-/

namespace A246261.P2708980046167381372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P2708980046167381372

namespace A246261

/-- `eq[1, A336842(1+n)]+1` -/
def P2708980046167381372.Spec : Prop :=
  ∀ n, (P2708980046167381372.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P11747706519728268807

`record[A000027(n+1)*A246260(n+1)]`
-/

namespace A246261.P11747706519728268807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A246260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246261.P11747706519728268807

namespace A246261

/-- `record[A000027(n+1)*A246260(n+1)]` -/
def P11747706519728268807.Spec : Prop :=
  ∀ n, P11747706519728268807.a n = A246261 (n + 1)

end A246261

/-! ## A246261.P8266662251000479990

`lt[val(A246270(n+1)+1, 2), 1]+1`
-/

namespace A246261.P8266662251000479990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246270 (n + 1) + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246261.P8266662251000479990

namespace A246261

/-- `lt[val(A246270(n+1)+1, 2), 1]+1` -/
def P8266662251000479990.Spec : Prop :=
  ∀ n, (P8266662251000479990.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P10440273842112333145

`filter[A183300(n+1), A246260(#)]`
-/

namespace A246261.P10440273842112333145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A246261.P10440273842112333145

namespace A246261

/-- `filter[A183300(n+1), A246260(#)]` -/
def P10440273842112333145.Spec : Prop :=
  ∀ n, P10440273842112333145.a n = A246261 (n + 1)

end A246261

/-! ## A246261.P13652475316949916053

`fp[A246262(n)]`
-/

namespace A246261.P13652475316949916053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A246261.P13652475316949916053

namespace A246261

/-- `fp[A246262(n)]` -/
def P13652475316949916053.Spec : Prop :=
  ∀ n, (P13652475316949916053.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P4885924583842278279

`∑[runs[n-A246264(n)]]`
-/

namespace A246261.P4885924583842278279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246264 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246261.P4885924583842278279

namespace A246261

/-- `∑[runs[n-A246264(n)]]` -/
def P4885924583842278279.Spec : Prop :=
  ∀ n, (P4885924583842278279.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P10622249885137737518

`eq[0, A246271(n+1)]+1`
-/

namespace A246261.P10622249885137737518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P10622249885137737518

namespace A246261

/-- `eq[0, A246271(n+1)]+1` -/
def P10622249885137737518.Spec : Prop :=
  ∀ n, (P10622249885137737518.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P15314649897356352725

`lt[A286583(n+1), 1]+1`
-/

namespace A246261.P15314649897356352725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286583 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246261.P15314649897356352725

namespace A246261

/-- `lt[A286583(n+1), 1]+1` -/
def P15314649897356352725.Spec : Prop :=
  ∀ n, (P15314649897356352725.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P18249848029218960587

`eq[1, and(3, A003961(n+1))]+1`
-/

namespace A246261.P18249848029218960587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P18249848029218960587

namespace A246261

/-- `eq[1, and(3, A003961(n+1))]+1` -/
def P18249848029218960587.Spec : Prop :=
  ∀ n, (P18249848029218960587.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P8860142779786763113

`eq[1, A057427(n)+char[A246263(n+1)]]`
-/

namespace A246261.P8860142779786763113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246261.P8860142779786763113

namespace A246261

/-- `eq[1, A057427(n)+char[A246263(n+1)]]` -/
def P8860142779786763113.Spec : Prop :=
  ∀ n, (P8860142779786763113.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P6060756690266083111

`eq[1, A289623(2*(n+1))]+1`
-/

namespace A246261.P6060756690266083111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P6060756690266083111

namespace A246261

/-- `eq[1, A289623(2*(n+1))]+1` -/
def P6060756690266083111.Spec : Prop :=
  ∀ n, (P6060756690266083111.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P14380366258623463845

`eq[1, A289623(A008486(n)-n)]`
-/

namespace A246261.P14380366258623463845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246261.P14380366258623463845

namespace A246261

/-- `eq[1, A289623(A008486(n)-n)]` -/
def P14380366258623463845.Spec : Prop :=
  ∀ n, (P14380366258623463845.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P805257405378257568

`eq[1, A289623(A298026(n)-n)]`
-/

namespace A246261.P805257405378257568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A298026 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246261.P805257405378257568

namespace A246261

/-- `eq[1, A289623(A298026(n)-n)]` -/
def P805257405378257568.Spec : Prop :=
  ∀ n, (P805257405378257568.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P4172213575417727263

`eq[1, A289623(A008458(n))]`
-/

namespace A246261.P4172213575417727263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246261.P4172213575417727263

namespace A246261

/-- `eq[1, A289623(A008458(n))]` -/
def P4172213575417727263.Spec : Prop :=
  ∀ n, (P4172213575417727263.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P16423474950922640715

`eq[1, A289623(A008486(2*n))]`
-/

namespace A246261.P16423474950922640715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246261.P16423474950922640715

namespace A246261

/-- `eq[1, A289623(A008486(2*n))]` -/
def P16423474950922640715.Spec : Prop :=
  ∀ n, (P16423474950922640715.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P2671995426267832750

`filter[A115510(n+1), A246260(#)]`
-/

namespace A246261.P2671995426267832750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A246261.P2671995426267832750

namespace A246261

/-- `filter[A115510(n+1), A246260(#)]` -/
def P2671995426267832750.Spec : Prop :=
  ∀ n, P2671995426267832750.a n = A246261 (n + 1)

end A246261

/-!
# A246262: Inverse function to injection A246261, partial sums of A246260.

The programs for A246262, the canonical program `A246262.P10590490882229900441` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246262 has offset 0).

The definition of A246262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246262.P1470558614095616906

`n-A246264(n)`
-/

namespace A246262.P1470558614095616906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246264 n

end

end A246262.P1470558614095616906

namespace A246262

/-- `n-A246264(n)` -/
def P1470558614095616906.Spec : Prop :=
  ∀ n, P1470558614095616906.a n = A246262 n

end A246262

/-! ## A246262.P10590490882229900441

`A246260(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246262

/-- `A246260(n)+a(n-1)` -/
def P10590490882229900441.Spec : Prop :=
  ∀ n, P10590490882229900441.a n = A246262 n

theorem P10590490882229900441.correct : P10590490882229900441.Spec := by
  intro n
  simp only [A246262]

end A246262

/-! ## A246262.P9631798010832042697

`fp[A246261(n+1)]`
-/

namespace A246262.P9631798010832042697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A246262.P9631798010832042697

namespace A246262

/-- `fp[A246261(n+1)]` -/
def P9631798010832042697.Spec : Prop :=
  ∀ n, (P9631798010832042697.a n : ℤ) = A246262 n

end A246262

/-! ## A246262.P13729067093071204131

`∑[char[A246261(1+n)]]`
-/

namespace A246262.P13729067093071204131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P13729067093071204131

namespace A246262

/-- `∑[char[A246261(1+n)]]` -/
def P13729067093071204131.Spec : Prop :=
  ∀ n, (P13729067093071204131.a n : ℤ) = A246262 n

end A246262

/-! ## A246262.P3076115132984782515

`n-∑[char[A246263(n+1)]]`
-/

namespace A246262.P3076115132984782515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A246262.P3076115132984782515

namespace A246262

/-- `n-∑[char[A246263(n+1)]]` -/
def P3076115132984782515.Spec : Prop :=
  ∀ n, P3076115132984782515.a n = A246262 n

end A246262

/-! ## A246262.P16002407906209451776

`∑[A048673(abs(1-n)+1)%2]`
-/

namespace A246262.P16002407906209451776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (|1 - (n : ℤ)| + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P16002407906209451776

namespace A246262

/-- `∑[A048673(abs(1-n)+1)%2]` -/
def P16002407906209451776.Spec : Prop :=
  ∀ n, P16002407906209451776.a n = A246262 n

end A246262

/-! ## A246262.P1584969889430826798

`∑[A246260(n+1)]-A246260(n+1)`
-/

namespace A246262.P1584969889430826798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A246260 (n + 1)

end

end A246262.P1584969889430826798

namespace A246262

/-- `∑[A246260(n+1)]-A246260(n+1)` -/
def P1584969889430826798.Spec : Prop :=
  ∀ n, P1584969889430826798.a n = A246262 n

end A246262

/-! ## A246262.P15890168964845851454

`∑[A048673(A008486(n))%2]-1`
-/

namespace A246262.P15890168964845851454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A008486 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A246262.P15890168964845851454

namespace A246262

/-- `∑[A048673(A008486(n))%2]-1` -/
def P15890168964845851454.Spec : Prop :=
  ∀ n, P15890168964845851454.a n = A246262 n

end A246262

/-! ## A246262.P13881771838670101390

`∑[(A048673(A008486(2*n))+1)%2]`
-/

namespace A246262.P13881771838670101390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A008486 (2 * n)).toNat + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P13881771838670101390

namespace A246262

/-- `∑[(A048673(A008486(2*n))+1)%2]` -/
def P13881771838670101390.Spec : Prop :=
  ∀ n, P13881771838670101390.a n = A246262 n

end A246262

/-! ## A246262.P5348444256896775311

`∑[A249810(A008458(n))%2]`
-/

namespace A246262.P5348444256896775311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249810 (A008458 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P5348444256896775311

namespace A246262

/-- `∑[A249810(A008458(n))%2]` -/
def P5348444256896775311.Spec : Prop :=
  ∀ n, P5348444256896775311.a n = A246262 n

end A246262

/-! ## A246262.P8724634627113877059

`∑[char[A064216(2*n+1)]]`
-/

namespace A246262.P8724634627113877059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P8724634627113877059

namespace A246262

/-- `∑[char[A064216(2*n+1)]]` -/
def P8724634627113877059.Spec : Prop :=
  ∀ n, (P8724634627113877059.a n : ℤ) = A246262 n

end A246262

/-! ## A246262.P1314321775986059624

`∑[A249820(A008574(2*n))%2]`
-/

namespace A246262.P1314321775986059624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249820 (A008574 (2 * n)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P1314321775986059624

namespace A246262

/-- `∑[A249820(A008574(2*n))%2]` -/
def P1314321775986059624.Spec : Prop :=
  ∀ n, P1314321775986059624.a n = A246262 n

end A246262

/-! ## A246262.P6636974285805457979

`∑[char[A064989(4*n+1)]]`
-/

namespace A246262.P6636974285805457979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (4 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P6636974285805457979

namespace A246262

/-- `∑[char[A064989(4*n+1)]]` -/
def P6636974285805457979.Spec : Prop :=
  ∀ n, (P6636974285805457979.a n : ℤ) = A246262 n

end A246262

/-! ## A246262.P16617397040873230902

`∑[char[A252463(4*n+1)]]`
-/

namespace A246262.P16617397040873230902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (4 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P16617397040873230902

namespace A246262

/-- `∑[char[A252463(4*n+1)]]` -/
def P16617397040873230902.Spec : Prop :=
  ∀ n, (P16617397040873230902.a n : ℤ) = A246262 n

end A246262

/-!
# A246263: Numbers n such that A003961(n) is of the form 4k+3.

The programs for A246263, the canonical program `A246263.P4117973892028656856` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246263 has offset 1).

The definition of A246263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246263.P4117973892028656856

`eq[0, A246260(1+n)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246263

/-- `eq[0, A246260(1+n)]+1` -/
def P4117973892028656856.Spec : Prop :=
  ∀ n, (P4117973892028656856.a n : ℤ) = A246263 (n + 1)

theorem P4117973892028656856.correct : P4117973892028656856.Spec := by
  intro n
  simp only [A246263, Nat.add_sub_cancel]

end A246263

/-! ## A246263.P9037617615214527775

`comp[A246261(1+n)-1]+1`
-/

namespace A246263.P9037617615214527775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246263.P9037617615214527775

namespace A246263

/-- `comp[A246261(1+n)-1]+1` -/
def P9037617615214527775.Spec : Prop :=
  ∀ n, (P9037617615214527775.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P8555624777044066412

`eq[1, A336842(2*(n+1))]+1`
-/

namespace A246263.P8555624777044066412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P8555624777044066412

namespace A246263

/-- `eq[1, A336842(2*(n+1))]+1` -/
def P8555624777044066412.Spec : Prop :=
  ∀ n, (P8555624777044066412.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P730537334262450649

`lt[A246260(3*(n+1)), 1]+1`
-/

namespace A246263.P730537334262450649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246263.P730537334262450649

namespace A246263

/-- `lt[A246260(3*(n+1)), 1]+1` -/
def P730537334262450649.Spec : Prop :=
  ∀ n, (P730537334262450649.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P6089456914778505273

`eq[1, A289623(1+n)]+1`
-/

namespace A246263.P6089456914778505273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P6089456914778505273

namespace A246263

/-- `eq[1, A289623(1+n)]+1` -/
def P6089456914778505273.Spec : Prop :=
  ∀ n, (P6089456914778505273.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P3917847398855539862

`fp[A246264(n)]`
-/

namespace A246263.P3917847398855539862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A246263.P3917847398855539862

namespace A246263

/-- `fp[A246264(n)]` -/
def P3917847398855539862.Spec : Prop :=
  ∀ n, (P3917847398855539862.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P17079928161855367002

`∑[runs[n-A246262(n)]]`
-/

namespace A246263.P17079928161855367002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246262 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246263.P17079928161855367002

namespace A246263

/-- `∑[runs[n-A246262(n)]]` -/
def P17079928161855367002.Spec : Prop :=
  ∀ n, (P17079928161855367002.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P13604026941583916905

`eq[2, gcd(4, A253885(n))]+1`
-/

namespace A246263.P13604026941583916905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A253885 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246263.P13604026941583916905

namespace A246263

/-- `eq[2, gcd(4, A253885(n))]+1` -/
def P13604026941583916905.Spec : Prop :=
  ∀ n, (P13604026941583916905.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P6648681804085596042

`eq[2, gcd(2, A048673(n+1))]+1`
-/

namespace A246263.P6648681804085596042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A048673 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246263.P6648681804085596042

namespace A246263

/-- `eq[2, gcd(2, A048673(n+1))]+1` -/
def P6648681804085596042.Spec : Prop :=
  ∀ n, (P6648681804085596042.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P12197765113287632632

`eq[2, and(2, A003961(n+1))]+1`
-/

namespace A246263.P12197765113287632632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A003961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P12197765113287632632

namespace A246263

/-- `eq[2, and(2, A003961(n+1))]+1` -/
def P12197765113287632632.Spec : Prop :=
  ∀ n, (P12197765113287632632.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P2697948953254053109

`eq[3, and(3, A045965(n+1))]+1`
-/

namespace A246263.P2697948953254053109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A045965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P2697948953254053109

namespace A246263

/-- `eq[3, and(3, A045965(n+1))]+1` -/
def P2697948953254053109.Spec : Prop :=
  ∀ n, (P2697948953254053109.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P11024821110025273049

`lt[1, ((A253885(n+1)+1)%4)²]+2`
-/

namespace A246263.P11024821110025273049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253885 (n + 1) + 1) 4 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A246263.P11024821110025273049

namespace A246263

/-- `lt[1, ((A253885(n+1)+1)%4)²]+2` -/
def P11024821110025273049.Spec : Prop :=
  ∀ n, (P11024821110025273049.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P5029968517100924256

`eq[1, A289623(A008486(n))]`
-/

namespace A246263.P5029968517100924256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246263.P5029968517100924256

namespace A246263

/-- `eq[1, A289623(A008486(n))]` -/
def P5029968517100924256.Spec : Prop :=
  ∀ n, (P5029968517100924256.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P17720981911582928795

`eq[0, A246271(2*(n+1))]+1`
-/

namespace A246263.P17720981911582928795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P17720981911582928795

namespace A246263

/-- `eq[0, A246271(2*(n+1))]+1` -/
def P17720981911582928795.Spec : Prop :=
  ∀ n, (P17720981911582928795.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P4318822266890761213

`lt[A286583(2*(n+1)), 1]+1`
-/

namespace A246263.P4318822266890761213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286583 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246263.P4318822266890761213

namespace A246263

/-- `lt[A286583(2*(n+1)), 1]+1` -/
def P4318822266890761213.Spec : Prop :=
  ∀ n, (P4318822266890761213.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P15872007911287980439

`eq[1, A289623(A257143(2*n))]`
-/

namespace A246263.P15872007911287980439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257143 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246263.P15872007911287980439

namespace A246263

/-- `eq[1, A289623(A257143(2*n))]` -/
def P15872007911287980439.Spec : Prop :=
  ∀ n, (P15872007911287980439.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P13597932064280263368

`eq[1, A289623(A257088(2*n))]`
-/

namespace A246263.P13597932064280263368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257088 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246263.P13597932064280263368

namespace A246263

/-- `eq[1, A289623(A257088(2*n))]` -/
def P13597932064280263368.Spec : Prop :=
  ∀ n, (P13597932064280263368.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P13729380925272132667

`eq[2, A020639(A048673(n+1))]+1`
-/

namespace A246263.P13729380925272132667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048673 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P13729380925272132667

namespace A246263

/-- `eq[2, A020639(A048673(n+1))]+1` -/
def P13729380925272132667.Spec : Prop :=
  ∀ n, (P13729380925272132667.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P18349170088221061962

`lt[2, A020639(A048673(n+1)+1)]+1`
-/

namespace A246263.P18349170088221061962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048673 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246263.P18349170088221061962

namespace A246263

/-- `lt[2, A020639(A048673(n+1)+1)]+1` -/
def P18349170088221061962.Spec : Prop :=
  ∀ n, (P18349170088221061962.a n : ℤ) = A246263 (n + 1)

end A246263

/-! ## A246263.P5257208522543597034

`eq[A000007(n), A246271(A298026(n)-n)]`
-/

namespace A246263.P5257208522543597034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A298026 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246263.P5257208522543597034

namespace A246263

/-- `eq[A000007(n), A246271(A298026(n)-n)]` -/
def P5257208522543597034.Spec : Prop :=
  ∀ n, (P5257208522543597034.a n : ℤ) = A246263 (n + 1)

end A246263

/-!
# A246264: Inverse function for injection A246263.

The programs for A246264, the canonical program `A246264.P3731558565214309607` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246264 has offset 0).

The definition of A246264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246264.P3731558565214309607

`n-A246262(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246264

/-- `n-A246262(n)` -/
def P3731558565214309607.Spec : Prop :=
  ∀ n, P3731558565214309607.a n = A246264 n

theorem P3731558565214309607.correct : P3731558565214309607.Spec := by
  intro n
  simp only [A246264]

end A246264

/-! ## A246264.P4454018353206242073

`fp[A246263(n+1)]`
-/

namespace A246264.P4454018353206242073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A246264.P4454018353206242073

namespace A246264

/-- `fp[A246263(n+1)]` -/
def P4454018353206242073.Spec : Prop :=
  ∀ n, (P4454018353206242073.a n : ℤ) = A246264 n

end A246264

/-! ## A246264.P9869406906374726292

`∑[char[A246263(1+n)]]`
-/

namespace A246264.P9869406906374726292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P9869406906374726292

namespace A246264

/-- `∑[char[A246263(1+n)]]` -/
def P9869406906374726292.Spec : Prop :=
  ∀ n, (P9869406906374726292.a n : ℤ) = A246264 n

end A246264

/-! ## A246264.P12175354765736340842

`n-∑[char[A246261(n+1)]]`
-/

namespace A246264.P12175354765736340842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A246264.P12175354765736340842

namespace A246264

/-- `n-∑[char[A246261(n+1)]]` -/
def P12175354765736340842.Spec : Prop :=
  ∀ n, P12175354765736340842.a n = A246264 n

end A246264

/-! ## A246264.P12091853219718975314

`a(n-1)+1-A246260(n)` with `a(0)=0`
-/

namespace A246264.P12091853219718975314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A246260 n)

end

end A246264.P12091853219718975314

namespace A246264

/-- `a(n-1)+1-A246260(n)` -/
def P12091853219718975314.Spec : Prop :=
  ∀ n, P12091853219718975314.a n = A246264 n

end A246264

/-! ## A246264.P15890815712510411642

`A246260(n+1)-∑[A246260(n+1)]+n`
-/

namespace A246264.P15890815712510411642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A246264.P15890815712510411642

namespace A246264

/-- `A246260(n+1)-∑[A246260(n+1)]+n` -/
def P15890815712510411642.Spec : Prop :=
  ∀ n, P15890815712510411642.a n = A246264 n

end A246264

/-! ## A246264.P1434372001845095660

`∑[char[comp[(n+1)*A048673(n+1)%2]]]`
-/

namespace A246264.P1434372001845095660
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A048673 (n + 1)) 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P1434372001845095660

namespace A246264

/-- `∑[char[comp[(n+1)*A048673(n+1)%2]]]` -/
def P1434372001845095660.Spec : Prop :=
  ∀ n, (P1434372001845095660.a n : ℤ) = A246264 n

end A246264

/-! ## A246264.P18289941094142011581

`∑[(A048673(A008486(2*n)+3*n)+1)%2]`
-/

namespace A246264.P18289941094142011581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A008486 (2 * n) + (3 * n : ℤ)).toNat + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P18289941094142011581

namespace A246264

/-- `∑[(A048673(A008486(2*n)+3*n)+1)%2]` -/
def P18289941094142011581.Spec : Prop :=
  ∀ n, P18289941094142011581.a n = A246264 n

end A246264

/-! ## A246264.P17933637112098554121

`∑[char[A064216(2*(n+1))]]`
-/

namespace A246264.P17933637112098554121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P17933637112098554121

namespace A246264

/-- `∑[char[A064216(2*(n+1))]]` -/
def P17933637112098554121.Spec : Prop :=
  ∀ n, (P17933637112098554121.a n : ℤ) = A246264 n

end A246264

/-! ## A246264.P9675824192529450160

`∑[char[A064989(3+4*n)]]`
-/

namespace A246264.P9675824192529450160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (3 + 4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P9675824192529450160

namespace A246264

/-- `∑[char[A064989(3+4*n)]]` -/
def P9675824192529450160.Spec : Prop :=
  ∀ n, (P9675824192529450160.a n : ℤ) = A246264 n

end A246264

/-! ## A246264.P7195709297855660319

`∑[char[A252463(3+4*n)]]`
-/

namespace A246264.P7195709297855660319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (3 + 4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P7195709297855660319

namespace A246264

/-- `∑[char[A252463(3+4*n)]]` -/
def P7195709297855660319.Spec : Prop :=
  ∀ n, (P7195709297855660319.a n : ℤ) = A246264 n

end A246264

/-!
# A246265: Permutation of natural numbers: a(n) = (1+A048673(A246261(n)))/2.

The programs for A246265, the canonical program `A246265.P3263290630060116708` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246265 has offset 1).

The definition of A246265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246261, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246265.P3263290630060116708

`(1+A048673(A246261(n+1)))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246265

/-- `(1+A048673(A246261(n+1)))/2` -/
def P3263290630060116708.Spec : Prop :=
  ∀ n, P3263290630060116708.a n = (A246265 (n + 1) : ℚ)

end A246265

/-! ## A246265.P3853960170787151766

`ceil(A048673(A246261(1+n))/2)`
-/

namespace A246265.P3853960170787151766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048673 (A246261 (1 + n)).toNat : ℚ) / 2⌉

end

end A246265.P3853960170787151766

namespace A246265

/-- `ceil(A048673(A246261(1+n))/2)` -/
def P3853960170787151766.Spec : Prop :=
  ∀ n, P3853960170787151766.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P11047514697759993247

`fo[A246266(n+1)-1]+1`
-/

namespace A246265.P11047514697759993247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246266 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246265.P11047514697759993247

namespace A246265

/-- `fo[A246266(n+1)-1]+1` -/
def P11047514697759993247.Spec : Prop :=
  ∀ n, (P11047514697759993247.a n : ℤ) = A246265 (n + 1)

end A246265

/-! ## A246265.P6962386616938883761

`(filter[A048673(n+1), A000035(#)]+1)/2`
-/

namespace A246265.P6962386616938883761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n) + 1 : ℚ) / 2

end

end A246265.P6962386616938883761

namespace A246265

/-- `(filter[A048673(n+1), A000035(#)]+1)/2` -/
def P6962386616938883761.Spec : Prop :=
  ∀ n, P6962386616938883761.a n = (A246265 (n + 1) : ℚ)

end A246265

/-! ## A246265.P16474134868680115854

`A003602(A048673(A246261(n+1)))`
-/

namespace A246265.P16474134868680115854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A048673 (A246261 (n + 1)).toNat).toNat

end

end A246265.P16474134868680115854

namespace A246265

/-- `A003602(A048673(A246261(n+1)))` -/
def P16474134868680115854.Spec : Prop :=
  ∀ n, P16474134868680115854.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P8051004391516723550

`A061395(p?[A067747(A048673(n+1))])`
-/

namespace A246265.P8051004391516723550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246265.P8051004391516723550

namespace A246265

/-- `A061395(p?[A067747(A048673(n+1))])` -/
def P8051004391516723550.Spec : Prop :=
  ∀ n, P8051004391516723550.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P4819846042030495245

`A000720(p?[A209259(A048673(n+1))])`
-/

namespace A246265.P4819846042030495245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246265.P4819846042030495245

namespace A246265

/-- `A000720(p?[A209259(A048673(n+1))])` -/
def P4819846042030495245.Spec : Prop :=
  ∀ n, P4819846042030495245.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P16543932172772836026

`A246277(A048673(A246261(n+1))+1)`
-/

namespace A246265.P16543932172772836026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A048673 (A246261 (n + 1)).toNat + 1).toNat

end

end A246265.P16543932172772836026

namespace A246265

/-- `A246277(A048673(A246261(n+1))+1)` -/
def P16543932172772836026.Spec : Prop :=
  ∀ n, P16543932172772836026.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P8403982193303227722

`A049084(p?[A209259(A048673(n+1))])`
-/

namespace A246265.P8403982193303227722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246265.P8403982193303227722

namespace A246265

/-- `A049084(p?[A209259(A048673(n+1))])` -/
def P8403982193303227722.Spec : Prop :=
  ∀ n, P8403982193303227722.a n = A246265 (n + 1)

end A246265

/-! ## A246265.P12709661650819189844

`A263323(p?[A209259(A048673(n+1))])`
-/

namespace A246265.P12709661650819189844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246265.P12709661650819189844

namespace A246265

/-- `A263323(p?[A209259(A048673(n+1))])` -/
def P12709661650819189844.Spec : Prop :=
  ∀ n, P12709661650819189844.a n = A246265 (n + 1)

end A246265

/-!
# A246266: Permutation of natural numbers: a(n) = A246262(A064216((2*n)-1)).

The programs for A246266, the canonical program `A246266.P5502087740169364243` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246266 has offset 1).

The definition of A246266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246266.P5502087740169364243

`A246262(A064216(2*n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246266

/-- `A246262(A064216(2*n+1))` -/
def P5502087740169364243.Spec : Prop :=
  ∀ n, P5502087740169364243.a n = A246266 (n + 1)

theorem P5502087740169364243.correct : P5502087740169364243.Spec := by
  intro n
  simp only [A246266, Nat.add_sub_cancel]

end A246266

/-! ## A246266.P16789058806583263847

`A246262(A064216(2*(n+1)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246266.P16789058806583263847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A064216 (2 * (n + 1) - 1)).toNat

end

end A246266.P16789058806583263847

namespace A246266

/-- `A246262(A064216(2*(n+1)-1))` -/
def P16789058806583263847.Spec : Prop :=
  ∀ n, P16789058806583263847.a n = A246266 (n + 1)

end A246266

/-! ## A246266.P9316291751399944809

`A246262(A064989(4*n+1))`
-/

namespace A246266.P9316291751399944809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A064989 (4 * n + 1)).toNat

end

end A246266.P9316291751399944809

namespace A246266

/-- `A246262(A064989(4*n+1))` -/
def P9316291751399944809.Spec : Prop :=
  ∀ n, P9316291751399944809.a n = A246266 (n + 1)

end A246266

/-! ## A246266.P2058236357737174930

`fo[A246265(n+1)-1]+1`
-/

namespace A246266.P2058236357737174930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246265 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246266.P2058236357737174930

namespace A246266

/-- `fo[A246265(n+1)-1]+1` -/
def P2058236357737174930.Spec : Prop :=
  ∀ n, (P2058236357737174930.a n : ℤ) = A246266 (n + 1)

end A246266

/-!
# A246267: Permutation of natural numbers: a(n) = A048673(A246263(n))/2.

The programs for A246267, the canonical program `A246267.P11984409630168091738` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246267 has offset 1).

The definition of A246267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246267.P11984409630168091738

`A048673(A246263(n+1))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246267

/-- `A048673(A246263(n+1))/2` -/
def P11984409630168091738.Spec : Prop :=
  ∀ n, P11984409630168091738.a n = (A246267 (n + 1) : ℚ)

end A246267

/-! ## A246267.P13615860773441947279

`A048673(eq[3, and(3, A045965(n+1))]+1)/2`
-/

namespace A246267.P13615860773441947279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A045965 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A246267.P13615860773441947279

namespace A246267

/-- `A048673(eq[3, and(3, A045965(n+1))]+1)/2` -/
def P13615860773441947279.Spec : Prop :=
  ∀ n, P13615860773441947279.a n = (A246267 (n + 1) : ℚ)

end A246267

/-! ## A246267.P7173123298892215842

`fo[A246268(n+1)-1]+1`
-/

namespace A246267.P7173123298892215842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246268 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246267.P7173123298892215842

namespace A246267

/-- `fo[A246268(n+1)-1]+1` -/
def P7173123298892215842.Spec : Prop :=
  ∀ n, (P7173123298892215842.a n : ℤ) = A246267 (n + 1)

end A246267

/-! ## A246267.P8606002333098517941

`A004525(A048673(A246263(n+1)))`
-/

namespace A246267.P8606002333098517941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048673 (A246263 (n + 1)).toNat).toNat

end

end A246267.P8606002333098517941

namespace A246267

/-- `A004525(A048673(A246263(n+1)))` -/
def P8606002333098517941.Spec : Prop :=
  ∀ n, P8606002333098517941.a n = A246267 (n + 1)

end A246267

/-! ## A246267.P5241524494892169411

`A000720(p?[A073846(A048673(n+1))])`
-/

namespace A246267.P5241524494892169411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246267.P5241524494892169411

namespace A246267

/-- `A000720(p?[A073846(A048673(n+1))])` -/
def P5241524494892169411.Spec : Prop :=
  ∀ n, P5241524494892169411.a n = A246267 (n + 1)

end A246267

/-! ## A246267.P9840175716170909479

`A061395(p?[A073846(A048673(n+1))])`
-/

namespace A246267.P9840175716170909479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246267.P9840175716170909479

namespace A246267

/-- `A061395(p?[A073846(A048673(n+1))])` -/
def P9840175716170909479.Spec : Prop :=
  ∀ n, P9840175716170909479.a n = A246267 (n + 1)

end A246267

/-! ## A246267.P2570788283546436850

`A055396(p?[A207790(A048673(n+1))])`
-/

namespace A246267.P2570788283546436850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246267.P2570788283546436850

namespace A246267

/-- `A055396(p?[A207790(A048673(n+1))])` -/
def P2570788283546436850.Spec : Prop :=
  ∀ n, P2570788283546436850.a n = A246267 (n + 1)

end A246267

/-!
# A246268: Permutation of natural numbers: a(n) = A246264(A064216(2*n)).

The programs for A246268, the canonical program `A246268.P8349117576513526915` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246268 has offset 1).

The definition of A246268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246268.P8349117576513526915

`A246264(A064216(2*(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A246268

/-- `A246264(A064216(2*(n+1)))` -/
def P8349117576513526915.Spec : Prop :=
  ∀ n, P8349117576513526915.a n = A246268 (n + 1)

theorem P8349117576513526915.correct : P8349117576513526915.Spec := by
  intro n
  simp only [A246268, Nat.add_sub_cancel]

end A246268

/-! ## A246268.P1618148648227030382

`A246264(A064989(4*(n+1)-1))`
-/

namespace A246268.P1618148648227030382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 (A064989 (4 * (n + 1) - 1)).toNat

end

end A246268.P1618148648227030382

namespace A246268

/-- `A246264(A064989(4*(n+1)-1))` -/
def P1618148648227030382.Spec : Prop :=
  ∀ n, P1618148648227030382.a n = A246268 (n + 1)

end A246268

/-! ## A246268.P12727166951854371408

`fo[A246267(n+1)-1]+1`
-/

namespace A246268.P12727166951854371408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246267 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246268.P12727166951854371408

namespace A246268

/-- `fo[A246267(n+1)-1]+1` -/
def P12727166951854371408.Spec : Prop :=
  ∀ n, (P12727166951854371408.a n : ℤ) = A246268 (n + 1)

end A246268

/-! ## A246268.P10812206634287436987

`A064216(2*n+2)-A246262(A064216(2*n+2))`
-/

namespace A246268.P10812206634287436987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (2 * n + 2) - A246262 (A064216 (2 * n + 2)).toNat

end

end A246268.P10812206634287436987

namespace A246268

/-- `A064216(2*n+2)-A246262(A064216(2*n+2))` -/
def P10812206634287436987.Spec : Prop :=
  ∀ n, P10812206634287436987.a n = A246268 (n + 1)

end A246268

/-!
# A246269: a(1) = 1, a(p(k)) = p(k+1) mod 4 for k-th prime p(k) and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A246269, the canonical program `A246269.P7585923862198389886` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246269 has offset 1).

The definition of A246269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246269.P8547476170112027064

`A000244(A246270(n+1))`
-/

namespace A246269.P8547476170112027064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A246270 (n + 1)).toNat

end

end A246269.P8547476170112027064

namespace A246269

/-- `A000244(A246270(n+1))` -/
def P8547476170112027064.Spec : Prop :=
  ∀ n, P8547476170112027064.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P7585923862198389886

`A065338(A003961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246269

/-- `A065338(A003961(n+1))` -/
def P7585923862198389886.Spec : Prop :=
  ∀ n, P7585923862198389886.a n = A246269 (n + 1)

theorem P7585923862198389886.correct : P7585923862198389886.Spec := by
  intro n
  simp only [A246269, Nat.add_sub_cancel]

end A246269

/-! ## A246269.P5773014516353703772

`3^A246270(n+1)`
-/

namespace A246269.P5773014516353703772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A246270 (n + 1) : ℤ)

end

end A246269.P5773014516353703772

namespace A246269

/-- `3^A246270(n+1)` -/
def P5773014516353703772.Spec : Prop :=
  ∀ n, P5773014516353703772.a n = (A246269 (n + 1) : ℚ)

end A246269

/-! ## A246269.P8791978136869338022

`3^∑{d}[n+1, A121262(A003973(A014963(#)))]`
-/

namespace A246269.P8791978136869338022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A121262 (A003973 (A014963 d).toNat).toNat : ℤ)

end

end A246269.P8791978136869338022

namespace A246269

/-- `3^∑{d}[n+1, A121262(A003973(A014963(#)))]` -/
def P8791978136869338022.Spec : Prop :=
  ∀ n, P8791978136869338022.a n = (A246269 (n + 1) : ℚ)

end A246269

/-! ## A246269.P17115859929157439757

`A278509(A045965(n+1))`
-/

namespace A246269.P17115859929157439757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A045965 (n + 1)).toNat

end

end A246269.P17115859929157439757

namespace A246269

/-- `A278509(A045965(n+1))` -/
def P17115859929157439757.Spec : Prop :=
  ∀ n, P17115859929157439757.a n = A246269 (n + 1)

end A246269

/-!
# A246270: Number of prime factors of the form 4k+3 (counted with multiplicity) in A003961(n): a(n) = A065339(A003961(n)).

The programs for A246270, the canonical program `A246270.P10934646517681247770` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246270 has offset 1).

The definition of A246270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246270.P14944268092153562806

`A001222(A246269(n+1))`
-/

namespace A246270.P14944268092153562806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246269 (n + 1)).toNat

end

end A246270.P14944268092153562806

namespace A246270

/-- `A001222(A246269(n+1))` -/
def P14944268092153562806.Spec : Prop :=
  ∀ n, P14944268092153562806.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P15698686738836142393

`A007949(A246269(n+1))`
-/

namespace A246270.P15698686738836142393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A246269 (n + 1)).toNat

end

end A246270.P15698686738836142393

namespace A246270

/-- `A007949(A246269(n+1))` -/
def P15698686738836142393.Spec : Prop :=
  ∀ n, P15698686738836142393.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P10934646517681247770

`A065339(A003961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246270

/-- `A065339(A003961(n+1))` -/
def P10934646517681247770.Spec : Prop :=
  ∀ n, P10934646517681247770.a n = A246270 (n + 1)

theorem P10934646517681247770.correct : P10934646517681247770.Spec := by
  intro n
  simp only [A246270, Nat.add_sub_cancel]

end A246270

/-! ## A246270.P4729660864213778478

`val(A246269(1+n), 3)`
-/

namespace A246270.P4729660864213778478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246269 (1 + n)).toNat 3

end

end A246270.P4729660864213778478

namespace A246270

/-- `val(A246269(1+n), 3)` -/
def P4729660864213778478.Spec : Prop :=
  ∀ n, (P4729660864213778478.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P11845677181243339903

`∑{e}[A246269(n+1), #]`
-/

namespace A246270.P11845677181243339903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A246270.P11845677181243339903

namespace A246270

/-- `∑{e}[A246269(n+1), #]` -/
def P11845677181243339903.Spec : Prop :=
  ∀ n, (P11845677181243339903.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P12016234230306232519

`A305611(A246269(3*(n+1)))`
-/

namespace A246270.P12016234230306232519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (A246269 (3 * (n + 1))).toNat

end

end A246270.P12016234230306232519

namespace A246270

/-- `A305611(A246269(3*(n+1)))` -/
def P12016234230306232519.Spec : Prop :=
  ∀ n, P12016234230306232519.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P12468739434740810088

`val(A278509(A253885(n)+1), 3)`
-/

namespace A246270.P12468739434740810088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278509 (A253885 n + 1).toNat).toNat 3

end

end A246270.P12468739434740810088

namespace A246270

/-- `val(A278509(A253885(n)+1), 3)` -/
def P12468739434740810088.Spec : Prop :=
  ∀ n, (P12468739434740810088.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P13392335913859193545

`val(A278509(A243501(n+1)-1), 3)`
-/

namespace A246270.P13392335913859193545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278509 (A243501 (n + 1) - 1).toNat).toNat 3

end

end A246270.P13392335913859193545

namespace A246270

/-- `val(A278509(A243501(n+1)-1), 3)` -/
def P13392335913859193545.Spec : Prop :=
  ∀ n, (P13392335913859193545.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P10407358731478042591

`val(A278509(2*A048673(n+1)-1), 3)`
-/

namespace A246270.P10407358731478042591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278509 (2 * A048673 (n + 1) - 1).toNat).toNat 3

end

end A246270.P10407358731478042591

namespace A246270

/-- `val(A278509(2*A048673(n+1)-1), 3)` -/
def P10407358731478042591.Spec : Prop :=
  ∀ n, (P10407358731478042591.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P11596407127589989985

`val(A278509(A252748(n+1)+2*(n+1)), 3)`
-/

namespace A246270.P11596407127589989985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278509 (A252748 (n + 1) + (2 * (n + 1) : ℤ)).toNat).toNat 3

end

end A246270.P11596407127589989985

namespace A246270

/-- `val(A278509(A252748(n+1)+2*(n+1)), 3)` -/
def P11596407127589989985.Spec : Prop :=
  ∀ n, (P11596407127589989985.a n : ℤ) = A246270 (n + 1)

end A246270

/-! ## A246270.P17540081095097089875

`A078458(2*A246269(n+1))-2`
-/

namespace A246270.P17540081095097089875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (2 * A246269 (n + 1)).toNat - 2

end

end A246270.P17540081095097089875

namespace A246270

/-- `A078458(2*A246269(n+1))-2` -/
def P17540081095097089875.Spec : Prop :=
  ∀ n, P17540081095097089875.a n = A246270 (n + 1)

end A246270

/-!
# A246271: Starting from A003961(n), the number of additional iterations of A003961 required for the result to be of the form 4k+1.

The programs for A246271, there is no canonical definition to state claims against.
-/

/-! ## A246271.P5781699821192474522

`A085975(lcm(A095105(n+1), A095115(n+1)))`
-/

namespace A246271.P5781699821192474522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (Int.lcm (A095105 (n + 1)) (A095115 (n + 1)))

end

end A246271.P5781699821192474522

/-! ## A246271.P13628701001273624497

`A331591(A131323(n+1)^A286583(n+1))`
-/

namespace A246271.P13628701001273624497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (SequenceMachineLib.roundAway ((A131323 (n + 1) : ℚ) ^ (A286583 (n + 1) : ℤ))).toNat

end

end A246271.P13628701001273624497

/-! ## A246271.P4250592896601642283

`A286582(A286687(n+1)^A286583(n+1))`
-/

namespace A246271.P4250592896601642283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286582 (SequenceMachineLib.roundAway ((A286687 (n + 1) : ℚ) ^ (A286583 (n + 1) : ℤ))).toNat

end

end A246271.P4250592896601642283

/-! ## A246271.P14248501352191559778

`A122338(A248663(n+1))%3`
-/

namespace A246271.P14248501352191559778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122338 (A248663 (n + 1)).toNat) 3

end

end A246271.P14248501352191559778

/-! ## A246271.P14932487002662823726

`A348394(2*n+3)%(A003961(n+1)%4)`
-/

namespace A246271.P14932487002662823726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348394 (2 * n + 3)) (Int.tmod (A003961 (n + 1)) 4)

end

end A246271.P14932487002662823726

/-!
# A246273: Transpose of square array A246275.

The programs for A246273, the canonical program `A246273.P6183225685175068405` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246273 has offset 1).

The definition of A246273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246273.P6183225685175068405

`A246275(A038722(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A246273

/-- `A246275(A038722(n+1))` -/
def P6183225685175068405.Spec : Prop :=
  ∀ n, P6183225685175068405.a n = A246273 (n + 1)

theorem P6183225685175068405.correct : P6183225685175068405.Spec := by
  intro n
  simp only [A246273, Nat.add_sub_cancel]

end A246273

/-! ## A246273.P10913044668532807143

`A246676(A054582(n))`
-/

namespace A246273.P10913044668532807143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A054582 n).toNat

end

end A246273.P10913044668532807143

namespace A246273

/-- `A246676(A054582(n))` -/
def P10913044668532807143.Spec : Prop :=
  ∀ n, P10913044668532807143.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P9656751486778975879

`A246279(n+1)-1`
-/

namespace A246273.P9656751486778975879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246279 (n + 1) - 1

end

end A246273.P9656751486778975879

namespace A246273

/-- `A246279(n+1)-1` -/
def P9656751486778975879.Spec : Prop :=
  ∀ n, P9656751486778975879.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P15519471057215455544

`A246275(∑[char[∑[n]]]²-n)`
-/

namespace A246273.P15519471057215455544
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A246273.P15519471057215455544

namespace A246273

/-- `A246275(∑[char[∑[n]]]²-n)` -/
def P15519471057215455544.Spec : Prop :=
  ∀ n, P15519471057215455544.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P18106857410101239025

`A246278(∑[char[∑[n]]]²-n+1)-1`
-/

namespace A246273.P18106857410101239025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat - 1

end

end A246273.P18106857410101239025

namespace A246273

/-- `A246278(∑[char[∑[n]]]²-n+1)-1` -/
def P18106857410101239025.Spec : Prop :=
  ∀ n, P18106857410101239025.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P2430652206271555481

`A249816(A083140(n+2)-1)`
-/

namespace A246273.P2430652206271555481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A083140 (n + 2) - 1).toNat

end

end A246273.P2430652206271555481

namespace A246273

/-- `A249816(A083140(n+2)-1)` -/
def P2430652206271555481.Spec : Prop :=
  ∀ n, P2430652206271555481.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P8546544600043344839

`A279336(A256995(n+2))-1`
-/

namespace A246273.P8546544600043344839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256995 (n + 2)).toNat - 1

end

end A246273.P8546544600043344839

namespace A246273

/-- `A279336(A256995(n+2))-1` -/
def P8546544600043344839.Spec : Prop :=
  ∀ n, P8546544600043344839.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P16571915058701978858

`fo[A246274(n+1)-1]+1`
-/

namespace A246273.P16571915058701978858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246273.P16571915058701978858

namespace A246273

/-- `fo[A246274(n+1)-1]+1` -/
def P16571915058701978858.Spec : Prop :=
  ∀ n, (P16571915058701978858.a n : ℤ) = A246273 (n + 1)

end A246273

/-! ## A246273.P13640355702099464909

`A023443(A246279(n+1))`
-/

namespace A246273.P13640355702099464909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246279 (n + 1)).toNat

end

end A246273.P13640355702099464909

namespace A246273

/-- `A023443(A246279(n+1))` -/
def P13640355702099464909.Spec : Prop :=
  ∀ n, P13640355702099464909.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P10099438764941558710

`A249816(A114881(n+1))`
-/

namespace A246273.P10099438764941558710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A114881 (n + 1)).toNat

end

end A246273.P10099438764941558710

namespace A246273

/-- `A249816(A114881(n+1))` -/
def P10099438764941558710.Spec : Prop :=
  ∀ n, P10099438764941558710.a n = A246273 (n + 1)

end A246273

/-!
# A246274: Inverse of A246273 considered as a permutation of natural numbers.

The programs for A246274, the canonical program `A246274.P518949399975886002` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246274 has offset 1).

The definition of A246274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209268, A246675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246274.P518949399975886002

`A209268(A246675(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A246274

/-- `A209268(A246675(n+1))` -/
def P518949399975886002.Spec : Prop :=
  ∀ n, P518949399975886002.a n = A246274 (n + 1)

theorem P518949399975886002.correct : P518949399975886002.Spec := by
  intro n
  simp only [A246274, Nat.add_sub_cancel]

end A246274

/-! ## A246274.P17374062211146541894

`A246277(n+2)+A246276(n+1)-A055396(n+2)`
-/

namespace A246274.P17374062211146541894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 2) + (A246276 (n + 1) - A055396 (n + 2))

end

end A246274.P17374062211146541894

namespace A246274

/-- `A246277(n+2)+A246276(n+1)-A055396(n+2)` -/
def P17374062211146541894.Spec : Prop :=
  ∀ n, P17374062211146541894.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P17873755813639423900

`A250252(A249815(n+1))`
-/

namespace A246274.P17873755813639423900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A249815 (n + 1)).toNat

end

end A246274.P17873755813639423900

namespace A246274

/-- `A250252(A249815(n+1))` -/
def P17873755813639423900.Spec : Prop :=
  ∀ n, P17873755813639423900.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P5337658798428845136

`A038722(A246276(n+1))`
-/

namespace A246274.P5337658798428845136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A246276 (n + 1)).toNat

end

end A246274.P5337658798428845136

namespace A246274

/-- `A038722(A246276(n+1))` -/
def P5337658798428845136.Spec : Prop :=
  ∀ n, P5337658798428845136.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P4224138478024871638

`A061579(A246276(n+1)-1)+1`
-/

namespace A246274.P4224138478024871638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A246276 (n + 1) - 1).toNat + 1

end

end A246274.P4224138478024871638

namespace A246274

/-- `A061579(A246276(n+1)-1)+1` -/
def P4224138478024871638.Spec : Prop :=
  ∀ n, P4224138478024871638.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P13401161086890347583

`fo[A246273(n+1)-1]+1`
-/

namespace A246274.P13401161086890347583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246274.P13401161086890347583

namespace A246274

/-- `fo[A246273(n+1)-1]+1` -/
def P13401161086890347583.Spec : Prop :=
  ∀ n, (P13401161086890347583.a n : ℤ) = A246274 (n + 1)

end A246274

/-! ## A246274.P13468946013145570287

`A246276(A246273(A246276(A246675(A246676(n+1)))))`
-/

namespace A246274.P13468946013145570287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246273 (A246276 (A246675 (A246676 (n + 1)).toNat).toNat).toNat).toNat

end

end A246274.P13468946013145570287

namespace A246274

/-- `A246276(A246273(A246276(A246675(A246676(n+1)))))` -/
def P13468946013145570287.Spec : Prop :=
  ∀ n, P13468946013145570287.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P3028520399332390126

`A246276(A246273(A246276(A246276(A246275(n+1)))))`
-/

namespace A246274.P3028520399332390126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246273 (A246276 (A246276 (A246275 (n + 1)).toNat).toNat).toNat).toNat

end

end A246274.P3028520399332390126

namespace A246274

/-- `A246276(A246273(A246276(A246276(A246275(n+1)))))` -/
def P3028520399332390126.Spec : Prop :=
  ∀ n, P3028520399332390126.a n = A246274 (n + 1)

end A246274

/-! ## A246274.P17684463448025279767

`A256996(A279337(n+2))-1`
-/

namespace A246274.P17684463448025279767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256996 (A279337 (n + 2)).toNat - 1

end

end A246274.P17684463448025279767

namespace A246274

/-- `A256996(A279337(n+2))-1` -/
def P17684463448025279767.Spec : Prop :=
  ∀ n, P17684463448025279767.a n = A246274 (n + 1)

end A246274

/-!
# A246275: Square array A246278 minus 1.

The programs for A246275, the canonical program `A246275.P16479209190293885022` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246275 has offset 1).

The definition of A246275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246278, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246275.P16479209190293885022

`A246278(n+2)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A246275

/-- `A246278(n+2)-1` -/
def P16479209190293885022.Spec : Prop :=
  ∀ n, P16479209190293885022.a n = A246275 (n + 1)

theorem P16479209190293885022.correct : P16479209190293885022.Spec := by
  intro n
  simp only [A246275, Nat.add_sub_cancel]

end A246275

/-! ## A246275.P12377746476022924449

`A246273(A038722(n+1))`
-/

namespace A246275.P12377746476022924449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A038722 (n + 1)).toNat

end

end A246275.P12377746476022924449

namespace A246275

/-- `A246273(A038722(n+1))` -/
def P12377746476022924449.Spec : Prop :=
  ∀ n, P12377746476022924449.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P6338729484550769928

`A341606(n+1)*A355925(n+1)-1`
-/

namespace A246275.P6338729484550769928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1) * A355925 (n + 1) - 1

end

end A246275.P6338729484550769928

namespace A246275

/-- `A341606(n+1)*A355925(n+1)-1` -/
def P6338729484550769928.Spec : Prop :=
  ∀ n, P6338729484550769928.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P2987799799705042238

`A379499(n+1)/A355927(n+1)-1`
-/

namespace A246275.P2987799799705042238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379499 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ) - 1

end

end A246275.P2987799799705042238

namespace A246275

/-- `A379499(n+1)/A355927(n+1)-1` -/
def P2987799799705042238.Spec : Prop :=
  ∀ n, P2987799799705042238.a n = (A246275 (n + 1) : ℚ)

end A246275

/-! ## A246275.P15416233608549060289

`A246273(∑[char[∑[n]]]²-n)`
-/

namespace A246275.P15416233608549060289
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A246275.P15416233608549060289

namespace A246275

/-- `A246273(∑[char[∑[n]]]²-n)` -/
def P15416233608549060289.Spec : Prop :=
  ∀ n, P15416233608549060289.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P5574850046331920053

`A246278(2+n)+xor(n, -1)+n`
-/

namespace A246275.P5574850046331920053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (2 + n) + Int.xor (n : ℤ) (-1) + (n : ℤ)

end

end A246275.P5574850046331920053

namespace A246275

/-- `A246278(2+n)+xor(n, -1)+n` -/
def P5574850046331920053.Spec : Prop :=
  ∀ n, P5574850046331920053.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P12376058490874402243

`A249816(A249741(n+1))`
-/

namespace A246275.P12376058490874402243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249741 (n + 1)).toNat

end

end A246275.P12376058490874402243

namespace A246275

/-- `A249816(A249741(n+1))` -/
def P12376058490874402243.Spec : Prop :=
  ∀ n, P12376058490874402243.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P10925089683506276321

`A249818(A083221(n+2))-1`
-/

namespace A246275.P10925089683506276321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083221 (n + 2)).toNat - 1

end

end A246275.P10925089683506276321

namespace A246275

/-- `A249818(A083221(n+2))-1` -/
def P10925089683506276321.Spec : Prop :=
  ∀ n, P10925089683506276321.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P4200771903667232153

`A249818(A249741(n+1)+1)-1`
-/

namespace A246275.P4200771903667232153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A249741 (n + 1) + 1).toNat - 1

end

end A246275.P4200771903667232153

namespace A246275

/-- `A249818(A249741(n+1)+1)-1` -/
def P4200771903667232153.Spec : Prop :=
  ∀ n, P4200771903667232153.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P7890892829136665279

`A280496(2*A083221(n+2))-1`
-/

namespace A246275.P7890892829136665279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * A083221 (n + 2)).toNat - 1

end

end A246275.P7890892829136665279

namespace A246275

/-- `A280496(2*A083221(n+2))-1` -/
def P7890892829136665279.Spec : Prop :=
  ∀ n, P7890892829136665279.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P802862407707770155

`A279336(A256997(n+2))-1`
-/

namespace A246275.P802862407707770155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256997 (n + 2)).toNat - 1

end

end A246275.P802862407707770155

namespace A246275

/-- `A279336(A256997(n+2))-1` -/
def P802862407707770155.Spec : Prop :=
  ∀ n, P802862407707770155.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P2905190613969040529

`A246676(A135764(n+1))`
-/

namespace A246275.P2905190613969040529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A135764 (n + 1)).toNat

end

end A246275.P2905190613969040529

namespace A246275

/-- `A246676(A135764(n+1))` -/
def P2905190613969040529.Spec : Prop :=
  ∀ n, P2905190613969040529.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P9053979898634387334

`A005940(A253551(n+1)+1)-1`
-/

namespace A246275.P9053979898634387334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A253551 (n + 1) + 1).toNat - 1

end

end A246275.P9053979898634387334

namespace A246275

/-- `A005940(A253551(n+1)+1)-1` -/
def P9053979898634387334.Spec : Prop :=
  ∀ n, P9053979898634387334.a n = A246275 (n + 1)

end A246275

/-!
# A246276: Inverse of A246275 considered as a permutation of natural numbers.

The programs for A246276, the canonical program `A246276.P6048941597672880664` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246276 has offset 1).

The definition of A246276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246276.P2948443555380334575

`A252752(2+n)-1`
-/

namespace A246276.P2948443555380334575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (2 + n) - 1

end

end A246276.P2948443555380334575

namespace A246276

/-- `A252752(2+n)-1` -/
def P2948443555380334575.Spec : Prop :=
  ∀ n, P2948443555380334575.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P6048941597672880664

`A055396(n+2)+A246274(n+1)-A246277(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A246276

/-- `A055396(n+2)+A246274(n+1)-A246277(n+2)` -/
def P6048941597672880664.Spec : Prop :=
  ∀ n, P6048941597672880664.a n = A246276 (n + 1)

theorem P6048941597672880664.correct : P6048941597672880664.Spec := by
  intro n
  simp only [A246276, Nat.add_sub_cancel]

end A246276

/-! ## A246276.P9095661154493912655

`A252460(A249817(2+n))-1`
-/

namespace A246276.P9095661154493912655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A249817 (2 + n)).toNat - 1

end

end A246276.P9095661154493912655

namespace A246276

/-- `A252460(A249817(2+n))-1` -/
def P9095661154493912655.Spec : Prop :=
  ∀ n, P9095661154493912655.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P891257355359778972

`A249742(A249815(n+1))`
-/

namespace A246276.P891257355359778972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A249815 (n + 1)).toNat

end

end A246276.P891257355359778972

namespace A246276

/-- `A249742(A249815(n+1))` -/
def P891257355359778972.Spec : Prop :=
  ∀ n, P891257355359778972.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P17050809555502485546

`A038722(A246274(n+1))`
-/

namespace A246276.P17050809555502485546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A246274 (n + 1)).toNat

end

end A246276.P17050809555502485546

namespace A246276

/-- `A038722(A246274(n+1))` -/
def P17050809555502485546.Spec : Prop :=
  ∀ n, P17050809555502485546.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P4921619163169389901

`A023443(A252752(n+2))`
-/

namespace A246276.P4921619163169389901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A252752 (n + 2)).toNat

end

end A246276.P4921619163169389901

namespace A246276

/-- `A023443(A252752(n+2))` -/
def P4921619163169389901.Spec : Prop :=
  ∀ n, P4921619163169389901.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P9336359075482148726

`fo[A246275(n+1)-1]+1`
-/

namespace A246276.P9336359075482148726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246276.P9336359075482148726

namespace A246276

/-- `fo[A246275(n+1)-1]+1` -/
def P9336359075482148726.Spec : Prop :=
  ∀ n, (P9336359075482148726.a n : ℤ) = A246276 (n + 1)

end A246276

/-! ## A246276.P3208347516349285786

`fo[A246278(n+2)-2]+1`
-/

namespace A246276.P3208347516349285786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A246276.P3208347516349285786

namespace A246276

/-- `fo[A246278(n+2)-2]+1` -/
def P3208347516349285786.Spec : Prop :=
  ∀ n, (P3208347516349285786.a n : ℤ) = A246276 (n + 1)

end A246276

/-! ## A246276.P7119470042496642842

`A246274(A246275(A246274(A209268(A054582(n)))))`
-/

namespace A246276.P7119470042496642842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A246274 (A209268 (A054582 n).toNat).toNat).toNat).toNat

end

end A246276.P7119470042496642842

namespace A246276

/-- `A246274(A246275(A246274(A209268(A054582(n)))))` -/
def P7119470042496642842.Spec : Prop :=
  ∀ n, P7119470042496642842.a n = A246276 (n + 1)

end A246276

/-! ## A246276.P1154168638343530603

`A256998(A279337(n+2))-1`
-/

namespace A246276.P1154168638343530603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256998 (A279337 (n + 2)).toNat - 1

end

end A246276.P1154168638343530603

namespace A246276

/-- `A256998(A279337(n+2))-1` -/
def P1154168638343530603.Spec : Prop :=
  ∀ n, P1154168638343530603.a n = A246276 (n + 1)

end A246276

/-!
# A246277: Column index of n in A246278: a(1) = 0, a(2n) = n, a(2n+1) = a(A064989(2n+1)).

The programs for A246277, the canonical program `A246277.P3450750564944014413` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246277 has offset 1).

The definition of A246277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246277.P3450750564944014413

`floor(A348717(n+1)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A246277

/-- `floor(A348717(n+1)/2)` -/
def P3450750564944014413.Spec : Prop :=
  ∀ n, P3450750564944014413.a n = A246277 (n + 1)

theorem P3450750564944014413.correct : P3450750564944014413.Spec := by
  intro n
  simp only [A246277, Nat.add_sub_cancel]

end A246277

/-! ## A246277.P12988485532425963585

`A305897(1+n)-1`
-/

namespace A246277.P12988485532425963585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (1 + n) - 1

end

end A246277.P12988485532425963585

namespace A246277

/-- `A305897(1+n)-1` -/
def P12988485532425963585.Spec : Prop :=
  ∀ n, P12988485532425963585.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P10283052112505372292

`row(C(A305897(n+1), 2))`
-/

namespace A246277.P10283052112505372292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A305897 (n + 1)).toNat 2)

end

end A246277.P10283052112505372292

namespace A246277

/-- `row(C(A305897(n+1), 2))` -/
def P10283052112505372292.Spec : Prop :=
  ∀ n, (P10283052112505372292.a n : ℤ) = A246277 (n + 1)

end A246277

/-! ## A246277.P11001561542463299549

`ceil((A348717(1+n)-1)/2)`
-/

namespace A246277.P11001561542463299549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348717 (1 + n) - 1 : ℚ) / 2⌉

end

end A246277.P11001561542463299549

namespace A246277

/-- `ceil((A348717(1+n)-1)/2)` -/
def P11001561542463299549.Spec : Prop :=
  ∀ n, P11001561542463299549.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P1586892162981498873

`floor(∑{d}[n+1, A354185(#)]/2)`
-/

namespace A246277.P1586892162981498873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), A354185 d : ℤ) : ℚ) / 2⌋

end

end A246277.P1586892162981498873

namespace A246277

/-- `floor(∑{d}[n+1, A354185(#)]/2)` -/
def P1586892162981498873.Spec : Prop :=
  ∀ n, P1586892162981498873.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P7278098003952350331

`A023443(A305897(1+n))`
-/

namespace A246277.P7278098003952350331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A305897 (1 + n)).toNat

end

end A246277.P7278098003952350331

namespace A246277

/-- `A023443(A305897(1+n))` -/
def P7278098003952350331.Spec : Prop :=
  ∀ n, P7278098003952350331.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P2602216596111185120

`A025480(A348717(n+1))`
-/

namespace A246277.P2602216596111185120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A348717 (n + 1)).toNat

end

end A246277.P2602216596111185120

namespace A246277

/-- `A025480(A348717(n+1))` -/
def P2602216596111185120.Spec : Prop :=
  ∀ n, P2602216596111185120.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P2095816691536265250

`A001057(A348717(n+1)-1)`
-/

namespace A246277.P2095816691536265250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A348717 (n + 1) - 1).toNat

end

end A246277.P2095816691536265250

namespace A246277

/-- `A001057(A348717(n+1)-1)` -/
def P2095816691536265250.Spec : Prop :=
  ∀ n, P2095816691536265250.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P8575010334042556086

`A110654(A348717(n+1)-1)`
-/

namespace A246277.P8575010334042556086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A348717 (n + 1) - 1).toNat

end

end A246277.P8575010334042556086

namespace A246277

/-- `A110654(A348717(n+1)-1)` -/
def P8575010334042556086.Spec : Prop :=
  ∀ n, P8575010334042556086.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P16254648051085622481

`A302042(A348717(n+1)+2)-1`
-/

namespace A246277.P16254648051085622481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A348717 (n + 1) + 2).toNat - 1

end

end A246277.P16254648051085622481

namespace A246277

/-- `A302042(A348717(n+1)+2)-1` -/
def P16254648051085622481.Spec : Prop :=
  ∀ n, P16254648051085622481.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P9125416792286268345

`(A348717(n+1)-A000007(n))/2`
-/

namespace A246277.P9125416792286268345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348717 (n + 1) - A000007 n : ℚ) / 2

end

end A246277.P9125416792286268345

namespace A246277

/-- `(A348717(n+1)-A000007(n))/2` -/
def P9125416792286268345.Spec : Prop :=
  ∀ n, P9125416792286268345.a n = (A246277 (n + 1) : ℚ)

end A246277

/-! ## A246277.P7343038508525589233

`n*A348717(n+1)/A004277(n)`
-/

namespace A246277.P7343038508525589233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A348717 (n + 1) : ℚ) / (A004277 n : ℚ))

end

end A246277.P7343038508525589233

namespace A246277

/-- `n*A348717(n+1)/A004277(n)` -/
def P7343038508525589233.Spec : Prop :=
  ∀ n, P7343038508525589233.a n = (A246277 (n + 1) : ℚ)

end A246277

/-! ## A246277.P15774568242784707825

`∑{d}[n+1, A055615(#)*A329371((n+1)/#)]`
-/

namespace A246277.P15774568242784707825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A329371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A246277.P15774568242784707825

namespace A246277

/-- `∑{d}[n+1, A055615(#)*A329371((n+1)/#)]` -/
def P15774568242784707825.Spec : Prop :=
  ∀ n, P15774568242784707825.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P829925717345829238

`A262610(A348717(n+1))%A008578(n+1)`
-/

namespace A246277.P829925717345829238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262610 (A348717 (n + 1)).toNat) (A008578 (n + 1))

end

end A246277.P829925717345829238

namespace A246277

/-- `A262610(A348717(n+1))%A008578(n+1)` -/
def P829925717345829238.Spec : Prop :=
  ∀ n, P829925717345829238.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P1996590865010489911

`A004526(A348717(n+1))`
-/

namespace A246277.P1996590865010489911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A348717 (n + 1)).toNat

end

end A246277.P1996590865010489911

namespace A246277

/-- `A004526(A348717(n+1))` -/
def P1996590865010489911.Spec : Prop :=
  ∀ n, P1996590865010489911.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P11695274587565792273

`A004524(A348717(n+1)+1)`
-/

namespace A246277.P11695274587565792273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A348717 (n + 1) + 1).toNat

end

end A246277.P11695274587565792273

namespace A246277

/-- `A004524(A348717(n+1)+1)` -/
def P11695274587565792273.Spec : Prop :=
  ∀ n, P11695274587565792273.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P10131148926884058708

`A249738(A348717(n+1)+2)`
-/

namespace A246277.P10131148926884058708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A348717 (n + 1) + 2).toNat

end

end A246277.P10131148926884058708

namespace A246277

/-- `A249738(A348717(n+1)+2)` -/
def P10131148926884058708.Spec : Prop :=
  ∀ n, P10131148926884058708.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P16600965816176726925

`A004525(A348717(n+1)+2)-1`
-/

namespace A246277.P16600965816176726925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A348717 (n + 1) + 2).toNat - 1

end

end A246277.P16600965816176726925

namespace A246277

/-- `A004525(A348717(n+1)+2)-1` -/
def P16600965816176726925.Spec : Prop :=
  ∀ n, P16600965816176726925.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P14647536206827421599

`A078898(A348717(n+1)+2)-1`
-/

namespace A246277.P14647536206827421599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A348717 (n + 1) + 2).toNat - 1

end

end A246277.P14647536206827421599

namespace A246277

/-- `A078898(A348717(n+1)+2)-1` -/
def P14647536206827421599.Spec : Prop :=
  ∀ n, P14647536206827421599.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P7961033381077790619

`A008619(A348717(n+1)+2)-2`
-/

namespace A246277.P7961033381077790619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A348717 (n + 1) + 2).toNat - 2

end

end A246277.P7961033381077790619

namespace A246277

/-- `A008619(A348717(n+1)+2)-2` -/
def P7961033381077790619.Spec : Prop :=
  ∀ n, P7961033381077790619.a n = A246277 (n + 1)

end A246277

/-!
# A246278: Prime shift array: Square array read by antidiagonals: A(1,col) = 2*col, and for row > 1, A(row,col) = A003961(A(row-1,col)).

The programs for A246278, the canonical program `A246278.P15272825830747483224` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246278 has offset 2).

The definition of A246278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253561, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246278.P4493995603718645573

`A249818(A083221(n+2))`
-/

namespace A246278.P4493995603718645573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083221 (n + 2)).toNat

end

end A246278.P4493995603718645573

namespace A246278

/-- `A249818(A083221(n+2))` -/
def P4493995603718645573.Spec : Prop :=
  ∀ n, P4493995603718645573.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P15272825830747483224

`A122111(A253561(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A246278

/-- `A122111(A253561(n+2))` -/
def P15272825830747483224.Spec : Prop :=
  ∀ n, P15272825830747483224.a n = A246278 (n + 2)

theorem P15272825830747483224.correct : P15272825830747483224.Spec := by
  intro n
  simp only [A246278, Nat.add_sub_cancel]

end A246278

/-! ## A246278.P14511412172347850813

`1+A246275(n+1)`
-/

namespace A246278.P14511412172347850813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A246275 (n + 1)

end

end A246278.P14511412172347850813

namespace A246278

/-- `1+A246275(n+1)` -/
def P14511412172347850813.Spec : Prop :=
  ∀ n, P14511412172347850813.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P17018237764916256377

`A246273(∑[char[∑[n]]]²-n)+1`
-/

namespace A246278.P17018237764916256377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A246278.P17018237764916256377

namespace A246278

/-- `A246273(∑[char[∑[n]]]²-n)+1` -/
def P17018237764916256377.Spec : Prop :=
  ∀ n, P17018237764916256377.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P6559531058330559018

`A388285(n+1)-A378979(n+1)`
-/

namespace A246278.P6559531058330559018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388285 (n + 1) - A378979 (n + 1)

end

end A246278.P6559531058330559018

namespace A246278

/-- `A388285(n+1)-A378979(n+1)` -/
def P6559531058330559018.Spec : Prop :=
  ∀ n, P6559531058330559018.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P16515654373178391759

`A341606(n+1)*A355925(n+1)`
-/

namespace A246278.P16515654373178391759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1) * A355925 (n + 1)

end

end A246278.P16515654373178391759

namespace A246278

/-- `A341606(n+1)*A355925(n+1)` -/
def P16515654373178391759.Spec : Prop :=
  ∀ n, P16515654373178391759.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P13495689711158137946

`A379499(n+1)/A355927(n+1)`
-/

namespace A246278.P13495689711158137946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379499 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ)

end

end A246278.P13495689711158137946

namespace A246278

/-- `A379499(n+1)/A355927(n+1)` -/
def P13495689711158137946.Spec : Prop :=
  ∀ n, P13495689711158137946.a n = (A246278 (n + 2) : ℚ)

end A246278

/-! ## A246278.P544484357256797241

`2*A379010(n+1)-A379011(n+1)`
-/

namespace A246278.P544484357256797241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379010 (n + 1) - A379011 (n + 1)

end

end A246278.P544484357256797241

namespace A246278

/-- `2*A379010(n+1)-A379011(n+1)` -/
def P544484357256797241.Spec : Prop :=
  ∀ n, P544484357256797241.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P8199841747812925153

`A355925(n+1)*A388284(n+1)-A378979(n+1)`
-/

namespace A246278.P8199841747812925153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (n + 1) * A388284 (n + 1) - A378979 (n + 1)

end

end A246278.P8199841747812925153

namespace A246278

/-- `A355925(n+1)*A388284(n+1)-A378979(n+1)` -/
def P8199841747812925153.Spec : Prop :=
  ∀ n, P8199841747812925153.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P15712774409663048765

`A341606(n+1)/A341605(n+1)*A355927(n+1)`
-/

namespace A246278.P15712774409663048765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ) * (A355927 (n + 1) : ℚ)

end

end A246278.P15712774409663048765

namespace A246278

/-- `A341606(n+1)/A341605(n+1)*A355927(n+1)` -/
def P15712774409663048765.Spec : Prop :=
  ∀ n, P15712774409663048765.a n = (A246278 (n + 2) : ℚ)

end A246278

/-! ## A246278.P14615988957242842243

`A355925(n+1)/A341605(n+1)*A379500(n+1)`
-/

namespace A246278.P14615988957242842243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355925 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ) * (A379500 (n + 1) : ℚ)

end

end A246278.P14615988957242842243

namespace A246278

/-- `A355925(n+1)/A341605(n+1)*A379500(n+1)` -/
def P14615988957242842243.Spec : Prop :=
  ∀ n, P14615988957242842243.a n = (A246278 (n + 2) : ℚ)

end A246278

/-! ## A246278.P11138182686891759329

`A249816(A249741(n+1))+1`
-/

namespace A246278.P11138182686891759329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249741 (n + 1)).toNat + 1

end

end A246278.P11138182686891759329

namespace A246278

/-- `A249816(A249741(n+1))+1` -/
def P11138182686891759329.Spec : Prop :=
  ∀ n, P11138182686891759329.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P9911219280843826941

`A249816(A083221(n+2)-1)+1`
-/

namespace A246278.P9911219280843826941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A083221 (n + 2) - 1).toNat + 1

end

end A246278.P9911219280843826941

namespace A246278

/-- `A249816(A083221(n+2)-1)+1` -/
def P9911219280843826941.Spec : Prop :=
  ∀ n, P9911219280843826941.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P13821738217465426207

`A280496(2*A083221(n+2))`
-/

namespace A246278.P13821738217465426207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * A083221 (n + 2)).toNat

end

end A246278.P13821738217465426207

namespace A246278

/-- `A280496(2*A083221(n+2))` -/
def P13821738217465426207.Spec : Prop :=
  ∀ n, P13821738217465426207.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P1818748999680783745

`A250250(A083221(A250250(A250249(n+2))))`
-/

namespace A246278.P1818748999680783745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A083221 (A250250 (A250249 (n + 2)).toNat).toNat).toNat

end

end A246278.P1818748999680783745

namespace A246278

/-- `A250250(A083221(A250250(A250249(n+2))))` -/
def P1818748999680783745.Spec : Prop :=
  ∀ n, P1818748999680783745.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P9452374975518534800

`A279336(A256997(n+2))`
-/

namespace A246278.P9452374975518534800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256997 (n + 2)).toNat

end

end A246278.P9452374975518534800

namespace A246278

/-- `A279336(A256997(n+2))` -/
def P9452374975518534800.Spec : Prop :=
  ∀ n, P9452374975518534800.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P13890450553110213639

`A005940(A253551(n+1)+1)`
-/

namespace A246278.P13890450553110213639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A253551 (n + 1) + 1).toNat

end

end A246278.P13890450553110213639

namespace A246278

/-- `A005940(A253551(n+1)+1)` -/
def P13890450553110213639.Spec : Prop :=
  ∀ n, P13890450553110213639.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P18263366185098836733

`A246676(A135764(n+1))+1`
-/

namespace A246278.P18263366185098836733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A135764 (n + 1)).toNat + 1

end

end A246278.P18263366185098836733

namespace A246278

/-- `A246676(A135764(n+1))+1` -/
def P18263366185098836733.Spec : Prop :=
  ∀ n, P18263366185098836733.a n = A246278 (n + 2)

end A246278

/-!
# A246279: Transpose of array A246278: A(row,1) = 2*row, and for col > 1, A(row,col) = A003961(A(row,col-1)).

The programs for A246279, there is no canonical definition to state claims against.
-/

/-! ## A246279.P11397092028533462086

`1+A246273(n+1)`
-/

namespace A246279.P11397092028533462086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A246273 (n + 1)

end

end A246279.P11397092028533462086

/-! ## A246279.P11812409154739664214

`fo[A246274(n+1)-1]+2`
-/

namespace A246279.P11812409154739664214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 2

end

end A246279.P11812409154739664214

/-! ## A246279.P2284799403524008792

`A246275(∑[char[∑[n]]]²-n)+1`
-/

namespace A246279.P2284799403524008792
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A246279.P2284799403524008792

/-! ## A246279.P15262017523900268047

`A246278(∑[char[∑[n]]]²+1-n)`
-/

namespace A246279.P15262017523900268047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A246279.P15262017523900268047

/-! ## A246279.P7721385291276777317

`A020725(A246273(n+1))`
-/

namespace A246279.P7721385291276777317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246273 (n + 1)).toNat

end

end A246279.P7721385291276777317

/-! ## A246279.P12226105761694683990

`A246676(A054582(n))+1`
-/

namespace A246279.P12226105761694683990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A054582 n).toNat + 1

end

end A246279.P12226105761694683990

/-! ## A246279.P10777495356687425250

`A249818(A083140(n+2))`
-/

namespace A246279.P10777495356687425250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083140 (n + 2)).toNat

end

end A246279.P10777495356687425250

/-! ## A246279.P5150698437651345448

`A279336(A256995(n+2))`
-/

namespace A246279.P5150698437651345448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256995 (n + 2)).toNat

end

end A246279.P5150698437651345448

/-! ## A246279.P12617944340196344689

`A302026(A255129(n+2))`
-/

namespace A246279.P12617944340196344689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A255129 (n + 2)).toNat

end

end A246279.P12617944340196344689

/-! ## A246279.P9539106891711999548

`A250250(A083140(A250250(A250249(n+2))))`
-/

namespace A246279.P9539106891711999548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A083140 (A250250 (A250249 (n + 2)).toNat).toNat).toNat

end

end A246279.P9539106891711999548

/-!
# A246280: a(n) = the smallest starting value for k such that n will be the exact number of additional iterations of A003961 needed when we start from A003961(k) before we first reach a number of the form 4k+1; the least k such that A246271(k) = n.

The programs for A246280, there is no canonical definition to state claims against.
-/

/-! ## A246280.P4278598843548417852

`A246259(∑[1+n])`
-/

namespace A246280.P4278598843548417852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246280.P4278598843548417852

/-! ## A246280.P1883098942527834857

`A246258(∑[n]+1)`
-/

namespace A246280.P1883098942527834857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246280.P1883098942527834857

/-!
# A246281: Numbers k for which A003961(k) < 2*k; Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then product_{k >= 1} (p_{k+1})^(c_k) < 2*n, where p_k indicates the k-th prime, A000040(k).

The programs for A246281, the canonical program `A246281.P3833940699432057348` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246281 has offset 1).

The definition of A246281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246281.P1421162004593309973

`eq[0, A337345(n+1)]+1`
-/

namespace A246281.P1421162004593309973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246281.P1421162004593309973

namespace A246281

/-- `eq[0, A337345(n+1)]+1` -/
def P1421162004593309973.Spec : Prop :=
  ∀ n, (P1421162004593309973.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P3365247062632200640

`eq[1, A378664(n+1)]+1`
-/

namespace A246281.P3365247062632200640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246281.P3365247062632200640

namespace A246281

/-- `eq[1, A378664(n+1)]+1` -/
def P3365247062632200640.Spec : Prop :=
  ∀ n, (P3365247062632200640.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P15830885515981333169

`lt[A336836(1+n), 1]+1`
-/

namespace A246281.P15830885515981333169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336836 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P15830885515981333169

namespace A246281

/-- `lt[A336836(1+n), 1]+1` -/
def P15830885515981333169.Spec : Prop :=
  ∀ n, (P15830885515981333169.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P3833940699432057348

`lt[A349573(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246281

/-- `lt[A349573(n+1), 1]+1` -/
def P3833940699432057348.Spec : Prop :=
  ∀ n, (P3833940699432057348.a n : ℤ) = A246281 (n + 1)

theorem P3833940699432057348.correct : P3833940699432057348.Spec := by
  intro n
  simp only [A246281, Nat.add_sub_cancel]

end A246281

/-! ## A246281.P11532024510230994347

`lt[A336853(n+1), n+1]+1`
-/

namespace A246281.P11532024510230994347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P11532024510230994347

namespace A246281

/-- `lt[A336853(n+1), n+1]+1` -/
def P11532024510230994347.Spec : Prop :=
  ∀ n, (P11532024510230994347.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P10169225887148575407

`lt[A253885(abs(1-n))/2, n]`
-/

namespace A246281.P10169225887148575407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 |1 - (n : ℤ)|.toNat : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A246281.P10169225887148575407

namespace A246281

/-- `lt[A253885(abs(1-n))/2, n]` -/
def P10169225887148575407.Spec : Prop :=
  ∀ n, (P10169225887148575407.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P13601809612963943685

`lt[A253885(n), 2*(n+1)]+1`
-/

namespace A246281.P13601809612963943685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P13601809612963943685

namespace A246281

/-- `lt[A253885(n), 2*(n+1)]+1` -/
def P13601809612963943685.Spec : Prop :=
  ∀ n, (P13601809612963943685.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P18246181614666987208

`eq[0, A252742(n+1)]+1`
-/

namespace A246281.P18246181614666987208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246281.P18246181614666987208

namespace A246281

/-- `eq[0, A252742(n+1)]+1` -/
def P18246181614666987208.Spec : Prop :=
  ∀ n, (P18246181614666987208.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P16319029892300152223

`lt[A252748(n+1), 0]+1`
-/

namespace A246281.P16319029892300152223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P16319029892300152223

namespace A246281

/-- `lt[A252748(n+1), 0]+1` -/
def P16319029892300152223.Spec : Prop :=
  ∀ n, (P16319029892300152223.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P16043190458490449262

`lt[A048673(n+1), n+2]+1`
-/

namespace A246281.P16043190458490449262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P16043190458490449262

namespace A246281

/-- `lt[A048673(n+1), n+2]+1` -/
def P16043190458490449262.Spec : Prop :=
  ∀ n, (P16043190458490449262.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P3984103396675273745

`lt[A003961(abs(1-n)+1), 2*n]`
-/

namespace A246281.P3984103396675273745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246281.P3984103396675273745

namespace A246281

/-- `lt[A003961(abs(1-n)+1), 2*n]` -/
def P3984103396675273745.Spec : Prop :=
  ∀ n, (P3984103396675273745.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P5229082496740867691

`lt[A003961(n+1), 2*(n+1)]+1`
-/

namespace A246281.P5229082496740867691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P5229082496740867691

namespace A246281

/-- `lt[A003961(n+1), 2*(n+1)]+1` -/
def P5229082496740867691.Spec : Prop :=
  ∀ n, (P5229082496740867691.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P1212089709698674498

`lt[A048673(A028310(n)), n+1]`
-/

namespace A246281.P1212089709698674498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246281.P1212089709698674498

namespace A246281

/-- `lt[A048673(A028310(n)), n+1]` -/
def P1212089709698674498.Spec : Prop :=
  ∀ n, (P1212089709698674498.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P2197923538590654470

`lt[A336853(gcd(n, A008574(n))), n]`
-/

namespace A246281.P2197923538590654470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (Int.gcd (n : ℤ) (A008574 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246281.P2197923538590654470

namespace A246281

/-- `lt[A336853(gcd(n, A008574(n))), n]` -/
def P2197923538590654470.Spec : Prop :=
  ∀ n, (P2197923538590654470.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P12194904471927191834

`lt[A252749(n+1), A252749(n)]+1`
-/

namespace A246281.P12194904471927191834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246281.P12194904471927191834

namespace A246281

/-- `lt[A252749(n+1), A252749(n)]+1` -/
def P12194904471927191834.Spec : Prop :=
  ∀ n, (P12194904471927191834.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P10838097924861280759

`∪[A246351(n+1), A349622(n+1)]`
-/

namespace A246281.P10838097924861280759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246281.P10838097924861280759

namespace A246281

/-- `∪[A246351(n+1), A349622(n+1)]` -/
def P10838097924861280759.Spec : Prop :=
  ∀ n, (P10838097924861280759.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P5023085525335240090

`lt[A297166(2*(n+1)), 2*(n+1)]+1`
-/

namespace A246281.P5023085525335240090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P5023085525335240090

namespace A246281

/-- `lt[A297166(2*(n+1)), 2*(n+1)]+1` -/
def P5023085525335240090.Spec : Prop :=
  ∀ n, (P5023085525335240090.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P16481885147181344219

`lt[A297166(A004277(n)), 2*n]`
-/

namespace A246281.P16481885147181344219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246281.P16481885147181344219

namespace A246281

/-- `lt[A297166(A004277(n)), 2*n]` -/
def P16481885147181344219.Spec : Prop :=
  ∀ n, (P16481885147181344219.a n : ℤ) = A246281 (n + 1)

end A246281

/-!
# A246282: Numbers k for which A003961(k) > 2*k; numbers n such that if n = Product_{k >= 1} (p_k)^(c_k), then Product_{k >= 1} (p_{k+1})^(c_k) > 2*n, where p_k indicates the k-th prime, A000040(k).

The programs for A246282, the canonical program `A246282.P13261184401000594775` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246282 has offset 1).

The definition of A246282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246282.P13048087728192591224

`lt[0, A337345(1+n)]+1`
-/

namespace A246282.P13048087728192591224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P13048087728192591224

namespace A246282

/-- `lt[0, A337345(1+n)]+1` -/
def P13048087728192591224.Spec : Prop :=
  ∀ n, (P13048087728192591224.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P13261184401000594775

`lt[0, A349573(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246282

/-- `lt[0, A349573(n+1)]+1` -/
def P13261184401000594775.Spec : Prop :=
  ∀ n, (P13261184401000594775.a n : ℤ) = A246282 (n + 1)

theorem P13261184401000594775.correct : P13261184401000594775.Spec := by
  intro n
  simp only [A246282, Nat.add_sub_cancel]

end A246282

/-! ## A246282.P11220327306887127951

`lt[0, A378662(n+1)]+1`
-/

namespace A246282.P11220327306887127951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P11220327306887127951

namespace A246282

/-- `lt[0, A378662(n+1)]+1` -/
def P11220327306887127951.Spec : Prop :=
  ∀ n, (P11220327306887127951.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P3079014424940456485

`lt[1, A378664(1+n)]+1`
-/

namespace A246282.P3079014424940456485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P3079014424940456485

namespace A246282

/-- `lt[1, A378664(1+n)]+1` -/
def P3079014424940456485.Spec : Prop :=
  ∀ n, (P3079014424940456485.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P1922552253680431625

`comp[A246281(n+1)-1]+1`
-/

namespace A246282.P1922552253680431625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246281 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246282.P1922552253680431625

namespace A246282

/-- `comp[A246281(n+1)-1]+1` -/
def P1922552253680431625.Spec : Prop :=
  ∀ n, (P1922552253680431625.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P15476588615080258627

`∪[A005101(n+1), A341614(n+1)]`
-/

namespace A246282.P15476588615080258627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246282.P15476588615080258627

namespace A246282

/-- `∪[A005101(n+1), A341614(n+1)]` -/
def P15476588615080258627.Spec : Prop :=
  ∀ n, (P15476588615080258627.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P17811952569724339950

`∪[A023196(n+1), A341614(n+1)]`
-/

namespace A246282.P17811952569724339950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246282.P17811952569724339950

namespace A246282

/-- `∪[A023196(n+1), A341614(n+1)]` -/
def P17811952569724339950.Spec : Prop :=
  ∀ n, (P17811952569724339950.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P6220676717219025009

`∪[A023196(n+1), A341615(n+1)]`
-/

namespace A246282.P6220676717219025009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246282.P6220676717219025009

namespace A246282

/-- `∪[A023196(n+1), A341615(n+1)]` -/
def P6220676717219025009.Spec : Prop :=
  ∀ n, (P6220676717219025009.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P9158959107233626065

`∪[A177052(n+1), A341614(n+1)]`
-/

namespace A246282.P9158959107233626065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246282.P9158959107233626065

namespace A246282

/-- `∪[A177052(n+1), A341614(n+1)]` -/
def P9158959107233626065.Spec : Prop :=
  ∀ n, (P9158959107233626065.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P13103350060108718820

`lt[n, A336853(n+1)]+1`
-/

namespace A246282.P13103350060108718820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P13103350060108718820

namespace A246282

/-- `lt[n, A336853(n+1)]+1` -/
def P13103350060108718820.Spec : Prop :=
  ∀ n, (P13103350060108718820.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P10148966285758718257

`lt[0, A252742(n+1)]+1`
-/

namespace A246282.P10148966285758718257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P10148966285758718257

namespace A246282

/-- `lt[0, A252742(n+1)]+1` -/
def P10148966285758718257.Spec : Prop :=
  ∀ n, (P10148966285758718257.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P4362819759275677828

`lt[0, A252748(n+1)]+1`
-/

namespace A246282.P4362819759275677828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P4362819759275677828

namespace A246282

/-- `lt[0, A252748(n+1)]+1` -/
def P4362819759275677828.Spec : Prop :=
  ∀ n, (P4362819759275677828.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P5863448872088206620

`lt[n, A108228(n+1)]+1`
-/

namespace A246282.P5863448872088206620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P5863448872088206620

namespace A246282

/-- `lt[n, A108228(n+1)]+1` -/
def P5863448872088206620.Spec : Prop :=
  ∀ n, (P5863448872088206620.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P9552865763928222249

`lt[2*n, A253885(n)]+1`
-/

namespace A246282.P9552865763928222249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P9552865763928222249

namespace A246282

/-- `lt[2*n, A253885(n)]+1` -/
def P9552865763928222249.Spec : Prop :=
  ∀ n, (P9552865763928222249.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P16597012199783280402

`lt[n+1, A048673(n+1)]+1`
-/

namespace A246282.P16597012199783280402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P16597012199783280402

namespace A246282

/-- `lt[n+1, A048673(n+1)]+1` -/
def P16597012199783280402.Spec : Prop :=
  ∀ n, (P16597012199783280402.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P18340444788719507710

`lt[2*(n+1), A003961(n+1)]+1`
-/

namespace A246282.P18340444788719507710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246282.P18340444788719507710

namespace A246282

/-- `lt[2*(n+1), A003961(n+1)]+1` -/
def P18340444788719507710.Spec : Prop :=
  ∀ n, (P18340444788719507710.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P17225071891396405288

`lt[2, A253885(n+1)/(n+1)]+2`
-/

namespace A246282.P17225071891396405288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A246282.P17225071891396405288

namespace A246282

/-- `lt[2, A253885(n+1)/(n+1)]+2` -/
def P17225071891396405288.Spec : Prop :=
  ∀ n, (P17225071891396405288.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P14232752533780613093

`lt[0, A252748(A028310(n))]`
-/

namespace A246282.P14232752533780613093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246282.P14232752533780613093

namespace A246282

/-- `lt[0, A252748(A028310(n))]` -/
def P14232752533780613093.Spec : Prop :=
  ∀ n, (P14232752533780613093.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P15497467685726645607

`filter[A089088(n), A252742(#)]`
-/

namespace A246282.P15497467685726645607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A246282.P15497467685726645607

namespace A246282

/-- `filter[A089088(n), A252742(#)]` -/
def P15497467685726645607.Spec : Prop :=
  ∀ n, P15497467685726645607.a n = A246282 (n + 1)

end A246282

/-! ## A246282.P8505160527772604964

`filter[A344180(n), A252742(#)]`
-/

namespace A246282.P8505160527772604964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A246282.P8505160527772604964

namespace A246282

/-- `filter[A344180(n), A252742(#)]` -/
def P8505160527772604964.Spec : Prop :=
  ∀ n, P8505160527772604964.a n = A246282 (n + 1)

end A246282

/-!
# A246283: Number of endofunctions on [n] with cycles of two distinct lengths.

The programs for A246283, there is no canonical definition to state claims against.
-/

/-! ## A246283.P15586584148602474557

`A242027(eq[2, A237451(n+1)])`
-/

namespace A246283.P15586584148602474557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246283.P15586584148602474557

/-!
# A246284: Number of endofunctions on [n] with cycles of three distinct lengths.

The programs for A246284, there is no canonical definition to state claims against.
-/

/-! ## A246284.P4564133093622114996

`A242027(eq[3, A237451(n+1)])`
-/

namespace A246284.P4564133093622114996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246284.P4564133093622114996

/-!
# A246285: Number of endofunctions on [n] with cycles of four distinct lengths.

The programs for A246285, there is no canonical definition to state claims against.
-/

/-! ## A246285.P1399392700966980729

`A242027(eq[4, A237451(n+1)])`
-/

namespace A246285.P1399392700966980729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246285.P1399392700966980729

/-!
# A246286: Number of endofunctions on [n] with cycles of five distinct lengths.

The programs for A246286, there is no canonical definition to state claims against.
-/

/-! ## A246286.P11274773904890900250

`A242027(eq[5, A237451(n+1)])`
-/

namespace A246286.P11274773904890900250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246286.P11274773904890900250

/-!
# A246292: Number of permutations on [n*(n+1)/2] with cycles of n distinct lengths.

The programs for A246292, the canonical program `A246292.P7079877650501014124` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246292 has offset 0).

The definition of A246292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246292.P7079877650501014124

`C(n+1, 2)!/n!`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A246292

/-- `C(n+1, 2)!/n!` -/
def P7079877650501014124.Spec : Prop :=
  ∀ n, P7079877650501014124.a n = (A246292 n : ℚ)

end A246292

/-! ## A246292.P3430119484677157833

`∑[n]!/n!`
-/

namespace A246292.P3430119484677157833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Nat.factorial n : ℚ)

end

end A246292.P3430119484677157833

namespace A246292

/-- `∑[n]!/n!` -/
def P3430119484677157833.Spec : Prop :=
  ∀ n, P3430119484677157833.a n = (A246292 n : ℚ)

end A246292

/-! ## A246292.P7572993518198391528

`A052295(n)/n!`
-/

namespace A246292.P7572993518198391528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052295 n : ℚ) / (Nat.factorial n : ℚ)

end

end A246292.P7572993518198391528

namespace A246292

/-- `A052295(n)/n!` -/
def P7572993518198391528.Spec : Prop :=
  ∀ n, P7572993518198391528.a n = (A246292 n : ℚ)

end A246292

/-! ## A246292.P6808687514152546162

`A393036(∑[n²]+n)`
-/

namespace A246292.P6808687514152546162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393036 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A246292.P6808687514152546162

namespace A246292

/-- `A393036(∑[n²]+n)` -/
def P6808687514152546162.Spec : Prop :=
  ∀ n, P6808687514152546162.a n = A246292 n

end A246292

/-! ## A246292.P10182850245950127787

`a(n-1)*A094330(n)` with `a(0)=1`
-/

namespace A246292.P10182850245950127787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A094330 n

end

end A246292.P10182850245950127787

namespace A246292

/-- `a(n-1)*A094330(n)` -/
def P10182850245950127787.Spec : Prop :=
  ∀ n, P10182850245950127787.a n = A246292 n

end A246292

/-!
# A246293: Numbers k such that sin(k) > sin(k+1).

The programs for A246293, the canonical program `A246293.P9241675276305606840` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246293 has offset 1).

The definition of A246293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246293.P9241675276305606840

`lt[sin(n+1), sin(n)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A246293

/-- `lt[sin(n+1), sin(n)]` -/
def P9241675276305606840.Spec : Prop :=
  ∀ n, (P9241675276305606840.a n : ℤ) = A246293 (n + 1)

theorem P9241675276305606840.correct : P9241675276305606840.Spec := by
  intro n
  simp only [A246293, Nat.add_sub_cancel]

end A246293

/-! ## A246293.P1472689021113041508

`lt[cos(n+1), -cos(n)]`
-/

namespace A246293.P1472689021113041508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246293.P1472689021113041508

namespace A246293

/-- `lt[cos(n+1), -cos(n)]` -/
def P1472689021113041508.Spec : Prop :=
  ∀ n, (P1472689021113041508.a n : ℤ) = A246293 (n + 1)

end A246293

/-! ## A246293.P15135605511744240068

`lt[cos((2*n+1)/2), 0]`
-/

namespace A246293.P15135605511744240068
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((2 * n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246293.P15135605511744240068

namespace A246293

/-- `lt[cos((2*n+1)/2), 0]` -/
def P15135605511744240068.Spec : Prop :=
  ∀ n, (P15135605511744240068.a n : ℤ) = A246293 (n + 1)

end A246293

/-! ## A246293.P9693138933247285948

`lt[1, tan((2*n+1)/4)²]`
-/

namespace A246293.P9693138933247285948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((2 * n + 1 : ℚ) / 4 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246293.P9693138933247285948

namespace A246293

/-- `lt[1, tan((2*n+1)/4)²]` -/
def P9693138933247285948.Spec : Prop :=
  ∀ n, (P9693138933247285948.a n : ℤ) = A246293 (n + 1)

end A246293

/-! ## A246293.P1801350577281288358

`comp[A026309(n+1)]`
-/

namespace A246293.P1801350577281288358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246293.P1801350577281288358

namespace A246293

/-- `comp[A026309(n+1)]` -/
def P1801350577281288358.Spec : Prop :=
  ∀ n, (P1801350577281288358.a n : ℤ) = A246293 (n + 1)

end A246293

/-! ## A246293.P11379416670607744940

`lt[Δ[sin(n)], 0]`
-/

namespace A246293.P11379416670607744940
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246293.P11379416670607744940

namespace A246293

/-- `lt[Δ[sin(n)], 0]` -/
def P11379416670607744940.Spec : Prop :=
  ∀ n, (P11379416670607744940.a n : ℤ) = A246293 (n + 1)

theorem P11379416670607744940.correct : P11379416670607744940.Spec := by
  intro n
  simp only [A246293, Nat.add_sub_cancel, A246293.P11379416670607744940.f2, A246293.P11379416670607744940.f1, A246293.P11379416670607744940.f3, A246293.P11379416670607744940.a, A246293.P9241675276305606840.f1, A246293.P9241675276305606840.f2, A246293.P9241675276305606840.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A246293

/-! ## A246293.P13609764786584639029

`lt[ratio[exp(sin(n))], 1]`
-/

namespace A246293.P13609764786584639029
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246293.P13609764786584639029

namespace A246293

/-- `lt[ratio[exp(sin(n))], 1]` -/
def P13609764786584639029.Spec : Prop :=
  ∀ n, (P13609764786584639029.a n : ℤ) = A246293 (n + 1)

end A246293

/-! ## A246293.P7572398157707009933

`lt[1, ratio[acos(sin(n))]]`
-/

namespace A246293.P7572398157707009933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246293.P7572398157707009933

namespace A246293

/-- `lt[1, ratio[acos(sin(n))]]` -/
def P7572398157707009933.Spec : Prop :=
  ∀ n, (P7572398157707009933.a n : ℤ) = A246293 (n + 1)

end A246293

/-!
# A246294: Numbers k such that sin(k) < sin(k+1) > sin(k+2).

The programs for A246294, the canonical program `A246294.P17393245477566257957` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246294 has offset 1).

The definition of A246294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246294.P18057029684700280889

`A246295(1+n)+1`
-/

namespace A246294.P18057029684700280889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (1 + n) + 1

end

end A246294.P18057029684700280889

namespace A246294

/-- `A246295(1+n)+1` -/
def P18057029684700280889.Spec : Prop :=
  ∀ n, P18057029684700280889.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P17393245477566257957

`A327139(Δ[n²])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246294

/-- `A327139(Δ[n²])` -/
def P17393245477566257957.Spec : Prop :=
  ∀ n, P17393245477566257957.a n = A246294 (n + 1)

theorem P17393245477566257957.correct : P17393245477566257957.Spec := by
  intro n
  simp only [A246294, Nat.add_sub_cancel]

end A246294

/-! ## A246294.P9089418062398810732

`record[A059841(n)*A327139(n+1)]`
-/

namespace A246294.P9089418062398810732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A327139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246294.P9089418062398810732

namespace A246294

/-- `record[A059841(n)*A327139(n+1)]` -/
def P9089418062398810732.Spec : Prop :=
  ∀ n, P9089418062398810732.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P8244040880299876759

`record[A327139(n+1)/A033999(n)]`
-/

namespace A246294.P8244040880299876759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327139 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246294.P8244040880299876759

namespace A246294

/-- `record[A327139(n+1)/A033999(n)]` -/
def P8244040880299876759.Spec : Prop :=
  ∀ n, P8244040880299876759.a n = (A246294 (n + 1) : ℚ)

end A246294

/-! ## A246294.P1721861797759129382

`∩[A277093(n+1), A327139(n+1)]`
-/

namespace A246294.P1721861797759129382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P1721861797759129382

namespace A246294

/-- `∩[A277093(n+1), A327139(n+1)]` -/
def P1721861797759129382.Spec : Prop :=
  ∀ n, (P1721861797759129382.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P1597654936918942537

`∩[A277137(n+1), A327139(n+1)]`
-/

namespace A246294.P1597654936918942537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P1597654936918942537

namespace A246294

/-- `∩[A277137(n+1), A327139(n+1)]` -/
def P1597654936918942537.Spec : Prop :=
  ∀ n, (P1597654936918942537.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P13226567942609313141

`∩[A327139(n+1), A332480(n+1)]`
-/

namespace A246294.P13226567942609313141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P13226567942609313141

namespace A246294

/-- `∩[A327139(n+1), A332480(n+1)]` -/
def P13226567942609313141.Spec : Prop :=
  ∀ n, (P13226567942609313141.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P12189148470518596555

`A246388(2*n)-A257984(2*n+1)`
-/

namespace A246294.P12189148470518596555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 (2 * n) - A257984 (2 * n + 1)

end

end A246294.P12189148470518596555

namespace A246294

/-- `A246388(2*n)-A257984(2*n+1)` -/
def P12189148470518596555.Spec : Prop :=
  ∀ n, P12189148470518596555.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P10570749172956355835

`A246411(1+n*3)`
-/

namespace A246294.P10570749172956355835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (1 + n * 3)

end

end A246294.P10570749172956355835

namespace A246294

/-- `A246411(1+n*3)` -/
def P10570749172956355835.Spec : Prop :=
  ∀ n, P10570749172956355835.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P11746321400903566274

`∩[A246411(n+1), A277093(n+1)]`
-/

namespace A246294.P11746321400903566274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P11746321400903566274

namespace A246294

/-- `∩[A246411(n+1), A277093(n+1)]` -/
def P11746321400903566274.Spec : Prop :=
  ∀ n, (P11746321400903566274.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P16303266415431508024

`∩[A246411(n+1), A277137(n+1)]`
-/

namespace A246294.P16303266415431508024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P16303266415431508024

namespace A246294

/-- `∩[A246411(n+1), A277137(n+1)]` -/
def P16303266415431508024.Spec : Prop :=
  ∀ n, (P16303266415431508024.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P17953613468111996755

`∩[A246411(n+1), A327139(n+1)]`
-/

namespace A246294.P17953613468111996755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P17953613468111996755

namespace A246294

/-- `∩[A246411(n+1), A327139(n+1)]` -/
def P17953613468111996755.Spec : Prop :=
  ∀ n, (P17953613468111996755.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P9241479943151188512

`∩[A246411(n+1), A332480(n+1)]`
-/

namespace A246294.P9241479943151188512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P9241479943151188512

namespace A246294

/-- `∩[A246411(n+1), A332480(n+1)]` -/
def P9241479943151188512.Spec : Prop :=
  ∀ n, (P9241479943151188512.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P9408483176245218142

`∩[A070752(n+1), A327139(n+1)]`
-/

namespace A246294.P9408483176245218142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P9408483176245218142

namespace A246294

/-- `∩[A070752(n+1), A327139(n+1)]` -/
def P9408483176245218142.Spec : Prop :=
  ∀ n, (P9408483176245218142.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P17395986379328538963

`∩[A246413(n+1), A327139(n+1)]`
-/

namespace A246294.P17395986379328538963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P17395986379328538963

namespace A246294

/-- `∩[A246413(n+1), A327139(n+1)]` -/
def P17395986379328538963.Spec : Prop :=
  ∀ n, (P17395986379328538963.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P12143927538840804344

`∩[A026309(n+1), A327139(n+1)]`
-/

namespace A246294.P12143927538840804344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P12143927538840804344

namespace A246294

/-- `∩[A026309(n+1), A327139(n+1)]` -/
def P12143927538840804344.Spec : Prop :=
  ∀ n, (P12143927538840804344.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P1714192040605380796

`∩[A026311(n+1), A327139(n+1)]`
-/

namespace A246294.P1714192040605380796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P1714192040605380796

namespace A246294

/-- `∩[A026311(n+1), A327139(n+1)]` -/
def P1714192040605380796.Spec : Prop :=
  ∀ n, (P1714192040605380796.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P11932366886670586069

`∩[A131503(n+1), A327139(n+1)]`
-/

namespace A246294.P11932366886670586069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P11932366886670586069

namespace A246294

/-- `∩[A131503(n+1), A327139(n+1)]` -/
def P11932366886670586069.Spec : Prop :=
  ∀ n, (P11932366886670586069.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P5474681224733001026

`∩[A327139(n+1), A332484(n+1)]`
-/

namespace A246294.P5474681224733001026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246294.P5474681224733001026

namespace A246294

/-- `∩[A327139(n+1), A332484(n+1)]` -/
def P5474681224733001026.Spec : Prop :=
  ∀ n, (P5474681224733001026.a n : ℤ) = A246294 (n + 1)

end A246294

/-! ## A246294.P11038005337118469065

`filter[A327139(n+1), A302203(#)]`
-/

namespace A246294.P11038005337118469065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302203 (f1 j).toNat = 1) n)

end

end A246294.P11038005337118469065

namespace A246294

/-- `filter[A327139(n+1), A302203(#)]` -/
def P11038005337118469065.Spec : Prop :=
  ∀ n, P11038005337118469065.a n = A246294 (n + 1)

end A246294

/-!
# A246295: Numbers k such that sin(k) < sin(k+1) < sin(k+2) > sin(k+3).

The programs for A246295, the canonical program `A246295.P5395890182037924282` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246295 has offset 1).

The definition of A246295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246295.P5395890182037924282

`A246294(1+n)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A246295

/-- `A246294(1+n)-1` -/
def P5395890182037924282.Spec : Prop :=
  ∀ n, P5395890182037924282.a n = A246295 (n + 1)

theorem P5395890182037924282.correct : P5395890182037924282.Spec := by
  intro n
  simp only [A246295, Nat.add_sub_cancel]

end A246295

/-! ## A246295.P13087056533878190727

`A327139(Δ[n²])-1`
-/

namespace A246295.P13087056533878190727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A246295.P13087056533878190727

namespace A246295

/-- `A327139(Δ[n²])-1` -/
def P13087056533878190727.Spec : Prop :=
  ∀ n, P13087056533878190727.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P5859766744431787537

`∩[A277093(n+1), A327139(n+1)]-1`
-/

namespace A246295.P5859766744431787537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P5859766744431787537

namespace A246295

/-- `∩[A277093(n+1), A327139(n+1)]-1` -/
def P5859766744431787537.Spec : Prop :=
  ∀ n, P5859766744431787537.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P3622591013904279340

`∩[A277137(n+1), A327139(n+1)]-1`
-/

namespace A246295.P3622591013904279340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P3622591013904279340

namespace A246295

/-- `∩[A277137(n+1), A327139(n+1)]-1` -/
def P3622591013904279340.Spec : Prop :=
  ∀ n, P3622591013904279340.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P14248950878283296168

`∩[A327139(n+1), A332480(n+1)]-1`
-/

namespace A246295.P14248950878283296168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P14248950878283296168

namespace A246295

/-- `∩[A327139(n+1), A332480(n+1)]-1` -/
def P14248950878283296168.Spec : Prop :=
  ∀ n, P14248950878283296168.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P16672773629454742365

`A246411(3*n+1)-1`
-/

namespace A246295.P16672773629454742365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (3 * n + 1) - 1

end

end A246295.P16672773629454742365

namespace A246295

/-- `A246411(3*n+1)-1` -/
def P16672773629454742365.Spec : Prop :=
  ∀ n, P16672773629454742365.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P5720633530986489129

`∩[A246411(n+1), A277093(n+1)]-1`
-/

namespace A246295.P5720633530986489129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P5720633530986489129

namespace A246295

/-- `∩[A246411(n+1), A277093(n+1)]-1` -/
def P5720633530986489129.Spec : Prop :=
  ∀ n, P5720633530986489129.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P8173827723193971115

`∩[A246411(n+1), A277137(n+1)]-1`
-/

namespace A246295.P8173827723193971115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P8173827723193971115

namespace A246295

/-- `∩[A246411(n+1), A277137(n+1)]-1` -/
def P8173827723193971115.Spec : Prop :=
  ∀ n, P8173827723193971115.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P8120219626564133435

`∩[A246411(n+1), A327139(n+1)]-1`
-/

namespace A246295.P8120219626564133435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P8120219626564133435

namespace A246295

/-- `∩[A246411(n+1), A327139(n+1)]-1` -/
def P8120219626564133435.Spec : Prop :=
  ∀ n, P8120219626564133435.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P2005935168902715178

`∩[A246411(n+1), A332480(n+1)]-1`
-/

namespace A246295.P2005935168902715178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P2005935168902715178

namespace A246295

/-- `∩[A246411(n+1), A332480(n+1)]-1` -/
def P2005935168902715178.Spec : Prop :=
  ∀ n, P2005935168902715178.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P5292760292929034941

`∩[A026309(n+1), A327139(n+1)-1]`
-/

namespace A246295.P5292760292929034941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246295.P5292760292929034941

namespace A246295

/-- `∩[A026309(n+1), A327139(n+1)-1]` -/
def P5292760292929034941.Spec : Prop :=
  ∀ n, (P5292760292929034941.a n : ℤ) = A246295 (n + 1)

end A246295

/-! ## A246295.P13988122074102887026

`∩[A070752(n+1), A327139(n+1)]-1`
-/

namespace A246295.P13988122074102887026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P13988122074102887026

namespace A246295

/-- `∩[A070752(n+1), A327139(n+1)]-1` -/
def P13988122074102887026.Spec : Prop :=
  ∀ n, P13988122074102887026.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P13140095549205039000

`∩[A246413(n+1), A327139(n+1)]-1`
-/

namespace A246295.P13140095549205039000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P13140095549205039000

namespace A246295

/-- `∩[A246413(n+1), A327139(n+1)]-1` -/
def P13140095549205039000.Spec : Prop :=
  ∀ n, P13140095549205039000.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P17529577444820454739

`∩[A026311(n+1), A327139(n+1)]-1`
-/

namespace A246295.P17529577444820454739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P17529577444820454739

namespace A246295

/-- `∩[A026311(n+1), A327139(n+1)]-1` -/
def P17529577444820454739.Spec : Prop :=
  ∀ n, P17529577444820454739.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P2225530249399929904

`∩[A131503(n+1), A327139(n+1)-1]`
-/

namespace A246295.P2225530249399929904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246295.P2225530249399929904

namespace A246295

/-- `∩[A131503(n+1), A327139(n+1)-1]` -/
def P2225530249399929904.Spec : Prop :=
  ∀ n, (P2225530249399929904.a n : ℤ) = A246295 (n + 1)

end A246295

/-! ## A246295.P8427393592781751199

`∩[A327139(n+1), A332484(n+1)]-1`
-/

namespace A246295.P8427393592781751199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246295.P8427393592781751199

namespace A246295

/-- `∩[A327139(n+1), A332484(n+1)]-1` -/
def P8427393592781751199.Spec : Prop :=
  ∀ n, P8427393592781751199.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P12382776160768607330

`A023443(A246294(n+1))`
-/

namespace A246295.P12382776160768607330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246294 (n + 1)).toNat

end

end A246295.P12382776160768607330

namespace A246295

/-- `A023443(A246294(n+1))` -/
def P12382776160768607330.Spec : Prop :=
  ∀ n, P12382776160768607330.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P10911733093999516993

`A023444(A246294(n+1)+1)`
-/

namespace A246295.P10911733093999516993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246294 (n + 1) + 1).toNat

end

end A246295.P10911733093999516993

namespace A246295

/-- `A023444(A246294(n+1)+1)` -/
def P10911733093999516993.Spec : Prop :=
  ∀ n, P10911733093999516993.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P11209333322026210054

`A023451(A246302(n+2)-1)`
-/

namespace A246295.P11209333322026210054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A246302 (n + 2) - 1).toNat

end

end A246295.P11209333322026210054

namespace A246295

/-- `A023451(A246302(n+2)-1)` -/
def P11209333322026210054.Spec : Prop :=
  ∀ n, P11209333322026210054.a n = A246295 (n + 1)

end A246295

/-! ## A246295.P3061143146245301841

`A023454(A246300(n+2))`
-/

namespace A246295.P3061143146245301841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A246300 (n + 2)).toNat

end

end A246295.P3061143146245301841

namespace A246295

/-- `A023454(A246300(n+2))` -/
def P3061143146245301841.Spec : Prop :=
  ∀ n, P3061143146245301841.a n = A246295 (n + 1)

end A246295

/-!
# A246296: Numbers k such that sin(k) < sin(k+1) < sin(k+2) < sin(k+3) > sin(k+4).

The programs for A246296, the canonical program `A246296.P7203753946259681015` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246296 has offset 1).

The definition of A246296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246296.P7203753946259681015

`A246295(2+n)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246296

/-- `A246295(2+n)-1` -/
def P7203753946259681015.Spec : Prop :=
  ∀ n, P7203753946259681015.a n = A246296 (n + 1)

theorem P7203753946259681015.correct : P7203753946259681015.Spec := by
  intro n
  simp only [A246296, Nat.add_sub_cancel]

end A246296

/-! ## A246296.P9285848253626120025

`A246294(2+n)-2`
-/

namespace A246296.P9285848253626120025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (2 + n) - 2

end

end A246296.P9285848253626120025

namespace A246296

/-- `A246294(2+n)-2` -/
def P9285848253626120025.Spec : Prop :=
  ∀ n, P9285848253626120025.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P5141586383785886676

`A327139(2*n+3)-2`
-/

namespace A246296.P5141586383785886676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * n + 3) - 2

end

end A246296.P5141586383785886676

namespace A246296

/-- `A327139(2*n+3)-2` -/
def P5141586383785886676.Spec : Prop :=
  ∀ n, P5141586383785886676.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P9652827900638303621

`∩[A277093(n+2), A327139(n+2)]-2`
-/

namespace A246296.P9652827900638303621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P9652827900638303621

namespace A246296

/-- `∩[A277093(n+2), A327139(n+2)]-2` -/
def P9652827900638303621.Spec : Prop :=
  ∀ n, P9652827900638303621.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P12071830537707063813

`∩[A277137(n+2), A327139(n+2)]-2`
-/

namespace A246296.P12071830537707063813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P12071830537707063813

namespace A246296

/-- `∩[A277137(n+2), A327139(n+2)]-2` -/
def P12071830537707063813.Spec : Prop :=
  ∀ n, P12071830537707063813.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P18209172250127497096

`A246411(A016777(n+1))-2`
-/

namespace A246296.P18209172250127497096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (A016777 (n + 1)).toNat - 2

end

end A246296.P18209172250127497096

namespace A246296

/-- `A246411(A016777(n+1))-2` -/
def P18209172250127497096.Spec : Prop :=
  ∀ n, P18209172250127497096.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P488208366249648561

`A246411(A016789(n)+2)-2`
-/

namespace A246296.P488208366249648561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (A016789 n + 2).toNat - 2

end

end A246296.P488208366249648561

namespace A246296

/-- `A246411(A016789(n)+2)-2` -/
def P488208366249648561.Spec : Prop :=
  ∀ n, P488208366249648561.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P3260219624233294858

`∩[A246411(n+2), A277093(n+2)]-2`
-/

namespace A246296.P3260219624233294858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P3260219624233294858

namespace A246296

/-- `∩[A246411(n+2), A277093(n+2)]-2` -/
def P3260219624233294858.Spec : Prop :=
  ∀ n, P3260219624233294858.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P12169850626091623077

`∩[A246411(n+2), A277137(n+2)]-2`
-/

namespace A246296.P12169850626091623077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P12169850626091623077

namespace A246296

/-- `∩[A246411(n+2), A277137(n+2)]-2` -/
def P12169850626091623077.Spec : Prop :=
  ∀ n, P12169850626091623077.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P8330561645431408590

`∩[A246411(n+2), A327139(n+2)]-2`
-/

namespace A246296.P8330561645431408590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P8330561645431408590

namespace A246296

/-- `∩[A246411(n+2), A327139(n+2)]-2` -/
def P8330561645431408590.Spec : Prop :=
  ∀ n, P8330561645431408590.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P10356545346368832035

`∩[A026309(n+1), A327139(n+1)-2]`
-/

namespace A246296.P10356545346368832035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246296.P10356545346368832035

namespace A246296

/-- `∩[A026309(n+1), A327139(n+1)-2]` -/
def P10356545346368832035.Spec : Prop :=
  ∀ n, (P10356545346368832035.a n : ℤ) = A246296 (n + 1)

end A246296

/-! ## A246296.P680537878181041658

`∩[A070751(n+1), A327139(n+1)-2]`
-/

namespace A246296.P680537878181041658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246296.P680537878181041658

namespace A246296

/-- `∩[A070751(n+1), A327139(n+1)-2]` -/
def P680537878181041658.Spec : Prop :=
  ∀ n, (P680537878181041658.a n : ℤ) = A246296 (n + 1)

end A246296

/-! ## A246296.P8161106562473204632

`∩[A246303(n+1), A327139(n+1)-2]`
-/

namespace A246296.P8161106562473204632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246296.P8161106562473204632

namespace A246296

/-- `∩[A246303(n+1), A327139(n+1)-2]` -/
def P8161106562473204632.Spec : Prop :=
  ∀ n, (P8161106562473204632.a n : ℤ) = A246296 (n + 1)

end A246296

/-! ## A246296.P110974893223586681

`∩[A070752(n+2), A327139(n+2)]-2`
-/

namespace A246296.P110974893223586681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P110974893223586681

namespace A246296

/-- `∩[A070752(n+2), A327139(n+2)]-2` -/
def P110974893223586681.Spec : Prop :=
  ∀ n, P110974893223586681.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P3660473397902671326

`∩[A026311(n+2), A327139(n+2)]-2`
-/

namespace A246296.P3660473397902671326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P3660473397902671326

namespace A246296

/-- `∩[A026311(n+2), A327139(n+2)]-2` -/
def P3660473397902671326.Spec : Prop :=
  ∀ n, P3660473397902671326.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P16714940394266710284

`∩[A131503(n+2), A327139(n+2)]-2`
-/

namespace A246296.P16714940394266710284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P16714940394266710284

namespace A246296

/-- `∩[A131503(n+2), A327139(n+2)]-2` -/
def P16714940394266710284.Spec : Prop :=
  ∀ n, P16714940394266710284.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P17204066999742756478

`∩[A117672(n+1), A369274(n+1)]`
-/

namespace A246296.P17204066999742756478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246296.P17204066999742756478

namespace A246296

/-- `∩[A117672(n+1), A369274(n+1)]` -/
def P17204066999742756478.Spec : Prop :=
  ∀ n, (P17204066999742756478.a n : ℤ) = A246296 (n + 1)

end A246296

/-! ## A246296.P4618426182054757344

`A023444(A246294(n+2))`
-/

namespace A246296.P4618426182054757344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246294 (n + 2)).toNat

end

end A246296.P4618426182054757344

namespace A246296

/-- `A023444(A246294(n+2))` -/
def P4618426182054757344.Spec : Prop :=
  ∀ n, P4618426182054757344.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P8616763288105071090

`A023443(A246295(n+2))`
-/

namespace A246296.P8616763288105071090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246295 (n + 2)).toNat

end

end A246296.P8616763288105071090

namespace A246296

/-- `A023443(A246295(n+2))` -/
def P8616763288105071090.Spec : Prop :=
  ∀ n, P8616763288105071090.a n = A246296 (n + 1)

end A246296

/-! ## A246296.P15061183319797889967

`∩[A246389(n+1), A327139(n+2)]-2`
-/

namespace A246296.P15061183319797889967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246296.P15061183319797889967

namespace A246296

/-- `∩[A246389(n+1), A327139(n+2)]-2` -/
def P15061183319797889967.Spec : Prop :=
  ∀ n, P15061183319797889967.a n = A246296 (n + 1)

end A246296

/-!
# A246297: Numbers k such that sin(k) > sin(k+1) < sin(k+2).

The programs for A246297, the canonical program `A246297.P8914562729595011779` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246297 has offset 1).

The definition of A246297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246297.P14612491817079665773

`A246298(1+n)+1`
-/

namespace A246297.P14612491817079665773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246298 (1 + n) + 1

end

end A246297.P14612491817079665773

namespace A246297

/-- `A246298(1+n)+1` -/
def P14612491817079665773.Spec : Prop :=
  ∀ n, P14612491817079665773.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P302581219032905454

`A246299(1+n)+2`
-/

namespace A246297.P302581219032905454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246299 (1 + n) + 2

end

end A246297.P302581219032905454

namespace A246297

/-- `A246299(1+n)+2` -/
def P302581219032905454.Spec : Prop :=
  ∀ n, P302581219032905454.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P8914562729595011779

`A327139(2*(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246297

/-- `A327139(2*(n+1))` -/
def P8914562729595011779.Spec : Prop :=
  ∀ n, P8914562729595011779.a n = A246297 (n + 1)

theorem P8914562729595011779.correct : P8914562729595011779.Spec := by
  intro n
  simp only [A246297, Nat.add_sub_cancel]

end A246297

/-! ## A246297.P12725686223783932207

`record[A327139(A033999(n)+1+n)]`
-/

namespace A246297.P12725686223783932207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (A033999 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246297.P12725686223783932207

namespace A246297

/-- `record[A327139(A033999(n)+1+n)]` -/
def P12725686223783932207.Spec : Prop :=
  ∀ n, P12725686223783932207.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P16439095196977759721

`∩[A277096(n+1), A327139(n+1)]`
-/

namespace A246297.P16439095196977759721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P16439095196977759721

namespace A246297

/-- `∩[A277096(n+1), A327139(n+1)]` -/
def P16439095196977759721.Spec : Prop :=
  ∀ n, (P16439095196977759721.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P4578659568159811564

`∩[A277138(n+1), A327139(n+1)]`
-/

namespace A246297.P4578659568159811564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P4578659568159811564

namespace A246297

/-- `∩[A277138(n+1), A327139(n+1)]` -/
def P4578659568159811564.Spec : Prop :=
  ∀ n, (P4578659568159811564.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P167510979364850552

`∩[A327139(n+1), A332483(n+1)]`
-/

namespace A246297.P167510979364850552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P167510979364850552

namespace A246297

/-- `∩[A327139(n+1), A332483(n+1)]` -/
def P167510979364850552.Spec : Prop :=
  ∀ n, (P167510979364850552.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P5955860186233973446

`∩[A327139(n+1), A246390(n)]`
-/

namespace A246297.P5955860186233973446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P5955860186233973446

namespace A246297

/-- `∩[A327139(n+1), A246390(n)]` -/
def P5955860186233973446.Spec : Prop :=
  ∀ n, (P5955860186233973446.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P8334850239010753602

`A246414(2+3*n)`
-/

namespace A246297.P8334850239010753602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (2 + 3 * n)

end

end A246297.P8334850239010753602

namespace A246297

/-- `A246414(2+3*n)` -/
def P8334850239010753602.Spec : Prop :=
  ∀ n, P8334850239010753602.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P2889430533355492239

`floor(A246295(3*(n+1))/3)`
-/

namespace A246297.P2889430533355492239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246295 (3 * (n + 1)) : ℚ) / 3⌋

end

end A246297.P2889430533355492239

namespace A246297

/-- `floor(A246295(3*(n+1))/3)` -/
def P2889430533355492239.Spec : Prop :=
  ∀ n, P2889430533355492239.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P12613174435255802617

`∩[A246414(n+1), A246390(n)]`
-/

namespace A246297.P12613174435255802617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P12613174435255802617

namespace A246297

/-- `∩[A246414(n+1), A246390(n)]` -/
def P12613174435255802617.Spec : Prop :=
  ∀ n, (P12613174435255802617.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P16065172178039867988

`∩[A246414(n+1), A277096(n+1)]`
-/

namespace A246297.P16065172178039867988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P16065172178039867988

namespace A246297

/-- `∩[A246414(n+1), A277096(n+1)]` -/
def P16065172178039867988.Spec : Prop :=
  ∀ n, (P16065172178039867988.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P1659658645666046672

`∩[A246414(n+1), A277138(n+1)]`
-/

namespace A246297.P1659658645666046672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P1659658645666046672

namespace A246297

/-- `∩[A246414(n+1), A277138(n+1)]` -/
def P1659658645666046672.Spec : Prop :=
  ∀ n, (P1659658645666046672.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P13968887607326215481

`∩[A246414(n+1), A327139(n+1)]`
-/

namespace A246297.P13968887607326215481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P13968887607326215481

namespace A246297

/-- `∩[A246414(n+1), A327139(n+1)]` -/
def P13968887607326215481.Spec : Prop :=
  ∀ n, (P13968887607326215481.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P11929300844239223775

`∩[A246414(n+1), A332483(n+1)]`
-/

namespace A246297.P11929300844239223775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P11929300844239223775

namespace A246297

/-- `∩[A246414(n+1), A332483(n+1)]` -/
def P11929300844239223775.Spec : Prop :=
  ∀ n, (P11929300844239223775.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P9334863277286712322

`∩[A070751(n+1), A327139(n+1)]`
-/

namespace A246297.P9334863277286712322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P9334863277286712322

namespace A246297

/-- `∩[A070751(n+1), A327139(n+1)]` -/
def P9334863277286712322.Spec : Prop :=
  ∀ n, (P9334863277286712322.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P12524556544924261088

`∩[A246293(n+1), A327139(n+1)]`
-/

namespace A246297.P12524556544924261088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P12524556544924261088

namespace A246297

/-- `∩[A246293(n+1), A327139(n+1)]` -/
def P12524556544924261088.Spec : Prop :=
  ∀ n, (P12524556544924261088.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P14134451143548665336

`∩[A246303(n+1), A327139(n+1)]`
-/

namespace A246297.P14134451143548665336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P14134451143548665336

namespace A246297

/-- `∩[A246303(n+1), A327139(n+1)]` -/
def P14134451143548665336.Spec : Prop :=
  ∀ n, (P14134451143548665336.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P4643080798566369360

`∩[A246410(n+1), A327139(n+1)]`
-/

namespace A246297.P4643080798566369360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P4643080798566369360

namespace A246297

/-- `∩[A246410(n+1), A327139(n+1)]` -/
def P4643080798566369360.Spec : Prop :=
  ∀ n, (P4643080798566369360.a n : ℤ) = A246297 (n + 1)

end A246297

/-! ## A246297.P950410170230318983

`∩[A327139(n+1), A332487(n+1)]`
-/

namespace A246297.P950410170230318983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P950410170230318983

namespace A246297

/-- `∩[A327139(n+1), A332487(n+1)]` -/
def P950410170230318983.Spec : Prop :=
  ∀ n, (P950410170230318983.a n : ℤ) = A246297 (n + 1)

end A246297

/-!
# A246298: Numbers k such that sin(k) > sin(k+1) > sin(k+2) < sin(k+3).

The programs for A246298, the canonical program `A246298.P5876360237639005014` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246298 has offset 1).

The definition of A246298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246298.P9647742379973007099

`A246299(1+n)+1`
-/

namespace A246298.P9647742379973007099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246299 (1 + n) + 1

end

end A246298.P9647742379973007099

namespace A246298

/-- `A246299(1+n)+1` -/
def P9647742379973007099.Spec : Prop :=
  ∀ n, P9647742379973007099.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P5876360237639005014

`A246297(1+n)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A246298

/-- `A246297(1+n)-1` -/
def P5876360237639005014.Spec : Prop :=
  ∀ n, P5876360237639005014.a n = A246298 (n + 1)

theorem P5876360237639005014.correct : P5876360237639005014.Spec := by
  intro n
  simp only [A246298, Nat.add_sub_cancel]

end A246298

/-! ## A246298.P15553550270230049942

`A327139(2*(1+n))-1`
-/

namespace A246298.P15553550270230049942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (1 + n)) - 1

end

end A246298.P15553550270230049942

namespace A246298

/-- `A327139(2*(1+n))-1` -/
def P15553550270230049942.Spec : Prop :=
  ∀ n, P15553550270230049942.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P3907644359781059572

`∩[A277096(n+1), A327139(n+1)]-1`
-/

namespace A246298.P3907644359781059572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P3907644359781059572

namespace A246298

/-- `∩[A277096(n+1), A327139(n+1)]-1` -/
def P3907644359781059572.Spec : Prop :=
  ∀ n, P3907644359781059572.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P8769236081139124182

`∩[A277138(n+1), A327139(n+1)]-1`
-/

namespace A246298.P8769236081139124182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P8769236081139124182

namespace A246298

/-- `∩[A277138(n+1), A327139(n+1)]-1` -/
def P8769236081139124182.Spec : Prop :=
  ∀ n, P8769236081139124182.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P10462570218546363117

`∩[A327139(n+1), A332483(n+1)]-1`
-/

namespace A246298.P10462570218546363117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P10462570218546363117

namespace A246298

/-- `∩[A327139(n+1), A332483(n+1)]-1` -/
def P10462570218546363117.Spec : Prop :=
  ∀ n, P10462570218546363117.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P8667779612215945303

`A246414(3*n+2)-1`
-/

namespace A246298.P8667779612215945303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (3 * n + 2) - 1

end

end A246298.P8667779612215945303

namespace A246298

/-- `A246414(3*n+2)-1` -/
def P8667779612215945303.Spec : Prop :=
  ∀ n, P8667779612215945303.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P1194863790989385762

`floor(A246295(3*(n+1))/3)-1`
-/

namespace A246298.P1194863790989385762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246295 (3 * (n + 1)) : ℚ) / 3⌋ - 1

end

end A246298.P1194863790989385762

namespace A246298

/-- `floor(A246295(3*(n+1))/3)-1` -/
def P1194863790989385762.Spec : Prop :=
  ∀ n, P1194863790989385762.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P6428424826351843768

`∩[A246414(n+1), A277096(n+1)]-1`
-/

namespace A246298.P6428424826351843768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P6428424826351843768

namespace A246298

/-- `∩[A246414(n+1), A277096(n+1)]-1` -/
def P6428424826351843768.Spec : Prop :=
  ∀ n, P6428424826351843768.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P8274244143854506512

`∩[A246414(n+1), A277138(n+1)]-1`
-/

namespace A246298.P8274244143854506512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P8274244143854506512

namespace A246298

/-- `∩[A246414(n+1), A277138(n+1)]-1` -/
def P8274244143854506512.Spec : Prop :=
  ∀ n, P8274244143854506512.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P5031150004751329389

`∩[A246414(n+1), A327139(n+1)]-1`
-/

namespace A246298.P5031150004751329389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P5031150004751329389

namespace A246298

/-- `∩[A246414(n+1), A327139(n+1)]-1` -/
def P5031150004751329389.Spec : Prop :=
  ∀ n, P5031150004751329389.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P4312578251478515669

`∩[A246414(n+1), A332483(n+1)]-1`
-/

namespace A246298.P4312578251478515669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P4312578251478515669

namespace A246298

/-- `∩[A246414(n+1), A332483(n+1)]-1` -/
def P4312578251478515669.Spec : Prop :=
  ∀ n, P4312578251478515669.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P14395890771664160936

`∩[A070751(n+1), A327139(n+1)]-1`
-/

namespace A246298.P14395890771664160936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P14395890771664160936

namespace A246298

/-- `∩[A070751(n+1), A327139(n+1)]-1` -/
def P14395890771664160936.Spec : Prop :=
  ∀ n, P14395890771664160936.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P5733293757753729235

`∩[A246293(n+1), A327139(n+1)-1]`
-/

namespace A246298.P5733293757753729235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246298.P5733293757753729235

namespace A246298

/-- `∩[A246293(n+1), A327139(n+1)-1]` -/
def P5733293757753729235.Spec : Prop :=
  ∀ n, (P5733293757753729235.a n : ℤ) = A246298 (n + 1)

end A246298

/-! ## A246298.P2454513785409380561

`∩[A246303(n+1), A327139(n+1)]-1`
-/

namespace A246298.P2454513785409380561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P2454513785409380561

namespace A246298

/-- `∩[A246303(n+1), A327139(n+1)]-1` -/
def P2454513785409380561.Spec : Prop :=
  ∀ n, P2454513785409380561.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P8678170026868340609

`∩[A246410(n+1), A327139(n+1)]-1`
-/

namespace A246298.P8678170026868340609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P8678170026868340609

namespace A246298

/-- `∩[A246410(n+1), A327139(n+1)]-1` -/
def P8678170026868340609.Spec : Prop :=
  ∀ n, P8678170026868340609.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P15731006392757828312

`∩[A327139(n+1), A332487(n+1)]-1`
-/

namespace A246298.P15731006392757828312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246298.P15731006392757828312

namespace A246298

/-- `∩[A327139(n+1), A332487(n+1)]-1` -/
def P15731006392757828312.Spec : Prop :=
  ∀ n, P15731006392757828312.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P6585470295206028718

`A020725(A246299(n+1))`
-/

namespace A246298.P6585470295206028718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246299 (n + 1)).toNat

end

end A246298.P6585470295206028718

namespace A246298

/-- `A020725(A246299(n+1))` -/
def P6585470295206028718.Spec : Prop :=
  ∀ n, P6585470295206028718.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P14956594079545006243

`A023443(A246297(n+1))`
-/

namespace A246298.P14956594079545006243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246297 (n + 1)).toNat

end

end A246298.P14956594079545006243

namespace A246298

/-- `A023443(A246297(n+1))` -/
def P14956594079545006243.Spec : Prop :=
  ∀ n, P14956594079545006243.a n = A246298 (n + 1)

end A246298

/-!
# A246299: Numbers k such that sin(k) > sin(k+1) > sin(k+2) > sin(k+3) < sin(k+4).

The programs for A246299, the canonical program `A246299.P17221275993677015651` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246299 has offset 1).

The definition of A246299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246299.P17221275993677015651

`A246298(1+n)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246299

/-- `A246298(1+n)-1` -/
def P17221275993677015651.Spec : Prop :=
  ∀ n, P17221275993677015651.a n = A246299 (n + 1)

theorem P17221275993677015651.correct : P17221275993677015651.Spec := by
  intro n
  simp only [A246299, Nat.add_sub_cancel]

end A246299

/-! ## A246299.P13986292487318039360

`A246297(1+n)-2`
-/

namespace A246299.P13986292487318039360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (1 + n) - 2

end

end A246299.P13986292487318039360

namespace A246299

/-- `A246297(1+n)-2` -/
def P13986292487318039360.Spec : Prop :=
  ∀ n, P13986292487318039360.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P7911284658642792429

`A327139(2*(1+n))-2`
-/

namespace A246299.P7911284658642792429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (1 + n)) - 2

end

end A246299.P7911284658642792429

namespace A246299

/-- `A327139(2*(1+n))-2` -/
def P7911284658642792429.Spec : Prop :=
  ∀ n, P7911284658642792429.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P10352944599829027461

`∩[A277096(n+1), A327139(n+1)]-2`
-/

namespace A246299.P10352944599829027461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P10352944599829027461

namespace A246299

/-- `∩[A277096(n+1), A327139(n+1)]-2` -/
def P10352944599829027461.Spec : Prop :=
  ∀ n, P10352944599829027461.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P15839565105520046994

`∩[A277138(n+1), A327139(n+1)]-2`
-/

namespace A246299.P15839565105520046994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P15839565105520046994

namespace A246299

/-- `∩[A277138(n+1), A327139(n+1)]-2` -/
def P15839565105520046994.Spec : Prop :=
  ∀ n, P15839565105520046994.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P4603306323946379308

`A246388(2*n+1)-(A257984(2*(n+1))+2)`
-/

namespace A246299.P4603306323946379308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 (2 * n + 1) - (A257984 (2 * (n + 1)) + 2)

end

end A246299.P4603306323946379308

namespace A246299

/-- `A246388(2*n+1)-(A257984(2*(n+1))+2)` -/
def P4603306323946379308.Spec : Prop :=
  ∀ n, P4603306323946379308.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P5813260364584467274

`∩[A327139(n+1), A246390(n)]-2`
-/

namespace A246299.P5813260364584467274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P5813260364584467274

namespace A246299

/-- `∩[A327139(n+1), A246390(n)]-2` -/
def P5813260364584467274.Spec : Prop :=
  ∀ n, P5813260364584467274.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P9030407430113519539

`A246414(3*n+2)-2`
-/

namespace A246299.P9030407430113519539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (3 * n + 2) - 2

end

end A246299.P9030407430113519539

namespace A246299

/-- `A246414(3*n+2)-2` -/
def P9030407430113519539.Spec : Prop :=
  ∀ n, P9030407430113519539.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P10929117586776625123

`floor(A246295(3*(n+1))/3)-2`
-/

namespace A246299.P10929117586776625123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246295 (3 * (n + 1)) : ℚ) / 3⌋ - 2

end

end A246299.P10929117586776625123

namespace A246299

/-- `floor(A246295(3*(n+1))/3)-2` -/
def P10929117586776625123.Spec : Prop :=
  ∀ n, P10929117586776625123.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P8756667111298274847

`∩[A246414(n+1), A277096(n+1)]-2`
-/

namespace A246299.P8756667111298274847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P8756667111298274847

namespace A246299

/-- `∩[A246414(n+1), A277096(n+1)]-2` -/
def P8756667111298274847.Spec : Prop :=
  ∀ n, P8756667111298274847.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P5401561870875487568

`∩[A246414(n+1), A277138(n+1)]-2`
-/

namespace A246299.P5401561870875487568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P5401561870875487568

namespace A246299

/-- `∩[A246414(n+1), A277138(n+1)]-2` -/
def P5401561870875487568.Spec : Prop :=
  ∀ n, P5401561870875487568.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P9498789476641847167

`∩[A246414(n+1), A327139(n+1)]-2`
-/

namespace A246299.P9498789476641847167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P9498789476641847167

namespace A246299

/-- `∩[A246414(n+1), A327139(n+1)]-2` -/
def P9498789476641847167.Spec : Prop :=
  ∀ n, P9498789476641847167.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P7269808002150179729

`∩[A246414(n+1), A332483(n+1)]-2`
-/

namespace A246299.P7269808002150179729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P7269808002150179729

namespace A246299

/-- `∩[A246414(n+1), A332483(n+1)]-2` -/
def P7269808002150179729.Spec : Prop :=
  ∀ n, P7269808002150179729.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P10222527750731496497

`∩[A026311(n+1), A327139(n+1)-2]`
-/

namespace A246299.P10222527750731496497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246299.P10222527750731496497

namespace A246299

/-- `∩[A026311(n+1), A327139(n+1)-2]` -/
def P10222527750731496497.Spec : Prop :=
  ∀ n, (P10222527750731496497.a n : ℤ) = A246299 (n + 1)

end A246299

/-! ## A246299.P4085741780562999137

`∩[A070751(n+1), A327139(n+1)]-2`
-/

namespace A246299.P4085741780562999137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P4085741780562999137

namespace A246299

/-- `∩[A070751(n+1), A327139(n+1)]-2` -/
def P4085741780562999137.Spec : Prop :=
  ∀ n, P4085741780562999137.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P3305764736057174562

`∩[A070752(n+1), A327139(n+1)-2]`
-/

namespace A246299.P3305764736057174562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246299.P3305764736057174562

namespace A246299

/-- `∩[A070752(n+1), A327139(n+1)-2]` -/
def P3305764736057174562.Spec : Prop :=
  ∀ n, (P3305764736057174562.a n : ℤ) = A246299 (n + 1)

end A246299

/-! ## A246299.P1320767474171126780

`∩[A246293(n+1), A327139(n+1)-2]`
-/

namespace A246299.P1320767474171126780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246299.P1320767474171126780

namespace A246299

/-- `∩[A246293(n+1), A327139(n+1)-2]` -/
def P1320767474171126780.Spec : Prop :=
  ∀ n, (P1320767474171126780.a n : ℤ) = A246299 (n + 1)

end A246299

/-! ## A246299.P17719553035279921103

`∩[A246303(n+1), A327139(n+1)]-2`
-/

namespace A246299.P17719553035279921103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P17719553035279921103

namespace A246299

/-- `∩[A246303(n+1), A327139(n+1)]-2` -/
def P17719553035279921103.Spec : Prop :=
  ∀ n, P17719553035279921103.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P12969266608127845567

`∩[A246410(n+1), A327139(n+1)]-2`
-/

namespace A246299.P12969266608127845567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246299.P12969266608127845567

namespace A246299

/-- `∩[A246410(n+1), A327139(n+1)]-2` -/
def P12969266608127845567.Spec : Prop :=
  ∀ n, P12969266608127845567.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P316073985018120140

`A023443(A246298(n+1))`
-/

namespace A246299.P316073985018120140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246298 (n + 1)).toNat

end

end A246299.P316073985018120140

namespace A246299

/-- `A023443(A246298(n+1))` -/
def P316073985018120140.Spec : Prop :=
  ∀ n, P316073985018120140.a n = A246299 (n + 1)

end A246299

