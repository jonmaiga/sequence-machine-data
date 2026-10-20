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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A350401: Primes p such that if q is the next prime, p*q mod (A004086(p)+A004086(q)) is prime.

The programs for A350401, there is no canonical definition to state claims against.
-/

/-! ## A350401.P18004184292509310117

`record[A070163(n+1)/A176561(n)]`
-/

namespace A350401.P18004184292509310117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070163 (n + 1) : ℚ) / (A176561 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350401.P18004184292509310117

/-! ## A350401.P7409032506081705013

`filter[A012883(n+3), A110471(#)]`
-/

namespace A350401.P7409032506081705013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012883 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A350401.P7409032506081705013

/-! ## A350401.P165638041638019890

`lt[A213651(n), A357630(n^(n%2))]`
-/

namespace A350401.P165638041638019890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357630 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350401.P165638041638019890

/-! ## A350401.P2066259279752045848

`A095070(lt[A342520(n), A113821(n+1)])`
-/

namespace A350401.P2066259279752045848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350401.P2066259279752045848

/-! ## A350401.P13071127731221725859

`A318718(A194410(n+1))`
-/

namespace A350401.P13071127731221725859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (A194410 (n + 1)).toNat

end

end A350401.P13071127731221725859

/-!
# A350402: Numbers k such that binomial(k, 2) divides binomial(2^k-2, 2).

The programs for A350402, there is no canonical definition to state claims against.
-/

/-! ## A350402.P13626515148474861511

`∩[A104739(n+1), A211203(n+1)]`
-/

namespace A350402.P13626515148474861511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350402.P13626515148474861511

/-! ## A350402.P2431700762392621450

`A211203(lt[A184944(n), A211189(n+1)])`
-/

namespace A350402.P2431700762392621450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350402.P2431700762392621450

/-! ## A350402.P4974445677848679156

`A211203(lt[A211227(n), A211185(n+1)])`
-/

namespace A350402.P4974445677848679156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350402.P4974445677848679156

/-! ## A350402.P9550400508269495009

`A211203(lt[A051906(3*n+1), A099930(n+3)])`
-/

namespace A350402.P9550400508269495009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051906 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099930 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350402.P9550400508269495009

/-!
# A350403: Number of solutions to +-1^2 +- 2^2 +- 3^2 +- ... +- n^2 = 0 or 1.

The programs for A350403, there is no canonical definition to state claims against.
-/

/-! ## A350403.P18099684089743833018

`A040001(∑[n])*A307877(n)`
-/

namespace A350403.P18099684089743833018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∑ j ∈ Finset.range (n + 1), f1 j) * A307877 n

end

end A350403.P18099684089743833018

/-! ## A350403.P14041600644289269181

`A164117(∑[2*n])*A307877(n)`
-/

namespace A350403.P14041600644289269181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (∑ j ∈ Finset.range (n + 1), f1 j) * A307877 n

end

end A350403.P14041600644289269181

/-! ## A350403.P18322922444192150084

`A307877(n)+A083527(round(acot(n)+n))`
-/

namespace A350403.P18322922444192150084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307877 n + A083527 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A350403.P18322922444192150084

/-! ## A350403.P7149949757558876921

`A307877(n)+A083527(A028310(n))`
-/

namespace A350403.P7149949757558876921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307877 n + A083527 (A028310 n).toNat

end

end A350403.P7149949757558876921

/-! ## A350403.P6487971406399648256

`A014695(A289207(n))*A307877(n)`
-/

namespace A350403.P6487971406399648256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A289207 n).toNat * A307877 n

end

end A350403.P6487971406399648256

/-!
# A350404: Number of solutions to +-2 +- 3 +- 5 +- 7 +- ... +- prime(n) = 0 or 1.

The programs for A350404, there is no canonical definition to state claims against.
-/

/-! ## A350404.P768066601019238162

`A000034(n)*A306443(n)`
-/

namespace A350404.P768066601019238162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A306443 n

end

end A350404.P768066601019238162

/-! ## A350404.P6602355862022573068

`A084642(n)*A306443(n)`
-/

namespace A350404.P6602355862022573068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A306443 n

end

end A350404.P6602355862022573068

/-! ## A350404.P3258465885423724453

`Δ[A032766(n)]*A306443(n)`
-/

namespace A350404.P3258465885423724453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A306443 n

end

end A350404.P3258465885423724453

/-! ## A350404.P15172462299894522113

`(A000035(n)+1)*A306443(n)`
-/

namespace A350404.P15172462299894522113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A306443 n

end

end A350404.P15172462299894522113

/-! ## A350404.P14604004043690966331

`A014695(2*n)*A306443(n)`
-/

namespace A350404.P14604004043690966331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * n) * A306443 n

end

end A350404.P14604004043690966331

/-! ## A350404.P544014428153460195

`A130658(2*n)*A306443(n)`
-/

namespace A350404.P544014428153460195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (2 * n) * A306443 n

end

end A350404.P544014428153460195

/-! ## A350404.P557710838273269121

`gcd(2, A008611(n))*A306443(n)`
-/

namespace A350404.P557710838273269121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A008611 n) : ℤ) * A306443 n

end

end A350404.P557710838273269121

/-! ## A350404.P14031676586232475494

`(Δ[A008619(n)]+1)*A306443(n)`
-/

namespace A350404.P14031676586232475494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A306443 n

end

end A350404.P14031676586232475494

/-! ## A350404.P17414499871433858706

`Δ[A008619(A016789(n))]*A306443(n)`
-/

namespace A350404.P17414499871433858706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A306443 n

end

end A350404.P17414499871433858706

/-!
# A350406: a(n) = [x^n] 1/(1 + x + x^2 + x^3)^n.

The programs for A350406, there is no canonical definition to state claims against.
-/

/-! ## A350406.P1688364241032137938

`A301518(n)/A165581(6^n+n^6)`
-/

namespace A350406.P1688364241032137938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301518 n : ℚ) / (A165581 (6 ^ n + n ^ 6) : ℚ)

end

end A350406.P1688364241032137938

/-! ## A350406.P9352186763571350823

`A008683(A000045(3*n+2))*A362317(n)`
-/

namespace A350406.P9352186763571350823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000045 (3 * n + 2)).toNat * A362317 n

end

end A350406.P9352186763571350823

/-! ## A350406.P1182409245419099960

`(A000005(5^n)+n*A000332(n)-n)*A033999(n)`
-/

namespace A350406.P1182409245419099960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (5 ^ n) + ((n : ℤ) * A000332 n - (n : ℤ))) * A033999 n

end

end A350406.P1182409245419099960

/-! ## A350406.P2486137987777006530

`A362317(n)^A362333(A351415(3*n+5))/(-1)^n`
-/

namespace A350406.P2486137987777006530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362317 n : ℚ) ^ (A362333 (A351415 (3 * n + 5)).toNat : ℤ) / ((-1) ^ n : ℚ)

end

end A350406.P2486137987777006530

/-!
# A350407: a(n) = [x^n] 1/(1 + x + x^2 + x^3 + x^4)^n.

The programs for A350407, there is no canonical definition to state claims against.
-/

/-! ## A350407.P7902013820960994551

`A008683(A000045(3*n+2))*A362346(n)`
-/

namespace A350407.P7902013820960994551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000045 (3 * n + 2)).toNat * A362346 n

end

end A350407.P7902013820960994551

/-!
# A350409: Primes p such that 2*p+1 has exactly three prime factors (not necessarily distinct).

The programs for A350409, the canonical program `A350409.P2002734332718794201` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350409 has offset 1).

The definition of A350409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350409.P6708958538676714934

`eq[n, A000010(n+3-A001222(2*n+1))+1]`
-/

namespace A350409.P6708958538676714934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 3 : ℤ) - A001222 (2 * n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350409.P6708958538676714934

namespace A350409

/-- `eq[n, A000010(n+3-A001222(2*n+1))+1]` -/
def P6708958538676714934.Spec : Prop :=
  ∀ n, (P6708958538676714934.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P10663307275588993486

`eq[n+1, A000203(n+3-A001222(2*n+1))]`
-/

namespace A350409.P10663307275588993486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 3 : ℤ) - A001222 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350409.P10663307275588993486

namespace A350409

/-- `eq[n+1, A000203(n+3-A001222(2*n+1))]` -/
def P10663307275588993486.Spec : Prop :=
  ∀ n, (P10663307275588993486.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P4208592781203709524

`eq[n-1, A000010(n+3-A001222(n+1+n))]`
-/

namespace A350409.P4208592781203709524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 3 : ℤ) - A001222 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P4208592781203709524

namespace A350409

/-- `eq[n-1, A000010(n+3-A001222(n+1+n))]` -/
def P4208592781203709524.Spec : Prop :=
  ∀ n, (P4208592781203709524.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P14715744012584623639

`eq[n, A006530(n-A001222(2*n+1)+n+3)]`
-/

namespace A350409.P14715744012584623639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) - A001222 (2 * n + 1) + (n + 3 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350409.P14715744012584623639

namespace A350409

/-- `eq[n, A006530(n-A001222(2*n+1)+n+3)]` -/
def P14715744012584623639.Spec : Prop :=
  ∀ n, (P14715744012584623639.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P14855679163249998784

`p?[eq[3, A001222(2*n+1)]]`
-/

namespace A350409.P14855679163249998784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A350409.P14855679163249998784

namespace A350409

/-- `p?[eq[3, A001222(2*n+1)]]` -/
def P14855679163249998784.Spec : Prop :=
  ∀ n, (P14855679163249998784.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P2002734332718794201

`record[A006530(A046316(n+1)-1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A350409

/-- `record[A006530(A046316(n+1)-1)]` -/
def P2002734332718794201.Spec : Prop :=
  ∀ n, P2002734332718794201.a n = A350409 (n + 1)

theorem P2002734332718794201.correct : P2002734332718794201.Spec := by
  intro n
  simp only [A350409, Nat.add_sub_cancel]

end A350409

/-! ## A350409.P4544095083644378708

`record[A006530(eq[3, A001222(2*n+1)])]`
-/

namespace A350409.P4544095083644378708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350409.P4544095083644378708

namespace A350409

/-- `record[A006530(eq[3, A001222(2*n+1)])]` -/
def P4544095083644378708.Spec : Prop :=
  ∀ n, P4544095083644378708.a n = A350409 (n + 1)

end A350409

/-! ## A350409.P15248718598958184368

`record[A020639(eq[3, A001222(2*n+1)])]`
-/

namespace A350409.P15248718598958184368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350409.P15248718598958184368

namespace A350409

/-- `record[A020639(eq[3, A001222(2*n+1)])]` -/
def P15248718598958184368.Spec : Prop :=
  ∀ n, P15248718598958184368.a n = A350409 (n + 1)

end A350409

/-! ## A350409.P10767356624928746217

`p?[eq[2, A285716(n+1)]]`
-/

namespace A350409.P10767356624928746217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A350409.P10767356624928746217

namespace A350409

/-- `p?[eq[2, A285716(n+1)]]` -/
def P10767356624928746217.Spec : Prop :=
  ∀ n, (P10767356624928746217.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P9825663937752603822

`p?[eq[3, A091304(n+1)]]`
-/

namespace A350409.P9825663937752603822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A350409.P9825663937752603822

namespace A350409

/-- `p?[eq[3, A091304(n+1)]]` -/
def P9825663937752603822.Spec : Prop :=
  ∀ n, (P9825663937752603822.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P10112080461382929347

`eq[A092976(n), A285716(n+1)]`
-/

namespace A350409.P10112080461382929347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P10112080461382929347

namespace A350409

/-- `eq[A092976(n), A285716(n+1)]` -/
def P10112080461382929347.Spec : Prop :=
  ∀ n, (P10112080461382929347.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P2670266400794843115

`eq[A225244(n), A285716(n+1)]`
-/

namespace A350409.P2670266400794843115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P2670266400794843115

namespace A350409

/-- `eq[A225244(n), A285716(n+1)]` -/
def P2670266400794843115.Spec : Prop :=
  ∀ n, (P2670266400794843115.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P5880030297642508071

`eq[A285716(n+1), A327859(n)]`
-/

namespace A350409.P5880030297642508071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P5880030297642508071

namespace A350409

/-- `eq[A285716(n+1), A327859(n)]` -/
def P5880030297642508071.Spec : Prop :=
  ∀ n, (P5880030297642508071.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P16813882151530137572

`eq[A285716(n+1), A343371(n)]`
-/

namespace A350409.P16813882151530137572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P16813882151530137572

namespace A350409

/-- `eq[A285716(n+1), A343371(n)]` -/
def P16813882151530137572.Spec : Prop :=
  ∀ n, (P16813882151530137572.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P16994782034881466932

`eq[A285716(n+1), A374201(n)]`
-/

namespace A350409.P16994782034881466932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P16994782034881466932

namespace A350409

/-- `eq[A285716(n+1), A374201(n)]` -/
def P16994782034881466932.Spec : Prop :=
  ∀ n, (P16994782034881466932.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P15561831484879965800

`eq[A285716(n+1), A381516(n)]`
-/

namespace A350409.P15561831484879965800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P15561831484879965800

namespace A350409

/-- `eq[A285716(n+1), A381516(n)]` -/
def P15561831484879965800.Spec : Prop :=
  ∀ n, (P15561831484879965800.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P2116535810573529566

`eq[A285716(n+1), A398023(n)]`
-/

namespace A350409.P2116535810573529566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P2116535810573529566

namespace A350409

/-- `eq[A285716(n+1), A398023(n)]` -/
def P2116535810573529566.Spec : Prop :=
  ∀ n, (P2116535810573529566.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P4113707271675049460

`eq[A128982(n+1), A285716(n+1)]`
-/

namespace A350409.P4113707271675049460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P4113707271675049460

namespace A350409

/-- `eq[A128982(n+1), A285716(n+1)]` -/
def P4113707271675049460.Spec : Prop :=
  ∀ n, (P4113707271675049460.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P15847747810932743756

`eq[A018783(n)+2, A091304(n+1)]`
-/

namespace A350409.P15847747810932743756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350409.P15847747810932743756

namespace A350409

/-- `eq[A018783(n)+2, A091304(n+1)]` -/
def P15847747810932743756.Spec : Prop :=
  ∀ n, (P15847747810932743756.a n : ℤ) = A350409 (n + 1)

end A350409

/-! ## A350409.P8466337111433900265

`p?[eq[2, A285726(2*n+1)]]`
-/

namespace A350409.P8466337111433900265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A350409.P8466337111433900265

namespace A350409

/-- `p?[eq[2, A285726(2*n+1)]]` -/
def P8466337111433900265.Spec : Prop :=
  ∀ n, (P8466337111433900265.a n : ℤ) = A350409 (n + 1)

end A350409

/-!
# A350410: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies: 0 = [x^n] Sum_{m=0..n} A(x)^(m^2) / m!, for n > 1.

The programs for A350410, there is no canonical definition to state claims against.
-/

/-! ## A350410.P5155339267748848503

`A319925(2^n)+n-1`
-/

namespace A350410.P5155339267748848503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319925 (2 ^ n) + ((n : ℤ) - 1)

end

end A350410.P5155339267748848503

/-!
# A350413: Total capacity of unrestricted compositions of n.

The programs for A350413, there is no canonical definition to state claims against.
-/

/-! ## A350413.P15441442530513190888

`∑[A003008(n+1)-A289249(n)]`
-/

namespace A350413.P15441442530513190888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003008 (n + 1) - A289249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350413.P15441442530513190888

/-! ## A350413.P10583843158703710667

`A173023(A055010(n+4))%(2^n)`
-/

namespace A350413.P10583843158703710667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173023 (A055010 (n + 4)).toNat) (2 ^ n : ℤ)

end

end A350413.P10583843158703710667

/-!
# A350414: a(1)=1; for n > 1, a(n) = a(n-1) + (sum of odd-indexed digits of a(n-1)) - (sum of even-indexed digits of a(n-1)).

The programs for A350414, the canonical program `A350414.P11254448810084278629` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350414 has offset 1).

The definition of A350414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350414.P11254448810084278629

`A055017(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350414

/-- `A055017(a(n-1))+a(n-1)` -/
def P11254448810084278629.Spec : Prop :=
  ∀ n, P11254448810084278629.a n = A350414 (n + 1)

theorem P11254448810084278629.correct : P11254448810084278629.Spec := by
  intro n
  simp only [A350414, Nat.add_sub_cancel]

end A350414

/-!
# A350415: Number of acyclic digraphs on n unlabeled nodes with a global source (or sink).

The programs for A350415, there is no canonical definition to state claims against.
-/

/-! ## A350415.P9268706754577031401

`A122078(∑[n+2]-1)`
-/

namespace A350415.P9268706754577031401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122078 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A350415.P9268706754577031401

/-! ## A350415.P6988531113517532032

`or(A000007(n), A122078(A034856(n+1)))`
-/

namespace A350415.P6988531113517532032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A122078 (A034856 (n + 1)).toNat)

end

end A350415.P6988531113517532032

/-! ## A350415.P4829454256668329205

`A007318(∑[n])*A122078(A034856(n+1))`
-/

namespace A350415.P4829454256668329205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A122078 (A034856 (n + 1)).toNat

end

end A350415.P4829454256668329205

/-! ## A350415.P12901876688089762752

`A122078(A034856(n+1))+A000007(n+1)`
-/

namespace A350415.P12901876688089762752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122078 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A350415.P12901876688089762752

/-! ## A350415.P14960720159098913151

`A000108(C(2, n+2))*A122078(A034856(n+1))`
-/

namespace A350415.P14960720159098913151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A122078 (A034856 (n + 1)).toNat

end

end A350415.P14960720159098913151

/-!
# A350416: Numbers with exactly 9 semiprime divisors.

The programs for A350416, there is no canonical definition to state claims against.
-/

/-! ## A350416.P5938229224533042148

`filter[A318720(n+1), A389905(#)]`
-/

namespace A350416.P5938229224533042148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A350416.P5938229224533042148

/-!
# A350419: Irregular table read by rows, where row k lists the semiprimes, s*t (s<=t) in increasing order, where s and t are the smaller and larger parts of the partitions of m = 2k+2 into two parts.

The programs for A350419, there is no canonical definition to state claims against.
-/

/-! ## A350419.P129854678864494049

`filter[A105020(n), A064911(#)]`
-/

namespace A350419.P129854678864494049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A350419.P129854678864494049

/-!
# A350420: Primes p such that p*q+q-p is a semiprime, where q is the next prime after p.

The programs for A350420, there is no canonical definition to state claims against.
-/

/-! ## A350420.P5058490359957357

`p?[A140452(A003622(n+1))]`
-/

namespace A350420.P5058490359957357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140452 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350420.P5058490359957357

/-! ## A350420.P11035094886916034055

`p?[A085358(n)*A140452(n+1)]`
-/

namespace A350420.P11035094886916034055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085358 n * A140452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350420.P11035094886916034055

/-! ## A350420.P8120687786790562744

`p?[A339500(A050041(n+1))+A016933(n)]`
-/

namespace A350420.P8120687786790562744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339500 (A050041 (n + 1)).toNat + A016933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350420.P8120687786790562744

/-!
# A350421: Numbers p^2*q, p > q odd primes such that q does not divide p-1, and q does not divide p+1.

The programs for A350421, there is no canonical definition to state claims against.
-/

/-! ## A350421.P118975343737759498

`filter[A095990(n+1), A344880(#)]`
-/

namespace A350421.P118975343737759498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A350421.P118975343737759498

/-! ## A350421.P13646956910239086424

`filter[A095990(n+1), A354993(#)]`
-/

namespace A350421.P13646956910239086424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A350421.P13646956910239086424

/-! ## A350421.P6091122570882298386

`filter[A102835(n+1), A354993(#)]`
-/

namespace A350421.P6091122570882298386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A350421.P6091122570882298386

/-! ## A350421.P8338883336530653646

`filter[A102836(n+1), A354993(#)]`
-/

namespace A350421.P8338883336530653646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A350421.P8338883336530653646

/-! ## A350421.P12095475546686388223

`∩[A095990(n+1), A350152(n+1)]`
-/

namespace A350421.P12095475546686388223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350421.P12095475546686388223

/-!
# A350422: Numbers of the form m = p^2*q for which there exist exactly 2 groups of order m.

The programs for A350422, there is no canonical definition to state claims against.
-/

/-! ## A350422.P17924579514226223357

`record[A028234(A249553(n+1))]`
-/

namespace A350422.P17924579514226223357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A249553 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350422.P17924579514226223357

/-! ## A350422.P15345652365305300148

`filter[A350152(n+1), A066829(#)]`
-/

namespace A350422.P15345652365305300148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A350422.P15345652365305300148

/-! ## A350422.P5024970590161703000

`filter[A350322(n+1), A066829(#)]`
-/

namespace A350422.P5024970590161703000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A350422.P5024970590161703000

/-! ## A350422.P2106692929602183667

`filter[A350152(n+1), A101605(#)]`
-/

namespace A350422.P2106692929602183667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A350422.P2106692929602183667

/-! ## A350422.P4763714933178901835

`filter[A350322(n+1), A101605(#)]`
-/

namespace A350422.P4763714933178901835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A350422.P4763714933178901835

/-! ## A350422.P1452860890666887651

`filter[A350152(n+1), A165560(#)]`
-/

namespace A350422.P1452860890666887651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A350422.P1452860890666887651

/-! ## A350422.P7274061349487922132

`filter[A350322(n+1), A165560(#)]`
-/

namespace A350422.P7274061349487922132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A350422.P7274061349487922132

/-! ## A350422.P10166126262720442613

`filter[A350322(n+1), A215480(#)]`
-/

namespace A350422.P10166126262720442613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A350422.P10166126262720442613

/-! ## A350422.P9627534906675766288

`filter[A243592(n+1), A353472(#)]`
-/

namespace A350422.P9627534906675766288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A350422.P9627534906675766288

/-! ## A350422.P254302311200676707

`filter[A243592(n+1), A353798(#)]`
-/

namespace A350422.P254302311200676707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A350422.P254302311200676707

/-!
# A350424: Numbers for which the number of their semiprime divisors sets a new record.

The programs for A350424, there is no canonical definition to state claims against.
-/

/-! ## A350424.P7726867273010902026

`A220264(A350425(n+1))`
-/

namespace A350424.P7726867273010902026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220264 (A350425 (n + 1)).toNat

end

end A350424.P7726867273010902026

/-! ## A350424.P5780450016885529090

`A220264(lt[A209996(n+1), 3*n])`
-/

namespace A350424.P5780450016885529090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220264 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A350424.P5780450016885529090

/-! ## A350424.P10236557845004059769

`A220264(lt[A208757(n+1)², A001844(n)])`
-/

namespace A350424.P10236557845004059769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350424.P10236557845004059769

/-! ## A350424.P13108529899592524614

`A220264(lt[A180662(n), log2(A018252(n+1))])`
-/

namespace A350424.P13108529899592524614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A018252 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220264 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A350424.P13108529899592524614

/-! ## A350424.P12092634817405803803

`A220264(lt[A208757(n+1), A018252(n+1)])`
-/

namespace A350424.P12092634817405803803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350424.P12092634817405803803

/-!
# A350425: Records of the number of semiprime divisors corresponding to A350424.

The programs for A350425, there is no canonical definition to state claims against.
-/

/-! ## A350425.P16161989941187875139

`lt[A054144(n), 4*n]`
-/

namespace A350425.P16161989941187875139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350425.P16161989941187875139

/-! ## A350425.P15406833626054146180

`lt[A208332(n+1), n+1]`
-/

namespace A350425.P15406833626054146180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350425.P15406833626054146180

/-! ## A350425.P10314773339052292448

`lt[A209996(n+1), 3*n]`
-/

namespace A350425.P10314773339052292448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350425.P10314773339052292448

/-! ## A350425.P1472166779521829142

`lt[A208918(n+1), 4*n]`
-/

namespace A350425.P1472166779521829142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208918 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350425.P1472166779521829142

/-! ## A350425.P10819999566230007899

`lt[A208757(n+1), n*sqrt(2)]`
-/

namespace A350425.P10819999566230007899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350425.P10819999566230007899

/-! ## A350425.P7177493202927842937

`lt[A208910(n+1), n*sqrt(3)]`
-/

namespace A350425.P7177493202927842937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350425.P7177493202927842937

/-! ## A350425.P9176389582697789392

`lt[C(A002262(n)², 3), 2*n]`
-/

namespace A350425.P9176389582697789392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n ^ 2).toNat 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350425.P9176389582697789392

/-! ## A350425.P14420351905701747589

`lt[A059268(n), log2(or(2, 6*n+2))]`
-/

namespace A350425.P14420351905701747589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 (6 * n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350425.P14420351905701747589

/-! ## A350425.P10365267388696701025

`lt[A180662(n)², log2(A220264(n))]`
-/

namespace A350425.P10365267388696701025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A220264 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350425.P10365267388696701025

/-! ## A350425.P18034305959395397729

`lt[A208757(n+1)², A001844(n)]`
-/

namespace A350425.P18034305959395397729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350425.P18034305959395397729

/-!
# A350426: a(n) is the maximum number of key comparisons required to sort n records with distinct keys using heapsort (Algorithm H in Don Knuth's TAOCP Vol. 3).

The programs for A350426, there is no canonical definition to state claims against.
-/

/-! ## A350426.P10688558836531859845

`A005357(2*(n+1))+∑[A005361(n+2)]`
-/

namespace A350426.P10688558836531859845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005357 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350426.P10688558836531859845

/-! ## A350426.P2099628686774886121

`∑[A081516(A375571(n+1)+A070939(n))]`
-/

namespace A350426.P2099628686774886121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081516 (A375571 (n + 1) + A070939 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350426.P2099628686774886121

/-! ## A350426.P13248827011522018364

`eq[A010057(n), A055400(A075109(n+1))]`
-/

namespace A350426.P13248827011522018364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A075109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350426.P13248827011522018364

/-! ## A350426.P7406510618268426139

`∑[A050430(∑[A018027(n)])]`
-/

namespace A350426.P7406510618268426139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350426.P7406510618268426139

/-!
# A350427: a(n) is the maximum number of key comparisons required to sort n records with distinct keys using a modified heapsort (Algorithm H in Don Knuth's TAOCP Vol. 3, answer to exercise 18).

The programs for A350427, there is no canonical definition to state claims against.
-/

/-! ## A350427.P14654289094164819307

`A139338(xor(A056000(n), A330728(n+1)))`
-/

namespace A350427.P14654289094164819307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (Int.xor (A056000 n) (A330728 (n + 1))).toNat

end

end A350427.P14654289094164819307

/-!
# A350428: 2*a(n)/n! is the average number of key comparisons required to sort n records with distinct keys using heapsort (Algorithm H in Don Knuth's TAOCP Vol. 3).

The programs for A350428, there is no canonical definition to state claims against.
-/

/-! ## A350428.P352325395607425086

`A008486(A005810(n)-A013609(n))`
-/

namespace A350428.P352325395607425086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A005810 n - A013609 n).toNat

end

end A350428.P352325395607425086

/-!
# A350429: Prime numbers p for which there exists at least one integer k < p such that p divides the k-th Bell number.

The programs for A350429, there is no canonical definition to state claims against.
-/

/-! ## A350429.P14493634795745067877

`A097448(record[A052247(n+1)])`
-/

namespace A350429.P14493634795745067877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350429.P14493634795745067877

/-! ## A350429.P17241574715160306931

`A336898(record[A052247(n+1)])`
-/

namespace A350429.P17241574715160306931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350429.P17241574715160306931

/-! ## A350429.P14842031286369693315

`∩[A123068(n+1), A216734(n+1)]`
-/

namespace A350429.P14842031286369693315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350429.P14842031286369693315

/-! ## A350429.P4770926006438018851

`∩[A123068(n+1), A216740(n+1)]`
-/

namespace A350429.P4770926006438018851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350429.P4770926006438018851

/-!
# A350431: G.f. A(x) satisfies: A(x*R(x)) = x^2 + x^3 where A(R(x)) = x.

The programs for A350431, there is no canonical definition to state claims against.
-/

/-! ## A350431.P17596059680511956328

`(-1)^n*floor(sqrt(A123193(n!)))`
-/

namespace A350431.P17596059680511956328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.sqrt (A123193 (Nat.factorial n))

end

end A350431.P17596059680511956328

/-! ## A350431.P18316318209829948887

`(-1)^n*A046155(A000139(n))`
-/

namespace A350431.P18316318209829948887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A046155 (A000139 n).toNat

end

end A350431.P18316318209829948887

/-! ## A350431.P2671152987915062266

`(-1)^n*A046155(A107591(n))`
-/

namespace A350431.P2671152987915062266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A046155 (A107591 n).toNat

end

end A350431.P2671152987915062266

/-! ## A350431.P10571310535861986204

`A034947(A008776(n))*A268655(n+1)`
-/

namespace A350431.P10571310535861986204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A008776 n).toNat * A268655 (n + 1)

end

end A350431.P10571310535861986204

/-!
# A350434: G.f. A(x) satisfies: A(x^3*R(x)) = x^4 - x^5 where A(R(x)) = x.

The programs for A350434, there is no canonical definition to state claims against.
-/

/-! ## A350434.P11960848508193039990

`A148363(n)+A001221(A309861(n))`
-/

namespace A350434.P11960848508193039990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148363 n + A001221 (A309861 n).toNat

end

end A350434.P11960848508193039990

/-! ## A350434.P964902305509445501

`or(A014963(A107591(n)), A148363(n))`
-/

namespace A350434.P964902305509445501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A107591 n).toNat) (A148363 n)

end

end A350434.P964902305509445501

/-! ## A350434.P13498010688976384360

`or(A025466(A047087(n+1)), A148363(n))`
-/

namespace A350434.P13498010688976384360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A047087 (n + 1)).toNat) (A148363 n)

end

end A350434.P13498010688976384360

/-! ## A350434.P17690259910048085600

`A365267(n)+A025466(A100948(2*(n+1)))`
-/

namespace A350434.P17690259910048085600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365267 n + A025466 (A100948 (2 * (n + 1))).toNat

end

end A350434.P17690259910048085600

/-!
# A350437: a(n) is the number of integers that can be represented in a 7-segment display by using only n segments (version A006942).

The programs for A350437, there is no canonical definition to state claims against.
-/

/-! ## A350437.P10879129931496203244

`A248333(A338286(n+1))`
-/

namespace A350437.P10879129931496203244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A338286 (n + 1)).toNat

end

end A350437.P10879129931496203244

/-! ## A350437.P10808240563637913454

`A374742(n)-A124765(A000108(n))`
-/

namespace A350437.P10808240563637913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374742 n - A124765 (A000108 n).toNat

end

end A350437.P10808240563637913454

/-! ## A350437.P1422731724871957649

`A055086(A261664(n))-A193592(n)`
-/

namespace A350437.P1422731724871957649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A261664 n).toNat - A193592 n

end

end A350437.P1422731724871957649

/-! ## A350437.P985062107034273408

`A332673(A000096(n))-A320902(n)`
-/

namespace A350437.P985062107034273408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332673 (A000096 n).toNat - A320902 n

end

end A350437.P985062107034273408

/-! ## A350437.P5143012985612180728

`A000071(n+1)-A180160(A080923(n))`
-/

namespace A350437.P5143012985612180728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A180160 (A080923 n).toNat

end

end A350437.P5143012985612180728

/-!
# A350438: a(n) is the number of integers that can be represented in a 7-segment display by using only n segments (version A010371).

The programs for A350438, there is no canonical definition to state claims against.
-/

/-! ## A350438.P10014803786548973134

`or(A057354(n), A156261(A014217(n)))`
-/

namespace A350438.P10014803786548973134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057354 n) (A156261 (A014217 n).toNat)

end

end A350438.P10014803786548973134

/-!
# A350439: a(n) is the number of integers that can be represented in a 7-segment display by using only n segments (version A063720).

The programs for A350439, there is no canonical definition to state claims against.
-/

/-! ## A350439.P6981002001837596417

`∑[A093997(A248122(n))]`
-/

namespace A350439.P6981002001837596417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A248122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350439.P6981002001837596417

/-! ## A350439.P10465483522240765117

`A224957(n)-A053824(A068870(n))`
-/

namespace A350439.P10465483522240765117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224957 n - A053824 (A068870 n).toNat

end

end A350439.P10465483522240765117

/-! ## A350439.P191205259131579270

`A194548(A000110(n))*A194640(n)`
-/

namespace A350439.P191205259131579270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (A000110 n).toNat * A194640 n

end

end A350439.P191205259131579270

/-! ## A350439.P9335371730086509442

`A116581(A041340(n))%A268176(n)`
-/

namespace A350439.P9335371730086509442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116581 (A041340 n).toNat) (A268176 n)

end

end A350439.P9335371730086509442

/-! ## A350439.P8251689147117855315

`A343897(A000005(n+1)*A001006(n))`
-/

namespace A350439.P8251689147117855315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343897 (A000005 (n + 1) * A001006 n).toNat

end

end A350439.P8251689147117855315

/-!
# A350440: a(n) is the number of integers that can be represented in a 7-segment display by using only n segments (version A277116).

The programs for A350440, there is no canonical definition to state claims against.
-/

/-! ## A350440.P8467466224145261810

`A080907(A042581(n))-A169809(n)`
-/

namespace A350440.P8467466224145261810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A042581 n).toNat - A169809 n

end

end A350440.P8467466224145261810

/-! ## A350440.P10628904739362289718

`A343333(∑[A011746(n+3)+A000085(n)])`
-/

namespace A350440.P10628904739362289718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011746 (n + 3) + A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350440.P10628904739362289718

/-! ## A350440.P748230893744826834

`A000071(n+1)-A072785(A245775(n+1))`
-/

namespace A350440.P748230893744826834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A072785 (A245775 (n + 1)).toNat

end

end A350440.P748230893744826834

/-! ## A350440.P8793406717500970158

`A000032(n)-A006968(A000139(n))`
-/

namespace A350440.P8793406717500970158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A006968 (A000139 n).toNat

end

end A350440.P8793406717500970158

/-!
# A350441: Numbers m such that 4^m reversed is prime.

The programs for A350441, there is no canonical definition to state claims against.
-/

/-! ## A350441.P11767344105943329832

`eq[2, A059215(2*(n+1))]+1`
-/

namespace A350441.P11767344105943329832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059215 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350441.P11767344105943329832

/-! ## A350441.P17996777774817241540

`∑[A094192(∏[A175310(n)])]`
-/

namespace A350441.P17996777774817241540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350441.P17996777774817241540

/-!
# A350443: Rigidly-deletable primes: primes such that removing some digit, one at a time in unique order gives a prime at each step, until the empty string is reached.

The programs for A350443, there is no canonical definition to state claims against.
-/

/-! ## A350443.P15296083180947378383

`p?[A185284(2*n)+A092621(n+1)]`
-/

namespace A350443.P15296083180947378383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n) + A092621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350443.P15296083180947378383

/-!
# A350444: a(n) is the smallest number that has not appeared yet in the sequence and has only one digit in common with a(n-1).

The programs for A350444, there is no canonical definition to state claims against.
-/

/-! ## A350444.P1434458414205721872

`filter[A184992(n+1), A145568(#)]`
-/

namespace A350444.P1434458414205721872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A350444.P1434458414205721872

/-! ## A350444.P18080306209010707603

`filter[A184992(n+1), A178788(#)]`
-/

namespace A350444.P18080306209010707603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A350444.P18080306209010707603

/-! ## A350444.P2630756468343315569

`filter[A184992(n+1), A196368(#)]`
-/

namespace A350444.P2630756468343315569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A350444.P2630756468343315569

/-! ## A350444.P8494149726057445197

`A184992(lt[A351313(2*n+3), A006880(n)])`
-/

namespace A350444.P8494149726057445197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351313 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350444.P8494149726057445197

/-! ## A350444.P12785557631768723775

`A184992(lt[A377051(3*n+1), A299323(n+1)])`
-/

namespace A350444.P12785557631768723775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350444.P12785557631768723775

/-!
# A350445: a(n) is the smallest number larger than a(n-1) that has only one digit in common with a(n-1).

The programs for A350445, there is no canonical definition to state claims against.
-/

/-! ## A350445.P3701368119324499164

`eq[A130571(n+1), A233583(A239086(n+1))]`
-/

namespace A350445.P3701368119324499164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A239086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350445.P3701368119324499164

/-! ## A350445.P9344422136987473163

`eq[A233583(A239086(n+1)), A239217(n+1)]`
-/

namespace A350445.P9344422136987473163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A239086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350445.P9344422136987473163

/-!
# A350446: Number T(n,k) of endofunctions on [n] with exactly k cycles of length larger than 1; triangle T(n,k), n>=0, 0<=k<=floor(n/2), read by rows.

The programs for A350446, there is no canonical definition to state claims against.
-/

/-! ## A350446.P11780948352181376901

`A162401(A003971(n+1)^n)`
-/

namespace A350446.P11780948352181376901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A003971 (n + 1) ^ n).toNat

end

end A350446.P11780948352181376901

/-! ## A350446.P17812962812517088743

`A162401(A349371(n+1)^n)`
-/

namespace A350446.P17812962812517088743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A349371 (n + 1) ^ n).toNat

end

end A350446.P17812962812517088743

/-! ## A350446.P13188953706285527020

`A306697(or(1, A171237(n)))`
-/

namespace A350446.P13188953706285527020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306697 (Int.lor 1 (A171237 n)).toNat

end

end A350446.P13188953706285527020

/-!
# A350448: Triangle read by rows: T(n,k) is the number of acyclic graphs on n unlabeled nodes whose longest directed path has k arcs.

The programs for A350448, there is no canonical definition to state claims against.
-/

/-! ## A350448.P16537899574907089532

`A117707(A054654(n)²)`
-/

namespace A350448.P16537899574907089532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A054654 n ^ 2).toNat

end

end A350448.P16537899574907089532

/-! ## A350448.P16360306111773805937

`A163352(A054654(n)²)`
-/

namespace A350448.P16360306111773805937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A054654 n ^ 2).toNat

end

end A350448.P16360306111773805937

/-! ## A350448.P5510850242925745420

`A307299(A355423(n)²)`
-/

namespace A350448.P5510850242925745420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 (A355423 n ^ 2).toNat

end

end A350448.P5510850242925745420

/-! ## A350448.P951324855805713642

`A358640(A339941(n+1))`
-/

namespace A350448.P951324855805713642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358640 (A339941 (n + 1)).toNat

end

end A350448.P951324855805713642

/-!
# A350449: Triangle read by rows: T(n,k) is the number of weakly connected acyclic digraphs on n unlabeled nodes with k arcs, n >= 1, k = 0..(n-1)*n/2.

The programs for A350449, there is no canonical definition to state claims against.
-/

/-! ## A350449.P6904385278786129923

`A091951(A062734(n+1))`
-/

namespace A350449.P6904385278786129923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A062734 (n + 1)).toNat

end

end A350449.P6904385278786129923

/-!
# A350450: Triangle read by rows: T(n,k) is the number of unlabeled weakly connected acyclic digraphs with n arcs and k vertices, n >= 0, k = 1..n+1.

The programs for A350450, there is no canonical definition to state claims against.
-/

/-! ## A350450.P2247572746993800693

`A091951(A343088(n))`
-/

namespace A350450.P2247572746993800693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A343088 n).toNat

end

end A350450.P2247572746993800693

/-! ## A350450.P554820671773149744

`∑{d}[A343088(n), A317245(#)]`
-/

namespace A350450.P554820671773149744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317245 d

end

end A350450.P554820671773149744

/-! ## A350450.P8944365983305821215

`∑{e}[A000888(A067310(n)), #]`
-/

namespace A350450.P8944365983305821215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000888 (A067310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350450.P8944365983305821215

/-! ## A350450.P594190041087877166

`A334291(A001222(n+5)*A343088(n))`
-/

namespace A350450.P594190041087877166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A001222 (n + 5) * A343088 n).toNat

end

end A350450.P594190041087877166

/-!
# A350451: Number of weakly connected acyclic digraphs with n arcs.

The programs for A350451, there is no canonical definition to state claims against.
-/

/-! ## A350451.P12898613561268173637

`A008620(A051920(n)*A348012(n))`
-/

namespace A350451.P12898613561268173637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A051920 n * A348012 n).toNat

end

end A350451.P12898613561268173637

/-! ## A350451.P8463309743870961391

`A245888(n+1)-A186038(A245888(n+1))`
-/

namespace A350451.P8463309743870961391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245888 (n + 1) - A186038 (A245888 (n + 1)).toNat

end

end A350451.P8463309743870961391

/-!
# A350455: T(n,k) is the k-th semiprime whose sum of prime factors equals 2n, triangle T(n,k), n>=2, 1<=k<=A045917(n), read by rows.

The programs for A350455, there is no canonical definition to state claims against.
-/

/-! ## A350455.P7197159488247339633

`A198292(n+2)²-A182138(n+2)²`
-/

namespace A350455.P7197159488247339633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (n + 2) ^ 2 - A182138 (n + 2) ^ 2

end

end A350455.P7197159488247339633

/-! ## A350455.P1857614336478559487

`(A198292(n+2)+A182138(n+2))*A184995(n+2)`
-/

namespace A350455.P1857614336478559487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198292 (n + 2) + A182138 (n + 2)) * A184995 (n + 2)

end

end A350455.P1857614336478559487

/-! ## A350455.P11509920431201040540

`A184995(n+2)*A234316(n+2)`
-/

namespace A350455.P11509920431201040540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (n + 2) * A234316 (n + 2)

end

end A350455.P11509920431201040540

/-! ## A350455.P10550879995444032877

`p?[A154720(n+1)+A023969(n)]*A234316(n+2)`
-/

namespace A350455.P10550879995444032877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) + A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A234316 (n + 2)

end

end A350455.P10550879995444032877

/-! ## A350455.P4776616908178412625

`(A198292(n+2)-A182138(n+2))*A234316(n+2)`
-/

namespace A350455.P4776616908178412625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198292 (n + 2) - A182138 (n + 2)) * A234316 (n + 2)

end

end A350455.P4776616908178412625

/-! ## A350455.P7296667286516847575

`A014963(2*A198292(n+2)-A234316(n+2))*A234316(n+2)`
-/

namespace A350455.P7296667286516847575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A198292 (n + 2) - A234316 (n + 2)).toNat * A234316 (n + 2)

end

end A350455.P7296667286516847575

/-!
# A350456: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 + 2*x)) / (1 + 2*x).

The programs for A350456, there is no canonical definition to state claims against.
-/

/-! ## A350456.P17484245837964386767

`(A351143(n)-A351028(n))*A033999(n)`
-/

namespace A350456.P17484245837964386767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351143 n - A351028 n) * A033999 n

end

end A350456.P17484245837964386767

/-! ## A350456.P13697605482981346483

`(A351143(n)-A351028(n))*A009531(2*n+1)`
-/

namespace A350456.P13697605482981346483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351143 n - A351028 n) * A009531 (2 * n + 1)

end

end A350456.P13697605482981346483

/-! ## A350456.P11417971279418292205

`(A351143(n)-A351028(n))/A033999(A007504(n+1))`
-/

namespace A350456.P11417971279418292205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351143 n - A351028 n : ℚ) / (A033999 (A007504 (n + 1)).toNat : ℚ)

end

end A350456.P11417971279418292205

/-!
# A350460: Positive integers k such that if p is the next prime > k then p - k is prime.

The programs for A350460, the canonical program `A350460.P4515025678665927874` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350460 has offset 1).

The definition of A350460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350460.P2443128455502632132

`eq[A066169(n+1), A204894(n+1)]+1`
-/

namespace A350460.P2443128455502632132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350460.P2443128455502632132

namespace A350460

/-- `eq[A066169(n+1), A204894(n+1)]+1` -/
def P2443128455502632132.Spec : Prop :=
  ∀ n, (P2443128455502632132.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P4621285638819698751

`eq[ceil(sin(n)²), A001222(A013632(n))]`
-/

namespace A350460.P4621285638819698751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350460.P4621285638819698751

namespace A350460

/-- `eq[ceil(sin(n)²), A001222(A013632(n))]` -/
def P4621285638819698751.Spec : Prop :=
  ∀ n, (P4621285638819698751.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P16389210502452500833

`eq[1, A168066(A013632(n+1))]+1`
-/

namespace A350460.P16389210502452500833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168066 (A013632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350460.P16389210502452500833

namespace A350460

/-- `eq[1, A168066(A013632(n+1))]+1` -/
def P16389210502452500833.Spec : Prop :=
  ∀ n, (P16389210502452500833.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P5584786037129680825

`eq[2, A000010(a(A007920(n+1)))]` with `a(0)=5`
-/

namespace A350460.P5584786037129680825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A007920 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350460.P5584786037129680825

namespace A350460

/-- `eq[2, A000010(a(A007920(n+1)))]` -/
def P5584786037129680825.Spec : Prop :=
  ∀ n, (P5584786037129680825.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P4515025678665927874

`eq[A001222(A013632(n)), A057427(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350460

/-- `eq[A001222(A013632(n)), A057427(n)]` -/
def P4515025678665927874.Spec : Prop :=
  ∀ n, (P4515025678665927874.a n : ℤ) = A350460 (n + 1)

theorem P4515025678665927874.correct : P4515025678665927874.Spec := by
  intro n
  simp only [A350460, Nat.add_sub_cancel]

end A350460

/-! ## A350460.P1616331645378553401

`eq[A013632(n), A020639(A139693(n))]`
-/

namespace A350460.P1616331645378553401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350460.P1616331645378553401

namespace A350460

/-- `eq[A013632(n), A020639(A139693(n))]` -/
def P1616331645378553401.Spec : Prop :=
  ∀ n, (P1616331645378553401.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P7918609491738723693

`eq[1, A064911(A139693(n))]`
-/

namespace A350460.P7918609491738723693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A139693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350460.P7918609491738723693

namespace A350460

/-- `eq[1, A064911(A139693(n))]` -/
def P7918609491738723693.Spec : Prop :=
  ∀ n, (P7918609491738723693.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P15978699931203589466

`eq[1, A001222(A159477(n+1)-n)]`
-/

namespace A350460.P15978699931203589466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A159477 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350460.P15978699931203589466

namespace A350460

/-- `eq[1, A001222(A159477(n+1)-n)]` -/
def P15978699931203589466.Spec : Prop :=
  ∀ n, (P15978699931203589466.a n : ℤ) = A350460 (n + 1)

end A350460

/-! ## A350460.P14808846942814916116

`eq[2, A000005(A159477(n+1)-n)]`
-/

namespace A350460.P14808846942814916116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A159477 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350460.P14808846942814916116

namespace A350460

/-- `eq[2, A000005(A159477(n+1)-n)]` -/
def P14808846942814916116.Spec : Prop :=
  ∀ n, (P14808846942814916116.a n : ℤ) = A350460 (n + 1)

end A350460

/-!
# A350461: Number of ways to choose a subset of size n from [2n] and arrange its elements into a set of lists.

The programs for A350461, the canonical program `A350461.P1001066058232075196` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350461 has offset 0).

The definition of A350461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350461.P7391555780552527273

`C(2*n, n)*A000262(n)`
-/

namespace A350461.P7391555780552527273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000262 n

end

end A350461.P7391555780552527273

namespace A350461

/-- `C(2*n, n)*A000262(n)` -/
def P7391555780552527273.Spec : Prop :=
  ∀ n, P7391555780552527273.a n = A350461 n

end A350461

/-! ## A350461.P1001066058232075196

`A000984(n)*A000262(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350461

/-- `A000984(n)*A000262(n)` -/
def P1001066058232075196.Spec : Prop :=
  ∀ n, P1001066058232075196.a n = A350461 n

theorem P1001066058232075196.correct : P1001066058232075196.Spec := by
  intro n
  simp only [A350461]

end A350461

/-! ## A350461.P6001986363925115446

`abs(A000984(n)*A293125(n))`
-/

namespace A350461.P6001986363925115446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000984 n * A293125 n|

end

end A350461.P6001986363925115446

namespace A350461

/-- `abs(A000984(n)*A293125(n))` -/
def P6001986363925115446.Spec : Prop :=
  ∀ n, P6001986363925115446.a n = A350461 n

end A350461

/-! ## A350461.P2678393977474064929

`A000108(n)*A006152(n+1)`
-/

namespace A350461.P2678393977474064929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006152 (n + 1)

end

end A350461.P2678393977474064929

namespace A350461

/-- `A000108(n)*A006152(n+1)` -/
def P2678393977474064929.Spec : Prop :=
  ∀ n, P2678393977474064929.a n = A350461 n

end A350461

/-! ## A350461.P16734916245632638868

`A000262(n)*A001405(2*n)`
-/

namespace A350461.P16734916245632638868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A001405 (2 * n)

end

end A350461.P16734916245632638868

namespace A350461

/-- `A000262(n)*A001405(2*n)` -/
def P16734916245632638868.Spec : Prop :=
  ∀ n, P16734916245632638868.a n = A350461 n

end A350461

/-! ## A350461.P6197173975238460147

`A000262(n)*A056040(2*n)`
-/

namespace A350461.P6197173975238460147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A056040 (2 * n)

end

end A350461.P6197173975238460147

namespace A350461

/-- `A000262(n)*A056040(2*n)` -/
def P6197173975238460147.Spec : Prop :=
  ∀ n, P6197173975238460147.a n = A350461 n

end A350461

/-! ## A350461.P5473360683512893207

`A000262(n)*A063886(2*n)`
-/

namespace A350461.P5473360683512893207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A063886 (2 * n)

end

end A350461.P5473360683512893207

namespace A350461

/-- `A000262(n)*A063886(2*n)` -/
def P5473360683512893207.Spec : Prop :=
  ∀ n, P5473360683512893207.a n = A350461 n

end A350461

/-! ## A350461.P113485127352066180

`A000262(n)*A126869(2*n)`
-/

namespace A350461.P113485127352066180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A126869 (2 * n)

end

end A350461.P113485127352066180

namespace A350461

/-- `A000262(n)*A126869(2*n)` -/
def P113485127352066180.Spec : Prop :=
  ∀ n, P113485127352066180.a n = A350461 n

end A350461

/-! ## A350461.P10905470224017060252

`A000262(n)*A126930(2*n)`
-/

namespace A350461.P10905470224017060252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A126930 (2 * n)

end

end A350461.P10905470224017060252

namespace A350461

/-- `A000262(n)*A126930(2*n)` -/
def P10905470224017060252.Spec : Prop :=
  ∀ n, P10905470224017060252.a n = A350461 n

end A350461

/-! ## A350461.P14821896247236480800

`A000262(n)*A129383(2*n)`
-/

namespace A350461.P14821896247236480800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A129383 (2 * n)

end

end A350461.P14821896247236480800

namespace A350461

/-- `A000262(n)*A129383(2*n)` -/
def P14821896247236480800.Spec : Prop :=
  ∀ n, P14821896247236480800.a n = A350461 n

end A350461

/-!
# A350462: Table read by rows, T(n, k) = Y(2*n, k, Z(2*n - k)) where Y are the partial Bell polynomials and Z(m) is the list [A126869(j), j = 1..2*(m+1)].

The programs for A350462, there is no canonical definition to state claims against.
-/

/-! ## A350462.P10093718079297206878

`A181236(n+1)-A006530(A000302(n))`
-/

namespace A350462.P10093718079297206878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (n + 1) - A006530 (A000302 n).toNat

end

end A350462.P10093718079297206878

/-! ## A350462.P10145943974214520694

`A181236(n+1)-A016012(A007097(n))`
-/

namespace A350462.P10145943974214520694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (n + 1) - A016012 (A007097 n).toNat

end

end A350462.P10145943974214520694

/-! ## A350462.P961856596157151092

`A181236(n+1)-A000005(A061092(n))`
-/

namespace A350462.P961856596157151092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (n + 1) - A000005 (A061092 n).toNat

end

end A350462.P961856596157151092

/-! ## A350462.P13511389991278083160

`A181236(n+1)-A040001(A056616(n))`
-/

namespace A350462.P13511389991278083160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (n + 1) - A040001 (A056616 n).toNat

end

end A350462.P13511389991278083160

/-! ## A350462.P17171955399559196723

`A181236(n+1)-A020639(A084137(n))`
-/

namespace A350462.P17171955399559196723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (n + 1) - A020639 (A084137 n).toNat

end

end A350462.P17171955399559196723

/-!
# A350463: Table read by rows, T(n, k) = Y(2*n, k, Z(2*n - k)) where Y are the partial Bell polynomials and Z(m) is the list [A126869(j), j=-1..2*m].

The programs for A350463, there is no canonical definition to state claims against.
-/

/-! ## A350463.P15252283804289940367

`A123719(A259691(n)*A269939(n))`
-/

namespace A350463.P15252283804289940367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A259691 n * A269939 n).toNat

end

end A350463.P15252283804289940367

/-! ## A350463.P14616648532014885577

`A123719(lcm(A259691(n), A269939(n)))`
-/

namespace A350463.P14616648532014885577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (Int.lcm (A259691 n) (A269939 n))

end

end A350463.P14616648532014885577

/-!
# A350464: Table read by rows. Interpolating the swinging factorial (A056040) and the double factorial (A001147).

The programs for A350464, there is no canonical definition to state claims against.
-/

/-! ## A350464.P173977294436665953

`A357434(A361527(n))`
-/

namespace A350464.P173977294436665953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (A361527 n).toNat

end

end A350464.P173977294436665953

/-! ## A350464.P7309435649543864484

`A357434(lcm(A048994(n), A239098(n)))`
-/

namespace A350464.P7309435649543864484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (Int.lcm (A048994 n) (A239098 n))

end

end A350464.P7309435649543864484

/-! ## A350464.P15486316029828837725

`or(A108611(A094665(n)), A319501(n))`
-/

namespace A350464.P15486316029828837725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108611 (A094665 n).toNat) (A319501 n)

end

end A350464.P15486316029828837725

/-! ## A350464.P9547229956151209433

`or(A181833(A361527(n)), A239098(n))`
-/

namespace A350464.P9547229956151209433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181833 (A361527 n).toNat) (A239098 n)

end

end A350464.P9547229956151209433

/-!
# A350465: Row sums of A350464.

The programs for A350465, there is no canonical definition to state claims against.
-/

/-! ## A350465.P5453234461263366083

`A109950(2*ceil(3^(n-1)))`
-/

namespace A350465.P5453234461263366083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (2 * ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A350465.P5453234461263366083

/-!
# A350467: a(n) = hypergeom([1/2 - n/2, -n/2], [-n], -8*n).

The programs for A350467, there is no canonical definition to state claims against.
-/

/-! ## A350467.P340763910538248107

`A083856(A117625(n+1))`
-/

namespace A350467.P340763910538248107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A117625 (n + 1)).toNat

end

end A350467.P340763910538248107

/-! ## A350467.P5414869968185867853

`A193376(9*C(n, 2)+n+1)`
-/

namespace A350467.P5414869968185867853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193376 (9 * Nat.choose n 2 + n + 1)

end

end A350467.P5414869968185867853

/-! ## A350467.P2616955047667027672

`A193376(A117625(n))`
-/

namespace A350467.P2616955047667027672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193376 (A117625 n).toNat

end

end A350467.P2616955047667027672

/-! ## A350467.P15172564207328921417

`A060959(A081268(n))`
-/

namespace A350467.P15172564207328921417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A081268 n).toNat

end

end A350467.P15172564207328921417

/-! ## A350467.P1135643881491622380

`A060959(A064226(n)-2)`
-/

namespace A350467.P1135643881491622380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A064226 n - 2).toNat

end

end A350467.P1135643881491622380

/-!
# A350468: a(n) = hypergeom([1/2 - n/2, -n/2], [-n], -56).

The programs for A350468, the canonical program `A350468.P9128643817303474908` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350468 has offset 0).

The definition of A350468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350468.P16136490775242905670

`ogf(1/(1-x-14x^2))`
-/

namespace A350468.P16136490775242905670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -14] n

end

end A350468.P16136490775242905670

namespace A350468

/-- `ogf(1/(1-x-14x^2))` -/
def P16136490775242905670.Spec : Prop :=
  ∀ n, P16136490775242905670.a n = A350468 n

end A350468

/-! ## A350468.P9128643817303474908

`a(n-1)+14*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350468

/-- `a(n-1)+14*a(n-2)` -/
def P9128643817303474908.Spec : Prop :=
  ∀ n, (P9128643817303474908.a n : ℤ) = A350468 n

theorem P9128643817303474908.correct : P9128643817303474908.Spec := by
  intro n
  simp only [A350468]

end A350468

/-! ## A350468.P14974199857597791414

`a(n-1)+lcm(14, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A350468.P14974199857597791414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 14 (a (n - 2))

end

end A350468.P14974199857597791414

namespace A350468

/-- `a(n-1)+lcm(14, a(n-2))` -/
def P14974199857597791414.Spec : Prop :=
  ∀ n, (P14974199857597791414.a n : ℤ) = A350468 n

end A350468

/-! ## A350468.P2909836872032545254

`14*a(n-2)-floor(-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A350468.P2909836872032545254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  14 * a (n - 2) - (-a (n - 1))

end

end A350468.P2909836872032545254

namespace A350468

/-- `14*a(n-2)-floor(-a(n-1))` -/
def P2909836872032545254.Spec : Prop :=
  ∀ n, P2909836872032545254.a n = A350468 n

end A350468

/-! ## A350468.P3356102266214445416

`lcm(7, 2*a(n-2))-ceil(-a(n-1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A350468.P3356102266214445416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 7 (2 * a (n - 2)) : ℤ) - (-a (n - 1))

end

end A350468.P3356102266214445416

namespace A350468

/-- `lcm(7, 2*a(n-2))-ceil(-a(n-1))` -/
def P3356102266214445416.Spec : Prop :=
  ∀ n, P3356102266214445416.a n = A350468 n

end A350468

/-!
# A350469: a(n) = hypergeom([1/2 - n/2, -n/2], [-n], -72).

The programs for A350469, the canonical program `A350469.P17487694321502798088` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350469 has offset 0).

The definition of A350469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350469.P413145442742570920

`ogf(1/(1-x-18x^2))`
-/

namespace A350469.P413145442742570920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -18] n

end

end A350469.P413145442742570920

namespace A350469

/-- `ogf(1/(1-x-18x^2))` -/
def P413145442742570920.Spec : Prop :=
  ∀ n, P413145442742570920.a n = A350469 n

end A350469

/-! ## A350469.P17487694321502798088

`a(n-1)+18*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350469

/-- `a(n-1)+18*a(n-2)` -/
def P17487694321502798088.Spec : Prop :=
  ∀ n, (P17487694321502798088.a n : ℤ) = A350469 n

theorem P17487694321502798088.correct : P17487694321502798088.Spec := by
  intro n
  simp only [A350469]

end A350469

/-! ## A350469.P12106905260525982861

`a(n-1)+lcm(18, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A350469.P12106905260525982861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 18 (a (n - 2))

end

end A350469.P12106905260525982861

namespace A350469

/-- `a(n-1)+lcm(18, a(n-2))` -/
def P12106905260525982861.Spec : Prop :=
  ∀ n, (P12106905260525982861.a n : ℤ) = A350469 n

end A350469

/-! ## A350469.P7598916343031303330

`19*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A350469.P7598916343031303330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  19 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A350469.P7598916343031303330

namespace A350469

/-- `19*a(n-2)-(a(n-2)-a(n-1))` -/
def P7598916343031303330.Spec : Prop :=
  ∀ n, P7598916343031303330.a n = A350469 n

end A350469

/-!
# A350470: Array read by ascending antidiagonals. T(n, k) = J(k, n) where J are the Jacobsthal polynomials.

The programs for A350470, there is no canonical definition to state claims against.
-/

/-! ## A350470.P8901163939665190400

`A132424(C(A168318(n+2), A264031(n+4)))`
-/

namespace A350470.P8901163939665190400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132424 (Nat.choose (A168318 (n + 2)).toNat (A264031 (n + 4)).toNat)

end

end A350470.P8901163939665190400

/-!
# A350471: The number of days elapsed since the Gregorian (proleptic) date Sunday, December 31, 1 BC on 1/1/n, where 1/1/n is the Gregorian date in the format month/day/year, the New Year's Day of the year n.

The programs for A350471, there is no canonical definition to state claims against.
-/

/-! ## A350471.P14448087199701832429

`365*n+ceil((n+1)/4)`
-/

namespace A350471.P14448087199701832429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (365 * n : ℤ) + ⌈(n + 1 : ℚ) / 4⌉

end

end A350471.P14448087199701832429

/-! ## A350471.P12959410454730485316

`∑[A033173(n+2)%A033173(n+1)]`
-/

namespace A350471.P12959410454730485316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033173 (n + 2)) (A033173 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350471.P12959410454730485316

/-!
# A350472: Positive integers k such that if p is the next prime > k, and q is the previous prime < k, then p - k is prime and k - q is prime.

The programs for A350472, there is no canonical definition to state claims against.
-/

/-! ## A350472.P14213768670137767157

`∩[A350496(n+1), A350460(n+2)]`
-/

namespace A350472.P14213768670137767157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350472.P14213768670137767157

/-! ## A350472.P9235856547703890162

`A313836(A062399(n))+A244320(n)+4`
-/

namespace A350472.P9235856547703890162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 (A062399 n).toNat + (A244320 n + 4)

end

end A350472.P9235856547703890162

/-! ## A350472.P1549255191638065818

`A145025(floor(log2(A145013(n+2))))`
-/

namespace A350472.P1549255191638065818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (Nat.log 2 (A145013 (n + 2)).toNat)

end

end A350472.P1549255191638065818

/-! ## A350472.P2967579482830291674

`A005187(3*(n+1))-A215200(A003945(n+3))`
-/

namespace A350472.P2967579482830291674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (3 * (n + 1)) - A215200 (A003945 (n + 3)).toNat

end

end A350472.P2967579482830291674

/-!
# A350473: a(n) = Fibonacci(n+1)^3 - Fibonacci(n-1)^3.

The programs for A350473, the canonical program `A350473.P16965294482391092914` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350473 has offset 0).

The definition of A350473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350473.P16965294482391092914

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=26`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A350473

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P16965294482391092914.Spec : Prop :=
  ∀ n, P16965294482391092914.a n = A350473 n

theorem P16965294482391092914.correct : P16965294482391092914.Spec := by
  intro n
  simp only [A350473]

end A350473

/-! ## A350473.P14999333532672030535

`record[Δ[A110224(floor(n/2))]]`
-/

namespace A350473.P14999333532672030535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350473.P14999333532672030535

namespace A350473

/-- `record[Δ[A110224(floor(n/2))]]` -/
def P14999333532672030535.Spec : Prop :=
  ∀ n, P14999333532672030535.a n = A350473 n

end A350473

/-! ## A350473.P13965393906624120586

`Δ[A110224(log2(ceil(2^(n-1))))]`
-/

namespace A350473.P13965393906624120586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350473.P13965393906624120586

namespace A350473

/-- `Δ[A110224(log2(ceil(2^(n-1))))]` -/
def P13965393906624120586.Spec : Prop :=
  ∀ n, P13965393906624120586.a n = A350473 n

end A350473

/-! ## A350473.P3112432978102251991

`A014445(n)-A056570(n)`
-/

namespace A350473.P3112432978102251991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A056570 n

end

end A350473.P3112432978102251991

namespace A350473

/-- `A014445(n)-A056570(n)` -/
def P3112432978102251991.Spec : Prop :=
  ∀ n, P3112432978102251991.a n = A350473 n

end A350473

/-! ## A350473.P8007157947689846011

`2*A001076(n)-A056570(n)`
-/

namespace A350473.P8007157947689846011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n - A056570 n

end

end A350473.P8007157947689846011

namespace A350473

/-- `2*A001076(n)-A056570(n)` -/
def P8007157947689846011.Spec : Prop :=
  ∀ n, P8007157947689846011.a n = A350473 n

end A350473

/-! ## A350473.P18414002784174834324

`A000045(3*n)-A056570(n)`
-/

namespace A350473.P18414002784174834324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - A056570 n

end

end A350473.P18414002784174834324

namespace A350473

/-- `A000045(3*n)-A056570(n)` -/
def P18414002784174834324.Spec : Prop :=
  ∀ n, P18414002784174834324.a n = A350473 n

end A350473

/-! ## A350473.P7476932658546094951

`A000045(3*n)-A000045(n)^3`
-/

namespace A350473.P7476932658546094951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - A000045 n ^ 3

end

end A350473.P7476932658546094951

namespace A350473

/-- `A000045(3*n)-A000045(n)^3` -/
def P7476932658546094951.Spec : Prop :=
  ∀ n, P7476932658546094951.a n = A350473 n

end A350473

/-! ## A350473.P5764914809293945834

`(A047946(n)-A007598(n))*A000045(n)`
-/

namespace A350473.P5764914809293945834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047946 n - A007598 n) * A000045 n

end

end A350473.P5764914809293945834

namespace A350473

/-- `(A047946(n)-A007598(n))*A000045(n)` -/
def P5764914809293945834.Spec : Prop :=
  ∀ n, P5764914809293945834.a n = A350473 n

end A350473

/-! ## A350473.P12385763451673179833

`A014445(n)-A000045(n)²*A000045(n)`
-/

namespace A350473.P12385763451673179833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A000045 n ^ 2 * A000045 n

end

end A350473.P12385763451673179833

namespace A350473

/-- `A014445(n)-A000045(n)²*A000045(n)` -/
def P12385763451673179833.Spec : Prop :=
  ∀ n, P12385763451673179833.a n = A350473 n

end A350473

/-!
# A350474: G.f. A(x) = Sum_{n>=1} a(n)*x^(2*n-1) satisfies: A(x*R(x)) = x^2 - x^4, where A(R(x)) = x.

The programs for A350474, there is no canonical definition to state claims against.
-/

/-! ## A350474.P13623033962410053817

`A248228(floor(sqrt(A309731(n!))))`
-/

namespace A350474.P13623033962410053817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248228 (Int.sqrt (A309731 (Nat.factorial n))).toNat

end

end A350474.P13623033962410053817

/-! ## A350474.P10279232212883616670

`floor(A307701(A008000(n))^(n/3))`
-/

namespace A350474.P10279232212883616670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307701 (A008000 n).toNat : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A350474.P10279232212883616670

/-!
# A350476: G.f. A(x) = Sum_{n>=1} a(n)*x^(3*n-2) satisfies: A(x*R(x)) = x^2 - x^5, where A(R(x)) = x.

The programs for A350476, there is no canonical definition to state claims against.
-/

/-! ## A350476.P16317272164505947147

`or(A157454(A111841(n)), A294363(n))`
-/

namespace A350476.P16317272164505947147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157454 (A111841 n).toNat) (A294363 n)

end

end A350476.P16317272164505947147

/-! ## A350476.P9975331188678245437

`A001651(A270665(n)-A283115(n+1))`
-/

namespace A350476.P9975331188678245437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A270665 n - A283115 (n + 1)).toNat

end

end A350476.P9975331188678245437

/-!
# A350478: G.f. A(x) = Sum_{n>=1} a(n)*x^(2*n-1) satisfies: A(x^2*R(x)) = x^3 - x^5, where A(R(x)) = x.

The programs for A350478, there is no canonical definition to state claims against.
-/

/-! ## A350478.P1580498404997581335

`A186242(n)+A049502(A000272(n))`
-/

namespace A350478.P1580498404997581335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186242 n + A049502 (A000272 n).toNat

end

end A350478.P1580498404997581335

/-! ## A350478.P5925933246740404828

`A367060(n)+A081150(A184955(2*n+3))`
-/

namespace A350478.P5925933246740404828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367060 n + A081150 (A184955 (2 * n + 3)).toNat

end

end A350478.P5925933246740404828

/-!
# A350480: G.f. A(x) = Sum_{n>=1} a(n)*x^(3*n-2) satisfies: A(x^2*R(x)) = x^3 - x^6, where A(R(x)) = x.

The programs for A350480, there is no canonical definition to state claims against.
-/

/-! ## A350480.P11150901550839652467

`A337635(abs(A291535(n+1)))`
-/

namespace A350480.P11150901550839652467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 |A291535 (n + 1)|.toNat

end

end A350480.P11150901550839652467

/-! ## A350480.P12591782926985052344

`A008615(A326489(3*n)+A030039(n))`
-/

namespace A350480.P12591782926985052344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A326489 (3 * n) + A030039 n).toNat

end

end A350480.P12591782926985052344

/-!
# A350482: G.f. A(x) = Sum_{n>=1} a(n)*x^(2*n-1) satisfies: A(x^3*R(x)) = x^4 - x^6, where A(R(x)) = x.

The programs for A350482, there is no canonical definition to state claims against.
-/

/-! ## A350482.P13435629919191293764

`A008619(or(A058300(n), A360100(n)))`
-/

namespace A350482.P13435629919191293764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A058300 n) (A360100 n)).toNat

end

end A350482.P13435629919191293764

/-! ## A350482.P7647166674428568187

`A028303(n)+A008612(A001850(n))-A005204(A349980(n+1))`
-/

namespace A350482.P7647166674428568187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 n + A008612 (A001850 n).toNat - A005204 (A349980 (n + 1)).toNat

end

end A350482.P7647166674428568187

/-!
# A350484: The number of rigidity circuits on n vertices.

The programs for A350484, there is no canonical definition to state claims against.
-/

/-! ## A350484.P7069758465855555203

`A052413(A340024(n))+1`
-/

namespace A350484.P7069758465855555203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A340024 n).toNat + 1

end

end A350484.P7069758465855555203

/-! ## A350484.P9594658175914708802

`A024699(Δ[A076316(n+1)])`
-/

namespace A350484.P9594658175914708802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (f1 (n + 1) - f1 n).toNat

end

end A350484.P9594658175914708802

/-!
# A350485: The number of Assur graphs on n vertices.

The programs for A350485, there is no canonical definition to state claims against.
-/

/-! ## A350485.P4566695289724402809

`∑{d}[A160552(A179539(n)), #]`
-/

namespace A350485.P4566695289724402809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A179539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A350485.P4566695289724402809

/-! ## A350485.P1791629780017569076

`A362634(A150632(n))+A003436(n)`
-/

namespace A350485.P1791629780017569076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362634 (A150632 n).toNat + A003436 n

end

end A350485.P1791629780017569076

/-!
# A350486: Numbers that have an equal number of even- and odd-length unordered factorizations and also an equal number of even- and odd-length unordered factorizations into distinct factors.

The programs for A350486, there is no canonical definition to state claims against.
-/

/-! ## A350486.P9682490656297048899

`eq[5, A034005(A074206(n))]`
-/

namespace A350486.P9682490656297048899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034005 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350486.P9682490656297048899

/-! ## A350486.P12281980092737401289

`eq[3, A031027(A002033(n))]+1`
-/

namespace A350486.P12281980092737401289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A002033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350486.P12281980092737401289

/-! ## A350486.P7806079352965329697

`lt[A031269(abs(81-A074206(n))+1), 1]`
-/

namespace A350486.P7806079352965329697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (|81 - A074206 n| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350486.P7806079352965329697

/-! ## A350486.P694682893061371344

`eq[1, A121755(A285572(n+1)+1)]+1`
-/

namespace A350486.P694682893061371344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (A285572 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350486.P694682893061371344

/-! ## A350486.P6268855958357342617

`eq[2, A051801(A281116(n+1)+1)]+1`
-/

namespace A350486.P6268855958357342617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A281116 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350486.P6268855958357342617

/-! ## A350486.P7529590693206079027

`lt[A010057(n), A025462(A145154(n))]`
-/

namespace A350486.P7529590693206079027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350486.P7529590693206079027

/-! ## A350486.P8420274156791301879

`∪[A008864(A005846(n+1)), A006881(n+1)]`
-/

namespace A350486.P8420274156791301879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A005846 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350486.P8420274156791301879

/-! ## A350486.P3245351679700845023

`∪[A006881(n+1), A008594(A332515(n+1))]`
-/

namespace A350486.P3245351679700845023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A332515 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350486.P3245351679700845023

/-! ## A350486.P15897237192268523261

`∪[A006881(n+1), A022759(A091178(n+4))]`
-/

namespace A350486.P15897237192268523261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (A091178 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350486.P15897237192268523261

/-!
# A350487: Triangle read by rows: T(n,k) is the number of acyclic digraphs on n labeled nodes with k arcs and a global source, n >= 1, k = 0..n*(n-1)/2.

The programs for A350487, there is no canonical definition to state claims against.
-/

/-! ## A350487.P13385512654426566514

`A336255(n+1)^A002217(A078057(n))`
-/

namespace A350487.P13385512654426566514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336255 (n + 1) : ℚ) ^ (A002217 (A078057 n).toNat : ℤ)

end

end A350487.P13385512654426566514

/-! ## A350487.P15336394040108363173

`A336255(n+1)^A097564(A097564(n))`
-/

namespace A350487.P15336394040108363173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336255 (n + 1) : ℚ) ^ (A097564 (A097564 n).toNat : ℤ)

end

end A350487.P15336394040108363173

/-! ## A350487.P17480195606891278774

`A336255(n+1)^A120966(A087123(n))`
-/

namespace A350487.P17480195606891278774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336255 (n + 1) : ℚ) ^ (A120966 (A087123 n).toNat : ℤ)

end

end A350487.P17480195606891278774

/-! ## A350487.P14641279939703068199

`A336255(n+1)^A232550(A296846(n))`
-/

namespace A350487.P14641279939703068199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336255 (n + 1) : ℚ) ^ (A232550 (A296846 n).toNat : ℤ)

end

end A350487.P14641279939703068199

/-!
# A350490: Number of unlabeled acyclic digraphs with n arcs and a global source.

The programs for A350490, there is no canonical definition to state claims against.
-/

/-! ## A350490.P4682690732709661663

`A192634(A073788(n))`
-/

namespace A350490.P4682690732709661663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192634 (A073788 n).toNat

end

end A350490.P4682690732709661663

/-! ## A350490.P8273117413196439984

`A260734(A061396(n))`
-/

namespace A350490.P8273117413196439984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A061396 n).toNat

end

end A350490.P8273117413196439984

/-! ## A350490.P13026312981950600603

`A001462(A330624(n))`
-/

namespace A350490.P13026312981950600603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A330624 n).toNat

end

end A350490.P13026312981950600603

/-!
# A350491: Triangle read by rows: T(n,k) is the number of acyclic digraphs on n unlabeled nodes with k arcs and a global source and sink, n >= 1, k = 0..n*(n-1)/2.

The programs for A350491, there is no canonical definition to state claims against.
-/

/-! ## A350491.P13578290023938002612

`A231813(A062734(n+1)²)²`
-/

namespace A350491.P13578290023938002612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A062734 (n + 1) ^ 2).toNat ^ 2

end

end A350491.P13578290023938002612

/-! ## A350491.P12443375181746180002

`lcm(A138158(n), A193349(A208355(n)))`
-/

namespace A350491.P12443375181746180002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138158 n) (A193349 (A208355 n).toNat)

end

end A350491.P12443375181746180002

/-! ## A350491.P7418253808453019397

`A001222(A204202(2*(n+1))^A138158(n))`
-/

namespace A350491.P7418253808453019397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A204202 (2 * (n + 1)) : ℚ) ^ (A138158 n : ℤ))).toNat

end

end A350491.P7418253808453019397

/-! ## A350491.P13356444552934510475

`A102382(A054924(n+1)*A256384(2*n+1))`
-/

namespace A350491.P13356444552934510475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A054924 (n + 1) * A256384 (2 * n + 1)).toNat

end

end A350491.P13356444552934510475

/-! ## A350491.P16614450125577138253

`A193349(A208355(n))-A138158(A138158(n)²)`
-/

namespace A350491.P16614450125577138253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193349 (A208355 n).toNat - A138158 (A138158 n ^ 2).toNat

end

end A350491.P16614450125577138253

/-!
# A350492: Number of unlabeled acyclic digraphs with n arcs and a global source and sink.

The programs for A350492, there is no canonical definition to state claims against.
-/

/-! ## A350492.P6202679970900843305

`A130446(A363431(n))`
-/

namespace A350492.P6202679970900843305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A363431 n).toNat

end

end A350492.P6202679970900843305

/-! ## A350492.P8244590913894299720

`A157271(A363110(n))`
-/

namespace A350492.P8244590913894299720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A363110 n).toNat

end

end A350492.P8244590913894299720

/-! ## A350492.P2169078330661525017

`A037458(A100196(n!))`
-/

namespace A350492.P2169078330661525017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A100196 (Nat.factorial n)).toNat

end

end A350492.P2169078330661525017

/-! ## A350492.P11707047573160987291

`A157271(A324203(n!))`
-/

namespace A350492.P11707047573160987291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A324203 (Nat.factorial n)).toNat

end

end A350492.P11707047573160987291

/-!
# A350493: a(n) = floor(sqrt(prime(n)))^2 mod n.

The programs for A350493, the canonical program `A350493.P999112801028716783` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350493 has offset 1).

The definition of A350493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350493.P999112801028716783

`A065730(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A350493

/-- `A065730(n+1)%(n+1)` -/
def P999112801028716783.Spec : Prop :=
  ∀ n, P999112801028716783.a n = A350493 (n + 1)

theorem P999112801028716783.correct : P999112801028716783.Spec := by
  intro n
  simp only [A350493, Nat.add_sub_cancel]

end A350493

/-! ## A350493.P12022801413616535149

`A000006(n+1)²%(n+1)`
-/

namespace A350493.P12022801413616535149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000006 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A350493.P12022801413616535149

namespace A350493

/-- `A000006(n+1)²%(n+1)` -/
def P12022801413616535149.Spec : Prop :=
  ∀ n, P12022801413616535149.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P17266153887427708132

`(A103416(n)+1)²%(n+1)`
-/

namespace A350493.P17266153887427708132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A103416 n + 1) ^ 2) (n + 1 : ℤ)

end

end A350493.P17266153887427708132

namespace A350493

/-- `(A103416(n)+1)²%(n+1)` -/
def P17266153887427708132.Spec : Prop :=
  ∀ n, P17266153887427708132.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P14537237626919004999

`floor(sqrt(A000040(n+1)))²%(n+1)`
-/

namespace A350493.P14537237626919004999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000040 (n + 1)) ^ 2) (n + 1 : ℤ)

end

end A350493.P14537237626919004999

namespace A350493

/-- `floor(sqrt(A000040(n+1)))²%(n+1)` -/
def P14537237626919004999.Spec : Prop :=
  ∀ n, P14537237626919004999.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P12552779888856363872

`floor(sqrt(p?[xor(1, n)]))²%(n+1)`
-/

namespace A350493.P12552779888856363872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2 % (n + 1)

end

end A350493.P12552779888856363872

namespace A350493

/-- `floor(sqrt(p?[xor(1, n)]))²%(n+1)` -/
def P12552779888856363872.Spec : Prop :=
  ∀ n, (P12552779888856363872.a n : ℤ) = A350493 (n + 1)

end A350493

/-! ## A350493.P3608030627972357059

`ceil(-sqrt(p?[xor(1, n)]))²%(n+1)`
-/

namespace A350493.P3608030627972357059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈-Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉ ^ 2) (n + 1 : ℤ)

end

end A350493.P3608030627972357059

namespace A350493

/-- `ceil(-sqrt(p?[xor(1, n)]))²%(n+1)` -/
def P3608030627972357059.Spec : Prop :=
  ∀ n, P3608030627972357059.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P2859374073993154287

`floor(record[sqrt(A000010(n+1))])²%(n+1)`
-/

namespace A350493.P2859374073993154287
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000010 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ ^ 2) (n + 1 : ℤ)

end

end A350493.P2859374073993154287

namespace A350493

/-- `floor(record[sqrt(A000010(n+1))])²%(n+1)` -/
def P2859374073993154287.Spec : Prop :=
  ∀ n, P2859374073993154287.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P14823871717662462155

`floor(record[sqrt(A006530(n+2))])²%(n+1)`
-/

namespace A350493.P14823871717662462155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ ^ 2) (n + 1 : ℤ)

end

end A350493.P14823871717662462155

namespace A350493

/-- `floor(record[sqrt(A006530(n+2))])²%(n+1)` -/
def P14823871717662462155.Spec : Prop :=
  ∀ n, P14823871717662462155.a n = A350493 (n + 1)

end A350493

/-! ## A350493.P578567312762690761

`floor(record[sqrt(A014963(n+2))])²%(n+1)`
-/

namespace A350493.P578567312762690761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014963 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ ^ 2) (n + 1 : ℤ)

end

end A350493.P578567312762690761

namespace A350493

/-- `floor(record[sqrt(A014963(n+2))])²%(n+1)` -/
def P578567312762690761.Spec : Prop :=
  ∀ n, P578567312762690761.a n = A350493 (n + 1)

end A350493

/-!
# A350494: Divide n by the greatest common divisor of the nonzero digits of n.

The programs for A350494, there is no canonical definition to state claims against.
-/

/-! ## A350494.P10198874005627530621

`(n+1)/A052423(n+1)`
-/

namespace A350494.P10198874005627530621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052423 (n + 1) : ℚ)

end

end A350494.P10198874005627530621

/-! ## A350494.P14001769610055371425

`(n+1)/A064894(A086066(n+1))`
-/

namespace A350494.P14001769610055371425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064894 (A086066 (n + 1)).toNat : ℚ)

end

end A350494.P14001769610055371425

/-! ## A350494.P12345864626334782885

`(n+1)/A289508(A113581(n+1))`
-/

namespace A350494.P12345864626334782885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A289508 (A113581 (n + 1)).toNat : ℚ)

end

end A350494.P12345864626334782885

/-! ## A350494.P9589907486090573168

`A219158(A052423(n+1)+A000217(n))`
-/

namespace A350494.P9589907486090573168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A052423 (n + 1) + A000217 n).toNat

end

end A350494.P9589907486090573168

/-! ## A350494.P1423068733745717753

`(n+1)/gcd(A115299(n+1), A156230(n+1))`
-/

namespace A350494.P1423068733745717753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A115299 (n + 1)) (A156230 (n + 1)) : ℚ)

end

end A350494.P1423068733745717753

/-! ## A350494.P12365700154914004240

`(n+1)/gcd(A256851(n+1), A365762(n+1))`
-/

namespace A350494.P12365700154914004240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A256851 (n + 1)) (A365762 (n + 1)) : ℚ)

end

end A350494.P12365700154914004240

/-! ## A350494.P9338006696402901560

`(n+1)/gcd(A102684(n), A216455(n+1))`
-/

namespace A350494.P9338006696402901560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A102684 n) (A216455 (n + 1)) : ℚ)

end

end A350494.P9338006696402901560

/-!
# A350496: Positive integers k such that if p is the largest prime less than k then k - p is prime.

The programs for A350496, there is no canonical definition to state claims against.
-/

/-! ## A350496.P10652896189258468643

`eq[1, A105700(A175851(n+1))]+2`
-/

namespace A350496.P10652896189258468643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A175851 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A350496.P10652896189258468643

/-! ## A350496.P12333741952004642953

`eq[1, A001222(A175851(n+2))]+3`
-/

namespace A350496.P12333741952004642953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175851 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A350496.P12333741952004642953

/-! ## A350496.P12223594475016852207

`eq[2, A000005(A049711(n+3))]+3`
-/

namespace A350496.P12223594475016852207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049711 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A350496.P12223594475016852207

/-! ## A350496.P4184590480780254542

`∪[A048974(n+1), A238204(n+1)]`
-/

namespace A350496.P4184590480780254542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350496.P4184590480780254542

/-! ## A350496.P8001993885610475580

`lt[A008683(A064722(n+1)+1), 0]+2`
-/

namespace A350496.P8001993885610475580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064722 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A350496.P8001993885610475580

/-! ## A350496.P1811303087961311121

`record[A113646(A136548(n+1))+A078772(n+1)]`
-/

namespace A350496.P1811303087961311121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (A136548 (n + 1)).toNat + A078772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350496.P1811303087961311121

/-! ## A350496.P14098028302990735050

`eq[n, A028310(n)-A219428(A175851(n+1))]+2`
-/

namespace A350496.P14098028302990735050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A219428 (A175851 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A350496.P14098028302990735050

/-! ## A350496.P3963829504206907797

`A014973(A171487(n+1))+A014683(2*n+3)`
-/

namespace A350496.P3963829504206907797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A171487 (n + 1)).toNat + A014683 (2 * n + 3)

end

end A350496.P3963829504206907797

/-! ## A350496.P16659761435449817567

`A014973(A128060(n+1)*A128060(n+2))+A014683(2*n+3)`
-/

namespace A350496.P16659761435449817567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A128060 (n + 1) * A128060 (n + 2)).toNat + A014683 (2 * n + 3)

end

end A350496.P16659761435449817567

/-!
# A350498: Convolution of triangular numbers with every third number of Narayana's Cows sequence.

The programs for A350498, the canonical program `A350498.P4000467962181187595` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350498 has offset 1).

The definition of A350498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350498.P4000467962181187595

`A052529(n+1)-A000217(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350498

/-- `A052529(n+1)-A000217(n+1)` -/
def P4000467962181187595.Spec : Prop :=
  ∀ n, P4000467962181187595.a n = A350498 (n + 1)

theorem P4000467962181187595.correct : P4000467962181187595.Spec := by
  intro n
  simp only [A350498, Nat.add_sub_cancel]

end A350498

/-! ## A350498.P13190707949906447438

`∑[∑[A052544(n)-1]]`
-/

namespace A350498.P13190707949906447438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P13190707949906447438

namespace A350498

/-- `∑[∑[A052544(n)-1]]` -/
def P13190707949906447438.Spec : Prop :=
  ∀ n, P13190707949906447438.a n = A350498 (n + 1)

end A350498

/-! ## A350498.P8742321322543540764

`∑[A124820(n)-(n+1)]`
-/

namespace A350498.P8742321322543540764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124820 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P8742321322543540764

namespace A350498

/-- `∑[A124820(n)-(n+1)]` -/
def P8742321322543540764.Spec : Prop :=
  ∀ n, P8742321322543540764.a n = A350498 (n + 1)

end A350498

/-! ## A350498.P9742235437509355285

`∑[∑[∑[A052529(n)]-1]]`
-/

namespace A350498.P9742235437509355285
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P9742235437509355285

namespace A350498

/-- `∑[∑[∑[A052529(n)]-1]]` -/
def P9742235437509355285.Spec : Prop :=
  ∀ n, P9742235437509355285.a n = A350498 (n + 1)

end A350498

/-! ## A350498.P2452366849129349373

`∑[∑[A204200(n+2)-1]]`
-/

namespace A350498.P2452366849129349373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P2452366849129349373

namespace A350498

/-- `∑[∑[A204200(n+2)-1]]` -/
def P2452366849129349373.Spec : Prop :=
  ∀ n, P2452366849129349373.a n = A350498 (n + 1)

end A350498

/-! ## A350498.P617496311574215714

`∑[∑[A000930(3*n)-1]]`
-/

namespace A350498.P617496311574215714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P617496311574215714

namespace A350498

/-- `∑[∑[A000930(3*n)-1]]` -/
def P617496311574215714.Spec : Prop :=
  ∀ n, P617496311574215714.a n = A350498 (n + 1)

end A350498

/-! ## A350498.P12782123575614778252

`A052529(n+1)-A338995(A000217(n))`
-/

namespace A350498.P12782123575614778252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 (n + 1) - A338995 (A000217 n).toNat

end

end A350498.P12782123575614778252

namespace A350498

/-- `A052529(n+1)-A338995(A000217(n))` -/
def P12782123575614778252.Spec : Prop :=
  ∀ n, P12782123575614778252.a n = A350498 (n + 1)

end A350498

/-!
# A350499: Unsigned coefficients of free moment partition polynomials determining the free cumulants from the free moments of free probability theory. Irregular triangle with row lengths given by A000041, n >= 1.

The programs for A350499, there is no canonical definition to state claims against.
-/

/-! ## A350499.P6041843937961315652

`A225638(2*A338135(n+1))`
-/

namespace A350499.P6041843937961315652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (2 * A338135 (n + 1)).toNat

end

end A350499.P6041843937961315652

