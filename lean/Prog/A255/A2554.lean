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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255400: a(n) is the smallest nonnegative integer such that a(n)! contains a string of exactly n consecutive 0's.

The programs for A255400, there is no canonical definition to state claims against.
-/

/-! ## A255400.P14867477452550594513

`∑[A200906(∑[A151674(n)])]`
-/

namespace A255400.P14867477452550594513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151674 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200906 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255400.P14867477452550594513

/-! ## A255400.P8150588299534041898

`A263272(C(5*n, A224809(n)))`
-/

namespace A255400.P8150588299534041898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (Nat.choose (5 * n) (A224809 n).toNat)

end

end A255400.P8150588299534041898

/-!
# A255401: Numbers m with the property that its k-th smallest divisor, for all 1 <= k <= tau(m), contains exactly k "1" digits in its binary representation.

The programs for A255401, there is no canonical definition to state claims against.
-/

/-! ## A255401.P10641491032350429824

`A354724(lt[A355248(n), A000120(n)])`
-/

namespace A255401.P10641491032350429824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255401.P10641491032350429824

/-! ## A255401.P5813596704929113324

`A354724(lt[A355248(n), 32-A131762(n)])`
-/

namespace A255401.P5813596704929113324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A131762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255401.P5813596704929113324

/-! ## A255401.P12784650975344166926

`A354724(lt[A355248(n)+A011371(n), n])`
-/

namespace A255401.P12784650975344166926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355248 n + A011371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354724 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A255401.P12784650975344166926

/-! ## A255401.P11834535338618205466

`A354724(lt[A011371(n), n-A355248(n)])`
-/

namespace A255401.P11834535338618205466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A355248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255401.P11834535338618205466

/-!
# A255402: First differences of A061781.

The programs for A255402, there is no canonical definition to state claims against.
-/

/-! ## A255402.P3438860093310882395

`A061781(n+2)-A061781(n+1)`
-/

namespace A255402.P3438860093310882395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061781 (n + 2) - A061781 (n + 1)

end

end A255402.P3438860093310882395

/-! ## A255402.P2555634936107342492

`Δ[A061781(n+1)]`
-/

namespace A255402.P2555634936107342492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255402.P2555634936107342492

/-! ## A255402.P5781360064551397094

`2-Δ[A061784(n+1)]+n`
-/

namespace A255402.P5781360064551397094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A255402.P5781360064551397094

/-! ## A255402.P378916472463916558

`Δ[A000040(n+1)-A334810(n+1)]+1`
-/

namespace A255402.P378916472463916558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A334810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A255402.P378916472463916558

/-! ## A255402.P15463084962645919744

`A105047(n+2)+1`
-/

namespace A255402.P15463084962645919744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 2) + 1

end

end A255402.P15463084962645919744

/-! ## A255402.P8437134660928557072

`A081330(A105047(n+2))`
-/

namespace A255402.P8437134660928557072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081330 (A105047 (n + 2)).toNat

end

end A255402.P8437134660928557072

/-!
# A255404: Number of different integer partitions of n that produce the maximum number of set partitions for a set of cardinality n.

The programs for A255404, there is no canonical definition to state claims against.
-/

/-! ## A255404.P2988780729885745698

`gcd(A007091(n), A183993(A214964(3*n+5)))`
-/

namespace A255404.P2988780729885745698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007091 n) (A183993 (A214964 (3 * n + 5)).toNat)

end

end A255404.P2988780729885745698

/-! ## A255404.P13035575259414942590

`gcd(A188550(n+4), A227617(A227646(n+1)))`
-/

namespace A255404.P13035575259414942590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188550 (n + 4)) (A227617 (A227646 (n + 1)).toNat)

end

end A255404.P13035575259414942590

/-! ## A255404.P10086914470652534612

`gcd(A174973(A242900(n+4)), A309498(3*(n+1)))`
-/

namespace A255404.P10086914470652534612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174973 (A242900 (n + 4)).toNat) (A309498 (3 * (n + 1)))

end

end A255404.P10086914470652534612

/-!
# A255405: a(n) = floor((2/sqrt(Pi))^n).

The programs for A255405, the canonical program `A255405.P9494449395319441637` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255405 has offset 0).

The definition of A255405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255405.P9494449395319441637

`floor(sqrt((4/π)^(n+1)))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255405

/-- `floor(sqrt((4/π)^(n+1)))` -/
def P9494449395319441637.Spec : Prop :=
  ∀ n, P9494449395319441637.a n = A255405 n

theorem P9494449395319441637.correct : P9494449395319441637.Spec := by
  intro n
  simp only [A255405]

end A255405

/-! ## A255405.P13900628278991487839

`A003056(A061287(n)+A008616(n))`
-/

namespace A255405.P13900628278991487839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061287 n + A008616 n).toNat

end

end A255405.P13900628278991487839

namespace A255405

/-- `A003056(A061287(n)+A008616(n))` -/
def P13900628278991487839.Spec : Prop :=
  ∀ n, P13900628278991487839.a n = A255405 n

end A255405

/-! ## A255405.P6652543259806970822

`A003056(A132272(n)+A061287(n))`
-/

namespace A255405.P6652543259806970822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A132272 n + A061287 n).toNat

end

end A255405.P6652543259806970822

namespace A255405

/-- `A003056(A132272(n)+A061287(n))` -/
def P6652543259806970822.Spec : Prop :=
  ∀ n, P6652543259806970822.a n = A255405 n

end A255405

/-! ## A255405.P1456973908443215361

`A003056(A061287(n)+A043566(n)²)`
-/

namespace A255405.P1456973908443215361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061287 n + A043566 n ^ 2).toNat

end

end A255405.P1456973908443215361

namespace A255405

/-- `A003056(A061287(n)+A043566(n)²)` -/
def P1456973908443215361.Spec : Prop :=
  ∀ n, P1456973908443215361.a n = A255405 n

end A255405

/-! ## A255405.P11870169415497605224

`A003056(A061287(n)+A003056(A008680(n)))`
-/

namespace A255405.P11870169415497605224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061287 n + A003056 (A008680 n).toNat).toNat

end

end A255405.P11870169415497605224

namespace A255405

/-- `A003056(A061287(n)+A003056(A008680(n)))` -/
def P11870169415497605224.Spec : Prop :=
  ∀ n, P11870169415497605224.a n = A255405 n

end A255405

/-!
# A255406: Expansion of the hyperbolic arc lemniscate tangent function.

The programs for A255406, there is no canonical definition to state claims against.
-/

/-! ## A255406.P16898309724713981527

`A008545(n)*A060706(n)`
-/

namespace A255406.P16898309724713981527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008545 n * A060706 n

end

end A255406.P16898309724713981527

/-!
# A255407: Permutation of natural numbers: a(n) = A255127(A252460(n)).

The programs for A255407, there is no canonical definition to state claims against.
-/

/-! ## A255407.P14175940198848515248

`A260435(A255553(n+1))`
-/

namespace A255407.P14175940198848515248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260435 (A255553 (n + 1)).toNat

end

end A255407.P14175940198848515248

/-! ## A255407.P7374202216654263050

`A269171(n+1)%p?[(n+1)^3-n²]`
-/

namespace A255407.P7374202216654263050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269171 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A255407.P7374202216654263050

/-! ## A255407.P6380338233966971909

`A269171(n+1)+A000038(A008778(n))`
-/

namespace A255407.P6380338233966971909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (n + 1) + A000038 (A008778 n).toNat

end

end A255407.P6380338233966971909

/-! ## A255407.P11787612273090545567

`A269171(n+1)+A000007(A110877(n))`
-/

namespace A255407.P11787612273090545567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (n + 1) + A000007 (A110877 n).toNat

end

end A255407.P11787612273090545567

/-!
# A255408: Permutation of natural numbers: a(n) = A083221(A255128(n)).

The programs for A255408, there is no canonical definition to state claims against.
-/

/-! ## A255408.P9111230787075802197

`A255554(A260436(n+1))`
-/

namespace A255408.P9111230787075802197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A260436 (n + 1)).toNat

end

end A255408.P9111230787075802197

/-! ## A255408.P16512071595743930507

`A269396(A255407(A269396(A255407(A269396(n+1)))))`
-/

namespace A255408.P16512071595743930507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A255407 (A269396 (A255407 (A269396 (n + 1)).toNat).toNat).toNat).toNat

end

end A255408.P16512071595743930507

/-! ## A255408.P9500796055678568944

`A269172(n+1)%p?[abs(2*n+1-C(n+4, 3))]`
-/

namespace A255408.P9500796055678568944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (Nat.choose (n + 4) 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269172 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A255408.P9500796055678568944

/-! ## A255408.P15919537090938535121

`A269172(n+1)%A152606(n+4)`
-/

namespace A255408.P15919537090938535121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269172 (n + 1)) (A152606 (n + 4))

end

end A255408.P15919537090938535121

/-! ## A255408.P5538523636994611302

`A269172(n+1)+A234898(3*n+2)%2`
-/

namespace A255408.P5538523636994611302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (n + 1) + Int.tmod (A234898 (3 * n + 2)) 2

end

end A255408.P5538523636994611302

/-!
# A255409: a(n) = the least k for which A255326(k) = n; positions of records in A255326.

The programs for A255409, there is no canonical definition to state claims against.
-/

/-! ## A255409.P2802193792294797651

`A141468(n+1)*A299924(A000110(n))`
-/

namespace A255409.P2802193792294797651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) * A299924 (A000110 n).toNat

end

end A255409.P2802193792294797651

/-! ## A255409.P1556325314567469155

`A246277(A154920(n))%A326677(3*n+1)`
-/

namespace A255409.P1556325314567469155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246277 (A154920 n).toNat) (A326677 (3 * n + 1))

end

end A255409.P1556325314567469155

/-! ## A255409.P4837490083919864295

`A039508(A341415(3*n+2))*A141468(n+1)`
-/

namespace A255409.P4837490083919864295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (A341415 (3 * n + 2)).toNat * A141468 (n + 1)

end

end A255409.P4837490083919864295

/-!
# A255410: Main diagonal of Ludic array A255127 (and A255129): a(n) = A255127(n,n).

The programs for A255410, there is no canonical definition to state claims against.
-/

/-! ## A255410.P9457928571062339243

`A255407(A083141(n+1))`
-/

namespace A255410.P9457928571062339243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A083141 (n + 1)).toNat

end

end A255410.P9457928571062339243

/-! ## A255410.P12204825860304527376

`A255127(∑[4*n]+2)`
-/

namespace A255410.P12204825860304527376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255410.P12204825860304527376

/-! ## A255410.P2695184826969281034

`A255129(∑[4*n]+2)`
-/

namespace A255410.P2695184826969281034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255410.P2695184826969281034

/-! ## A255410.P1060921123363727786

`record[A255127(n+2)/A286157(n+1)]`
-/

namespace A255410.P1060921123363727786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255127 (n + 2) : ℚ) / (A286157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255410.P1060921123363727786

/-! ## A255410.P12388097170172913324

`record[gcd(A255127(n+2), A255129(n+2))]`
-/

namespace A255410.P12388097170172913324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255127 (n + 2)) (A255129 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255410.P12388097170172913324

/-! ## A255410.P8066035624776932163

`A007318(C(2, n))*A255129(A051890(n+1))`
-/

namespace A255410.P8066035624776932163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A255129 (A051890 (n + 1)).toNat

end

end A255410.P8066035624776932163

/-! ## A255410.P17802797224579495872

`record[gcd(A003987(n), A255127(n+2))]`
-/

namespace A255410.P17802797224579495872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A255127 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255410.P17802797224579495872

/-! ## A255410.P11513777183270944449

`record[gcd(A114327(n), A255129(n+2))]`
-/

namespace A255410.P11513777183270944449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A255129 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255410.P11513777183270944449

/-!
# A255411: Shift factorial base representation of n one digit left (with 0 added to right), increment all nonzero digits by one, then convert back to decimal; Numbers with no digit 1 in their factorial base representation.

The programs for A255411, there is no canonical definition to state claims against.
-/

/-! ## A255411.P7358390059741772426

`eq[0, A275736(n)]`
-/

namespace A255411.P7358390059741772426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P7358390059741772426

/-! ## A255411.P17085018052196904446

`eq[1, A275732(n)]`
-/

namespace A255411.P17085018052196904446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P17085018052196904446

/-! ## A255411.P11885957069049555737

`eq[1, gcd(2, A275735(n))]`
-/

namespace A255411.P11885957069049555737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A275735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255411.P11885957069049555737

/-! ## A255411.P3462987648431057319

`eq[1, A275735(val(A275735(n), 2))]`
-/

namespace A255411.P3462987648431057319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (SequenceMachineLib.valuation (A275735 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P3462987648431057319

/-! ## A255411.P10488035555346364514

`A153880(n)+A225901(n)+n`
-/

namespace A255411.P10488035555346364514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + (A225901 n + (n : ℤ))

end

end A255411.P10488035555346364514

/-! ## A255411.P4120345488621479553

`2*eq[A275964(2*n+1), A275964(2*n)]`
-/

namespace A255411.P4120345488621479553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255411.P4120345488621479553

/-! ## A255411.P7410760348651731716

`2*lt[A275806(2*n), A275806(2*n+1)]`
-/

namespace A255411.P7410760348651731716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255411.P7410760348651731716

/-! ## A255411.P3616001539035732540

`2*lt[A275948(2*n), A275948(2*n+1)]`
-/

namespace A255411.P3616001539035732540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255411.P3616001539035732540

/-! ## A255411.P1220125841432103958

`A276008(A153880(n))+A153880(n)`
-/

namespace A255411.P1220125841432103958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A153880 n).toNat + A153880 n

end

end A255411.P1220125841432103958

/-! ## A255411.P2730710032692428215

`eq[A276008(n-A276008(n)), A276008(n)]`
-/

namespace A255411.P2730710032692428215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 ((n : ℤ) - A276008 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255411.P2730710032692428215

/-! ## A255411.P525795138650939915

`A276340(n)+A276339(n)`
-/

namespace A255411.P525795138650939915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n + A276339 n

end

end A255411.P525795138650939915

/-! ## A255411.P16815661279719728449

`A153880(n)+A275836(A273667(n))+n`
-/

namespace A255411.P16815661279719728449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + (A275836 (A273667 n).toNat + (n : ℤ))

end

end A255411.P16815661279719728449

/-! ## A255411.P5702270825723345092

`comp[A256450(n)]`
-/

namespace A255411.P5702270825723345092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255411.P5702270825723345092

/-! ## A255411.P15828860987782820120

`eq[0, A257081(n)]`
-/

namespace A255411.P15828860987782820120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P15828860987782820120

/-! ## A255411.P14729413743434710732

`eq[0, A257261(n)]`
-/

namespace A255411.P14729413743434710732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P14729413743434710732

/-! ## A255411.P2534577310507961149

`eq[0, A257511(n)]`
-/

namespace A255411.P2534577310507961149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P2534577310507961149

/-! ## A255411.P3009923769160725635

`eq[0, A257680(n)]`
-/

namespace A255411.P3009923769160725635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P3009923769160725635

/-! ## A255411.P13382766507945792964

`eq[1, A257079(n)]`
-/

namespace A255411.P13382766507945792964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P13382766507945792964

/-! ## A255411.P11575032819420961390

`eq[n, A257080(n)]`
-/

namespace A255411.P11575032819420961390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255411.P11575032819420961390

/-! ## A255411.P2218988153811388236

`2*lt[A257081(2*n), 1]`
-/

namespace A255411.P2218988153811388236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255411.P2218988153811388236

/-!
# A255412: a(n) = A000203(A255334(n)).

The programs for A255412, there is no canonical definition to state claims against.
-/

/-! ## A255412.P18381516129661439579

`A000203(A255334(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255412.P18381516129661439579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A255334 (n + 1)).toNat

end

end A255412.P18381516129661439579

/-! ## A255412.P10006336018683672559

`A000203(A255423(n+1))`
-/

namespace A255412.P10006336018683672559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A255423 (n + 1)).toNat

end

end A255412.P10006336018683672559

/-! ## A255412.P15086634757473189897

`∑{d}[A255424(n+1)*A255425(n+1), #]`
-/

namespace A255412.P15086634757473189897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255424 (n + 1) * A255425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A255412.P15086634757473189897

/-! ## A255412.P3691060559730156957

`∑{d}[A255423(n+1)*A255425(n+1)/A255426(n+1), #]`
-/

namespace A255412.P3691060559730156957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) * A255425 (n + 1) : ℚ) / (A255426 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A255412.P3691060559730156957

/-! ## A255412.P10972148769311112317

`∑{d}[A255424(n+1)*A255426(n+1), #]`
-/

namespace A255412.P10972148769311112317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255424 (n + 1) * A255426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A255412.P10972148769311112317

/-!
# A255413: a(n) = 15*n - 11 + (n mod 2). Row 3 of Ludic array A255127.

The programs for A255413, the canonical program `A255413.P3784071912138322477` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255413 has offset 1).

The definition of A255413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*(n+1)-11+(n+1)%2` (program `A255413.P3784071912138322477`, by `A255413.P3784071912138322477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255413.P1469307394512403246

`a(n-2)+30` with `a(0)=5, a(1)=19`
-/

namespace A255413.P1469307394512403246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 19] fun n a =>
  a (n - 2) + 30

end

end A255413.P1469307394512403246

namespace A255413

/-- `a(n-2)+30` -/
def P1469307394512403246.Spec : Prop :=
  ∀ n, (P1469307394512403246.a n : ℤ) = A255413 (n + 1)

end A255413

/-! ## A255413.P3784071912138322477

`15*(n+1)-11+(n+1)%2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255413

/-- `15*(n+1)-11+(n+1)%2` -/
def P3784071912138322477.Spec : Prop :=
  ∀ n, P3784071912138322477.a n = A255413 (n + 1)

theorem P3784071912138322477.correct : P3784071912138322477.Spec := by
  intro n
  simp only [A255413, Nat.add_sub_cancel]

end A255413

/-! ## A255413.P10290665075367475781

`A007310(5*(n+1)-3)`
-/

namespace A255413.P10290665075367475781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (5 * (n + 1) - 3)

end

end A255413.P10290665075367475781

namespace A255413

/-- `A007310(5*(n+1)-3)` -/
def P10290665075367475781.Spec : Prop :=
  ∀ n, P10290665075367475781.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P5161569999431563850

`A255407(A084967(n+1))`
-/

namespace A255413.P5161569999431563850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A084967 (n + 1)).toNat

end

end A255413.P5161569999431563850

namespace A255413

/-- `A255407(A084967(n+1))` -/
def P5161569999431563850.Spec : Prop :=
  ∀ n, P5161569999431563850.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P8384675729617557506

`A255407(5*A007310(n+1))`
-/

namespace A255413.P8384675729617557506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (5 * A007310 (n + 1)).toNat

end

end A255413.P8384675729617557506

namespace A255413

/-- `A255407(5*A007310(n+1))` -/
def P8384675729617557506.Spec : Prop :=
  ∀ n, P8384675729617557506.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P4437511571097264768

`or(1, 15*n+4)`
-/

namespace A255413.P4437511571097264768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (15 * n + 4)

end

end A255413.P4437511571097264768

namespace A255413

/-- `or(1, 15*n+4)` -/
def P4437511571097264768.Spec : Prop :=
  ∀ n, (P4437511571097264768.a n : ℤ) = A255413 (n + 1)

end A255413

/-! ## A255413.P10579912362991618992

`∑[(-1)^n+15]-11`
-/

namespace A255413.P10579912362991618992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 11

end

end A255413.P10579912362991618992

namespace A255413

/-- `∑[(-1)^n+15]-11` -/
def P10579912362991618992.Spec : Prop :=
  ∀ n, P10579912362991618992.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P16329958796022791720

`∑[30-a(n-1)]` with `a(0)=5, a(1)=14`
-/

namespace A255413.P16329958796022791720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255413.P16329958796022791720

namespace A255413

/-- `∑[30-a(n-1)]` -/
def P16329958796022791720.Spec : Prop :=
  ∀ n, P16329958796022791720.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P6521883644645277263

`Δ[A152734(n)-A004526(n)]`
-/

namespace A255413.P6521883644645277263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255413.P6521883644645277263

namespace A255413

/-- `Δ[A152734(n)-A004526(n)]` -/
def P6521883644645277263.Spec : Prop :=
  ∀ n, P6521883644645277263.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P14112166269280094647

`Δ[A152734(n)-A008619(n)]`
-/

namespace A255413.P14112166269280094647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255413.P14112166269280094647

namespace A255413

/-- `Δ[A152734(n)-A008619(n)]` -/
def P14112166269280094647.Spec : Prop :=
  ∀ n, P14112166269280094647.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P16043784280428333566

`A269379(6*n+3)`
-/

namespace A255413.P16043784280428333566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (6 * n + 3)

end

end A255413.P16043784280428333566

namespace A255413

/-- `A269379(6*n+3)` -/
def P16043784280428333566.Spec : Prop :=
  ∀ n, P16043784280428333566.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P2764931025538728503

`A063093(3*n+2)`
-/

namespace A255413.P2764931025538728503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (3 * n + 2)

end

end A255413.P2764931025538728503

namespace A255413

/-- `A063093(3*n+2)` -/
def P2764931025538728503.Spec : Prop :=
  ∀ n, P2764931025538728503.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P14025559257157726543

`A063213(A193910(n+1))`
-/

namespace A255413.P14025559257157726543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (A193910 (n + 1)).toNat

end

end A255413.P14025559257157726543

namespace A255413

/-- `A063213(A193910(n+1))` -/
def P14025559257157726543.Spec : Prop :=
  ∀ n, P14025559257157726543.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P10073431349373352425

`A063213(A214068(2*n)+2)`
-/

namespace A255413.P10073431349373352425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (A214068 (2 * n) + 2).toNat

end

end A255413.P10073431349373352425

namespace A255413

/-- `A063213(A214068(2*n)+2)` -/
def P10073431349373352425.Spec : Prop :=
  ∀ n, P10073431349373352425.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P2854819481414501650

`A063213(A047385(n+1)+n)`
-/

namespace A255413.P2854819481414501650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (A047385 (n + 1) + (n : ℤ)).toNat

end

end A255413.P2854819481414501650

namespace A255413

/-- `A063213(A047385(n+1)+n)` -/
def P2854819481414501650.Spec : Prop :=
  ∀ n, P2854819481414501650.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P7586374876482154798

`A038179(A016885(n))`
-/

namespace A255413.P7586374876482154798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (A016885 n).toNat

end

end A255413.P7586374876482154798

namespace A255413

/-- `A038179(A016885(n))` -/
def P7586374876482154798.Spec : Prop :=
  ∀ n, P7586374876482154798.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P16109191663035117522

`A162698(A008587(n)+2)`
-/

namespace A255413.P16109191663035117522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162698 (A008587 n + 2).toNat

end

end A255413.P16109191663035117522

namespace A255413

/-- `A162698(A008587(n)+2)` -/
def P16109191663035117522.Spec : Prop :=
  ∀ n, P16109191663035117522.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P14585038168596104077

`filter[A293481(3*n+1), A320106(#)]`
-/

namespace A255413.P14585038168596104077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A255413.P14585038168596104077

namespace A255413

/-- `filter[A293481(3*n+1), A320106(#)]` -/
def P14585038168596104077.Spec : Prop :=
  ∀ n, P14585038168596104077.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P4294770576564677829

`filter[A293481(3*n+1), A354354(#)]`
-/

namespace A255413.P4294770576564677829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A255413.P4294770576564677829

namespace A255413

/-- `filter[A293481(3*n+1), A354354(#)]` -/
def P4294770576564677829.Spec : Prop :=
  ∀ n, P4294770576564677829.a n = A255413 (n + 1)

end A255413

/-! ## A255413.P4262377554892056958

`filter[A293481(3*n+1), A373156(#)]`
-/

namespace A255413.P4262377554892056958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A255413.P4262377554892056958

namespace A255413

/-- `filter[A293481(3*n+1), A373156(#)]` -/
def P4262377554892056958.Spec : Prop :=
  ∀ n, P4262377554892056958.a n = A255413 (n + 1)

end A255413

/-!
# A255414: Row 4 of Ludic array A255127.

The programs for A255414, the canonical program `A255414.P11268299228409009699` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255414 has offset 1).

The definition of A255414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255414.P11268299228409009699

`a(n-8)+210` with `a(0)=7, a(1)=31, a(2)=59, a(3)=85, a(4)=113, a(5)=137, a(6)=163, a(7)=191`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255414

/-- `a(n-8)+210` -/
def P11268299228409009699.Spec : Prop :=
  ∀ n, (P11268299228409009699.a n : ℤ) = A255414 (n + 1)

theorem P11268299228409009699.correct : P11268299228409009699.Spec := by
  intro n
  simp only [A255414, Nat.add_sub_cancel]

end A255414

/-! ## A255414.P12237860350293243956

`210*floor(n/8)+a(n%8)` with `a(0)=7, a(1)=31, a(2)=59, a(3)=85, a(4)=113, a(5)=137, a(6)=163, a(7)=191`
-/

namespace A255414.P12237860350293243956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 31, 59, 85, 113, 137, 163, 191] fun n a =>
  210 * ⌊(n : ℚ) / 8⌋ + a (n % 8)

end

end A255414.P12237860350293243956

namespace A255414

/-- `210*floor(n/8)+a(n%8)` -/
def P12237860350293243956.Spec : Prop :=
  ∀ n, P12237860350293243956.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P17171637458137454905

`A255407(A084968(n+1))`
-/

namespace A255414.P17171637458137454905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A084968 (n + 1)).toNat

end

end A255414.P17171637458137454905

namespace A255414

/-- `A255407(A084968(n+1))` -/
def P17171637458137454905.Spec : Prop :=
  ∀ n, P17171637458137454905.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P4639237836701597641

`A269379(A255413(n+1))`
-/

namespace A255414.P4639237836701597641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255413 (n + 1)).toNat

end

end A255414.P4639237836701597641

namespace A255414

/-- `A269379(A255413(n+1))` -/
def P4639237836701597641.Spec : Prop :=
  ∀ n, P4639237836701597641.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P2566358890784219139

`A269379(A269379(6*n+3))`
-/

namespace A255414.P2566358890784219139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (6 * n + 3)).toNat

end

end A255414.P2566358890784219139

namespace A255414

/-- `A269379(A269379(6*n+3))` -/
def P2566358890784219139.Spec : Prop :=
  ∀ n, P2566358890784219139.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P17957896332918534098

`A260714(A016993(n))`
-/

namespace A255414.P17957896332918534098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A016993 n).toNat

end

end A255414.P17957896332918534098

namespace A255414

/-- `A260714(A016993(n))` -/
def P17957896332918534098.Spec : Prop :=
  ∀ n, P17957896332918534098.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P12729633860654767668

`A260714(A016921(n)+n)`
-/

namespace A255414.P12729633860654767668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A016921 n + (n : ℤ)).toNat

end

end A255414.P12729633860654767668

namespace A255414

/-- `A260714(A016921(n)+n)` -/
def P12729633860654767668.Spec : Prop :=
  ∀ n, P12729633860654767668.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P220906044327218824

`A260714(A007310(2*n+1)+n)`
-/

namespace A255414.P220906044327218824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A007310 (2 * n + 1) + (n : ℤ)).toNat

end

end A255414.P220906044327218824

namespace A255414

/-- `A260714(A007310(2*n+1)+n)` -/
def P220906044327218824.Spec : Prop :=
  ∀ n, P220906044327218824.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P9157085666330106122

`A269380(A255415(n+1))`
-/

namespace A255414.P9157085666330106122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255415 (n + 1)).toNat

end

end A255414.P9157085666330106122

namespace A255414

/-- `A269380(A255415(n+1))` -/
def P9157085666330106122.Spec : Prop :=
  ∀ n, P9157085666330106122.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P16593552337561643359

`A269380(A269380(A255416(n+1)))`
-/

namespace A255414.P16593552337561643359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A255416 (n + 1)).toNat).toNat

end

end A255414.P16593552337561643359

namespace A255414

/-- `A269380(A269380(A255416(n+1)))` -/
def P16593552337561643359.Spec : Prop :=
  ∀ n, P16593552337561643359.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P5782611179240974576

`eq[4, A260738(n+1)]+1`
-/

namespace A255414.P5782611179240974576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255414.P5782611179240974576

namespace A255414

/-- `eq[4, A260738(n+1)]+1` -/
def P5782611179240974576.Spec : Prop :=
  ∀ n, (P5782611179240974576.a n : ℤ) = A255414 (n + 1)

end A255414

/-! ## A255414.P4861228084254718635

`A146308(A007310(A235933(6*n+1)))`
-/

namespace A255414.P4861228084254718635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A007310 (A235933 (6 * n + 1)).toNat).toNat

end

end A255414.P4861228084254718635

namespace A255414

/-- `A146308(A007310(A235933(6*n+1)))` -/
def P4861228084254718635.Spec : Prop :=
  ∀ n, P4861228084254718635.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P4099149283887331151

`A269380(A269380(A269380(A255417(n+1))))`
-/

namespace A255414.P4099149283887331151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A269380 (A255417 (n + 1)).toNat).toNat).toNat

end

end A255414.P4099149283887331151

namespace A255414

/-- `A269380(A269380(A269380(A255417(n+1))))` -/
def P4099149283887331151.Spec : Prop :=
  ∀ n, P4099149283887331151.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P17085358533411351886

`A255407(7*A007775(n+1))`
-/

namespace A255414.P17085358533411351886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (7 * A007775 (n + 1)).toNat

end

end A255414.P17085358533411351886

namespace A255414

/-- `A255407(7*A007775(n+1))` -/
def P17085358533411351886.Spec : Prop :=
  ∀ n, P17085358533411351886.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P17041955485677922379

`A255407(A008589(A007775(n+1)))`
-/

namespace A255414.P17041955485677922379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A008589 (A007775 (n + 1)).toNat).toNat

end

end A255414.P17041955485677922379

namespace A255414

/-- `A255407(A008589(A007775(n+1)))` -/
def P17041955485677922379.Spec : Prop :=
  ∀ n, P17041955485677922379.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P16785975527762231598

`A255407(A250469(A084967(n+1)))`
-/

namespace A255414.P16785975527762231598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A250469 (A084967 (n + 1)).toNat).toNat

end

end A255414.P16785975527762231598

namespace A255414

/-- `A255407(A250469(A084967(n+1)))` -/
def P16785975527762231598.Spec : Prop :=
  ∀ n, P16785975527762231598.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P706485211802494740

`A255129(∑[n+4]+4)`
-/

namespace A255414.P706485211802494740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255414.P706485211802494740

namespace A255414

/-- `A255129(∑[n+4]+4)` -/
def P706485211802494740.Spec : Prop :=
  ∀ n, P706485211802494740.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P14297255036043122757

`A255127(A167499(n+2))`
-/

namespace A255414.P14297255036043122757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A167499 (n + 2)).toNat

end

end A255414.P14297255036043122757

namespace A255414

/-- `A255127(A167499(n+2))` -/
def P14297255036043122757.Spec : Prop :=
  ∀ n, P14297255036043122757.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P1618519365330499236

`A255127(A167614(n+2)+2)`
-/

namespace A255414.P1618519365330499236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A167614 (n + 2) + 2).toNat

end

end A255414.P1618519365330499236

namespace A255414

/-- `A255127(A167614(n+2)+2)` -/
def P1618519365330499236.Spec : Prop :=
  ∀ n, P1618519365330499236.a n = A255414 (n + 1)

end A255414

/-! ## A255414.P5588001145976807414

`A269380(A269380(A255407(A084970(n+1))))`
-/

namespace A255414.P5588001145976807414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A255407 (A084970 (n + 1)).toNat).toNat).toNat

end

end A255414.P5588001145976807414

namespace A255414

/-- `A269380(A269380(A255407(A084970(n+1))))` -/
def P5588001145976807414.Spec : Prop :=
  ∀ n, P5588001145976807414.a n = A255414 (n + 1)

end A255414

/-!
# A255415: Row 5 of Ludic array A255127.

The programs for A255415, the canonical program `A255415.P4478179475312166102` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255415 has offset 1).

The definition of A255415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255415.P13890739391494853937

`A255407(A084969(n+1))`
-/

namespace A255415.P13890739391494853937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A084969 (n + 1)).toNat

end

end A255415.P13890739391494853937

namespace A255415

/-- `A255407(A084969(n+1))` -/
def P13890739391494853937.Spec : Prop :=
  ∀ n, P13890739391494853937.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P8210297593558278291

`A269379(A255414(n+1))`
-/

namespace A255415.P8210297593558278291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255414 (n + 1)).toNat

end

end A255415.P8210297593558278291

namespace A255415

/-- `A269379(A255414(n+1))` -/
def P8210297593558278291.Spec : Prop :=
  ∀ n, P8210297593558278291.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P17995114558452613548

`A269379(A269379(A255413(n+1)))`
-/

namespace A255415.P17995114558452613548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A255413 (n + 1)).toNat).toNat

end

end A255415.P17995114558452613548

namespace A255415

/-- `A269379(A269379(A255413(n+1)))` -/
def P17995114558452613548.Spec : Prop :=
  ∀ n, P17995114558452613548.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P17767754891551884958

`A269379(A269379(A269379(A016945(n))))`
-/

namespace A255415.P17767754891551884958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A269379 (A016945 n).toNat).toNat).toNat

end

end A255415.P17767754891551884958

namespace A255415

/-- `A269379(A269379(A269379(A016945(n))))` -/
def P17767754891551884958.Spec : Prop :=
  ∀ n, P17767754891551884958.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P4478179475312166102

`A260715(A017401(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255415

/-- `A260715(A017401(n))` -/
def P4478179475312166102.Spec : Prop :=
  ∀ n, P4478179475312166102.a n = A255415 (n + 1)

theorem P4478179475312166102.correct : P4478179475312166102.Spec := by
  intro n
  simp only [A255415, Nat.add_sub_cancel]

end A255415

/-! ## A255415.P16735894222970096300

`A269380(A255416(n+1))`
-/

namespace A255415.P16735894222970096300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255416 (n + 1)).toNat

end

end A255415.P16735894222970096300

namespace A255415

/-- `A269380(A255416(n+1))` -/
def P16735894222970096300.Spec : Prop :=
  ∀ n, P16735894222970096300.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P15554635863596642124

`A269380(A269380(A255417(n+1)))`
-/

namespace A255415.P15554635863596642124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A255417 (n + 1)).toNat).toNat

end

end A255415.P15554635863596642124

namespace A255415

/-- `A269380(A269380(A255417(n+1)))` -/
def P15554635863596642124.Spec : Prop :=
  ∀ n, P15554635863596642124.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P5611421574103538553

`A269380(A269380(A269380(A255418(n+1))))`
-/

namespace A255415.P5611421574103538553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A269380 (A255418 (n + 1)).toNat).toNat).toNat

end

end A255415.P5611421574103538553

namespace A255415

/-- `A269380(A269380(A269380(A255418(n+1))))` -/
def P5611421574103538553.Spec : Prop :=
  ∀ n, P5611421574103538553.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P17774126894908061931

`A255407(A250469(A250469(A084967(n+1))))`
-/

namespace A255415.P17774126894908061931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A250469 (A250469 (A084967 (n + 1)).toNat).toNat).toNat

end

end A255415.P17774126894908061931

namespace A255415

/-- `A255407(A250469(A250469(A084967(n+1))))` -/
def P17774126894908061931.Spec : Prop :=
  ∀ n, P17774126894908061931.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P5608143469143245457

`A255129(∑[n+5]+7)`
-/

namespace A255415.P5608143469143245457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A255415.P5608143469143245457

namespace A255415

/-- `A255129(∑[n+5]+7)` -/
def P5608143469143245457.Spec : Prop :=
  ∀ n, P5608143469143245457.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P1759544644490915786

`A255127(A000096(n+3)+7)`
-/

namespace A255415.P1759544644490915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000096 (n + 3) + 7).toNat

end

end A255415.P1759544644490915786

namespace A255415

/-- `A255127(A000096(n+3)+7)` -/
def P1759544644490915786.Spec : Prop :=
  ∀ n, P1759544644490915786.a n = A255415 (n + 1)

end A255415

/-! ## A255415.P4899312408837529701

`A269380(A255407(A084970(n+1)))`
-/

namespace A255415.P4899312408837529701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255407 (A084970 (n + 1)).toNat).toNat

end

end A255415.P4899312408837529701

namespace A255415

/-- `A269380(A255407(A084970(n+1)))` -/
def P4899312408837529701.Spec : Prop :=
  ∀ n, P4899312408837529701.a n = A255415 (n + 1)

end A255415

/-!
# A255416: Row 6 of Ludic array A255127.

The programs for A255416, there is no canonical definition to state claims against.
-/

/-! ## A255416.P4290365174724791650

`A255407(A084970(n+1))`
-/

namespace A255416.P4290365174724791650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A084970 (n + 1)).toNat

end

end A255416.P4290365174724791650

/-! ## A255416.P9681962909994568718

`A269379(A255415(n+1))`
-/

namespace A255416.P9681962909994568718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255415 (n + 1)).toNat

end

end A255416.P9681962909994568718

/-! ## A255416.P14982879140809871798

`A269379(A269379(A255414(n+1)))`
-/

namespace A255416.P14982879140809871798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A255414 (n + 1)).toNat).toNat

end

end A255416.P14982879140809871798

/-! ## A255416.P3115980917174370505

`A269380(A255417(n+1))`
-/

namespace A255416.P3115980917174370505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255417 (n + 1)).toNat

end

end A255416.P3115980917174370505

/-! ## A255416.P5877830475026963512

`A269380(A269380(A255418(n+1)))`
-/

namespace A255416.P5877830475026963512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A255418 (n + 1)).toNat).toNat

end

end A255416.P5877830475026963512

/-! ## A255416.P6705353560369511514

`A269380(A269380(A269380(A255419(n+1))))`
-/

namespace A255416.P6705353560369511514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A269380 (A255419 (n + 1)).toNat).toNat).toNat

end

end A255416.P6705353560369511514

/-! ## A255416.P12690452941387076892

`A255127(∑[n+5]+17)`
-/

namespace A255416.P12690452941387076892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (∑ j ∈ Finset.range (n + 1), f1 j + 17)

end

end A255416.P12690452941387076892

/-! ## A255416.P15471352064682897841

`A255129(A046691(n+4))`
-/

namespace A255416.P15471352064682897841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A046691 (n + 4)).toNat

end

end A255416.P15471352064682897841

/-! ## A255416.P7545118098012786420

`A255129(A056115(n+1)+11)`
-/

namespace A255416.P7545118098012786420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A056115 (n + 1) + 11).toNat

end

end A255416.P7545118098012786420

/-! ## A255416.P11144630177886404128

`A255407(A250469(A250469(A250469(A084967(n+1)))))`
-/

namespace A255416.P11144630177886404128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A250469 (A250469 (A250469 (A084967 (n + 1)).toNat).toNat).toNat).toNat

end

end A255416.P11144630177886404128

/-!
# A255417: Row 7 of Ludic array A255127.

The programs for A255417, there is no canonical definition to state claims against.
-/

/-! ## A255417.P10180250470247771003

`A269379(A255416(n+1))`
-/

namespace A255417.P10180250470247771003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255416 (n + 1)).toNat

end

end A255417.P10180250470247771003

/-! ## A255417.P13924990897818203444

`A269379(A269379(A255415(n+1)))`
-/

namespace A255417.P13924990897818203444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A255415 (n + 1)).toNat).toNat

end

end A255417.P13924990897818203444

/-! ## A255417.P18344399803938390788

`A269379(A269379(A269379(A255414(n+1))))`
-/

namespace A255417.P18344399803938390788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A269379 (A255414 (n + 1)).toNat).toNat).toNat

end

end A255417.P18344399803938390788

/-! ## A255417.P4356756167186067109

`A269380(A255418(n+1))`
-/

namespace A255417.P4356756167186067109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255418 (n + 1)).toNat

end

end A255417.P4356756167186067109

/-! ## A255417.P15333244892723187441

`A269380(A269380(A255419(n+1)))`
-/

namespace A255417.P15333244892723187441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269380 (A255419 (n + 1)).toNat).toNat

end

end A255417.P15333244892723187441

/-! ## A255417.P4512715572151135169

`A269379(A255127(∑[n+5]+17))`
-/

namespace A255417.P4512715572151135169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255127 (∑ j ∈ Finset.range (n + 1), f1 j + 17)).toNat

end

end A255417.P4512715572151135169

/-! ## A255417.P17799804749002374334

`A255129(A052905(n+4))`
-/

namespace A255417.P17799804749002374334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A052905 (n + 4)).toNat

end

end A255417.P17799804749002374334

/-! ## A255417.P11560620601003743714

`A255129(A000096(n+6)-4)`
-/

namespace A255417.P11560620601003743714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A000096 (n + 6) - 4).toNat

end

end A255417.P11560620601003743714

/-! ## A255417.P13061802985653576204

`A255127(A000124(n+6)+7)`
-/

namespace A255417.P13061802985653576204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000124 (n + 6) + 7).toNat

end

end A255417.P13061802985653576204

/-! ## A255417.P2812252336418206204

`A255129(A000124(n+6)+n+1)`
-/

namespace A255417.P2812252336418206204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A000124 (n + 6) + (n : ℤ) + 1).toNat

end

end A255417.P2812252336418206204

/-!
# A255418: Row 8 of Ludic array A255127.

The programs for A255418, there is no canonical definition to state claims against.
-/

/-! ## A255418.P13830822996962969800

`A269379(A255417(n+1))`
-/

namespace A255418.P13830822996962969800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255417 (n + 1)).toNat

end

end A255418.P13830822996962969800

/-! ## A255418.P4645829071809025929

`A269379(A269379(A255416(n+1)))`
-/

namespace A255418.P4645829071809025929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A255416 (n + 1)).toNat).toNat

end

end A255418.P4645829071809025929

/-! ## A255418.P6500005331740623539

`A269379(A269379(A269379(A269379(A255414(n+1)))))`
-/

namespace A255418.P6500005331740623539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A269379 (A269379 (A255414 (n + 1)).toNat).toNat).toNat).toNat

end

end A255418.P6500005331740623539

/-! ## A255418.P1036467592548988800

`A269380(A255419(n+1))`
-/

namespace A255418.P1036467592548988800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A255419 (n + 1)).toNat

end

end A255418.P1036467592548988800

/-! ## A255418.P5213528775891234650

`A255129(A055999(n+5))`
-/

namespace A255418.P5213528775891234650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A055999 (n + 5)).toNat

end

end A255418.P5213528775891234650

/-! ## A255418.P17203710128054051684

`A255127(A152950(n+8)+6)`
-/

namespace A255418.P17203710128054051684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A152950 (n + 8) + 6).toNat

end

end A255418.P17203710128054051684

/-! ## A255418.P7742531749884751127

`A255127(A000124(n+7)+8)`
-/

namespace A255418.P7742531749884751127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000124 (n + 7) + 8).toNat

end

end A255418.P7742531749884751127

/-! ## A255418.P12532536885040725463

`A255127(A000096(n+6)+10)`
-/

namespace A255418.P12532536885040725463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000096 (n + 6) + 10).toNat

end

end A255418.P12532536885040725463

/-! ## A255418.P2719122597069298983

`A255127(A000217(n+7)+9)`
-/

namespace A255418.P2719122597069298983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000217 (n + 7) + 9).toNat

end

end A255418.P2719122597069298983

/-! ## A255418.P9948541426364791641

`A255129(n+2+A000217(n+7))`
-/

namespace A255418.P9948541426364791641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 ((n + 2 : ℤ) + A000217 (n + 7)).toNat

end

end A255418.P9948541426364791641

/-! ## A255418.P7672545166942052996

`A255127(A027379(n+2)+A008585(n+10))`
-/

namespace A255418.P7672545166942052996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A027379 (n + 2) + A008585 (n + 10)).toNat

end

end A255418.P7672545166942052996

/-! ## A255418.P11284088267083852496

`A255127(A167499(n+9)-A016789(n+7))`
-/

namespace A255418.P11284088267083852496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A167499 (n + 9) - A016789 (n + 7)).toNat

end

end A255418.P11284088267083852496

/-!
# A255419: Row 9 of Ludic array A255127.

The programs for A255419, there is no canonical definition to state claims against.
-/

/-! ## A255419.P12546700190982344630

`A269379(A255418(n+1))`
-/

namespace A255419.P12546700190982344630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255418 (n + 1)).toNat

end

end A255419.P12546700190982344630

/-! ## A255419.P16104654436643333212

`A269379(A269379(A255417(n+1)))`
-/

namespace A255419.P16104654436643333212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269379 (A255417 (n + 1)).toNat).toNat

end

end A255419.P16104654436643333212

/-! ## A255419.P9337235374808179180

`A255129(A055999(n+6)-1)`
-/

namespace A255419.P9337235374808179180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A055999 (n + 6) - 1).toNat

end

end A255419.P9337235374808179180

/-! ## A255419.P4398730827949601032

`A255127(A152950(n+9)+7)`
-/

namespace A255419.P4398730827949601032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A152950 (n + 9) + 7).toNat

end

end A255419.P4398730827949601032

/-! ## A255419.P5546423658741679820

`A255127(A000124(n+8)+9)`
-/

namespace A255419.P5546423658741679820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000124 (n + 8) + 9).toNat

end

end A255419.P5546423658741679820

/-! ## A255419.P12705768420683802462

`A255127(A000096(n+7)+11)`
-/

namespace A255419.P12705768420683802462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000096 (n + 7) + 11).toNat

end

end A255419.P12705768420683802462

/-! ## A255419.P10629847585675833900

`A255127(A000217(n+8)+10)`
-/

namespace A255419.P10629847585675833900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000217 (n + 8) + 10).toNat

end

end A255419.P10629847585675833900

/-! ## A255419.P14650602735342166012

`A255129(n+2+A000217(n+8))`
-/

namespace A255419.P14650602735342166012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 ((n + 2 : ℤ) + A000217 (n + 8)).toNat

end

end A255419.P14650602735342166012

/-! ## A255419.P2828724180610113349

`A255127(A167499(n+4)+A016789(n+8))`
-/

namespace A255419.P2828724180610113349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A167499 (n + 4) + A016789 (n + 8)).toNat

end

end A255419.P2828724180610113349

/-! ## A255419.P10761780620375640253

`A255127(A252460(A332797(n+1)))`
-/

namespace A255419.P10761780620375640253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A252460 (A332797 (n + 1)).toNat).toNat

end

end A255419.P10761780620375640253

/-!
# A255420: Ludic recurrence: Iterates of f(n) = A003309(n+1) starting from n=1.

The programs for A255420, there is no canonical definition to state claims against.
-/

/-! ## A255420.P15563994389393843737

`A003309(1+a(n-1))` with `a(0)=1`
-/

namespace A255420.P15563994389393843737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003309 (1 + a (n - 1)).toNat

end

end A255420.P15563994389393843737

/-! ## A255420.P5913736015549407973

`A255421(A007097(n))`
-/

namespace A255420.P5913736015549407973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255421 (A007097 n).toNat

end

end A255420.P5913736015549407973

/-! ## A255420.P5624131671352682042

`A237126(A000225(n+1))`
-/

namespace A255420.P5624131671352682042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A000225 (n + 1)).toNat

end

end A255420.P5624131671352682042

/-! ## A255420.P16059681880215533913

`A266637(A266418(∑[2^n]))`
-/

namespace A255420.P16059681880215533913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266637 (A266418 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A255420.P16059681880215533913

/-! ## A255420.P334788142907548513

`A003309(a(A023443(n))+1)` with `a(0)=1`
-/

namespace A255420.P334788142907548513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003309 (a (A023443 n).toNat + 1).toNat

end

end A255420.P334788142907548513

/-!
# A255421: Permutation of natural numbers: a(1) = 1, a(p_n) = ludic(1+a(n)), a(c_n) = nonludic(a(n)), where p_n = n-th prime, c_n = n-th composite number and ludic = A003309, nonludic = A192607.

The programs for A255421, there is no canonical definition to state claims against.
-/

/-! ## A255421.P5917400837807068991

`A237126(A246377(n+1))`
-/

namespace A255421.P5917400837807068991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A246377 (n + 1)).toNat

end

end A255421.P5917400837807068991

/-! ## A255421.P5708777031297195532

`A257734(A257731(n+1))`
-/

namespace A255421.P5708777031297195532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257734 (A257731 (n + 1)).toNat

end

end A255421.P5708777031297195532

/-! ## A255421.P4919237519510351460

`A237126(A260421(A260423(n+1)))`
-/

namespace A255421.P4919237519510351460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A260421 (A260423 (n + 1)).toNat).toNat

end

end A255421.P4919237519510351460

/-!
# A255422: Permutation of natural numbers: a(1) = 1 and for n > 1, if n is k-th ludic number larger than 1 [i.e., n = A003309(k+1)], a(n) = nthprime(a(k)), otherwise, when n is k-th nonludic number [i.e., n = A192607(k)], a(n) = nthcomposite(a(k)), where nthcomposite = A002808, nthprime = A000040.

The programs for A255422, there is no canonical definition to state claims against.
-/

/-! ## A255422.P14308861533166023751

`A246378(A237427(n+1))`
-/

namespace A255422.P14308861533166023751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A237427 (n + 1)).toNat

end

end A255422.P14308861533166023751

/-! ## A255422.P4939468365102993991

`A257732(A257733(n+1))`
-/

namespace A255422.P4939468365102993991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (A257733 (n + 1)).toNat

end

end A255422.P4939468365102993991

/-! ## A255422.P887068264869609092

`A246378(A257725(A257733(n+1)))%A002808(n+1)`
-/

namespace A255422.P887068264869609092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246378 (A257725 (A257733 (n + 1)).toNat).toNat) (A002808 (n + 1))

end

end A255422.P887068264869609092

/-! ## A255422.P9626367767822185265

`A227413(A237427(A235491(n+1)))`
-/

namespace A255422.P9626367767822185265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A237427 (A235491 (n + 1)).toNat).toNat

end

end A255422.P9626367767822185265

/-!
# A255423: The least number k > A255334(n) for which A000203(k) = A000203(A255334(n)) and A007947(k) = A007947(A255334(n)), where A000203 gives the sum of divisors, and A007947 gives the squarefree kernel of n.

The programs for A255423, there is no canonical definition to state claims against.
-/

/-! ## A255423.P8038978156926969512

`A255424(n+1)*A255426(n+1)`
-/

namespace A255423.P8038978156926969512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255424 (n + 1) * A255426 (n + 1)

end

end A255423.P8038978156926969512

/-! ## A255423.P7371897932190999429

`A255334(n+1)/A255425(n+1)*A255426(n+1)`
-/

namespace A255423.P7371897932190999429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A255425 (n + 1) : ℚ) * (A255426 (n + 1) : ℚ)

end

end A255423.P7371897932190999429

/-! ## A255423.P18214855065294941503

`∏{p}[A255334(n+1)/2, #]*A255426(n+1)`
-/

namespace A255423.P18214855065294941503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℤ) * A255426 (n + 1)

end

end A255423.P18214855065294941503

/-! ## A255423.P7246394063600605244

`∏{p}[A255334(n+1), #]*A255426(n+1)`
-/

namespace A255423.P7246394063600605244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A255426 (n + 1)

end

end A255423.P7246394063600605244

/-! ## A255423.P15633881778960706929

`A007947(A255334(n+1))*A255426(n+1)`
-/

namespace A255423.P15633881778960706929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A255334 (n + 1)).toNat * A255426 (n + 1)

end

end A255423.P15633881778960706929

/-!
# A255424: Squarefree kernel of A255334: a(n) = A007947(A255334(n)).

The programs for A255424, there is no canonical definition to state claims against.
-/

/-! ## A255424.P4022253898393911217

`A007947(A255334(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255424.P4022253898393911217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A255334 (n + 1)).toNat

end

end A255424.P4022253898393911217

/-! ## A255424.P17988526447962351296

`A007947(A255423(n+1))`
-/

namespace A255424.P17988526447962351296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A255423 (n + 1)).toNat

end

end A255424.P17988526447962351296

/-! ## A255424.P12917016217023251861

`A255334(n+1)/A255425(n+1)`
-/

namespace A255424.P12917016217023251861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A255425 (n + 1) : ℚ)

end

end A255424.P12917016217023251861

/-! ## A255424.P4227617128173115497

`A255423(n+1)/A255426(n+1)`
-/

namespace A255424.P4227617128173115497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / (A255426 (n + 1) : ℚ)

end

end A255424.P4227617128173115497

/-!
# A255425: a(n) = A003557(A255334(n)) = A255334(n) / A255424(n).

The programs for A255425, there is no canonical definition to state claims against.
-/

/-! ## A255425.P15812649465333261391

`A255334(n+1)/A255424(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255425.P15812649465333261391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A255424 (n + 1) : ℚ)

end

end A255425.P15812649465333261391

/-! ## A255425.P2544785728585904152

`A255334(n+1)/A255423(n+1)*A255426(n+1)`
-/

namespace A255425.P2544785728585904152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A255423 (n + 1) : ℚ) * (A255426 (n + 1) : ℚ)

end

end A255425.P2544785728585904152

/-! ## A255425.P17410763500324081269

`A255334(n+1)/A007947(∏{p}[A255334(n+1)/2, #])`
-/

namespace A255425.P17410763500324081269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A007947 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) : ℚ)

end

end A255425.P17410763500324081269

/-! ## A255425.P12194030923341259137

`A255334(n+1)/A007947(∏{p}[A255334(n+1), #])`
-/

namespace A255425.P12194030923341259137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255334 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A007947 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A255425.P12194030923341259137

/-! ## A255425.P18266679222297641353

`A255334(n+1)/∏{p}[A255423(n+1), #]`
-/

namespace A255425.P18266679222297641353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255423 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A255425.P18266679222297641353

/-! ## A255425.P13962792287071136919

`A255334(n+1)/A007947(A255334(n+1)/6)`
-/

namespace A255425.P13962792287071136919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A255334 (n + 1) : ℚ) / 6)).toNat : ℚ)

end

end A255425.P13962792287071136919

/-!
# A255426: a(n) = A003557(A255423(n)) = A255423(n) / A255424(n).

The programs for A255426, there is no canonical definition to state claims against.
-/

/-! ## A255426.P17323442884429997155

`A255423(n+1)/A255424(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255426.P17323442884429997155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / (A255424 (n + 1) : ℚ)

end

end A255426.P17323442884429997155

/-! ## A255426.P840976495403088124

`A255423(n+1)/A255334(n+1)*A255425(n+1)`
-/

namespace A255426.P840976495403088124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / (A255334 (n + 1) : ℚ) * (A255425 (n + 1) : ℚ)

end

end A255426.P840976495403088124

/-! ## A255426.P14595203546356495968

`A255423(n+1)/A007947(A255334(n+1)/A255425(n+1))`
-/

namespace A255426.P14595203546356495968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A255334 (n + 1) : ℚ) / (A255425 (n + 1) : ℚ))).toNat : ℚ)

end

end A255426.P14595203546356495968

/-! ## A255426.P16461231548296444956

`A255423(n+1)/∏{p}[A255334(n+1)/2, #]`
-/

namespace A255426.P16461231548296444956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255334 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℚ)

end

end A255426.P16461231548296444956

/-! ## A255426.P15528461522083804433

`A255423(n+1)/∏{p}[A255334(n+1), #]`
-/

namespace A255426.P15528461522083804433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255334 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A255426.P15528461522083804433

/-! ## A255426.P2881273793455130

`A255423(n+1)/A007947(A255334(n+1)/6)`
-/

namespace A255426.P2881273793455130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A255334 (n + 1) : ℚ) / 6)).toNat : ℚ)

end

end A255426.P2881273793455130

/-!
# A255427: a(n) = product of distinct terms of row n in triangle A255313.

The programs for A255427, there is no canonical definition to state claims against.
-/

/-! ## A255427.P17864058322390205758

`A275733(∑[A276075(2*n+3)])`
-/

namespace A255427.P17864058322390205758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255427.P17864058322390205758

/-! ## A255427.P13206597143498181073

`A328571(∑[A276085(2*n+3)])`
-/

namespace A255427.P13206597143498181073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255427.P13206597143498181073

/-! ## A255427.P4999537198258523111

`∏{p}[A337643(2*(n+2)), A026741(#)]`
-/

namespace A255427.P4999537198258523111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337643 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p

end

end A255427.P4999537198258523111

/-!
# A255428: Partial sums of A255283.

The programs for A255428, there is no canonical definition to state claims against.
-/

/-! ## A255428.P455269994520359777

`∑[A255283(n)]`
-/

namespace A255428.P455269994520359777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255428.P455269994520359777

/-! ## A255428.P14227824700206763412

`A255283(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A255428.P14227824700206763412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255283 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A255428.P14227824700206763412

/-! ## A255428.P2113849601159934772

`∑[A255281(n)%A088783(3*n+2)]`
-/

namespace A255428.P2113849601159934772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255281 n) (A088783 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255428.P2113849601159934772

/-!
# A255429: Numbers with a prime number of nontrivial divisors.

The programs for A255429, there is no canonical definition to state claims against.
-/

/-! ## A255429.P86799610010192302

`eq[2, sqrt(a(A000005(n)-2))]` with `a(0)=16, a(1)=37`
-/

namespace A255429.P86799610010192302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [16, 37] fun n f2 =>
  Real.sqrt (f2 (A000005 n - 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A255429.P86799610010192302

/-! ## A255429.P3367266997221239189

`eq[1, a(A032741(n)-1)+1]` with `a(0)=-1, a(1)=2`
-/

namespace A255429.P3367266997221239189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f2 =>
  f2 (A032741 n - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255429.P3367266997221239189

/-! ## A255429.P10119925639938095915

`lt[A173315(A032741(n)), 1]`
-/

namespace A255429.P10119925639938095915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173315 (A032741 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255429.P10119925639938095915

/-! ## A255429.P3812914496092687710

`eq[4, A096436(A145154(n))]`
-/

namespace A255429.P3812914496092687710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096436 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255429.P3812914496092687710

/-! ## A255429.P18384946181326951263

`eq[5, A314376(a(A070824(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A255429.P18384946181326951263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A314376 (f2 (A070824 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255429.P18384946181326951263

/-! ## A255429.P4872787493258858815

`eq[1, A032741(A070824(n+1))]+1`
-/

namespace A255429.P4872787493258858815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A070824 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255429.P4872787493258858815

/-! ## A255429.P10278829489983345871

`eq[2, A000924(A000005(n+1))]+1`
-/

namespace A255429.P10278829489983345871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255429.P10278829489983345871

/-! ## A255429.P17620204381368354013

`eq[2, A000005(A264440(n+1))]+1`
-/

namespace A255429.P17620204381368354013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A264440 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255429.P17620204381368354013

/-! ## A255429.P3033733087126118095

`∪[A063734(n+1), A130763(n+1)]`
-/

namespace A255429.P3033733087126118095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255429.P3033733087126118095

/-! ## A255429.P7999927633186092865

`∪[A030513(n+1), A326709(n+1)]`
-/

namespace A255429.P7999927633186092865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255429.P7999927633186092865

/-!
# A255430: Natural numbers n, not multiples of 10, such that n and n^2 lack the digit 1 in their decimal expansions.

The programs for A255430, there is no canonical definition to state claims against.
-/

/-! ## A255430.P11688036347547360336

`lt[A268643(n+1), char[A255398(n+1)]]`
-/

namespace A255430.P11688036347547360336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255398 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255430.P11688036347547360336

/-! ## A255430.P6957790873320249331

`lt[A268643(n+1), char[eq[0, A086009(n)]]]`
-/

namespace A255430.P6957790873320249331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f4 j : ℤ) = f5 j) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255430.P6957790873320249331

/-! ## A255430.P438815039652449877

`eq[A261794(n+1)², A261794(n²)]`
-/

namespace A255430.P438815039652449877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255430.P438815039652449877

/-! ## A255430.P4215065892826807768

`eq[0, A268643(n+1)+A268643(n²)]`
-/

namespace A255430.P4215065892826807768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1) + A268643 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255430.P4215065892826807768

/-!
# A255432: Expansion of e.g.f. sqrt(1-x^2) * exp(x*(1+arctanh(x))).

The programs for A255432, there is no canonical definition to state claims against.
-/

/-! ## A255432.P13033139023729729704

`A218875(a(n-1)+2*n)` with `a(0)=1, a(1)=1`
-/

namespace A255432.P13033139023729729704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A218875 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A255432.P13033139023729729704

/-! ## A255432.P8257473545561044322

`A172307(A148291(n))`
-/

namespace A255432.P8257473545561044322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A148291 n).toNat

end

end A255432.P8257473545561044322

/-! ## A255432.P15970245389940404535

`A172307(A151259(n))`
-/

namespace A255432.P15970245389940404535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A151259 n).toNat

end

end A255432.P15970245389940404535

/-!
# A255433: a(n) = Product_{k=0..n} (k^3+1).

The programs for A255433, there is no canonical definition to state claims against.
-/

/-! ## A255433.P4091658553129666085

`∏[n^3+1]`
-/

namespace A255433.P4091658553129666085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255433.P4091658553129666085

/-! ## A255433.P5684767143963722792

`(n^3+1)*a(n-1)` with `a(0)=1`
-/

namespace A255433.P5684767143963722792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 3 + 1) * a (n - 1)

end

end A255433.P5684767143963722792

/-! ## A255433.P6071762777876048497

`(n+1)!*∏[(1-n)²+n]`
-/

namespace A255433.P6071762777876048497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A255433.P6071762777876048497

/-! ## A255433.P16218465622471354747

`abs((n*n²+1)*a(n-1))` with `a(0)=1`
-/

namespace A255433.P16218465622471354747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * n ^ 2 + 1) * a (n - 1)

end

end A255433.P16218465622471354747

/-! ## A255433.P2748746570413488857

`floor((n*n²+1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A255433.P2748746570413488857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * n ^ 2 + 1) * a (n - 1)

end

end A255433.P2748746570413488857

/-!
# A255434: Product_{k=0..n} (k^4+1).

The programs for A255434, there is no canonical definition to state claims against.
-/

/-! ## A255434.P16844334549716400051

`∏[n^4+1]`
-/

namespace A255434.P16844334549716400051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255434.P16844334549716400051

/-! ## A255434.P4989034372131065060

`(n^4+1)*a(n-1)` with `a(0)=1`
-/

namespace A255434.P4989034372131065060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 4 + 1) * a (n - 1)

end

end A255434.P4989034372131065060

/-! ## A255434.P1940245324414222064

`floor((n²²+1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A255434.P1940245324414222064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ 2) ^ 2 + 1) * a (n - 1)

end

end A255434.P1940245324414222064

/-! ## A255434.P16725110740141290053

`ceil((n²²+1)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A255434.P16725110740141290053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ 2) ^ 2 + 1) * a (n - 1)

end

end A255434.P16725110740141290053

/-! ## A255434.P13896357854253153471

`a(n-1)/(n²²+1)^(-1)` with `a(0)=1`
-/

namespace A255434.P13896357854253153471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n ^ 2) ^ 2 + 1 : ℚ) ^ (-1 : ℤ)

end

end A255434.P13896357854253153471

/-!
# A255435: Product_{k=0..n} (k^5 + 1).

The programs for A255435, there is no canonical definition to state claims against.
-/

/-! ## A255435.P2755124181884436151

`∏[n^5+1]`
-/

namespace A255435.P2755124181884436151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255435.P2755124181884436151

/-! ## A255435.P13343144471344762116

`(n^5+1)*a(n-1)` with `a(0)=1`
-/

namespace A255435.P13343144471344762116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 5 + 1) * a (n - 1)

end

end A255435.P13343144471344762116

/-! ## A255435.P10209256421113005572

`a(n-1)+a(n-1)/n^(-5)` with `a(0)=1`
-/

namespace A255435.P10209256421113005572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (n : ℚ) ^ (-5 : ℤ)

end

end A255435.P10209256421113005572

/-! ## A255435.P9980242924464074899

`a(n-1)+n*a(n-1)*n²²` with `a(0)=1`
-/

namespace A255435.P9980242924464074899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * a (n - 1) * (n ^ 2) ^ 2

end

end A255435.P9980242924464074899

/-!
# A255436: Number of distinct, connected, order-n subgraphs of the infinite knight graph.

The programs for A255436, there is no canonical definition to state claims against.
-/

/-! ## A255436.P9159999269996442946

`A323349(n)+∑[A244235(n)]`
-/

namespace A255436.P9159999269996442946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255436.P9159999269996442946

/-! ## A255436.P39486104091492293

`A050613(n)+A001435(n+1)`
-/

namespace A255436.P39486104091492293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 n + A001435 (n + 1)

end

end A255436.P39486104091492293

/-! ## A255436.P11805167910712554297

`A212421(n)-A196025(n+1)`
-/

namespace A255436.P11805167910712554297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212421 n - A196025 (n + 1)

end

end A255436.P11805167910712554297

/-! ## A255436.P16588135017343862320

`A330759(∑[n+1])+A022553(n)`
-/

namespace A255436.P16588135017343862320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330759 (∑ j ∈ Finset.range (n + 1), f1 j) + A022553 n

end

end A255436.P16588135017343862320

/-!
# A255437: In positive integers: replace k^2 with the first k odd numbers.

The programs for A255437, there is no canonical definition to state claims against.
-/

/-! ## A255437.P9501649466306786001

`A255507(n)+a(n-1)` with `a(0)=1`
-/

namespace A255437.P9501649466306786001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255507 n + a (n - 1)

end

end A255437.P9501649466306786001

/-! ## A255437.P1009413620639995173

`∑[A255507(floor(n*n/(n+1))+1)]`
-/

namespace A255437.P1009413620639995173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255437.P1009413620639995173

/-! ## A255437.P12210385969798825764

`∑[A255507(A028310(n))]%(n+2)`
-/

namespace A255437.P12210385969798825764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A255437.P12210385969798825764

/-! ## A255437.P10054476502983414763

`∑[A255507(A000007(n)+n)]%(n+2)`
-/

namespace A255437.P10054476502983414763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A255437.P10054476502983414763

/-! ## A255437.P3517723790649191516

`∑[A255507(n+1)]+1-A255507(n+1)`
-/

namespace A255437.P3517723790649191516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A255507 (n + 1))

end

end A255437.P3517723790649191516

/-! ## A255437.P14204673300436786742

`Δ[A255508(n+1)]-A255507(n+1)`
-/

namespace A255437.P14204673300436786742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255507 (n + 1)

end

end A255437.P14204673300436786742

/-! ## A255437.P1074483068060299651

`A255508(n+2)-(A255508(n+1)+A255507(n+1))`
-/

namespace A255437.P1074483068060299651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255508 (n + 2) - (A255508 (n + 1) + A255507 (n + 1))

end

end A255437.P1074483068060299651

/-! ## A255437.P9824436696925669968

`A000035(2*n)+∑[A255507(A028310(n))]`
-/

namespace A255437.P9824436696925669968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255437.P9824436696925669968

/-!
# A255440: Number of ordered pairs of permutation functions on n elements satisfying f(g(g(g(x)))) = g(g(g(f(x)))).

The programs for A255440, there is no canonical definition to state claims against.
-/

/-! ## A255440.P12212627413922288941

`A000142(n)*A232218(A028310(n))`
-/

namespace A255440.P12212627413922288941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A232218 (A028310 n).toNat

end

end A255440.P12212627413922288941

/-! ## A255440.P15290682126065453302

`A140067(A316371(n))`
-/

namespace A255440.P15290682126065453302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A316371 n).toNat

end

end A255440.P15290682126065453302

/-!
# A255441: Carmichael numbers of the form (60k+41)*(90k+61)*(150k+101), where 60k+41, 90k+61 and 150k+101 are all primes.

The programs for A255441, there is no canonical definition to state claims against.
-/

/-! ## A255441.P10069917340103557905

`A083876(A333891(n)+A002146(n))`
-/

namespace A255441.P10069917340103557905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A333891 n + A002146 n).toNat

end

end A255441.P10069917340103557905

/-! ## A255441.P4591156615338775105

`A083876(A318761(n+1)*A334618(2*(n+1)))`
-/

namespace A255441.P4591156615338775105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A318761 (n + 1) * A334618 (2 * (n + 1))).toNat

end

end A255441.P4591156615338775105

/-!
# A255442: a(n) = A255304(2^n-1).

The programs for A255442, the canonical program `A255442.P2349189798211441979` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255442 has offset 0).

The definition of A255442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255442.P2349189798211441979

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=5, a(2)=15`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255442

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P2349189798211441979.Spec : Prop :=
  ∀ n, P2349189798211441979.a n = A255442 n

theorem P2349189798211441979.correct : P2349189798211441979.Spec := by
  intro n
  simp only [A255442]

end A255442

/-! ## A255442.P3044186334254308074

`A255304(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255442.P3044186334254308074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255304 (2 ^ n - 1)

end

end A255442.P3044186334254308074

namespace A255442

/-- `A255304(2^n-1)` -/
def P3044186334254308074.Spec : Prop :=
  ∀ n, P3044186334254308074.a n = A255442 n

end A255442

/-! ## A255442.P18182129016165961873

`ogf((1+2x-3x^2)/(1-3x-3x^2+9x^3))`
-/

namespace A255442.P18182129016165961873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3] [1, -3, -3, 9] n

end

end A255442.P18182129016165961873

namespace A255442

/-- `ogf((1+2x-3x^2)/(1-3x-3x^2+9x^3))` -/
def P18182129016165961873.Spec : Prop :=
  ∀ n, P18182129016165961873.a n = A255442 n

end A255442

/-! ## A255442.P3274929581659050243

`Δ[3^n]-3^floor(n/2)`
-/

namespace A255442.P3274929581659050243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A255442.P3274929581659050243

namespace A255442

/-- `Δ[3^n]-3^floor(n/2)` -/
def P3274929581659050243.Spec : Prop :=
  ∀ n, P3274929581659050243.a n = (A255442 n : ℚ)

end A255442

/-! ## A255442.P17709544404635820198

`Δ[A032096(n+1)]`
-/

namespace A255442.P17709544404635820198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P17709544404635820198

namespace A255442

/-- `Δ[A032096(n+1)]` -/
def P17709544404635820198.Spec : Prop :=
  ∀ n, P17709544404635820198.a n = A255442 n

end A255442

/-! ## A255442.P7145451414372804240

`Δ[3^n-A038754(n)]`
-/

namespace A255442.P7145451414372804240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P7145451414372804240

namespace A255442

/-- `Δ[3^n-A038754(n)]` -/
def P7145451414372804240.Spec : Prop :=
  ∀ n, P7145451414372804240.a n = A255442 n

end A255442

/-! ## A255442.P3737017122235376101

`ceil(3^n/tan(acot(2))-A108411(n))`
-/

namespace A255442.P3737017122235376101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) - (A108411 n : ℝ)⌉

end

end A255442.P3737017122235376101

namespace A255442

/-- `ceil(3^n/tan(acot(2))-A108411(n))` -/
def P3737017122235376101.Spec : Prop :=
  ∀ n, P3737017122235376101.a n = A255442 n

end A255442

/-! ## A255442.P15225283042608839996

`abs(A167936(n)+2*3^n-2^n)`
-/

namespace A255442.P15225283042608839996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167936 n + ((2 * 3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A255442.P15225283042608839996

namespace A255442

/-- `abs(A167936(n)+2*3^n-2^n)` -/
def P15225283042608839996.Spec : Prop :=
  ∀ n, P15225283042608839996.a n = A255442 n

end A255442

/-! ## A255442.P5412109901777528552

`abs(A008776(n)-A108411(n))`
-/

namespace A255442.P5412109901777528552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008776 n - A108411 n|

end

end A255442.P5412109901777528552

namespace A255442

/-- `abs(A008776(n)-A108411(n))` -/
def P5412109901777528552.Spec : Prop :=
  ∀ n, P5412109901777528552.a n = A255442 n

end A255442

/-! ## A255442.P18295450503170933786

`Δ[A167762(n)+A001047(n)]`
-/

namespace A255442.P18295450503170933786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 n + A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P18295450503170933786

namespace A255442

/-- `Δ[A167762(n)+A001047(n)]` -/
def P18295450503170933786.Spec : Prop :=
  ∀ n, P18295450503170933786.a n = A255442 n

end A255442

/-! ## A255442.P8625671255914308141

`Δ[abs(A000244(n)-A038754(n))]`
-/

namespace A255442.P8625671255914308141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A038754 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P8625671255914308141

namespace A255442

/-- `Δ[abs(A000244(n)-A038754(n))]` -/
def P8625671255914308141.Spec : Prop :=
  ∀ n, P8625671255914308141.a n = A255442 n

end A255442

/-! ## A255442.P7439559155549424765

`Δ[A000244(n)-A062318(n+1)]`
-/

namespace A255442.P7439559155549424765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A062318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P7439559155549424765

namespace A255442

/-- `Δ[A000244(n)-A062318(n+1)]` -/
def P7439559155549424765.Spec : Prop :=
  ∀ n, P7439559155549424765.a n = A255442 n

end A255442

/-! ## A255442.P7918144601099605699

`Δ[A024023(n)-A062318(n+1)]`
-/

namespace A255442.P7918144601099605699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n - A062318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P7918144601099605699

namespace A255442

/-- `Δ[A024023(n)-A062318(n+1)]` -/
def P7918144601099605699.Spec : Prop :=
  ∀ n, P7918144601099605699.a n = A255442 n

end A255442

/-! ## A255442.P1787756349305240812

`Δ[A024023(n)-A182522(n+1)]`
-/

namespace A255442.P1787756349305240812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n - A182522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P1787756349305240812

namespace A255442

/-- `Δ[A024023(n)-A182522(n+1)]` -/
def P1787756349305240812.Spec : Prop :=
  ∀ n, P1787756349305240812.a n = A255442 n

end A255442

/-! ## A255442.P4143073634374953055

`Δ[A168607(n)-A060647(n)/2]`
-/

namespace A255442.P4143073634374953055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168607 n : ℚ) - (A060647 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P4143073634374953055

namespace A255442

/-- `Δ[A168607(n)-A060647(n)/2]` -/
def P4143073634374953055.Spec : Prop :=
  ∀ n, P4143073634374953055.a n = (A255442 n : ℚ)

end A255442

/-! ## A255442.P14701460898534589344

`Δ[A168610(n)-A060647(n)/2]`
-/

namespace A255442.P14701460898534589344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168610 n : ℚ) - (A060647 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P14701460898534589344

namespace A255442

/-- `Δ[A168610(n)-A060647(n)/2]` -/
def P14701460898534589344.Spec : Prop :=
  ∀ n, P14701460898534589344.a n = (A255442 n : ℚ)

end A255442

/-! ## A255442.P8547366600686127060

`Δ[A168607(n)-A117862(n)/2]`
-/

namespace A255442.P8547366600686127060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168607 n : ℚ) - (A117862 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P8547366600686127060

namespace A255442

/-- `Δ[A168607(n)-A117862(n)/2]` -/
def P8547366600686127060.Spec : Prop :=
  ∀ n, P8547366600686127060.a n = (A255442 n : ℚ)

end A255442

/-! ## A255442.P11927087704480011246

`Δ[A038754(2*n)-A062318(n+1)]`
-/

namespace A255442.P11927087704480011246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) - A062318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P11927087704480011246

namespace A255442

/-- `Δ[A038754(2*n)-A062318(n+1)]` -/
def P11927087704480011246.Spec : Prop :=
  ∀ n, P11927087704480011246.a n = A255442 n

end A255442

/-! ## A255442.P3694711863440793970

`Δ[A182522(2*n+1)-A182522(n+1)]`
-/

namespace A255442.P3694711863440793970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n + 1) - A182522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255442.P3694711863440793970

namespace A255442

/-- `Δ[A182522(2*n+1)-A182522(n+1)]` -/
def P3694711863440793970.Spec : Prop :=
  ∀ n, P3694711863440793970.a n = A255442 n

end A255442

/-!
# A255443: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 147 when started with a single ON cell.

The programs for A255443, there is no canonical definition to state claims against.
-/

/-! ## A255443.P14078850946046943659

`∏{e}[A278222(n), A255444(#)]`
-/

namespace A255443.P14078850946046943659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255444 (Nat.factorization (f1 n).natAbs p)

end

end A255443.P14078850946046943659

/-! ## A255443.P15723831494984688776

`∏{e}[A250246(A252753(n)), A255444(#)]`
-/

namespace A255443.P15723831494984688776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255444 (Nat.factorization (f1 n).natAbs p)

end

end A255443.P15723831494984688776

/-! ## A255443.P15128582566087394389

`or(A008437(A002998(n)), A255454(n))`
-/

namespace A255443.P15128582566087394389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008437 (A002998 n).toNat) (A255454 n)

end

end A255443.P15128582566087394389

/-! ## A255443.P16850928628286005858

`or(A147334(A060632(n)), A255454(n))`
-/

namespace A255443.P16850928628286005858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147334 (A060632 n).toNat) (A255454 n)

end

end A255443.P16850928628286005858

/-! ## A255443.P14228241051997205814

`or(A008437(A000043(n+1)), A255454(n))`
-/

namespace A255443.P14228241051997205814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008437 (A000043 (n + 1)).toNat) (A255454 n)

end

end A255443.P14228241051997205814

/-!
# A255444: A255443(2^n-1).

The programs for A255444, there is no canonical definition to state claims against.
-/

/-! ## A255444.P16217199539363644771

`A255443(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255444.P16217199539363644771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255443 (2 ^ n - 1)

end

end A255444.P16217199539363644771

/-! ## A255444.P15070328803852928118

`or(1, A255443(A000225(n)))`
-/

namespace A255444.P15070328803852928118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255443 (A000225 n).toNat)

end

end A255444.P15070328803852928118

/-! ## A255444.P4760029005666090520

`record[A255443(n)/A003963(n+1)]`
-/

namespace A255444.P4760029005666090520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255443 n : ℚ) / (A003963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255444.P4760029005666090520

/-! ## A255444.P10565201640753163555

`record[A255443(∑{d}[n, #])]`
-/

namespace A255444.P10565201640753163555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255443 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255444.P10565201640753163555

/-! ## A255444.P2122096576630140970

`A255443(A153893(n))/5`
-/

namespace A255444.P2122096576630140970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255443 (A153893 n).toNat : ℚ) / 5

end

end A255444.P2122096576630140970

/-!
# A255445: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 037 when started with a single ON cell.

The programs for A255445, the canonical program `A255445.P15327031489863029675` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255445 has offset 0).

The definition of A255445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255445.P15327031489863029675

`∏{e}[A278222(n), A001834(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A255445

/-- `∏{e}[A278222(n), A001834(#)]` -/
def P15327031489863029675.Spec : Prop :=
  ∀ n, P15327031489863029675.a n = A255445 n

theorem P15327031489863029675.correct : P15327031489863029675.Spec := by
  intro n
  simp only [A255445]

end A255445

/-! ## A255445.P11218116806197638391

`∏{e}[A278222(n), A108412(2*#)]`
-/

namespace A255445.P11218116806197638391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (2 * Nat.factorization (f1 n).natAbs p)

end

end A255445.P11218116806197638391

namespace A255445

/-- `∏{e}[A278222(n), A108412(2*#)]` -/
def P11218116806197638391.Spec : Prop :=
  ∀ n, P11218116806197638391.a n = A255445 n

end A255445

/-! ## A255445.P8415647557895599676

`∏{e}[A005940(n+1), A001834(#)]`
-/

namespace A255445.P8415647557895599676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001834 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P8415647557895599676

namespace A255445

/-- `∏{e}[A005940(n+1), A001834(#)]` -/
def P8415647557895599676.Spec : Prop :=
  ∀ n, P8415647557895599676.a n = A255445 n

end A255445

/-! ## A255445.P12607437921747645310

`∏{e}[A005940(n+1), A108412(2*#)]`
-/

namespace A255445.P12607437921747645310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (2 * Nat.factorization (f1 n).natAbs p)

end

end A255445.P12607437921747645310

namespace A255445

/-- `∏{e}[A005940(n+1), A108412(2*#)]` -/
def P12607437921747645310.Spec : Prop :=
  ∀ n, P12607437921747645310.a n = A255445 n

end A255445

/-! ## A255445.P370997834175268815

`∏{e}[A332815(n), A001834(#)]`
-/

namespace A255445.P370997834175268815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001834 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P370997834175268815

namespace A255445

/-- `∏{e}[A332815(n), A001834(#)]` -/
def P370997834175268815.Spec : Prop :=
  ∀ n, P370997834175268815.a n = A255445 n

end A255445

/-! ## A255445.P12043110404870151892

`∏{e}[A332815(n), A108412(2*#)]`
-/

namespace A255445.P12043110404870151892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (2 * Nat.factorization (f1 n).natAbs p)

end

end A255445.P12043110404870151892

namespace A255445

/-- `∏{e}[A332815(n), A108412(2*#)]` -/
def P12043110404870151892.Spec : Prop :=
  ∀ n, P12043110404870151892.a n = A255445 n

end A255445

/-! ## A255445.P2929014566394047162

`∏{e}[A278222(n)², A108412(#)]`
-/

namespace A255445.P2929014566394047162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P2929014566394047162

namespace A255445

/-- `∏{e}[A278222(n)², A108412(#)]` -/
def P2929014566394047162.Spec : Prop :=
  ∀ n, P2929014566394047162.a n = A255445 n

end A255445

/-! ## A255445.P18232200734523832477

`∏{e}[A005940(n+1)², A108412(#)]`
-/

namespace A255445.P18232200734523832477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P18232200734523832477

namespace A255445

/-- `∏{e}[A005940(n+1)², A108412(#)]` -/
def P18232200734523832477.Spec : Prop :=
  ∀ n, P18232200734523832477.a n = A255445 n

end A255445

/-! ## A255445.P5068826621488208773

`∏{e}[A332815(n)², A108412(#)]`
-/

namespace A255445.P5068826621488208773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108412 (Nat.factorization (f1 n).natAbs p)

end

end A255445.P5068826621488208773

namespace A255445

/-- `∏{e}[A332815(n)², A108412(#)]` -/
def P5068826621488208773.Spec : Prop :=
  ∀ n, P5068826621488208773.a n = A255445 n

end A255445

/-!
# A255446: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 165 when started with a single ON cell.

The programs for A255446, there is no canonical definition to state claims against.
-/

/-! ## A255446.P1771211437891716948

`A255452(n)+A178798(A255304(n))`
-/

namespace A255446.P1771211437891716948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255452 n + A178798 (A255304 n).toNat

end

end A255446.P1771211437891716948

/-! ## A255446.P1914097945670364389

`or(A001222(A255466(n)²), A255452(n))`
-/

namespace A255446.P1914097945670364389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A255466 n ^ 2).toNat) (A255452 n)

end

end A255446.P1914097945670364389

/-!
# A255447: A255446(2^n-1).

The programs for A255447, there is no canonical definition to state claims against.
-/

/-! ## A255447.P15720010118822621105

`A255446(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255447.P15720010118822621105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255446 (2 ^ n - 1)

end

end A255447.P15720010118822621105

/-! ## A255447.P8326494172309729798

`or(1, A255446(A000225(n)))`
-/

namespace A255447.P8326494172309729798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255446 (A000225 n).toNat)

end

end A255447.P8326494172309729798

/-! ## A255447.P4143684708931598808

`A255446(A000225(n))+A178798(n)`
-/

namespace A255447.P4143684708931598808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255446 (A000225 n).toNat + A178798 n

end

end A255447.P4143684708931598808

/-! ## A255447.P7470414855506107981

`A255446(A000225(n))+A185284(n)`
-/

namespace A255447.P7470414855506107981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255446 (A000225 n).toNat + A185284 n

end

end A255447.P7470414855506107981

/-! ## A255447.P1570512816660567731

`A036225(n)*A255446(A000225(n))`
-/

namespace A255447.P1570512816660567731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A255446 (A000225 n).toNat

end

end A255447.P1570512816660567731

/-!
# A255448: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 345 when started with a single ON cell.

The programs for A255448, there is no canonical definition to state claims against.
-/

/-! ## A255448.P16130485932512629107

`A255445(n*2^floor(2*n/3))`
-/

namespace A255448.P16130485932512629107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255445 (SequenceMachineLib.roundAway ((n : ℚ) * (2 : ℚ) ^ (⌊2 * ((n : ℚ) / 3)⌋ : ℤ))).toNat

end

end A255448.P16130485932512629107

/-! ## A255448.P17383800266412525942

`A118759(A255445(n))`
-/

namespace A255448.P17383800266412525942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A255445 n).toNat

end

end A255448.P17383800266412525942

/-! ## A255448.P8753485974642840184

`A000188(A255445(n)²)`
-/

namespace A255448.P8753485974642840184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A255445 n ^ 2).toNat

end

end A255448.P8753485974642840184

/-! ## A255448.P8845403441422441011

`A000194(A255445(n)²)`
-/

namespace A255448.P8845403441422441011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A255445 n ^ 2).toNat

end

end A255448.P8845403441422441011

/-! ## A255448.P7197564438329524534

`A000196(A255445(n)²)`
-/

namespace A255448.P7197564438329524534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A255445 n ^ 2).toNat

end

end A255448.P7197564438329524534

/-!
# A255449: a(n) = A255448(2^n-1).

The programs for A255449, there is no canonical definition to state claims against.
-/

/-! ## A255449.P4516508409641202084

`A255448(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255449.P4516508409641202084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255448 (2 ^ n - 1)

end

end A255449.P4516508409641202084

/-! ## A255449.P3680071617883668011

`A255448(A000225(n))+A000122(3*n+2)`
-/

namespace A255449.P3680071617883668011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255448 (A000225 n).toNat + A000122 (3 * n + 2)

end

end A255449.P3680071617883668011

/-! ## A255449.P247908901658575331

`record[A255448(∑{d}[n, #])]`
-/

namespace A255449.P247908901658575331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255448 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255449.P247908901658575331

/-!
# A255450: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 166 when started with a single ON cell.

The programs for A255450, there is no canonical definition to state claims against.
-/

/-! ## A255450.P17671065406330832075

`A071053(2*∑[and(n, -n)²]+n)%A086361(3*(n+1))`
-/

namespace A255450.P17671065406330832075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071053 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat) (A086361 (3 * (n + 1)))

end

end A255450.P17671065406330832075

/-! ## A255450.P17367245885807240931

`A071053(A001196(n)*A102376(n))`
-/

namespace A255450.P17367245885807240931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A001196 n * A102376 n).toNat

end

end A255450.P17367245885807240931

/-! ## A255450.P3416683863891513781

`A071053(lcm(A001196(n), A016116(n)))`
-/

namespace A255450.P3416683863891513781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (Int.lcm (A001196 n) (A016116 n))

end

end A255450.P3416683863891513781

/-! ## A255450.P8547648074708865613

`A071053(A001316(n)²*A001196(n))`
-/

namespace A255450.P8547648074708865613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A001316 n ^ 2 * A001196 n).toNat

end

end A255450.P8547648074708865613

/-! ## A255450.P628730654015680378

`A071053(A001196(n)%A352161(n+1))`
-/

namespace A255450.P628730654015680378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (Int.tmod (A001196 n) (A352161 (n + 1))).toNat

end

end A255450.P628730654015680378

/-!
# A255451: A255450(2^n-1).

The programs for A255451, the canonical program `A255451.P2453735481888993677` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255451 has offset 0).

The definition of A255451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255451.P16640783171960142441

`A255450(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255451.P16640783171960142441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255450 (2 ^ n - 1)

end

end A255451.P16640783171960142441

namespace A255451

/-- `A255450(2^n-1)` -/
def P16640783171960142441.Spec : Prop :=
  ∀ n, P16640783171960142441.a n = A255451 n

end A255451

/-! ## A255451.P2453735481888993677

`ogf((1+x)/(1-4x-x^2+4x^3+8x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255451

/-- `ogf((1+x)/(1-4x-x^2+4x^3+8x^4))` -/
def P2453735481888993677.Spec : Prop :=
  ∀ n, P2453735481888993677.a n = A255451 n

theorem P2453735481888993677.correct : P2453735481888993677.Spec := by
  intro n
  simp only [A255451]

end A255451

/-! ## A255451.P10653174678408402828

`record[A255450(A006068(n))]`
-/

namespace A255451.P10653174678408402828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255450 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255451.P10653174678408402828

namespace A255451

/-- `record[A255450(A006068(n))]` -/
def P10653174678408402828.Spec : Prop :=
  ∀ n, P10653174678408402828.a n = A255451 n

end A255451

/-! ## A255451.P6121355964616564286

`record[A255450(n)/A284118(n+1)]`
-/

namespace A255451.P6121355964616564286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255450 n : ℚ) / (A284118 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255451.P6121355964616564286

namespace A255451

/-- `record[A255450(n)/A284118(n+1)]` -/
def P6121355964616564286.Spec : Prop :=
  ∀ n, P6121355964616564286.a n = (A255451 n : ℚ)

end A255451

/-! ## A255451.P11877015782516685129

`record[A255450(∑{d}[n+1, #%or(1, #)])]`
-/

namespace A255451.P11877015782516685129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255450 (∑ d ∈ Nat.divisors (f2 n), d % Nat.lor 1 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255451.P11877015782516685129

namespace A255451

/-- `record[A255450(∑{d}[n+1, #%or(1, #)])]` -/
def P11877015782516685129.Spec : Prop :=
  ∀ n, P11877015782516685129.a n = A255451 n

end A255451

/-!
# A255452: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 156 when started with a single ON cell.

The programs for A255452, there is no canonical definition to state claims against.
-/

/-! ## A255452.P17092822211426724750

`A255446(n)-A178798(A255304(n))`
-/

namespace A255452.P17092822211426724750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255446 n - A178798 (A255304 n).toNat

end

end A255452.P17092822211426724750

/-! ## A255452.P5366513928045942795

`and(A004273(A126646(n)), A255446(n))`
-/

namespace A255452.P5366513928045942795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A126646 n).toNat) (A255446 n)

end

end A255452.P5366513928045942795

/-!
# A255453: A255452(2^n-1).

The programs for A255453, there is no canonical definition to state claims against.
-/

/-! ## A255453.P11422726605911227697

`A255452(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255453.P11422726605911227697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255452 (2 ^ n - 1)

end

end A255453.P11422726605911227697

/-! ## A255453.P14933099002085547626

`or(1, A255452(A000225(n)))`
-/

namespace A255453.P14933099002085547626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255452 (A000225 n).toNat)

end

end A255453.P14933099002085547626

/-! ## A255453.P4354351226511029609

`A255452(A000225(n))+A178798(n)`
-/

namespace A255453.P4354351226511029609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255452 (A000225 n).toNat + A178798 n

end

end A255453.P4354351226511029609

/-! ## A255453.P3850734326014870758

`A255452(A000225(n))+A185284(n)`
-/

namespace A255453.P3850734326014870758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255452 (A000225 n).toNat + A185284 n

end

end A255453.P3850734326014870758

/-! ## A255453.P6690605421832419326

`A036225(n)*A255452(A000225(n))`
-/

namespace A255453.P6690605421832419326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A255452 (A000225 n).toNat

end

end A255453.P6690605421832419326

/-!
# A255454: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 153 when started with a single ON cell.

The programs for A255454, there is no canonical definition to state claims against.
-/

/-! ## A255454.P9329062244078296308

`∏{e}[A278222(n), A255455(#)]`
-/

namespace A255454.P9329062244078296308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255455 (Nat.factorization (f1 n).natAbs p)

end

end A255454.P9329062244078296308

/-!
# A255455: A255454(2^n-1).

The programs for A255455, there is no canonical definition to state claims against.
-/

/-! ## A255455.P18035973033764269609

`A255454(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255455.P18035973033764269609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255454 (2 ^ n - 1)

end

end A255455.P18035973033764269609

/-! ## A255455.P647276060797619209

`or(1, A255454(A000225(n)))`
-/

namespace A255455.P647276060797619209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255454 (A000225 n).toNat)

end

end A255455.P647276060797619209

/-! ## A255455.P144575149113755257

`record[A255454(A243354(n+1))]`
-/

namespace A255455.P144575149113755257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255454 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255455.P144575149113755257

/-! ## A255455.P8320513033456520948

`record[A255454(∑{d}[n, #])]`
-/

namespace A255455.P8320513033456520948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255454 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255455.P8320513033456520948

/-! ## A255455.P309605811871417927

`record[A255454(A268716(n))]`
-/

namespace A255455.P309605811871417927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255454 (A268716 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255455.P309605811871417927

/-!
# A255457: a(n) = A255456(2^n-1).

The programs for A255457, the canonical program `A255457.P18207000809737181176` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255457 has offset 0).

The definition of A255457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255457.P18207000809737181176

`5*a(n-1)-24*a(n-3)+15*a(n-4)+17*a(n-5)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=93, a(4)=359`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255457

/-- `5*a(n-1)-24*a(n-3)+15*a(n-4)+17*a(n-5)` -/
def P18207000809737181176.Spec : Prop :=
  ∀ n, P18207000809737181176.a n = A255457 n

theorem P18207000809737181176.correct : P18207000809737181176.Spec := by
  intro n
  simp only [A255457]

end A255457

/-! ## A255457.P13203604975409242866

`A255456(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255457.P13203604975409242866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255456 (2 ^ n - 1)

end

end A255457.P13203604975409242866

namespace A255457

/-- `A255456(2^n-1)` -/
def P13203604975409242866.Spec : Prop :=
  ∀ n, P13203604975409242866.a n = A255457 n

end A255457

/-! ## A255457.P7292865768036649076

`record[gcd(A051626(n+1), A255456(n))]`
-/

namespace A255457.P7292865768036649076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051626 (n + 1)) (A255456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255457.P7292865768036649076

namespace A255457

/-- `record[gcd(A051626(n+1), A255456(n))]` -/
def P7292865768036649076.Spec : Prop :=
  ∀ n, (P7292865768036649076.a n : ℤ) = A255457 n

end A255457

/-! ## A255457.P3366232207982400292

`record[A255456(∑{d}[n, #])]`
-/

namespace A255457.P3366232207982400292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255456 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255457.P3366232207982400292

namespace A255457

/-- `record[A255456(∑{d}[n, #])]` -/
def P3366232207982400292.Spec : Prop :=
  ∀ n, P3366232207982400292.a n = A255457 n

end A255457

/-! ## A255457.P9943205743956893580

`record[A255456(n)/A352035(2*(n+1))]`
-/

namespace A255457.P9943205743956893580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255456 n : ℚ) / (A352035 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255457.P9943205743956893580

namespace A255457

/-- `record[A255456(n)/A352035(2*(n+1))]` -/
def P9943205743956893580.Spec : Prop :=
  ∀ n, P9943205743956893580.a n = (A255457 n : ℚ)

end A255457

/-!
# A255458: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 255 when started with a single ON cell.

The programs for A255458, the canonical program `A255458.P9682255118928481286` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255458 has offset 0).

The definition of A255458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255458.P9682255118928481286

`∏{e}[A278222(n), A255459(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A255458

/-- `∏{e}[A278222(n), A255459(#)]` -/
def P9682255118928481286.Spec : Prop :=
  ∀ n, P9682255118928481286.a n = A255458 n

theorem P9682255118928481286.correct : P9682255118928481286.Spec := by
  intro n
  simp only [A255458]

end A255458

/-! ## A255458.P14235862067686124287

`∏{e}[A005940(n+1), A255459(#)]`
-/

namespace A255458.P14235862067686124287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255459 (Nat.factorization (f1 n).natAbs p)

end

end A255458.P14235862067686124287

namespace A255458

/-- `∏{e}[A005940(n+1), A255459(#)]` -/
def P14235862067686124287.Spec : Prop :=
  ∀ n, P14235862067686124287.a n = A255458 n

end A255458

/-! ## A255458.P8809912686639429174

`A047449(A102376(n)%A260377(n+1))`
-/

namespace A255458.P8809912686639429174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (Int.tmod (A102376 n) (A260377 (n + 1))).toNat

end

end A255458.P8809912686639429174

namespace A255458

/-- `A047449(A102376(n)%A260377(n+1))` -/
def P8809912686639429174.Spec : Prop :=
  ∀ n, P8809912686639429174.a n = A255458 n

end A255458

/-! ## A255458.P15868885826098117024

`A255459(gcd(A000120(n), A350271(n+1)))`
-/

namespace A255458.P15868885826098117024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255459 (Int.gcd (A000120 n) (A350271 (n + 1)))

end

end A255458.P15868885826098117024

namespace A255458

/-- `A255459(gcd(A000120(n), A350271(n+1)))` -/
def P15868885826098117024.Spec : Prop :=
  ∀ n, P15868885826098117024.a n = A255458 n

end A255458

/-!
# A255459: a(n) = A255458(2^n-1).

The programs for A255459, the canonical program `A255459.P9954296886225926394` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255459 has offset 0).

The definition of A255459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255459.P9954296886225926394

`3-2^(3+n)+2*3^(1+n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255459

/-- `3-2^(3+n)+2*3^(1+n)` -/
def P9954296886225926394.Spec : Prop :=
  ∀ n, P9954296886225926394.a n = A255459 n

theorem P9954296886225926394.correct : P9954296886225926394.Spec := by
  intro n
  simp only [A255459]

end A255459

/-! ## A255459.P15301504683433626126

`A255458(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255459.P15301504683433626126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255458 (2 ^ n - 1)

end

end A255459.P15301504683433626126

namespace A255459

/-- `A255458(2^n-1)` -/
def P15301504683433626126.Spec : Prop :=
  ∀ n, P15301504683433626126.a n = A255459 n

end A255459

/-! ## A255459.P6340051077693884762

`∑[ogf((1-x+6x^2)/(1-5x+6x^2))]`
-/

namespace A255459.P6340051077693884762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255459.P6340051077693884762

namespace A255459

/-- `∑[ogf((1-x+6x^2)/(1-5x+6x^2))]` -/
def P6340051077693884762.Spec : Prop :=
  ∀ n, P6340051077693884762.a n = A255459 n

end A255459

/-! ## A255459.P4294602563100573083

`or(1, ∑[4*(3^n-2^n)])`
-/

namespace A255459.P4294602563100573083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255459.P4294602563100573083

namespace A255459

/-- `or(1, ∑[4*(3^n-2^n)])` -/
def P4294602563100573083.Spec : Prop :=
  ∀ n, P4294602563100573083.a n = A255459 n

end A255459

/-! ## A255459.P13169288108605287951

`xor(1, ∑[4*(3^n-2^n)])`
-/

namespace A255459.P13169288108605287951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255459.P13169288108605287951

namespace A255459

/-- `xor(1, ∑[4*(3^n-2^n)])` -/
def P13169288108605287951.Spec : Prop :=
  ∀ n, P13169288108605287951.a n = A255459 n

end A255459

/-! ## A255459.P6707645900309226043

`∑[(4*(3^n-2^n))^ceil(sin(n)²)]`
-/

namespace A255459.P6707645900309226043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255459.P6707645900309226043

namespace A255459

/-- `∑[(4*(3^n-2^n))^ceil(sin(n)²)]` -/
def P6707645900309226043.Spec : Prop :=
  ∀ n, P6707645900309226043.a n = (A255459 n : ℚ)

end A255459

/-! ## A255459.P14208434482691037677

`Δ[∑[2*A101052(n)]-n]`
-/

namespace A255459.P14208434482691037677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255459.P14208434482691037677

namespace A255459

/-- `Δ[∑[2*A101052(n)]-n]` -/
def P14208434482691037677.Spec : Prop :=
  ∀ n, P14208434482691037677.a n = A255459 n

end A255459

/-! ## A255459.P11306592949623929689

`∑[A145563(n)+A000007(n)]`
-/

namespace A255459.P11306592949623929689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145563 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255459.P11306592949623929689

namespace A255459

/-- `∑[A145563(n)+A000007(n)]` -/
def P11306592949623929689.Spec : Prop :=
  ∀ n, P11306592949623929689.a n = A255459 n

end A255459

/-! ## A255459.P14233368590070787218

`∑[A166060(n)-A131572(2*n)]`
-/

namespace A255459.P14233368590070787218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n - A131572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255459.P14233368590070787218

namespace A255459

/-- `∑[A166060(n)-A131572(2*n)]` -/
def P14233368590070787218.Spec : Prop :=
  ∀ n, P14233368590070787218.a n = A255459 n

end A255459

/-! ## A255459.P11597928889589565366

`∑[A169650(n+1)-A020639(3*A007693(n+1))]`
-/

namespace A255459.P11597928889589565366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169650 (n + 1) - A020639 (3 * A007693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255459.P11597928889589565366

namespace A255459

/-- `∑[A169650(n+1)-A020639(3*A007693(n+1))]` -/
def P11597928889589565366.Spec : Prop :=
  ∀ n, P11597928889589565366.a n = A255459 n

end A255459

/-!
# A255460: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 517 when started with a single ON cell.

The programs for A255460, there is no canonical definition to state claims against.
-/

/-! ## A255460.P7132067474309312721

`A253069(n)+A113302(A255466(n))`
-/

namespace A255460.P7132067474309312721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 n + A113302 (A255466 n).toNat

end

end A255460.P7132067474309312721

/-! ## A255460.P2233092368709152591

`A253069(n)+A061858(A072345(n))`
-/

namespace A255460.P2233092368709152591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 n + A061858 (A072345 n).toNat

end

end A255460.P2233092368709152591

/-! ## A255460.P9487847405977229540

`A077223(A253069(n)%A064703(n+1))`
-/

namespace A255460.P9487847405977229540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (Int.tmod (A253069 n) (A064703 (n + 1))).toNat

end

end A255460.P9487847405977229540

/-! ## A255460.P5463529740816182541

`A077223(A253069(n))%A291282(3*n+1)`
-/

namespace A255460.P5463529740816182541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077223 (A253069 n).toNat) (A291282 (3 * n + 1))

end

end A255460.P5463529740816182541

/-! ## A255460.P6146221708398434050

`A253069(n)-A123583(A327343(A286900(n+1)))`
-/

namespace A255460.P6146221708398434050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 n - A123583 (A327343 (A286900 (n + 1)).toNat).toNat

end

end A255460.P6146221708398434050

/-!
# A255461: A255460(2^n-1).

The programs for A255461, there is no canonical definition to state claims against.
-/

/-! ## A255461.P4161717682107380898

`A255460(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255461.P4161717682107380898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 (2 ^ n - 1)

end

end A255461.P4161717682107380898

/-! ## A255461.P10781212573289556074

`record[A255460(A232751(n))]`
-/

namespace A255461.P10781212573289556074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255461.P10781212573289556074

/-! ## A255461.P17523182529581806558

`record[A255460(A292600(n))]`
-/

namespace A255461.P17523182529581806558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 (A292600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255461.P17523182529581806558

/-! ## A255461.P281989751726780802

`record[A255460(A023758(n+1))]`
-/

namespace A255461.P281989751726780802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255461.P281989751726780802

/-! ## A255461.P9334914423286322362

`record[A255460(A077436(n+1))]`
-/

namespace A255461.P9334914423286322362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 (A077436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255461.P9334914423286322362

/-!
# A255462: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 365 when started with a single ON cell.

The programs for A255462, the canonical program `A255462.P1799679290061478263` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255462 has offset 0).

The definition of A255462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255462.P1799679290061478263

`∏{e}[A278222(n), A255463(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A255462

/-- `∏{e}[A278222(n), A255463(#)]` -/
def P1799679290061478263.Spec : Prop :=
  ∀ n, P1799679290061478263.a n = A255462 n

theorem P1799679290061478263.correct : P1799679290061478263.Spec := by
  intro n
  simp only [A255462]

end A255462

/-! ## A255462.P11316118763278618375

`∏{e}[A005940(n+1), A255463(#)]`
-/

namespace A255462.P11316118763278618375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255463 (Nat.factorization (f1 n).natAbs p)

end

end A255462.P11316118763278618375

namespace A255462

/-- `∏{e}[A005940(n+1), A255463(#)]` -/
def P11316118763278618375.Spec : Prop :=
  ∀ n, P11316118763278618375.a n = A255462 n

end A255462

/-!
# A255463: a(n) = 3*4^n - 2*3^n.

The programs for A255463, the canonical program `A255463.P6563478060669698748` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255463 has offset 0).

The definition of A255463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n-2*3^n` (program `A255463.P6563478060669698748`, by `A255463.P6563478060669698748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255463.P6563478060669698748

`3*4^n-2*3^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255463

/-- `3*4^n-2*3^n` -/
def P6563478060669698748.Spec : Prop :=
  ∀ n, P6563478060669698748.a n = A255463 n

theorem P6563478060669698748.correct : P6563478060669698748.Spec := by
  intro n
  simp only [A255463]

end A255463

/-! ## A255463.P3429528288474333548

`A255462(2^n-1)`
-/

namespace A255463.P3429528288474333548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255462 (2 ^ n - 1)

end

end A255463.P3429528288474333548

namespace A255463

/-- `A255462(2^n-1)` -/
def P3429528288474333548.Spec : Prop :=
  ∀ n, P3429528288474333548.a n = A255463 n

end A255463

/-! ## A255463.P15629120939041661353

`ogf((1-x)/(1-7x+12x^2))`
-/

namespace A255463.P15629120939041661353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, 12] n

end

end A255463.P15629120939041661353

namespace A255463

/-- `ogf((1-x)/(1-7x+12x^2))` -/
def P15629120939041661353.Spec : Prop :=
  ∀ n, P15629120939041661353.a n = A255463 n

end A255463

/-! ## A255463.P2371536525355480929

`lcm(3, a(n-1)+4^(n-1))` with `a(0)=1`
-/

namespace A255463.P2371536525355480929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A255463.P2371536525355480929

namespace A255463

/-- `lcm(3, a(n-1)+4^(n-1))` -/
def P2371536525355480929.Spec : Prop :=
  ∀ n, (P2371536525355480929.a n : ℤ) = A255463 n

end A255463

/-! ## A255463.P11458692097220928913

`Δ[A005061(n)]`
-/

namespace A255463.P11458692097220928913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P11458692097220928913

namespace A255463

/-- `Δ[A005061(n)]` -/
def P11458692097220928913.Spec : Prop :=
  ∀ n, P11458692097220928913.a n = A255463 n

theorem P11458692097220928913.correct : P11458692097220928913.Spec := by
  intro n
  simp only [A255463, Nat.add_sub_cancel, A255463.P11458692097220928913.f1, A255463.P11458692097220928913.a, A255463.P6563478060669698748.a, A005061, A005061.P16496871994776631977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255463

/-! ## A255463.P3161052606290751790

`Δ[A155609(n)]`
-/

namespace A255463.P3161052606290751790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P3161052606290751790

namespace A255463

/-- `Δ[A155609(n)]` -/
def P3161052606290751790.Spec : Prop :=
  ∀ n, P3161052606290751790.a n = A255463 n

theorem P3161052606290751790.correct : P3161052606290751790.Spec := by
  intro n
  simp only [A255463, Nat.add_sub_cancel, A255463.P3161052606290751790.f1, A255463.P3161052606290751790.a, A255463.P6563478060669698748.a, A155609, A155609.P4227555059231911855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255463

/-! ## A255463.P15130464358555711285

`Δ[A167762(2*n)]`
-/

namespace A255463.P15130464358555711285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P15130464358555711285

namespace A255463

/-- `Δ[A167762(2*n)]` -/
def P15130464358555711285.Spec : Prop :=
  ∀ n, P15130464358555711285.a n = A255463 n

end A255463

/-! ## A255463.P9443704953426943765

`Δ[A167936(2*n)]`
-/

namespace A255463.P9443704953426943765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P9443704953426943765

namespace A255463

/-- `Δ[A167936(2*n)]` -/
def P9443704953426943765.Spec : Prop :=
  ∀ n, P9443704953426943765.a n = A255463 n

end A255463

/-! ## A255463.P11303924819716540226

`Δ[Δ[A162725(n)]]`
-/

namespace A255463.P11303924819716540226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P11303924819716540226

namespace A255463

/-- `Δ[Δ[A162725(n)]]` -/
def P11303924819716540226.Spec : Prop :=
  ∀ n, P11303924819716540226.a n = A255463 n

end A255463

/-! ## A255463.P16625728411353605692

`Δ[A145544(n)/4]`
-/

namespace A255463.P16625728411353605692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145544 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P16625728411353605692

namespace A255463

/-- `Δ[A145544(n)/4]` -/
def P16625728411353605692.Spec : Prop :=
  ∀ n, P16625728411353605692.a n = (A255463 n : ℚ)

theorem P16625728411353605692.correct : P16625728411353605692.Spec := by
  intro n
  simp only [A255463, Nat.add_sub_cancel, A255463.P16625728411353605692.f1, A255463.P16625728411353605692.a, A255463.P6563478060669698748.a, A145544, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255463

/-! ## A255463.P10211302082107941564

`Δ[Δ[A000773(2*n+1)]]`
-/

namespace A255463.P10211302082107941564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255463.P10211302082107941564

namespace A255463

/-- `Δ[Δ[A000773(2*n+1)]]` -/
def P10211302082107941564.Spec : Prop :=
  ∀ n, P10211302082107941564.a n = A255463 n

end A255463

/-!
# A255464: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 137 when started with a single ON cell.

The programs for A255464, the canonical program `A255464.P10753955913467884624` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255464 has offset 0).

The definition of A255464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255464.P10753955913467884624

`∏{e}[A005940(n+1), A255465(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A255464

/-- `∏{e}[A005940(n+1), A255465(#)]` -/
def P10753955913467884624.Spec : Prop :=
  ∀ n, P10753955913467884624.a n = A255464 n

theorem P10753955913467884624.correct : P10753955913467884624.Spec := by
  intro n
  simp only [A255464]

end A255464

/-! ## A255464.P18426517811758919083

`A253069(n)+A241069(A278159(n))`
-/

namespace A255464.P18426517811758919083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 n + A241069 (A278159 n).toNat

end

end A255464.P18426517811758919083

namespace A255464

/-- `A253069(n)+A241069(A278159(n))` -/
def P18426517811758919083.Spec : Prop :=
  ∀ n, P18426517811758919083.a n = A255464 n

end A255464

/-! ## A255464.P4581963594842982499

`A255460(n)+A241069(A278159(n))`
-/

namespace A255464.P4581963594842982499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 n + A241069 (A278159 n).toNat

end

end A255464.P4581963594842982499

namespace A255464

/-- `A255460(n)+A241069(A278159(n))` -/
def P4581963594842982499.Spec : Prop :=
  ∀ n, P4581963594842982499.a n = A255464 n

end A255464

/-! ## A255464.P1381202279538484317

`A130696(A253069(n)+1)`
-/

namespace A255464.P1381202279538484317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A253069 n + 1).toNat

end

end A255464.P1381202279538484317

namespace A255464

/-- `A130696(A253069(n)+1)` -/
def P1381202279538484317.Spec : Prop :=
  ∀ n, P1381202279538484317.a n = A255464 n

end A255464

/-! ## A255464.P11635317914320026397

`A130696(A255460(n)+1)`
-/

namespace A255464.P11635317914320026397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A255460 n + 1).toNat

end

end A255464.P11635317914320026397

namespace A255464

/-- `A130696(A255460(n)+1)` -/
def P11635317914320026397.Spec : Prop :=
  ∀ n, P11635317914320026397.a n = A255464 n

end A255464

/-!
# A255465: a(n) = A255464(2^n-1).

The programs for A255465, the canonical program `A255465.P10920641754774426443` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255465 has offset 0).

The definition of A255465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255465.P10920641754774426443

`3*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255465

/-- `3*a(n-1)+4*a(n-2)` -/
def P10920641754774426443.Spec : Prop :=
  ∀ n, (P10920641754774426443.a n : ℤ) = A255465 n

theorem P10920641754774426443.correct : P10920641754774426443.Spec := by
  intro n
  simp only [A255465]

end A255465

/-! ## A255465.P14140551645062120925

`A255464(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255465.P14140551645062120925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255464 (2 ^ n - 1)

end

end A255465.P14140551645062120925

namespace A255465

/-- `A255464(2^n-1)` -/
def P14140551645062120925.Spec : Prop :=
  ∀ n, P14140551645062120925.a n = A255465 n

end A255465

/-! ## A255465.P1388920570528344564

`ogf((1+3x)/(1-3x-4x^2))`
-/

namespace A255465.P1388920570528344564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -4] n

end

end A255465.P1388920570528344564

namespace A255465

/-- `ogf((1+3x)/(1-3x-4x^2))` -/
def P1388920570528344564.Spec : Prop :=
  ∀ n, P1388920570528344564.a n = A255465 n

end A255465

/-! ## A255465.P16738391483476625194

`4*(a(n-1)+n%2)-2` with `a(0)=1`
-/

namespace A255465.P16738391483476625194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) - 2

end

end A255465.P16738391483476625194

namespace A255465

/-- `4*(a(n-1)+n%2)-2` -/
def P16738391483476625194.Spec : Prop :=
  ∀ n, P16738391483476625194.a n = A255465 n

end A255465

/-! ## A255465.P13995031659310515332

`2*4^n-Δ[round(4^n/5)]`
-/

namespace A255465.P13995031659310515332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A255465.P13995031659310515332

namespace A255465

/-- `2*4^n-Δ[round(4^n/5)]` -/
def P13995031659310515332.Spec : Prop :=
  ∀ n, P13995031659310515332.a n = A255465 n

end A255465

/-! ## A255465.P6475305514577051265

`2*(2*a(n-1)-(-1)^n)` with `a(0)=1`
-/

namespace A255465.P6475305514577051265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) - (-1) ^ n)

end

end A255465.P6475305514577051265

namespace A255465

/-- `2*(2*a(n-1)-(-1)^n)` -/
def P6475305514577051265.Spec : Prop :=
  ∀ n, P6475305514577051265.a n = A255465 n

end A255465

/-! ## A255465.P12390778457215510653

`A135541(Δ[n²])/2`
-/

namespace A255465.P12390778457215510653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A255465.P12390778457215510653

namespace A255465

/-- `A135541(Δ[n²])/2` -/
def P12390778457215510653.Spec : Prop :=
  ∀ n, P12390778457215510653.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P3189411108217038125

`Δ[A020988(n)-round(4^n/5)]`
-/

namespace A255465.P3189411108217038125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n - SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P3189411108217038125

namespace A255465

/-- `Δ[A020988(n)-round(4^n/5)]` -/
def P3189411108217038125.Spec : Prop :=
  ∀ n, P3189411108217038125.a n = A255465 n

end A255465

/-! ## A255465.P15600386302356170018

`Δ[or(A015521(n), A037481(n))]`
-/

namespace A255465.P15600386302356170018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015521 n) (A037481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P15600386302356170018

namespace A255465

/-- `Δ[or(A015521(n), A037481(n))]` -/
def P15600386302356170018.Spec : Prop :=
  ∀ n, P15600386302356170018.a n = A255465 n

end A255465

/-! ## A255465.P11937615300492930120

`Δ[A001045(2*n+1)-A015521(n)]`
-/

namespace A255465.P11937615300492930120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) - A015521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P11937615300492930120

namespace A255465

/-- `Δ[A001045(2*n+1)-A015521(n)]` -/
def P11937615300492930120.Spec : Prop :=
  ∀ n, P11937615300492930120.a n = A255465 n

end A255465

/-! ## A255465.P7869649537810382041

`Δ[A007909(2*n+1)-A001045(2*n)]`
-/

namespace A255465.P7869649537810382041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n + 1) - A001045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P7869649537810382041

namespace A255465

/-- `Δ[A007909(2*n+1)-A001045(2*n)]` -/
def P7869649537810382041.Spec : Prop :=
  ∀ n, P7869649537810382041.a n = A255465 n

end A255465

/-! ## A255465.P7617347985158693090

`(A109499(n+1)-A122803(2*n+1))/2`
-/

namespace A255465.P7617347985158693090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109499 (n + 1) - A122803 (2 * n + 1) : ℚ) / 2

end

end A255465.P7617347985158693090

namespace A255465

/-- `(A109499(n+1)-A122803(2*n+1))/2` -/
def P7617347985158693090.Spec : Prop :=
  ∀ n, P7617347985158693090.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P10689529673344855756

`(A007910(2*n)+A007679(2*(n+1)))/2`
-/

namespace A255465.P10689529673344855756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007910 (2 * n) + A007679 (2 * (n + 1)) : ℚ) / 2

end

end A255465.P10689529673344855756

namespace A255465

/-- `(A007910(2*n)+A007679(2*(n+1)))/2` -/
def P10689529673344855756.Spec : Prop :=
  ∀ n, P10689529673344855756.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P2825187463939807106

`(A190569(2*n)+A007679(2*(n+1)))/2`
-/

namespace A255465.P2825187463939807106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190569 (2 * n) + A007679 (2 * (n + 1)) : ℚ) / 2

end

end A255465.P2825187463939807106

namespace A255465

/-- `(A190569(2*n)+A007679(2*(n+1)))/2` -/
def P2825187463939807106.Spec : Prop :=
  ∀ n, P2825187463939807106.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P3770923479813564255

`(A283642(2*n)+A139814(2*n+1))/2`
-/

namespace A255465.P3770923479813564255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283642 (2 * n) + A139814 (2 * n + 1) : ℚ) / 2

end

end A255465.P3770923479813564255

namespace A255465

/-- `(A283642(2*n)+A139814(2*n+1))/2` -/
def P3770923479813564255.Spec : Prop :=
  ∀ n, P3770923479813564255.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P8848481598553150483

`Δ[A115851(2*n)+Δ[A115851(2*n+1)]]`
-/

namespace A255465.P8848481598553150483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P8848481598553150483

namespace A255465

/-- `Δ[A115851(2*n)+Δ[A115851(2*n+1)]]` -/
def P8848481598553150483.Spec : Prop :=
  ∀ n, P8848481598553150483.a n = A255465 n

end A255465

/-! ## A255465.P11111292316799163541

`Δ[A139800(2*n)+Δ[A139800(2*n+1)]]`
-/

namespace A255465.P11111292316799163541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255465.P11111292316799163541

namespace A255465

/-- `Δ[A139800(2*n)+Δ[A139800(2*n+1)]]` -/
def P11111292316799163541.Spec : Prop :=
  ∀ n, P11111292316799163541.a n = A255465 n

end A255465

/-! ## A255465.P13253205542917748485

`(A007909(2*n+1)+A007679(2*(n+1)))/2`
-/

namespace A255465.P13253205542917748485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007909 (2 * n + 1) + A007679 (2 * (n + 1)) : ℚ) / 2

end

end A255465.P13253205542917748485

namespace A255465

/-- `(A007909(2*n+1)+A007679(2*(n+1)))/2` -/
def P13253205542917748485.Spec : Prop :=
  ∀ n, P13253205542917748485.a n = (A255465 n : ℚ)

end A255465

/-! ## A255465.P15183591393715879035

`round(A002042(n)/5)`
-/

namespace A255465.P15183591393715879035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002042 n : ℚ) / 5)

end

end A255465.P15183591393715879035

namespace A255465

/-- `round(A002042(n)/5)` -/
def P15183591393715879035.Spec : Prop :=
  ∀ n, P15183591393715879035.a n = A255465 n

end A255465

/-! ## A255465.P486444378374371810

`A189738(n+2)/4`
-/

namespace A255465.P486444378374371810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189738 (n + 2) : ℚ) / 4

end

end A255465.P486444378374371810

namespace A255465

/-- `A189738(n+2)/4` -/
def P486444378374371810.Spec : Prop :=
  ∀ n, P486444378374371810.a n = (A255465 n : ℚ)

end A255465

/-!
# A255466: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 167 when started with a single ON cell.

The programs for A255466, there is no canonical definition to state claims against.
-/

/-! ## A255466.P16598664138725216573

`or(A167286(A255452(n)), A255470(n))`
-/

namespace A255466.P16598664138725216573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167286 (A255452 n).toNat) (A255470 n)

end

end A255466.P16598664138725216573

/-!
# A255467: a(n) = A255466(2^n-1).

The programs for A255467, the canonical program `A255467.P12934618986026311817` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255467 has offset 0).

The definition of A255467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255467.P12934618986026311817

`5*a(n-1)-2*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=26`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255467

/-- `5*a(n-1)-2*a(n-2)-8*a(n-3)` -/
def P12934618986026311817.Spec : Prop :=
  ∀ n, P12934618986026311817.a n = A255467 n

theorem P12934618986026311817.correct : P12934618986026311817.Spec := by
  intro n
  simp only [A255467]

end A255467

/-! ## A255467.P16561030538445578102

`A255466(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255467.P16561030538445578102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255466 (2 ^ n - 1)

end

end A255467.P16561030538445578102

namespace A255467

/-- `A255466(2^n-1)` -/
def P16561030538445578102.Spec : Prop :=
  ∀ n, P16561030538445578102.a n = A255467 n

end A255467

/-! ## A255467.P14666443707169690164

`ogf((1+x-2x^2)/(1-5x+2x^2+8x^3))`
-/

namespace A255467.P14666443707169690164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -5, 2, 8] n

end

end A255467.P14666443707169690164

namespace A255467

/-- `ogf((1+x-2x^2)/(1-5x+2x^2+8x^3))` -/
def P14666443707169690164.Spec : Prop :=
  ∀ n, P14666443707169690164.a n = A255467 n

end A255467

/-! ## A255467.P9727081133863127820

`2*(round(2^n/3)+2*a(n-1))` with `a(0)=1`
-/

namespace A255467.P9727081133863127820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) + 2 * a (n - 1))

end

end A255467.P9727081133863127820

namespace A255467

/-- `2*(round(2^n/3)+2*a(n-1))` -/
def P9727081133863127820.Spec : Prop :=
  ∀ n, P9727081133863127820.a n = A255467 n

end A255467

/-! ## A255467.P10550531158164764727

`2*A001045(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A255467.P10550531158164764727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001045 n + 4 * a (n - 1)

end

end A255467.P10550531158164764727

namespace A255467

/-- `2*A001045(n)+4*a(n-1)` -/
def P10550531158164764727.Spec : Prop :=
  ∀ n, P10550531158164764727.a n = A255467 n

end A255467

/-! ## A255467.P6710985986526357686

`2*(a(n-1)+A152046(n)+a(n-1))` with `a(0)=1`
-/

namespace A255467.P6710985986526357686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (A152046 n + a (n - 1)))

end

end A255467.P6710985986526357686

namespace A255467

/-- `2*(a(n-1)+A152046(n)+a(n-1))` -/
def P6710985986526357686.Spec : Prop :=
  ∀ n, P6710985986526357686.a n = A255467 n

end A255467

/-! ## A255467.P12375047406025043392

`A000079(n)²+2*A109765(n)`
-/

namespace A255467.P12375047406025043392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + 2 * A109765 n

end

end A255467.P12375047406025043392

namespace A255467

/-- `A000079(n)²+2*A109765(n)` -/
def P12375047406025043392.Spec : Prop :=
  ∀ n, P12375047406025043392.a n = A255467 n

end A255467

/-! ## A255467.P6866147110145049944

`Δ[A122117(n)-A001045(n+1)]`
-/

namespace A255467.P6866147110145049944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n - A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255467.P6866147110145049944

namespace A255467

/-- `Δ[A122117(n)-A001045(n+1)]` -/
def P6866147110145049944.Spec : Prop :=
  ∀ n, P6866147110145049944.a n = A255467 n

end A255467

/-! ## A255467.P18318496254271250130

`Δ[A122117(n)]-2*A001045(n)`
-/

namespace A255467.P18318496254271250130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A001045 n

end

end A255467.P18318496254271250130

namespace A255467

/-- `Δ[A122117(n)]-2*A001045(n)` -/
def P18318496254271250130.Spec : Prop :=
  ∀ n, P18318496254271250130.a n = A255467 n

end A255467

/-! ## A255467.P16167727146072898688

`A151754(2*n+1)-A000975(n)`
-/

namespace A255467.P16167727146072898688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151754 (2 * n + 1) - A000975 n

end

end A255467.P16167727146072898688

namespace A255467

/-- `A151754(2*n+1)-A000975(n)` -/
def P16167727146072898688.Spec : Prop :=
  ∀ n, P16167727146072898688.a n = A255467 n

end A255467

/-! ## A255467.P5009603090443335316

`Δ[Δ[A015521(n)]-A001045(n+1)]`
-/

namespace A255467.P5009603090443335316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255467.P5009603090443335316

namespace A255467

/-- `Δ[Δ[A015521(n)]-A001045(n+1)]` -/
def P5009603090443335316.Spec : Prop :=
  ∀ n, P5009603090443335316.a n = A255467 n

end A255467

/-! ## A255467.P13394199091332043944

`A108981(n)+A122117(n)-A001045(n+1)`
-/

namespace A255467.P13394199091332043944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108981 n + (A122117 n - A001045 (n + 1))

end

end A255467.P13394199091332043944

namespace A255467

/-- `A108981(n)+A122117(n)-A001045(n+1)` -/
def P13394199091332043944.Spec : Prop :=
  ∀ n, P13394199091332043944.a n = A255467 n

end A255467

/-! ## A255467.P2530012379050363463

`A015521(n+1)+A000302(n)-A001045(n+1)`
-/

namespace A255467.P2530012379050363463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + (A000302 n - A001045 (n + 1))

end

end A255467.P2530012379050363463

namespace A255467

/-- `A015521(n+1)+A000302(n)-A001045(n+1)` -/
def P2530012379050363463.Spec : Prop :=
  ∀ n, P2530012379050363463.a n = A255467 n

end A255467

/-! ## A255467.P15883913799088380635

`A117616(n+1)-(A002450(n)+A001045(n+1))`
-/

namespace A255467.P15883913799088380635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117616 (n + 1) - (A002450 n + A001045 (n + 1))

end

end A255467.P15883913799088380635

namespace A255467

/-- `A117616(n+1)-(A002450(n)+A001045(n+1))` -/
def P15883913799088380635.Spec : Prop :=
  ∀ n, P15883913799088380635.a n = A255467 n

end A255467

/-! ## A255467.P8502840975244041459

`A363773(n+1)+A015521(n)-A005578(n+1)`
-/

namespace A255467.P8502840975244041459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 (n + 1) + (A015521 n - A005578 (n + 1))

end

end A255467.P8502840975244041459

namespace A255467

/-- `A363773(n+1)+A015521(n)-A005578(n+1)` -/
def P8502840975244041459.Spec : Prop :=
  ∀ n, P8502840975244041459.a n = A255467 n

end A255467

/-! ## A255467.P10232967813146308115

`A117616(n+1)-(A001045(2*n)+A001045(n+1))`
-/

namespace A255467.P10232967813146308115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117616 (n + 1) - (A001045 (2 * n) + A001045 (n + 1))

end

end A255467.P10232967813146308115

namespace A255467

/-- `A117616(n+1)-(A001045(2*n)+A001045(n+1))` -/
def P10232967813146308115.Spec : Prop :=
  ∀ n, P10232967813146308115.a n = A255467 n

end A255467

/-! ## A255467.P8432157253745849149

`A083593(2*n+1)-(A001045(2*n)+A001045(n+1))`
-/

namespace A255467.P8432157253745849149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083593 (2 * n + 1) - (A001045 (2 * n) + A001045 (n + 1))

end

end A255467.P8432157253745849149

namespace A255467

/-- `A083593(2*n+1)-(A001045(2*n)+A001045(n+1))` -/
def P8432157253745849149.Spec : Prop :=
  ∀ n, P8432157253745849149.a n = A255467 n

end A255467

/-! ## A255467.P9601572947700010762

`A016029(2*n+1)+A016029(2*(n+1))-A001045(n+1)`
-/

namespace A255467.P9601572947700010762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (2 * n + 1) + (A016029 (2 * (n + 1)) - A001045 (n + 1))

end

end A255467.P9601572947700010762

namespace A255467

/-- `A016029(2*n+1)+A016029(2*(n+1))-A001045(n+1)` -/
def P9601572947700010762.Spec : Prop :=
  ∀ n, P9601572947700010762.a n = A255467 n

end A255467

/-!
# A255468: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 157 when started with a single ON cell.

The programs for A255468, there is no canonical definition to state claims against.
-/

/-! ## A255468.P16641082152514337097

`∏{e}[A005940(n+1), A255469(#)]`
-/

namespace A255468.P16641082152514337097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255469 (Nat.factorization (f1 n).natAbs p)

end

end A255468.P16641082152514337097

/-! ## A255468.P12561067406656857370

`A246037(n)-A126869(A333883(n))²`
-/

namespace A255468.P12561067406656857370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246037 n - A126869 (A333883 n).toNat ^ 2

end

end A255468.P12561067406656857370

/-! ## A255468.P5892966513791033137

`A245565(A001787(n))*A246011(n)`
-/

namespace A255468.P5892966513791033137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (A001787 n).toNat * A246011 n

end

end A255468.P5892966513791033137

/-!
# A255469: A255468(2^n-1).

The programs for A255469, there is no canonical definition to state claims against.
-/

/-! ## A255469.P9049832505848946744

`A255468(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255469.P9049832505848946744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255468 (2 ^ n - 1)

end

end A255469.P9049832505848946744

/-! ## A255469.P1470720046056400193

`record[A255468(n)/A204455(n+1)]`
-/

namespace A255469.P1470720046056400193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255468 n : ℚ) / (A204455 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255469.P1470720046056400193

/-! ## A255469.P10531185045715301920

`A255468(A000225(n))+A126120(2*n+1)`
-/

namespace A255469.P10531185045715301920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255468 (A000225 n).toNat + A126120 (2 * n + 1)

end

end A255469.P10531185045715301920

/-! ## A255469.P10601082672057883236

`record[A255468(∑{d}[n, #])]`
-/

namespace A255469.P10601082672057883236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255468 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255469.P10601082672057883236

/-! ## A255469.P3048278194794282941

`record[A255468(n)%A255468(3*n+1)]`
-/

namespace A255469.P3048278194794282941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255468 n) (A255468 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255469.P3048278194794282941

/-!
# A255470: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 176 when started with a single ON cell.

The programs for A255470, the canonical program `A255470.P3773530374719199959` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255470 has offset 0).

The definition of A255470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255470.P3773530374719199959

`∏{e}[A278222(n), A255471(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A255470

/-- `∏{e}[A278222(n), A255471(#)]` -/
def P3773530374719199959.Spec : Prop :=
  ∀ n, P3773530374719199959.a n = A255470 n

theorem P3773530374719199959.correct : P3773530374719199959.Spec := by
  intro n
  simp only [A255470]

end A255470

/-! ## A255470.P6407398518413861070

`∏{e}[A005940(n+1), A255471(#)]`
-/

namespace A255470.P6407398518413861070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255471 (Nat.factorization (f1 n).natAbs p)

end

end A255470.P6407398518413861070

namespace A255470

/-- `∏{e}[A005940(n+1), A255471(#)]` -/
def P6407398518413861070.Spec : Prop :=
  ∀ n, P6407398518413861070.a n = A255470 n

end A255470

/-! ## A255470.P11847271037342427078

`A096135(A255295(n))`
-/

namespace A255470.P11847271037342427078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A255295 n).toNat

end

end A255470.P11847271037342427078

namespace A255470

/-- `A096135(A255295(n))` -/
def P11847271037342427078.Spec : Prop :=
  ∀ n, P11847271037342427078.a n = A255470 n

end A255470

/-! ## A255470.P16432110932919818808

`A253100(n)+A178798(A255304(n))²`
-/

namespace A255470.P16432110932919818808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253100 n + A178798 (A255304 n).toNat ^ 2

end

end A255470.P16432110932919818808

namespace A255470

/-- `A253100(n)+A178798(A255304(n))²` -/
def P16432110932919818808.Spec : Prop :=
  ∀ n, P16432110932919818808.a n = A255470 n

end A255470

/-! ## A255470.P13906162069969344326

`A255295(n)+2*A093486(A255298(n))`
-/

namespace A255470.P13906162069969344326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 n + 2 * A093486 (A255298 n).toNat

end

end A255470.P13906162069969344326

namespace A255470

/-- `A255295(n)+2*A093486(A255298(n))` -/
def P13906162069969344326.Spec : Prop :=
  ∀ n, P13906162069969344326.a n = A255470 n

end A255470

/-!
# A255471: a(n) = A255470(2^n-1).

The programs for A255471, the canonical program `A255471.P17906293098878482376` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255471 has offset 0).

The definition of A255471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255471.P17906293098878482376

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255471

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P17906293098878482376.Spec : Prop :=
  ∀ n, P17906293098878482376.a n = A255471 n

theorem P17906293098878482376.correct : P17906293098878482376.Spec := by
  intro n
  simp only [A255471]

end A255471

/-! ## A255471.P14158790106869260281

`A255470(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255471.P14158790106869260281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255470 (2 ^ n - 1)

end

end A255471.P14158790106869260281

namespace A255471

/-- `A255470(2^n-1)` -/
def P14158790106869260281.Spec : Prop :=
  ∀ n, P14158790106869260281.a n = A255471 n

end A255471

/-! ## A255471.P8560828337463968636

`ogf((1+3x)/(1-3x-6x^2+8x^3))`
-/

namespace A255471.P8560828337463968636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -6, 8] n

end

end A255471.P8560828337463968636

namespace A255471

/-- `ogf((1+3x)/(1-3x-6x^2+8x^3))` -/
def P8560828337463968636.Spec : Prop :=
  ∀ n, P8560828337463968636.a n = A255471 n

end A255471

/-! ## A255471.P8551181058439968396

`∑[2*(a(n-1)+4*a(n-2))]` with `a(0)=1, a(1)=5`
-/

namespace A255471.P8551181058439968396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * (f1 (n - 1) + 4 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255471.P8551181058439968396

namespace A255471

/-- `∑[2*(a(n-1)+4*a(n-2))]` -/
def P8551181058439968396.Spec : Prop :=
  ∀ n, (P8551181058439968396.a n : ℤ) = A255471 n

end A255471

/-! ## A255471.P14542084533033095326

`∑[2*(4-(4*(1-a(n-2))-a(n-1)))]` with `a(0)=1, a(1)=5`
-/

namespace A255471.P14542084533033095326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * (4 - (4 * (1 - f1 (n - 2)) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255471.P14542084533033095326

namespace A255471

/-- `∑[2*(4-(4*(1-a(n-2))-a(n-1)))]` -/
def P14542084533033095326.Spec : Prop :=
  ∀ n, P14542084533033095326.a n = A255471 n

end A255471

/-! ## A255471.P15958514636338803245

`∑[A370627(n)]`
-/

namespace A255471.P15958514636338803245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255471.P15958514636338803245

namespace A255471

/-- `∑[A370627(n)]` -/
def P15958514636338803245.Spec : Prop :=
  ∀ n, P15958514636338803245.a n = A255471 n

end A255471

/-! ## A255471.P5124667922677021233

`∑[A003683(n)+4^n]`
-/

namespace A255471.P5124667922677021233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255471.P5124667922677021233

namespace A255471

/-- `∑[A003683(n)+4^n]` -/
def P5124667922677021233.Spec : Prop :=
  ∀ n, P5124667922677021233.a n = A255471 n

end A255471

/-! ## A255471.P2921255909424330087

`A083597(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A255471.P2921255909424330087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083597 n - 2 * a (n - 1)

end

end A255471.P2921255909424330087

namespace A255471

/-- `A083597(n)-2*a(n-1)` -/
def P2921255909424330087.Spec : Prop :=
  ∀ n, P2921255909424330087.a n = A255471 n

end A255471

/-! ## A255471.P11633043601155876328

`A084247(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A255471.P11633043601155876328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084247 n + 4 * a (n - 1)

end

end A255471.P11633043601155876328

namespace A255471

/-- `A084247(n)+4*a(n-1)` -/
def P11633043601155876328.Spec : Prop :=
  ∀ n, P11633043601155876328.a n = A255471 n

end A255471

/-! ## A255471.P8046170878490913000

`A206374(n)-(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A255471.P8046170878490913000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206374 n - (2 * a (n - 1) + 1)

end

end A255471.P8046170878490913000

namespace A255471

/-- `A206374(n)-(2*a(n-1)+1)` -/
def P8046170878490913000.Spec : Prop :=
  ∀ n, P8046170878490913000.a n = A255471 n

end A255471

/-! ## A255471.P6738377355185543025

`A047849(n)+2*(4^n-(a(n-1)+1))` with `a(0)=1`
-/

namespace A255471.P6738377355185543025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047849 n + 2 * ((4 ^ n : ℤ) - (a (n - 1) + 1))

end

end A255471.P6738377355185543025

namespace A255471

/-- `A047849(n)+2*(4^n-(a(n-1)+1))` -/
def P6738377355185543025.Spec : Prop :=
  ∀ n, P6738377355185543025.a n = A255471 n

end A255471

/-! ## A255471.P14416401836771395605

`∑[A246036(n)-A003683(n)]`
-/

namespace A255471.P14416401836771395605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n - A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255471.P14416401836771395605

namespace A255471

/-- `∑[A246036(n)-A003683(n)]` -/
def P14416401836771395605.Spec : Prop :=
  ∀ n, P14416401836771395605.a n = A255471 n

end A255471

/-! ## A255471.P10122038367247313544

`A084175(n)+A002450(n+1)`
-/

namespace A255471.P10122038367247313544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A002450 (n + 1)

end

end A255471.P10122038367247313544

namespace A255471

/-- `A084175(n)+A002450(n+1)` -/
def P10122038367247313544.Spec : Prop :=
  ∀ n, P10122038367247313544.a n = A255471 n

end A255471

/-! ## A255471.P12025632966985749388

`A080675(n+1)-A253068(n)`
-/

namespace A255471.P12025632966985749388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A253068 n

end

end A255471.P12025632966985749388

namespace A255471

/-- `A080675(n+1)-A253068(n)` -/
def P12025632966985749388.Spec : Prop :=
  ∀ n, P12025632966985749388.a n = A255471 n

end A255471

/-! ## A255471.P6069699329494636854

`A001045(n+1)*A083595(n)`
-/

namespace A255471.P6069699329494636854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A083595 n

end

end A255471.P6069699329494636854

namespace A255471

/-- `A001045(n+1)*A083595(n)` -/
def P6069699329494636854.Spec : Prop :=
  ∀ n, P6069699329494636854.a n = A255471 n

end A255471

/-! ## A255471.P9602362730273883671

`A084175(n)+A052992(2*n)`
-/

namespace A255471.P9602362730273883671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A052992 (2 * n)

end

end A255471.P9602362730273883671

namespace A255471

/-- `A084175(n)+A052992(2*n)` -/
def P9602362730273883671.Spec : Prop :=
  ∀ n, P9602362730273883671.a n = A255471 n

end A255471

/-! ## A255471.P13488364225178289512

`A097164(n)/2*A137208(n)`
-/

namespace A255471.P13488364225178289512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097164 n : ℚ) / 2 * (A137208 n : ℚ)

end

end A255471.P13488364225178289512

namespace A255471

/-- `A097164(n)/2*A137208(n)` -/
def P13488364225178289512.Spec : Prop :=
  ∀ n, P13488364225178289512.a n = (A255471 n : ℚ)

end A255471

/-! ## A255471.P13028328789372139792

`A084175(n)+A000975(2*n+1)`
-/

namespace A255471.P13028328789372139792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A000975 (2 * n + 1)

end

end A255471.P13028328789372139792

namespace A255471

/-- `A084175(n)+A000975(2*n+1)` -/
def P13028328789372139792.Spec : Prop :=
  ∀ n, P13028328789372139792.a n = A255471 n

end A255471

/-! ## A255471.P3324063051897600869

`A084175(n)+A001045(2*(n+1))`
-/

namespace A255471.P3324063051897600869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A001045 (2 * (n + 1))

end

end A255471.P3324063051897600869

namespace A255471

/-- `A084175(n)+A001045(2*(n+1))` -/
def P3324063051897600869.Spec : Prop :=
  ∀ n, P3324063051897600869.a n = A255471 n

end A255471

/-! ## A255471.P5730316187052690165

`A097038(2*n+1)+A084175(n)`
-/

namespace A255471.P5730316187052690165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (2 * n + 1) + A084175 n

end

end A255471.P5730316187052690165

namespace A255471

/-- `A097038(2*n+1)+A084175(n)` -/
def P5730316187052690165.Spec : Prop :=
  ∀ n, P5730316187052690165.a n = A255471 n

end A255471

/-!
# A255472: Number of decompositions of 2n into sums of two primes p <= q such that one or both p and q are elements of A023201.

The programs for A255472, there is no canonical definition to state claims against.
-/

/-! ## A255472.P17516776405698640799

`∑{p}[A049955(n+1)-A071340(n), A001222(#)]`
-/

namespace A255472.P17516776405698640799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049955 (n + 1) - A071340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A255472.P17516776405698640799

/-! ## A255472.P11786391634105247938

`A002375(n+1)-A118174(A124560(3*n+2))`
-/

namespace A255472.P11786391634105247938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A118174 (A124560 (3 * n + 2)).toNat

end

end A255472.P11786391634105247938

/-!
# A255473: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 257 when started with a single ON cell.

The programs for A255473, there is no canonical definition to state claims against.
-/

/-! ## A255473.P17356595349193219647

`A255295(n)-A093486(A255298(n))`
-/

namespace A255473.P17356595349193219647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 n - A093486 (A255298 n).toNat

end

end A255473.P17356595349193219647

/-! ## A255473.P952551566832189724

`A253100(n)-A241069(A278159(n))`
-/

namespace A255473.P952551566832189724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253100 n - A241069 (A278159 n).toNat

end

end A255473.P952551566832189724

/-! ## A255473.P13347506839824995575

`A255295(n)-A178798(A255304(n))²`
-/

namespace A255473.P13347506839824995575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 n - A178798 (A255304 n).toNat ^ 2

end

end A255473.P13347506839824995575

/-! ## A255473.P5210866906391957041

`A132075(A246037(n))`
-/

namespace A255473.P5210866906391957041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A246037 n).toNat

end

end A255473.P5210866906391957041

/-!
# A255474: a(n) = A255473(2^n-1).

The programs for A255474, the canonical program `A255474.P13154987678627239269` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255474 has offset 0).

The definition of A255474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255474.P13154987678627239269

`6*a(n-1)-4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=88`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255474

/-- `6*a(n-1)-4*a(n-2)-16*a(n-3)` -/
def P13154987678627239269.Spec : Prop :=
  ∀ n, P13154987678627239269.a n = A255474 n

theorem P13154987678627239269.correct : P13154987678627239269.Spec := by
  intro n
  simp only [A255474]

end A255474

/-! ## A255474.P14631274113382019632

`A255473(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255474.P14631274113382019632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255473 (2 ^ n - 1)

end

end A255474.P14631274113382019632

namespace A255474

/-- `A255473(2^n-1)` -/
def P14631274113382019632.Spec : Prop :=
  ∀ n, P14631274113382019632.a n = A255474 n

end A255474

/-! ## A255474.P1880443181273496078

`or(4^n, A063727(n))`
-/

namespace A255474.P1880443181273496078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A063727 n)

end

end A255474.P1880443181273496078

namespace A255474

/-- `or(4^n, A063727(n))` -/
def P1880443181273496078.Spec : Prop :=
  ∀ n, P1880443181273496078.a n = A255474 n

end A255474

/-! ## A255474.P2939270865640081568

`A063727(n)+(2*A131577(n))²`
-/

namespace A255474.P2939270865640081568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + (2 * A131577 n) ^ 2

end

end A255474.P2939270865640081568

namespace A255474

/-- `A063727(n)+(2*A131577(n))²` -/
def P2939270865640081568.Spec : Prop :=
  ∀ n, P2939270865640081568.a n = A255474 n

end A255474

/-! ## A255474.P9079397925749737376

`or(A000079(n)², A085449(n+1))`
-/

namespace A255474.P9079397925749737376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n ^ 2) (A085449 (n + 1))

end

end A255474.P9079397925749737376

namespace A255474

/-- `or(A000079(n)², A085449(n+1))` -/
def P9079397925749737376.Spec : Prop :=
  ∀ n, P9079397925749737376.a n = A255474 n

end A255474

/-! ## A255474.P14003475214515813216

`or(A063727(n), A131577(n+1)²)`
-/

namespace A255474.P14003475214515813216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063727 n) (A131577 (n + 1) ^ 2)

end

end A255474.P14003475214515813216

namespace A255474

/-- `or(A063727(n), A131577(n+1)²)` -/
def P14003475214515813216.Spec : Prop :=
  ∀ n, P14003475214515813216.a n = A255474 n

end A255474

/-! ## A255474.P6229399605600010531

`record[or(A122803(n), A171648(n+1))]`
-/

namespace A255474.P6229399605600010531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122803 n) (A171648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255474.P6229399605600010531

namespace A255474

/-- `record[or(A122803(n), A171648(n+1))]` -/
def P6229399605600010531.Spec : Prop :=
  ∀ n, P6229399605600010531.a n = A255474 n

end A255474

/-! ## A255474.P18330064079418458022

`or(A000079(2*n), A085449(n+1))`
-/

namespace A255474.P18330064079418458022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (2 * n)) (A085449 (n + 1))

end

end A255474.P18330064079418458022

namespace A255474

/-- `or(A000079(2*n), A085449(n+1))` -/
def P18330064079418458022.Spec : Prop :=
  ∀ n, P18330064079418458022.a n = A255474 n

end A255474

/-! ## A255474.P15459414748090074347

`or(A063727(n), A131577(2*n+1))`
-/

namespace A255474.P15459414748090074347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063727 n) (A131577 (2 * n + 1))

end

end A255474.P15459414748090074347

namespace A255474

/-- `or(A063727(n), A131577(2*n+1))` -/
def P15459414748090074347.Spec : Prop :=
  ∀ n, P15459414748090074347.a n = A255474 n

end A255474

/-! ## A255474.P11022033811223492956

`or(∑[A084057(n)], A131577(n+1)²)`
-/

namespace A255474.P11022033811223492956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A131577 (n + 1) ^ 2)

end

end A255474.P11022033811223492956

namespace A255474

/-- `or(∑[A084057(n)], A131577(n+1)²)` -/
def P11022033811223492956.Spec : Prop :=
  ∀ n, P11022033811223492956.a n = A255474 n

end A255474

/-! ## A255474.P15677500645068148825

`A085449(n+1)+(2*A131577(n))²`
-/

namespace A255474.P15677500645068148825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1) + (2 * A131577 n) ^ 2

end

end A255474.P15677500645068148825

namespace A255474

/-- `A085449(n+1)+(2*A131577(n))²` -/
def P15677500645068148825.Spec : Prop :=
  ∀ n, P15677500645068148825.a n = A255474 n

end A255474

/-! ## A255474.P3426614364533380405

`or(A122803(n)², A171648(2*n+1))`
-/

namespace A255474.P3426614364533380405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122803 n ^ 2) (A171648 (2 * n + 1))

end

end A255474.P3426614364533380405

namespace A255474

/-- `or(A122803(n)², A171648(2*n+1))` -/
def P3426614364533380405.Spec : Prop :=
  ∀ n, P3426614364533380405.a n = A255474 n

end A255474

/-! ## A255474.P5704022421558873358

`or(∑[A084057(n)], A131577(2*n+1))`
-/

namespace A255474.P5704022421558873358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A131577 (2 * n + 1))

end

end A255474.P5704022421558873358

namespace A255474

/-- `or(∑[A084057(n)], A131577(2*n+1))` -/
def P5704022421558873358.Spec : Prop :=
  ∀ n, P5704022421558873358.a n = A255474 n

end A255474

/-! ## A255474.P4077526404723991587

`A085449(n+1)+2*A131577(2*n)`
-/

namespace A255474.P4077526404723991587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1) + 2 * A131577 (2 * n)

end

end A255474.P4077526404723991587

namespace A255474

/-- `A085449(n+1)+2*A131577(2*n)` -/
def P4077526404723991587.Spec : Prop :=
  ∀ n, P4077526404723991587.a n = A255474 n

end A255474

/-! ## A255474.P3866366998829717603

`or(A122803(2*n), A171648(2*n+1))`
-/

namespace A255474.P3866366998829717603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122803 (2 * n)) (A171648 (2 * n + 1))

end

end A255474.P3866366998829717603

namespace A255474

/-- `or(A122803(2*n), A171648(2*n+1))` -/
def P3866366998829717603.Spec : Prop :=
  ∀ n, P3866366998829717603.a n = A255474 n

end A255474

/-! ## A255474.P11687030326422044706

`2^n*or(A000045(n+1), A000079(n))`
-/

namespace A255474.P11687030326422044706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.lor (A000045 (n + 1)) (A000079 n)

end

end A255474.P11687030326422044706

namespace A255474

/-- `2^n*or(A000045(n+1), A000079(n))` -/
def P11687030326422044706.Spec : Prop :=
  ∀ n, P11687030326422044706.a n = A255474 n

end A255474

/-! ## A255474.P781561480801097292

`or(∑[A203579(n)-1], A131577(n+1)²)`
-/

namespace A255474.P781561480801097292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A131577 (n + 1) ^ 2)

end

end A255474.P781561480801097292

namespace A255474

/-- `or(∑[A203579(n)-1], A131577(n+1)²)` -/
def P781561480801097292.Spec : Prop :=
  ∀ n, P781561480801097292.a n = A255474 n

end A255474

/-! ## A255474.P11314556253936989649

`or(∑[A203579(n)-1], A131577(2*n+1))`
-/

namespace A255474.P11314556253936989649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A131577 (2 * n + 1))

end

end A255474.P11314556253936989649

namespace A255474

/-- `or(∑[A203579(n)-1], A131577(2*n+1))` -/
def P11314556253936989649.Spec : Prop :=
  ∀ n, P11314556253936989649.a n = A255474 n

end A255474

/-! ## A255474.P4212275384453511870

`or(∑[2^(n-1)*A000032(n)], A131577(n+1)²)`
-/

namespace A255474.P4212275384453511870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A131577 (n + 1) ^ 2)

end

end A255474.P4212275384453511870

namespace A255474

/-- `or(∑[2^(n-1)*A000032(n)], A131577(n+1)²)` -/
def P4212275384453511870.Spec : Prop :=
  ∀ n, P4212275384453511870.a n = A255474 n

end A255474

/-! ## A255474.P11164737039785272419

`or(∑[2^(n-1)*A000032(n)], A131577(2*n+1))`
-/

namespace A255474.P11164737039785272419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A131577 (2 * n + 1))

end

end A255474.P11164737039785272419

namespace A255474

/-- `or(∑[2^(n-1)*A000032(n)], A131577(2*n+1))` -/
def P11164737039785272419.Spec : Prop :=
  ∀ n, P11164737039785272419.a n = A255474 n

end A255474

/-!
# A255475: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 173 when started with a single ON cell.

The programs for A255475, there is no canonical definition to state claims against.
-/

/-! ## A255475.P10547412685273104025

`A096135(A255470(n))`
-/

namespace A255475.P10547412685273104025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A255470 n).toNat

end

end A255475.P10547412685273104025

/-! ## A255475.P16095209951133067287

`A255295(n)+A178798(A255304(n))`
-/

namespace A255475.P16095209951133067287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 n + A178798 (A255304 n).toNat

end

end A255475.P16095209951133067287

/-! ## A255475.P6282281529211394996

`A253100(n)-A178798(A255304(n))`
-/

namespace A255475.P6282281529211394996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253100 n - A178798 (A255304 n).toNat

end

end A255475.P6282281529211394996

/-! ## A255475.P8441554993318336309

`A255295(n)+A093486(A255298(n))/2`
-/

namespace A255475.P8441554993318336309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255295 n : ℚ) + (A093486 (A255298 n).toNat : ℚ) / 2

end

end A255475.P8441554993318336309

/-! ## A255475.P2146215055682865085

`A247640(n)-A000122(A096681(3*n+1))`
-/

namespace A255475.P2146215055682865085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247640 n - A000122 (A096681 (3 * n + 1)).toNat

end

end A255475.P2146215055682865085

/-!
# A255476: A255475(2^n-1).

The programs for A255476, there is no canonical definition to state claims against.
-/

/-! ## A255476.P17564075921766457081

`A255475(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255476.P17564075921766457081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255475 (2 ^ n - 1)

end

end A255476.P17564075921766457081

/-! ## A255476.P11016802356866622119

`record[A036987(n)*A255475(n)]`
-/

namespace A255476.P11016802356866622119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A255475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255476.P11016802356866622119

/-! ## A255476.P8217218151950125631

`record[A255475(∑{d}[n, #])]`
-/

namespace A255476.P8217218151950125631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255475 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255476.P8217218151950125631

/-! ## A255476.P14482227149830469719

`record[A255475(A269162(n))]`
-/

namespace A255476.P14482227149830469719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255475 (A269162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255476.P14482227149830469719

/-! ## A255476.P12047412257788206250

`record[A255475(n)/A352035(2*(n+1))]`
-/

namespace A255476.P12047412257788206250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255475 n : ℚ) / (A352035 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255476.P12047412257788206250

/-!
# A255478: The subsequence A255477(2^n-1).

The programs for A255478, there is no canonical definition to state claims against.
-/

/-! ## A255478.P6113036291204728252

`A255477(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255478.P6113036291204728252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255477 (2 ^ n - 1)

end

end A255478.P6113036291204728252

/-! ## A255478.P14489267318579153065

`record[A255477(∑{d}[n, #])]`
-/

namespace A255478.P14489267318579153065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255477 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255478.P14489267318579153065

/-!
# A255479: Inverse permutation to A255582.

The programs for A255479, there is no canonical definition to state claims against.
-/

/-! ## A255479.P2543444167067554753

`A064664(n+1)-A255482(n+1)`
-/

namespace A255479.P2543444167067554753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) - A255482 (n + 1)

end

end A255479.P2543444167067554753

/-! ## A255479.P15737261990119545150

`A064421(n+1)+1-A255482(n+1)`
-/

namespace A255479.P15737261990119545150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) + (1 - A255482 (n + 1))

end

end A255479.P15737261990119545150

/-! ## A255479.P13111955651515445487

`A064664(n+1)+A134824(n)*A255482(n+1)`
-/

namespace A255479.P13111955651515445487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) + A134824 n * A255482 (n + 1)

end

end A255479.P13111955651515445487

/-! ## A255479.P10395811490944540350

`A064664(n+1)+A255482(n+1)*A260196(n)`
-/

namespace A255479.P10395811490944540350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) + A255482 (n + 1) * A260196 n

end

end A255479.P10395811490944540350

/-! ## A255479.P6015206253320698041

`A304526(n+1)+A304527(n+1)-A255482(n+1)`
-/

namespace A255479.P6015206253320698041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1) + (A304527 (n + 1) - A255482 (n + 1))

end

end A255479.P6015206253320698041

/-! ## A255479.P6401065569896211684

`A323412(n+1)-(A323411(n+1)+A255482(n+1))`
-/

namespace A255479.P6401065569896211684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A323411 (n + 1) + A255482 (n + 1))

end

end A255479.P6401065569896211684

/-!
# A255480: a(n) = gcd(b(n),b(n-2)), where b(n) = A255582(n).

The programs for A255480, there is no canonical definition to state claims against.
-/

/-! ## A255480.P8357015646242213665

`gcd(A255582(n+3), A255582(n+1))`
-/

namespace A255480.P8357015646242213665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255582 (n + 3)) (A255582 (n + 1))

end

end A255480.P8357015646242213665

/-!
# A255481: a(n) = gcd(b(n),b(n-1)), where b(n) = A255582(n).

The programs for A255481, there is no canonical definition to state claims against.
-/

/-! ## A255481.P3345433731580958551

`gcd(A255582(n+1), A255582(n+2))`
-/

namespace A255481.P3345433731580958551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255582 (n + 1)) (A255582 (n + 2))

end

end A255481.P3345433731580958551

/-! ## A255481.P21818761140021665

`gcd(A000196(A140136(n+1)), A302243(n))`
-/

namespace A255481.P21818761140021665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A140136 (n + 1)).toNat) (A302243 n)

end

end A255481.P21818761140021665

/-! ## A255481.P1338454949526220559

`A007318(and(A097157(n+3), A097158(n+12)))`
-/

namespace A255481.P1338454949526220559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A097157 (n + 3)) (A097158 (n + 12))).toNat

end

end A255481.P1338454949526220559

/-! ## A255481.P7983146994453362889

`A118914(or(A124418(n+4), A135668(n+1)))`
-/

namespace A255481.P7983146994453362889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (Int.lor (A124418 (n + 4)) (A135668 (n + 1))).toNat

end

end A255481.P7983146994453362889

/-!
# A255482: a(n) = A064664(n)-A255479(n).

The programs for A255482, there is no canonical definition to state claims against.
-/

/-! ## A255482.P11369884553884246035

`A064664(n+1)-A255479(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255482.P11369884553884246035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) - A255479 (n + 1)

end

end A255482.P11369884553884246035

/-! ## A255482.P15956280968522922667

`A064421(n+1)+1-A255479(n+1)`
-/

namespace A255482.P15956280968522922667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) + (1 - A255479 (n + 1))

end

end A255482.P15956280968522922667

/-! ## A255482.P16847301965862500764

`∑{d}[n+1, A304526(#)]-A255479(n+1)`
-/

namespace A255482.P16847301965862500764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304526 d - A255479 (n + 1)

end

end A255482.P16847301965862500764

/-! ## A255482.P6435377636981294099

`∑{d}[n+1, #*A349617((n+1)/#)]-A255479(n+1)`
-/

namespace A255482.P6435377636981294099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A255479 (n + 1)

end

end A255482.P6435377636981294099

/-! ## A255482.P18045487718824580951

`A304526(n+1)+A304527(n+1)-A255479(n+1)`
-/

namespace A255482.P18045487718824580951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1) + (A304527 (n + 1) - A255479 (n + 1))

end

end A255482.P18045487718824580951

/-! ## A255482.P11452746473797399044

`A323412(n+1)-(A323411(n+1)+A255479(n+1))`
-/

namespace A255482.P11452746473797399044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A323411 (n + 1) + A255479 (n + 1))

end

end A255482.P11452746473797399044

/-! ## A255482.P836547211987803168

`∑{d}[n+1, A064413(#)*A349614((n+1)/#)]-A255479(n+1)`
-/

namespace A255482.P836547211987803168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064413 d * A349614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A255479 (n + 1)

end

end A255482.P836547211987803168

/-! ## A255482.P7048244167164062751

`A064421(n+1)-A023443(A255479(n+1))`
-/

namespace A255482.P7048244167164062751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) - A023443 (A255479 (n + 1)).toNat

end

end A255482.P7048244167164062751

/-!
# A255483: Infinite square array read by antidiagonals downwards: T(0,m) = prime(m), m >= 1; for n >= 1, T(n,m) = T(n-1,m)*T(n-1,m+1)/gcd(T(n-1,m), T(n-1,m+1))^2, m >= 1.

The programs for A255483, there is no canonical definition to state claims against.
-/

/-! ## A255483.P2946699909832434927

`A007913(A066117(n+1))`
-/

namespace A255483.P2946699909832434927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A066117 (n + 1)).toNat

end

end A255483.P2946699909832434927

/-! ## A255483.P16731690135208810772

`A276578(A061579(n))`
-/

namespace A255483.P16731690135208810772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276578 (A061579 n).toNat

end

end A255483.P16731690135208810772

/-! ## A255483.P12712190846281840082

`A276578(A114327(n)+n)`
-/

namespace A255483.P12712190846281840082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276578 (A114327 n + (n : ℤ)).toNat

end

end A255483.P12712190846281840082

/-! ## A255483.P15795538487183806717

`A276578(A038722(n+1)-1)`
-/

namespace A255483.P15795538487183806717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276578 (A038722 (n + 1) - 1).toNat

end

end A255483.P15795538487183806717

/-! ## A255483.P4419383071977685394

`A276578(A002378(n)%A014132(n+1))`
-/

namespace A255483.P4419383071977685394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276578 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A255483.P4419383071977685394

/-! ## A255483.P10085444486722841556

`A276578(A127739(n+1)-A002260(n+1))`
-/

namespace A255483.P10085444486722841556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276578 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A255483.P10085444486722841556

/-! ## A255483.P7795885714836411053

`A365810(A276618(n))`
-/

namespace A255483.P7795885714836411053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A276618 n).toNat

end

end A255483.P7795885714836411053

/-! ## A255483.P6273298781767998473

`A019565(A099884(n))`
-/

namespace A255483.P6273298781767998473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A099884 n).toNat

end

end A255483.P6273298781767998473

/-!
# A255484: a(n) = Product_{k=0..n} prime(k+1)*(binomial(n,k) mod 2).

The programs for A255484, there is no canonical definition to state claims against.
-/

/-! ## A255484.P3311891869488526226

`char[2^n-1]*A123098(n)`
-/

namespace A255484.P3311891869488526226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A123098 n

end

end A255484.P3311891869488526226

/-! ## A255484.P2566280294164191391

`char[2^n-1]*A002110(2^val(n+1, 2))`
-/

namespace A255484.P2566280294164191391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002110 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A255484.P2566280294164191391

/-! ## A255484.P13083848021201235720

`char[2^n-1]*A002110(2^∑{e}[n+1, #])`
-/

namespace A255484.P13083848021201235720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002110 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A255484.P13083848021201235720

/-! ## A255484.P2186427814534634768

`A002110(A046523(n+1))*A036987(n)`
-/

namespace A255484.P2186427814534634768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A046523 (n + 1)).toNat * A036987 n

end

end A255484.P2186427814534634768

/-! ## A255484.P13192404110294176864

`A002110(A034699(n+1))*A036987(n)`
-/

namespace A255484.P13192404110294176864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A034699 (n + 1)).toNat * A036987 n

end

end A255484.P13192404110294176864

/-! ## A255484.P13733963559485727379

`A002110(A053585(n+1))*A036987(n)`
-/

namespace A255484.P13733963559485727379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A053585 (n + 1)).toNat * A036987 n

end

end A255484.P13733963559485727379

/-! ## A255484.P16001468505405154035

`A002110(A330691(n+1))*A036987(n)`
-/

namespace A255484.P16001468505405154035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A330691 (n + 1)).toNat * A036987 n

end

end A255484.P16001468505405154035

/-! ## A255484.P4786206875785139704

`A002110(A330741(n+1))*A036987(n)`
-/

namespace A255484.P4786206875785139704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A330741 (n + 1)).toNat * A036987 n

end

end A255484.P4786206875785139704

/-! ## A255484.P11879498521684988527

`A002110(A036987(n)+n)*A036987(n)`
-/

namespace A255484.P11879498521684988527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A036987 n + (n : ℤ)).toNat * A036987 n

end

end A255484.P11879498521684988527

/-! ## A255484.P11629580696969982420

`lcm(A002110(A319626(n+1)), A069517(n+1))`
-/

namespace A255484.P11629580696969982420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 (A319626 (n + 1)).toNat) (A069517 (n + 1))

end

end A255484.P11629580696969982420

/-!
# A255487: Number of polyhypercubes or 4-dimensional polyominoes with n cells (regarding mirror-images as distinct).

The programs for A255487, there is no canonical definition to state claims against.
-/

/-! ## A255487.P10213170767668058589

`A241086(A187154(n))`
-/

namespace A255487.P10213170767668058589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (A187154 n).toNat

end

end A255487.P10213170767668058589

/-! ## A255487.P5464492938900848405

`A305194(A262146(n))`
-/

namespace A255487.P5464492938900848405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A262146 n).toNat

end

end A255487.P5464492938900848405

/-! ## A255487.P12083609779700994202

`A305194(A020956(n+1))`
-/

namespace A255487.P12083609779700994202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A020956 (n + 1)).toNat

end

end A255487.P12083609779700994202

/-!
# A255489: Row 3 of array in A211400.

The programs for A255489, there is no canonical definition to state claims against.
-/

/-! ## A255489.P16951295466824047479

`A211400(∑[n+2]+4)`
-/

namespace A255489.P16951295466824047479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211400 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255489.P16951295466824047479

/-! ## A255489.P10609780851419574980

`record[A211400(∑[A300708(n)])]`
-/

namespace A255489.P10609780851419574980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211400 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255489.P10609780851419574980

/-!
# A255490: The subsequence A247649(2^n-1).

The programs for A255490, the canonical program `A255490.P13741243257840323374` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255490 has offset 0).

The definition of A255490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255490.P12766628435126337112

`A247649(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255490.P12766628435126337112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 ^ n - 1)

end

end A255490.P12766628435126337112

namespace A255490

/-- `A247649(2^n-1)` -/
def P12766628435126337112.Spec : Prop :=
  ∀ n, P12766628435126337112.a n = A255490 n

end A255490

/-! ## A255490.P17963078492609677935

`ogf((1+5x+4x^2+4x^3)/(1-3x^2-4x^4))`
-/

namespace A255490.P17963078492609677935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4, 4] [1, 0, -3, 0, -4] n

end

end A255490.P17963078492609677935

namespace A255490

/-- `ogf((1+5x+4x^2+4x^3)/(1-3x^2-4x^4))` -/
def P17963078492609677935.Spec : Prop :=
  ∀ n, P17963078492609677935.a n = A255490 n

end A255490

/-! ## A255490.P13741243257840323374

`xor(A120462(n), A133190(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A255490

/-- `xor(A120462(n), A133190(n))` -/
def P13741243257840323374.Spec : Prop :=
  ∀ n, P13741243257840323374.a n = A255490 n

theorem P13741243257840323374.correct : P13741243257840323374.Spec := by
  intro n
  simp only [A255490]

end A255490

/-! ## A255490.P9177647287165044675

`or(1, ∑[A007910(A014681(n))])`
-/

namespace A255490.P9177647287165044675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255490.P9177647287165044675

namespace A255490

/-- `or(1, ∑[A007910(A014681(n))])` -/
def P9177647287165044675.Spec : Prop :=
  ∀ n, P9177647287165044675.a n = A255490 n

end A255490

/-! ## A255490.P17528420877035143153

`xor(lcm(4, A000975(n)), A190569(n))`
-/

namespace A255490.P17528420877035143153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lcm 4 (A000975 n) : ℤ) (A190569 n)

end

end A255490.P17528420877035143153

namespace A255490

/-- `xor(lcm(4, A000975(n)), A190569(n))` -/
def P17528420877035143153.Spec : Prop :=
  ∀ n, P17528420877035143153.a n = A255490 n

end A255490

/-! ## A255490.P7667484929273463548

`abs(A007909(n)+Δ[A077925(n)])`
-/

namespace A255490.P7667484929273463548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007909 n + (f1 (n + 1) - f1 n)|

end

end A255490.P7667484929273463548

namespace A255490

/-- `abs(A007909(n)+Δ[A077925(n)])` -/
def P7667484929273463548.Spec : Prop :=
  ∀ n, P7667484929273463548.a n = A255490 n

end A255490

/-! ## A255490.P4055744820073444053

`Δ[floor(A137208(n+4)/10)]`
-/

namespace A255490.P4055744820073444053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137208 (n + 4) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255490.P4055744820073444053

namespace A255490

/-- `Δ[floor(A137208(n+4)/10)]` -/
def P4055744820073444053.Spec : Prop :=
  ∀ n, P4055744820073444053.a n = A255490 n

end A255490

/-!
# A255491: Numbers k such that 90*k+1 is composite.

The programs for A255491, the canonical program `A255491.P15620683629542724992` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255491 has offset 1).

The definition of A255491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255491.P15620683629542724992

`comp[A181732(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255491

/-- `comp[A181732(n+1)-1]+1` -/
def P15620683629542724992.Spec : Prop :=
  ∀ n, (P15620683629542724992.a n : ℤ) = A255491 (n + 1)

theorem P15620683629542724992.correct : P15620683629542724992.Spec := by
  intro n
  simp only [A255491, Nat.add_sub_cancel]

end A255491

/-! ## A255491.P14117325005487916269

`eq[char[A181732(n+1)], A000007(n)]`
-/

namespace A255491.P14117325005487916269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A255491.P14117325005487916269

namespace A255491

/-- `eq[char[A181732(n+1)], A000007(n)]` -/
def P14117325005487916269.Spec : Prop :=
  ∀ n, (P14117325005487916269.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P18332203557907376572

`eq[char[A181732(n+1)], A000038(n)]`
-/

namespace A255491.P18332203557907376572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A255491.P18332203557907376572

namespace A255491

/-- `eq[char[A181732(n+1)], A000038(n)]` -/
def P18332203557907376572.Spec : Prop :=
  ∀ n, (P18332203557907376572.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P17504793865913069630

`lt[1, A001222(9*10*n+1)]`
-/

namespace A255491.P17504793865913069630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * (10 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255491.P17504793865913069630

namespace A255491

/-- `lt[1, A001222(9*10*n+1)]` -/
def P17504793865913069630.Spec : Prop :=
  ∀ n, (P17504793865913069630.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P12436958290697388449

`eq[1, floor(atan(A001222(90*n+1)))]`
-/

namespace A255491.P12436958290697388449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 (90 * n + 1) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255491.P12436958290697388449

namespace A255491

/-- `eq[1, floor(atan(A001222(90*n+1)))]` -/
def P12436958290697388449.Spec : Prop :=
  ∀ n, (P12436958290697388449.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P13543682869240639249

`lt[2, A000005(A128470(3*n))]`
-/

namespace A255491.P13543682869240639249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128470 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255491.P13543682869240639249

namespace A255491

/-- `lt[2, A000005(A128470(3*n))]` -/
def P13543682869240639249.Spec : Prop :=
  ∀ n, (P13543682869240639249.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P14122414873968744784

`eq[1, A167866(A001222(90*n+1))]`
-/

namespace A255491.P14122414873968744784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A001222 (90 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255491.P14122414873968744784

namespace A255491

/-- `eq[1, A167866(A001222(90*n+1))]` -/
def P14122414873968744784.Spec : Prop :=
  ∀ n, (P14122414873968744784.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P14501477636538177135

`eq[A007599(A001222(90*n+1)), A054977(n)]`
-/

namespace A255491.P14501477636538177135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A001222 (90 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255491.P14501477636538177135

namespace A255491

/-- `eq[A007599(A001222(90*n+1)), A054977(n)]` -/
def P14501477636538177135.Spec : Prop :=
  ∀ n, (P14501477636538177135.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P179408447999838848

`eq[A007599(A001222(90*n+1)), A057427(n)]`
-/

namespace A255491.P179408447999838848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A001222 (90 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255491.P179408447999838848

namespace A255491

/-- `eq[A007599(A001222(90*n+1)), A057427(n)]` -/
def P179408447999838848.Spec : Prop :=
  ∀ n, (P179408447999838848.a n : ℤ) = A255491 (n + 1)

end A255491

/-! ## A255491.P16590249292851848704

`record[(A000007(n)+n)^A167866(A001222(90*n+1))]`
-/

namespace A255491.P16590249292851848704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) ^ (A167866 (A001222 (90 * n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255491.P16590249292851848704

namespace A255491

/-- `record[(A000007(n)+n)^A167866(A001222(90*n+1))]` -/
def P16590249292851848704.Spec : Prop :=
  ∀ n, P16590249292851848704.a n = (A255491 (n + 1) : ℚ)

end A255491

/-!
# A255492: Sixth diagonal of triangle in A056588.

The programs for A255492, there is no canonical definition to state claims against.
-/

/-! ## A255492.P16008015059949484136

`abs(A056588(Δ[A023551(n+1)]))`
-/

namespace A255492.P16008015059949484136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056588 (f1 (n + 1) - f1 n).toNat|

end

end A255492.P16008015059949484136

/-! ## A255492.P1561623431952759068

`abs(A056588(Δ[A026054(n+3)]))`
-/

namespace A255492.P1561623431952759068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056588 (f1 (n + 1) - f1 n).toNat|

end

end A255492.P1561623431952759068

/-! ## A255492.P15688197385921055463

`A056588(Δ[A026054(n+3)])*A087960(n)`
-/

namespace A255492.P15688197385921055463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (f1 (n + 1) - f1 n).toNat * A087960 n

end

end A255492.P15688197385921055463

/-! ## A255492.P18080425376399199067

`A323510(2*n+1)-A056588(A056115(n)+20)`
-/

namespace A255492.P18080425376399199067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (2 * n + 1) - A056588 (A056115 n + 20).toNat

end

end A255492.P18080425376399199067

/-!
# A255494: Triangle read by rows: coefficients of numerator of generating functions for powers of Pell numbers.

The programs for A255494, there is no canonical definition to state claims against.
-/

/-! ## A255494.P4956971979300539311

`A022167(n)-A055668(A146902(n+1))`
-/

namespace A255494.P4956971979300539311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A055668 (A146902 (n + 1)).toNat

end

end A255494.P4956971979300539311

/-! ## A255494.P16612795530290901244

`A022167(n)-A299905(A013610(n))`
-/

namespace A255494.P16612795530290901244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A299905 (A013610 n).toNat

end

end A255494.P16612795530290901244

/-! ## A255494.P8488636394728035832

`A022167(n)-A335460(∑[A002865(n)])`
-/

namespace A255494.P8488636394728035832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A335460 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255494.P8488636394728035832

/-! ## A255494.P5976287312370475257

`A022167(n)-A151795(A179070(n+1))`
-/

namespace A255494.P5976287312370475257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A151795 (A179070 (n + 1)).toNat

end

end A255494.P5976287312370475257

/-! ## A255494.P17913316315176417581

`A022167(n)-A299905(A161951(n+1))`
-/

namespace A255494.P17913316315176417581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A299905 (A161951 (n + 1)).toNat

end

end A255494.P17913316315176417581

/-!
# A255495: 2nd diagonal of triangle in A255494.

The programs for A255495, there is no canonical definition to state claims against.
-/

/-! ## A255495.P16192114520408879574

`A255494(∑[n+2]+3)`
-/

namespace A255495.P16192114520408879574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255495.P16192114520408879574

/-! ## A255495.P7165027404619561431

`gcd(A000038(n), A255494(A141214(n)))`
-/

namespace A255495.P7165027404619561431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255494 (A141214 n).toNat)

end

end A255495.P7165027404619561431

/-! ## A255495.P12618193000972150395

`lcm(A033999(n), A255494(A141214(n)))`
-/

namespace A255495.P12618193000972150395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255494 (A141214 n).toNat)

end

end A255495.P12618193000972150395

/-! ## A255495.P5954253248781270825

`or(A000007(n), A255494(A141214(n)))`
-/

namespace A255495.P5954253248781270825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255494 (A141214 n).toNat)

end

end A255495.P5954253248781270825

/-! ## A255495.P13616430712519435259

`or(A010052(n), A255494(A141214(n)))`
-/

namespace A255495.P13616430712519435259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A255494 (A141214 n).toNat)

end

end A255495.P13616430712519435259

/-!
# A255496: 3rd diagonal of triangle in A255494.

The programs for A255496, there is no canonical definition to state claims against.
-/

/-! ## A255496.P10160277981326906013

`A255494(∑[n+3]+6)`
-/

namespace A255496.P10160277981326906013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255496.P10160277981326906013

/-! ## A255496.P1772842891469781562

`A255494(A167614(n+2))%A202466(n+1)`
-/

namespace A255496.P1772842891469781562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255494 (A167614 (n + 2)).toNat) (A202466 (n + 1))

end

end A255496.P1772842891469781562

/-! ## A255496.P299874413813371608

`record[A255494(A198464(n+1)-2)]`
-/

namespace A255496.P299874413813371608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255496.P299874413813371608

/-!
# A255497: 4th diagonal of triangle in A255494.

The programs for A255497, there is no canonical definition to state claims against.
-/

/-! ## A255497.P10328946684668471648

`A255494(A155212(n)+12)`
-/

namespace A255497.P10328946684668471648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (A155212 n + 12).toNat

end

end A255497.P10328946684668471648

/-! ## A255497.P16890513580892890101

`A255494(eq[4, A002262(n)])`
-/

namespace A255497.P16890513580892890101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255497.P16890513580892890101

/-! ## A255497.P13345965405801286023

`A255494(eq[5, A002260(n+1)])`
-/

namespace A255497.P13345965405801286023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255497.P13345965405801286023

/-! ## A255497.P7558367926554496849

`A255494(eq[11, A037126(n+1)])`
-/

namespace A255497.P7558367926554496849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255497.P7558367926554496849

/-! ## A255497.P16682052781347855404

`A255494(Δ[A026054(n+3)-n²])`
-/

namespace A255497.P16682052781347855404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (f1 (n + 1) - f1 n).toNat

end

end A255497.P16682052781347855404

/-!
# A255498: 5th diagonal of triangle in A255494.

The programs for A255498, there is no canonical definition to state claims against.
-/

/-! ## A255498.P14375990480040764691

`70*a(n-1)+A000129(n+1)*A255497(n)` with `a(0)=1`
-/

namespace A255498.P14375990480040764691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  70 * a (n - 1) + A000129 (n + 1) * A255497 n

end

end A255498.P14375990480040764691

/-! ## A255498.P2435529741485863854

`A255494(A167499(n+4))`
-/

namespace A255498.P2435529741485863854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (A167499 (n + 4)).toNat

end

end A255498.P2435529741485863854

/-! ## A255498.P727996292083145827

`A255494(eq[5, A002262(n)])`
-/

namespace A255498.P727996292083145827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255498.P727996292083145827

/-! ## A255498.P17080683783897370604

`A255494(eq[6, A002260(n+1)])`
-/

namespace A255498.P17080683783897370604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255498.P17080683783897370604

/-! ## A255498.P11317392380008499781

`A255494(eq[5, A025581(n)])`
-/

namespace A255498.P11317392380008499781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255498.P11317392380008499781

/-!
# A255499: a(n) = (n^4 + 2*n^3 - n^2)/2.

The programs for A255499, the canonical program `A255499.P9730518709992422601` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255499 has offset 0).

The definition of A255499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4+2*n^3-n²)/2` (program `A255499.P8812838451648780067`, by `A255499.P8812838451648780067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255499.P14592283711924989446

`n²*(n²+2*n-1)/2`
-/

namespace A255499.P14592283711924989446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 2 + 2 * n : ℤ) - 1) : ℚ) / 2

end

end A255499.P14592283711924989446

namespace A255499

/-- `n²*(n²+2*n-1)/2` -/
def P14592283711924989446.Spec : Prop :=
  ∀ n, P14592283711924989446.a n = (A255499 n : ℚ)

theorem P14592283711924989446.correct : P14592283711924989446.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A255499, Nat.add_sub_cancel, A255499.P14592283711924989446.a, A255499.P9730518709992422601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A255499, Nat.add_sub_cancel, A255499.P14592283711924989446.a, A255499.P9730518709992422601.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A255499

/-! ## A255499.P8812838451648780067

`(n^4+2*n^3-n²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255499.P8812838451648780067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 + 2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) : ℚ) / 2

end

end A255499.P8812838451648780067

namespace A255499

/-- `(n^4+2*n^3-n²)/2` -/
def P8812838451648780067.Spec : Prop :=
  ∀ n, P8812838451648780067.a n = (A255499 n : ℚ)

theorem P8812838451648780067.correct : P8812838451648780067.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A255499, Nat.add_sub_cancel, A255499.P8812838451648780067.a, A255499.P9730518709992422601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A255499, Nat.add_sub_cancel, A255499.P8812838451648780067.a, A255499.P9730518709992422601.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A255499

/-! ## A255499.P9730518709992422601

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=63, a(4)=184`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255499

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9730518709992422601.Spec : Prop :=
  ∀ n, P9730518709992422601.a n = A255499 n

theorem P9730518709992422601.correct : P9730518709992422601.Spec := by
  intro n
  simp only [A255499]

end A255499

/-! ## A255499.P17394434424694471860

`C(n², 2)+n^3`
-/

namespace A255499.P17394434424694471860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2 + n ^ 3

end

end A255499.P17394434424694471860

namespace A255499

/-- `C(n², 2)+n^3` -/
def P17394434424694471860.Spec : Prop :=
  ∀ n, (P17394434424694471860.a n : ℤ) = A255499 n

end A255499

/-! ## A255499.P10099968005999513692

`4*C(∑[n], 2)+n`
-/

namespace A255499.P10099968005999513692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A255499.P10099968005999513692

namespace A255499

/-- `4*C(∑[n], 2)+n` -/
def P10099968005999513692.Spec : Prop :=
  ∀ n, (P10099968005999513692.a n : ℤ) = A255499 n

end A255499

/-! ## A255499.P9275602916716603975

`n*((n+3)*C(n, 2)+n)`
-/

namespace A255499.P9275602916716603975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 3) * Nat.choose n 2 + n)

end

end A255499.P9275602916716603975

namespace A255499

/-- `n*((n+3)*C(n, 2)+n)` -/
def P9275602916716603975.Spec : Prop :=
  ∀ n, (P9275602916716603975.a n : ℤ) = A255499 n

end A255499

/-! ## A255499.P10029907060086791162

`n*∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A255499.P10029907060086791162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255499.P10029907060086791162

namespace A255499

/-- `n*∑[∑[a(n-1)+3]]` -/
def P10029907060086791162.Spec : Prop :=
  ∀ n, (P10029907060086791162.a n : ℤ) = A255499 n

end A255499

/-! ## A255499.P17639922526038905389

`n*(1-∑[∑[a(n-1)-3]])` with `a(0)=1`
-/

namespace A255499.P17639922526038905389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255499.P17639922526038905389

namespace A255499

/-- `n*(1-∑[∑[a(n-1)-3]])` -/
def P17639922526038905389.Spec : Prop :=
  ∀ n, P17639922526038905389.a n = A255499 n

end A255499

/-! ## A255499.P3625810895678856114

`A163102(n)-n²`
-/

namespace A255499.P3625810895678856114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - (n ^ 2 : ℤ)

end

end A255499.P3625810895678856114

namespace A255499

/-- `A163102(n)-n²` -/
def P3625810895678856114.Spec : Prop :=
  ∀ n, P3625810895678856114.a n = A255499 n

end A255499

/-! ## A255499.P1518623381347694820

`n*(A006002(n)-n)`
-/

namespace A255499.P1518623381347694820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006002 n - (n : ℤ))

end

end A255499.P1518623381347694820

namespace A255499

/-- `n*(A006002(n)-n)` -/
def P1518623381347694820.Spec : Prop :=
  ∀ n, P1518623381347694820.a n = A255499 n

end A255499

/-! ## A255499.P8155567647671894162

`A085740(n)+∑[n]²`
-/

namespace A255499.P8155567647671894162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A255499.P8155567647671894162

namespace A255499

/-- `A085740(n)+∑[n]²` -/
def P8155567647671894162.Spec : Prop :=
  ∀ n, P8155567647671894162.a n = A255499 n

end A255499

/-! ## A255499.P13922317917955109427

`∑[A033431(n)]-n²`
-/

namespace A255499.P13922317917955109427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A255499.P13922317917955109427

namespace A255499

/-- `∑[A033431(n)]-n²` -/
def P13922317917955109427.Spec : Prop :=
  ∀ n, P13922317917955109427.a n = A255499 n

end A255499

/-! ## A255499.P11324713612584803067

`n*(A212343(n+2)+n)`
-/

namespace A255499.P11324713612584803067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A212343 (n + 2) + (n : ℤ))

end

end A255499.P11324713612584803067

namespace A255499

/-- `n*(A212343(n+2)+n)` -/
def P11324713612584803067.Spec : Prop :=
  ∀ n, P11324713612584803067.a n = A255499 n

end A255499

/-! ## A255499.P6249704547827346928

`A060783(n)+A001107(n)`
-/

namespace A255499.P6249704547827346928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060783 n + A001107 n

end

end A255499.P6249704547827346928

namespace A255499

/-- `A060783(n)+A001107(n)` -/
def P6249704547827346928.Spec : Prop :=
  ∀ n, P6249704547827346928.a n = A255499 n

end A255499

/-! ## A255499.P11129001077259677680

`A045991(n)+A037270(n)`
-/

namespace A255499.P11129001077259677680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + A037270 n

end

end A255499.P11129001077259677680

namespace A255499

/-- `A045991(n)+A037270(n)` -/
def P11129001077259677680.Spec : Prop :=
  ∀ n, P11129001077259677680.a n = A255499 n

end A255499

/-! ## A255499.P5350008729937879789

`A160378(n)+A027441(n)`
-/

namespace A255499.P5350008729937879789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A027441 n

end

end A255499.P5350008729937879789

namespace A255499

/-- `A160378(n)+A027441(n)` -/
def P5350008729937879789.Spec : Prop :=
  ∀ n, P5350008729937879789.a n = A255499 n

end A255499

/-! ## A255499.P14660766577721666717

`A212135(n)+A059722(n)`
-/

namespace A255499.P14660766577721666717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A059722 n

end

end A255499.P14660766577721666717

namespace A255499

/-- `A212135(n)+A059722(n)` -/
def P14660766577721666717.Spec : Prop :=
  ∀ n, P14660766577721666717.a n = A255499 n

end A255499

/-! ## A255499.P8538669930725811680

`A236770(n)+A086602(n)`
-/

namespace A255499.P8538669930725811680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 n + A086602 n

end

end A255499.P8538669930725811680

namespace A255499

/-- `A236770(n)+A086602(n)` -/
def P8538669930725811680.Spec : Prop :=
  ∀ n, P8538669930725811680.a n = A255499 n

end A255499

/-! ## A255499.P15538063419504374452

`A110450(n)-A005449(n)`
-/

namespace A255499.P15538063419504374452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A005449 n

end

end A255499.P15538063419504374452

namespace A255499

/-- `A110450(n)-A005449(n)` -/
def P15538063419504374452.Spec : Prop :=
  ∀ n, P15538063419504374452.a n = A255499 n

end A255499

/-! ## A255499.P12741323549516884628

`A062392(n)-A161680(n)`
-/

namespace A255499.P12741323549516884628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A161680 n

end

end A255499.P12741323549516884628

namespace A255499

/-- `A062392(n)-A161680(n)` -/
def P12741323549516884628.Spec : Prop :=
  ∀ n, P12741323549516884628.a n = A255499 n

end A255499

