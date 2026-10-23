import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246200: Self-inverse permutation of natural numbers: a(n) = A057889(3*n) / 3.

The programs for A246200, the canonical program `A246200.P12941183571808914625` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246200 has offset 0).

The definition of A246200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246200.P12941183571808914625

`A057889(3*n)/3`

The canonical program, it is in `Seq.B004.C002`.
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

/-! ## A246200.P6825723799655913831

`A264968(A057889(A266642(n)))`
-/

namespace A246200.P6825723799655913831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A057889 (A266642 n).toNat).toNat

end

end A246200.P6825723799655913831

namespace A246200

/-- `A264968(A057889(A266642(n)))` -/
def P6825723799655913831.Spec : Prop :=
  ∀ n, P6825723799655913831.a n = A246200 n

end A246200

/-! ## A246200.P14136785259985848401

`A266644(A264965(A057889(n)))`
-/

namespace A246200.P14136785259985848401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A264965 (A057889 n).toNat).toNat

end

end A246200.P14136785259985848401

namespace A246200

/-- `A266644(A264965(A057889(n)))` -/
def P14136785259985848401.Spec : Prop :=
  ∀ n, P14136785259985848401.a n = A246200 n

end A246200

/-! ## A246200.P9814759276812019098

`A266644(A264965(A263272(A266641(n))))`
-/

namespace A246200.P9814759276812019098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A264965 (A263272 (A266641 n).toNat).toNat).toNat

end

end A246200.P9814759276812019098

namespace A246200

/-- `A266644(A264965(A263272(A266641(n))))` -/
def P9814759276812019098.Spec : Prop :=
  ∀ n, P9814759276812019098.a n = A246200 n

end A246200

/-! ## A246200.P13530549966231687890

`A266644(A057889(A264966(n)))`
-/

namespace A246200.P13530549966231687890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A057889 (A264966 n).toNat).toNat

end

end A246200.P13530549966231687890

namespace A246200

/-- `A266644(A057889(A264966(n)))` -/
def P13530549966231687890.Spec : Prop :=
  ∀ n, P13530549966231687890.a n = A246200 n

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

/-! ## A246200.P4138600913802012595

`A263272(A266643(2*n)/2)`
-/

namespace A246200.P4138600913802012595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A266643 (2 * n) : ℚ) / 2)).toNat

end

end A246200.P4138600913802012595

namespace A246200

/-- `A263272(A266643(2*n)/2)` -/
def P4138600913802012595.Spec : Prop :=
  ∀ n, P4138600913802012595.a n = A246200 n

end A246200

/-! ## A246200.P9812150885661435291

`A264968(A263273(2*n)/2)`
-/

namespace A246200.P9812150885661435291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A246200.P9812150885661435291

namespace A246200

/-- `A264968(A263273(2*n)/2)` -/
def P9812150885661435291.Spec : Prop :=
  ∀ n, P9812150885661435291.a n = A246200 n

end A246200

/-! ## A246200.P12809528814878752901

`A266644(A265329(A264965(n)))`
-/

namespace A246200.P12809528814878752901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A265329 (A264965 n).toNat).toNat

end

end A246200.P12809528814878752901

namespace A246200

/-- `A266644(A265329(A264965(n)))` -/
def P12809528814878752901.Spec : Prop :=
  ∀ n, P12809528814878752901.a n = A246200 n

end A246200

/-! ## A246200.P4513230222322865039

`A266644(A265329(A057889(A265369(n))))`
-/

namespace A246200.P4513230222322865039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A265329 (A057889 (A265369 n).toNat).toNat).toNat

end

end A246200.P4513230222322865039

namespace A246200

/-- `A266644(A265329(A057889(A265369(n))))` -/
def P4513230222322865039.Spec : Prop :=
  ∀ n, P4513230222322865039.a n = A246200 n

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

/-! ## A246200.P10115438123271302851

`A266644(A264966(A265329(n)))`
-/

namespace A246200.P10115438123271302851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A264966 (A265329 n).toNat).toNat

end

end A246200.P10115438123271302851

namespace A246200

/-- `A266644(A264966(A265329(n)))` -/
def P10115438123271302851.Spec : Prop :=
  ∀ n, P10115438123271302851.a n = A246200 n

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

/-! ## A246201.P15077564796504064224

`A246203(A234612(A003188(n+1)))`
-/

namespace A246201.P15077564796504064224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246203 (A234612 (A003188 (n + 1)).toNat).toNat

end

end A246201.P15077564796504064224

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

/-! ## A246201.P1064985575581932084

`A246377(A260424(A260425(A260424(A260423(n+1)))))`
-/

namespace A246201.P1064985575581932084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A260424 (A260425 (A260424 (A260423 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P1064985575581932084

/-! ## A246201.P5508915923229062912

`A234612(A003188(A246163(A054429(A054429(n+1)))))`
-/

namespace A246201.P5508915923229062912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A246163 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P5508915923229062912

/-! ## A246201.P9413005698263698645

`A054429(A234025(A246163(A059893(A059893(n+1)))))`
-/

namespace A246201.P9413005698263698645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246163 (A059893 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P9413005698263698645

/-! ## A246201.P8190037960350918176

`A234612(A003188(A246163(A234612(A234612(n+1)))))`
-/

namespace A246201.P8190037960350918176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A246163 (A234612 (A234612 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P8190037960350918176

/-! ## A246201.P15863109188559635718

`A054429(A234025(A246163(A234024(A234024(n+1)))))`
-/

namespace A246201.P15863109188559635718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246163 (A234024 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P15863109188559635718

/-! ## A246201.P14891966087094733877

`A054429(A234025(A246163(A234027(A234027(n+1)))))`
-/

namespace A246201.P14891966087094733877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246163 (A234027 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P14891966087094733877

/-! ## A246201.P11989874320359374706

`A054429(A234025(A246163(A245812(A245812(n+1)))))`
-/

namespace A246201.P11989874320359374706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246163 (A245812 (A245812 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P11989874320359374706

/-! ## A246201.P11856775830166910436

`A234613(A193231(A246161(A234613(A234613(n+1)))))`
-/

namespace A246201.P11856775830166910436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 (A246161 (A234613 (A234613 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P11856775830166910436

/-! ## A246201.P15759515787035882371

`A246203(A260426(A260422(A246203(n+1))))`
-/

namespace A246201.P15759515787035882371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246203 (A260426 (A260422 (A246203 (n + 1)).toNat).toNat).toNat

end

end A246201.P15759515787035882371

/-! ## A246201.P5163985671602521150

`A193231(A234612(A246161(A246161(A246162(n+1)))))`
-/

namespace A246201.P5163985671602521150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 (A246161 (A246161 (A246162 (n + 1)).toNat).toNat).toNat).toNat

end

end A246201.P5163985671602521150

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

/-! ## A246202.P4855488993496802044

`A245702(xor(A086099(n), A086799(n+1)))`
-/

namespace A246202.P4855488993496802044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A246202.P4855488993496802044

/-! ## A246202.P9326109705652666441

`A245702(A004756(n+1)-A144396(n+1))`
-/

namespace A246202.P9326109705652666441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A004756 (n + 1) - A144396 (n + 1)).toNat

end

end A246202.P9326109705652666441

/-! ## A246202.P17589994946017717050

`A245702(A004758(n+1)-A171763(n+1))`
-/

namespace A246202.P17589994946017717050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A004758 (n + 1) - A171763 (n + 1)).toNat

end

end A246202.P17589994946017717050

/-! ## A246202.P12768233269781527326

`A245702(A004756(n+1)%A144396(n+1))`
-/

namespace A246202.P12768233269781527326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (Int.tmod (A004756 (n + 1)) (A144396 (n + 1))).toNat

end

end A246202.P12768233269781527326

/-! ## A246202.P4952468099314802164

`A246162(xor(n+1, A110654(n)))`
-/

namespace A246202.P4952468099314802164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (Int.xor (n + 1 : ℤ) (A110654 n)).toNat

end

end A246202.P4952468099314802164

/-! ## A246202.P5881155659156393974

`A246162(A286548(n+1)+1+n)`
-/

namespace A246202.P5881155659156393974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A286548 (n + 1) + 1 + (n : ℤ)).toNat

end

end A246202.P5881155659156393974

/-! ## A246202.P4569953516971535064

`A246162(A193231(A234613(n+1)))`
-/

namespace A246202.P4569953516971535064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A193231 (A234613 (n + 1)).toNat).toNat

end

end A246202.P4569953516971535064

/-! ## A246202.P12810027624763806894

`A246162(A234612(A234613(A006068(n+1))))`
-/

namespace A246202.P12810027624763806894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A234612 (A234613 (A006068 (n + 1)).toNat).toNat).toNat

end

end A246202.P12810027624763806894

/-! ## A246202.P8813394172114101297

`A246162(A234612(A006068(A234612(n+1))))`
-/

namespace A246202.P8813394172114101297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A234612 (A006068 (A234612 (n + 1)).toNat).toNat).toNat

end

end A246202.P8813394172114101297

/-! ## A246202.P13813401598477990379

`A245703(A246378(n+1))`
-/

namespace A246202.P13813401598477990379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A246378 (n + 1)).toNat

end

end A246202.P13813401598477990379

/-! ## A246202.P16348336911548582165

`A245703(A255422(A237126(n+1)))`
-/

namespace A246202.P16348336911548582165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A255422 (A237126 (n + 1)).toNat).toNat

end

end A246202.P16348336911548582165

/-! ## A246202.P18156651126771077618

`A245703(A260424(A260422(A260424(A260423(n+1)))))`
-/

namespace A246202.P18156651126771077618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A260424 (A260422 (A260424 (A260423 (n + 1)).toNat).toNat).toNat).toNat

end

end A246202.P18156651126771077618

/-! ## A246202.P7761439782052286874

`A246164(A234613(A006068(n+1)))`
-/

namespace A246202.P7761439782052286874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A234613 (A006068 (n + 1)).toNat).toNat

end

end A246202.P7761439782052286874

/-! ## A246202.P8628907343102862806

`A246164(A006068(A234612(n+1)))`
-/

namespace A246202.P8628907343102862806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A006068 (A234612 (n + 1)).toNat).toNat

end

end A246202.P8628907343102862806

/-! ## A246202.P11751760091439093865

`A246164(A054429(A234025(n+1)))`
-/

namespace A246202.P11751760091439093865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A054429 (A234025 (n + 1)).toNat).toNat

end

end A246202.P11751760091439093865

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

/-! ## A246203.P15537963686694598354

`A246201(A234612(A003188(n+1)))`
-/

namespace A246203.P15537963686694598354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A234612 (A003188 (n + 1)).toNat).toNat

end

end A246203.P15537963686694598354

/-! ## A246203.P3815855229650850578

`A006068(A246161(A003188(A234613(n+1))))`
-/

namespace A246203.P3815855229650850578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A003188 (A234613 (n + 1)).toNat).toNat).toNat

end

end A246203.P3815855229650850578

/-! ## A246203.P5714680953846162074

`A006068(A246161(A234613(A006068(n+1))))`
-/

namespace A246203.P5714680953846162074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A234613 (A006068 (n + 1)).toNat).toNat).toNat

end

end A246203.P5714680953846162074

/-! ## A246203.P16706793803661455512

`A006068(A246161(A006068(A234612(n+1))))`
-/

namespace A246203.P16706793803661455512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A006068 (A234612 (n + 1)).toNat).toNat).toNat

end

end A246203.P16706793803661455512

/-! ## A246203.P9549380393098149776

`A193231(A246163(A234026(A054429(n+1))))`
-/

namespace A246203.P9549380393098149776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A234026 (A054429 (n + 1)).toNat).toNat).toNat

end

end A246203.P9549380393098149776

/-! ## A246203.P12254213692353746496

`A193231(A246163(A054429(A234025(n+1))))`
-/

namespace A246203.P12254213692353746496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A054429 (A234025 (n + 1)).toNat).toNat).toNat

end

end A246203.P12254213692353746496

/-! ## A246203.P9000394193008904592

`A193231(A246163(A245446(A056539(n+1))))`
-/

namespace A246203.P9000394193008904592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A245446 (A056539 (n + 1)).toNat).toNat).toNat

end

end A246203.P9000394193008904592

/-! ## A246203.P4503687518596954699

`A193231(A246163(A056539(A245445(n+1))))`
-/

namespace A246203.P4503687518596954699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A056539 (A245445 (n + 1)).toNat).toNat).toNat

end

end A246203.P4503687518596954699

/-! ## A246203.P10457365513628154618

`A193231(A246163(A379471(A057889(n+1))))`
-/

namespace A246203.P10457365513628154618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A379471 (A057889 (n + 1)).toNat).toNat).toNat

end

end A246203.P10457365513628154618

/-! ## A246203.P14374846116977183554

`A193231(A246163(A057889(A379472(n+1))))`
-/

namespace A246203.P14374846116977183554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A057889 (A379472 (n + 1)).toNat).toNat).toNat

end

end A246203.P14374846116977183554

/-! ## A246203.P8317794040394371530

`A193231(A246163(A245812(A234026(n+1))))`
-/

namespace A246203.P8317794040394371530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A245812 (A234026 (n + 1)).toNat).toNat).toNat

end

end A246203.P8317794040394371530

/-! ## A246203.P1540932293459702722

`A193231(A246163(A234025(A245812(n+1))))`
-/

namespace A246203.P1540932293459702722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A234025 (A245812 (n + 1)).toNat).toNat).toNat

end

end A246203.P1540932293459702722

/-! ## A246203.P224562892168828448

`A193231(A246163(A193231(A059893(A059893(n+1)))))`
-/

namespace A246203.P224562892168828448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A193231 (A059893 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P224562892168828448

/-! ## A246203.P1724024926317805951

`A006068(A246161(A193231(A234024(A234024(n+1)))))`
-/

namespace A246203.P1724024926317805951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A193231 (A234024 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P1724024926317805951

/-! ## A246203.P8527179739181096452

`A006068(A246161(A234027(A193231(A234027(n+1)))))`
-/

namespace A246203.P8527179739181096452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246161 (A234027 (A193231 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P8527179739181096452

/-! ## A246203.P17654631842855985037

`A193231(A246163(A193231(A246161(A246162(n+1)))))`
-/

namespace A246203.P17654631842855985037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246163 (A193231 (A246161 (A246162 (n + 1)).toNat).toNat).toNat).toNat

end

end A246203.P17654631842855985037

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

/-! ## A246204.P2779683602091875406

`A193231(A246162(A003188(n+1)))`
-/

namespace A246204.P2779683602091875406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246162 (A003188 (n + 1)).toNat).toNat

end

end A246204.P2779683602091875406

/-! ## A246204.P14785472386105427860

`A193231(A246162(A193231(A234613(n+1))))`
-/

namespace A246204.P14785472386105427860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246162 (A193231 (A234613 (n + 1)).toNat).toNat).toNat

end

end A246204.P14785472386105427860

/-! ## A246204.P876402638662949377

`A234026(A054429(A246164(A234026(A054429(n+1)))))`
-/

namespace A246204.P876402638662949377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A054429 (A246164 (A234026 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A246204.P876402638662949377

/-! ## A246204.P6785158576075650294

`A054429(A234025(A246164(A054429(A234025(n+1)))))`
-/

namespace A246204.P6785158576075650294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A234025 (A246164 (A054429 (A234025 (n + 1)).toNat).toNat).toNat).toNat

end

end A246204.P6785158576075650294

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

/-! ## A246205.P1108310532199727804

`A246209(A246163(A246206(A246209(A246163(n+1)))))`
-/

namespace A246205.P1108310532199727804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A246163 (A246206 (A246209 (A246163 (n + 1)).toNat).toNat).toNat).toNat

end

end A246205.P1108310532199727804

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

/-! ## A246207.P13908653228658374380

`A246209(A092569(xor(n, A157928(n))))`
-/

namespace A246207.P13908653228658374380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A092569 (Int.xor (n : ℤ) (A157928 n)).toNat).toNat

end

end A246207.P13908653228658374380

/-! ## A246207.P10916849913178027872

`A246209(A234025(xor(n, A280507(n))))`
-/

namespace A246207.P10916849913178027872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A246207.P10916849913178027872

/-! ## A246207.P1278649075902187896

`A246209(xor(A233279(n), A292600(n)))`
-/

namespace A246207.P1278649075902187896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A246207.P1278649075902187896

/-! ## A246207.P17801361042092189116

`A246209(A193231(A245812(A193231(n))))`
-/

namespace A246207.P17801361042092189116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A193231 (A245812 (A193231 n).toNat).toNat).toNat

end

end A246207.P17801361042092189116

/-! ## A246207.P5896167883257973637

`A246209(A245812(A246208(A246209(A245812(n)))))`
-/

namespace A246207.P5896167883257973637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A245812 (A246208 (A246209 (A245812 n).toNat).toNat).toNat).toNat

end

end A246207.P5896167883257973637

/-! ## A246207.P16420942039689952461

`A246209(A246208(A246209(A246209(A246210(n)))))`
-/

namespace A246207.P16420942039689952461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246209 (A246208 (A246209 (A246209 (A246210 n).toNat).toNat).toNat).toNat

end

end A246207.P16420942039689952461

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

/-! ## A246208.P8723364603927312907

`A246210(A246207(A246210(n)))`
-/

namespace A246208.P8723364603927312907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 (A246207 (A246210 n).toNat).toNat

end

end A246208.P8723364603927312907

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

/-! ## A246209.P7234165856873791111

`A246207(A286546(n)+A233279(n))`
-/

namespace A246209.P7234165856873791111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A286546 n + A233279 n).toNat

end

end A246209.P7234165856873791111

/-! ## A246209.P18271241635262955870

`A246207(A092569(xor(n, A157928(n))))`
-/

namespace A246209.P18271241635262955870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A092569 (Int.xor (n : ℤ) (A157928 n)).toNat).toNat

end

end A246209.P18271241635262955870

/-! ## A246209.P14538703948021705491

`A246207(A234025(xor(n, A280507(n))))`
-/

namespace A246209.P14538703948021705491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A246209.P14538703948021705491

/-! ## A246209.P12712958000267725974

`A246207(xor(A233279(n), A292600(n)))`
-/

namespace A246209.P12712958000267725974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A246209.P12712958000267725974

/-! ## A246209.P1401927347110957127

`A246207(A193231(A245812(A193231(n))))`
-/

namespace A246209.P1401927347110957127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A193231 (A245812 (A193231 n).toNat).toNat).toNat

end

end A246209.P1401927347110957127

/-! ## A246209.P12383967881654606695

`A246207(A246210(A246207(n)%A000051(n)))`
-/

namespace A246209.P12383967881654606695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A246210 (Int.tmod (A246207 n) (A000051 n)).toNat).toNat

end

end A246209.P12383967881654606695

/-! ## A246209.P16736059097376658675

`A246207(A246210(A246207(n))%A000124(n))`
-/

namespace A246209.P16736059097376658675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (Int.tmod (A246210 (A246207 n).toNat) (A000124 n)).toNat

end

end A246209.P16736059097376658675

/-! ## A246209.P2998908690831319307

`A246207(A246210(A246207(A245812(A245812(n)))))`
-/

namespace A246209.P2998908690831319307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A246210 (A246207 (A245812 (A245812 n).toNat).toNat).toNat).toNat

end

end A246209.P2998908690831319307

/-! ## A246209.P6671133775054963144

`A246207(A246210(A246207(A263273(A263273(n)))))`
-/

namespace A246209.P6671133775054963144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 (A246210 (A246207 (A263273 (A263273 n).toNat).toNat).toNat).toNat

end

end A246209.P6671133775054963144

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

/-! ## A246210.P5402822124956335533

`A193231(A245812(A193231(A246208(n))))`
-/

namespace A246210.P5402822124956335533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245812 (A193231 (A246208 n).toNat).toNat).toNat

end

end A246210.P5402822124956335533

/-! ## A246210.P6685814206182084306

`A246208(A246209(A246208(n)))`
-/

namespace A246210.P6685814206182084306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246209 (A246208 n).toNat).toNat

end

end A246210.P6685814206182084306

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

/-! ## A246213.P1028868352444572329

`A241981(A167614(n+2))`
-/

namespace A246213.P1028868352444572329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A167614 (n + 2)).toNat

end

end A246213.P1028868352444572329

/-! ## A246213.P5985341592501835751

`A241981(A052905(n)+8)`
-/

namespace A246213.P5985341592501835751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A052905 n + 8).toNat

end

end A246213.P5985341592501835751

/-! ## A246213.P4192328796504524000

`A241981(A055999(n)+9)`
-/

namespace A246213.P4192328796504524000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A055999 n + 9).toNat

end

end A246213.P4192328796504524000

/-! ## A246213.P499587985547072959

`A241981(eq[3, A002262(n)])`
-/

namespace A246213.P499587985547072959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P499587985547072959

/-! ## A246213.P14645386765174892080

`A241981(eq[4, A166918(n)])`
-/

namespace A246213.P14645386765174892080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P14645386765174892080

/-! ## A246213.P8929396880605637677

`A241981(A166136(n+2)-3)`
-/

namespace A246213.P8929396880605637677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A166136 (n + 2) - 3).toNat

end

end A246213.P8929396880605637677

/-! ## A246213.P17374807360061520867

`A241981(eq[4, A002260(n+1)])`
-/

namespace A246213.P17374807360061520867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P17374807360061520867

/-! ## A246213.P8866727468075142489

`A241981(eq[1, A144328(n+1)-2])`
-/

namespace A246213.P8866727468075142489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P8866727468075142489

/-! ## A246213.P9549141407227829375

`A241981(eq[2, A134868(n+1)-2])`
-/

namespace A246213.P9549141407227829375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246213.P9549141407227829375

/-! ## A246213.P11572213077220710108

`A241981(eq[2, A134868(n+1)/2])`
-/

namespace A246213.P11572213077220710108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A246213.P11572213077220710108

/-!
# A246214: Number of endofunctions on [n] where the largest cycle length equals 4.

The programs for A246214, there is no canonical definition to state claims against.
-/

/-! ## A246214.P11961526388706383280

`A241981(A155212(n)+12)`
-/

namespace A246214.P11961526388706383280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A155212 n + 12).toNat

end

end A246214.P11961526388706383280

/-! ## A246214.P1976243440277616675

`A241981(eq[4, A002262(n)])`
-/

namespace A246214.P1976243440277616675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P1976243440277616675

/-! ## A246214.P6637264640254225068

`A241981(eq[8, A166918(n)])`
-/

namespace A246214.P6637264640254225068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P6637264640254225068

/-! ## A246214.P7033503187170707753

`A241981(eq[16, A059268(n)])`
-/

namespace A246214.P7033503187170707753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P7033503187170707753

/-! ## A246214.P3647255715069622509

`A241981(eq[4, A144328(n+1)])`
-/

namespace A246214.P3647255715069622509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P3647255715069622509

/-! ## A246214.P7067639651271608413

`A241981(eq[5, A002260(n+1)])`
-/

namespace A246214.P7067639651271608413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246214.P7067639651271608413

/-!
# A246215: Number of endofunctions on [n] where the largest cycle length equals 5.

The programs for A246215, there is no canonical definition to state claims against.
-/

/-! ## A246215.P3100550143907816344

`A241981(eq[5, A002262(n)])`
-/

namespace A246215.P3100550143907816344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P3100550143907816344

/-! ## A246215.P15288040587500916674

`A241981(eq[5, A144328(n+1)])`
-/

namespace A246215.P15288040587500916674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P15288040587500916674

/-! ## A246215.P7640584224740109306

`A241981(eq[6, A002260(n+1)])`
-/

namespace A246215.P7640584224740109306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P7640584224740109306

/-! ## A246215.P9897931540043960149

`A241981(eq[6, A134868(n+1)])`
-/

namespace A246215.P9897931540043960149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P9897931540043960149

/-! ## A246215.P12606709312438753784

`A241981(eq[11, A158405(n+1)])`
-/

namespace A246215.P12606709312438753784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246215.P12606709312438753784

/-!
# A246216: Number of endofunctions on [n] where the largest cycle length equals 6.

The programs for A246216, there is no canonical definition to state claims against.
-/

/-! ## A246216.P14667082685425101038

`A241981(eq[6, A002262(n)])`
-/

namespace A246216.P14667082685425101038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246216.P14667082685425101038

/-! ## A246216.P16310452533758599175

`A241981(eq[64, A059268(n)])`
-/

namespace A246216.P16310452533758599175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246216.P16310452533758599175

/-! ## A246216.P1701066247164682687

`A241981(eq[6, A144328(n+1)])`
-/

namespace A246216.P1701066247164682687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246216.P1701066247164682687

/-! ## A246216.P17756622647439761529

`A241981(eq[7, A002260(n+1)])`
-/

namespace A246216.P17756622647439761529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246216.P17756622647439761529

/-! ## A246216.P17652538467119920283

`A241981(eq[17, A037126(n+1)])`
-/

namespace A246216.P17652538467119920283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246216.P17652538467119920283

/-!
# A246217: Number of endofunctions on [n] where the largest cycle length equals 7.

The programs for A246217, there is no canonical definition to state claims against.
-/

/-! ## A246217.P10315040971639069685

`A241981(eq[7, A002262(n)])`
-/

namespace A246217.P10315040971639069685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P10315040971639069685

/-! ## A246217.P16969628450418724018

`A241981(eq[64, A166918(n)])`
-/

namespace A246217.P16969628450418724018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P16969628450418724018

/-! ## A246217.P7827587888980018861

`A241981(eq[7, A144328(n+1)])`
-/

namespace A246217.P7827587888980018861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P7827587888980018861

/-! ## A246217.P15391132272436203306

`A241981(eq[8, A002260(n+1)])`
-/

namespace A246217.P15391132272436203306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P15391132272436203306

/-! ## A246217.P15165243913307072615

`A241981(eq[8, A134868(n+1)])`
-/

namespace A246217.P15165243913307072615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246217.P15165243913307072615

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

/-! ## A246218.P11106660599532554947

`A241981(A000217(n+8)+8)`
-/

namespace A246218.P11106660599532554947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A000217 (n + 8) + 8).toNat

end

end A246218.P11106660599532554947

/-! ## A246218.P14554201550612157989

`A241981(eq[8, A144328(n+1)])`
-/

namespace A246218.P14554201550612157989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246218.P14554201550612157989

/-! ## A246218.P11045489614740584695

`A241981(eq[9, A002260(n+1)])`
-/

namespace A246218.P11045489614740584695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246218.P11045489614740584695

/-! ## A246218.P11587122813208987098

`A241981(eq[9, A134868(n+1)])`
-/

namespace A246218.P11587122813208987098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246218.P11587122813208987098

/-! ## A246218.P12811708925136634125

`A241981(eq[17, A158405(n+1)])`
-/

namespace A246218.P12811708925136634125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246218.P12811708925136634125

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

/-! ## A246219.P16678210064858945720

`A241981(eq[9, A144328(n+1)])`
-/

namespace A246219.P16678210064858945720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246219.P16678210064858945720

/-! ## A246219.P8741309684532215925

`A241981(eq[10, A002260(n+1)])`
-/

namespace A246219.P8741309684532215925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246219.P8741309684532215925

/-! ## A246219.P8493406310558603217

`A241981(eq[10, A134868(n+1)])`
-/

namespace A246219.P8493406310558603217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246219.P8493406310558603217

/-! ## A246219.P9639644991454162631

`A241981(A000217(n+10)-(n+1))`
-/

namespace A246219.P9639644991454162631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A246219.P9639644991454162631

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

/-! ## A246235.P14452103296916974380

`A242249(eq[6, A025581(n)])`
-/

namespace A246235.P14452103296916974380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246235.P14452103296916974380

/-! ## A246235.P1001732877237027246

`A242249(A055999(n+4)-1)`
-/

namespace A246235.P1001732877237027246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A055999 (n + 4) - 1).toNat

end

end A246235.P1001732877237027246

/-! ## A246235.P12553425934916828887

`A242249(A052905(n+4)-2)`
-/

namespace A246235.P12553425934916828887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 4) - 2).toNat

end

end A246235.P12553425934916828887

/-! ## A246235.P9656058136334692835

`A242249(Δ[A026054(n+4)]-1)`
-/

namespace A246235.P9656058136334692835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (f1 (n + 1) - f1 n - 1).toNat

end

end A246235.P9656058136334692835

/-! ## A246235.P2203306973387976138

`A242249(A000096(n+5)+n+1)`
-/

namespace A246235.P2203306973387976138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A246235.P2203306973387976138

/-! ## A246235.P2828610733321706730

`A242249(A034856(n+5)+n+2)`
-/

namespace A246235.P2828610733321706730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A034856 (n + 5) + (n + 2 : ℤ)).toNat

end

end A246235.P2828610733321706730

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

/-! ## A246236.P10864665625781537069

`A242249(eq[7, A025581(n)])`
-/

namespace A246236.P10864665625781537069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246236.P10864665625781537069

/-! ## A246236.P5037041868739503569

`A242249(eq[15, A099375(n)])`
-/

namespace A246236.P5037041868739503569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246236.P5037041868739503569

/-! ## A246236.P16779112824608113815

`A242249(A052905(n+5)-3)`
-/

namespace A246236.P16779112824608113815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 5) - 3).toNat

end

end A246236.P16779112824608113815

/-! ## A246236.P8788055505444748139

`A242249(A000217(n+8)-8)`
-/

namespace A246236.P8788055505444748139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000217 (n + 8) - 8).toNat

end

end A246236.P8788055505444748139

/-! ## A246236.P8635827552520882691

`A242249(eq[8, A004736(n+1)])`
-/

namespace A246236.P8635827552520882691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246236.P8635827552520882691

/-! ## A246236.P9387971645700108910

`A242249(A000096(n+6)+n+1)`
-/

namespace A246236.P9387971645700108910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A246236.P9387971645700108910

/-! ## A246236.P10264451700385151935

`A242249(A034856(n+6)+n+2)`
-/

namespace A246236.P10264451700385151935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A034856 (n + 6) + (n + 2 : ℤ)).toNat

end

end A246236.P10264451700385151935

/-! ## A246236.P13725202655954712544

`A242249(2*n+A000124(n+6)+6)`
-/

namespace A246236.P13725202655954712544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A246236.P13725202655954712544

/-! ## A246236.P7670323256062996836

`A242249(eq[7, A002260(n+1)]+2*n+1)`
-/

namespace A246236.P7670323256062996836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A246236.P7670323256062996836

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

/-! ## A246237.P13131208888761318530

`A242249(A052905(n+6)-4)`
-/

namespace A246237.P13131208888761318530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 6) - 4).toNat

end

end A246237.P13131208888761318530

/-! ## A246237.P9430384198295292905

`A242249(A000217(n+9)-9)`
-/

namespace A246237.P9430384198295292905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000217 (n + 9) - 9).toNat

end

end A246237.P9430384198295292905

/-! ## A246237.P12157579123394134958

`A242249(A000096(n+7)+n+1)`
-/

namespace A246237.P12157579123394134958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A246237.P12157579123394134958

/-! ## A246237.P5365217451775298242

`A242249(A034856(n+7)+n+2)`
-/

namespace A246237.P5365217451775298242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A034856 (n + 7) + (n + 2 : ℤ)).toNat

end

end A246237.P5365217451775298242

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

/-! ## A246238.P9780303341230424931

`A242249(eq[10, A193739(n)])`
-/

namespace A246238.P9780303341230424931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246238.P9780303341230424931

/-! ## A246238.P17229880443138015782

`A242249(eq[19, A099375(n)])`
-/

namespace A246238.P17229880443138015782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246238.P17229880443138015782

/-! ## A246238.P4658353502802657873

`A242249(A000217(n+10)-10)`
-/

namespace A246238.P4658353502802657873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000217 (n + 10) - 10).toNat

end

end A246238.P4658353502802657873

/-! ## A246238.P4650464427334133369

`A242249(eq[10, A004736(n+1)])`
-/

namespace A246238.P4650464427334133369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246238.P4650464427334133369

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

/-! ## A246239.P3785849001482063914

`A242249(eq[11, A193739(n)])`
-/

namespace A246239.P3785849001482063914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246239.P3785849001482063914

/-! ## A246239.P9022339054398588542

`A242249(eq[21, A099375(n)])`
-/

namespace A246239.P9022339054398588542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246239.P9022339054398588542

/-! ## A246239.P15221785016870674990

`A242249(A000217(n+11)-11)`
-/

namespace A246239.P15221785016870674990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000217 (n + 11) - 11).toNat

end

end A246239.P15221785016870674990

/-! ## A246239.P3127178655477292204

`A242249(eq[11, A004736(n+1)])`
-/

namespace A246239.P3127178655477292204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246239.P3127178655477292204

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

/-! ## A246240.P17431293823932081574

`A245397(eq[5, A025581(n)])`
-/

namespace A246240.P17431293823932081574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246240.P17431293823932081574

/-! ## A246240.P14546249140726732665

`A245397(Δ[A023551(n+1)])`
-/

namespace A246240.P14546249140726732665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (f1 (n + 1) - f1 n).toNat

end

end A246240.P14546249140726732665

/-! ## A246240.P8710074331564334481

`A245397(eq[6, A004736(n+1)])`
-/

namespace A246240.P8710074331564334481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246240.P8710074331564334481

/-! ## A246240.P1247739690831821160

`A245397(Δ[A055831(n+5)]-1)`
-/

namespace A246240.P1247739690831821160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (f1 (n + 1) - f1 n - 1).toNat

end

end A246240.P1247739690831821160

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

/-! ## A246241.P9567587514726302343

`A245397(Δ[A023551(n+2)]-1)`
-/

namespace A246241.P9567587514726302343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (f1 (n + 1) - f1 n - 1).toNat

end

end A246241.P9567587514726302343

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

/-! ## A246242.P16620265808663746996

`A245397(A052905(n+5)-3)`
-/

namespace A246242.P16620265808663746996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (A052905 (n + 5) - 3).toNat

end

end A246242.P16620265808663746996

/-!
# A246243: Sum of eighth powers of coefficients in full expansion of (z_1+z_2+...+z_n)^n.

The programs for A246243, there is no canonical definition to state claims against.
-/

/-! ## A246243.P13560429335274405833

`A245397(eq[8, A025581(n)])`
-/

namespace A246243.P13560429335274405833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246243.P13560429335274405833

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

/-! ## A246257.P2843897276432863395

`A254503(A138022(round(2*(n+1)-sqrt(n+1))))`
-/

namespace A246257.P2843897276432863395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A138022 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℝ) - Real.sqrt (n + 1 : ℝ))).toNat).toNat

end

end A246257.P2843897276432863395

/-! ## A246257.P10743909090854522557

`A254503(A096713(n)²/A109446(n))`
-/

namespace A246257.P10743909090854522557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (SequenceMachineLib.roundAway ((A096713 n ^ 2 : ℚ) / (A109446 n : ℚ))).toNat

end

end A246257.P10743909090854522557

/-! ## A246257.P11505283699089323643

`A254503(A096713(n)/A109446(n)*A096713(n))`
-/

namespace A246257.P11505283699089323643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (SequenceMachineLib.roundAway ((A096713 n : ℚ) / (A109446 n : ℚ) * (A096713 n : ℚ))).toNat

end

end A246257.P11505283699089323643

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

/-! ## A246258.P4742470215977340210

`xor(1, xor(1, A246259(A038722(n+1))))`
-/

namespace A246258.P4742470215977340210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A246259 (A038722 (n + 1)).toNat))

end

end A246258.P4742470215977340210

/-! ## A246258.P14810949839372992771

`A246259(A038722(n+1))%A293331(n)`
-/

namespace A246258.P14810949839372992771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246259 (A038722 (n + 1)).toNat) (A293331 n)

end

end A246258.P14810949839372992771

/-! ## A246258.P3129560594550716193

`gcd(A000038(n), A246259(A038722(n+1)))`
-/

namespace A246258.P3129560594550716193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246259 (A038722 (n + 1)).toNat)

end

end A246258.P3129560594550716193

/-! ## A246258.P6485601215674162038

`char[A004442(n)]*A246259(A038722(n+1))`
-/

namespace A246258.P6485601215674162038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246259 (A038722 (n + 1)).toNat

end

end A246258.P6485601215674162038

/-! ## A246258.P6433911132557537372

`char[A057162(n)]*A246259(A038722(n+1))`
-/

namespace A246258.P6433911132557537372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246259 (A038722 (n + 1)).toNat

end

end A246258.P6433911132557537372

/-! ## A246258.P8520814015391959683

`A246259(A038722(n+1))+A209229(3*n)`
-/

namespace A246258.P8520814015391959683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (A038722 (n + 1)).toNat + A209229 (3 * n)

end

end A246258.P8520814015391959683

/-! ## A246258.P8666745887353768713

`A246259(A038722(n+1))+A128617(3*n+4)`
-/

namespace A246258.P8666745887353768713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (A038722 (n + 1)).toNat + A128617 (3 * n + 4)

end

end A246258.P8666745887353768713

/-! ## A246258.P11169036721494765603

`A246259(A038722(n+1))+C(A001221(n+1), 4)`
-/

namespace A246258.P11169036721494765603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (A038722 (n + 1)).toNat + (Nat.choose (A001221 (n + 1)).toNat 4 : ℤ)

end

end A246258.P11169036721494765603

/-! ## A246258.P1694291134504247722

`A246259(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A246258.P1694291134504247722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246259 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A246258.P1694291134504247722

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

/-! ## A246259.P10166183352745483674

`xor(1, xor(1, A246258(A038722(n+1))))`
-/

namespace A246259.P10166183352745483674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A246258 (A038722 (n + 1)).toNat))

end

end A246259.P10166183352745483674

/-! ## A246259.P3855797761345822449

`A246258(A038722(n+1))%A095663(n)`
-/

namespace A246259.P3855797761345822449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246258 (A038722 (n + 1)).toNat) (A095663 n)

end

end A246259.P3855797761345822449

/-! ## A246259.P16229303552956902819

`lcm(A033999(n), A246258(A038722(n+1)))`
-/

namespace A246259.P16229303552956902819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A246258 (A038722 (n + 1)).toNat)

end

end A246259.P16229303552956902819

/-! ## A246259.P1712169472707134945

`∏{d}[A246258(A038722(n+1)), A014963(#)]`
-/

namespace A246259.P1712169472707134945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246258 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A246259.P1712169472707134945

/-! ## A246259.P673825300886182613

`A246258(A038722(n+1))^abs(A062157(n))`
-/

namespace A246259.P673825300886182613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246258 (A038722 (n + 1)).toNat : ℚ) ^ (|A062157 n| : ℤ)

end

end A246259.P673825300886182613

/-! ## A246259.P728923976749080564

`A246258(A038722(n+1))+A000035(2*n)`
-/

namespace A246259.P728923976749080564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246258 (A038722 (n + 1)).toNat + A000035 (2 * n)

end

end A246259.P728923976749080564

/-! ## A246259.P2021012295858975228

`A246258(A038722(n+1))+1-A007318(∑[n])`
-/

namespace A246259.P2021012295858975228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246258 (A038722 (n + 1)).toNat + 1 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246259.P2021012295858975228

/-! ## A246259.P13176745583867293352

`and(1, A000041(n))!*A246258(A038722(n+1))`
-/

namespace A246259.P13176745583867293352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A246258 (A038722 (n + 1)).toNat

end

end A246259.P13176745583867293352

/-! ## A246259.P2148628584445395367

`(A020639(2*(n+1))-1)*A246258(A038722(n+1))`
-/

namespace A246259.P2148628584445395367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) - 1) * A246258 (A038722 (n + 1)).toNat

end

end A246259.P2148628584445395367

/-!
# A246260: a(n) = 1 if A003961(n) is of the form 4k+1, otherwise a(n) = 0, (when A003961(n) is of the form 4k+3). [A003961 is fully multiplicative with a(p) = nextprime(p)].

The programs for A246260, the canonical program `A246260.P15139320144047363680` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246260 has offset 1).

The definition of A246260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246260.P15139320144047363680

`A000035(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
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

/-! ## A246260.P10796174932249940060

`char[A246261(n+1)-1]`
-/

namespace A246260.P10796174932249940060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246260.P10796174932249940060

namespace A246260

/-- `char[A246261(n+1)-1]` -/
def P10796174932249940060.Spec : Prop :=
  ∀ n, (P10796174932249940060.a n : ℤ) = A246260 (n + 1)

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

/-! ## A246260.P15873319385564722447

`A000607(Δ[A246264(n)])`
-/

namespace A246260.P15873319385564722447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat

end

end A246260.P15873319385564722447

namespace A246260

/-- `A000607(Δ[A246264(n)])` -/
def P15873319385564722447.Spec : Prop :=
  ∀ n, P15873319385564722447.a n = A246260 (n + 1)

end A246260

/-! ## A246260.P3432305195448384525

`A000931(Δ[A246264(n)])`
-/

namespace A246260.P3432305195448384525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f1 (n + 1) - f1 n).toNat

end

end A246260.P3432305195448384525

namespace A246260

/-- `A000931(Δ[A246264(n)])` -/
def P3432305195448384525.Spec : Prop :=
  ∀ n, P3432305195448384525.a n = A246260 (n + 1)

end A246260

/-!
# A246261: Numbers n such that A003961(n) is of the form 4k+1.

The programs for A246261, the canonical program `A246261.P15970116847604462200` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246261 has offset 1).

The definition of A246261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246261.P15970116847604462200

`eq[1, A246260(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246261

/-- `eq[1, A246260(n+1)]+1` -/
def P15970116847604462200.Spec : Prop :=
  ∀ n, (P15970116847604462200.a n : ℤ) = A246261 (n + 1)

theorem P15970116847604462200.correct : P15970116847604462200.Spec := by
  intro n
  simp only [A246261, Nat.add_sub_cancel]

end A246261

/-! ## A246261.P13416485713123457213

`eq[1, A336842(n+1)]+1`
-/

namespace A246261.P13416485713123457213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P13416485713123457213

namespace A246261

/-- `eq[1, A336842(n+1)]+1` -/
def P13416485713123457213.Spec : Prop :=
  ∀ n, (P13416485713123457213.a n : ℤ) = A246261 (n + 1)

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

/-! ## A246261.P10125179132837724613

`lt[A246271(n+1), 1]+1`
-/

namespace A246261.P10125179132837724613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246261.P10125179132837724613

namespace A246261

/-- `lt[A246271(n+1), 1]+1` -/
def P10125179132837724613.Spec : Prop :=
  ∀ n, (P10125179132837724613.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P12114050568171672246

`eq[2, a(A246271(n))+1]` with `a(0)=1`
-/

namespace A246261.P12114050568171672246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A246271 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246261.P12114050568171672246

namespace A246261

/-- `eq[2, a(A246271(n))+1]` -/
def P12114050568171672246.Spec : Prop :=
  ∀ n, (P12114050568171672246.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P11006201624914217806

`eq[1, A003961(A246271(n+1)+1)]+1`
-/

namespace A246261.P11006201624914217806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A246271 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246261.P11006201624914217806

namespace A246261

/-- `eq[1, A003961(A246271(n+1)+1)]+1` -/
def P11006201624914217806.Spec : Prop :=
  ∀ n, (P11006201624914217806.a n : ℤ) = A246261 (n + 1)

end A246261

/-! ## A246261.P12090165759855595388

`filter[n+1, A246260(#)]`
-/

namespace A246261.P12090165759855595388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j) = 1) n)

end

end A246261.P12090165759855595388

namespace A246261

/-- `filter[n+1, A246260(#)]` -/
def P12090165759855595388.Spec : Prop :=
  ∀ n, (P12090165759855595388.a n : ℤ) = A246261 (n + 1)

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

/-! ## A246261.P11639336778156332448

`eq[A000007(n), A246271(A000007(n)+n)]`
-/

namespace A246261.P11639336778156332448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246261.P11639336778156332448

namespace A246261

/-- `eq[A000007(n), A246271(A000007(n)+n)]` -/
def P11639336778156332448.Spec : Prop :=
  ∀ n, (P11639336778156332448.a n : ℤ) = A246261 (n + 1)

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

/-!
# A246262: Inverse function to injection A246261, partial sums of A246260.

The programs for A246262, the canonical program `A246262.P10590490882229900441` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246262 has offset 0).

The definition of A246262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246262

/-- `A246260(n)+a(n-1)` -/
def P10590490882229900441.Spec : Prop :=
  ∀ n, P10590490882229900441.a n = A246262 n

theorem P10590490882229900441.correct : P10590490882229900441.Spec := by
  intro n
  simp only [A246262]

end A246262

/-! ## A246262.P6089662759646218119

`∑[char[A246261(n+1)]]`
-/

namespace A246262.P6089662759646218119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246262.P6089662759646218119

namespace A246262

/-- `∑[char[A246261(n+1)]]` -/
def P6089662759646218119.Spec : Prop :=
  ∀ n, (P6089662759646218119.a n : ℤ) = A246262 n

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

/-!
# A246263: Numbers n such that A003961(n) is of the form 4k+3.

The programs for A246263, the canonical program `A246263.P13781321414210192941` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246263 has offset 1).

The definition of A246263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246263.P13781321414210192941

`eq[0, A246260(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246263

/-- `eq[0, A246260(n+1)]+1` -/
def P13781321414210192941.Spec : Prop :=
  ∀ n, (P13781321414210192941.a n : ℤ) = A246263 (n + 1)

theorem P13781321414210192941.correct : P13781321414210192941.Spec := by
  intro n
  simp only [A246263, Nat.add_sub_cancel]

end A246263

/-! ## A246263.P11216041021308912135

`comp[A246261(n+1)-1]+1`
-/

namespace A246263.P11216041021308912135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246263.P11216041021308912135

namespace A246263

/-- `comp[A246261(n+1)-1]+1` -/
def P11216041021308912135.Spec : Prop :=
  ∀ n, (P11216041021308912135.a n : ℤ) = A246263 (n + 1)

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

/-! ## A246263.P11591161899290063794

`eq[1, A289623(n+1)]+1`
-/

namespace A246263.P11591161899290063794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246263.P11591161899290063794

namespace A246263

/-- `eq[1, A289623(n+1)]+1` -/
def P11591161899290063794.Spec : Prop :=
  ∀ n, (P11591161899290063794.a n : ℤ) = A246263 (n + 1)

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

/-! ## A246263.P12702474899458310720

`eq[A000007(n), A246271(A298026(2*n))]`
-/

namespace A246263.P12702474899458310720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A298026 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246263.P12702474899458310720

namespace A246263

/-- `eq[A000007(n), A246271(A298026(2*n))]` -/
def P12702474899458310720.Spec : Prop :=
  ∀ n, (P12702474899458310720.a n : ℤ) = A246263 (n + 1)

end A246263

/-!
# A246264: Inverse function for injection A246263.

The programs for A246264, the canonical program `A246264.P3731558565214309607` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246264 has offset 0).

The definition of A246264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246262, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246264.P3731558565214309607

`n-A246262(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246264

/-- `n-A246262(n)` -/
def P3731558565214309607.Spec : Prop :=
  ∀ n, P3731558565214309607.a n = A246264 n

theorem P3731558565214309607.correct : P3731558565214309607.Spec := by
  intro n
  simp only [A246264]

end A246264

/-! ## A246264.P14752149429761389061

`∑[char[A246263(n+1)]]`
-/

namespace A246264.P14752149429761389061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246264.P14752149429761389061

namespace A246264

/-- `∑[char[A246263(n+1)]]` -/
def P14752149429761389061.Spec : Prop :=
  ∀ n, (P14752149429761389061.a n : ℤ) = A246264 n

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

/-! ## A246264.P5836034999498074163

`-A246262(n)%A003278(n+1)+n`
-/

namespace A246264.P5836034999498074163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A246262 n) (A003278 (n + 1)) + (n : ℤ)

end

end A246264.P5836034999498074163

namespace A246264

/-- `-A246262(n)%A003278(n+1)+n` -/
def P5836034999498074163.Spec : Prop :=
  ∀ n, P5836034999498074163.a n = A246264 n

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

/-! ## A246264.P7270550103216840463

`A008683(A007459(n+1))*A246262(n)+n`
-/

namespace A246264.P7270550103216840463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007459 (n + 1)).toNat * A246262 n + (n : ℤ)

end

end A246264.P7270550103216840463

namespace A246264

/-- `A008683(A007459(n+1))*A246262(n)+n` -/
def P7270550103216840463.Spec : Prop :=
  ∀ n, P7270550103216840463.a n = A246264 n

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

/-!
# A246265: Permutation of natural numbers: a(n) = (1+A048673(A246261(n)))/2.

The programs for A246265, the canonical program `A246265.P3263290630060116708` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246265 has offset 1).

The definition of A246265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246265.P3263290630060116708

`(1+A048673(A246261(n+1)))/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246265

/-- `(1+A048673(A246261(n+1)))/2` -/
def P3263290630060116708.Spec : Prop :=
  ∀ n, P3263290630060116708.a n = (A246265 (n + 1) : ℚ)

end A246265

/-! ## A246265.P1259426064945249447

`ceil(A048673(A246261(n+1))/2)`
-/

namespace A246265.P1259426064945249447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048673 (A246261 (n + 1)).toNat : ℚ) / 2⌉

end

end A246265.P1259426064945249447

namespace A246265

/-- `ceil(A048673(A246261(n+1))/2)` -/
def P1259426064945249447.Spec : Prop :=
  ∀ n, P1259426064945249447.a n = A246265 (n + 1)

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

/-! ## A246265.P9266572562767651882

`A061395(p?[A173919(A048673(n+1))])`
-/

namespace A246265.P9266572562767651882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246265.P9266572562767651882

namespace A246265

/-- `A061395(p?[A173919(A048673(n+1))])` -/
def P9266572562767651882.Spec : Prop :=
  ∀ n, P9266572562767651882.a n = A246265 (n + 1)

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

The programs for A246266, the canonical program `A246266.P5502087740169364243` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246266 has offset 1).

The definition of A246266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246266.P5502087740169364243

`A246262(A064216(2*n+1))`

The canonical program, it is in `Seq.B014.C000`.
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

/-! ## A246266.P10251675917546810421

`A246262(A243502(2*n+1)/2)`
-/

namespace A246266.P10251675917546810421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (SequenceMachineLib.roundAway ((A243502 (2 * n + 1) : ℚ) / 2)).toNat

end

end A246266.P10251675917546810421

namespace A246266

/-- `A246262(A243502(2*n+1)/2)` -/
def P10251675917546810421.Spec : Prop :=
  ∀ n, P10251675917546810421.a n = A246266 (n + 1)

end A246266

/-! ## A246266.P9399231387371260316

`A246262(A283463(2*(2*n+1)))`
-/

namespace A246266.P9399231387371260316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A283463 (2 * (2 * n + 1))).toNat

end

end A246266.P9399231387371260316

namespace A246266

/-- `A246262(A283463(2*(2*n+1)))` -/
def P9399231387371260316.Spec : Prop :=
  ∀ n, P9399231387371260316.a n = A246266 (n + 1)

end A246266

/-! ## A246266.P4833698449774742916

`A246262(A252463(2*n+2*n+1))`
-/

namespace A246266.P4833698449774742916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A252463 (2 * n + (2 * n + 1))).toNat

end

end A246266.P4833698449774742916

namespace A246266

/-- `A246262(A252463(2*n+2*n+1))` -/
def P4833698449774742916.Spec : Prop :=
  ∀ n, P4833698449774742916.a n = A246266 (n + 1)

end A246266

/-!
# A246267: Permutation of natural numbers: a(n) = A048673(A246263(n))/2.

The programs for A246267, the canonical program `A246267.P11984409630168091738` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246267 has offset 1).

The definition of A246267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A246263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246267.P11984409630168091738

`A048673(A246263(n+1))/2`

The canonical program, it is in `Seq.B014.C000`.
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

/-! ## A246267.P1426643438367938151

`A000720(p?[A207790(A048673(n+1))])`
-/

namespace A246267.P1426643438367938151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246267.P1426643438367938151

namespace A246267

/-- `A000720(p?[A207790(A048673(n+1))])` -/
def P1426643438367938151.Spec : Prop :=
  ∀ n, P1426643438367938151.a n = A246267 (n + 1)

end A246267

/-! ## A246267.P15697820942009641443

`A000720(p?[A207790(A283464(n+1))])`
-/

namespace A246267.P15697820942009641443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A283464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246267.P15697820942009641443

namespace A246267

/-- `A000720(p?[A207790(A283464(n+1))])` -/
def P15697820942009641443.Spec : Prop :=
  ∀ n, P15697820942009641443.a n = A246267 (n + 1)

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

The programs for A246268, the canonical program `A246268.P8349117576513526915` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246268 has offset 1).

The definition of A246268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A246264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246268.P8349117576513526915

`A246264(A064216(2*(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
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

The programs for A246269, the canonical program `A246269.P7585923862198389886` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246269 has offset 1).

The definition of A246269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246269

/-- `A065338(A003961(n+1))` -/
def P7585923862198389886.Spec : Prop :=
  ∀ n, P7585923862198389886.a n = A246269 (n + 1)

theorem P7585923862198389886.correct : P7585923862198389886.Spec := by
  intro n
  simp only [A246269, Nat.add_sub_cancel]

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

/-! ## A246269.P1720268983455737145

`A278509(A253885(n)+1)`
-/

namespace A246269.P1720268983455737145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A253885 n + 1).toNat

end

end A246269.P1720268983455737145

namespace A246269

/-- `A278509(A253885(n)+1)` -/
def P1720268983455737145.Spec : Prop :=
  ∀ n, P1720268983455737145.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P2027797201442846297

`A278509(or(1, A253885(n)))`
-/

namespace A246269.P2027797201442846297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (Int.lor 1 (A253885 n)).toNat

end

end A246269.P2027797201442846297

namespace A246269

/-- `A278509(or(1, A253885(n)))` -/
def P2027797201442846297.Spec : Prop :=
  ∀ n, P2027797201442846297.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P9832477002308844191

`A278509(A243501(n+1)-1)`
-/

namespace A246269.P9832477002308844191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A243501 (n + 1) - 1).toNat

end

end A246269.P9832477002308844191

namespace A246269

/-- `A278509(A243501(n+1)-1)` -/
def P9832477002308844191.Spec : Prop :=
  ∀ n, P9832477002308844191.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P12531758611622410055

`A278509(2*A048673(n+1)-1)`
-/

namespace A246269.P12531758611622410055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (2 * A048673 (n + 1) - 1).toNat

end

end A246269.P12531758611622410055

namespace A246269

/-- `A278509(2*A048673(n+1)-1)` -/
def P12531758611622410055.Spec : Prop :=
  ∀ n, P12531758611622410055.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P659010772057922234

`A278509(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A246269.P659010772057922234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A246269.P659010772057922234

namespace A246269

/-- `A278509(A048673(n+1)+A048673(n+1)-1)` -/
def P659010772057922234.Spec : Prop :=
  ∀ n, P659010772057922234.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P7337239700323880175

`A278509(2*A003961(n+1))`
-/

namespace A246269.P7337239700323880175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (2 * A003961 (n + 1)).toNat

end

end A246269.P7337239700323880175

namespace A246269

/-- `A278509(2*A003961(n+1))` -/
def P7337239700323880175.Spec : Prop :=
  ∀ n, P7337239700323880175.a n = A246269 (n + 1)

end A246269

/-! ## A246269.P11496300078472538995

`A278509(A003961(n+1)+A003961(n+1))`
-/

namespace A246269.P11496300078472538995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A246269.P11496300078472538995

namespace A246269

/-- `A278509(A003961(n+1)+A003961(n+1))` -/
def P11496300078472538995.Spec : Prop :=
  ∀ n, P11496300078472538995.a n = A246269 (n + 1)

end A246269

/-!
# A246270: Number of prime factors of the form 4k+3 (counted with multiplicity) in A003961(n): a(n) = A065339(A003961(n)).

The programs for A246270, the canonical program `A246270.P10934646517681247770` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246270 has offset 1).

The definition of A246270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-! ## A246270.P10934646517681247770

`A065339(A003961(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246270

/-- `A065339(A003961(n+1))` -/
def P10934646517681247770.Spec : Prop :=
  ∀ n, P10934646517681247770.a n = A246270 (n + 1)

theorem P10934646517681247770.correct : P10934646517681247770.Spec := by
  intro n
  simp only [A246270, Nat.add_sub_cancel]

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

/-! ## A246270.P16754033245238757818

`A065339(A246269(2*n+1-n))`
-/

namespace A246270.P16754033245238757818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A246269 (2 * n + 1 - n)).toNat

end

end A246270.P16754033245238757818

namespace A246270

/-- `A065339(A246269(2*n+1-n))` -/
def P16754033245238757818.Spec : Prop :=
  ∀ n, P16754033245238757818.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P14223652036915911220

`A032741(A246269(n+1))*A057427(n)`
-/

namespace A246270.P14223652036915911220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A246269 (n + 1)).toNat * A057427 n

end

end A246270.P14223652036915911220

namespace A246270

/-- `A032741(A246269(n+1))*A057427(n)` -/
def P14223652036915911220.Spec : Prop :=
  ∀ n, P14223652036915911220.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P15080559160843809596

`A032741(lcm(A020985(n), A246269(n+1)))`
-/

namespace A246270.P15080559160843809596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.lcm (A020985 n) (A246269 (n + 1)))

end

end A246270.P15080559160843809596

namespace A246270

/-- `A032741(lcm(A020985(n), A246269(n+1)))` -/
def P15080559160843809596.Spec : Prop :=
  ∀ n, P15080559160843809596.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P8036603532303534820

`A032741(A020985(n)²*A246269(n+1))`
-/

namespace A246270.P8036603532303534820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A020985 n ^ 2 * A246269 (n + 1)).toNat

end

end A246270.P8036603532303534820

namespace A246270

/-- `A032741(A020985(n)²*A246269(n+1))` -/
def P8036603532303534820.Spec : Prop :=
  ∀ n, P8036603532303534820.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P12928075645004213177

`A032741(A246269(n+1)/A020985(n)²)`
-/

namespace A246270.P12928075645004213177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A246269 (n + 1) : ℚ) / (A020985 n ^ 2 : ℚ))).toNat

end

end A246270.P12928075645004213177

namespace A246270

/-- `A032741(A246269(n+1)/A020985(n)²)` -/
def P12928075645004213177.Spec : Prop :=
  ∀ n, P12928075645004213177.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P17218608675074523942

`A065339(A045965(n+1))`
-/

namespace A246270.P17218608675074523942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A045965 (n + 1)).toNat

end

end A246270.P17218608675074523942

namespace A246270

/-- `A065339(A045965(n+1))` -/
def P17218608675074523942.Spec : Prop :=
  ∀ n, P17218608675074523942.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P14382764131085812987

`A065339(A253885(n)+1)`
-/

namespace A246270.P14382764131085812987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A253885 n + 1).toNat

end

end A246270.P14382764131085812987

namespace A246270

/-- `A065339(A253885(n)+1)` -/
def P14382764131085812987.Spec : Prop :=
  ∀ n, P14382764131085812987.a n = A246270 (n + 1)

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

/-! ## A246270.P8604384460743340917

`A065339(A280692(n+1)+A250469(n+1))`
-/

namespace A246270.P8604384460743340917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A280692 (n + 1) + A250469 (n + 1)).toNat

end

end A246270.P8604384460743340917

namespace A246270

/-- `A065339(A280692(n+1)+A250469(n+1))` -/
def P8604384460743340917.Spec : Prop :=
  ∀ n, P8604384460743340917.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P4055814001205683835

`A007949(2*A246269(n+1))`
-/

namespace A246270.P4055814001205683835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (2 * A246269 (n + 1)).toNat

end

end A246270.P4055814001205683835

namespace A246270

/-- `A007949(2*A246269(n+1))` -/
def P4055814001205683835.Spec : Prop :=
  ∀ n, P4055814001205683835.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P11431685831560641411

`A065339(2*A246269(n+1))`
-/

namespace A246270.P11431685831560641411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (2 * A246269 (n + 1)).toNat

end

end A246270.P11431685831560641411

namespace A246270

/-- `A065339(2*A246269(n+1))` -/
def P11431685831560641411.Spec : Prop :=
  ∀ n, P11431685831560641411.a n = A246270 (n + 1)

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

/-! ## A246270.P15191746296331292951

`A007949(A246269(n+1)+A246269(n+1))`
-/

namespace A246270.P15191746296331292951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A246269 (n + 1) + A246269 (n + 1)).toNat

end

end A246270.P15191746296331292951

namespace A246270

/-- `A007949(A246269(n+1)+A246269(n+1))` -/
def P15191746296331292951.Spec : Prop :=
  ∀ n, P15191746296331292951.a n = A246270 (n + 1)

end A246270

/-! ## A246270.P16677865404080703943

`A065339(A246269(n+1)+A246269(n+1))`
-/

namespace A246270.P16677865404080703943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A246269 (n + 1) + A246269 (n + 1)).toNat

end

end A246270.P16677865404080703943

namespace A246270

/-- `A065339(A246269(n+1)+A246269(n+1))` -/
def P16677865404080703943.Spec : Prop :=
  ∀ n, P16677865404080703943.a n = A246270 (n + 1)

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

/-! ## A246271.P8435666732220406068

`A238529(A284222(n+1)^A286583(n+1))`
-/

namespace A246271.P8435666732220406068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (SequenceMachineLib.roundAway ((A284222 (n + 1) : ℚ) ^ (A286583 (n + 1) : ℤ))).toNat

end

end A246271.P8435666732220406068

/-!
# A246273: Transpose of square array A246275.

The programs for A246273, the canonical program `A246273.P6183225685175068405` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246273 has offset 1).

The definition of A246273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246273.P6183225685175068405

`A246275(A038722(n+1))`

The canonical program, it is in `Seq.B013.C000`.
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

/-! ## A246273.P6067102004276881470

`A249816(A249741(A250252(A249741(n+1))))`
-/

namespace A246273.P6067102004276881470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249741 (A250252 (A249741 (n + 1)).toNat).toNat).toNat

end

end A246273.P6067102004276881470

namespace A246273

/-- `A249816(A249741(A250252(A249741(n+1))))` -/
def P6067102004276881470.Spec : Prop :=
  ∀ n, P6067102004276881470.a n = A246273 (n + 1)

end A246273

/-! ## A246273.P8797658788679052990

`A250250(A083140(n+2))-A055396(2*(n+1))`
-/

namespace A246273.P8797658788679052990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A083140 (n + 2)).toNat - A055396 (2 * (n + 1))

end

end A246273.P8797658788679052990

namespace A246273

/-- `A250250(A083140(n+2))-A055396(2*(n+1))` -/
def P8797658788679052990.Spec : Prop :=
  ∀ n, P8797658788679052990.a n = A246273 (n + 1)

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

/-! ## A246273.P519802298515156669

`A249816(A249811(A054582(A078898(2*n))))`
-/

namespace A246273.P519802298515156669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249811 (A054582 (A078898 (2 * n)).toNat).toNat).toNat

end

end A246273.P519802298515156669

namespace A246273

/-- `A249816(A249811(A054582(A078898(2*n))))` -/
def P519802298515156669.Spec : Prop :=
  ∀ n, P519802298515156669.a n = A246273 (n + 1)

end A246273

/-!
# A246274: Inverse of A246273 considered as a permutation of natural numbers.

The programs for A246274, there is no canonical definition to state claims against.
-/

/-! ## A246274.P518949399975886002

`A209268(A246675(n+1))`
-/

namespace A246274.P518949399975886002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (A246675 (n + 1)).toNat

end

end A246274.P518949399975886002

/-! ## A246274.P17374062211146541894

`A246277(n+2)+A246276(n+1)-A055396(n+2)`
-/

namespace A246274.P17374062211146541894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 2) + (A246276 (n + 1) - A055396 (n + 2))

end

end A246274.P17374062211146541894

/-! ## A246274.P17873755813639423900

`A250252(A249815(n+1))`
-/

namespace A246274.P17873755813639423900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A249815 (n + 1)).toNat

end

end A246274.P17873755813639423900

/-! ## A246274.P5337658798428845136

`A038722(A246276(n+1))`
-/

namespace A246274.P5337658798428845136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A246276 (n + 1)).toNat

end

end A246274.P5337658798428845136

/-! ## A246274.P8818643658763685138

`A038722(A252752(n+2)-1)`
-/

namespace A246274.P8818643658763685138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A252752 (n + 2) - 1).toNat

end

end A246274.P8818643658763685138

/-! ## A246274.P4224138478024871638

`A061579(A246276(n+1)-1)+1`
-/

namespace A246274.P4224138478024871638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A246276 (n + 1) - 1).toNat + 1

end

end A246274.P4224138478024871638

/-! ## A246274.P13468946013145570287

`A246276(A246273(A246276(A246675(A246676(n+1)))))`
-/

namespace A246274.P13468946013145570287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246273 (A246276 (A246675 (A246676 (n + 1)).toNat).toNat).toNat).toNat

end

end A246274.P13468946013145570287

/-! ## A246274.P3028520399332390126

`A246276(A246273(A246276(A246276(A246275(n+1)))))`
-/

namespace A246274.P3028520399332390126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246273 (A246276 (A246276 (A246275 (n + 1)).toNat).toNat).toNat).toNat

end

end A246274.P3028520399332390126

/-! ## A246274.P17684463448025279767

`A256996(A279337(n+2))-1`
-/

namespace A246274.P17684463448025279767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256996 (A279337 (n + 2)).toNat - 1

end

end A246274.P17684463448025279767

/-!
# A246275: Square array A246278 minus 1.

The programs for A246275, the canonical program `A246275.P16479209190293885022` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246275 has offset 1).

The definition of A246275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246278, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246275.P16479209190293885022

`A246278(n+2)-1`

The canonical program, it is in `Seq.B012.C000`.
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

/-! ## A246275.P15731339288652394488

`A359792(A151800(n))+A246278(n+2)`
-/

namespace A246275.P15731339288652394488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (A151800 n).toNat + A246278 (n + 2)

end

end A246275.P15731339288652394488

namespace A246275

/-- `A359792(A151800(n))+A246278(n+2)` -/
def P15731339288652394488.Spec : Prop :=
  ∀ n, P15731339288652394488.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P14714266308750947915

`A260196(A007304(n+1))+A246278(n+2)`
-/

namespace A246275.P14714266308750947915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A007304 (n + 1)).toNat + A246278 (n + 2)

end

end A246275.P14714266308750947915

namespace A246275

/-- `A260196(A007304(n+1))+A246278(n+2)` -/
def P14714266308750947915.Spec : Prop :=
  ∀ n, P14714266308750947915.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P11102984210294677987

`A260196(A023853(n+1))+A246278(n+2)`
-/

namespace A246275.P11102984210294677987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A023853 (n + 1)).toNat + A246278 (n + 2)

end

end A246275.P11102984210294677987

namespace A246275

/-- `A260196(A023853(n+1))+A246278(n+2)` -/
def P11102984210294677987.Spec : Prop :=
  ∀ n, P11102984210294677987.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P7784044976055254342

`A260196(A020482(n+2))+A246278(n+2)`
-/

namespace A246275.P7784044976055254342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A020482 (n + 2)).toNat + A246278 (n + 2)

end

end A246275.P7784044976055254342

namespace A246275

/-- `A260196(A020482(n+2))+A246278(n+2)` -/
def P7784044976055254342.Spec : Prop :=
  ∀ n, P7784044976055254342.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P9118045677569910815

`A260196(A320153(n+3))+A246278(n+2)`
-/

namespace A246275.P9118045677569910815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A320153 (n + 3)).toNat + A246278 (n + 2)

end

end A246275.P9118045677569910815

namespace A246275

/-- `A260196(A320153(n+3))+A246278(n+2)` -/
def P9118045677569910815.Spec : Prop :=
  ∀ n, P9118045677569910815.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P5331143428804517243

`A260196(A099506(2*(n+1)))+A246278(n+2)`
-/

namespace A246275.P5331143428804517243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A099506 (2 * (n + 1))).toNat + A246278 (n + 2)

end

end A246275.P5331143428804517243

namespace A246275

/-- `A260196(A099506(2*(n+1)))+A246278(n+2)` -/
def P5331143428804517243.Spec : Prop :=
  ∀ n, P5331143428804517243.a n = A246275 (n + 1)

end A246275

/-! ## A246275.P17073971991652205310

`A359819(A000040(n+2))+A246278(n+2)`
-/

namespace A246275.P17073971991652205310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359819 (A000040 (n + 2)).toNat + A246278 (n + 2)

end

end A246275.P17073971991652205310

namespace A246275

/-- `A359819(A000040(n+2))+A246278(n+2)` -/
def P17073971991652205310.Spec : Prop :=
  ∀ n, P17073971991652205310.a n = A246275 (n + 1)

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

/-! ## A246275.P1376876593088408336

`A249816(A083221(n+2)-1)`
-/

namespace A246275.P1376876593088408336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A083221 (n + 2) - 1).toNat

end

end A246275.P1376876593088408336

namespace A246275

/-- `A249816(A083221(n+2)-1)` -/
def P1376876593088408336.Spec : Prop :=
  ∀ n, P1376876593088408336.a n = A246275 (n + 1)

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

The programs for A246276, there is no canonical definition to state claims against.
-/

/-! ## A246276.P11203351716677214777

`A252752(n+2)-1`
-/

namespace A246276.P11203351716677214777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (n + 2) - 1

end

end A246276.P11203351716677214777

/-! ## A246276.P6048941597672880664

`A055396(n+2)+A246274(n+1)-A246277(n+2)`
-/

namespace A246276.P6048941597672880664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 2) + (A246274 (n + 1) - A246277 (n + 2))

end

end A246276.P6048941597672880664

/-! ## A246276.P5332983569526204023

`A252460(A249817(n+2))-1`
-/

namespace A246276.P5332983569526204023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A249817 (n + 2)).toNat - 1

end

end A246276.P5332983569526204023

/-! ## A246276.P891257355359778972

`A249742(A249815(n+1))`
-/

namespace A246276.P891257355359778972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A249815 (n + 1)).toNat

end

end A246276.P891257355359778972

/-! ## A246276.P17050809555502485546

`A038722(A246274(n+1))`
-/

namespace A246276.P17050809555502485546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A246274 (n + 1)).toNat

end

end A246276.P17050809555502485546

/-! ## A246276.P4921619163169389901

`A023443(A252752(n+2))`
-/

namespace A246276.P4921619163169389901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A252752 (n + 2)).toNat

end

end A246276.P4921619163169389901

/-! ## A246276.P7119470042496642842

`A246274(A246275(A246274(A209268(A054582(n)))))`
-/

namespace A246276.P7119470042496642842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A246274 (A209268 (A054582 n).toNat).toNat).toNat).toNat

end

end A246276.P7119470042496642842

/-! ## A246276.P6731784197849808915

`A246274(A246275(A246274(A246675(A246676(n+1)))))`
-/

namespace A246276.P6731784197849808915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A246274 (A246675 (A246676 (n + 1)).toNat).toNat).toNat).toNat

end

end A246276.P6731784197849808915

/-! ## A246276.P10891952008866825706

`A246274(A246275(A246274(A246274(A246273(n+1)))))`
-/

namespace A246276.P10891952008866825706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A246274 (A246274 (A246273 (n + 1)).toNat).toNat).toNat).toNat

end

end A246276.P10891952008866825706

/-! ## A246276.P1154168638343530603

`A256998(A279337(n+2))-1`
-/

namespace A246276.P1154168638343530603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256998 (A279337 (n + 2)).toNat - 1

end

end A246276.P1154168638343530603

/-!
# A246277: Column index of n in A246278: a(1) = 0, a(2n) = n, a(2n+1) = a(A064989(2n+1)).

The programs for A246277, the canonical program `A246277.P3450750564944014413` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246277 has offset 1).

The definition of A246277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246277.P3450750564944014413

`floor(A348717(n+1)/2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A246277

/-- `floor(A348717(n+1)/2)` -/
def P3450750564944014413.Spec : Prop :=
  ∀ n, P3450750564944014413.a n = A246277 (n + 1)

theorem P3450750564944014413.correct : P3450750564944014413.Spec := by
  intro n
  simp only [A246277, Nat.add_sub_cancel]

end A246277

/-! ## A246277.P14262211285088491811

`A305897(n+1)-1`
-/

namespace A246277.P14262211285088491811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (n + 1) - 1

end

end A246277.P14262211285088491811

namespace A246277

/-- `A305897(n+1)-1` -/
def P14262211285088491811.Spec : Prop :=
  ∀ n, P14262211285088491811.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P6529628505644622482

`A023443(A305897(n+1))`
-/

namespace A246277.P6529628505644622482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A305897 (n + 1)).toNat

end

end A246277.P6529628505644622482

namespace A246277

/-- `A023443(A305897(n+1))` -/
def P6529628505644622482.Spec : Prop :=
  ∀ n, P6529628505644622482.a n = A246277 (n + 1)

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

/-! ## A246277.P7017857610427829118

`A004526(A348717(n+1)+2)-1`
-/

namespace A246277.P7017857610427829118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A348717 (n + 1) + 2).toNat - 1

end

end A246277.P7017857610427829118

namespace A246277

/-- `A004526(A348717(n+1)+2)-1` -/
def P7017857610427829118.Spec : Prop :=
  ∀ n, P7017857610427829118.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P2246755037161692892

`A249810(n+1)+A280492(n+1)-A249820(n+1)`
-/

namespace A246277.P2246755037161692892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (n + 1) + (A280492 (n + 1) - A249820 (n + 1))

end

end A246277.P2246755037161692892

namespace A246277

/-- `A249810(n+1)+A280492(n+1)-A249820(n+1)` -/
def P2246755037161692892.Spec : Prop :=
  ∀ n, P2246755037161692892.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P7124144756005981975

`A078898(A249817(n+1))%(n+1)`
-/

namespace A246277.P7124144756005981975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A249817 (n + 1)).toNat) (n + 1 : ℤ)

end

end A246277.P7124144756005981975

namespace A246277

/-- `A078898(A249817(n+1))%(n+1)` -/
def P7124144756005981975.Spec : Prop :=
  ∀ n, P7124144756005981975.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P2708931510901058710

`A078898(A250247(n+1))%(n+1)`
-/

namespace A246277.P2708931510901058710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A250247 (n + 1)).toNat) (n + 1 : ℤ)

end

end A246277.P2708931510901058710

namespace A246277

/-- `A078898(A250247(n+1))%(n+1)` -/
def P2708931510901058710.Spec : Prop :=
  ∀ n, P2708931510901058710.a n = A246277 (n + 1)

end A246277

/-! ## A246277.P17128638961053881478

`A078898(char[A054429(n+1)]*A249817(n+1))`
-/

namespace A246277.P17128638961053881478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A249817 (n + 1)).toNat

end

end A246277.P17128638961053881478

namespace A246277

/-- `A078898(char[A054429(n+1)]*A249817(n+1))` -/
def P17128638961053881478.Spec : Prop :=
  ∀ n, P17128638961053881478.a n = A246277 (n + 1)

end A246277

/-!
# A246278: Prime shift array: Square array read by antidiagonals: A(1,col) = 2*col, and for row > 1, A(row,col) = A003961(A(row-1,col)).

The programs for A246278, the canonical program `A246278.P15272825830747483224` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246278 has offset 2).

The definition of A246278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A253561, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A246278

/-- `A122111(A253561(n+2))` -/
def P15272825830747483224.Spec : Prop :=
  ∀ n, P15272825830747483224.a n = A246278 (n + 2)

theorem P15272825830747483224.correct : P15272825830747483224.Spec := by
  intro n
  simp only [A246278, Nat.add_sub_cancel]

end A246278

/-! ## A246278.P13267202478198759934

`A246275(n+1)+1`
-/

namespace A246278.P13267202478198759934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (n + 1) + 1

end

end A246278.P13267202478198759934

namespace A246278

/-- `A246275(n+1)+1` -/
def P13267202478198759934.Spec : Prop :=
  ∀ n, P13267202478198759934.a n = A246278 (n + 2)

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

/-! ## A246278.P13042351115627619134

`A249818(A249741(n+1)+1)`
-/

namespace A246278.P13042351115627619134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A249741 (n + 1) + 1).toNat

end

end A246278.P13042351115627619134

namespace A246278

/-- `A249818(A249741(n+1)+1)` -/
def P13042351115627619134.Spec : Prop :=
  ∀ n, P13042351115627619134.a n = A246278 (n + 2)

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

/-! ## A246278.P13398554526699049673

`A250248(A083221(n+2)+n*A000038(n))`
-/

namespace A246278.P13398554526699049673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A083221 (n + 2) + (n : ℤ) * A000038 n).toNat

end

end A246278.P13398554526699049673

namespace A246278

/-- `A250248(A083221(n+2)+n*A000038(n))` -/
def P13398554526699049673.Spec : Prop :=
  ∀ n, P13398554526699049673.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P4757964019362027482

`A250248(2*A083221(n+2)-A083221(n+2))`
-/

namespace A246278.P4757964019362027482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (2 * A083221 (n + 2) - A083221 (n + 2)).toNat

end

end A246278.P4757964019362027482

namespace A246278

/-- `A250248(2*A083221(n+2)-A083221(n+2))` -/
def P4757964019362027482.Spec : Prop :=
  ∀ n, P4757964019362027482.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P10494325948887392876

`A250248(A083221(A250248(A250247(n+2))))`
-/

namespace A246278.P10494325948887392876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A083221 (A250248 (A250247 (n + 2)).toNat).toNat).toNat

end

end A246278.P10494325948887392876

namespace A246278

/-- `A250248(A083221(A250248(A250247(n+2))))` -/
def P10494325948887392876.Spec : Prop :=
  ∀ n, P10494325948887392876.a n = A246278 (n + 2)

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

/-! ## A246278.P4089313111705088337

`A250248(A083221(n+2))+A000038(A250248(n+1))`
-/

namespace A246278.P4089313111705088337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A083221 (n + 2)).toNat + A000038 (A250248 (n + 1)).toNat

end

end A246278.P4089313111705088337

namespace A246278

/-- `A250248(A083221(n+2))+A000038(A250248(n+1))` -/
def P4089313111705088337.Spec : Prop :=
  ∀ n, P4089313111705088337.a n = A246278 (n + 2)

end A246278

/-! ## A246278.P8738914050266016845

`A249818(A255408(A260435(A255551(n+2))))`
-/

namespace A246278.P8738914050266016845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A255408 (A260435 (A255551 (n + 2)).toNat).toNat).toNat

end

end A246278.P8738914050266016845

namespace A246278

/-- `A249818(A255408(A260435(A255551(n+2))))` -/
def P8738914050266016845.Spec : Prop :=
  ∀ n, P8738914050266016845.a n = A246278 (n + 2)

end A246278

/-!
# A246279: Transpose of array A246278: A(row,1) = 2*row, and for col > 1, A(row,col) = A003961(A(row,col-1)).

The programs for A246279, there is no canonical definition to state claims against.
-/

/-! ## A246279.P2684856365987104823

`A246273(n+1)+1`
-/

namespace A246279.P2684856365987104823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (n + 1) + 1

end

end A246279.P2684856365987104823

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

/-! ## A246279.P16256948336645459286

`A279336(A256997(A256996(A256997(n+2))))`
-/

namespace A246279.P16256948336645459286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256997 (A256996 (A256997 (n + 2)).toNat).toNat).toNat

end

end A246279.P16256948336645459286

/-!
# A246280: a(n) = the smallest starting value for k such that n will be the exact number of additional iterations of A003961 needed when we start from A003961(k) before we first reach a number of the form 4k+1; the least k such that A246271(k) = n.

The programs for A246280, there is no canonical definition to state claims against.
-/

/-! ## A246280.P14594702367038280953

`A246259(∑[n+1])`
-/

namespace A246280.P14594702367038280953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246280.P14594702367038280953

/-! ## A246280.P3435558606596905081

`∏{p}[A246259(A000217(n+1)), #]`
-/

namespace A246280.P3435558606596905081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246280.P3435558606596905081

/-! ## A246280.P9742660655251364035

`∏{p}[A246259(A246274(2*n+1)), #]`
-/

namespace A246280.P9742660655251364035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (A246274 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246280.P9742660655251364035

/-! ## A246280.P217788365821691257

`A246259(∑[-xor(n, -1)])-A025444(n)`
-/

namespace A246280.P217788365821691257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A025444 n

end

end A246280.P217788365821691257

/-! ## A246280.P9300439333613465721

`A246259(∑[-xor(n, -1)])%A000032(4*n)`
-/

namespace A246280.P9300439333613465721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 (4 * n))

end

end A246280.P9300439333613465721

/-!
# A246281: Numbers k for which A003961(k) < 2*k; Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then product_{k >= 1} (p_{k+1})^(c_k) < 2*n, where p_k indicates the k-th prime, A000040(k).

The programs for A246281, the canonical program `A246281.P3833940699432057348` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246281 has offset 1).

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

/-! ## A246281.P15743094349908951310

`lt[A336836(n+1), 1]+1`
-/

namespace A246281.P15743094349908951310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336836 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246281.P15743094349908951310

namespace A246281

/-- `lt[A336836(n+1), 1]+1` -/
def P15743094349908951310.Spec : Prop :=
  ∀ n, (P15743094349908951310.a n : ℤ) = A246281 (n + 1)

end A246281

/-! ## A246281.P3833940699432057348

`lt[A349573(n+1), 1]+1`

The canonical program, it is in `Seq.B014.C000`.
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

The programs for A246282, the canonical program `A246282.P13261184401000594775` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246282 has offset 1).

The definition of A246282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246282.P13261184401000594775

`lt[0, A349573(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A246282

/-- `lt[0, A349573(n+1)]+1` -/
def P13261184401000594775.Spec : Prop :=
  ∀ n, (P13261184401000594775.a n : ℤ) = A246282 (n + 1)

theorem P13261184401000594775.correct : P13261184401000594775.Spec := by
  intro n
  simp only [A246282, Nat.add_sub_cancel]

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

/-! ## A246282.P8413786914555740404

`filter[n+1, A252742(#)]`
-/

namespace A246282.P8413786914555740404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j) = 1) n)

end

end A246282.P8413786914555740404

namespace A246282

/-- `filter[n+1, A252742(#)]` -/
def P8413786914555740404.Spec : Prop :=
  ∀ n, (P8413786914555740404.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P17247669549457102427

`eq[1, A252742(n+1)]+1`
-/

namespace A246282.P17247669549457102427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246282.P17247669549457102427

namespace A246282

/-- `eq[1, A252742(n+1)]+1` -/
def P17247669549457102427.Spec : Prop :=
  ∀ n, (P17247669549457102427.a n : ℤ) = A246282 (n + 1)

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

/-! ## A246282.P9595734308533709952

`A020725(lt[1, A252742(n+1)+1])`
-/

namespace A246282.P9595734308533709952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A246282.P9595734308533709952

namespace A246282

/-- `A020725(lt[1, A252742(n+1)+1])` -/
def P9595734308533709952.Spec : Prop :=
  ∀ n, P9595734308533709952.a n = A246282 (n + 1)

end A246282

/-! ## A246282.P14944721715458788332

`A065475(lt[1, A337345(n+1)+1])`
-/

namespace A246282.P14944721715458788332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A246282.P14944721715458788332

namespace A246282

/-- `A065475(lt[1, A337345(n+1)+1])` -/
def P14944721715458788332.Spec : Prop :=
  ∀ n, P14944721715458788332.a n = A246282 (n + 1)

end A246282

/-! ## A246282.P11137822206555612606

`lt[A252749(n), A252749(n+1)]+1`
-/

namespace A246282.P11137822206555612606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246282.P11137822206555612606

namespace A246282

/-- `lt[A252749(n), A252749(n+1)]+1` -/
def P11137822206555612606.Spec : Prop :=
  ∀ n, (P11137822206555612606.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P4802571794813467221

`lt[A337345(n+1), n*A337345(A028310(n))]`
-/

namespace A246282.P4802571794813467221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A337345 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246282.P4802571794813467221

namespace A246282

/-- `lt[A337345(n+1), n*A337345(A028310(n))]` -/
def P4802571794813467221.Spec : Prop :=
  ∀ n, (P4802571794813467221.a n : ℤ) = A246282 (n + 1)

end A246282

/-! ## A246282.P574227817832955299

`lt[n, A336853(gcd(n, A008574(n)))]`
-/

namespace A246282.P574227817832955299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246282.P574227817832955299

namespace A246282

/-- `lt[n, A336853(gcd(n, A008574(n)))]` -/
def P574227817832955299.Spec : Prop :=
  ∀ n, (P574227817832955299.a n : ℤ) = A246282 (n + 1)

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
# A246292: Number of permutations on [n*(n+1)/2] with cycles of n distinct lengths.

The programs for A246292, the canonical program `A246292.P7079877650501014124` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246292 has offset 0).

The definition of A246292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246292.P7079877650501014124

`C(n+1, 2)!/n!`

The canonical program, it is in `Seq.B000.C031`.
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

The programs for A246293, the canonical program `A246293.P9241675276305606840` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246293 has offset 1).

The definition of A246293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246293.P9241675276305606840

`lt[sin(n+1), sin(n)]`

The canonical program, it is in `Seq.B000.C031`.
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

The programs for A246294, the canonical program `A246294.P17393245477566257957` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246294 has offset 1).

The definition of A246294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246294.P1831754820406677654

`A246295(n+1)+1`
-/

namespace A246294.P1831754820406677654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (n + 1) + 1

end

end A246294.P1831754820406677654

namespace A246294

/-- `A246295(n+1)+1` -/
def P1831754820406677654.Spec : Prop :=
  ∀ n, P1831754820406677654.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P17393245477566257957

`A327139(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246294

/-- `A327139(Δ[n²])` -/
def P17393245477566257957.Spec : Prop :=
  ∀ n, P17393245477566257957.a n = A246294 (n + 1)

theorem P17393245477566257957.correct : P17393245477566257957.Spec := by
  intro n
  simp only [A246294, Nat.add_sub_cancel]

end A246294

/-! ## A246294.P12033176872907061839

`A000027(A327139(2*n+1))`
-/

namespace A246294.P12033176872907061839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A327139 (2 * n + 1)).toNat

end

end A246294.P12033176872907061839

namespace A246294

/-- `A000027(A327139(2*n+1))` -/
def P12033176872907061839.Spec : Prop :=
  ∀ n, P12033176872907061839.a n = A246294 (n + 1)

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

/-! ## A246294.P11953418154130213748

`A327139(2*n+1)%A045355(n+1)²`
-/

namespace A246294.P11953418154130213748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327139 (2 * n + 1)) (A045355 (n + 1) ^ 2)

end

end A246294.P11953418154130213748

namespace A246294

/-- `A327139(2*n+1)%A045355(n+1)²` -/
def P11953418154130213748.Spec : Prop :=
  ∀ n, P11953418154130213748.a n = A246294 (n + 1)

end A246294

/-! ## A246294.P11433016503429543299

`A246411(3*n+1)`
-/

namespace A246294.P11433016503429543299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (3 * n + 1)

end

end A246294.P11433016503429543299

namespace A246294

/-- `A246411(3*n+1)` -/
def P11433016503429543299.Spec : Prop :=
  ∀ n, P11433016503429543299.a n = A246294 (n + 1)

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

/-!
# A246295: Numbers k such that sin(k) < sin(k+1) < sin(k+2) > sin(k+3).

The programs for A246295, the canonical program `A246295.P13667216619548819936` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246295 has offset 1).

The definition of A246295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246295.P13667216619548819936

`A246294(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246295

/-- `A246294(n+1)-1` -/
def P13667216619548819936.Spec : Prop :=
  ∀ n, P13667216619548819936.a n = A246295 (n + 1)

theorem P13667216619548819936.correct : P13667216619548819936.Spec := by
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

/-! ## A246295.P3116938885335800957

`A246411(A016777(n))-1`
-/

namespace A246295.P3116938885335800957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (A016777 n).toNat - 1

end

end A246295.P3116938885335800957

namespace A246295

/-- `A246411(A016777(n))-1` -/
def P3116938885335800957.Spec : Prop :=
  ∀ n, P3116938885335800957.a n = A246295 (n + 1)

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

The programs for A246296, the canonical program `A246296.P14387227478916711438` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246296 has offset 1).

The definition of A246296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246296.P14387227478916711438

`A246295(n+2)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246296

/-- `A246295(n+2)-1` -/
def P14387227478916711438.Spec : Prop :=
  ∀ n, P14387227478916711438.a n = A246296 (n + 1)

theorem P14387227478916711438.correct : P14387227478916711438.Spec := by
  intro n
  simp only [A246296, Nat.add_sub_cancel]

end A246296

/-! ## A246296.P17702453937367716970

`A246294(n+2)-2`
-/

namespace A246296.P17702453937367716970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 2) - 2

end

end A246296.P17702453937367716970

namespace A246296

/-- `A246294(n+2)-2` -/
def P17702453937367716970.Spec : Prop :=
  ∀ n, P17702453937367716970.a n = A246296 (n + 1)

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

The programs for A246297, the canonical program `A246297.P8914562729595011779` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246297 has offset 1).

The definition of A246297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246297.P11429232879078550189

`A246298(n+1)+1`
-/

namespace A246297.P11429232879078550189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246298 (n + 1) + 1

end

end A246297.P11429232879078550189

namespace A246297

/-- `A246298(n+1)+1` -/
def P11429232879078550189.Spec : Prop :=
  ∀ n, P11429232879078550189.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P13172490171020136937

`A246299(n+1)+2`
-/

namespace A246297.P13172490171020136937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246299 (n + 1) + 2

end

end A246297.P13172490171020136937

namespace A246297

/-- `A246299(n+1)+2` -/
def P13172490171020136937.Spec : Prop :=
  ∀ n, P13172490171020136937.a n = A246297 (n + 1)

end A246297

/-! ## A246297.P8914562729595011779

`A327139(2*(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246297

/-- `A327139(2*(n+1))` -/
def P8914562729595011779.Spec : Prop :=
  ∀ n, P8914562729595011779.a n = A246297 (n + 1)

theorem P8914562729595011779.correct : P8914562729595011779.Spec := by
  intro n
  simp only [A246297, Nat.add_sub_cancel]

end A246297

/-! ## A246297.P12063924379592751437

`abs(A327139(n+2+n)-1)+1`
-/

namespace A246297.P12063924379592751437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327139 (n + 2 + n) - 1| + 1

end

end A246297.P12063924379592751437

namespace A246297

/-- `abs(A327139(n+2+n)-1)+1` -/
def P12063924379592751437.Spec : Prop :=
  ∀ n, P12063924379592751437.a n = A246297 (n + 1)

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

/-! ## A246297.P7507122726098348297

`A246414(3*n+2)`
-/

namespace A246297.P7507122726098348297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (3 * n + 2)

end

end A246297.P7507122726098348297

namespace A246297

/-- `A246414(3*n+2)` -/
def P7507122726098348297.Spec : Prop :=
  ∀ n, P7507122726098348297.a n = A246297 (n + 1)

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

/-! ## A246297.P7356111804351503768

`∩[A026309(n+1)-1, A327139(n+1)]`
-/

namespace A246297.P7356111804351503768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246297.P7356111804351503768

namespace A246297

/-- `∩[A026309(n+1)-1, A327139(n+1)]` -/
def P7356111804351503768.Spec : Prop :=
  ∀ n, (P7356111804351503768.a n : ℤ) = A246297 (n + 1)

end A246297

/-!
# A246298: Numbers k such that sin(k) > sin(k+1) > sin(k+2) < sin(k+3).

The programs for A246298, the canonical program `A246298.P9002022701830639785` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246298 has offset 1).

The definition of A246298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246298.P14107959759282292265

`A246299(n+1)+1`
-/

namespace A246298.P14107959759282292265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246299 (n + 1) + 1

end

end A246298.P14107959759282292265

namespace A246298

/-- `A246299(n+1)+1` -/
def P14107959759282292265.Spec : Prop :=
  ∀ n, P14107959759282292265.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P9002022701830639785

`A246297(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246298

/-- `A246297(n+1)-1` -/
def P9002022701830639785.Spec : Prop :=
  ∀ n, P9002022701830639785.a n = A246298 (n + 1)

theorem P9002022701830639785.correct : P9002022701830639785.Spec := by
  intro n
  simp only [A246298, Nat.add_sub_cancel]

end A246298

/-! ## A246298.P9119791628766817268

`A000027(A246297(n+1)+log2(1/2))`
-/

namespace A246298.P9119791628766817268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A246297 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A246298.P9119791628766817268

namespace A246298

/-- `A000027(A246297(n+1)+log2(1/2))` -/
def P9119791628766817268.Spec : Prop :=
  ∀ n, P9119791628766817268.a n = A246298 (n + 1)

end A246298

/-! ## A246298.P8794835530148004474

`A327139(2*(n+1))-1`
-/

namespace A246298.P8794835530148004474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (n + 1)) - 1

end

end A246298.P8794835530148004474

namespace A246298

/-- `A327139(2*(n+1))-1` -/
def P8794835530148004474.Spec : Prop :=
  ∀ n, P8794835530148004474.a n = A246298 (n + 1)

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

/-! ## A246298.P3157968250132817065

`A246414(A016789(n))-1`
-/

namespace A246298.P3157968250132817065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (A016789 n).toNat - 1

end

end A246298.P3157968250132817065

namespace A246298

/-- `A246414(A016789(n))-1` -/
def P3157968250132817065.Spec : Prop :=
  ∀ n, P3157968250132817065.a n = A246298 (n + 1)

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

/-! ## A246298.P3164351454829569287

`A023444(A246297(n+1)+1)`
-/

namespace A246298.P3164351454829569287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246297 (n + 1) + 1).toNat

end

end A246298.P3164351454829569287

namespace A246298

/-- `A023444(A246297(n+1)+1)` -/
def P3164351454829569287.Spec : Prop :=
  ∀ n, P3164351454829569287.a n = A246298 (n + 1)

end A246298

/-!
# A246299: Numbers k such that sin(k) > sin(k+1) > sin(k+2) > sin(k+3) < sin(k+4).

The programs for A246299, the canonical program `A246299.P187487161401922223` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246299 has offset 1).

The definition of A246299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246299.P187487161401922223

`A246298(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246299

/-- `A246298(n+1)-1` -/
def P187487161401922223.Spec : Prop :=
  ∀ n, P187487161401922223.a n = A246299 (n + 1)

theorem P187487161401922223.correct : P187487161401922223.Spec := by
  intro n
  simp only [A246299, Nat.add_sub_cancel]

end A246299

/-! ## A246299.P8153118422532961074

`A246297(n+1)-2`
-/

namespace A246299.P8153118422532961074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1) - 2

end

end A246299.P8153118422532961074

namespace A246299

/-- `A246297(n+1)-2` -/
def P8153118422532961074.Spec : Prop :=
  ∀ n, P8153118422532961074.a n = A246299 (n + 1)

end A246299

/-! ## A246299.P365009394935184791

`A327139(2*(n+1))-2`
-/

namespace A246299.P365009394935184791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (n + 1)) - 2

end

end A246299.P365009394935184791

namespace A246299

/-- `A327139(2*(n+1))-2` -/
def P365009394935184791.Spec : Prop :=
  ∀ n, P365009394935184791.a n = A246299 (n + 1)

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

/-! ## A246299.P5921199496518783246

`A246414(A016789(n))-2`
-/

namespace A246299.P5921199496518783246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (A016789 n).toNat - 2

end

end A246299.P5921199496518783246

namespace A246299

/-- `A246414(A016789(n))-2` -/
def P5921199496518783246.Spec : Prop :=
  ∀ n, P5921199496518783246.a n = A246299 (n + 1)

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

/-! ## A246299.P2009641553718293561

`A023444(A246297(n+1))`
-/

namespace A246299.P2009641553718293561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246297 (n + 1)).toNat

end

end A246299.P2009641553718293561

namespace A246299

/-- `A023444(A246297(n+1))` -/
def P2009641553718293561.Spec : Prop :=
  ∀ n, P2009641553718293561.a n = A246299 (n + 1)

end A246299

