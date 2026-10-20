import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A360200: Number of induced paths in the n X n grid graph.

The programs for A360200, there is no canonical definition to state claims against.
-/

/-! ## A360200.P17429608669891163023

`A360199((n+1)²+n²)`
-/

namespace A360200.P17429608669891163023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 ((n + 1) ^ 2 + n ^ 2)

end

end A360200.P17429608669891163023

/-! ## A360200.P1122356801874487333

`A360199(A001844(n))+A137579(n)`
-/

namespace A360200.P1122356801874487333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 (A001844 n).toNat + A137579 n

end

end A360200.P1122356801874487333

/-! ## A360200.P50265268703218115

`A360199(A001844(n))+A000007(3*n+1)`
-/

namespace A360200.P50265268703218115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 (A001844 n).toNat + A000007 (3 * n + 1)

end

end A360200.P50265268703218115

/-! ## A360200.P7019501768493030620

`A360199(A001844(n))+A112316(2*(n+2))`
-/

namespace A360200.P7019501768493030620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 (A001844 n).toNat + A112316 (2 * (n + 2))

end

end A360200.P7019501768493030620

/-! ## A360200.P12153326563191013274

`A360199(A001844(n))%A360203(n+1)`
-/

namespace A360200.P12153326563191013274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360199 (A001844 n).toNat) (A360203 (n + 1))

end

end A360200.P12153326563191013274

/-!
# A360201: Number of induced paths in the n-ladder graph P_2 X P_n.

The programs for A360201, the canonical program `A360201.P14235463326682790477` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360201 has offset 1).

The definition of A360201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360201.P14235463326682790477

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=25, a(3)=58`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360201

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P14235463326682790477.Spec : Prop :=
  ∀ n, P14235463326682790477.a n = A360201 (n + 1)

theorem P14235463326682790477.correct : P14235463326682790477.Spec := by
  intro n
  simp only [A360201, Nat.add_sub_cancel]

end A360201

/-! ## A360201.P10954510323836425076

`∑[ogf((1+5x+3x^2)/(1-2x+x^3))]`
-/

namespace A360201.P10954510323836425076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360201.P10954510323836425076

namespace A360201

/-- `∑[ogf((1+5x+3x^2)/(1-2x+x^3))]` -/
def P10954510323836425076.Spec : Prop :=
  ∀ n, P10954510323836425076.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P15178641137835528806

`ogf((1+5x+3x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A360201.P15178641137835528806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -3, 2, 1, -1] n

end

end A360201.P15178641137835528806

namespace A360201

/-- `ogf((1+5x+3x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P15178641137835528806.Spec : Prop :=
  ∀ n, P15178641137835528806.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P12159669270931830080

`∑[a(n-1)+a(n-2)+9]` with `a(0)=1, a(1)=7`
-/

namespace A360201.P12159669270931830080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360201.P12159669270931830080

namespace A360201

/-- `∑[a(n-1)+a(n-2)+9]` -/
def P12159669270931830080.Spec : Prop :=
  ∀ n, (P12159669270931830080.a n : ℤ) = A360201 (n + 1)

end A360201

/-! ## A360201.P2745744119406932076

`∑[A063758(n+1)-3]`
-/

namespace A360201.P2745744119406932076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063758 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360201.P2745744119406932076

namespace A360201

/-- `∑[A063758(n+1)-3]` -/
def P2745744119406932076.Spec : Prop :=
  ∀ n, P2745744119406932076.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P3680776601261390494

`A163723(n+1)+n²`
-/

namespace A360201.P3680776601261390494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163723 (n + 1) + (n ^ 2 : ℤ)

end

end A360201.P3680776601261390494

namespace A360201

/-- `A163723(n+1)+n²` -/
def P3680776601261390494.Spec : Prop :=
  ∀ n, P3680776601261390494.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P15820011937899066823

`2*A023652(n+1)-(n+1)`
-/

namespace A360201.P15820011937899066823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023652 (n + 1) - (n + 1 : ℤ)

end

end A360201.P15820011937899066823

namespace A360201

/-- `2*A023652(n+1)-(n+1)` -/
def P15820011937899066823.Spec : Prop :=
  ∀ n, P15820011937899066823.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P2193569336370347239

`∑[∑[2*A000045(n+3)]-3]`
-/

namespace A360201.P2193569336370347239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360201.P2193569336370347239

namespace A360201

/-- `∑[∑[2*A000045(n+3)]-3]` -/
def P2193569336370347239.Spec : Prop :=
  ∀ n, P2193569336370347239.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P4130227030145385965

`A192755(n)+A192751(n+1)`
-/

namespace A360201.P4130227030145385965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 n + A192751 (n + 1)

end

end A360201.P4130227030145385965

namespace A360201

/-- `A192755(n)+A192751(n+1)` -/
def P4130227030145385965.Spec : Prop :=
  ∀ n, P4130227030145385965.a n = A360201 (n + 1)

end A360201

/-! ## A360201.P10924806660575418661

`A192951(n+1)+A192956(n+1)+A192751(n)`
-/

namespace A360201.P10924806660575418661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + (A192956 (n + 1) + A192751 n)

end

end A360201.P10924806660575418661

namespace A360201

/-- `A192951(n+1)+A192956(n+1)+A192751(n)` -/
def P10924806660575418661.Spec : Prop :=
  ∀ n, P10924806660575418661.a n = A360201 (n + 1)

end A360201

/-!
# A360202: Array read by antidiagonals: T(m,n) is the number of (non-null) induced trees in the grid graph P_m X P_n.

The programs for A360202, there is no canonical definition to state claims against.
-/

/-! ## A360202.P14244763049344673462

`A225900(n+1)-A010054(A022175(n))`
-/

namespace A360202.P14244763049344673462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225900 (n + 1) - A010054 (A022175 n).toNat

end

end A360202.P14244763049344673462

/-! ## A360202.P14964893394676090900

`A360850(n+1)+A137579(A184761(n+1))`
-/

namespace A360202.P14964893394676090900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (n + 1) + A137579 (A184761 (n + 1)).toNat

end

end A360202.P14964893394676090900

/-! ## A360202.P18107698902567754210

`A360850(n+1)+A137579(A208269(n+1))`
-/

namespace A360202.P18107698902567754210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (n + 1) + A137579 (A208269 (n + 1)).toNat

end

end A360202.P18107698902567754210

/-! ## A360202.P10503612704051630537

`or(A137579(A282996(n+1)), A360850(n+1))`
-/

namespace A360202.P10503612704051630537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137579 (A282996 (n + 1)).toNat) (A360850 (n + 1))

end

end A360202.P10503612704051630537

/-! ## A360202.P11998128787865223387

`A360850(A032555(n+1))`
-/

namespace A360202.P11998128787865223387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A032555 (n + 1)).toNat

end

end A360202.P11998128787865223387

/-!
# A360203: Number of (non-null) induced trees in the n X n grid graph.

The programs for A360203, there is no canonical definition to state claims against.
-/

/-! ## A360203.P13994291254523581184

`A360202((n+1)²+n²)`
-/

namespace A360203.P13994291254523581184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 ((n + 1) ^ 2 + n ^ 2)

end

end A360203.P13994291254523581184

/-! ## A360203.P8983071218262706989

`record[A360202(A330613(n+1))]`
-/

namespace A360203.P8983071218262706989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360203.P8983071218262706989

/-! ## A360203.P16358893391810012951

`record[A360202(A001844(∑{e}[n+1, #]))]`
-/

namespace A360203.P16358893391810012951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A001844 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360203.P16358893391810012951

/-! ## A360203.P7438640645097390213

`A360202(A001844(n))+A137579(n)`
-/

namespace A360203.P7438640645097390213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A001844 n).toNat + A137579 n

end

end A360203.P7438640645097390213

/-! ## A360203.P6333784204882372082

`gcd(A112316(n), A360202(A001844(n)))`
-/

namespace A360203.P6333784204882372082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A360202 (A001844 n).toNat)

end

end A360203.P6333784204882372082

/-!
# A360204: Primitive prime powers. p is a primitive prime power iff it is an odd prime power that exceeds the preceding odd prime power by more than any smaller odd prime power does. ('Prime power' defined in the sense of A246655.)

The programs for A360204, there is no canonical definition to state claims against.
-/

/-! ## A360204.P17936346285907444106

`A308168((n+3)*A293430(n+1))`
-/

namespace A360204.P17936346285907444106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308168 ((n + 3 : ℤ) * A293430 (n + 1)).toNat

end

end A360204.P17936346285907444106

/-! ## A360204.P2726732507026099220

`A308168(A005117(n+1)*A118758(n+3))`
-/

namespace A360204.P2726732507026099220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308168 (A005117 (n + 1) * A118758 (n + 3)).toNat

end

end A360204.P2726732507026099220

/-!
# A360205: Triangle read by rows. T(n, k) = (-1)^(n-k)*(k+1)*binomial(n, k)*pochhammer(1-n, n-k).

The programs for A360205, there is no canonical definition to state claims against.
-/

/-! ## A360205.P17505450884257915517

`(n+1-C(round(sqrt(2*n)), 2))*A271703(n)`
-/

namespace A360205.P17505450884257915517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ)) * A271703 n

end

end A360205.P17505450884257915517

/-! ## A360205.P14529080449349106369

`A094587(n)*A127954(n+1)`
-/

namespace A360205.P14529080449349106369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A127954 (n + 1)

end

end A360205.P14529080449349106369

/-! ## A360205.P5161967385503615379

`A111596(n)*A140756(n+1)`
-/

namespace A360205.P5161967385503615379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 n * A140756 (n + 1)

end

end A360205.P5161967385503615379

/-! ## A360205.P15041397895772502667

`A002260(n+1)*A271703(n)`
-/

namespace A360205.P15041397895772502667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A271703 n

end

end A360205.P15041397895772502667

/-! ## A360205.P2322791505577428134

`(A002262(n)+1)*A271703(n)`
-/

namespace A360205.P2322791505577428134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A271703 n

end

end A360205.P2322791505577428134

/-! ## A360205.P11303438012523400420

`A131818(n+1)*A271703(n)`
-/

namespace A360205.P11303438012523400420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A271703 n

end

end A360205.P11303438012523400420

/-! ## A360205.P14544819948827542951

`A134868(n+1)*A271703(n)`
-/

namespace A360205.P14544819948827542951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A271703 n

end

end A360205.P14544819948827542951

/-! ## A360205.P14575218761473109976

`A135223(n+1)*A271703(n)`
-/

namespace A360205.P14575218761473109976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) * A271703 n

end

end A360205.P14575218761473109976

/-! ## A360205.P17893709210849445718

`A271703(n)*A384660(n+1)`
-/

namespace A360205.P17893709210849445718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 n * A384660 (n + 1)

end

end A360205.P17893709210849445718

/-! ## A360205.P8308541777209407783

`A000005(A059268(n))*A271703(n)`
-/

namespace A360205.P8308541777209407783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A271703 n

end

end A360205.P8308541777209407783

/-!
# A360211: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(2*n-3*k,n-2*k).

The programs for A360211, there is no canonical definition to state claims against.
-/

/-! ## A360211.P17466314123352114434

`A194920(A134762(n))`
-/

namespace A360211.P17466314123352114434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A134762 n).toNat

end

end A360211.P17466314123352114434

/-! ## A360211.P6841903882333682215

`ceil(ceil(A317090(A003500(n))/2)/2)`
-/

namespace A360211.P6841903882333682215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A317090 (A003500 n).toNat : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A360211.P6841903882333682215

/-! ## A360211.P18418665330856838739

`A127380(A082582(n))+A001353(n)`
-/

namespace A360211.P18418665330856838739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A082582 n).toNat + A001353 n

end

end A360211.P18418665330856838739

/-!
# A360212: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n-5*k,n-3*k).

The programs for A360212, there is no canonical definition to state claims against.
-/

/-! ## A360212.P12304560191880020640

`A047036(n)-A048881(A047029(n+1))`
-/

namespace A360212.P12304560191880020640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047036 n - A048881 (A047029 (n + 1)).toNat

end

end A360212.P12304560191880020640

/-! ## A360212.P2732874883726992300

`A121653(3*n+1)-A002266(A208227(n))`
-/

namespace A360212.P2732874883726992300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (3 * n + 1) - A002266 (A208227 n).toNat

end

end A360212.P2732874883726992300

/-!
# A360213: 

The programs for A360213, there is no canonical definition to state claims against.
-/

/-! ## A360213.P503070032110191841

`C((n+1)!^(n+1)+1, 2)`
-/

namespace A360213.P503070032110191841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1) ^ (n + 1) + 1) 2

end

end A360213.P503070032110191841

/-!
# A360219: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * binomial(n-3*k,k) * binomial(2*(n-3*k),n-3*k).

The programs for A360219, there is no canonical definition to state claims against.
-/

/-! ## A360219.P1396475562862967823

`A360294(n)-A086008(A360151(n))`
-/

namespace A360219.P1396475562862967823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360294 n - A086008 (A360151 n).toNat

end

end A360219.P1396475562862967823

/-! ## A360219.P4810628589687944033

`A360294(n)-A102683(A374599(n))`
-/

namespace A360219.P4810628589687944033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360294 n - A102683 (A374599 n).toNat

end

end A360219.P4810628589687944033

/-! ## A360219.P16966581462521728380

`A360294(n)-A055641(A018040(n+1))`
-/

namespace A360219.P16966581462521728380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360294 n - A055641 (A018040 (n + 1)).toNat

end

end A360219.P16966581462521728380

/-! ## A360219.P9081482912281549452

`A360294(n)-A124762(A078164(n+1))`
-/

namespace A360219.P9081482912281549452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360294 n - A124762 (A078164 (n + 1)).toNat

end

end A360219.P9081482912281549452

/-!
# A360220: Maximum number of diagonal transversals in an orthogonal diagonal Latin square of order n.

The programs for A360220, there is no canonical definition to state claims against.
-/

/-! ## A360220.P16683868496798682581

`char[and(n, floor(n/2))]*A287648(n+1)`
-/

namespace A360220.P16683868496798682581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A287648 (n + 1)

end

end A360220.P16683868496798682581

/-! ## A360220.P2747358628789540856

`A287648(A053627(n+1))`
-/

namespace A360220.P2747358628789540856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287648 (A053627 (n + 1)).toNat

end

end A360220.P2747358628789540856

/-! ## A360220.P588314592321592516

`A287648(A319653(n)+1)`
-/

namespace A360220.P588314592321592516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287648 (A319653 n + 1).toNat

end

end A360220.P588314592321592516

/-! ## A360220.P12374025547092901606

`A076699(n)*A287648(n+1)`
-/

namespace A360220.P12374025547092901606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076699 n * A287648 (n + 1)

end

end A360220.P12374025547092901606

/-! ## A360220.P15176407511276653802

`A080934(n)*A287648(n+1)`
-/

namespace A360220.P15176407511276653802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n * A287648 (n + 1)

end

end A360220.P15176407511276653802

/-!
# A360222: a(n) is the number of permutable pieces in a standard n X n X n Rubik's cube.

The programs for A360222, the canonical program `A360222.P18120498328665182943` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360222 has offset 1).

The definition of A360222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360222.P18120498328665182943

`A010023(n)%A110907(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360222

/-- `A010023(n)%A110907(n)` -/
def P18120498328665182943.Spec : Prop :=
  ∀ n, P18120498328665182943.a n = A360222 (n + 1)

theorem P18120498328665182943.correct : P18120498328665182943.Spec := by
  intro n
  simp only [A360222, Nat.add_sub_cancel]

end A360222

/-! ## A360222.P15517651433787623643

`4*(A227017(n+1)-A109613(n))`
-/

namespace A360222.P15517651433787623643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A227017 (n + 1) - A109613 n)

end

end A360222.P15517651433787623643

namespace A360222

/-- `4*(A227017(n+1)-A109613(n))` -/
def P15517651433787623643.Spec : Prop :=
  ∀ n, P15517651433787623643.a n = A360222 (n + 1)

end A360222

/-! ## A360222.P11192294949162642020

`A005897(n)-A092851(A006083(3*n+2))`
-/

namespace A360222.P11192294949162642020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A092851 (A006083 (3 * n + 2)).toNat

end

end A360222.P11192294949162642020

namespace A360222

/-- `A005897(n)-A092851(A006083(3*n+2))` -/
def P11192294949162642020.Spec : Prop :=
  ∀ n, P11192294949162642020.a n = A360222 (n + 1)

end A360222

/-! ## A360222.P15803710428578165193

`4*A014681(A032528(n))`
-/

namespace A360222.P15803710428578165193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014681 (A032528 n).toNat

end

end A360222.P15803710428578165193

namespace A360222

/-- `4*A014681(A032528(n))` -/
def P15803710428578165193.Spec : Prop :=
  ∀ n, P15803710428578165193.a n = A360222 (n + 1)

end A360222

/-! ## A360222.P16366777787596184776

`A004271(6*A000982(n))`
-/

namespace A360222.P16366777787596184776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (6 * A000982 n).toNat

end

end A360222.P16366777787596184776

namespace A360222

/-- `A004271(6*A000982(n))` -/
def P16366777787596184776.Spec : Prop :=
  ∀ n, P16366777787596184776.a n = A360222 (n + 1)

end A360222

/-!
# A360223: Maximum number of intercalates in an orthogonal diagonal Latin square of order n.

The programs for A360223, there is no canonical definition to state claims against.
-/

/-! ## A360223.P14501146161246408338

`lcm(2, A382952(n+1))`
-/

namespace A360223.P14501146161246408338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A382952 (n + 1))

end

end A360223.P14501146161246408338

/-! ## A360223.P10169044774123605349

`lcm(n, A272618((n+1)²))`
-/

namespace A360223.P10169044774123605349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A272618 ((n + 1) ^ 2))

end

end A360223.P10169044774123605349

/-! ## A360223.P9212195341925444454

`A382952(∑[A329314(n)])`
-/

namespace A360223.P9212195341925444454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360223.P9212195341925444454

/-! ## A360223.P3518174374943973692

`A382952(record[A000700(n)])`
-/

namespace A360223.P3518174374943973692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360223.P3518174374943973692

/-! ## A360223.P11911614746799466299

`A382952(A081306(n+1))`
-/

namespace A360223.P11911614746799466299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382952 (A081306 (n + 1)).toNat

end

end A360223.P11911614746799466299

/-!
# A360224: Number of k < n such that gcd(k, n) > 1, gcd(n^2-1, k) = 1, and rad(k) does not divide n.

The programs for A360224, there is no canonical definition to state claims against.
-/

/-! ## A360224.P609051800400880962

`A326592(A360005(3*(n+2))+A131802(n+1))`
-/

namespace A360224.P609051800400880962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 (A360005 (3 * (n + 2)) + A131802 (n + 1)).toNat

end

end A360224.P609051800400880962

/-! ## A360224.P5239102683050764304

`A316432(3*n+5)%A003050(A143773(n+1))`
-/

namespace A360224.P5239102683050764304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316432 (3 * n + 5)) (A003050 (A143773 (n + 1)).toNat)

end

end A360224.P5239102683050764304

/-! ## A360224.P13004278020335287652

`A184964(A229110(n+2))%A005811(3*(n+1))`
-/

namespace A360224.P13004278020335287652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184964 (A229110 (n + 2)).toNat) (A005811 (3 * (n + 1)))

end

end A360224.P13004278020335287652

/-!
# A360226: a(n) = sum of the first n primes whose distance to next prime is 4.

The programs for A360226, there is no canonical definition to state claims against.
-/

/-! ## A360226.P14225339519224516637

`A172112(n+2)-3`
-/

namespace A360226.P14225339519224516637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 2) - 3

end

end A360226.P14225339519224516637

/-! ## A360226.P16033232812740377066

`∑[A029710(n+1)]`
-/

namespace A360226.P16033232812740377066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P16033232812740377066

/-! ## A360226.P13796422878927191376

`∑[A029708(n+1)-2]`
-/

namespace A360226.P13796422878927191376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P13796422878927191376

/-! ## A360226.P1084303532812298494

`∑[A031505(n+1)-4]`
-/

namespace A360226.P1084303532812298494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P1084303532812298494

/-! ## A360226.P14120599027881945178

`∑[A015913(n+2)]`
-/

namespace A360226.P14120599027881945178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P14120599027881945178

/-! ## A360226.P4380317360824536998

`∑[A087679(n+2)-2]`
-/

namespace A360226.P4380317360824536998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P4380317360824536998

/-! ## A360226.P8551134352866102969

`∑[A165986(n+2)/2]`
-/

namespace A360226.P8551134352866102969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P8551134352866102969

/-! ## A360226.P9243974201073941711

`∑[A172238(n+3)]`
-/

namespace A360226.P9243974201073941711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P9243974201073941711

/-! ## A360226.P10715714191907754206

`∑[p?[A056772(n+2)]]`
-/

namespace A360226.P10715714191907754206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P10715714191907754206

/-! ## A360226.P5123244391661804769

`∑[A111980(2*n+1)]`
-/

namespace A360226.P5123244391661804769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P5123244391661804769

/-! ## A360226.P11438225006261517265

`∑[p?[A172367(n+3)]]`
-/

namespace A360226.P11438225006261517265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P11438225006261517265

/-! ## A360226.P8834598525697490930

`∑[A000040(A029709(n+1))]`
-/

namespace A360226.P8834598525697490930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P8834598525697490930

/-! ## A360226.P7399923057971025903

`∑[p?[A282354(n+2)]]`
-/

namespace A360226.P7399923057971025903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282354 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P7399923057971025903

/-! ## A360226.P12711333132515972362

`∑[A006530(A165986(n+2))]`
-/

namespace A360226.P12711333132515972362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A165986 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P12711333132515972362

/-! ## A360226.P5267648417705137830

`∑[eq[2, A047160(n+2)]]`
-/

namespace A360226.P5267648417705137830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360226.P5267648417705137830

/-!
# A360228: a(n) is the least prime p such that the primes from prime(n) to p contain a complete set of residues modulo at least one of these primes.

The programs for A360228, there is no canonical definition to state claims against.
-/

/-! ## A360228.P6038905896723667775

`A358238(A062399(n+1))`
-/

namespace A360228.P6038905896723667775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358238 (A062399 (n + 1)).toNat

end

end A360228.P6038905896723667775

/-! ## A360228.P11988631691003043343

`A358238(A351870(n+1))`
-/

namespace A360228.P11988631691003043343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358238 (A351870 (n + 1)).toNat

end

end A360228.P11988631691003043343

/-! ## A360228.P6316464265659673512

`A358238(A227549(n+1)+1)`
-/

namespace A360228.P6316464265659673512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358238 (A227549 (n + 1) + 1).toNat

end

end A360228.P6316464265659673512

/-! ## A360228.P14912492817521806327

`A006530(C(A358238(n+1), 2))`
-/

namespace A360228.P14912492817521806327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A358238 (n + 1)).toNat 2)

end

end A360228.P14912492817521806327

/-! ## A360228.P13771743607878867373

`filter[A358238(n+1), A377988(#)]`
-/

namespace A360228.P13771743607878867373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A360228.P13771743607878867373

/-!
# A360229: Row sums of triangle A360173.

The programs for A360229, there is no canonical definition to state claims against.
-/

/-! ## A360229.P18302688862869485984

`A000006(A360219(n))-A360309(n)`
-/

namespace A360229.P18302688862869485984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A360219 n).toNat - A360309 n

end

end A360229.P18302688862869485984

/-! ## A360229.P9099633198662277413

`A000006(A360294(n))-A360309(n)`
-/

namespace A360229.P9099633198662277413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A360294 n).toNat - A360309 n

end

end A360229.P9099633198662277413

/-! ## A360229.P7677012283667857805

`A055086(A004525(n)*A231179(n))`
-/

namespace A360229.P7677012283667857805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A004525 n * A231179 n).toNat

end

end A360229.P7677012283667857805

/-!
# A360230: a(n) = coefficient of x^n/n! in Sum_{n>=0} (1 + n*x + x^2)^n * x^n/n!.

The programs for A360230, there is no canonical definition to state claims against.
-/

/-! ## A360230.P9558475810953820842

`A086571(A357192(n)+A354436(n))`
-/

namespace A360230.P9558475810953820842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086571 (A357192 n + A354436 n).toNat

end

end A360230.P9558475810953820842

/-! ## A360230.P6188425521088799151

`A212096(A000142(n))+A101368(n+1)`
-/

namespace A360230.P6188425521088799151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 (A000142 n).toNat + A101368 (n + 1)

end

end A360230.P6188425521088799151

/-!
# A360231: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n-1))^(n+1) for n >= 0.

The programs for A360231, there is no canonical definition to state claims against.
-/

/-! ## A360231.P9633141945847903454

`A034781(A137160(n)+1)`
-/

namespace A360231.P9633141945847903454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A137160 n + 1).toNat

end

end A360231.P9633141945847903454

/-! ## A360231.P17795883669380904051

`A262904(A349601(n))+1`
-/

namespace A360231.P17795883669380904051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 (A349601 n).toNat + 1

end

end A360231.P17795883669380904051

/-!
# A360232: G.f. Sum_{n>=0} a(n)*x^n = Sum_{n>=0} (1 + n*x + x^2)^n * x^n.

The programs for A360232, there is no canonical definition to state claims against.
-/

/-! ## A360232.P18209486493725569389

`A051889(C(2*n, n)-n)`
-/

namespace A360232.P18209486493725569389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Nat.choose (2 * n) n - n)

end

end A360232.P18209486493725569389

/-! ## A360232.P8910318063947124438

`A051889(A045992(n))`
-/

namespace A360232.P8910318063947124438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A045992 n).toNat

end

end A360232.P8910318063947124438

/-! ## A360232.P11572391449763002477

`A112325(A052893(n))`
-/

namespace A360232.P11572391449763002477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A052893 n).toNat

end

end A360232.P11572391449763002477

/-!
# A360233: a(n) = coefficient of x^n in A(x) such that x = Sum_{n=-oo..+oo} x^n * (1 - x^n/A(-x))^n.

The programs for A360233, there is no canonical definition to state claims against.
-/

/-! ## A360233.P2198832092227630857

`A248610(A360748(n)+A000957(n+2))`
-/

namespace A360233.P2198832092227630857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A360748 n + A000957 (n + 2)).toNat

end

end A360233.P2198832092227630857

/-! ## A360233.P14624524986879636049

`A305788(2^C(n, 2))`
-/

namespace A360233.P14624524986879636049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (2 ^ Nat.choose n 2)

end

end A360233.P14624524986879636049

/-! ## A360233.P2792335457805249928

`A305788(∏[ceil(2^(n-1))])`
-/

namespace A360233.P2792335457805249928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360233.P2792335457805249928

/-!
# A360234: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n+2))^(n+1) for n >= 0.

The programs for A360234, there is no canonical definition to state claims against.
-/

/-! ## A360234.P6929290641858308407

`A004526((n+1)²*a(n-1)+2*n)-2` with `a(0)=1`
-/

namespace A360234.P6929290641858308407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004526 (((n + 1) ^ 2 : ℤ) * a (n - 1) + (2 * n : ℤ)).toNat - 2

end

end A360234.P6929290641858308407

/-!
# A360235: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n+3))^(n+1) for n >= 0.

The programs for A360235, there is no canonical definition to state claims against.
-/

/-! ## A360235.P5541340971227078992

`A165026(C(Δ[n²], n))`
-/

namespace A360235.P5541340971227078992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n)

end

end A360235.P5541340971227078992

/-!
# A360236: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n+4))^(n+1) for n >= 0.

The programs for A360236, there is no canonical definition to state claims against.
-/

/-! ## A360236.P6908566923634913421

`A370808(∑[a(n-1)+2*(n+1)])` with `a(0)=1, a(1)=0`
-/

namespace A360236.P6908566923634913421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360236.P6908566923634913421

/-!
# A360237: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n+5))^(n+1) for n >= 0.

The programs for A360237, there is no canonical definition to state claims against.
-/

/-! ## A360237.P71300721170841829

`A080079(A270913(n)²)`
-/

namespace A360237.P71300721170841829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A270913 n ^ 2).toNat

end

end A360237.P71300721170841829

/-!
# A360240: Weakly decreasing triples of positive integers sorted lexicographically and concatenated.

The programs for A360240, there is no canonical definition to state claims against.
-/

/-! ## A360240.P179770483744718328

`A331195(n)+1`
-/

namespace A360240.P179770483744718328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 n + 1

end

end A360240.P179770483744718328

/-! ## A360240.P8259466142583913866

`abs(A194849(n)-(2-n%3))+1`
-/

namespace A360240.P8259466142583913866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194849 n - (2 - ((n % 3 : ℕ) : ℤ))| + 1

end

end A360240.P8259466142583913866

/-! ## A360240.P10255629323038662620

`A008825(A331195(n))`
-/

namespace A360240.P10255629323038662620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008825 (A331195 n).toNat

end

end A360240.P10255629323038662620

/-! ## A360240.P14447178348100669627

`A005378(2*A331195(n))`
-/

namespace A360240.P14447178348100669627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (2 * A331195 n).toNat

end

end A360240.P14447178348100669627

/-! ## A360240.P18413387265103723553

`A008619(2*A331195(n))`
-/

namespace A360240.P18413387265103723553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A331195 n).toNat

end

end A360240.P18413387265103723553

/-! ## A360240.P15871531702703900153

`A028242(2*A331195(n))`
-/

namespace A360240.P15871531702703900153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A331195 n).toNat

end

end A360240.P15871531702703900153

/-! ## A360240.P1001343185728934415

`A158416(2*A331195(n))`
-/

namespace A360240.P1001343185728934415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A331195 n).toNat

end

end A360240.P1001343185728934415

/-! ## A360240.P1885974072243354888

`A008611(3*A331195(n))`
-/

namespace A360240.P1885974072243354888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A331195 n).toNat

end

end A360240.P1885974072243354888

/-! ## A360240.P18198806190373997073

`A099480(3*A331195(n))`
-/

namespace A360240.P18198806190373997073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 (3 * A331195 n).toNat

end

end A360240.P18198806190373997073

/-! ## A360240.P12560819338235341951

`A000005(2^A331195(n))`
-/

namespace A360240.P12560819338235341951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A331195 n : ℤ))).toNat

end

end A360240.P12560819338235341951

/-!
# A360241: Number of integer partitions of n whose distinct parts have integer mean.

The programs for A360241, there is no canonical definition to state claims against.
-/

/-! ## A360241.P18041329144054791701

`A377868(n+1)+A157685(A317715(n))`
-/

namespace A360241.P18041329144054791701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (n + 1) + A157685 (A317715 n).toNat

end

end A360241.P18041329144054791701

/-!
# A360242: Number of integer partitions of n where the parts do not have the same mean as the distinct parts.

The programs for A360242, there is no canonical definition to state claims against.
-/

/-! ## A360242.P14180285489394833575

`A360251(n)+A360250(n)`
-/

namespace A360242.P14180285489394833575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360251 n + A360250 n

end

end A360242.P14180285489394833575

/-! ## A360242.P7092195404032805632

`A000041(n)-A360243(n)`
-/

namespace A360242.P7092195404032805632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A360243 n

end

end A360242.P7092195404032805632

/-! ## A360242.P16275581600507460867

`A213598(n)-A360243(n)`
-/

namespace A360242.P16275581600507460867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A360243 n

end

end A360242.P16275581600507460867

/-! ## A360242.P8029427590545944279

`∑[A002865(n)]-A360243(n)`
-/

namespace A360242.P8029427590545944279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360243 n

end

end A360242.P8029427590545944279

/-! ## A360242.P4440078102723103825

`A000065(n)+1-A360243(n)`
-/

namespace A360242.P4440078102723103825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A360243 n)

end

end A360242.P4440078102723103825

/-!
# A360243: Number of integer partitions of n where the parts have the same mean as the distinct parts.

The programs for A360243, there is no canonical definition to state claims against.
-/

/-! ## A360243.P6776216280077981038

`A000041(n)-A360242(n)`
-/

namespace A360243.P6776216280077981038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A360242 n

end

end A360243.P6776216280077981038

/-! ## A360243.P13798757410334763724

`A213598(n)-A360242(n)`
-/

namespace A360243.P13798757410334763724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A360242 n

end

end A360243.P13798757410334763724

/-! ## A360243.P3390849802622856236

`∑[A002865(n)]-A360242(n)`
-/

namespace A360243.P3390849802622856236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360242 n

end

end A360243.P3390849802622856236

/-! ## A360243.P12228141371286510872

`A035363(2*n)-A360242(n)`
-/

namespace A360243.P12228141371286510872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A360242 n

end

end A360243.P12228141371286510872

/-! ## A360243.P408186046416526459

`A119620(2*n)-A360242(n)`
-/

namespace A360243.P408186046416526459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A360242 n

end

end A360243.P408186046416526459

/-!
# A360244: Number of integer partitions of n where the parts do not have the same median as the distinct parts.

The programs for A360244, there is no canonical definition to state claims against.
-/

/-! ## A360244.P10316317924744192313

`A000041(n)-A360245(n)`
-/

namespace A360244.P10316317924744192313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A360245 n

end

end A360244.P10316317924744192313

/-! ## A360244.P5976561175386869136

`A213598(n)-A360245(n)`
-/

namespace A360244.P5976561175386869136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A360245 n

end

end A360244.P5976561175386869136

/-! ## A360244.P6578508285932332993

`∑[A002865(n)]-A360245(n)`
-/

namespace A360244.P6578508285932332993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360245 n

end

end A360244.P6578508285932332993

/-! ## A360244.P12125962824563762566

`A000065(n)+1-A360245(n)`
-/

namespace A360244.P12125962824563762566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A360245 n)

end

end A360244.P12125962824563762566

/-! ## A360244.P7380333260079935802

`A035363(2*n)-A360245(n)`
-/

namespace A360244.P7380333260079935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A360245 n

end

end A360244.P7380333260079935802

/-!
# A360245: Number of integer partitions of n where the parts have the same median as the distinct parts.

The programs for A360245, there is no canonical definition to state claims against.
-/

/-! ## A360245.P16965920580308459131

`A000041(n)-A360244(n)`
-/

namespace A360245.P16965920580308459131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A360244 n

end

end A360245.P16965920580308459131

/-! ## A360245.P15872611520651855289

`A213598(n)-A360244(n)`
-/

namespace A360245.P15872611520651855289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A360244 n

end

end A360245.P15872611520651855289

/-! ## A360245.P9994168485934262238

`sqrt(A001255(n))-A360244(n)`
-/

namespace A360245.P9994168485934262238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A360244 n : ℝ)

end

end A360245.P9994168485934262238

/-! ## A360245.P3839861305518326709

`∑[A002865(n)]-A360244(n)`
-/

namespace A360245.P3839861305518326709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360244 n

end

end A360245.P3839861305518326709

/-! ## A360245.P5639637098680457575

`A000065(n)+1-A360244(n)`
-/

namespace A360245.P5639637098680457575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A360244 n)

end

end A360245.P5639637098680457575

/-!
# A360246: Numbers for which the prime indices do not have the same mean as the distinct prime indices.

The programs for A360246, there is no canonical definition to state claims against.
-/

/-! ## A360246.P15400597315328225335

`A059404(comp[23*n²])`
-/

namespace A360246.P15400597315328225335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A360246.P15400597315328225335

/-! ## A360246.P7938689358146729669

`∪[A242416(n+1), A104678(n)]`
-/

namespace A360246.P7938689358146729669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104678 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P7938689358146729669

/-! ## A360246.P17777277556671981852

`∪[A242416(n+1), A124388(n)]`
-/

namespace A360246.P17777277556671981852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P17777277556671981852

/-! ## A360246.P12227190381937448796

`∪[A360248(n+1), A124388(n)]`
-/

namespace A360246.P12227190381937448796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P12227190381937448796

/-! ## A360246.P10123822260429322016

`∪[A020342(n+1), A242416(n+1)]`
-/

namespace A360246.P10123822260429322016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P10123822260429322016

/-! ## A360246.P11283603144556060811

`∪[A044296(n+1), A242416(n+1)]`
-/

namespace A360246.P11283603144556060811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P11283603144556060811

/-! ## A360246.P15879631212262440314

`∪[A044677(n+1), A242416(n+1)]`
-/

namespace A360246.P15879631212262440314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P15879631212262440314

/-! ## A360246.P14769942751463292330

`∪[A070797(n+1), A242416(n+1)]`
-/

namespace A360246.P14769942751463292330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P14769942751463292330

/-! ## A360246.P4549835038172060106

`∪[A071366(n+1), A242416(n+1)]`
-/

namespace A360246.P4549835038172060106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P4549835038172060106

/-! ## A360246.P11840778985196749079

`∪[A073569(n+1), A242416(n+1)]`
-/

namespace A360246.P11840778985196749079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360246.P11840778985196749079

/-!
# A360247: Numbers for which the prime indices have the same mean as the distinct prime indices.

The programs for A360247, there is no canonical definition to state claims against.
-/

/-! ## A360247.P4384090796138684465

`comp[A360246(n+1)-1]+1`
-/

namespace A360247.P4384090796138684465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360247.P4384090796138684465

/-! ## A360247.P4115020766845037112

`comp[comp[(n+3)*A062760(n+1)-1]-1]`
-/

namespace A360247.P4115020766845037112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A062760 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360247.P4115020766845037112

/-! ## A360247.P9466216641052463760

`∪[A304449(n+1), C(n+7, 7)-a(n-1)]` with `a(0)=2`
-/

namespace A360247.P9466216641052463760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (Nat.choose (n + 7) 7 : ℤ) - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360247.P9466216641052463760

/-! ## A360247.P13188455601380696994

`∪[A072774(n+1), A113770(n)]`
-/

namespace A360247.P13188455601380696994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360247.P13188455601380696994

/-! ## A360247.P1878377718019801988

`∪[A072774(n+1), ∑[A017461(n)]]`
-/

namespace A360247.P1878377718019801988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360247.P1878377718019801988

/-! ## A360247.P861096774867367064

`∪[A062770(n+1), ∑[A336980(n)]]`
-/

namespace A360247.P861096774867367064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360247.P861096774867367064

/-! ## A360247.P13807569519997184417

`∪[∑[A057640(n+1)], A072774(n+1)]`
-/

namespace A360247.P13807569519997184417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A360247.P13807569519997184417

/-! ## A360247.P8355410751973526763

`∪[∑[A040119(3*n+5)], A072774(n+1)]`
-/

namespace A360247.P8355410751973526763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A360247.P8355410751973526763

/-! ## A360247.P6126386748609465868

`∪[A039956(n+1), comp[A359890(n+1)-1]+1]`
-/

namespace A360247.P6126386748609465868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A360247.P6126386748609465868

/-!
# A360248: Numbers for which the prime indices do not have the same median as the distinct prime indices.

The programs for A360248, there is no canonical definition to state claims against.
-/

/-! ## A360248.P17213393843931009353

`∪[A177425(n+1), A350140(n+1)]`
-/

namespace A360248.P17213393843931009353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360248.P17213393843931009353

/-! ## A360248.P4921045577632206449

`∪[A350140(n+1), A383113(n+1)]`
-/

namespace A360248.P4921045577632206449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360248.P4921045577632206449

/-! ## A360248.P2402747391249904230

`A242416(n+1)%A076439(n+1)`
-/

namespace A360248.P2402747391249904230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242416 (n + 1)) (A076439 (n + 1))

end

end A360248.P2402747391249904230

/-! ## A360248.P2447246233419992017

`A242416(n+1)+A000007(A025065(n))`
-/

namespace A360248.P2447246233419992017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1) + A000007 (A025065 n).toNat

end

end A360248.P2447246233419992017

/-! ## A360248.P271453768506490181

`A242416(n+1)+A053866(A350140(n+1))`
-/

namespace A360248.P271453768506490181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1) + A053866 (A350140 (n + 1)).toNat

end

end A360248.P271453768506490181

/-! ## A360248.P4467243442848520856

`A336562(A154616(n+2))+A242416(n+1)`
-/

namespace A360248.P4467243442848520856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A154616 (n + 2)).toNat + A242416 (n + 1)

end

end A360248.P4467243442848520856

/-! ## A360248.P1886217739203854906

`A057427(A332599(n+4))*A242416(n+1)`
-/

namespace A360248.P1886217739203854906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A332599 (n + 4)).toNat * A242416 (n + 1)

end

end A360248.P1886217739203854906

/-! ## A360248.P9289458999941172312

`A242416(n+1)%A293877(A223543(n))`
-/

namespace A360248.P9289458999941172312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242416 (n + 1)) (A293877 (A223543 n).toNat)

end

end A360248.P9289458999941172312

/-! ## A360248.P17539201515968993011

`A242416(n+1)+A000007(A306234(n+4))`
-/

namespace A360248.P17539201515968993011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1) + A000007 (A306234 (n + 4)).toNat

end

end A360248.P17539201515968993011

/-!
# A360249: Numbers for which the prime indices have the same median as the distinct prime indices.

The programs for A360249, there is no canonical definition to state claims against.
-/

/-! ## A360249.P13213306777669231468

`comp[A360248(n+1)-1]+1`
-/

namespace A360249.P13213306777669231468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360249.P13213306777669231468

/-! ## A360249.P5898776906257547419

`A069799(A085924(n))`
-/

namespace A360249.P5898776906257547419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A085924 n).toNat

end

end A360249.P5898776906257547419

/-! ## A360249.P5669878708238690138

`and(A085924(n), A127229(n+5))`
-/

namespace A360249.P5669878708238690138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085924 n) (A127229 (n + 5))

end

end A360249.P5669878708238690138

/-!
# A360250: Number of integer partitions of n where the parts have greater mean than the distinct parts.

The programs for A360250, there is no canonical definition to state claims against.
-/

/-! ## A360250.P12507951408918635676

`A360242(n)-A360251(n)`
-/

namespace A360250.P12507951408918635676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360242 n - A360251 n

end

end A360250.P12507951408918635676

/-!
# A360251: Number of integer partitions of n where the parts have lesser mean than the distinct parts.

The programs for A360251, there is no canonical definition to state claims against.
-/

/-! ## A360251.P4313448581215149561

`A360242(n)-A360250(n)`
-/

namespace A360251.P4313448581215149561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360242 n - A360250 n

end

end A360251.P4313448581215149561

/-! ## A360251.P13873975264809143008

`A213598(n)-(A360250(n)+A360243(n))`
-/

namespace A360251.P13873975264809143008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A360250 n + A360243 n)

end

end A360251.P13873975264809143008

/-! ## A360251.P16232297446519674825

`A330236(A035969(n))-A035943(n)`
-/

namespace A360251.P16232297446519674825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A035969 n).toNat - A035943 n

end

end A360251.P16232297446519674825

/-!
# A360252: Numbers for which the prime indices have greater mean than the distinct prime indices.

The programs for A360252, there is no canonical definition to state claims against.
-/

/-! ## A360252.P7501546744515534837

`∩[A071365(n+1), A375403(n+1)]`
-/

namespace A360252.P7501546744515534837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360252.P7501546744515534837

/-! ## A360252.P17543723397377397674

`filter[A329131(n+1), A143731(#)]`
-/

namespace A360252.P17543723397377397674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A360252.P17543723397377397674

/-! ## A360252.P5743674806946632417

`∩[A071365(n+1), A230108(n+1)]`
-/

namespace A360252.P5743674806946632417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360252.P5743674806946632417

/-! ## A360252.P12798726781610158185

`∩[A059404(n+1), A329131(n+1)]`
-/

namespace A360252.P12798726781610158185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360252.P12798726781610158185

/-!
# A360253: Numbers for which the prime indices have lesser mean than the distinct prime indices.

The programs for A360253, there is no canonical definition to state claims against.
-/

/-! ## A360253.P10324297465997336933

`A112769(comp[A264679(n+1)])`
-/

namespace A360253.P10324297465997336933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360253.P10324297465997336933

/-! ## A360253.P9280037505275084283

`A112769(comp[A243645(n)-1])`
-/

namespace A360253.P9280037505275084283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360253.P9280037505275084283

/-! ## A360253.P12258017323447788081

`∩[A047565(n+1), A112769(n+1)]`
-/

namespace A360253.P12258017323447788081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360253.P12258017323447788081

/-! ## A360253.P7333699223545088900

`∩[A047565(n+1), A362620(n+1)]`
-/

namespace A360253.P7333699223545088900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360253.P7333699223545088900

/-! ## A360253.P5401980894240106510

`A112769(comp[∑[A180989(3*(n+1))]])`
-/

namespace A360253.P5401980894240106510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360253.P5401980894240106510

/-! ## A360253.P16351728271293493654

`A362620(comp[A079704(3*n+2)]+1)`
-/

namespace A360253.P16351728271293493654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A360253.P16351728271293493654

/-! ## A360253.P10402671617108074830

`lt[A085079(n+2), A085079(A028310(n))]`
-/

namespace A360253.P10402671617108074830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360253.P10402671617108074830

/-! ## A360253.P10092279500284744991

`A112769(comp[A062748(n)*A334951(3*n)])`
-/

namespace A360253.P10092279500284744991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n * A334951 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360253.P10092279500284744991

/-! ## A360253.P724479249047227095

`lt[A085079(n+2), A085079(A233583(n+1))]`
-/

namespace A360253.P724479249047227095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360253.P724479249047227095

/-! ## A360253.P17236137463176155512

`∩[A112769(n+1), A059404(A004830(n+2))]`
-/

namespace A360253.P17236137463176155512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (A004830 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360253.P17236137463176155512

/-!
# A360254: Number of integer partitions of n with more adjacent equal parts than distinct parts.

The programs for A360254, there is no canonical definition to state claims against.
-/

/-! ## A360254.P10130071282625900782

`A000041(n)-A361394(n)`
-/

namespace A360254.P10130071282625900782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A361394 n

end

end A360254.P10130071282625900782

/-! ## A360254.P14344726219292504520

`A237363(n)-A239959(n)`
-/

namespace A360254.P14344726219292504520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 n - A239959 n

end

end A360254.P14344726219292504520

/-! ## A360254.P7304560426686931602

`∑[A002865(n)]-A361394(n)`
-/

namespace A360254.P7304560426686931602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361394 n

end

end A360254.P7304560426686931602

/-! ## A360254.P16555956406943460369

`A035363(2*n)-A361394(n)`
-/

namespace A360254.P16555956406943460369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A361394 n

end

end A360254.P16555956406943460369

/-! ## A360254.P10092590405343803660

`A119620(2*n)-A361394(n)`
-/

namespace A360254.P10092590405343803660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A361394 n

end

end A360254.P10092590405343803660

/-! ## A360254.P11009924112651745423

`∑[A085811(n+3)]-A361394(n)`
-/

namespace A360254.P11009924112651745423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361394 n

end

end A360254.P11009924112651745423

/-! ## A360254.P1712613831118892074

`A079025(A000217(n))-A361394(n)`
-/

namespace A360254.P1712613831118892074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A000217 n).toNat - A361394 n

end

end A360254.P1712613831118892074

/-! ## A360254.P16369796383689482590

`A035363(2*n)-A237365(n)-A239959(n)`
-/

namespace A360254.P16369796383689482590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237365 n - A239959 n

end

end A360254.P16369796383689482590

/-! ## A360254.P11838525136667018451

`A133041(n)-n-A237365(n)-A239959(n)`
-/

namespace A360254.P11838525136667018451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A237365 n - A239959 n

end

end A360254.P11838525136667018451

/-! ## A360254.P13637484234764121380

`∑{d}[n+1, A133732(#)]-A237365(n)-A239959(n)`
-/

namespace A360254.P13637484234764121380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A237365 n - A239959 n

end

end A360254.P13637484234764121380

/-!
# A360262: Determinant of the pentadiagonal symmetric nXn Toeplitz Matrix with a=b=1, c=3.

The programs for A360262, there is no canonical definition to state claims against.
-/

/-! ## A360262.P18117245882834979345

`A353417(A000169(n+1))-A068312(n)`
-/

namespace A360262.P18117245882834979345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353417 (A000169 (n + 1)).toNat - A068312 n

end

end A360262.P18117245882834979345

/-!
# A360263: Determinant of the pentadiagonal symmetric nXn Toeplitz Matrix with a=3, b=c=1.

The programs for A360263, the canonical program `A360263.P2883083890906611668` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360263 has offset 0).

The definition of A360263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360263.P2883083890906611668

`2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20, a(4)=48`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360263

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)+a(n-5)` -/
def P2883083890906611668.Spec : Prop :=
  ∀ n, P2883083890906611668.a n = A360263 n

theorem P2883083890906611668.correct : P2883083890906611668.Spec := by
  intro n
  simp only [A360263]

end A360263

/-! ## A360263.P959975748049876039

`ogf((1+x)/(1-2x-2x^2+2x^3+2x^4-x^5))`
-/

namespace A360263.P959975748049876039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -2, 2, 2, -1] n

end

end A360263.P959975748049876039

namespace A360263

/-- `ogf((1+x)/(1-2x-2x^2+2x^3+2x^4-x^5))` -/
def P959975748049876039.Spec : Prop :=
  ∀ n, P959975748049876039.a n = A360263 n

end A360263

/-! ## A360263.P12431066263781295849

`∑[∑[A152090(n+1)]]`
-/

namespace A360263.P12431066263781295849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360263.P12431066263781295849

namespace A360263

/-- `∑[∑[A152090(n+1)]]` -/
def P12431066263781295849.Spec : Prop :=
  ∀ n, P12431066263781295849.a n = A360263 n

end A360263

/-!
# A360264: Sum of mass(k/n) for all k, 1 <= k <= n, that are relatively prime to n.

The programs for A360264, there is no canonical definition to state claims against.
-/

/-! ## A360264.P14693289885606838110

`∑{d}[n+1, A008683(#)*A049835((n+1)/#)]`
-/

namespace A360264.P14693289885606838110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A049835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360264.P14693289885606838110

/-!
# A360266: a(n) = Sum_{k=0..floor(n/3)} binomial(n-2*k,k) * binomial(2*(n-2*k),n-2*k).

The programs for A360266, there is no canonical definition to state claims against.
-/

/-! ## A360266.P4110672162342379924

`A382189(A073790(n))`
-/

namespace A360266.P4110672162342379924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382189 (A073790 n).toNat

end

end A360266.P4110672162342379924

/-! ## A360266.P4435930381082265876

`A242603(A382189(n))`
-/

namespace A360266.P4435930381082265876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A382189 n).toNat

end

end A360266.P4435930381082265876

/-! ## A360266.P7010876010472057165

`A382189(A004881(n+1))`
-/

namespace A360266.P7010876010472057165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382189 (A004881 (n + 1)).toNat

end

end A360266.P7010876010472057165

/-! ## A360266.P7492135951520468282

`A382189(A004892(n+1))`
-/

namespace A360266.P7492135951520468282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382189 (A004892 (n + 1)).toNat

end

end A360266.P7492135951520468282

/-! ## A360266.P5824096311393575220

`A382189(A004903(n+1))`
-/

namespace A360266.P5824096311393575220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382189 (A004903 (n + 1)).toNat

end

end A360266.P5824096311393575220

/-!
# A360267: a(n) = Sum_{k=0..floor(n/4)} binomial(n-3*k,k) * binomial(2*(n-3*k),n-3*k).

The programs for A360267, there is no canonical definition to state claims against.
-/

/-! ## A360267.P18064421741354593883

`A360291(n)-A086008(A360151(n))`
-/

namespace A360267.P18064421741354593883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360291 n - A086008 (A360151 n).toNat

end

end A360267.P18064421741354593883

/-! ## A360267.P608492474657380379

`A360291(n)-A102683(A374599(n))`
-/

namespace A360267.P608492474657380379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360291 n - A102683 (A374599 n).toNat

end

end A360267.P608492474657380379

/-! ## A360267.P14026955187840800425

`A005843(record[A081668(n)])-A360219(n)`
-/

namespace A360267.P14026955187840800425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A360219 n

end

end A360267.P14026955187840800425

/-! ## A360267.P8765794547464676102

`A360291(n)-A124762(A078164(n+1))`
-/

namespace A360267.P8765794547464676102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360291 n - A124762 (A078164 (n + 1)).toNat

end

end A360267.P8765794547464676102

/-!
# A360268: A version of the Josephus problem: a(n) is the surviving integer under the following elimination process. Arrange 1,2,3,...,n in a circle, increasing clockwise. Starting with i=1, delete the integer 5 places clockwise from i. Repeat, counting 5 places from the next undeleted integer, until only one integer remains.

The programs for A360268, the canonical program `A360268.P8313819226898876608` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360268 has offset 1).

The definition of A360268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360268.P8313819226898876608

`(a(n-1)+5)%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360268

/-- `(a(n-1)+5)%(n+1)+1` -/
def P8313819226898876608.Spec : Prop :=
  ∀ n, (P8313819226898876608.a n : ℤ) = A360268 (n + 1)

theorem P8313819226898876608.correct : P8313819226898876608.Spec := by
  intro n
  simp only [A360268, Nat.add_sub_cancel]

end A360268

/-! ## A360268.P16733530592494882429

`A198788(A167614(n+4)+3)`
-/

namespace A360268.P16733530592494882429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A167614 (n + 4) + 3).toNat

end

end A360268.P16733530592494882429

namespace A360268

/-- `A198788(A167614(n+4)+3)` -/
def P16733530592494882429.Spec : Prop :=
  ∀ n, P16733530592494882429.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P1132475532921500978

`A198788(A000096(n+4)+7)`
-/

namespace A360268.P1132475532921500978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000096 (n + 4) + 7).toNat

end

end A360268.P1132475532921500978

namespace A360268

/-- `A198788(A000096(n+4)+7)` -/
def P1132475532921500978.Spec : Prop :=
  ∀ n, P1132475532921500978.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P12034372418105946689

`A198788(A000217(n+5)+6)`
-/

namespace A360268.P12034372418105946689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000217 (n + 5) + 6).toNat

end

end A360268.P12034372418105946689

namespace A360268

/-- `A198788(A000217(n+5)+6)` -/
def P12034372418105946689.Spec : Prop :=
  ∀ n, P12034372418105946689.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P7338345001783811693

`A198789(A000124(n+6)-6)`
-/

namespace A360268.P7338345001783811693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A000124 (n + 6) - 6).toNat

end

end A360268.P7338345001783811693

namespace A360268

/-- `A198789(A000124(n+6)-6)` -/
def P7338345001783811693.Spec : Prop :=
  ∀ n, P7338345001783811693.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P8279288312035510495

`A198788(eq[5, A002262(n)]+1)`
-/

namespace A360268.P8279288312035510495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A360268.P8279288312035510495

namespace A360268

/-- `A198788(eq[5, A002262(n)]+1)` -/
def P8279288312035510495.Spec : Prop :=
  ∀ n, P8279288312035510495.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P5701613221920039939

`A198789(Δ[A023551(n+1)]+1)`
-/

namespace A360268.P5701613221920039939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (f1 (n + 1) - f1 n + 1).toNat

end

end A360268.P5701613221920039939

namespace A360268

/-- `A198789(Δ[A023551(n+1)]+1)` -/
def P5701613221920039939.Spec : Prop :=
  ∀ n, P5701613221920039939.a n = A360268 (n + 1)

end A360268

/-! ## A360268.P16755986172809716499

`A198789(Δ[A026054(n+3)]+1)`
-/

namespace A360268.P16755986172809716499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (f1 (n + 1) - f1 n + 1).toNat

end

end A360268.P16755986172809716499

namespace A360268

/-- `A198789(Δ[A026054(n+3)]+1)` -/
def P16755986172809716499.Spec : Prop :=
  ∀ n, P16755986172809716499.a n = A360268 (n + 1)

end A360268

/-!
# A360269: Least sum of 2's and 3's required to build n using +, * and parentheses.

The programs for A360269, there is no canonical definition to state claims against.
-/

/-! ## A360269.P16336970372702900024

`A091860(n+2)+A091830(A091849(n+7))`
-/

namespace A360269.P16336970372702900024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091860 (n + 2) + A091830 (A091849 (n + 7)).toNat

end

end A360269.P16336970372702900024

/-!
# A360271: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * binomial(n-3*k,k) * Catalan(n-3*k).

The programs for A360271, there is no canonical definition to state claims against.
-/

/-! ## A360271.P4766227399073721183

`A319378(n+1)-A086013(A319616(n+2))`
-/

namespace A360271.P4766227399073721183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319378 (n + 1) - A086013 (A319616 (n + 2)).toNat

end

end A360271.P4766227399073721183

/-! ## A360271.P12631110020821386241

`A247911(A151412(n))`
-/

namespace A360271.P12631110020821386241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A151412 n).toNat

end

end A360271.P12631110020821386241

/-! ## A360271.P14578360106011195651

`A087011(A179167(n+1))`
-/

namespace A360271.P14578360106011195651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A179167 (n + 1)).toNat

end

end A360271.P14578360106011195651

/-! ## A360271.P7837320200542384270

`A187187(A195985(n+1))`
-/

namespace A360271.P7837320200542384270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A195985 (n + 1)).toNat

end

end A360271.P7837320200542384270

/-!
# A360272: a(n) = Sum_{k=0..floor(n/4)} binomial(n-3*k,k) * Catalan(n-3*k).

The programs for A360272, there is no canonical definition to state claims against.
-/

/-! ## A360272.P6757336185662177181

`A058495(A028310(n))-A241444(n)`
-/

namespace A360272.P6757336185662177181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058495 (A028310 n).toNat - A241444 n

end

end A360272.P6757336185662177181

/-! ## A360272.P6752907513470425249

`A373954(A371797(n+1))+A206302(n)`
-/

namespace A360272.P6752907513470425249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A371797 (n + 1)).toNat + A206302 n

end

end A360272.P6752907513470425249

/-! ## A360272.P13908223506112338625

`A030238(n)-A123108(A245898(n+1))`
-/

namespace A360272.P13908223506112338625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n - A123108 (A245898 (n + 1)).toNat

end

end A360272.P13908223506112338625

/-! ## A360272.P4379150625321950252

`A376574(n)-A277165(A376606(n+1))`
-/

namespace A360272.P4379150625321950252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376574 n - A277165 (A376606 (n + 1)).toNat

end

end A360272.P4379150625321950252

/-!
# A360273: a(n) = Sum_{k=0..floor(n/2)} Catalan(n-2*k).

The programs for A360273, the canonical program `A360273.P611309196020639949` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360273 has offset 0).

The definition of A360273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360273.P16525438710372036202

`∑[abs(∑[(6/(n+1)-4)*a(n-1)])]` with `a(0)=1`
-/

namespace A360273.P16525438710372036202
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (6 / (n + 1 : ℚ) - 4) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P16525438710372036202

namespace A360273

/-- `∑[abs(∑[(6/(n+1)-4)*a(n-1)])]` -/
def P16525438710372036202.Spec : Prop :=
  ∀ n, P16525438710372036202.a n = (A360273 n : ℚ)

end A360273

/-! ## A360273.P611309196020639949

`∑[A032357(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A360273

/-- `∑[A032357(n)]` -/
def P611309196020639949.Spec : Prop :=
  ∀ n, P611309196020639949.a n = A360273 n

theorem P611309196020639949.correct : P611309196020639949.Spec := by
  intro n
  simp only [A360273]

end A360273

/-! ## A360273.P12073446159037100207

`∑[abs(∑[A168491(n)])]`
-/

namespace A360273.P12073446159037100207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P12073446159037100207

namespace A360273

/-- `∑[abs(∑[A168491(n)])]` -/
def P12073446159037100207.Spec : Prop :=
  ∀ n, P12073446159037100207.a n = A360273 n

end A360273

/-! ## A360273.P936179046547084966

`∑[abs(record[A156906(n+3)])]`
-/

namespace A360273.P936179046547084966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P936179046547084966

namespace A360273

/-- `∑[abs(record[A156906(n+3)])]` -/
def P936179046547084966.Spec : Prop :=
  ∀ n, P936179046547084966.a n = A360273 n

end A360273

/-! ## A360273.P8457895393711289036

`∑[abs(A156906(2*(n+1)))]`
-/

namespace A360273.P8457895393711289036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156906 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P8457895393711289036

namespace A360273

/-- `∑[abs(A156906(2*(n+1)))]` -/
def P8457895393711289036.Spec : Prop :=
  ∀ n, P8457895393711289036.a n = A360273 n

end A360273

/-! ## A360273.P12502348183246304342

`∑[abs(∑[A090192(2*n+1)])]`
-/

namespace A360273.P12502348183246304342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P12502348183246304342

namespace A360273

/-- `∑[abs(∑[A090192(2*n+1)])]` -/
def P12502348183246304342.Spec : Prop :=
  ∀ n, P12502348183246304342.a n = A360273 n

end A360273

/-! ## A360273.P6111022827220096724

`∑[abs(∑[A105523(2*n+1)])]`
-/

namespace A360273.P6111022827220096724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P6111022827220096724

namespace A360273

/-- `∑[abs(∑[A105523(2*n+1)])]` -/
def P6111022827220096724.Spec : Prop :=
  ∀ n, P6111022827220096724.a n = A360273 n

end A360273

/-! ## A360273.P2034479870409698422

`∑[∑[A168491(n)]*A033999(n)]`
-/

namespace A360273.P2034479870409698422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P2034479870409698422

namespace A360273

/-- `∑[∑[A168491(n)]*A033999(n)]` -/
def P2034479870409698422.Spec : Prop :=
  ∀ n, P2034479870409698422.a n = A360273 n

end A360273

/-! ## A360273.P4378437842763998045

`∑[(4-6/(n+1))*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A360273.P4378437842763998045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A360273.P4378437842763998045

namespace A360273

/-- `∑[(4-6/(n+1))*a(n-1)]-a(n-1)` -/
def P4378437842763998045.Spec : Prop :=
  ∀ n, P4378437842763998045.a n = (A360273 n : ℚ)

end A360273

/-! ## A360273.P6400957266040088851

`A014137(n)-a(n-1)` with `a(0)=1`
-/

namespace A360273.P6400957266040088851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014137 n - a (n - 1)

end

end A360273.P6400957266040088851

namespace A360273

/-- `A014137(n)-a(n-1)` -/
def P6400957266040088851.Spec : Prop :=
  ∀ n, P6400957266040088851.a n = A360273 n

end A360273

/-! ## A360273.P15408158261532853838

`A014138(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A360273.P15408158261532853838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014138 n + 1 - a (n - 1)

end

end A360273.P15408158261532853838

namespace A360273

/-- `A014138(n)+1-a(n-1)` -/
def P15408158261532853838.Spec : Prop :=
  ∀ n, P15408158261532853838.a n = A360273 n

end A360273

/-! ## A360273.P6365729184790747344

`∑[A120304(n)+2]-a(n-1)` with `a(0)=1`
-/

namespace A360273.P6365729184790747344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A360273.P6365729184790747344

namespace A360273

/-- `∑[A120304(n)+2]-a(n-1)` -/
def P6365729184790747344.Spec : Prop :=
  ∀ n, P6365729184790747344.a n = A360273 n

end A360273

/-! ## A360273.P16734218685700505153

`(A032357(n)+A014137(n))/2`
-/

namespace A360273.P16734218685700505153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032357 n + A014137 n : ℚ) / 2

end

end A360273.P16734218685700505153

namespace A360273

/-- `(A032357(n)+A014137(n))/2` -/
def P16734218685700505153.Spec : Prop :=
  ∀ n, P16734218685700505153.a n = (A360273 n : ℚ)

end A360273

/-! ## A360273.P13307249291528533671

`∑[abs(∑[A106181(2*n+1)])]`
-/

namespace A360273.P13307249291528533671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106181 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P13307249291528533671

namespace A360273

/-- `∑[abs(∑[A106181(2*n+1)])]` -/
def P13307249291528533671.Spec : Prop :=
  ∀ n, P13307249291528533671.a n = A360273 n

end A360273

/-! ## A360273.P4632371429512103312

`a(n-2)+C(2*n, n+1)/n` with `a(0)=1, a(1)=1`
-/

namespace A360273.P4632371429512103312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (Nat.choose (2 * n) (n + 1) : ℚ) / (n : ℚ)

end

end A360273.P4632371429512103312

namespace A360273

/-- `a(n-2)+C(2*n, n+1)/n` -/
def P4632371429512103312.Spec : Prop :=
  ∀ n, P4632371429512103312.a n = (A360273 n : ℚ)

end A360273

/-! ## A360273.P16632535546633256288

`∑[C(2*n, n-1)/n-a(n-1)]` with `a(0)=1`
-/

namespace A360273.P16632535546633256288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose (2 * n) ((n : ℤ) - 1).toNat : ℚ) / (n : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P16632535546633256288

namespace A360273

/-- `∑[C(2*n, n-1)/n-a(n-1)]` -/
def P16632535546633256288.Spec : Prop :=
  ∀ n, P16632535546633256288.a n = (A360273 n : ℚ)

end A360273

/-! ## A360273.P9089846489196547379

`∑[A271453(∑[n])]`
-/

namespace A360273.P9089846489196547379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271453 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P9089846489196547379

namespace A360273

/-- `∑[A271453(∑[n])]` -/
def P9089846489196547379.Spec : Prop :=
  ∀ n, P9089846489196547379.a n = A360273 n

end A360273

/-!
# A360274: a(n) = Sum_{k=0..floor(n/3)} Catalan(n-3*k).

The programs for A360274, the canonical program `A360274.P13329374777487393845` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360274 has offset 0).

The definition of A360274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360274.P13329374777487393845

`A000108(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360274

/-- `A000108(n)+a(n-3)` -/
def P13329374777487393845.Spec : Prop :=
  ∀ n, P13329374777487393845.a n = A360274 n

theorem P13329374777487393845.correct : P13329374777487393845.Spec := by
  intro n
  simp only [A360274]

end A360274

/-! ## A360274.P15316351140463700926

`a(n-3)+abs(A168491(n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A360274.P15316351140463700926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + |A168491 n|

end

end A360274.P15316351140463700926

namespace A360274

/-- `a(n-3)+abs(A168491(n))` -/
def P15316351140463700926.Spec : Prop :=
  ∀ n, P15316351140463700926.a n = A360274 n

end A360274

/-! ## A360274.P8636871773706882421

`a(n-3)+A120304(n)+2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A360274.P8636871773706882421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + (A120304 n + 2)

end

end A360274.P8636871773706882421

namespace A360274

/-- `a(n-3)+A120304(n)+2` -/
def P8636871773706882421.Spec : Prop :=
  ∀ n, P8636871773706882421.a n = A360274 n

end A360274

/-! ## A360274.P10160030932706360480

`a(n-3)+A246604(n)+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A360274.P10160030932706360480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + (A246604 n + (n : ℤ))

end

end A360274.P10160030932706360480

namespace A360274

/-- `a(n-3)+A246604(n)+n` -/
def P10160030932706360480.Spec : Prop :=
  ∀ n, P10160030932706360480.a n = A360274 n

end A360274

/-! ## A360274.P2688357588267030436

`A014137(n)-(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A360274.P2688357588267030436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014137 n - (a (n - 1) - (-a (n - 2)))

end

end A360274.P2688357588267030436

namespace A360274

/-- `A014137(n)-(a(n-1)-ceil(-a(n-2)))` -/
def P2688357588267030436.Spec : Prop :=
  ∀ n, P2688357588267030436.a n = A360274 n

end A360274

/-!
# A360275: Number of unordered quadruples of self-avoiding paths with nodes that cover all vertices of a convex n-gon.

The programs for A360275, there is no canonical definition to state claims against.
-/

/-! ## A360275.P6183162754165492748

`A011856(A026477(n+1))*A201643(n+3)`
-/

namespace A360275.P6183162754165492748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011856 (A026477 (n + 1)).toNat * A201643 (n + 3)

end

end A360275.P6183162754165492748

/-!
# A360276: Number of unordered quadruples of self-avoiding paths with nodes that cover all vertices of a convex n-gon; one-node paths are allowed.

The programs for A360276, there is no canonical definition to state claims against.
-/

/-! ## A360276.P11614257635176618545

`A175585(C(2*n, n+3))`
-/

namespace A360276.P11614257635176618545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (Nat.choose (2 * n) (n + 3))

end

end A360276.P11614257635176618545

/-! ## A360276.P5195518345096404712

`A194365(A002478(n))`
-/

namespace A360276.P5195518345096404712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194365 (A002478 n).toNat

end

end A360276.P5195518345096404712

/-!
# A360277: Primes p that are congruent to 1 mod 2*k, where k = primepi(p) is the index of the prime.

The programs for A360277, there is no canonical definition to state claims against.
-/

/-! ## A360277.P13308590233565898677

`filter[A048891(n+3), A368992(#)]`
-/

namespace A360277.P13308590233565898677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048891 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368992 (f1 j).toNat = 1) n)

end

end A360277.P13308590233565898677

/-!
# A360278: Determinant of the matrix [L(j+k) + d(j,k)]_{1<=j, k<=n}, where L(n) denotes the Lucas number A000032(n), and d(j,k) is 1 or 0 according as j = k or not.

The programs for A360278, the canonical program `A360278.P13616479014560564897` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360278 has offset 1).

The definition of A360278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360278.P13616479014560564897

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=4, a(1)=16, a(2)=44, a(3)=121`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360278

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P13616479014560564897.Spec : Prop :=
  ∀ n, P13616479014560564897.a n = A360278 (n + 1)

theorem P13616479014560564897.correct : P13616479014560564897.Spec := by
  intro n
  simp only [A360278, Nat.add_sub_cancel]

end A360278

/-! ## A360278.P2739101713515551612

`∑[∑[round(ϕ^(n+1))²]]-n`
-/

namespace A360278.P2739101713515551612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A360278.P2739101713515551612

namespace A360278

/-- `∑[∑[round(ϕ^(n+1))²]]-n` -/
def P2739101713515551612.Spec : Prop :=
  ∀ n, P2739101713515551612.a n = A360278 (n + 1)

end A360278

/-! ## A360278.P11744629649458596931

`ogf((4+4x-4x^2+x^3)/(1-3x+3x^3-x^4))`
-/

namespace A360278.P11744629649458596931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, -4, 1] [1, -3, 0, 3, -1] n

end

end A360278.P11744629649458596931

namespace A360278

/-- `ogf((4+4x-4x^2+x^3)/(1-3x+3x^3-x^4))` -/
def P11744629649458596931.Spec : Prop :=
  ∀ n, P11744629649458596931.a n = A360278 (n + 1)

end A360278

/-! ## A360278.P2503748166857576340

`abs(1-A215580(n+1))`
-/

namespace A360278.P2503748166857576340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A215580 (n + 1)|

end

end A360278.P2503748166857576340

namespace A360278

/-- `abs(1-A215580(n+1))` -/
def P2503748166857576340.Spec : Prop :=
  ∀ n, P2503748166857576340.a n = A360278 (n + 1)

end A360278

/-! ## A360278.P18174252029141664145

`abs(A001350(2*(n+2))-log2(gcd(2, n)))`
-/

namespace A360278.P18174252029141664145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(A001350 (2 * (n + 2)) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)|

end

end A360278.P18174252029141664145

namespace A360278

/-- `abs(A001350(2*(n+2))-log2(gcd(2, n)))` -/
def P18174252029141664145.Spec : Prop :=
  ∀ n, P18174252029141664145.a n = (A360278 (n + 1) : ℝ)

end A360278

/-! ## A360278.P155267173808628738

`Δ[∑[A215580(n)]-n]`
-/

namespace A360278.P155267173808628738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360278.P155267173808628738

namespace A360278

/-- `Δ[∑[A215580(n)]-n]` -/
def P155267173808628738.Spec : Prop :=
  ∀ n, P155267173808628738.a n = A360278 (n + 1)

end A360278

/-! ## A360278.P6446799687377748177

`A284115(A343007(n+1))`
-/

namespace A360278.P6446799687377748177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A343007 (n + 1)).toNat

end

end A360278.P6446799687377748177

namespace A360278

/-- `A284115(A343007(n+1))` -/
def P6446799687377748177.Spec : Prop :=
  ∀ n, P6446799687377748177.a n = A360278 (n + 1)

end A360278

/-!
# A360280: Squares that are the hypotenuse of a primitive Pythagorean triangle.

The programs for A360280, the canonical program `A360280.P7719168232723027333` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360280 has offset 1).

The definition of A360280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360280.P7719168232723027333

`A008846(n+1)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360280

/-- `A008846(n+1)²` -/
def P7719168232723027333.Spec : Prop :=
  ∀ n, P7719168232723027333.a n = A360280 (n + 1)

theorem P7719168232723027333.correct : P7719168232723027333.Spec := by
  intro n
  simp only [A360280, Nat.add_sub_cancel]

end A360280

/-! ## A360280.P728668417502168272

`(A157075(n+1)/2)²`
-/

namespace A360280.P728668417502168272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A157075 (n + 1) : ℚ) / 2) ^ 2

end

end A360280.P728668417502168272

namespace A360280

/-- `(A157075(n+1)/2)²` -/
def P728668417502168272.Spec : Prop :=
  ∀ n, P728668417502168272.a n = (A360280 (n + 1) : ℚ)

end A360280

/-! ## A360280.P14992559343045343549

`A008846(A000027(n+1))^2`
-/

namespace A360280.P14992559343045343549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (A000027 (n + 1)).toNat ^ 2

end

end A360280.P14992559343045343549

namespace A360280

/-- `A008846(A000027(n+1))^2` -/
def P14992559343045343549.Spec : Prop :=
  ∀ n, P14992559343045343549.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P6856738764587280059

`A008846(n+1)^dr(A166311(n+1))`
-/

namespace A360280.P6856738764587280059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) ^ SequenceMachineLib.digitalRoot (A166311 (n + 1))

end

end A360280.P6856738764587280059

namespace A360280

/-- `A008846(n+1)^dr(A166311(n+1))` -/
def P6856738764587280059.Spec : Prop :=
  ∀ n, P6856738764587280059.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P13970680748473642380

`A008846(n+1)^A020639(2*(n+1))`
-/

namespace A360280.P13970680748473642380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A360280.P13970680748473642380

namespace A360280

/-- `A008846(n+1)^A020639(2*(n+1))` -/
def P13970680748473642380.Spec : Prop :=
  ∀ n, P13970680748473642380.a n = (A360280 (n + 1) : ℚ)

end A360280

/-! ## A360280.P3803515715006971864

`A008846(n+1)^A040001(2*(n+1))`
-/

namespace A360280.P3803515715006971864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 1) : ℚ) ^ (A040001 (2 * (n + 1)) : ℤ)

end

end A360280.P3803515715006971864

namespace A360280

/-- `A008846(n+1)^A040001(2*(n+1))` -/
def P3803515715006971864.Spec : Prop :=
  ∀ n, P3803515715006971864.a n = (A360280 (n + 1) : ℚ)

end A360280

/-! ## A360280.P845677224875797448

`A008846(A000027(n+1))*A008846(n+1)`
-/

namespace A360280.P845677224875797448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (A000027 (n + 1)).toNat * A008846 (n + 1)

end

end A360280.P845677224875797448

namespace A360280

/-- `A008846(A000027(n+1))*A008846(n+1)` -/
def P845677224875797448.Spec : Prop :=
  ∀ n, P845677224875797448.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P12007384664011489746

`A008846(n+1)^A000005(A006530(n+4))`
-/

namespace A360280.P12007384664011489746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 1) : ℚ) ^ (A000005 (A006530 (n + 4)).toNat : ℤ)

end

end A360280.P12007384664011489746

namespace A360280

/-- `A008846(n+1)^A000005(A006530(n+4))` -/
def P12007384664011489746.Spec : Prop :=
  ∀ n, P12007384664011489746.a n = (A360280 (n + 1) : ℚ)

end A360280

/-! ## A360280.P15309285575519870503

`(A157075(n+1)-A008846(n+1))*A008846(n+1)`
-/

namespace A360280.P15309285575519870503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157075 (n + 1) - A008846 (n + 1)) * A008846 (n + 1)

end

end A360280.P15309285575519870503

namespace A360280

/-- `(A157075(n+1)-A008846(n+1))*A008846(n+1)` -/
def P15309285575519870503.Spec : Prop :=
  ∀ n, P15309285575519870503.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P18274318526228439181

`(A008846(n+2)-A141614(n+1))*A008846(n+1)`
-/

namespace A360280.P18274318526228439181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 2) - A141614 (n + 1)) * A008846 (n + 1)

end

end A360280.P18274318526228439181

namespace A360280

/-- `(A008846(n+2)-A141614(n+1))*A008846(n+1)` -/
def P18274318526228439181.Spec : Prop :=
  ∀ n, P18274318526228439181.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P1420587301696665991

`A004613(n+2)²`
-/

namespace A360280.P1420587301696665991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2) ^ 2

end

end A360280.P1420587301696665991

namespace A360280

/-- `A004613(n+2)²` -/
def P1420587301696665991.Spec : Prop :=
  ∀ n, P1420587301696665991.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P18213629272383357443

`A004613(n+2)*A008846(n+1)`
-/

namespace A360280.P18213629272383357443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2) * A008846 (n + 1)

end

end A360280.P18213629272383357443

namespace A360280

/-- `A004613(n+2)*A008846(n+1)` -/
def P18213629272383357443.Spec : Prop :=
  ∀ n, P18213629272383357443.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P8230891536886314817

`(A157075(n+1)-A004613(n+2))*A004613(n+2)`
-/

namespace A360280.P8230891536886314817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157075 (n + 1) - A004613 (n + 2)) * A004613 (n + 2)

end

end A360280.P8230891536886314817

namespace A360280

/-- `(A157075(n+1)-A004613(n+2))*A004613(n+2)` -/
def P8230891536886314817.Spec : Prop :=
  ∀ n, P8230891536886314817.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P1085398970487107095

`A000265(A157075(n+1))²`
-/

namespace A360280.P1085398970487107095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A157075 (n + 1)).toNat ^ 2

end

end A360280.P1085398970487107095

namespace A360280

/-- `A000265(A157075(n+1))²` -/
def P1085398970487107095.Spec : Prop :=
  ∀ n, P1085398970487107095.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P6612343236546425687

`∩[A135784(n+1), A369563(n+1)]`
-/

namespace A360280.P6612343236546425687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360280.P6612343236546425687

namespace A360280

/-- `∩[A135784(n+1), A369563(n+1)]` -/
def P6612343236546425687.Spec : Prop :=
  ∀ n, (P6612343236546425687.a n : ℤ) = A360280 (n + 1)

end A360280

/-! ## A360280.P13796836702078678585

`A016814(A094178(n+1))`
-/

namespace A360280.P13796836702078678585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (A094178 (n + 1)).toNat

end

end A360280.P13796836702078678585

namespace A360280

/-- `A016814(A094178(n+1))` -/
def P13796836702078678585.Spec : Prop :=
  ∀ n, P13796836702078678585.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P17309827072855466265

`∩[A004766(n+1), A008784(n+1)]²`
-/

namespace A360280.P17309827072855466265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A360280.P17309827072855466265

namespace A360280

/-- `∩[A004766(n+1), A008784(n+1)]²` -/
def P17309827072855466265.Spec : Prop :=
  ∀ n, (P17309827072855466265.a n : ℤ) = A360280 (n + 1)

end A360280

/-! ## A360280.P3411474469401778136

`∩[A004766(n+1), A072437(n+1)]²`
-/

namespace A360280.P3411474469401778136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A360280.P3411474469401778136

namespace A360280

/-- `∩[A004766(n+1), A072437(n+1)]²` -/
def P3411474469401778136.Spec : Prop :=
  ∀ n, (P3411474469401778136.a n : ℤ) = A360280 (n + 1)

end A360280

/-! ## A360280.P18213378069138693481

`A004766(lt[1, A031358(n)])²`
-/

namespace A360280.P18213378069138693481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A360280.P18213378069138693481

namespace A360280

/-- `A004766(lt[1, A031358(n)])²` -/
def P18213378069138693481.Spec : Prop :=
  ∀ n, P18213378069138693481.a n = A360280 (n + 1)

end A360280

/-! ## A360280.P17526498365674454940

`∩[A016813(n+1), A008784(n+2)]²`
-/

namespace A360280.P17526498365674454940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A360280.P17526498365674454940

namespace A360280

/-- `∩[A016813(n+1), A008784(n+2)]²` -/
def P17526498365674454940.Spec : Prop :=
  ∀ n, (P17526498365674454940.a n : ℤ) = A360280 (n + 1)

end A360280

/-!
# A360282: Triangle read by rows. T(n, k) = (1/2) * binomial(2*(n - k + 1), n - k + 1) * binomial(2*n - k, k - 1) for n > 0, T(0, 0) = 1.

The programs for A360282, the canonical program `A360282.P12012788412935324034` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360282 has offset 0).

The definition of A360282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360282.P12012788412935324034

`A092392(n)*A198321(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A360282

/-- `A092392(n)*A198321(n)` -/
def P12012788412935324034.Spec : Prop :=
  ∀ n, P12012788412935324034.a n = A360282 n

theorem P12012788412935324034.correct : P12012788412935324034.Spec := by
  intro n
  simp only [A360282]

end A360282

/-! ## A360282.P729258161282524327

`A059481(round(sqrt(2*n))²-n)*A097805(n)`
-/

namespace A360282.P729258161282524327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2 - (n : ℤ)).toNat * A097805 n

end

end A360282.P729258161282524327

namespace A360282

/-- `A059481(round(sqrt(2*n))²-n)*A097805(n)` -/
def P729258161282524327.Spec : Prop :=
  ∀ n, P729258161282524327.a n = A360282 n

end A360282

/-! ## A360282.P5035300983903022719

`A253283((A061579(n)+1)%A299273(n))`
-/

namespace A360282.P5035300983903022719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253283 (Int.tmod (A061579 n + 1) (A299273 n)).toNat

end

end A360282.P5035300983903022719

namespace A360282

/-- `A253283((A061579(n)+1)%A299273(n))` -/
def P5035300983903022719.Spec : Prop :=
  ∀ n, P5035300983903022719.a n = A360282 n

end A360282

/-!
# A360283: a(n) = lcm({n! * binomial(n, k) for k = 0..n}).

The programs for A360283, there is no canonical definition to state claims against.
-/

/-! ## A360283.P13612960690742696227

`n!²/∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])]`
-/

namespace A360283.P13612960690742696227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A360283.P13612960690742696227

/-! ## A360283.P2161742293392074360

`A002397(n)/(n+1)`
-/

namespace A360283.P2161742293392074360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002397 n : ℚ) / (n + 1 : ℚ)

end

end A360283.P2161742293392074360

/-! ## A360283.P9635503047900923717

`n!*A002944(n+1)`
-/

namespace A360283.P9635503047900923717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002944 (n + 1)

end

end A360283.P9635503047900923717

/-! ## A360283.P13097444268251893939

`A325871(n)*A362989(n)`
-/

namespace A360283.P13097444268251893939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325871 n * A362989 n

end

end A360283.P13097444268251893939

/-! ## A360283.P5906050570685620231

`A000142(n)*A002944(n+1)`
-/

namespace A360283.P5906050570685620231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002944 (n + 1)

end

end A360283.P5906050570685620231

/-!
# A360284: Least integer nu such that the first zero of the Bessel j-function of index nu is at least nu + n.

The programs for A360284, there is no canonical definition to state claims against.
-/

/-! ## A360284.P5526029821350248163

`∑[∑[A330959(A325830(n))+n]]`
-/

namespace A360284.P5526029821350248163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 (A325830 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360284.P5526029821350248163

/-! ## A360284.P12624251463549034430

`∑[∑[A125122(A323097(2*(n+2)))+n]]`
-/

namespace A360284.P12624251463549034430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125122 (A323097 (2 * (n + 2))).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360284.P12624251463549034430

/-! ## A360284.P16431529501201411509

`∑[∑[A101688(A014137(n))+n]]`
-/

namespace A360284.P16431529501201411509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (A014137 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360284.P16431529501201411509

/-! ## A360284.P13119664424697282829

`∑[∑[A092248(A019295(n+1))+n]]`
-/

namespace A360284.P13119664424697282829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A019295 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360284.P13119664424697282829

/-! ## A360284.P10291459576506638831

`∑[∑[A136743(A045918(n))%2+n]]`
-/

namespace A360284.P10291459576506638831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136743 (A045918 n).toNat) 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360284.P10291459576506638831

/-!
# A360285: Triangle read by rows: T(n,k) is the number of subsets of {1,...,n} of cardinality k in which no two elements are coprime; n >= 0, 0 <= k <= floor(n/2) + [n=1].

The programs for A360285, there is no canonical definition to state claims against.
-/

/-! ## A360285.P12808765822451503944

`A011973(A093641(n+1)%A319186(n+1))`
-/

namespace A360285.P12808765822451503944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (Int.tmod (A093641 (n + 1)) (A319186 (n + 1))).toNat

end

end A360285.P12808765822451503944

/-! ## A360285.P10904523573896793221

`A137743(lt[A137738(n), n])`
-/

namespace A360285.P10904523573896793221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137738 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A360285.P10904523573896793221

/-! ## A360285.P7187153929463529177

`A122855(A033848(n+3))+1`
-/

namespace A360285.P7187153929463529177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (A033848 (n + 3)).toNat + 1

end

end A360285.P7187153929463529177

/-! ## A360285.P13224804350045315761

`ceil(A302128(n+1)/A113370(3*(n+1)))`
-/

namespace A360285.P13224804350045315761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A302128 (n + 1) : ℚ) / (A113370 (3 * (n + 1)) : ℚ)⌉

end

end A360285.P13224804350045315761

/-! ## A360285.P4618994312962241612

`A214494(A121724(A289871(n))+n+1)`
-/

namespace A360285.P4618994312962241612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214494 (A121724 (A289871 n).toNat + (n + 1 : ℤ)).toNat

end

end A360285.P4618994312962241612

/-!
# A360286: Irregular triangle read by rows where row n is the lexicographically earliest sequence of visits, taking steps by 1, around a circle of vertices 1..n where the numbers of visits to the vertices are 1..n in some order.

The programs for A360286, there is no canonical definition to state claims against.
-/

/-! ## A360286.P14611782340946925188

`A001221(xor(10, A286772(n)))`
-/

namespace A360286.P14611782340946925188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor 10 (A286772 n)).toNat

end

end A360286.P14611782340946925188

/-! ## A360286.P6494866491769594416

`A373127(A081578(n)+n)`
-/

namespace A360286.P6494866491769594416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373127 (A081578 n + (n : ℤ)).toNat

end

end A360286.P6494866491769594416

/-! ## A360286.P1925882317004418520

`A006530(A103684(3*n+5)^n)`
-/

namespace A360286.P1925882317004418520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103684 (3 * n + 5) ^ n).toNat

end

end A360286.P1925882317004418520

/-! ## A360286.P15826098955687154319

`A249949(∑[∑[A376651(2*(n+1))]])`
-/

namespace A360286.P15826098955687154319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376651 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360286.P15826098955687154319

/-! ## A360286.P154990107477967355

`A055881(abs(n+1-A377656(n))+1)`
-/

namespace A360286.P154990107477967355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (|(n + 1 : ℤ) - A377656 n| + 1).toNat

end

end A360286.P154990107477967355

/-!
# A360287: a(n) is the concatenation of the positions of 1-bits in the binary expansion of the Gray code for n, when 1 is the rightmost position; a(0) = 0.

The programs for A360287, there is no canonical definition to state claims against.
-/

/-! ## A360287.P10582867638380960206

`A048794(xor(n, floor(n/2)))`
-/

namespace A360287.P10582867638380960206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A360287.P10582867638380960206

/-! ## A360287.P7387734796061295832

`A048794(xor(2*n, and(n, -2))/2)`
-/

namespace A360287.P7387734796061295832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A360287.P7387734796061295832

/-! ## A360287.P13158829119659228357

`A048794(ceil(xor(n-1, 2*n)/2))`
-/

namespace A360287.P13158829119659228357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat

end

end A360287.P13158829119659228357

/-! ## A360287.P1206556344464827915

`A048794(-ceil(xor(2*n, -n)/2))`
-/

namespace A360287.P1206556344464827915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (-⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉).toNat

end

end A360287.P1206556344464827915

/-! ## A360287.P5517476815679820955

`A048794(xor(2*n+1, or(1, n))/2)`
-/

namespace A360287.P5517476815679820955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat

end

end A360287.P5517476815679820955

/-! ## A360287.P14465641747344610879

`A048794(floor(n/2)+and(n, Δ[-n²]))`
-/

namespace A360287.P14465641747344610879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A360287.P14465641747344610879

/-! ## A360287.P7014989958621533391

`A048794(A003188(n))`
-/

namespace A360287.P7014989958621533391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A003188 n).toNat

end

end A360287.P7014989958621533391

/-! ## A360287.P7312058713497377868

`A048794(A286548(n)+n)`
-/

namespace A360287.P7312058713497377868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A286548 n + (n : ℤ)).toNat

end

end A360287.P7312058713497377868

/-! ## A360287.P618336196872195933

`A086068(A004277(-ceil(xor(2*n, -n)/2)))`
-/

namespace A360287.P618336196872195933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A004277 (-⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉).toNat).toNat

end

end A360287.P618336196872195933

/-!
# A360288: Number T(n,k) of permutations of [n] whose excedance set is the k-th finite subset of positive integers in standard order; triangle T(n,k), n>=0, 0<=k<=ceiling(2^(n-1))-1, read by rows.

The programs for A360288, there is no canonical definition to state claims against.
-/

/-! ## A360288.P1187712964350633717

`A152884(A209861(n))`
-/

namespace A360288.P1187712964350633717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152884 (A209861 n).toNat

end

end A360288.P1187712964350633717

/-! ## A360288.P16297800837723453619

`A329369(A035327(n))`
-/

namespace A360288.P16297800837723453619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A035327 n).toNat

end

end A360288.P16297800837723453619

/-! ## A360288.P10221329634495660084

`A360289(A233279(n))`
-/

namespace A360288.P10221329634495660084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360289 (A233279 n).toNat

end

end A360288.P10221329634495660084

/-! ## A360288.P7287640220397936849

`A329369(n-A006257(n))`
-/

namespace A360288.P7287640220397936849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 ((n : ℤ) - A006257 n).toNat

end

end A360288.P7287640220397936849

/-! ## A360288.P12944850367306772932

`A329369(A062383(n)-(n+1))`
-/

namespace A360288.P12944850367306772932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A062383 n - (n + 1 : ℤ)).toNat

end

end A360288.P12944850367306772932

/-! ## A360288.P15266237943348987704

`A329369(A038572(2*n+1)-(2*n+1))`
-/

namespace A360288.P15266237943348987704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A038572 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A360288.P15266237943348987704

/-! ## A360288.P10540777875706014323

`A329369(A004760(n+2)-(2*n+1))`
-/

namespace A360288.P10540777875706014323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A004760 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A360288.P10540777875706014323

/-! ## A360288.P8634796377313195313

`A329369(A030101(n))`
-/

namespace A360288.P8634796377313195313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A030101 n).toNat

end

end A360288.P8634796377313195313

/-! ## A360288.P3200906231267538226

`A329369(A261693(n))`
-/

namespace A360288.P3200906231267538226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A261693 n).toNat

end

end A360288.P3200906231267538226

/-! ## A360288.P18373886970683214962

`A329369(n-A053645(2*n+1))`
-/

namespace A360288.P18373886970683214962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 ((n : ℤ) - A053645 (2 * n + 1)).toNat

end

end A360288.P18373886970683214962

/-!
# A360289: Number T(n,k) of permutations of [n] whose excedance set is the k-th finite subset of positive integers in Gray order; triangle T(n,k), n>=0, 0<=k<=ceiling(2^(n-1))-1, read by rows.

The programs for A360289, there is no canonical definition to state claims against.
-/

/-! ## A360289.P1229298465274698028

`A360288(A233280(n))`
-/

namespace A360289.P1229298465274698028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A233280 n).toNat

end

end A360289.P1229298465274698028

/-! ## A360289.P3170826356923490839

`A360288(A038554(n)+xor(n, floor(n/2)))`
-/

namespace A360289.P3170826356923490839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A038554 n + Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A360289.P3170826356923490839

/-! ## A360289.P15133742275386349026

`A360288(A038554(n)+xor(2*n, and(n, -2))/2)`
-/

namespace A360289.P15133742275386349026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (SequenceMachineLib.roundAway ((A038554 n : ℚ) + (Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A360289.P15133742275386349026

/-! ## A360289.P6648877140928293485

`A360288(A038554(n)+ceil(xor(n-1, 2*n)/2))`
-/

namespace A360289.P6648877140928293485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A038554 n + ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉).toNat

end

end A360289.P6648877140928293485

/-! ## A360289.P6008579791899237868

`A360288(A038554(n)+xor(2*n+1, or(1, n))/2)`
-/

namespace A360289.P6008579791899237868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (SequenceMachineLib.roundAway ((A038554 n : ℚ) + (Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat

end

end A360289.P6008579791899237868

/-! ## A360289.P14520631606167558018

`A360288(A038554(n)+and(2*n, -n)-ceil(n/2))`
-/

namespace A360289.P14520631606167558018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A038554 n + (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉)).toNat

end

end A360289.P14520631606167558018

/-! ## A360289.P6162973091752144316

`A360288(A038554(n)+A286548(n)+n)`
-/

namespace A360289.P6162973091752144316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A038554 n + (A286548 n + (n : ℤ))).toNat

end

end A360289.P6162973091752144316

/-! ## A360289.P2330760821753809624

`A360288(A038554(n)+A053644(n)+A038554(n))`
-/

namespace A360289.P2330760821753809624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A038554 n + (A053644 n + A038554 n)).toNat

end

end A360289.P2330760821753809624

/-!
# A360290: a(n) = Sum_{k=0..floor(n/2)} binomial(n-1-k,k) * binomial(2*n-4*k,n-2*k).

The programs for A360290, there is no canonical definition to state claims against.
-/

/-! ## A360290.P11712970601845822488

`A194964(or(A000203(n+1), A349878(n)))`
-/

namespace A360290.P11712970601845822488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (Int.lor (A000203 (n + 1)) (A349878 n)).toNat

end

end A360290.P11712970601845822488

/-!
# A360291: a(n) = Sum_{k=0..floor(n/3)} binomial(n-1-2*k,k) * binomial(2*n-6*k,n-3*k).

The programs for A360291, there is no canonical definition to state claims against.
-/

/-! ## A360291.P16066723855038627383

`A360267(n)+A256580(A056971(n))`
-/

namespace A360291.P16066723855038627383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360267 n + A256580 (A056971 n).toNat

end

end A360291.P16066723855038627383

/-! ## A360291.P3878077037828826992

`A360267(n)+A086008(A360151(n))`
-/

namespace A360291.P3878077037828826992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360267 n + A086008 (A360151 n).toNat

end

end A360291.P3878077037828826992

/-! ## A360291.P7912517959048020611

`A360267(n)+A102683(A374599(n))`
-/

namespace A360291.P7912517959048020611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360267 n + A102683 (A374599 n).toNat

end

end A360291.P7912517959048020611

/-! ## A360291.P15025066407788534997

`A360267(n)+A124762(A078164(n+1))`
-/

namespace A360291.P15025066407788534997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360267 n + A124762 (A078164 (n + 1)).toNat

end

end A360291.P15025066407788534997

/-!
# A360292: a(n) = Sum_{k=0..floor(n/4)} binomial(n-1-3*k,k) * binomial(2*n-8*k,n-4*k).

The programs for A360292, there is no canonical definition to state claims against.
-/

/-! ## A360292.P18173587135561573537

`A142727(A191280(n+1))`
-/

namespace A360292.P18173587135561573537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A191280 (n + 1)).toNat

end

end A360292.P18173587135561573537

/-! ## A360292.P16427249335282088974

`A383511(A003022(n+2))+C(2*n, n)`
-/

namespace A360292.P16427249335282088974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A003022 (n + 2)).toNat + (Nat.choose (2 * n) n : ℤ)

end

end A360292.P16427249335282088974

/-! ## A360292.P13864772292405128726

`A008621(A017994(n)+A001834(n))`
-/

namespace A360292.P13864772292405128726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A017994 n + A001834 n).toNat

end

end A360292.P13864772292405128726

/-!
# A360293: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n-1-k,k) * binomial(2*n-4*k,n-2*k).

The programs for A360293, there is no canonical definition to state claims against.
-/

/-! ## A360293.P9773853641713291349

`A101500(n)+A101500(n)-A102879(n)`
-/

namespace A360293.P9773853641713291349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101500 n + (A101500 n - A102879 n)

end

end A360293.P9773853641713291349

/-! ## A360293.P3465189942629106229

`2*A101500(n)-A102879(n)`
-/

namespace A360293.P3465189942629106229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101500 n - A102879 n

end

end A360293.P3465189942629106229

/-! ## A360293.P3073417342486820244

`A004277(A101500(n))-A102879(n)`
-/

namespace A360293.P3073417342486820244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A101500 n).toNat - A102879 n

end

end A360293.P3073417342486820244

/-!
# A360294: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(n-1-2*k,k) * binomial(2*n-6*k,n-3*k).

The programs for A360294, there is no canonical definition to state claims against.
-/

/-! ## A360294.P10059431977775544452

`A360219(n)+A086008(A360151(n))`
-/

namespace A360294.P10059431977775544452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360219 n + A086008 (A360151 n).toNat

end

end A360294.P10059431977775544452

/-! ## A360294.P2939758078382491126

`A360219(n)+A102683(A374599(n))`
-/

namespace A360294.P2939758078382491126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360219 n + A102683 (A374599 n).toNat

end

end A360294.P2939758078382491126

/-! ## A360294.P9735172661014282200

`A360219(n)+A124762(A078164(n+1))`
-/

namespace A360294.P9735172661014282200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360219 n + A124762 (A078164 (n + 1)).toNat

end

end A360294.P9735172661014282200

/-! ## A360294.P11534733431505934990

`A281034(n+1)+A028310(A360219(n))`
-/

namespace A360294.P11534733431505934990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (n + 1) + A028310 (A360219 n).toNat

end

end A360294.P11534733431505934990

/-!
# A360295: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * binomial(n-1-3*k,k) * binomial(2*n-8*k,n-4*k).

The programs for A360295, there is no canonical definition to state claims against.
-/

/-! ## A360295.P15306970559597042477

`A300763(A038665(n))`
-/

namespace A360295.P15306970559597042477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A038665 n).toNat

end

end A360295.P15306970559597042477

/-! ## A360295.P5546398349516969804

`A300763(A000777(n+1))`
-/

namespace A360295.P5546398349516969804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A000777 (n + 1)).toNat

end

end A360295.P5546398349516969804

/-! ## A360295.P173325308935344

`filter[A030227(2*n+1), A060584(#)]`
-/

namespace A360295.P173325308935344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A360295.P173325308935344

/-!
# A360297: a(n) = minimal positive k such that the sum of the primes prime(n) + prime(n+1) + ... + prime(n+k) is divisible by prime(n+k+1), or -1 if no such k exists.

The programs for A360297, there is no canonical definition to state claims against.
-/

/-! ## A360297.P17238265378048675146

`A082460(A360312(n+1))-A360247(n+1)`
-/

namespace A360297.P17238265378048675146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A360312 (n + 1)).toNat - A360247 (n + 1)

end

end A360297.P17238265378048675146

/-! ## A360297.P17879714544559823026

`A000720(A360312(n+1))-A274933(n+3)`
-/

namespace A360297.P17879714544559823026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A360312 (n + 1)).toNat - A274933 (n + 3)

end

end A360297.P17879714544559823026

/-! ## A360297.P9635258194452235176

`A000720(A360312(n+1))-A064455(2*n+3)`
-/

namespace A360297.P9635258194452235176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A360312 (n + 1)).toNat - A064455 (2 * n + 3)

end

end A360297.P9635258194452235176

/-!
# A360298: Irregular triangle (an infinite binary tree) read by rows. The tree has root node 1 in row n = 1. For n > 1, each node with value m in row n-1 has a left child with value m / n if n divides m, and a right child with value m * n.

The programs for A360298, there is no canonical definition to state claims against.
-/

/-! ## A360298.P7821172049532705216

`A349269(A057234(n+2))`
-/

namespace A360298.P7821172049532705216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 (A057234 (n + 2)).toNat

end

end A360298.P7821172049532705216

/-! ## A360298.P11795286887631308039

`A349269(A071250(n+1)+n)`
-/

namespace A360298.P11795286887631308039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 (A071250 (n + 1) + (n : ℤ)).toNat

end

end A360298.P11795286887631308039

/-! ## A360298.P5047015584989300209

`A105278(floor(log2(A290436(3*n))))`
-/

namespace A360298.P5047015584989300209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (Nat.log 2 (A290436 (3 * n)).toNat)

end

end A360298.P5047015584989300209

