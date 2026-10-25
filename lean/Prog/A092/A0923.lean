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
# A092303: Triangle read by rows giving coefficients of polynomials f_n(q) arising in several different contexts.

The programs for A092303, there is no canonical definition to state claims against.
-/

/-! ## A092303.P10205121818428932619

`A010054(n)-Δ[A090996(A171165(3*n+2))]`
-/

namespace A092303.P10205121818428932619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A171165 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n - (f1 (n + 1) - f1 n)

end

end A092303.P10205121818428932619

/-! ## A092303.P12971008729338854956

`A255212(n)+A085906(A277047(n+1))`
-/

namespace A092303.P12971008729338854956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 n + A085906 (A277047 (n + 1)).toNat

end

end A092303.P12971008729338854956

/-! ## A092303.P9204495967301876015

`A035185(A112732(n))-A353556(3*(n+1))`
-/

namespace A092303.P9204495967301876015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A112732 n).toNat - A353556 (3 * (n + 1))

end

end A092303.P9204495967301876015

/-! ## A092303.P10751376669212798283

`A375149(A189391(n+1))`
-/

namespace A092303.P10751376669212798283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375149 (A189391 (n + 1)).toNat

end

end A092303.P10751376669212798283

/-! ## A092303.P9835174778433967790

`A002324(A006720(n))-A055029(n)`
-/

namespace A092303.P9835174778433967790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A006720 n).toNat - A055029 n

end

end A092303.P9835174778433967790

/-!
# A092304: Number of cusped hyperbolic 3-manifolds obtained from n ideal tetrahedra.

The programs for A092304, there is no canonical definition to state claims against.
-/

/-! ## A092304.P16529198563967873792

`A091145(n+1)+A091108(n+1)`
-/

namespace A092304.P16529198563967873792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091145 (n + 1) + A091108 (n + 1)

end

end A092304.P16529198563967873792

/-!
# A092305: Length of period of sequence of Genocchi number of first kind read modulo (2n+1).

The programs for A092305, there is no canonical definition to state claims against.
-/

/-! ## A092305.P6263561070953951778

`Δ[n²]*∏{p}[Δ[n²], n%#]`
-/

namespace A092305.P6263561070953951778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, n % p : ℕ) : ℤ)

end

end A092305.P6263561070953951778

/-! ## A092305.P17993313503452430414

`(2*n+1)*∏{p}[2*n+1, floor(#/2)]`
-/

namespace A092305.P17993313503452430414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / 2⌋)

end

end A092305.P17993313503452430414

/-! ## A092305.P14384611349789576407

`A090780(Δ[n²])`
-/

namespace A092305.P14384611349789576407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092305.P14384611349789576407

/-! ## A092305.P1632543983360931091

`or(char[1], A090780(2*n+1))`
-/

namespace A092305.P1632543983360931091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A090780 (2 * n + 1))

end

end A092305.P1632543983360931091

/-! ## A092305.P15816142970741808629

`A090780(A017113(n))/2`
-/

namespace A092305.P15816142970741808629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090780 (A017113 n).toNat : ℚ) / 2

end

end A092305.P15816142970741808629

/-! ## A092305.P478624465707772064

`A046073(A354258(2*n+1))`
-/

namespace A092305.P478624465707772064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A354258 (2 * n + 1)).toNat

end

end A092305.P478624465707772064

/-! ## A092305.P6681409046512150221

`A090780(A005408(n))%(n^3+7)`
-/

namespace A092305.P6681409046512150221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090780 (A005408 n).toNat) (n ^ 3 + 7 : ℤ)

end

end A092305.P6681409046512150221

/-! ## A092305.P10666471389504397728

`filter[A090780(2*n+1), A267579(#)]`
-/

namespace A092305.P10666471389504397728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A092305.P10666471389504397728

/-! ## A092305.P14498668536494581354

`filter[A090780(2*n+1), A267919(#)]`
-/

namespace A092305.P14498668536494581354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267919 (f1 j).toNat = 1) n)

end

end A092305.P14498668536494581354

/-! ## A092305.P18125948747682532594

`A089692(2*n+1)*A204455(2*n+1)`
-/

namespace A092305.P18125948747682532594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089692 (2 * n + 1) * A204455 (2 * n + 1)

end

end A092305.P18125948747682532594

/-!
# A092306: Number of partitions of n such that the set of parts has an even number of elements.

The programs for A092306, there is no canonical definition to state claims against.
-/

/-! ## A092306.P5153641887455226913

`(A000041(n)+A104575(n))/2`
-/

namespace A092306.P5153641887455226913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A104575 n : ℚ) / 2

end

end A092306.P5153641887455226913

/-! ## A092306.P7632089236003534081

`(A104575(n)+A035363(2*n))/2`
-/

namespace A092306.P7632089236003534081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104575 n + A035363 (2 * n) : ℚ) / 2

end

end A092306.P7632089236003534081

/-! ## A092306.P2586051596367016705

`A014682(A104575(n)+A000041(n))`
-/

namespace A092306.P2586051596367016705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A104575 n + A000041 n).toNat

end

end A092306.P2586051596367016705

/-! ## A092306.P268903044221053490

`∑{d}[A104575(n)+A000041(n), A300721(#)]`
-/

namespace A092306.P268903044221053490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104575 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300721 d

end

end A092306.P268903044221053490

/-! ## A092306.P12448723947819375234

`A328399(A104575(n)+A000041(n))-1`
-/

namespace A092306.P12448723947819375234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A104575 n + A000041 n).toNat - 1

end

end A092306.P12448723947819375234

/-!
# A092307: Primes p such that there are no primes q, 3 < q < p, such that (q-1) divides (p-1).

The programs for A092307, there is no canonical definition to state claims against.
-/

/-! ## A092307.P3292521692445202935

`A219742(n+1)/6`
-/

namespace A092307.P3292521692445202935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219742 (n + 1) : ℚ) / 6

end

end A092307.P3292521692445202935

/-! ## A092307.P7966414348695408225

`∪[A005385(n+1), A152952(n+1)]`
-/

namespace A092307.P7966414348695408225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092307.P7966414348695408225

/-! ## A092307.P12305842297086786690

`A006530(A219742(n+1))`
-/

namespace A092307.P12305842297086786690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A219742 (n + 1)).toNat

end

end A092307.P12305842297086786690

/-! ## A092307.P14365839978096715056

`record[A006530(A090801(n+4))]`
-/

namespace A092307.P14365839978096715056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090801 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092307.P14365839978096715056

/-! ## A092307.P13186628040582631741

`A034699(lcm(2, A219742(n+1)))`
-/

namespace A092307.P13186628040582631741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.lcm 2 (A219742 (n + 1)))

end

end A092307.P13186628040582631741

/-! ## A092307.P7959373846181121483

`A034699(or(2, A219742(n+1)))`
-/

namespace A092307.P7959373846181121483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.lor 2 (A219742 (n + 1))).toNat

end

end A092307.P7959373846181121483

/-! ## A092307.P13369024746130352946

`A034699(A054977(n)*A219742(n+1))`
-/

namespace A092307.P13369024746130352946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A054977 n * A219742 (n + 1)).toNat

end

end A092307.P13369024746130352946

/-! ## A092307.P7430460407347103833

`A034699(A219742(n+1))%(A001844(n+2)+1)`
-/

namespace A092307.P7430460407347103833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A219742 (n + 1)).toNat) (A001844 (n + 2) + 1)

end

end A092307.P7430460407347103833

/-! ## A092307.P7395813240402753284

`∑{p}[A219742(n+1), A186111(#)]`
-/

namespace A092307.P7395813240402753284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A186111 p

end

end A092307.P7395813240402753284

/-!
# A092308: For p=prime(n), a(n) = the number of primes q such that q-1 divides p-1.

The programs for A092308, the canonical program `A092308.P14534356518420386647` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092308 has offset 1).

The definition of A092308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092308.P1691548993763952500

`A067513(record[A037225(n)])`
-/

namespace A092308.P1691548993763952500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092308.P1691548993763952500

namespace A092308

/-- `A067513(record[A037225(n)])` -/
def P1691548993763952500.Spec : Prop :=
  ∀ n, P1691548993763952500.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P14534356518420386647

`A067513(A006093(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A092308

/-- `A067513(A006093(n+1))` -/
def P14534356518420386647.Spec : Prop :=
  ∀ n, P14534356518420386647.a n = A092308 (n + 1)

theorem P14534356518420386647.correct : P14534356518420386647.Spec := by
  intro n
  simp only [A092308, Nat.add_sub_cancel]

end A092308

/-! ## A092308.P1312542107482015468

`A067513(A039915(n+1))`
-/

namespace A092308.P1312542107482015468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A039915 (n + 1)).toNat

end

end A092308.P1312542107482015468

namespace A092308

/-- `A067513(A039915(n+1))` -/
def P1312542107482015468.Spec : Prop :=
  ∀ n, P1312542107482015468.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P5418277196572349786

`A067513(record[A000010(n+1)])`
-/

namespace A092308.P5418277196572349786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092308.P5418277196572349786

namespace A092308

/-- `A067513(record[A000010(n+1)])` -/
def P5418277196572349786.Spec : Prop :=
  ∀ n, P5418277196572349786.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P12174071448241021637

`A067513(record[A057237(n+1)])`
-/

namespace A092308.P12174071448241021637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092308.P12174071448241021637

namespace A092308

/-- `A067513(record[A057237(n+1)])` -/
def P12174071448241021637.Spec : Prop :=
  ∀ n, P12174071448241021637.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P5730340957372036634

`A067513(record[A060680(n+2)])`
-/

namespace A092308.P5730340957372036634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092308.P5730340957372036634

namespace A092308

/-- `A067513(record[A060680(n+2)])` -/
def P5730340957372036634.Spec : Prop :=
  ∀ n, P5730340957372036634.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P94383364704335188

`A067513(record[A060681(n+2)])`
-/

namespace A092308.P94383364704335188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092308.P94383364704335188

namespace A092308

/-- `A067513(record[A060681(n+2)])` -/
def P94383364704335188.Spec : Prop :=
  ∀ n, P94383364704335188.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P9661291774501417976

`A067513(A000040(n+1)-1)`
-/

namespace A092308.P9661291774501417976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A000040 (n + 1) - 1).toNat

end

end A092308.P9661291774501417976

namespace A092308

/-- `A067513(A000040(n+1)-1)` -/
def P9661291774501417976.Spec : Prop :=
  ∀ n, P9661291774501417976.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P8846651905930094661

`A067513(A008578(n+2)-1)`
-/

namespace A092308.P8846651905930094661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A008578 (n + 2) - 1).toNat

end

end A092308.P8846651905930094661

namespace A092308

/-- `A067513(A008578(n+2)-1)` -/
def P8846651905930094661.Spec : Prop :=
  ∀ n, P8846651905930094661.a n = A092308 (n + 1)

end A092308

/-! ## A092308.P4922085171630242118

`A067513(A008864(n+1)-2)`
-/

namespace A092308.P4922085171630242118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A008864 (n + 1) - 2).toNat

end

end A092308.P4922085171630242118

namespace A092308

/-- `A067513(A008864(n+1)-2)` -/
def P4922085171630242118.Spec : Prop :=
  ∀ n, P4922085171630242118.a n = A092308 (n + 1)

theorem P4922085171630242118.correct : P4922085171630242118.Spec := by
  intro n
  simp only [A092308, Nat.add_sub_cancel, A092308.P4922085171630242118.a, A092308.P14534356518420386647.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A067513, A067513.P3561303849225168493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P10258181745752134128.a, A027760, A027760.P284501517253735648.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A091137, A091137.P5644376634537276402.a, A363596, A363596.P10980254678214324690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092308

/-! ## A092308.P1971676259658780000

`A067513(A000010(A008578(n+2)))`
-/

namespace A092308.P1971676259658780000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A092308.P1971676259658780000

namespace A092308

/-- `A067513(A000010(A008578(n+2)))` -/
def P1971676259658780000.Spec : Prop :=
  ∀ n, P1971676259658780000.a n = A092308 (n + 1)

end A092308

/-!
# A092309: Sum of smallest parts (counted with multiplicity) of all partitions of n.

The programs for A092309, there is no canonical definition to state claims against.
-/

/-! ## A092309.P14396186206973088487

`A066186(n+1)-A213359(n+1)`
-/

namespace A092309.P14396186206973088487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A213359 (n + 1)

end

end A092309.P14396186206973088487

/-! ## A092309.P13255245972979209427

`∑[A138879(n+1)]-A213359(n+1)`
-/

namespace A092309.P13255245972979209427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A213359 (n + 1)

end

end A092309.P13255245972979209427

/-! ## A092309.P13675417232349034989

`(n+1)*A000041(n+1)-A213359(n+1)`
-/

namespace A092309.P13675417232349034989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A213359 (n + 1)

end

end A092309.P13675417232349034989

/-! ## A092309.P8678280984342393518

`A092269(n+1)+A220907(n+1)-A213359(n+1)`
-/

namespace A092309.P8678280984342393518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220907 (n + 1) - A213359 (n + 1))

end

end A092309.P8678280984342393518

/-! ## A092309.P546649885574484045

`A206561(∑[n]+1)-A213359(n+1)`
-/

namespace A092309.P546649885574484045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A213359 (n + 1)

end

end A092309.P546649885574484045

/-! ## A092309.P12735831755835035852

`record[A206561(n+1)]-A213359(n+1)`
-/

namespace A092309.P12735831755835035852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A213359 (n + 1)

end

end A092309.P12735831755835035852

/-! ## A092309.P4237366162816417932

`record[A182702(n+1)]-A213359(n+1)`
-/

namespace A092309.P4237366162816417932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A213359 (n + 1)

end

end A092309.P4237366162816417932

/-!
# A092311: Total number of largest parts in all partitions of n into odd parts.

The programs for A092311, there is no canonical definition to state claims against.
-/

/-! ## A092311.P16427998080449476006

`∑[∑{e}[A196690(n+2), #]]`
-/

namespace A092311.P16427998080449476006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196690 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092311.P16427998080449476006

/-! ## A092311.P6507350577967957906

`record[A222819(A066542(n+1))]`
-/

namespace A092311.P6507350577967957906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222819 (A066542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092311.P6507350577967957906

/-!
# A092315: a(n) is the smallest m such that the partial sum of the odd harmonic series Sum_{j=0..m} 1/(2j+1) is > n.

The programs for A092315, there is no canonical definition to state claims against.
-/

/-! ## A092315.P8841570366627193130

`floor(A092318(n+1)+acot(n))`
-/

namespace A092315.P8841570366627193130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092318 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A092315.P8841570366627193130

/-! ## A092315.P8217614087874856253

`A092318(n+1)+A000007(n)`
-/

namespace A092315.P8217614087874856253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A000007 n

end

end A092315.P8217614087874856253

/-! ## A092315.P7265861039943760014

`A281355(n+1)-A057427(n)`
-/

namespace A092315.P7265861039943760014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - A057427 n

end

end A092315.P7265861039943760014

/-! ## A092315.P13975210090535253473

`A092318(n+1)+char[A092324(n)]`
-/

namespace A092315.P13975210090535253473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092324 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092315.P13975210090535253473

/-! ## A092315.P13905244362506512402

`A281355(n+1)+A000007(n)-1`
-/

namespace A092315.P13905244362506512402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) + (A000007 n - 1)

end

end A092315.P13905244362506512402

/-! ## A092315.P14801703492410453527

`A281355(n+1)-A122458(2*n)`
-/

namespace A092315.P14801703492410453527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - A122458 (2 * n)

end

end A092315.P14801703492410453527

/-! ## A092315.P341142274703667009

`A092318(n+1)+char[A055672(n²)]`
-/

namespace A092315.P341142274703667009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092315.P341142274703667009

/-! ## A092315.P6978264091186361629

`A281355(n+1)-floor(atan(A002387(n)))`
-/

namespace A092315.P6978264091186361629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - ⌊Real.arctan (A002387 n : ℝ)⌋

end

end A092315.P6978264091186361629

/-! ## A092315.P10714245363254020258

`A092318(n+1)^floor(atan(A002387(n)))`
-/

namespace A092315.P10714245363254020258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092318 (n + 1) : ℚ) ^ (⌊Real.arctan (A002387 n : ℝ)⌋ : ℤ)

end

end A092315.P10714245363254020258

/-! ## A092315.P7361197410225186845

`A281355(n+1)-char[A003963(n+1)]`
-/

namespace A092315.P7361197410225186845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092315.P7361197410225186845

/-! ## A092315.P2633003227930290976

`A092318(n+1)+val(A000040(n+1), 2)`
-/

namespace A092315.P2633003227930290976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A092315.P2633003227930290976

/-! ## A092315.P15781109312046486836

`A092318(n+1)+A000035(A008458(n))`
-/

namespace A092315.P15781109312046486836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A000035 (A008458 n).toNat

end

end A092315.P15781109312046486836

/-! ## A092315.P12871841728215274849

`A092318(n+1)+A000035(A008574(n))`
-/

namespace A092315.P12871841728215274849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A000035 (A008574 n).toNat

end

end A092315.P12871841728215274849

/-! ## A092315.P4712906628053696977

`A092318(n+1)+A000035(A008579(n))`
-/

namespace A092315.P4712906628053696977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A000035 (A008579 n).toNat

end

end A092315.P4712906628053696977

/-! ## A092315.P1054693518232698473

`A092318(n+1)+A000035(A062383(n))`
-/

namespace A092315.P1054693518232698473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A000035 (A062383 n).toNat

end

end A092315.P1054693518232698473

/-! ## A092315.P2500359599590346561

`A281355(n+1)-A323376(A000124(n))`
-/

namespace A092315.P2500359599590346561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - A323376 (A000124 n).toNat

end

end A092315.P2500359599590346561

/-! ## A092315.P6217037139153208708

`A281355(n+1)-A122458(A005843(n))²`
-/

namespace A092315.P6217037139153208708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - A122458 (A005843 n).toNat ^ 2

end

end A092315.P6217037139153208708

/-! ## A092315.P9523729420942346887

`A092318(n+1)+char[A092318(A209448(n))]`
-/

namespace A092315.P9523729420942346887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (A209448 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092315.P9523729420942346887

/-! ## A092315.P4495738656940337715

`A092318(n+1)+A010054(A061142(n+1))`
-/

namespace A092315.P4495738656940337715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + A010054 (A061142 (n + 1)).toNat

end

end A092315.P4495738656940337715

/-! ## A092315.P15129098616210763112

`(A056053(n+1)-1)/2`
-/

namespace A092315.P15129098616210763112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056053 (n + 1) - 1 : ℚ) / 2

end

end A092315.P15129098616210763112

/-!
# A092316: Sum of largest parts of all partitions of n into odd distinct parts.

The programs for A092316, there is no canonical definition to state claims against.
-/

/-! ## A092316.P4187702710498504004

`2*A067619(n+1)-A000700(n+1)`
-/

namespace A092316.P4187702710498504004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067619 (n + 1) - A000700 (n + 1)

end

end A092316.P4187702710498504004

/-!
# A092317: a(n) = smallest odd number 2m+1 such that the partial sum Sum_{j=0..m} 1/(2j+1) of the odd harmonic series is >= n.

The programs for A092317, there is no canonical definition to state claims against.
-/

/-! ## A092317.P128228915887844088

`2*A092318(n+1)+1`
-/

namespace A092317.P128228915887844088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092318 (n + 1) + 1

end

end A092317.P128228915887844088

/-! ## A092317.P7049580820905195671

`2*A281355(n+1)-1`
-/

namespace A092317.P7049580820905195671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281355 (n + 1) - 1

end

end A092317.P7049580820905195671

/-! ## A092317.P12497223221833112615

`A056053((n+1)%(2*n+1))`
-/

namespace A092317.P12497223221833112615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056053 ((n + 1) % (2 * n + 1))

end

end A092317.P12497223221833112615

/-! ## A092317.P5901604643243849825

`A056053(n+1)^((n+2)%(n+1))`
-/

namespace A092317.P5901604643243849825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056053 (n + 1) ^ ((n + 2) % (n + 1))

end

end A092317.P5901604643243849825

/-! ## A092317.P16259224011335382515

`A056053(n-A057428(n))`
-/

namespace A092317.P16259224011335382515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056053 ((n : ℤ) - A057428 n).toNat

end

end A092317.P16259224011335382515

/-!
# A092318: a(n) = smallest m such that value of odd harmonic series Sum_{j=0..m} 1/(2j+1) is >= n.

The programs for A092318, there is no canonical definition to state claims against.
-/

/-! ## A092318.P17470320040694677984

`A281355(n+1)-1`
-/

namespace A092318.P17470320040694677984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281355 (n + 1) - 1

end

end A092318.P17470320040694677984

/-! ## A092318.P13491510922022729344

`A092315(n+1)-floor(acot(n))`
-/

namespace A092318.P13491510922022729344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A092318.P13491510922022729344

/-! ## A092318.P3465872819698762785

`A092315(n+1)-A000007(n)`
-/

namespace A092318.P3465872819698762785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) - A000007 n

end

end A092318.P3465872819698762785

/-! ## A092318.P12680007464583097804

`A057427(n)*A092315(n+1)`
-/

namespace A092318.P12680007464583097804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A092315 (n + 1)

end

end A092318.P12680007464583097804

/-! ## A092318.P5902709402412976750

`A092315(n+1)%A281355(n+1)`
-/

namespace A092318.P5902709402412976750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092315 (n + 1)) (A281355 (n + 1))

end

end A092318.P5902709402412976750

/-! ## A092318.P14453302289941736670

`and(1, A000225(n))*A092315(n+1)`
-/

namespace A092318.P14453302289941736670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000225 n) * A092315 (n + 1)

end

end A092318.P14453302289941736670

/-! ## A092318.P5328418628588627838

`floor(atan(A002387(n)))*A092315(n+1)`
-/

namespace A092318.P5328418628588627838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A002387 n : ℝ)⌋ * A092315 (n + 1)

end

end A092318.P5328418628588627838

/-! ## A092318.P18370360939232683502

`A092315(n+1)-A007340(n+1)%2`
-/

namespace A092318.P18370360939232683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) - Int.tmod (A007340 (n + 1)) 2

end

end A092318.P18370360939232683502

/-! ## A092318.P12902379633644985013

`and(1, A000040(n+1))*A092315(n+1)`
-/

namespace A092318.P12902379633644985013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A092315 (n + 1)

end

end A092318.P12902379633644985013

/-! ## A092318.P12445625184889794600

`floor(atan(A006509(n+1)))*A092315(n+1)`
-/

namespace A092318.P12445625184889794600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A006509 (n + 1) : ℝ)⌋ * A092315 (n + 1)

end

end A092318.P12445625184889794600

/-! ## A092318.P15593563509492529260

`floor(atan(A025547(n+1)))*A092315(n+1)`
-/

namespace A092318.P15593563509492529260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A025547 (n + 1) : ℝ)⌋ * A092315 (n + 1)

end

end A092318.P15593563509492529260

/-! ## A092318.P15487338985847006399

`floor(atan(A025550(n+1)))*A092315(n+1)`
-/

namespace A092318.P15487338985847006399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A025550 (n + 1) : ℝ)⌋ * A092315 (n + 1)

end

end A092318.P15487338985847006399

/-! ## A092318.P14068987700343791433

`A048766(A048766(n))*A092315(n+1)`
-/

namespace A092318.P14068987700343791433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 n).toNat * A092315 (n + 1)

end

end A092318.P14068987700343791433

/-! ## A092318.P580788416368363700

`A001221(A008578(n+1))*A092315(n+1)`
-/

namespace A092318.P580788416368363700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat * A092315 (n + 1)

end

end A092318.P580788416368363700

/-! ## A092318.P11492820133921911748

`A092315(n+1)+A020639(A004277(n))-2`
-/

namespace A092318.P11492820133921911748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + (A020639 (A004277 n).toNat - 2)

end

end A092318.P11492820133921911748

/-! ## A092318.P14861894692775701271

`char[A007318(n)]*A092315(n+1)`
-/

namespace A092318.P14861894692775701271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A092315 (n + 1)

end

end A092318.P14861894692775701271

/-! ## A092318.P13932676690193897820

`A004080(n+1)+A092315(n+1)-A002387(n+1)`
-/

namespace A092318.P13932676690193897820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 (n + 1) + (A092315 (n + 1) - A002387 (n + 1))

end

end A092318.P13932676690193897820

/-!
# A092321: Sum of largest parts (counted with multiplicity) of all partitions of n.

The programs for A092321, there is no canonical definition to state claims against.
-/

/-! ## A092321.P18103435772336939001

`A066186(n)-A116688(A028310(n))`
-/

namespace A092321.P18103435772336939001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A116688 (A028310 n).toNat

end

end A092321.P18103435772336939001

/-! ## A092321.P9114044016810557513

`A066186(n)-A116688(A065033(2*n))`
-/

namespace A092321.P9114044016810557513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A116688 (A065033 (2 * n)).toNat

end

end A092321.P9114044016810557513

/-! ## A092321.P8002270263002264511

`A066186(n)-A116688(A000007(n)+n)`
-/

namespace A092321.P8002270263002264511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A116688 (A000007 n + (n : ℤ)).toNat

end

end A092321.P8002270263002264511

/-!
# A092322: Sum of largest parts of all partitions of n into odd parts.

The programs for A092322, there is no canonical definition to state claims against.
-/

/-! ## A092322.P14817936476530174776

`A000009(n+1)+2*A005896(n+1)`
-/

namespace A092322.P14817936476530174776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + 2 * A005896 (n + 1)

end

end A092322.P14817936476530174776

/-! ## A092322.P4957407793534086031

`A005843(A005896(n+1))+A000009(n+1)`
-/

namespace A092322.P4957407793534086031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005896 (n + 1)).toNat + A000009 (n + 1)

end

end A092322.P4957407793534086031

/-! ## A092322.P12507962939924501533

`A321728(n+4)-(val(n+1, 2)+1)`
-/

namespace A092322.P12507962939924501533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 4) - (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A092322.P12507962939924501533

/-! ## A092322.P10213894385446794050

`A321728(n+4)-A001511(n+1)`
-/

namespace A092322.P10213894385446794050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 4) - A001511 (n + 1)

end

end A092322.P10213894385446794050

/-! ## A092322.P10873920200251679637

`A332813(A052393(n))+A078346(n+1)`
-/

namespace A092322.P10873920200251679637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A052393 n).toNat + A078346 (n + 1)

end

end A092322.P10873920200251679637

/-!
# A092323: 2^m - 1 appears 2^m times.

The programs for A092323, the canonical program `A092323.P17946410828982596858` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092323 has offset 1).

The definition of A092323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092323.P17946410828982596858

`a(floor((n+1)/2)-1)*2+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092323

/-- `a(floor((n+1)/2)-1)*2+1` -/
def P17946410828982596858.Spec : Prop :=
  ∀ n, (P17946410828982596858.a n : ℤ) = A092323 (n + 1)

theorem P17946410828982596858.correct : P17946410828982596858.Spec := by
  intro n
  simp only [A092323, Nat.add_sub_cancel]

end A092323

/-! ## A092323.P1119028783266480036

`2^floor(log2(n+1))-1`
-/

namespace A092323.P1119028783266480036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) : ℤ) - 1

end

end A092323.P1119028783266480036

namespace A092323

/-- `2^floor(log2(n+1))-1` -/
def P1119028783266480036.Spec : Prop :=
  ∀ n, P1119028783266480036.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P13780629136480377901

`or(ceil(n/2), a(n-1))` with `a(0)=0`
-/

namespace A092323.P13780629136480377901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor ⌈(n : ℚ) / 2⌉ (a (n - 1))

end

end A092323.P13780629136480377901

namespace A092323

/-- `or(ceil(n/2), a(n-1))` -/
def P13780629136480377901.Spec : Prop :=
  ∀ n, P13780629136480377901.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P18116179450560812872

`or(a(n-1), ∑[n%2])` with `a(0)=0`
-/

namespace A092323.P18116179450560812872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092323.P18116179450560812872

namespace A092323

/-- `or(a(n-1), ∑[n%2])` -/
def P18116179450560812872.Spec : Prop :=
  ∀ n, (P18116179450560812872.a n : ℤ) = A092323 (n + 1)

end A092323

/-! ## A092323.P15925827220327681959

`or(a(n-1), ∑[and(1, n)])` with `a(0)=0`
-/

namespace A092323.P15925827220327681959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092323.P15925827220327681959

namespace A092323

/-- `or(a(n-1), ∑[and(1, n)])` -/
def P15925827220327681959.Spec : Prop :=
  ∀ n, (P15925827220327681959.a n : ℤ) = A092323 (n + 1)

end A092323

/-! ## A092323.P10603732803267844861

`abs(and(n+1, a(n-1))-n)` with `a(0)=0`
-/

namespace A092323.P10603732803267844861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.land (n + 1 : ℤ) (a (n - 1)) - (n : ℤ)|

end

end A092323.P10603732803267844861

namespace A092323

/-- `abs(and(n+1, a(n-1))-n)` -/
def P10603732803267844861.Spec : Prop :=
  ∀ n, P10603732803267844861.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P15253472065224391408

`(lt[xor(n, 2*n), 2*n]-n-3)/2`
-/

namespace A092323.P15253472065224391408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) - 3 : ℚ) / 2

end

end A092323.P15253472065224391408

namespace A092323

/-- `(lt[xor(n, 2*n), 2*n]-n-3)/2` -/
def P15253472065224391408.Spec : Prop :=
  ∀ n, P15253472065224391408.a n = (A092323 (n + 1) : ℚ)

end A092323

/-! ## A092323.P10264372377277726677

`lt[2*n+1, xor(n, 2*n)]%(n+2)`
-/

namespace A092323.P10264372377277726677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % (n + 2)

end

end A092323.P10264372377277726677

namespace A092323

/-- `lt[2*n+1, xor(n, 2*n)]%(n+2)` -/
def P10264372377277726677.Spec : Prop :=
  ∀ n, (P10264372377277726677.a n : ℤ) = A092323 (n + 1)

end A092323

/-! ## A092323.P13058594507490685500

`A003817(ceil(n/2))`
-/

namespace A092323.P13058594507490685500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 ⌈(n : ℚ) / 2⌉.toNat

end

end A092323.P13058594507490685500

namespace A092323

/-- `A003817(ceil(n/2))` -/
def P13058594507490685500.Spec : Prop :=
  ∀ n, P13058594507490685500.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P12856678423585147770

`∑[and(n, A135517(n))]`
-/

namespace A092323.P12856678423585147770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A135517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092323.P12856678423585147770

namespace A092323

/-- `∑[and(n, A135517(n))]` -/
def P12856678423585147770.Spec : Prop :=
  ∀ n, P12856678423585147770.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P15264983633819360080

`A086099(and(1, n)+n)`
-/

namespace A092323.P15264983633819360080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (Nat.land 1 n + n)

end

end A092323.P15264983633819360080

namespace A092323

/-- `A086099(and(1, n)+n)` -/
def P15264983633819360080.Spec : Prop :=
  ∀ n, P15264983633819360080.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P11586639527361501935

`A000225(floor(log2(n+1)))`
-/

namespace A092323.P11586639527361501935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.log 2 (n + 1))

end

end A092323.P11586639527361501935

namespace A092323

/-- `A000225(floor(log2(n+1)))` -/
def P11586639527361501935.Spec : Prop :=
  ∀ n, P11586639527361501935.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P10997200534684077057

`floor(A003817(n+1)/2)`
-/

namespace A092323.P10997200534684077057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003817 (n + 1) : ℚ) / 2⌋

end

end A092323.P10997200534684077057

namespace A092323

/-- `floor(A003817(n+1)/2)` -/
def P10997200534684077057.Spec : Prop :=
  ∀ n, P10997200534684077057.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P4179257147587767107

`(∑[A099894(n)]-1)/2`
-/

namespace A092323.P4179257147587767107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A092323.P4179257147587767107

namespace A092323

/-- `(∑[A099894(n)]-1)/2` -/
def P4179257147587767107.Spec : Prop :=
  ∀ n, P4179257147587767107.a n = (A092323 (n + 1) : ℚ)

end A092323

/-! ## A092323.P11043540470539041591

`(A076877(n+1)-3)/2`
-/

namespace A092323.P11043540470539041591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076877 (n + 1) - 3 : ℚ) / 2

end

end A092323.P11043540470539041591

namespace A092323

/-- `(A076877(n+1)-3)/2` -/
def P11043540470539041591.Spec : Prop :=
  ∀ n, P11043540470539041591.a n = (A092323 (n + 1) : ℚ)

end A092323

/-! ## A092323.P12181293520300100966

`(A035327(n+1)+n)/2`
-/

namespace A092323.P12181293520300100966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035327 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A092323.P12181293520300100966

namespace A092323

/-- `(A035327(n+1)+n)/2` -/
def P12181293520300100966.Spec : Prop :=
  ∀ n, P12181293520300100966.a n = (A092323 (n + 1) : ℚ)

end A092323

/-! ## A092323.P10951317075707679170

`xor(n+1, A054429(n+1))`
-/

namespace A092323.P10951317075707679170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A054429 (n + 1))

end

end A092323.P10951317075707679170

namespace A092323

/-- `xor(n+1, A054429(n+1))` -/
def P10951317075707679170.Spec : Prop :=
  ∀ n, P10951317075707679170.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P12273114668596082354

`A000203(a(floor((n-1)/2))+1)` with `a(0)=0`
-/

namespace A092323.P12273114668596082354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000203 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 1).toNat

end

end A092323.P12273114668596082354

namespace A092323

/-- `A000203(a(floor((n-1)/2))+1)` -/
def P12273114668596082354.Spec : Prop :=
  ∀ n, P12273114668596082354.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P5211755529265761811

`A001065(A053644(n+1))`
-/

namespace A092323.P5211755529265761811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A053644 (n + 1)).toNat

end

end A092323.P5211755529265761811

namespace A092323

/-- `A001065(A053644(n+1))` -/
def P5211755529265761811.Spec : Prop :=
  ∀ n, P5211755529265761811.a n = A092323 (n + 1)

end A092323

/-! ## A092323.P18190630271585454238

`xor(A086099(n), A135481(n))`
-/

namespace A092323.P18190630271585454238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086099 n) (A135481 n)

end

end A092323.P18190630271585454238

namespace A092323

/-- `xor(A086099(n), A135481(n))` -/
def P18190630271585454238.Spec : Prop :=
  ∀ n, P18190630271585454238.a n = A092323 (n + 1)

end A092323

/-!
# A092324: Values m_0 = 0, m_1, m_2, ... associated with divergent series T shown below.

The programs for A092324, there is no canonical definition to state claims against.
-/

/-! ## A092324.P2710871407165352024

`floor(A092267(n)/2)`
-/

namespace A092324.P2710871407165352024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092267 n : ℚ) / 2⌋

end

end A092324.P2710871407165352024

/-!
# A092325: a(n) = min{ m : sum_{n <= i <= m} 1/p_i > 1}, where p_i is the i-th prime = A000040(i).

The programs for A092325, there is no canonical definition to state claims against.
-/

/-! ## A092325.P7886087318079411361

`A000720(A119494(n+1))`
-/

namespace A092325.P7886087318079411361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119494 (n + 1)).toNat

end

end A092325.P7886087318079411361

/-! ## A092325.P1776760862904459682

`A137368(n+1)+n`
-/

namespace A092325.P1776760862904459682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137368 (n + 1) + (n : ℤ)

end

end A092325.P1776760862904459682

/-! ## A092325.P5805808948047561808

`A327600(n+1)+1+n`
-/

namespace A092325.P5805808948047561808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327600 (n + 1) + 1 + (n : ℤ)

end

end A092325.P5805808948047561808

/-! ## A092325.P12159014362975927474

`A061395(p?[A119494(n+1)])`
-/

namespace A092325.P12159014362975927474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092325.P12159014362975927474

/-! ## A092325.P2912618628955983239

`A304106(A225671(n+1))`
-/

namespace A092325.P2912618628955983239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A225671 (n + 1)).toNat

end

end A092325.P2912618628955983239

/-!
# A092326: Permanent of the inverse of the n-th Hilbert matrix divided by the determinant of the inverse of the n-th Hilbert matrix.

The programs for A092326, there is no canonical definition to state claims against.
-/

/-! ## A092326.P5784072861099135514

`A061914(n+1)*A101811(n+1)`
-/

namespace A092326.P5784072861099135514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061914 (n + 1) * A101811 (n + 1)

end

end A092326.P5784072861099135514

/-!
# A092327: a(n) = (1/12)*(n+1)*(n^3+19*n^2+118*n+228).

The programs for A092327, there is no canonical definition to state claims against.
-/

/-! ## A092327.P9113147544603654059

`n*((n-1)^3+19*(n-1)²+118*(n-1)+228)/12`
-/

namespace A092327.P9113147544603654059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n : ℤ) - 1) ^ 3 + 19 * ((n : ℤ) - 1) ^ 2 + 118 * ((n : ℤ) - 1) + 228) : ℚ) / 12

end

end A092327.P9113147544603654059

/-! ## A092327.P8958378196829664133

`1/12*n*((n-1)^3+19*(n-1)²+118*(n-1)+228)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092327.P8958378196829664133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * (n : ℚ) * (((n : ℤ) - 1) ^ 3 + 19 * ((n : ℤ) - 1) ^ 2 + 118 * ((n : ℤ) - 1) + 228 : ℚ)

end

end A092327.P8958378196829664133

/-! ## A092327.P8207435824703163380

`A350116(n)+A028560(n)`
-/

namespace A092327.P8207435824703163380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350116 n + A028560 n

end

end A092327.P8207435824703163380

/-! ## A092327.P16082774477673806044

`abs(A028560(n)+A090453(n)-2*(n+1))`
-/

namespace A092327.P16082774477673806044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028560 n + (A090453 n - (2 * (n + 1) : ℤ))|

end

end A092327.P16082774477673806044

/-! ## A092327.P2313387418466143018

`floor(A028560(n)+(n+1)/2*A111396(n))`
-/

namespace A092327.P2313387418466143018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028560 n : ℚ) + (n + 1 : ℚ) / 2 * (A111396 n : ℚ)⌋

end

end A092327.P2313387418466143018

/-! ## A092327.P15089404986798657130

`abs(A028560(n)+A188480(n)+A046691(n))`
-/

namespace A092327.P15089404986798657130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028560 n + (A188480 n + A046691 n)|

end

end A092327.P15089404986798657130

/-! ## A092327.P13385813612937880838

`A024191(n+1)+A005587(n)-A005586(n+1)`
-/

namespace A092327.P13385813612937880838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (A005587 n - A005586 (n + 1))

end

end A092327.P13385813612937880838

/-! ## A092327.P13383088870401201965

`record[A328152(n+1)-A004273(2*n)]`
-/

namespace A092327.P13383088870401201965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 1) - A004273 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092327.P13383088870401201965

/-!
# A092328: Solutions of x^2 = ceiling(x*r*floor(x/r)) where r=Pi.

The programs for A092328, there is no canonical definition to state claims against.
-/

/-! ## A092328.P12746130313061935433

`record[A332095(n+1)]`
-/

namespace A092328.P12746130313061935433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092328.P12746130313061935433

/-! ## A092328.P18433790043979013176

`A332095(gcd(n+2, C(3, n²)))`
-/

namespace A092328.P18433790043979013176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 (Nat.gcd (n + 2) (Nat.choose 3 (n ^ 2)))

end

end A092328.P18433790043979013176

/-! ## A092328.P5822101969165074662

`A332095(ceil(sqrt((n+2)²-3)))`
-/

namespace A092328.P5822101969165074662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 ⌈Real.sqrt (((n + 2) ^ 2 : ℤ) - 3 : ℝ)⌉.toNat

end

end A092328.P5822101969165074662

/-! ## A092328.P10886574010770467186

`floor(atan(n+1))*A332095(n+2)`
-/

namespace A092328.P10886574010770467186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A332095 (n + 2)

end

end A092328.P10886574010770467186

/-! ## A092328.P15555213655890663659

`abs(record[A332095(A008619(n))])`
-/

namespace A092328.P15555213655890663659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A092328.P15555213655890663659

/-!
# A092329: Number of nonisomorphic, constructed lattice-square designs of order n as n runs through the odd prime-powers (3, 5, 7, 9, 11, 13, ...).

The programs for A092329, there is no canonical definition to state claims against.
-/

/-! ## A092329.P6992297865768500465

`comp[lt[sin(n), 0]]+n!`
-/

namespace A092329.P6992297865768500465
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.factorial n

end

end A092329.P6992297865768500465

/-!
# A092330: Fibonacci quotients: Fibonacci(p - Legendre(p|5))/p where p runs through the primes.

The programs for A092330, there is no canonical definition to state claims against.
-/

/-! ## A092330.P9708334373672489264

`A176951(n+1)+char[2]`
-/

namespace A092330.P9708334373672489264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176951 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A092330.P9708334373672489264

/-! ## A092330.P11814892089253665267

`A176951(C(n, C(3, n)+1)+1)`
-/

namespace A092330.P11814892089253665267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176951 (Nat.choose n (Nat.choose 3 n + 1) + 1)

end

end A092330.P11814892089253665267

/-! ## A092330.P13595725189239306856

`gcd(A176951(n+1), A263013(n))`
-/

namespace A092330.P13595725189239306856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176951 (n + 1)) (A263013 n)

end

end A092330.P13595725189239306856

/-! ## A092330.P17482680730377319517

`A176951(n+1)^A001118(C(2, n))`
-/

namespace A092330.P17482680730377319517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176951 (n + 1) : ℚ) ^ (A001118 (Nat.choose 2 n) : ℤ)

end

end A092330.P17482680730377319517

/-! ## A092330.P12768534681746348081

`A176951(n+1)^A284484(C(2, n))`
-/

namespace A092330.P12768534681746348081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176951 (n + 1) : ℚ) ^ (A284484 (Nat.choose 2 n) : ℤ)

end

end A092330.P12768534681746348081

/-!
# A092331: For S a string of numbers, let F(S) = the sum of those numbers. Let a(1)=1. For n>1, a(n) is the largest k such that the string a(1)a(2)...a(n-1) can be written in the form [x][y_1][y_2]...[y_k], where each y_i is positive (but not necessarily all the same) length and F(y_i)=F(y_j) for all i,j<=k.

The programs for A092331, there is no canonical definition to state claims against.
-/

/-! ## A092331.P1450457810627535826

`A348737(A001970(n))+A259920(n)`
-/

namespace A092331.P1450457810627535826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (A001970 n).toNat + A259920 n

end

end A092331.P1450457810627535826

/-! ## A092331.P7795357971644680313

`A259920(n)%A259919(n)+1`
-/

namespace A092331.P7795357971644680313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259920 n) (A259919 n) + 1

end

end A092331.P7795357971644680313

/-! ## A092331.P10254444207249003080

`A259920(n)+A031346(A007088(n))`
-/

namespace A092331.P10254444207249003080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259920 n + A031346 (A007088 n).toNat

end

end A092331.P10254444207249003080

/-! ## A092331.P13043072475543591444

`A001221(A050376(n+4)+A014551(n))`
-/

namespace A092331.P13043072475543591444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A050376 (n + 4) + A014551 n).toNat

end

end A092331.P13043072475543591444

/-! ## A092331.P17473217536392210698

`A001221(A156167(2*n+5)*A262586(n))`
-/

namespace A092331.P17473217536392210698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156167 (2 * n + 5) * A262586 n).toNat

end

end A092331.P17473217536392210698

/-!
# A092332: For S a string of numbers, let F(S) = the product of those numbers. Let a(1)=1. For n>1, a(n) is the greatest k such that a(1)a(2)...a(n-1) can be written in the form [x][y_1][y_2]...[y_k] where each y_i is of positive (but not necessarily all the same) length and F(y_i)=F(y_j) for all i,j<=k.

The programs for A092332, there is no canonical definition to state claims against.
-/

/-! ## A092332.P10085271122874654072

`A092334(n+1)/A096921(A058343(n))`
-/

namespace A092332.P10085271122874654072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092334 (n + 1) : ℚ) / (A096921 (A058343 n).toNat : ℚ)

end

end A092332.P10085271122874654072

/-! ## A092332.P1693408657858630367

`A092334(n+1)/A096921(A184945(n))`
-/

namespace A092332.P1693408657858630367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092334 (n + 1) : ℚ) / (A096921 (A184945 n).toNat : ℚ)

end

end A092332.P1693408657858630367

/-! ## A092332.P11594282827270955358

`gcd(A092334(n+1), A092343(A299265(n)))`
-/

namespace A092332.P11594282827270955358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092334 (n + 1)) (A092343 (A299265 n).toNat)

end

end A092332.P11594282827270955358

/-! ## A092332.P17083995894290834881

`A052410(A111332(n+1)+A092334(n+1))`
-/

namespace A092332.P17083995894290834881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A111332 (n + 1) + A092334 (n + 1)).toNat

end

end A092332.P17083995894290834881

/-! ## A092332.P8033606264889057731

`A092334(n+1)/A309861(A092337(n+3))`
-/

namespace A092332.P8033606264889057731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092334 (n + 1) : ℚ) / (A309861 (A092337 (n + 3)).toNat : ℚ)

end

end A092332.P8033606264889057731

/-!
# A092333: For S a string of numbers, let F(S) = the sum of those numbers. Let a(1)=1. For n>1, a(n) is the largest k such that the string a(1)a(2)...a(n-1) can be written in the form [x][y_1][y_2]...[y_k] where each y_i is of positive (but not necessarily equal) length and for any i=F(y_(i+1)).

The programs for A092333, there is no canonical definition to state claims against.
-/

/-! ## A092333.P4233485824719080454

`∏{e}[A000079(A087851(n+1)), A087836(#)]`
-/

namespace A092333.P4233485824719080454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A087851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A087836 (Nat.factorization (f1 n).natAbs p)

end

end A092333.P4233485824719080454

/-! ## A092333.P18119025442483364787

`A111972(A000043(n+1)*A329534(n+1))`
-/

namespace A092333.P18119025442483364787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A000043 (n + 1) * A329534 (n + 1)).toNat

end

end A092333.P18119025442483364787

/-! ## A092333.P17119762368353971882

`A111972(lcm(A000043(n+1), A329534(n+1)))`
-/

namespace A092333.P17119762368353971882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (Int.lcm (A000043 (n + 1)) (A329534 (n + 1)))

end

end A092333.P17119762368353971882

/-! ## A092333.P15819517568268458263

`A000196(2*n+3)-A056594(A000578(n+1))`
-/

namespace A092333.P15819517568268458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n + 3) - A056594 (A000578 (n + 1)).toNat

end

end A092333.P15819517568268458263

/-! ## A092333.P2396356292864003334

`A137735(2*n+3)-A025480(A052955(n+4))`
-/

namespace A092333.P2396356292864003334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (2 * n + 3) - A025480 (A052955 (n + 4)).toNat

end

end A092333.P2396356292864003334

/-!
# A092334: For S a finite string of numbers, let M(S) denote the maximal number among them. Let a(1)=1. For n>1, a(n) is the greatest k such that the string a(1)a(2)...a(n-1) can be written in the form [x][y_1][y_2]...[y_k] where each y_i is of positive (but not necessarily equal) length and M(y_i)=M(y_j) for all i,j.

The programs for A092334, there is no canonical definition to state claims against.
-/

/-! ## A092334.P1312781719723852995

`A092332(n+1)*A096921(A058343(n))`
-/

namespace A092334.P1312781719723852995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092332 (n + 1) * A096921 (A058343 n).toNat

end

end A092334.P1312781719723852995

/-! ## A092334.P7978083576726471606

`A092332(n+1)*A096921(A184945(n))`
-/

namespace A092334.P7978083576726471606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092332 (n + 1) * A096921 (A184945 n).toNat

end

end A092334.P7978083576726471606

/-! ## A092334.P6165512634731818831

`A092332(n+1)*A309861(A092337(n+3))`
-/

namespace A092334.P6165512634731818831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092332 (n + 1) * A309861 (A092337 (n + 3)).toNat

end

end A092334.P6165512634731818831

/-!
# A092335: Let a(1)=1. For n>1, a(n) is the greatest k such that a(1)a(2)...a(n-1) can be written in the form [x][y_1][y_2]...[y_k] where each y_i is of positive and equal length and for any i,j, y_i and y_j agree at every other term starting from the left (see example).

The programs for A092335, there is no canonical definition to state claims against.
-/

/-! ## A092335.P9442671144534104443

`A001221((n+9)*A060961(n+2)-7)`
-/

namespace A092335.P9442671144534104443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 9 : ℤ) * A060961 (n + 2) - 7).toNat

end

end A092335.P9442671144534104443

/-! ## A092335.P2263390784571913461

`A001221(A331579(n+1)+A030067(n+1))`
-/

namespace A092335.P2263390784571913461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331579 (n + 1) + A030067 (n + 1)).toNat

end

end A092335.P2263390784571913461

/-! ## A092335.P1602715134520808330

`A043276(A000037(n+1)-A161831(n+1))`
-/

namespace A092335.P1602715134520808330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A000037 (n + 1) - A161831 (n + 1)).toNat

end

end A092335.P1602715134520808330

/-! ## A092335.P5442153301391909623

`gcd(A000005(n+1), A060501(A214384(n+1)))`
-/

namespace A092335.P5442153301391909623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A060501 (A214384 (n + 1)).toNat)

end

end A092335.P5442153301391909623

/-! ## A092335.P17996144935902329797

`A121041(A247903(n))`
-/

namespace A092335.P17996144935902329797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A247903 n).toNat

end

end A092335.P17996144935902329797

/-!
# A092336: Sum of first n perfect numbers.

The programs for A092336, there is no canonical definition to state claims against.
-/

/-! ## A092336.P7009433786736757351

`∑[A000396(n+1)]`
-/

namespace A092336.P7009433786736757351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092336.P7009433786736757351

/-! ## A092336.P11353000693409808514

`2*A153487(n+1)`
-/

namespace A092336.P11353000693409808514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153487 (n + 1)

end

end A092336.P11353000693409808514

/-! ## A092336.P2760186148706295105

`A185351(2^(n+1))`
-/

namespace A092336.P2760186148706295105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ (n + 1))

end

end A092336.P2760186148706295105

/-! ## A092336.P3543619753605262766

`∑[A135627(n+1)+1]`
-/

namespace A092336.P3543619753605262766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092336.P3543619753605262766

/-! ## A092336.P12388005856946665180

`∑[A135629(n+1)-1]`
-/

namespace A092336.P12388005856946665180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135629 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092336.P12388005856946665180

/-!
# A092338: a(n) = number of numbers d with n mod d <= 1.

The programs for A092338, the canonical program `A092338.P14591990927845726689` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092338 has offset 1).

The definition of A092338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092338.P14591990927845726689

`∏{e}[n+1, #+1]+∏{e}[n, #+1]-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092338

/-- `∏{e}[n+1, #+1]+∏{e}[n, #+1]-1` -/
def P14591990927845726689.Spec : Prop :=
  ∀ n, P14591990927845726689.a n = A092338 (n + 1)

theorem P14591990927845726689.correct : P14591990927845726689.Spec := by
  intro n
  simp only [A092338, Nat.add_sub_cancel]

end A092338

/-! ## A092338.P14530745412199282826

`A274010(n+1)+1`
-/

namespace A092338.P14530745412199282826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1) + 1

end

end A092338.P14530745412199282826

namespace A092338

/-- `A274010(n+1)+1` -/
def P14530745412199282826.Spec : Prop :=
  ∀ n, P14530745412199282826.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P2374402468951194910

`A384195(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A092338.P2374402468951194910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A384195 n + a (n - 1)

end

end A092338.P2374402468951194910

namespace A092338

/-- `A384195(n)+a(n-1)` -/
def P2374402468951194910.Spec : Prop :=
  ∀ n, P2374402468951194910.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P9651763125256873578

`A032741(n)+∏{e}[n+1, #+1]`
-/

namespace A092338.P9651763125256873578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A092338.P9651763125256873578

namespace A092338

/-- `A032741(n)+∏{e}[n+1, #+1]` -/
def P9651763125256873578.Spec : Prop :=
  ∀ n, P9651763125256873578.a n = A092338 (n + 1)

theorem P9651763125256873578.correct : P9651763125256873578.Spec := by
  intro n
  simp only [A092338, Nat.add_sub_cancel, A092338.P9651763125256873578.f1, A092338.P9651763125256873578.a, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092338

/-! ## A092338.P15908556092583182817

`A000005(n+1)+∏{e}[n, #+1]-1`
-/

namespace A092338.P15908556092583182817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A092338.P15908556092583182817

namespace A092338

/-- `A000005(n+1)+∏{e}[n, #+1]-1` -/
def P15908556092583182817.Spec : Prop :=
  ∀ n, P15908556092583182817.a n = A092338 (n + 1)

theorem P15908556092583182817.correct : P15908556092583182817.Spec := by
  intro n
  simp only [A092338, Nat.add_sub_cancel, A092338.P15908556092583182817.f1, A092338.P15908556092583182817.a, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092338

/-! ## A092338.P4638660095124520545

`A032741(n)+Δ[A006218(n)]`
-/

namespace A092338.P4638660095124520545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (f1 (n + 1) - f1 n)

end

end A092338.P4638660095124520545

namespace A092338

/-- `A032741(n)+Δ[A006218(n)]` -/
def P4638660095124520545.Spec : Prop :=
  ∀ n, P4638660095124520545.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P4054484743378036775

`A032741(n)+Δ[A054519(n)]`
-/

namespace A092338.P4054484743378036775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (f1 (n + 1) - f1 n)

end

end A092338.P4054484743378036775

namespace A092338

/-- `A032741(n)+Δ[A054519(n)]` -/
def P4054484743378036775.Spec : Prop :=
  ∀ n, P4054484743378036775.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P15393572192339887022

`A032741(n)+A000005(n+1)`
-/

namespace A092338.P15393572192339887022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A000005 (n + 1)

end

end A092338.P15393572192339887022

namespace A092338

/-- `A032741(n)+A000005(n+1)` -/
def P15393572192339887022.Spec : Prop :=
  ∀ n, P15393572192339887022.a n = A092338 (n + 1)

theorem P15393572192339887022.correct : P15393572192339887022.Spec := by
  intro n
  simp only [A092338, Nat.add_sub_cancel, A092338.P15393572192339887022.a, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092338

/-! ## A092338.P7864826586891360733

`A054519(n+1)-A350102(n)`
-/

namespace A092338.P7864826586891360733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - A350102 n

end

end A092338.P7864826586891360733

namespace A092338

/-- `A054519(n+1)-A350102(n)` -/
def P7864826586891360733.Spec : Prop :=
  ∀ n, P7864826586891360733.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P16125044626057281594

`A032741(n+1)+A032741(n)+1`
-/

namespace A092338.P16125044626057281594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A032741 n + 1)

end

end A092338.P16125044626057281594

namespace A092338

/-- `A032741(n+1)+A032741(n)+1` -/
def P16125044626057281594.Spec : Prop :=
  ∀ n, P16125044626057281594.a n = A092338 (n + 1)

theorem P16125044626057281594.correct : P16125044626057281594.Spec := by
  intro n
  simp only [A092338, Nat.add_sub_cancel, A092338.P16125044626057281594.a, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092338

/-! ## A092338.P6652921278948150620

`A000005(n+1)+A319410(n)/2`
-/

namespace A092338.P6652921278948150620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (A319410 n : ℚ) / 2

end

end A092338.P6652921278948150620

namespace A092338

/-- `A000005(n+1)+A319410(n)/2` -/
def P6652921278948150620.Spec : Prop :=
  ∀ n, P6652921278948150620.a n = (A092338 (n + 1) : ℚ)

end A092338

/-! ## A092338.P10188975606831721036

`(A319410(n)+A062011(n+1))/2`
-/

namespace A092338.P10188975606831721036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 n + A062011 (n + 1) : ℚ) / 2

end

end A092338.P10188975606831721036

namespace A092338

/-- `(A319410(n)+A062011(n+1))/2` -/
def P10188975606831721036.Spec : Prop :=
  ∀ n, P10188975606831721036.a n = (A092338 (n + 1) : ℚ)

end A092338

/-! ## A092338.P16472223178333357490

`∑{d}[n, A157928(#)]+A000005(n+1)`
-/

namespace A092338.P16472223178333357490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157928 d + A000005 (n + 1)

end

end A092338.P16472223178333357490

namespace A092338

/-- `∑{d}[n, A157928(#)]+A000005(n+1)` -/
def P16472223178333357490.Spec : Prop :=
  ∀ n, P16472223178333357490.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P1537746462643384094

`A000005(n+1)+a(n-1)-A000005(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A092338.P1537746462643384094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000005 (n + 1) + (a (n - 1) - A000005 (n - 1))

end

end A092338.P1537746462643384094

namespace A092338

/-- `A000005(n+1)+a(n-1)-A000005(n-1)` -/
def P1537746462643384094.Spec : Prop :=
  ∀ n, P1537746462643384094.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P10420423828406921383

`A059169(A145154(n+1)+A145154(n))`
-/

namespace A092338.P10420423828406921383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A145154 (n + 1) + A145154 n).toNat

end

end A092338.P10420423828406921383

namespace A092338

/-- `A059169(A145154(n+1)+A145154(n))` -/
def P10420423828406921383.Spec : Prop :=
  ∀ n, P10420423828406921383.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P7561815645081729001

`A000005(n+1)+A000005(A028310(n))-1`
-/

namespace A092338.P7561815645081729001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000005 (A028310 n).toNat - 1)

end

end A092338.P7561815645081729001

namespace A092338

/-- `A000005(n+1)+A000005(A028310(n))-1` -/
def P7561815645081729001.Spec : Prop :=
  ∀ n, P7561815645081729001.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P10719680271286064950

`A233583(2*A000005(n+1))-A341062(n+1)`
-/

namespace A092338.P10719680271286064950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * A000005 (n + 1)).toNat - A341062 (n + 1)

end

end A092338.P10719680271286064950

namespace A092338

/-- `A233583(2*A000005(n+1))-A341062(n+1)` -/
def P10719680271286064950.Spec : Prop :=
  ∀ n, P10719680271286064950.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P15947195298270731594

`A000005(n+1)+A000041(n)-A167934(n)`
-/

namespace A092338.P15947195298270731594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000041 n - A167934 n)

end

end A092338.P15947195298270731594

namespace A092338

/-- `A000005(n+1)+A000041(n)-A167934(n)` -/
def P15947195298270731594.Spec : Prop :=
  ∀ n, P15947195298270731594.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P15134377456300985892

`A000005(n+1)+A047967(n)-A167930(n)`
-/

namespace A092338.P15134377456300985892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A047967 n - A167930 n)

end

end A092338.P15134377456300985892

namespace A092338

/-- `A000005(n+1)+A047967(n)-A167930(n)` -/
def P15134377456300985892.Spec : Prop :=
  ∀ n, P15134377456300985892.a n = A092338 (n + 1)

end A092338

/-! ## A092338.P12819889723889501455

`A000005(n+1)+A194621(A000217(n))-1`
-/

namespace A092338.P12819889723889501455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A194621 (A000217 n).toNat - 1)

end

end A092338.P12819889723889501455

namespace A092338

/-- `A000005(n+1)+A194621(A000217(n))-1` -/
def P12819889723889501455.Spec : Prop :=
  ∀ n, P12819889723889501455.a n = A092338 (n + 1)

end A092338

/-!
# A092339: Number of adjacent identical digits in the binary representation of n.

The programs for A092339, the canonical program `A092339.P11324540201180238684` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092339 has offset 0).

The definition of A092339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092339.P11324540201180238684

`A080791(A003188(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A092339

/-- `A080791(A003188(n))` -/
def P11324540201180238684.Spec : Prop :=
  ∀ n, P11324540201180238684.a n = A092339 n

theorem P11324540201180238684.correct : P11324540201180238684.Spec := by
  intro n
  simp only [A092339]

end A092339

/-! ## A092339.P14379118065252223091

`a(floor(n/2))+(∑[n]+1)%2` with `a(0)=0`
-/

namespace A092339.P14379118065252223091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A092339.P14379118065252223091

namespace A092339

/-- `a(floor(n/2))+(∑[n]+1)%2` -/
def P14379118065252223091.Spec : Prop :=
  ∀ n, (P14379118065252223091.a n : ℤ) = A092339 n

end A092339

/-! ## A092339.P11929254868052073810

`a(floor(n/2))+and(1, ∑[n]+1)` with `a(0)=0`
-/

namespace A092339.P11929254868052073810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A092339.P11929254868052073810

namespace A092339

/-- `a(floor(n/2))+and(1, ∑[n]+1)` -/
def P11929254868052073810.Spec : Prop :=
  ∀ n, (P11929254868052073810.a n : ℤ) = A092339 n

end A092339

/-! ## A092339.P7348088924538566935

`floor(log(cosh(A227185(n))))`
-/

namespace A092339.P7348088924538566935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A227185 n : ℝ))⌋

end

end A092339.P7348088924538566935

namespace A092339

/-- `floor(log(cosh(A227185(n))))` -/
def P7348088924538566935.Spec : Prop :=
  ∀ n, P7348088924538566935.a n = A092339 n

end A092339

/-! ## A092339.P3796681868910132786

`ceil(log2(n+1)-A005811(n))`
-/

namespace A092339.P3796681868910132786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ) - (A005811 n : ℝ)⌉

end

end A092339.P3796681868910132786

namespace A092339

/-- `ceil(log2(n+1)-A005811(n))` -/
def P3796681868910132786.Spec : Prop :=
  ∀ n, P3796681868910132786.a n = A092339 n

end A092339

/-! ## A092339.P15950974958174389504

`a(floor(n/2))+A021913(n-1)` with `a(0)=0`
-/

namespace A092339.P15950974958174389504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n - 1)

end

end A092339.P15950974958174389504

namespace A092339

/-- `a(floor(n/2))+A021913(n-1)` -/
def P15950974958174389504.Spec : Prop :=
  ∀ n, P15950974958174389504.a n = A092339 n

end A092339

/-! ## A092339.P17877927047875244772

`A000120(A279645(n))`
-/

namespace A092339.P17877927047875244772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A279645 n).toNat

end

end A092339.P17877927047875244772

namespace A092339

/-- `A000120(A279645(n))` -/
def P17877927047875244772.Spec : Prop :=
  ∀ n, P17877927047875244772.a n = A092339 n

end A092339

/-! ## A092339.P2918559942702697319

`A107782(n)+A014081(n)`
-/

namespace A092339.P2918559942702697319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n + A014081 n

end

end A092339.P2918559942702697319

namespace A092339

/-- `A107782(n)+A014081(n)` -/
def P2918559942702697319.Spec : Prop :=
  ∀ n, P2918559942702697319.a n = A092339 n

end A092339

/-! ## A092339.P10602327377617195953

`A227185(n)+A057428(n)`
-/

namespace A092339.P10602327377617195953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n + A057428 n

end

end A092339.P10602327377617195953

namespace A092339

/-- `A227185(n)+A057428(n)` -/
def P10602327377617195953.Spec : Prop :=
  ∀ n, P10602327377617195953.a n = A092339 n

end A092339

/-! ## A092339.P14247213433537043149

`A070941(n)-A088748(n)`
-/

namespace A092339.P14247213433537043149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A088748 n

end

end A092339.P14247213433537043149

namespace A092339

/-- `A070941(n)-A088748(n)` -/
def P14247213433537043149.Spec : Prop :=
  ∀ n, P14247213433537043149.a n = A092339 n

end A092339

/-! ## A092339.P38211033143719846

`A227185(n)-A057427(n)`
-/

namespace A092339.P38211033143719846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n - A057427 n

end

end A092339.P38211033143719846

namespace A092339

/-- `A227185(n)-A057427(n)` -/
def P38211033143719846.Spec : Prop :=
  ∀ n, P38211033143719846.a n = A092339 n

end A092339

/-! ## A092339.P7972634366878011003

`A029837(n+1)-A005811(n)`
-/

namespace A092339.P7972634366878011003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A005811 n

end

end A092339.P7972634366878011003

namespace A092339

/-- `A029837(n+1)-A005811(n)` -/
def P7972634366878011003.Spec : Prop :=
  ∀ n, P7972634366878011003.a n = A092339 n

end A092339

/-! ## A092339.P426333234695090228

`A033265(2*n+1)-A069010(n)`
-/

namespace A092339.P426333234695090228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (2 * n + 1) - A069010 n

end

end A092339.P426333234695090228

namespace A092339

/-- `A033265(2*n+1)-A069010(n)` -/
def P426333234695090228.Spec : Prop :=
  ∀ n, P426333234695090228.a n = A092339 n

end A092339

/-! ## A092339.P17223088253109414031

`A014081(n)+A014081(A035327(n))`
-/

namespace A092339.P17223088253109414031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n + A014081 (A035327 n).toNat

end

end A092339.P17223088253109414031

namespace A092339

/-- `A014081(n)+A014081(A035327(n))` -/
def P17223088253109414031.Spec : Prop :=
  ∀ n, P17223088253109414031.a n = A092339 n

end A092339

/-! ## A092339.P3419521085187205195

`A000120(A003817(n)-A003188(n))`
-/

namespace A092339.P3419521085187205195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n - A003188 n).toNat

end

end A092339.P3419521085187205195

namespace A092339

/-- `A000120(A003817(n)-A003188(n))` -/
def P3419521085187205195.Spec : Prop :=
  ∀ n, P3419521085187205195.a n = A092339 n

end A092339

/-! ## A092339.P15197117917373225035

`A070939(n)-A070939(A090079(n))`
-/

namespace A092339.P15197117917373225035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A070939 (A090079 n).toNat

end

end A092339.P15197117917373225035

namespace A092339

/-- `A070939(n)-A070939(A090079(n))` -/
def P15197117917373225035.Spec : Prop :=
  ∀ n, P15197117917373225035.a n = A092339 n

end A092339

/-! ## A092339.P1836364890296598883

`A070941(n)-A070941(A090079(n))`
-/

namespace A092339.P1836364890296598883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A070941 (A090079 n).toNat

end

end A092339.P1836364890296598883

namespace A092339

/-- `A070941(n)-A070941(A090079(n))` -/
def P1836364890296598883.Spec : Prop :=
  ∀ n, P1836364890296598883.a n = A092339 n

end A092339

/-! ## A092339.P11286179349104315870

`A014081(A080079(n+1))+A014081(n)`
-/

namespace A092339.P11286179349104315870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A080079 (n + 1)).toNat + A014081 n

end

end A092339.P11286179349104315870

namespace A092339

/-- `A014081(A080079(n+1))+A014081(n)` -/
def P11286179349104315870.Spec : Prop :=
  ∀ n, P11286179349104315870.a n = A092339 n

end A092339

/-! ## A092339.P4972642180374666641

`A005811(A006068(A341916(A362160(A341915(n)))))`
-/

namespace A092339.P4972642180374666641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A341916 (A362160 (A341915 n).toNat).toNat).toNat).toNat

end

end A092339.P4972642180374666641

namespace A092339

/-- `A005811(A006068(A341916(A362160(A341915(n)))))` -/
def P4972642180374666641.Spec : Prop :=
  ∀ n, P4972642180374666641.a n = A092339 n

end A092339

/-! ## A092339.P11324266076371671669

`A318995(A382255(n))`
-/

namespace A092339.P11324266076371671669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A382255 n).toNat

end

end A092339.P11324266076371671669

namespace A092339

/-- `A318995(A382255(n))` -/
def P11324266076371671669.Spec : Prop :=
  ∀ n, P11324266076371671669.a n = A092339 n

end A092339

/-!
# A092341: a(0)=1, a(n) = sigma_3(3n).

The programs for A092341, the canonical program `A092341.P6319637149778649017` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092341 has offset 0).

The definition of A092341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092341.P7156462246721871578

`∑{d}[3*n, #^3]+floor(acot(n))`
-/

namespace A092341.P7156462246721871578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A092341.P7156462246721871578

namespace A092341

/-- `∑{d}[3*n, #^3]+floor(acot(n))` -/
def P7156462246721871578.Spec : Prop :=
  ∀ n, P7156462246721871578.a n = A092341 n

end A092341

/-! ## A092341.P6319637149778649017

`∑{d}[a(n-1)+3, #^3]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092341

/-- `∑{d}[a(n-1)+3, #^3]` -/
def P6319637149778649017.Spec : Prop :=
  ∀ n, (P6319637149778649017.a n : ℤ) = A092341 n

theorem P6319637149778649017.correct : P6319637149778649017.Spec := by
  intro n
  simp only [A092341]

end A092341

/-! ## A092341.P8955986441482524217

`round(sqrt(∑{d}[3*n, #^3]²+1))`
-/

namespace A092341.P8955986441482524217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n), d ^ 3) ^ 2 + 1 : ℕ) : ℝ))

end

end A092341.P8955986441482524217

namespace A092341

/-- `round(sqrt(∑{d}[3*n, #^3]²+1))` -/
def P8955986441482524217.Spec : Prop :=
  ∀ n, P8955986441482524217.a n = A092341 n

end A092341

/-! ## A092341.P7804135169221738824

`∑{d}[A004277(n)+n, #^3]`
-/

namespace A092341.P7804135169221738824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A092341.P7804135169221738824

namespace A092341

/-- `∑{d}[A004277(n)+n, #^3]` -/
def P7804135169221738824.Spec : Prop :=
  ∀ n, (P7804135169221738824.a n : ℤ) = A092341 n

end A092341

/-! ## A092341.P11312445049003656133

`∑{d}[n-A008574(n), #^3]`
-/

namespace A092341.P11312445049003656133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A092341.P11312445049003656133

namespace A092341

/-- `∑{d}[n-A008574(n), #^3]` -/
def P11312445049003656133.Spec : Prop :=
  ∀ n, (P11312445049003656133.a n : ℤ) = A092341 n

end A092341

/-! ## A092341.P7613961485602508194

`∑{d}[A028310(n)+2*n, #^3]`
-/

namespace A092341.P7613961485602508194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A092341.P7613961485602508194

namespace A092341

/-- `∑{d}[A028310(n)+2*n, #^3]` -/
def P7613961485602508194.Spec : Prop :=
  ∀ n, (P7613961485602508194.a n : ℤ) = A092341 n

end A092341

/-! ## A092341.P13668927430925985837

`∑{d}[A028310(3*n), #^3]`
-/

namespace A092341.P13668927430925985837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A092341.P13668927430925985837

namespace A092341

/-- `∑{d}[A028310(3*n), #^3]` -/
def P13668927430925985837.Spec : Prop :=
  ∀ n, (P13668927430925985837.a n : ℤ) = A092341 n

end A092341

/-! ## A092341.P12931415747378977272

`A001158(floor(2/acot(n))+n)`
-/

namespace A092341.P12931415747378977272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A092341.P12931415747378977272

namespace A092341

/-- `A001158(floor(2/acot(n))+n)` -/
def P12931415747378977272.Spec : Prop :=
  ∀ n, P12931415747378977272.a n = A092341 n

end A092341

/-! ## A092341.P15536508865828692565

`A001158(A008486(n))`
-/

namespace A092341.P15536508865828692565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A008486 n).toNat

end

end A092341.P15536508865828692565

namespace A092341

/-- `A001158(A008486(n))` -/
def P15536508865828692565.Spec : Prop :=
  ∀ n, P15536508865828692565.a n = A092341 n

end A092341

/-! ## A092341.P5086326903326900375

`A001158(A028310(3*n))`
-/

namespace A092341.P5086326903326900375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A028310 (3 * n)).toNat

end

end A092341.P5086326903326900375

namespace A092341

/-- `A001158(A028310(3*n))` -/
def P5086326903326900375.Spec : Prop :=
  ∀ n, P5086326903326900375.a n = A092341 n

end A092341

/-! ## A092341.P7973456343971043799

`A001158(A004277(n)+n)`
-/

namespace A092341.P7973456343971043799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A004277 n + (n : ℤ)).toNat

end

end A092341.P7973456343971043799

namespace A092341

/-- `A001158(A004277(n)+n)` -/
def P7973456343971043799.Spec : Prop :=
  ∀ n, P7973456343971043799.a n = A092341 n

end A092341

/-! ## A092341.P15255556918231378475

`∑{d}[A008486(n), A000578(#)]`
-/

namespace A092341.P15255556918231378475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 d

end

end A092341.P15255556918231378475

namespace A092341

/-- `∑{d}[A008486(n), A000578(#)]` -/
def P15255556918231378475.Spec : Prop :=
  ∀ n, P15255556918231378475.a n = A092341 n

end A092341

/-! ## A092341.P17041548268543684889

`A001158(A004275(n+1)+n)`
-/

namespace A092341.P17041548268543684889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A004275 (n + 1) + (n : ℤ)).toNat

end

end A092341.P17041548268543684889

namespace A092341

/-- `A001158(A004275(n+1)+n)` -/
def P17041548268543684889.Spec : Prop :=
  ∀ n, P17041548268543684889.a n = A092341 n

end A092341

/-!
# A092342: a(n) = sigma_3(3n+1).

The programs for A092342, the canonical program `A092342.P3608978850417343743` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092342 has offset 0).

The definition of A092342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092342.P3608978850417343743

`∑{d}[3*n+1, #^3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092342

/-- `∑{d}[3*n+1, #^3]` -/
def P3608978850417343743.Spec : Prop :=
  ∀ n, (P3608978850417343743.a n : ℤ) = A092342 n

theorem P3608978850417343743.correct : P3608978850417343743.Spec := by
  intro n
  simp only [A092342]

end A092342

/-! ## A092342.P2963934892293537860

`round(sqrt(∑{d}[Δ[n²]+n, #^3]²+1))`
-/

namespace A092342.P2963934892293537860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3) ^ 2 + 1 : ℕ) : ℝ))

end

end A092342.P2963934892293537860

namespace A092342

/-- `round(sqrt(∑{d}[Δ[n²]+n, #^3]²+1))` -/
def P2963934892293537860.Spec : Prop :=
  ∀ n, P2963934892293537860.a n = A092342 n

end A092342

/-! ## A092342.P4349629345104823545

`ceil(abs(∑{d}[a(n-1)+3, (-#)^3]+γ))` with `a(0)=1`
-/

namespace A092342.P4349629345104823545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 3 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌉

end

end A092342.P4349629345104823545

namespace A092342

/-- `ceil(abs(∑{d}[a(n-1)+3, (-#)^3]+γ))` -/
def P4349629345104823545.Spec : Prop :=
  ∀ n, P4349629345104823545.a n = A092342 n

end A092342

/-! ## A092342.P16258894000127993129

`A001158(3*n+1)`
-/

namespace A092342.P16258894000127993129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (3 * n + 1)

end

end A092342.P16258894000127993129

namespace A092342

/-- `A001158(3*n+1)` -/
def P16258894000127993129.Spec : Prop :=
  ∀ n, P16258894000127993129.a n = A092342 n

end A092342

/-! ## A092342.P2243265401010944985

`A001158(A016777(n))%A004804(n+1)`
-/

namespace A092342.P2243265401010944985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (A016777 n).toNat) (A004804 (n + 1))

end

end A092342.P2243265401010944985

namespace A092342

/-- `A001158(A016777(n))%A004804(n+1)` -/
def P2243265401010944985.Spec : Prop :=
  ∀ n, P2243265401010944985.a n = A092342 n

end A092342

/-! ## A092342.P14056847681938663670

`A198956(3*n+1)`
-/

namespace A092342.P14056847681938663670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198956 (3 * n + 1)

end

end A092342.P14056847681938663670

namespace A092342

/-- `A198956(3*n+1)` -/
def P14056847681938663670.Spec : Prop :=
  ∀ n, P14056847681938663670.a n = A092342 n

end A092342

/-!
# A092343: a(n) = sigma_3(3n+2).

The programs for A092343, the canonical program `A092343.P11002173847535285908` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092343 has offset 0).

The definition of A092343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092343.P11002173847535285908

`∑{d}[3*n+2, #^3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092343

/-- `∑{d}[3*n+2, #^3]` -/
def P11002173847535285908.Spec : Prop :=
  ∀ n, (P11002173847535285908.a n : ℤ) = A092343 n

theorem P11002173847535285908.correct : P11002173847535285908.Spec := by
  intro n
  simp only [A092343]

end A092343

/-! ## A092343.P9215766700553462105

`abs(∑{d}[Δ[n²]+n+1, (-#)^3])`
-/

namespace A092343.P9215766700553462105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, (-(d : ℤ)) ^ 3|

end

end A092343.P9215766700553462105

namespace A092343

/-- `abs(∑{d}[Δ[n²]+n+1, (-#)^3])` -/
def P9215766700553462105.Spec : Prop :=
  ∀ n, P9215766700553462105.a n = A092343 n

end A092343

/-! ## A092343.P7788735137193644839

`ceil(abs(∑{d}[a(n-1)+3, (-#)^3]+γ))` with `a(0)=2`
-/

namespace A092343.P7788735137193644839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 3 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌉

end

end A092343.P7788735137193644839

namespace A092343

/-- `ceil(abs(∑{d}[a(n-1)+3, (-#)^3]+γ))` -/
def P7788735137193644839.Spec : Prop :=
  ∀ n, P7788735137193644839.a n = A092343 n

end A092343

/-! ## A092343.P14053279575188705300

`round(sqrt(∑{d}[Δ[n²]+1+n, #^3]²+1))`
-/

namespace A092343.P14053279575188705300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3) ^ 2 + 1 : ℕ) : ℝ))

end

end A092343.P14053279575188705300

namespace A092343

/-- `round(sqrt(∑{d}[Δ[n²]+1+n, #^3]²+1))` -/
def P14053279575188705300.Spec : Prop :=
  ∀ n, P14053279575188705300.a n = A092343 n

end A092343

/-! ## A092343.P16428553155419296770

`A001158(3*n+2)`
-/

namespace A092343.P16428553155419296770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (3 * n + 2)

end

end A092343.P16428553155419296770

namespace A092343

/-- `A001158(3*n+2)` -/
def P16428553155419296770.Spec : Prop :=
  ∀ n, P16428553155419296770.a n = A092343 n

theorem P16428553155419296770.correct : P16428553155419296770.Spec := by
  intro n
  simp only [A092343, Nat.add_sub_cancel, A092343.P16428553155419296770.a, A092343.P11002173847535285908.f1, A092343.P11002173847535285908.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092343

/-! ## A092343.P1141541577969666637

`A198956(3*n+2)`
-/

namespace A092343.P1141541577969666637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198956 (3 * n + 2)

end

end A092343.P1141541577969666637

namespace A092343

/-- `A198956(3*n+2)` -/
def P1141541577969666637.Spec : Prop :=
  ∀ n, P1141541577969666637.a n = A092343 n

end A092343

/-!
# A092344: a(0)=1; a(n) = sigma_2(n) + sigma_3(n).

The programs for A092344, the canonical program `A092344.P13515634055615059972` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092344 has offset 0).

The definition of A092344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092344.P13515634055615059972

`A092347(n)-∑{d}[n, #]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092344

/-- `A092347(n)-∑{d}[n, #]` -/
def P13515634055615059972.Spec : Prop :=
  ∀ n, P13515634055615059972.a n = A092344 n

theorem P13515634055615059972.correct : P13515634055615059972.Spec := by
  intro n
  simp only [A092344]

end A092344

/-! ## A092344.P15895140959581840520

`A092348(round(sqrt(n²+1)))+A092346(n)`
-/

namespace A092344.P15895140959581840520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A092346 n

end

end A092344.P15895140959581840520

namespace A092344

/-- `A092348(round(sqrt(n²+1)))+A092346(n)` -/
def P15895140959581840520.Spec : Prop :=
  ∀ n, P15895140959581840520.a n = A092344 n

end A092344

/-! ## A092344.P9613077742703411645

`A092345(n)+A086666(A028310(n))`
-/

namespace A092344.P9613077742703411645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092345 n + A086666 (A028310 n).toNat

end

end A092344.P9613077742703411645

namespace A092344

/-- `A092345(n)+A086666(A028310(n))` -/
def P9613077742703411645.Spec : Prop :=
  ∀ n, P9613077742703411645.a n = A092344 n

end A092344

/-!
# A092345: a(0)=1; a(n) = sigma_1(n) + sigma_3(n).

The programs for A092345, the canonical program `A092345.P17476470797060356055` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092345 has offset 0).

The definition of A092345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092345.P17476470797060356055

`A000007(n)+∑{d}[n, A034262(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092345

/-- `A000007(n)+∑{d}[n, A034262(#)]` -/
def P17476470797060356055.Spec : Prop :=
  ∀ n, P17476470797060356055.a n = A092345 n

theorem P17476470797060356055.correct : P17476470797060356055.Spec := by
  intro n
  simp only [A092345]

end A092345

/-! ## A092345.P16794876775924973658

`∑{d}[n, #^3]+A000203(A008574(n)-3*n)`
-/

namespace A092345.P16794876775924973658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) + A000203 (A008574 n - (3 * n : ℤ)).toNat

end

end A092345.P16794876775924973658

namespace A092345

/-- `∑{d}[n, #^3]+A000203(A008574(n)-3*n)` -/
def P16794876775924973658.Spec : Prop :=
  ∀ n, P16794876775924973658.a n = A092345 n

end A092345

/-! ## A092345.P12379636680300778067

`∑{d}[n, A000578(#)]+A000203(A028310(n))`
-/

namespace A092345.P12379636680300778067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d + A000203 (A028310 n).toNat

end

end A092345.P12379636680300778067

namespace A092345

/-- `∑{d}[n, A000578(#)]+A000203(A028310(n))` -/
def P12379636680300778067.Spec : Prop :=
  ∀ n, P12379636680300778067.a n = A092345 n

end A092345

/-! ## A092345.P17040243140999869932

`A260958(A004016(n))+∑{d}[n, A034262(#)]`
-/

namespace A092345.P17040243140999869932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260958 (A004016 n).toNat + ∑ d ∈ Nat.divisors (f1 n), A034262 d

end

end A092345.P17040243140999869932

namespace A092345

/-- `A260958(A004016(n))+∑{d}[n, A034262(#)]` -/
def P17040243140999869932.Spec : Prop :=
  ∀ n, P17040243140999869932.a n = A092345 n

end A092345

/-! ## A092345.P7898069142779400185

`∑{d}[A123108(A005843(n)), (n/#)^3+#]`
-/

namespace A092345.P7898069142779400185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A005843 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (((n : ℚ) / (d : ℚ)) ^ 3 + (d : ℚ))

end

end A092345.P7898069142779400185

namespace A092345

/-- `∑{d}[A123108(A005843(n)), (n/#)^3+#]` -/
def P7898069142779400185.Spec : Prop :=
  ∀ n, P7898069142779400185.a n = (A092345 n : ℚ)

end A092345

/-! ## A092345.P6288015240112665965

`A059841(A039734(n+2))+∑{d}[n, A034262(#)]`
-/

namespace A092345.P6288015240112665965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A039734 (n + 2)).toNat + ∑ d ∈ Nat.divisors (f1 n), A034262 d

end

end A092345.P6288015240112665965

namespace A092345

/-- `A059841(A039734(n+2))+∑{d}[n, A034262(#)]` -/
def P6288015240112665965.Spec : Prop :=
  ∀ n, P6288015240112665965.a n = A092345 n

end A092345

/-! ## A092345.P13101986010622997426

`A323243(A005940(n+1))+A001158(A028310(n))`
-/

namespace A092345.P13101986010622997426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A005940 (n + 1)).toNat + A001158 (A028310 n).toNat

end

end A092345.P13101986010622997426

namespace A092345

/-- `A323243(A005940(n+1))+A001158(A028310(n))` -/
def P13101986010622997426.Spec : Prop :=
  ∀ n, P13101986010622997426.a n = A092345 n

end A092345

/-!
# A092346: a(0)=1; a(n) = sigma_1(n) + sigma_2(n).

The programs for A092346, the canonical program `A092346.P12902471447094241510` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092346 has offset 0).

The definition of A092346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092346.P12902471447094241510

`A010051(2*(n+1))+∑{d}[n, A002378(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092346

/-- `A010051(2*(n+1))+∑{d}[n, A002378(#)]` -/
def P12902471447094241510.Spec : Prop :=
  ∀ n, P12902471447094241510.a n = A092346 n

theorem P12902471447094241510.correct : P12902471447094241510.Spec := by
  intro n
  simp only [A092346]

end A092346

/-! ## A092346.P13824877828324109276

`A135481(A073659(n+1))+∑{d}[n, A002378(#)]`
-/

namespace A092346.P13824877828324109276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A073659 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A002378 d

end

end A092346.P13824877828324109276

namespace A092346

/-- `A135481(A073659(n+1))+∑{d}[n, A002378(#)]` -/
def P13824877828324109276.Spec : Prop :=
  ∀ n, P13824877828324109276.a n = A092346 n

end A092346

/-! ## A092346.P3827471426849992734

`A007437(A028310(n))*A089080(A006093(n+1))`
-/

namespace A092346.P3827471426849992734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A028310 n).toNat * A089080 (A006093 (n + 1)).toNat

end

end A092346.P3827471426849992734

namespace A092346

/-- `A007437(A028310(n))*A089080(A006093(n+1))` -/
def P3827471426849992734.Spec : Prop :=
  ∀ n, P3827471426849992734.a n = A092346 n

end A092346

/-! ## A092346.P6057131801006369738

`A008683(A001694(n+1))+∑{d}[n, A002378(#)]`
-/

namespace A092346.P6057131801006369738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001694 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A002378 d

end

end A092346.P6057131801006369738

namespace A092346

/-- `A008683(A001694(n+1))+∑{d}[n, A002378(#)]` -/
def P6057131801006369738.Spec : Prop :=
  ∀ n, P6057131801006369738.a n = A092346 n

end A092346

/-! ## A092346.P1984342293998404635

`A008683((n+1)²)+∑{d}[n, A002378(#)]`
-/

namespace A092346.P1984342293998404635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + ∑ d ∈ Nat.divisors (f1 n), A002378 d

end

end A092346.P1984342293998404635

namespace A092346

/-- `A008683((n+1)²)+∑{d}[n, A002378(#)]` -/
def P1984342293998404635.Spec : Prop :=
  ∀ n, P1984342293998404635.a n = A092346 n

end A092346

/-! ## A092346.P3523100853699187611

`A007437(A028310(n))*A036453(A007437(n+1))`
-/

namespace A092346.P3523100853699187611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A028310 n).toNat * A036453 (A007437 (n + 1)).toNat

end

end A092346.P3523100853699187611

namespace A092346

/-- `A007437(A028310(n))*A036453(A007437(n+1))` -/
def P3523100853699187611.Spec : Prop :=
  ∀ n, P3523100853699187611.a n = A092346 n

end A092346

/-!
# A092347: a(0)=1; a(n) = sigma_1(n) + sigma_2(n) + sigma_3(n).

The programs for A092347, the canonical program `A092347.P5419427036606339939` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092347 has offset 0).

The definition of A092347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092347.P10753147769357784436

`A092344(n)+∑{d}[n, #]`
-/

namespace A092347.P10753147769357784436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092344 n + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A092347.P10753147769357784436

namespace A092347

/-- `A092344(n)+∑{d}[n, #]` -/
def P10753147769357784436.Spec : Prop :=
  ∀ n, P10753147769357784436.a n = A092347 n

theorem P10753147769357784436.correct : P10753147769357784436.Spec := by
  intro n
  simp only [A092347, Nat.add_sub_cancel, A092347.P10753147769357784436.f1, A092347.P10753147769357784436.a, A092347.P5419427036606339939.f1, A092347.P5419427036606339939.a, A000007, A000007.P6599383543502402472.a, A027444, A027444.P13486811862535796769.a, A092344, A092344.P13515634055615059972.f1, A092344.P13515634055615059972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092347

/-! ## A092347.P5419427036606339939

`A000007(n)+∑{d}[n, A027444(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092347

/-- `A000007(n)+∑{d}[n, A027444(#)]` -/
def P5419427036606339939.Spec : Prop :=
  ∀ n, P5419427036606339939.a n = A092347 n

theorem P5419427036606339939.correct : P5419427036606339939.Spec := by
  intro n
  simp only [A092347]

end A092347

/-! ## A092347.P7258518208702592192

`∑{d}[n, A027444(#)]+and(1, A000010(n+2))`
-/

namespace A092347.P7258518208702592192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027444 d + Int.land 1 (A000010 (n + 2))

end

end A092347.P7258518208702592192

namespace A092347

/-- `∑{d}[n, A027444(#)]+and(1, A000010(n+2))` -/
def P7258518208702592192.Spec : Prop :=
  ∀ n, P7258518208702592192.a n = A092347 n

end A092347

/-! ## A092347.P11897362280356679169

`∑{d}[n, A027444(#)]+A168921(n)%2`
-/

namespace A092347.P11897362280356679169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027444 d + Int.tmod (A168921 n) 2

end

end A092347.P11897362280356679169

namespace A092347

/-- `∑{d}[n, A027444(#)]+A168921(n)%2` -/
def P11897362280356679169.Spec : Prop :=
  ∀ n, P11897362280356679169.a n = A092347 n

end A092347

/-! ## A092347.P4530864211016288203

`∑{d}[n, A027444(#)]+A167651(n)%3`
-/

namespace A092347.P4530864211016288203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027444 d + Int.tmod (A167651 n) 3

end

end A092347.P4530864211016288203

namespace A092347

/-- `∑{d}[n, A027444(#)]+A167651(n)%3` -/
def P4530864211016288203.Spec : Prop :=
  ∀ n, P4530864211016288203.a n = A092347 n

end A092347

/-! ## A092347.P10943318093038193836

`∑{d}[n, A027444(#)]+A166541(n)%3`
-/

namespace A092347.P10943318093038193836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027444 d + Int.tmod (A166541 n) 3

end

end A092347.P10943318093038193836

namespace A092347

/-- `∑{d}[n, A027444(#)]+A166541(n)%3` -/
def P10943318093038193836.Spec : Prop :=
  ∀ n, P10943318093038193836.a n = A092347 n

end A092347

/-!
# A092348: a(n) = sigma_3(n) - sigma_1(n).

The programs for A092348, the canonical program `A092348.P650958880986543644` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092348 has offset 1).

The definition of A092348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092348.P650958880986543644

`∑{d}[n+1, #^3-#]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092348

/-- `∑{d}[n+1, #^3-#]` -/
def P650958880986543644.Spec : Prop :=
  ∀ n, P650958880986543644.a n = A092348 (n + 1)

theorem P650958880986543644.correct : P650958880986543644.Spec := by
  intro n
  simp only [A092348, Nat.add_sub_cancel]

end A092348

/-! ## A092348.P1495589286842664962

`abs(∑{d}[n+1, #*(1-#²)])`
-/

namespace A092348.P1495589286842664962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - (d ^ 2 : ℤ))|

end

end A092348.P1495589286842664962

namespace A092348

/-- `abs(∑{d}[n+1, #*(1-#²)])` -/
def P1495589286842664962.Spec : Prop :=
  ∀ n, P1495589286842664962.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P17674043663806207600

`-∑{d}[n+1, #*(1-#²)]`
-/

namespace A092348.P17674043663806207600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - (d ^ 2 : ℤ)))

end

end A092348.P17674043663806207600

namespace A092348

/-- `-∑{d}[n+1, #*(1-#²)]` -/
def P17674043663806207600.Spec : Prop :=
  ∀ n, P17674043663806207600.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P14703388016537081103

`6*A363604(n+1)`
-/

namespace A092348.P14703388016537081103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A363604 (n + 1)

end

end A092348.P14703388016537081103

namespace A092348

/-- `6*A363604(n+1)` -/
def P14703388016537081103.Spec : Prop :=
  ∀ n, P14703388016537081103.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P14541715142656789659

`∑{d}[n+1, #*#²]-A000203(n+1)`
-/

namespace A092348.P14541715142656789659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * d ^ 2 : ℕ) : ℤ) - A000203 (n + 1)

end

end A092348.P14541715142656789659

namespace A092348

/-- `∑{d}[n+1, #*#²]-A000203(n+1)` -/
def P14541715142656789659.Spec : Prop :=
  ∀ n, P14541715142656789659.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P4834393794770748751

`A001158(n+1)-Δ[A160664(n)]`
-/

namespace A092348.P4834393794770748751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - (f1 (n + 1) - f1 n)

end

end A092348.P4834393794770748751

namespace A092348

/-- `A001158(n+1)-Δ[A160664(n)]` -/
def P4834393794770748751.Spec : Prop :=
  ∀ n, P4834393794770748751.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P9722374301236508489

`A092350(n+1)+A001157(n+1)`
-/

namespace A092348.P9722374301236508489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092350 (n + 1) + A001157 (n + 1)

end

end A092348.P9722374301236508489

namespace A092348

/-- `A092350(n+1)+A001157(n+1)` -/
def P9722374301236508489.Spec : Prop :=
  ∀ n, P9722374301236508489.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P303601386684323222

`A092349(n+1)+A086666(n+1)`
-/

namespace A092348.P303601386684323222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092349 (n + 1) + A086666 (n + 1)

end

end A092348.P303601386684323222

namespace A092348

/-- `A092349(n+1)+A086666(n+1)` -/
def P303601386684323222.Spec : Prop :=
  ∀ n, P303601386684323222.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P6797940107064523525

`A001158(n+1)-A000203(n+1)`
-/

namespace A092348.P6797940107064523525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A000203 (n + 1)

end

end A092348.P6797940107064523525

namespace A092348

/-- `A001158(n+1)-A000203(n+1)` -/
def P6797940107064523525.Spec : Prop :=
  ∀ n, P6797940107064523525.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P5996708227755990285

`A001158(n+1)-A074400(n+1)/2`
-/

namespace A092348.P5996708227755990285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A092348.P5996708227755990285

namespace A092348

/-- `A001158(n+1)-A074400(n+1)/2` -/
def P5996708227755990285.Spec : Prop :=
  ∀ n, P5996708227755990285.a n = (A092348 (n + 1) : ℚ)

end A092348

/-! ## A092348.P6739832034487039062

`A001158(n+1)+A086666(n+1)-A001157(n+1)`
-/

namespace A092348.P6739832034487039062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A086666 (n + 1) - A001157 (n + 1))

end

end A092348.P6739832034487039062

namespace A092348

/-- `A001158(n+1)+A086666(n+1)-A001157(n+1)` -/
def P6739832034487039062.Spec : Prop :=
  ∀ n, P6739832034487039062.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P2768748990308805296

`A092344(n+1)-(A001157(n+1)+A000203(n+1))`
-/

namespace A092348.P2768748990308805296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092344 (n + 1) - (A001157 (n + 1) + A000203 (n + 1))

end

end A092348.P2768748990308805296

namespace A092348

/-- `A092344(n+1)-(A001157(n+1)+A000203(n+1))` -/
def P2768748990308805296.Spec : Prop :=
  ∀ n, P2768748990308805296.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P16212922036513638387

`A001158(n+1)+A092344(n+1)-A092347(n+1)`
-/

namespace A092348.P16212922036513638387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A092344 (n + 1) - A092347 (n + 1))

end

end A092348.P16212922036513638387

namespace A092348

/-- `A001158(n+1)+A092344(n+1)-A092347(n+1)` -/
def P16212922036513638387.Spec : Prop :=
  ∀ n, P16212922036513638387.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P793595505092340960

`A001158(n+1)-A082903(n+1)*A161942(n+1)`
-/

namespace A092348.P793595505092340960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A082903 (n + 1) * A161942 (n + 1)

end

end A092348.P793595505092340960

namespace A092348

/-- `A001158(n+1)-A082903(n+1)*A161942(n+1)` -/
def P793595505092340960.Spec : Prop :=
  ∀ n, P793595505092340960.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P5198294237619497640

`A379813(n+1)/A000203(n+1)-A000203(n+1)`
-/

namespace A092348.P5198294237619497640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379813 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A092348.P5198294237619497640

namespace A092348

/-- `A379813(n+1)/A000203(n+1)-A000203(n+1)` -/
def P5198294237619497640.Spec : Prop :=
  ∀ n, P5198294237619497640.a n = (A092348 (n + 1) : ℚ)

end A092348

/-! ## A092348.P8811383565840409985

`A001158(n+1)-A379813(n+1)/A001158(n+1)`
-/

namespace A092348.P8811383565840409985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - (A379813 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ)

end

end A092348.P8811383565840409985

namespace A092348

/-- `A001158(n+1)-A379813(n+1)/A001158(n+1)` -/
def P8811383565840409985.Spec : Prop :=
  ∀ n, P8811383565840409985.a n = (A092348 (n + 1) : ℚ)

end A092348

/-! ## A092348.P7674444769035494756

`(A379814(n+1)-A379812(n+1))/A001157(n+1)`
-/

namespace A092348.P7674444769035494756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) - A379812 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ)

end

end A092348.P7674444769035494756

namespace A092348

/-- `(A379814(n+1)-A379812(n+1))/A001157(n+1)` -/
def P7674444769035494756.Spec : Prop :=
  ∀ n, P7674444769035494756.a n = (A092348 (n + 1) : ℚ)

end A092348

/-! ## A092348.P1724490703576949576

`∑{d}[n+1, #^3]+Δ[-(∑[∑{d}[n, #]]+1)]`
-/

namespace A092348.P1724490703576949576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A092348.P1724490703576949576

namespace A092348

/-- `∑{d}[n+1, #^3]+Δ[-(∑[∑{d}[n, #]]+1)]` -/
def P1724490703576949576.Spec : Prop :=
  ∀ n, P1724490703576949576.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P9412911646238233697

`floor(A356534(n+1)/A092345(n+1))`
-/

namespace A092348.P9412911646238233697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A356534 (n + 1) : ℚ) / (A092345 (n + 1) : ℚ)⌋

end

end A092348.P9412911646238233697

namespace A092348

/-- `floor(A356534(n+1)/A092345(n+1))` -/
def P9412911646238233697.Spec : Prop :=
  ∀ n, P9412911646238233697.a n = A092348 (n + 1)

end A092348

/-! ## A092348.P1916262992859078497

`A001158(n+1)+A001158(n+1)-A092345(n+1)`
-/

namespace A092348.P1916262992859078497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A001158 (n + 1) - A092345 (n + 1))

end

end A092348.P1916262992859078497

namespace A092348

/-- `A001158(n+1)+A001158(n+1)-A092345(n+1)` -/
def P1916262992859078497.Spec : Prop :=
  ∀ n, P1916262992859078497.a n = A092348 (n + 1)

end A092348

/-!
# A092349: a(n) = sigma_3(n) - sigma_2(n).

The programs for A092349, the canonical program `A092349.P3299752747474284661` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092349 has offset 1).

The definition of A092349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092349.P3299752747474284661

`∑{d}[n+1, (#-1)*#²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092349

/-- `∑{d}[n+1, (#-1)*#²]` -/
def P3299752747474284661.Spec : Prop :=
  ∀ n, P3299752747474284661.a n = A092349 (n + 1)

theorem P3299752747474284661.correct : P3299752747474284661.Spec := by
  intro n
  simp only [A092349, Nat.add_sub_cancel]

end A092349

/-! ## A092349.P4203938243858408326

`abs(∑{d}[n+1, #²-#^3])`
-/

namespace A092349.P4203938243858408326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (d ^ 3 : ℤ))|

end

end A092349.P4203938243858408326

namespace A092349

/-- `abs(∑{d}[n+1, #²-#^3])` -/
def P4203938243858408326.Spec : Prop :=
  ∀ n, P4203938243858408326.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P14918369011618622050

`-∑{d}[n+1, #²-#^3]`
-/

namespace A092349.P14918369011618622050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (d ^ 3 : ℤ)))

end

end A092349.P14918369011618622050

namespace A092349

/-- `-∑{d}[n+1, #²-#^3]` -/
def P14918369011618622050.Spec : Prop :=
  ∀ n, P14918369011618622050.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P8927312993373253616

`∑{d}[n+1, #^3]-∑{d}[n+1, #²]`
-/

namespace A092349.P8927312993373253616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A092349.P8927312993373253616

namespace A092349

/-- `∑{d}[n+1, #^3]-∑{d}[n+1, #²]` -/
def P8927312993373253616.Spec : Prop :=
  ∀ n, P8927312993373253616.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P16671567087831135860

`∑{d}[n+1, #^3]-floor(∑{d}[n+1, #^(4/2)])`
-/

namespace A092349.P16671567087831135860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - ⌊∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A092349.P16671567087831135860

namespace A092349

/-- `∑{d}[n+1, #^3]-floor(∑{d}[n+1, #^(4/2)])` -/
def P16671567087831135860.Spec : Prop :=
  ∀ n, P16671567087831135860.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P14908078498783844790

`∑{d}[n+1, #^3]-A001157(n+1)`
-/

namespace A092349.P14908078498783844790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - A001157 (n + 1)

end

end A092349.P14908078498783844790

namespace A092349

/-- `∑{d}[n+1, #^3]-A001157(n+1)` -/
def P14908078498783844790.Spec : Prop :=
  ∀ n, P14908078498783844790.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P3375006161198354541

`A092350(n+1)+A000203(n+1)`
-/

namespace A092349.P3375006161198354541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092350 (n + 1) + A000203 (n + 1)

end

end A092349.P3375006161198354541

namespace A092349

/-- `A092350(n+1)+A000203(n+1)` -/
def P3375006161198354541.Spec : Prop :=
  ∀ n, P3375006161198354541.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P6108062605440403893

`A001158(n+1)-A001157(n+1)`
-/

namespace A092349.P6108062605440403893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A001157 (n + 1)

end

end A092349.P6108062605440403893

namespace A092349

/-- `A001158(n+1)-A001157(n+1)` -/
def P6108062605440403893.Spec : Prop :=
  ∀ n, P6108062605440403893.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P17582759759347206449

`A092348(n+1)-A086666(n+1)`
-/

namespace A092349.P17582759759347206449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - A086666 (n + 1)

end

end A092349.P17582759759347206449

namespace A092349

/-- `A092348(n+1)-A086666(n+1)` -/
def P17582759759347206449.Spec : Prop :=
  ∀ n, P17582759759347206449.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P8245131632782730183

`sqrt(A356534(n+1))-A001157(n+1)`
-/

namespace A092349.P8245131632782730183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356534 (n + 1) : ℝ) - (A001157 (n + 1) : ℝ)

end

end A092349.P8245131632782730183

namespace A092349

/-- `sqrt(A356534(n+1))-A001157(n+1)` -/
def P8245131632782730183.Spec : Prop :=
  ∀ n, P8245131632782730183.a n = (A092349 (n + 1) : ℝ)

end A092349

/-! ## A092349.P9799871264367545205

`A092348(n+1)-2*A069153(n+1)`
-/

namespace A092349.P9799871264367545205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - 2 * A069153 (n + 1)

end

end A092349.P9799871264367545205

namespace A092349

/-- `A092348(n+1)-2*A069153(n+1)` -/
def P9799871264367545205.Spec : Prop :=
  ∀ n, P9799871264367545205.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P7935188479323369730

`2*(A278403(n+1)-A001157(n+1))`
-/

namespace A092349.P7935188479323369730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278403 (n + 1) - A001157 (n + 1))

end

end A092349.P7935188479323369730

namespace A092349

/-- `2*(A278403(n+1)-A001157(n+1))` -/
def P7935188479323369730.Spec : Prop :=
  ∀ n, P7935188479323369730.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P7550832754596000453

`A276634(n+1)+(n+1)^3-A001157(n+1)`
-/

namespace A092349.P7550832754596000453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276634 (n + 1) + ((n + 1) ^ 3 : ℤ) - A001157 (n + 1)

end

end A092349.P7550832754596000453

namespace A092349

/-- `A276634(n+1)+(n+1)^3-A001157(n+1)` -/
def P7550832754596000453.Spec : Prop :=
  ∀ n, P7550832754596000453.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P7503170563999321658

`A001158(n+1)-(A086666(n+1)+A000203(n+1))`
-/

namespace A092349.P7503170563999321658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - (A086666 (n + 1) + A000203 (n + 1))

end

end A092349.P7503170563999321658

namespace A092349

/-- `A001158(n+1)-(A086666(n+1)+A000203(n+1))` -/
def P7503170563999321658.Spec : Prop :=
  ∀ n, P7503170563999321658.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P1773730340605409967

`A000203(n+1)+A092348(n+1)-A001157(n+1)`
-/

namespace A092349.P1773730340605409967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A092348 (n + 1) - A001157 (n + 1))

end

end A092349.P1773730340605409967

namespace A092349

/-- `A000203(n+1)+A092348(n+1)-A001157(n+1)` -/
def P1773730340605409967.Spec : Prop :=
  ∀ n, P1773730340605409967.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P12173913828640736854

`A001158(n+1)+A001158(n+1)-A092344(n+1)`
-/

namespace A092349.P12173913828640736854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A001158 (n + 1) - A092344 (n + 1))

end

end A092349.P12173913828640736854

namespace A092349

/-- `A001158(n+1)+A001158(n+1)-A092344(n+1)` -/
def P12173913828640736854.Spec : Prop :=
  ∀ n, P12173913828640736854.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P17340150803035995593

`A001158(n+1)+A092350(n+1)-A092348(n+1)`
-/

namespace A092349.P17340150803035995593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A092350 (n + 1) - A092348 (n + 1))

end

end A092349.P17340150803035995593

namespace A092349

/-- `A001158(n+1)+A092350(n+1)-A092348(n+1)` -/
def P17340150803035995593.Spec : Prop :=
  ∀ n, P17340150803035995593.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P7131745914780591895

`A092344(n+1)-A001157(n+1)-A001157(n+1)`
-/

namespace A092349.P7131745914780591895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092344 (n + 1) - A001157 (n + 1) - A001157 (n + 1)

end

end A092349.P7131745914780591895

namespace A092349

/-- `A092344(n+1)-A001157(n+1)-A001157(n+1)` -/
def P7131745914780591895.Spec : Prop :=
  ∀ n, P7131745914780591895.a n = A092349 (n + 1)

end A092349

/-! ## A092349.P5699947665635073773

`A001158(n+1)-A379814(n+1)/A001158(n+1)`
-/

namespace A092349.P5699947665635073773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - (A379814 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ)

end

end A092349.P5699947665635073773

namespace A092349

/-- `A001158(n+1)-A379814(n+1)/A001158(n+1)` -/
def P5699947665635073773.Spec : Prop :=
  ∀ n, P5699947665635073773.a n = (A092349 (n + 1) : ℚ)

end A092349

/-! ## A092349.P2968589435361350272

`A379814(n+1)/A001157(n+1)-A001157(n+1)`
-/

namespace A092349.P2968589435361350272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) - (A001157 (n + 1) : ℚ)

end

end A092349.P2968589435361350272

namespace A092349

/-- `A379814(n+1)/A001157(n+1)-A001157(n+1)` -/
def P2968589435361350272.Spec : Prop :=
  ∀ n, P2968589435361350272.a n = (A092349 (n + 1) : ℚ)

end A092349

/-!
# A092350: a(n) = sigma_3(n) - sigma_2(n) - sigma_1(n).

The programs for A092350, the canonical program `A092350.P468185143034267318` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092350 has offset 1).

The definition of A092350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092350.P468185143034267318

`A001158(n+1)-A001157(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092350

/-- `A001158(n+1)-A001157(n+1)-A000203(n+1)` -/
def P468185143034267318.Spec : Prop :=
  ∀ n, P468185143034267318.a n = A092350 (n + 1)

theorem P468185143034267318.correct : P468185143034267318.Spec := by
  intro n
  simp only [A092350, Nat.add_sub_cancel]

end A092350

/-! ## A092350.P13056589391011002311

`∑{d}[n+1, #*(#²-(#+1))]`
-/

namespace A092350.P13056589391011002311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d ^ 2 : ℤ) - (d + 1 : ℤ))

end

end A092350.P13056589391011002311

namespace A092350

/-- `∑{d}[n+1, #*(#²-(#+1))]` -/
def P13056589391011002311.Spec : Prop :=
  ∀ n, P13056589391011002311.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P1609946461592728438

`∑{d}[n+1, #^3-#]-∑{d}[n+1, #²]`
-/

namespace A092350.P1609946461592728438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 3 : ℤ) - (d : ℤ)) - ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A092350.P1609946461592728438

namespace A092350

/-- `∑{d}[n+1, #^3-#]-∑{d}[n+1, #²]` -/
def P1609946461592728438.Spec : Prop :=
  ∀ n, P1609946461592728438.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P18027887488156752150

`∑{d}[n+1, #^3]-2*∑{d}[n+1, C(#+1, 2)]`
-/

namespace A092350.P18027887488156752150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - ((2 * (∑ d ∈ Nat.divisors (f2 n), Nat.choose (d + 1) 2) : ℕ) : ℤ)

end

end A092350.P18027887488156752150

namespace A092350

/-- `∑{d}[n+1, #^3]-2*∑{d}[n+1, C(#+1, 2)]` -/
def P18027887488156752150.Spec : Prop :=
  ∀ n, P18027887488156752150.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P15039832763121827266

`∑{d}[n+1, #^3-#]-round(∑{d}[n+1, #^(4/2)])`
-/

namespace A092350.P15039832763121827266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 3 : ℤ) - (d : ℤ)) - SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A092350.P15039832763121827266

namespace A092350

/-- `∑{d}[n+1, #^3-#]-round(∑{d}[n+1, #^(4/2)])` -/
def P15039832763121827266.Spec : Prop :=
  ∀ n, P15039832763121827266.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P15084675498020510787

`A092349(n+1)-A000203(n+1)`
-/

namespace A092350.P15084675498020510787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092349 (n + 1) - A000203 (n + 1)

end

end A092350.P15084675498020510787

namespace A092350

/-- `A092349(n+1)-A000203(n+1)` -/
def P15084675498020510787.Spec : Prop :=
  ∀ n, P15084675498020510787.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P11451274627075679461

`A092348(n+1)-A001157(n+1)`
-/

namespace A092350.P11451274627075679461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - A001157 (n + 1)

end

end A092350.P11451274627075679461

namespace A092350

/-- `A092348(n+1)-A001157(n+1)` -/
def P11451274627075679461.Spec : Prop :=
  ∀ n, P11451274627075679461.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P10308884780434913979

`A001158(n+1)-2*A007437(n+1)`
-/

namespace A092350.P10308884780434913979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - 2 * A007437 (n + 1)

end

end A092350.P10308884780434913979

namespace A092350

/-- `A001158(n+1)-2*A007437(n+1)` -/
def P10308884780434913979.Spec : Prop :=
  ∀ n, P10308884780434913979.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P17750804432365713693

`A001158(n+1)+A001158(n+1)-A092347(n+1)`
-/

namespace A092350.P17750804432365713693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + (A001158 (n + 1) - A092347 (n + 1))

end

end A092350.P17750804432365713693

namespace A092350

/-- `A001158(n+1)+A001158(n+1)-A092347(n+1)` -/
def P17750804432365713693.Spec : Prop :=
  ∀ n, P17750804432365713693.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P17649018120784420378

`A092348(n+1)-(A069153(n+1)+A007437(n+1))`
-/

namespace A092350.P17649018120784420378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - (A069153 (n + 1) + A007437 (n + 1))

end

end A092350.P17649018120784420378

namespace A092350

/-- `A092348(n+1)-(A069153(n+1)+A007437(n+1))` -/
def P17649018120784420378.Spec : Prop :=
  ∀ n, P17649018120784420378.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P9283894985084344949

`A092348(n+1)-(A086666(n+1)+A000203(n+1))`
-/

namespace A092350.P9283894985084344949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - (A086666 (n + 1) + A000203 (n + 1))

end

end A092350.P9283894985084344949

namespace A092350

/-- `A092348(n+1)-(A086666(n+1)+A000203(n+1))` -/
def P9283894985084344949.Spec : Prop :=
  ∀ n, P9283894985084344949.a n = A092350 (n + 1)

end A092350

/-! ## A092350.P13666688766233058052

`A092348(n+1)-A379812(n+1)/A000203(n+1)`
-/

namespace A092350.P13666688766233058052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) : ℚ) - (A379812 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A092350.P13666688766233058052

namespace A092350

/-- `A092348(n+1)-A379812(n+1)/A000203(n+1)` -/
def P13666688766233058052.Spec : Prop :=
  ∀ n, P13666688766233058052.a n = (A092350 (n + 1) : ℚ)

end A092350

/-! ## A092350.P5688723182691623691

`A379814(n+1)/A001157(n+1)-A092346(n+1)`
-/

namespace A092350.P5688723182691623691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) - (A092346 (n + 1) : ℚ)

end

end A092350.P5688723182691623691

namespace A092350

/-- `A379814(n+1)/A001157(n+1)-A092346(n+1)` -/
def P5688723182691623691.Spec : Prop :=
  ∀ n, P5688723182691623691.a n = (A092350 (n + 1) : ℚ)

end A092350

/-!
# A092351: Molien series for certain 16-dimensional group of order 322560 arising from genus-2 weight enumerators of singly-even (but not necessarily self-dual or self-orthogonal) binary codes.

The programs for A092351, there is no canonical definition to state claims against.
-/

/-! ## A092351.P13064011934932916274

`A261104(A305204(n)+1-and(2, n))`
-/

namespace A092351.P13064011934932916274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A305204 n + (1 - (Nat.land 2 n : ℤ))).toNat

end

end A092351.P13064011934932916274

/-! ## A092351.P15870541652547655679

`A261104(A305204(n)+A002033(n))`
-/

namespace A092351.P15870541652547655679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A305204 n + A002033 n).toNat

end

end A092351.P15870541652547655679

/-! ## A092351.P8351520165513856674

`A261104(A305204(n)+A020985(n))`
-/

namespace A092351.P8351520165513856674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A305204 n + A020985 n).toNat

end

end A092351.P8351520165513856674

/-! ## A092351.P12666553985647649562

`A261104(A305204(n)+A145037(n))`
-/

namespace A092351.P12666553985647649562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A305204 n + A145037 n).toNat

end

end A092351.P12666553985647649562

/-! ## A092351.P4743322101227507491

`A261104(A305204(n)-A018783(n))`
-/

namespace A092351.P4743322101227507491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A305204 n - A018783 n).toNat

end

end A092351.P4743322101227507491

/-!
# A092352: G.f.: (1+3*x^3)/((1-x)^2*(1-x^3)^2).

The programs for A092352, the canonical program `A092352.P12300652741479123804` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092352 has offset 0).

The definition of A092352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092352.P4950019407763600381

`∑[C(2*∑[char[3*n]], 2)]`
-/

namespace A092352.P4950019407763600381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P4950019407763600381

namespace A092352

/-- `∑[C(2*∑[char[3*n]], 2)]` -/
def P4950019407763600381.Spec : Prop :=
  ∀ n, (P4950019407763600381.a n : ℤ) = A092352 n

end A092352

/-! ## A092352.P13434779168034397433

`∑[A000384(∑[char[3*n]])]`
-/

namespace A092352.P13434779168034397433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P13434779168034397433

namespace A092352

/-- `∑[A000384(∑[char[3*n]])]` -/
def P13434779168034397433.Spec : Prop :=
  ∀ n, P13434779168034397433.a n = A092352 n

end A092352

/-! ## A092352.P12300652741479123804

`∑[A000217(Δ[ceil(n²/3)])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092352

/-- `∑[A000217(Δ[ceil(n²/3)])]` -/
def P12300652741479123804.Spec : Prop :=
  ∀ n, P12300652741479123804.a n = A092352 n

theorem P12300652741479123804.correct : P12300652741479123804.Spec := by
  intro n
  simp only [A092352]

end A092352

/-! ## A092352.P14428020308582567552

`∑[A161680(∑[(n²+2)%3])]`
-/

namespace A092352.P14428020308582567552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2) % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P14428020308582567552

namespace A092352

/-- `∑[A161680(∑[(n²+2)%3])]` -/
def P14428020308582567552.Spec : Prop :=
  ∀ n, P14428020308582567552.a n = A092352 n

end A092352

/-! ## A092352.P17957010757920101442

`∑[A000124(Δ[ceil(n²/3)])-1]`
-/

namespace A092352.P17957010757920101442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P17957010757920101442

namespace A092352

/-- `∑[A000124(Δ[ceil(n²/3)])-1]` -/
def P17957010757920101442.Spec : Prop :=
  ∀ n, P17957010757920101442.a n = A092352 n

end A092352

/-! ## A092352.P14504479154069580825

`∑[Δ[ceil(n²/3)]*A008620(n)]`
-/

namespace A092352.P14504479154069580825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P14504479154069580825

namespace A092352

/-- `∑[Δ[ceil(n²/3)]*A008620(n)]` -/
def P14504479154069580825.Spec : Prop :=
  ∀ n, P14504479154069580825.a n = A092352 n

end A092352

/-! ## A092352.P17277287825231541714

`∑[A084265(2*A002264(n))]`
-/

namespace A092352.P17277287825231541714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 (2 * A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P17277287825231541714

namespace A092352

/-- `∑[A084265(2*A002264(n))]` -/
def P17277287825231541714.Spec : Prop :=
  ∀ n, P17277287825231541714.a n = A092352 n

end A092352

/-! ## A092352.P10194389427886436098

`2*A092353(n)-A211004(n+1)`
-/

namespace A092352.P10194389427886436098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092353 n - A211004 (n + 1)

end

end A092352.P10194389427886436098

namespace A092352

/-- `2*A092353(n)-A211004(n+1)` -/
def P10194389427886436098.Spec : Prop :=
  ∀ n, P10194389427886436098.a n = A092352 n

end A092352

/-! ## A092352.P138069507500756881

`∑[∑[1-n²%3]*A008611(2*n)]`
-/

namespace A092352.P138069507500756881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A008611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P138069507500756881

namespace A092352

/-- `∑[∑[1-n²%3]*A008611(2*n)]` -/
def P138069507500756881.Spec : Prop :=
  ∀ n, P138069507500756881.a n = A092352 n

end A092352

/-! ## A092352.P3765231226782543861

`∑[A161680(2*A103221(2*n))]`
-/

namespace A092352.P3765231226782543861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * A103221 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P3765231226782543861

namespace A092352

/-- `∑[A161680(2*A103221(2*n))]` -/
def P3765231226782543861.Spec : Prop :=
  ∀ n, P3765231226782543861.a n = A092352 n

end A092352

/-! ## A092352.P7030740497489784068

`A001840(n+1)+2*A309686(2*n)`
-/

namespace A092352.P7030740497489784068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + 2 * A309686 (2 * n)

end

end A092352.P7030740497489784068

namespace A092352

/-- `A001840(n+1)+2*A309686(2*n)` -/
def P7030740497489784068.Spec : Prop :=
  ∀ n, P7030740497489784068.a n = A092352 n

end A092352

/-! ## A092352.P16508900733480593410

`A307872(2*n+1)+A103221(2*n)²`
-/

namespace A092352.P16508900733480593410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (2 * n + 1) + A103221 (2 * n) ^ 2

end

end A092352.P16508900733480593410

namespace A092352

/-- `A307872(2*n+1)+A103221(2*n)²` -/
def P16508900733480593410.Spec : Prop :=
  ∀ n, P16508900733480593410.a n = A092352 n

end A092352

/-! ## A092352.P13052364930544012612

`A000601(2*n)-2*A307872(2*(n+1))`
-/

namespace A092352.P13052364930544012612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n) - 2 * A307872 (2 * (n + 1))

end

end A092352.P13052364930544012612

namespace A092352

/-- `A000601(2*n)-2*A307872(2*(n+1))` -/
def P13052364930544012612.Spec : Prop :=
  ∀ n, P13052364930544012612.a n = A092352 n

end A092352

/-! ## A092352.P2307113493069067380

`∑[∑[A010892(2*n+1)*A092092(2*n+1)]]`
-/

namespace A092352.P2307113493069067380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A092092 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P2307113493069067380

namespace A092352

/-- `∑[∑[A010892(2*n+1)*A092092(2*n+1)]]` -/
def P2307113493069067380.Spec : Prop :=
  ∀ n, P2307113493069067380.a n = A092352 n

end A092352

/-! ## A092352.P1691474276526233827

`A309686(2*n)+A309684(2*n+3)`
-/

namespace A092352.P1691474276526233827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (2 * n) + A309684 (2 * n + 3)

end

end A092352.P1691474276526233827

namespace A092352

/-- `A309686(2*n)+A309684(2*n+3)` -/
def P1691474276526233827.Spec : Prop :=
  ∀ n, P1691474276526233827.a n = A092352 n

end A092352

/-! ## A092352.P9552719595027462255

`∑[∑[A057979(A078688(n+1))]]`
-/

namespace A092352.P9552719595027462255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A078688 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P9552719595027462255

namespace A092352

/-- `∑[∑[A057979(A078688(n+1))]]` -/
def P9552719595027462255.Spec : Prop :=
  ∀ n, P9552719595027462255.a n = A092352 n

end A092352

/-! ## A092352.P7445620825214997897

`∑[∑[A142150(A047408(n+1)+1)]]`
-/

namespace A092352.P7445620825214997897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A047408 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P7445620825214997897

namespace A092352

/-- `∑[∑[A142150(A047408(n+1)+1)]]` -/
def P7445620825214997897.Spec : Prop :=
  ∀ n, P7445620825214997897.a n = A092352 n

end A092352

/-!
# A092353: Expansion of (1+x^3)/((1-x)^2*(1-x^3)^2).

The programs for A092353, the canonical program `A092353.P11555938974080494281` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092353 has offset 0).

The definition of A092353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` (program `A092353.P11555938974080494281`, by `A092353.P11555938974080494281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092353.P11555938974080494281

`ogf((1+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092353

/-- `ogf((1+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P11555938974080494281.Spec : Prop :=
  ∀ n, P11555938974080494281.a n = A092353 n

theorem P11555938974080494281.correct : P11555938974080494281.Spec := by
  intro n
  simp only [A092353]

end A092353

/-! ## A092353.P5128458973006348621

`∑[∑[char[3*n]]²]`
-/

namespace A092353.P5128458973006348621
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092353.P5128458973006348621

namespace A092353

/-- `∑[∑[char[3*n]]²]` -/
def P5128458973006348621.Spec : Prop :=
  ∀ n, (P5128458973006348621.a n : ℤ) = A092353 n

end A092353

/-! ## A092353.P9636859276028284967

`floor(∑[∑[a(n-3)²]²])` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A092353.P9636859276028284967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092353.P9636859276028284967

namespace A092353

/-- `floor(∑[∑[a(n-3)²]²])` -/
def P9636859276028284967.Spec : Prop :=
  ∀ n, (P9636859276028284967.a n : ℤ) = A092353 n

end A092353

/-! ## A092353.P4018563316336759122

`a(n-1)+(floor(n/3)+1)²` with `a(0)=1`
-/

namespace A092353.P4018563316336759122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℚ) / 3⌋ + 1) ^ 2

end

end A092353.P4018563316336759122

namespace A092353

/-- `a(n-1)+(floor(n/3)+1)²` -/
def P4018563316336759122.Spec : Prop :=
  ∀ n, P4018563316336759122.a n = A092353 n

end A092353

/-! ## A092353.P89827111738339367

`A075561(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A092353.P89827111738339367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075561 (n + 1) + a (n - 1)

end

end A092353.P89827111738339367

namespace A092353

/-- `A075561(n+1)+a(n-1)` -/
def P89827111738339367.Spec : Prop :=
  ∀ n, P89827111738339367.a n = A092353 n

end A092353

/-! ## A092353.P15047056547171420510

`A000290(∑[char[3*n]])+a(n-1)` with `a(0)=1`
-/

namespace A092353.P15047056547171420510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A092353.P15047056547171420510

namespace A092353

/-- `A000290(∑[char[3*n]])+a(n-1)` -/
def P15047056547171420510.Spec : Prop :=
  ∀ n, P15047056547171420510.a n = A092353 n

end A092353

/-! ## A092353.P7589981563984637852

`∑[∑[A093719(2*n)]²-1]+n+1`
-/

namespace A092353.P7589981563984637852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A092353.P7589981563984637852

namespace A092353

/-- `∑[∑[A093719(2*n)]²-1]+n+1` -/
def P7589981563984637852.Spec : Prop :=
  ∀ n, P7589981563984637852.a n = A092353 n

end A092353

/-! ## A092353.P13781510521693671689

`A225566(n+1)-A211004(n+1)`
-/

namespace A092353.P13781510521693671689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (n + 1) - A211004 (n + 1)

end

end A092353.P13781510521693671689

namespace A092353

/-- `A225566(n+1)-A211004(n+1)` -/
def P13781510521693671689.Spec : Prop :=
  ∀ n, P13781510521693671689.a n = A092353 n

end A092353

/-! ## A092353.P5653671279764407923

`∑[A075561(n+1)]%A075565(n+1)`
-/

namespace A092353.P5653671279764407923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A075565 (n + 1))

end

end A092353.P5653671279764407923

namespace A092353

/-- `∑[A075561(n+1)]%A075565(n+1)` -/
def P5653671279764407923.Spec : Prop :=
  ∀ n, P5653671279764407923.a n = A092353 n

end A092353

/-! ## A092353.P3241764353437620816

`∑[A005563(A002265(comp[4*(n+1)-1]))]+n+1`
-/

namespace A092353.P3241764353437620816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A002265 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A092353.P3241764353437620816

namespace A092353

/-- `∑[A005563(A002265(comp[4*(n+1)-1]))]+n+1` -/
def P3241764353437620816.Spec : Prop :=
  ∀ n, P3241764353437620816.a n = A092353 n

end A092353

/-! ## A092353.P270879818011894403

`A213042(2*n)`
-/

namespace A092353.P270879818011894403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (2 * n)

end

end A092353.P270879818011894403

namespace A092353

/-- `A213042(2*n)` -/
def P270879818011894403.Spec : Prop :=
  ∀ n, P270879818011894403.a n = A092353 n

end A092353

/-! ## A092353.P10560536922027144978

`A028249(Δ[n²])`
-/

namespace A092353.P10560536922027144978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028249 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092353.P10560536922027144978

namespace A092353

/-- `A028249(Δ[n²])` -/
def P10560536922027144978.Spec : Prop :=
  ∀ n, P10560536922027144978.a n = A092353 n

end A092353

/-! ## A092353.P13392307980865024504

`A309686(2*n)+A001840(n+1)`
-/

namespace A092353.P13392307980865024504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (2 * n) + A001840 (n + 1)

end

end A092353.P13392307980865024504

namespace A092353

/-- `A309686(2*n)+A001840(n+1)` -/
def P13392307980865024504.Spec : Prop :=
  ∀ n, P13392307980865024504.a n = A092353 n

end A092353

/-! ## A092353.P8120389456676605346

`A309684(2*n+3)`
-/

namespace A092353.P8120389456676605346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 (2 * n + 3)

end

end A092353.P8120389456676605346

namespace A092353

/-- `A309684(2*n+3)` -/
def P8120389456676605346.Spec : Prop :=
  ∀ n, P8120389456676605346.a n = A092353 n

end A092353

/-! ## A092353.P16053656959731360368

`record[A309684(abs(3-n))]`
-/

namespace A092353.P16053656959731360368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092353.P16053656959731360368

namespace A092353

/-- `record[A309684(abs(3-n))]` -/
def P16053656959731360368.Spec : Prop :=
  ∀ n, P16053656959731360368.a n = A092353 n

end A092353

/-! ## A092353.P18024113140803011285

`record[A110449(n+1)]`
-/

namespace A092353.P18024113140803011285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092353.P18024113140803011285

namespace A092353

/-- `record[A110449(n+1)]` -/
def P18024113140803011285.Spec : Prop :=
  ∀ n, P18024113140803011285.a n = A092353 n

end A092353

/-! ## A092353.P11940250108505896004

`A000027(∑[A103221(2*n)²])`
-/

namespace A092353.P11940250108505896004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092353.P11940250108505896004

namespace A092353

/-- `A000027(∑[A103221(2*n)²])` -/
def P11940250108505896004.Spec : Prop :=
  ∀ n, P11940250108505896004.a n = A092353 n

end A092353

/-! ## A092353.P16720370474471987364

`filter[A028249(2*n+1), A350070(#)]`
-/

namespace A092353.P16720370474471987364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028249 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A350070 (f1 j).toNat = 1) n)

end

end A092353.P16720370474471987364

namespace A092353

/-- `filter[A028249(2*n+1), A350070(#)]` -/
def P16720370474471987364.Spec : Prop :=
  ∀ n, P16720370474471987364.a n = A092353 n

end A092353

/-!
# A092354: Molien series for complete weight enumerators of Hermitian self-dual codes over GF(9).

The programs for A092354, there is no canonical definition to state claims against.
-/

/-! ## A092354.P11399609562975394398

`A014602(2*n+1)-((4^dr(n))%7+1)`
-/

namespace A092354.P11399609562975394398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (2 * n + 1) - ((4 ^ SequenceMachineLib.digitalRoot (n : ℤ) % 7 + 1 : ℕ) : ℤ)

end

end A092354.P11399609562975394398

/-!
# A092355: Molien series for complete weight enumerators of Hermitian self-dual codes over GF(9) containing the all-ones vector.

The programs for A092355, there is no canonical definition to state claims against.
-/

/-! ## A092355.P10028052946610113682

`A147655(n)*A347267(A192744(n))`
-/

namespace A092355.P10028052946610113682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147655 n * A347267 (A192744 n).toNat

end

end A092355.P10028052946610113682

/-!
# A092356: UO-sigma multiperfect numbers: n such that A069184(n)/n is an integer.

The programs for A092356, there is no canonical definition to state claims against.
-/

/-! ## A092356.P9664035204485934672

`A053723(A002283(n)-A160412(n))`
-/

namespace A092356.P9664035204485934672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053723 (A002283 n - A160412 n).toNat

end

end A092356.P9664035204485934672

/-!
# A092360: Spiro-tribonacci numbers: a(n) = sum of three previous terms that are nearest when terms arranged in a spiral.

The programs for A092360, there is no canonical definition to state claims against.
-/

/-! ## A092360.P629202060939418261

`A121367(n+1)-A010054(A085152(n+1))`
-/

namespace A092360.P629202060939418261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121367 (n + 1) - A010054 (A085152 (n + 1)).toNat

end

end A092360.P629202060939418261

/-! ## A092360.P6731567575221609188

`A121367(n+1)-A359893(A169969(n+1))`
-/

namespace A092360.P6731567575221609188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121367 (n + 1) - A359893 (A169969 (n + 1)).toNat

end

end A092360.P6731567575221609188

/-! ## A092360.P16402723466563061068

`A121367(n+1)-A285966(A377031(n+1))`
-/

namespace A092360.P16402723466563061068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121367 (n + 1) - A285966 (A377031 (n + 1)).toNat

end

end A092360.P16402723466563061068

/-! ## A092360.P5002123654716815294

`A121367(n+1)-A117945(A121386(3*n+5))`
-/

namespace A092360.P5002123654716815294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121367 (n + 1) - A117945 (A121386 (3 * n + 5)).toNat

end

end A092360.P5002123654716815294

/-!
# A092361: Palindromic numbers containing one or more odd digits.

The programs for A092361, there is no canonical definition to state claims against.
-/

/-! ## A092361.P15470286797294291660

`∩[A002113(n+1), A007957(n+1)]`
-/

namespace A092361.P15470286797294291660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092361.P15470286797294291660

/-! ## A092361.P17824506208197134174

`record[A047813(A007957(n+1))]`
-/

namespace A092361.P17824506208197134174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092361.P17824506208197134174

/-! ## A092361.P15106254961226359627

`lt[A056965(n)², A045841(n)]`
-/

namespace A092361.P15106254961226359627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092361.P15106254961226359627

/-! ## A092361.P18161308600422539490

`lt[A082216(n), A103181(n)+n]`
-/

namespace A092361.P18161308600422539490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092361.P18161308600422539490

/-! ## A092361.P809330310236775336

`A262038(or(1, A262038(a(n-1)+1)))` with `a(0)=1`
-/

namespace A092361.P809330310236775336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262038 (Int.lor 1 (A262038 (a (n - 1) + 1).toNat)).toNat

end

end A092361.P809330310236775336

/-! ## A092361.P5836543347442815086

`record[A093030(n+1)%A005843(A135020(n+1))]`
-/

namespace A092361.P5836543347442815086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093030 (n + 1)) (A005843 (A135020 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092361.P5836543347442815086

/-!
# A092362: Number of partitions of n^2 into squares greater than 1.

The programs for A092362, there is no canonical definition to state claims against.
-/

/-! ## A092362.P5027936288237142179

`A078134((A000038(n)+n)²)`
-/

namespace A092362.P5027936288237142179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 ((A000038 n + (n : ℤ)) ^ 2).toNat

end

end A092362.P5027936288237142179

/-! ## A092362.P11593944893613829232

`A078134((n-A000038(n))²)`
-/

namespace A092362.P11593944893613829232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (((n : ℤ) - A000038 n) ^ 2).toNat

end

end A092362.P11593944893613829232

/-! ## A092362.P1317053684586740832

`A078134(or(n, A000038(n))²)`
-/

namespace A092362.P1317053684586740832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (Int.lor (n : ℤ) (A000038 n) ^ 2).toNat

end

end A092362.P1317053684586740832

/-! ## A092362.P11339588288454689505

`A078134(gcd(n, A233583(n+1))²)`
-/

namespace A092362.P11339588288454689505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (Int.gcd (n : ℤ) (A233583 (n + 1)) ^ 2)

end

end A092362.P11339588288454689505

/-! ## A092362.P13563302050029929062

`A078134((A233583(2*n+1)-n)²)`
-/

namespace A092362.P13563302050029929062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 ((A233583 (2 * n + 1) - (n : ℤ)) ^ 2).toNat

end

end A092362.P13563302050029929062

/-! ## A092362.P15010021971811089509

`A078134(A001281(A004277(n))²)`
-/

namespace A092362.P15010021971811089509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (A001281 (A004277 n).toNat ^ 2).toNat

end

end A092362.P15010021971811089509

/-! ## A092362.P17821712814175375582

`A078134(A253909(n))+A000007(n)`
-/

namespace A092362.P17821712814175375582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (A253909 n).toNat + A000007 n

end

end A092362.P17821712814175375582

/-! ## A092362.P7666618299425893334

`A078134(lcm(A058306(n), A253909(n)))`
-/

namespace A092362.P7666618299425893334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (Int.lcm (A058306 n) (A253909 n))

end

end A092362.P7666618299425893334

/-! ## A092362.P15627328337381418586

`A078134((A028310(n)+A000007(n))²)`
-/

namespace A092362.P15627328337381418586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 ((A028310 n + A000007 n) ^ 2).toNat

end

end A092362.P15627328337381418586

/-! ## A092362.P5547940174721943294

`or(A000007(n), A078134(A028310(n²)))`
-/

namespace A092362.P5547940174721943294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A078134 (A028310 (n ^ 2)).toNat)

end

end A092362.P5547940174721943294

/-!
# A092364: a(n) = n^2*binomial(n,2).

The programs for A092364, the canonical program `A092364.P13609031644531025109` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092364 has offset 1).

The definition of A092364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*C(n+1, 2)` (program `A092364.P13609031644531025109`, by `A092364.P13609031644531025109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092364.P8452379317478723306

`(n+1)^3*n/2`
-/

namespace A092364.P8452379317478723306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 * n : ℚ) / 2

end

end A092364.P8452379317478723306

namespace A092364

/-- `(n+1)^3*n/2` -/
def P8452379317478723306.Spec : Prop :=
  ∀ n, P8452379317478723306.a n = (A092364 (n + 1) : ℚ)

theorem P8452379317478723306.correct : P8452379317478723306.Spec := by
  intro n
  simp only [A092364, Nat.add_sub_cancel, A092364.P8452379317478723306.a, A092364.P13609031644531025109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092364

/-! ## A092364.P13609031644531025109

`(n+1)²*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092364

/-- `(n+1)²*C(n+1, 2)` -/
def P13609031644531025109.Spec : Prop :=
  ∀ n, (P13609031644531025109.a n : ℤ) = A092364 (n + 1)

theorem P13609031644531025109.correct : P13609031644531025109.Spec := by
  intro n
  simp only [A092364, Nat.add_sub_cancel]

end A092364

/-! ## A092364.P1152021413561810620

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=27, a(3)=96, a(4)=250`
-/

namespace A092364.P1152021413561810620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 27, 96, 250] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A092364.P1152021413561810620

namespace A092364

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1152021413561810620.Spec : Prop :=
  ∀ n, P1152021413561810620.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P10091072769755277730

`floor(∑[n]/acot((n+1)²))`
-/

namespace A092364.P10091072769755277730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌋

end

end A092364.P10091072769755277730

namespace A092364

/-- `floor(∑[n]/acot((n+1)²))` -/
def P10091072769755277730.Spec : Prop :=
  ∀ n, P10091072769755277730.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P9535875029387851210

`round(∑[n]/acot((n+1)²))`
-/

namespace A092364.P9535875029387851210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))

end

end A092364.P9535875029387851210

namespace A092364

/-- `round(∑[n]/acot((n+1)²))` -/
def P9535875029387851210.Spec : Prop :=
  ∀ n, P9535875029387851210.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P17982622147092811770

`floor(∑[a(n-1)+2]*∑[n])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A092364.P17982622147092811770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A092364.P17982622147092811770

namespace A092364

/-- `floor(∑[a(n-1)+2]*∑[n])` -/
def P17982622147092811770.Spec : Prop :=
  ∀ n, (P17982622147092811770.a n : ℤ) = A092364 (n + 1)

end A092364

/-! ## A092364.P3105858602069363120

`C(∑[2*n], 2)+∑[∑[3*n]]`
-/

namespace A092364.P3105858602069363120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A092364.P3105858602069363120

namespace A092364

/-- `C(∑[2*n], 2)+∑[∑[3*n]]` -/
def P3105858602069363120.Spec : Prop :=
  ∀ n, (P3105858602069363120.a n : ℤ) = A092364 (n + 1)

end A092364

/-! ## A092364.P8584253006313120907

`lcm(∑[2*n+1]*∑[n], ∑[n])`
-/

namespace A092364.P8584253006313120907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A092364.P8584253006313120907

namespace A092364

/-- `lcm(∑[2*n+1]*∑[n], ∑[n])` -/
def P8584253006313120907.Spec : Prop :=
  ∀ n, (P8584253006313120907.a n : ℤ) = A092364 (n + 1)

end A092364

/-! ## A092364.P7840912971305536559

`C(n+1, 2)*(n+1)*(n+1)`
-/

namespace A092364.P7840912971305536559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * (n + 1) * (n + 1)

end

end A092364.P7840912971305536559

namespace A092364

/-- `C(n+1, 2)*(n+1)*(n+1)` -/
def P7840912971305536559.Spec : Prop :=
  ∀ n, (P7840912971305536559.a n : ℤ) = A092364 (n + 1)

theorem P7840912971305536559.correct : P7840912971305536559.Spec := by
  intro n
  simp only [A092364, Nat.add_sub_cancel, A092364.P7840912971305536559.a, A092364.P13609031644531025109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A092364

/-! ## A092364.P5842327326051301715

`∑[2*n*∑[2*n]-C(n, 2)]`
-/

namespace A092364.P5842327326051301715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092364.P5842327326051301715

namespace A092364

/-- `∑[2*n*∑[2*n]-C(n, 2)]` -/
def P5842327326051301715.Spec : Prop :=
  ∀ n, P5842327326051301715.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P13084486820422750852

`and(1, 2*n)+∑[2*n+1]*∑[n]`
-/

namespace A092364.P13084486820422750852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A092364.P13084486820422750852

namespace A092364

/-- `and(1, 2*n)+∑[2*n+1]*∑[n]` -/
def P13084486820422750852.Spec : Prop :=
  ∀ n, (P13084486820422750852.a n : ℤ) = A092364 (n + 1)

end A092364

/-! ## A092364.P12089470981225304258

`(n+1)*A006002(n)`
-/

namespace A092364.P12089470981225304258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006002 n

end

end A092364.P12089470981225304258

namespace A092364

/-- `(n+1)*A006002(n)` -/
def P12089470981225304258.Spec : Prop :=
  ∀ n, P12089470981225304258.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P9149151988163219706

`∑[A135713(n)-n²]`
-/

namespace A092364.P9149151988163219706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092364.P9149151988163219706

namespace A092364

/-- `∑[A135713(n)-n²]` -/
def P9149151988163219706.Spec : Prop :=
  ∀ n, P9149151988163219706.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P12490731015782549757

`n/2*A184628(n+1)`
-/

namespace A092364.P12490731015782549757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A184628 (n + 1) : ℚ)

end

end A092364.P12490731015782549757

namespace A092364

/-- `n/2*A184628(n+1)` -/
def P12490731015782549757.Spec : Prop :=
  ∀ n, P12490731015782549757.a n = (A092364 (n + 1) : ℚ)

end A092364

/-! ## A092364.P3293671240082863081

`A006011(n+1)+∑[n]²`
-/

namespace A092364.P3293671240082863081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A092364.P3293671240082863081

namespace A092364

/-- `A006011(n+1)+∑[n]²` -/
def P3293671240082863081.Spec : Prop :=
  ∀ n, P3293671240082863081.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P3102493413705685872

`A092365(n+1)-(n+1)²`
-/

namespace A092364.P3102493413705685872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A092364.P3102493413705685872

namespace A092364

/-- `A092365(n+1)-(n+1)²` -/
def P3102493413705685872.Spec : Prop :=
  ∀ n, P3102493413705685872.a n = A092364 (n + 1)

theorem P3102493413705685872.correct : P3102493413705685872.Spec := by
  intro n
  simp only [A092364, Nat.add_sub_cancel, A092364.P3102493413705685872.a, A092364.P13609031644531025109.a, A092365, A092365.P1251251281909042150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092364

/-! ## A092364.P12806307672508839271

`(n+1)/4*A035006(n+1)`
-/

namespace A092364.P12806307672508839271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A035006 (n + 1) : ℚ)

end

end A092364.P12806307672508839271

namespace A092364

/-- `(n+1)/4*A035006(n+1)` -/
def P12806307672508839271.Spec : Prop :=
  ∀ n, P12806307672508839271.a n = (A092364 (n + 1) : ℚ)

theorem P12806307672508839271.correct : P12806307672508839271.Spec := by
  intro n
  simp only [A092364, Nat.add_sub_cancel, A092364.P12806307672508839271.a, A092364.P13609031644531025109.a, A035006, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092364

/-! ## A092364.P14610529363657830035

`A071237(n)+A011379(n)`
-/

namespace A092364.P14610529363657830035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n + A011379 n

end

end A092364.P14610529363657830035

namespace A092364

/-- `A071237(n)+A011379(n)` -/
def P14610529363657830035.Spec : Prop :=
  ∀ n, P14610529363657830035.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P3279896061970417034

`A062392(n)+A027480(n)`
-/

namespace A092364.P3279896061970417034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A027480 n

end

end A092364.P3279896061970417034

namespace A092364

/-- `A062392(n)+A027480(n)` -/
def P3279896061970417034.Spec : Prop :=
  ∀ n, P3279896061970417034.a n = A092364 (n + 1)

end A092364

/-! ## A092364.P3084649223464709366

`A110450(n)+A002411(n)`
-/

namespace A092364.P3084649223464709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n + A002411 n

end

end A092364.P3084649223464709366

namespace A092364

/-- `A110450(n)+A002411(n)` -/
def P3084649223464709366.Spec : Prop :=
  ∀ n, P3084649223464709366.a n = A092364 (n + 1)

end A092364

/-!
# A092365: Coefficient of X^2 in expansion of (1 + n*X + n*X^2)^n.

The programs for A092365, the canonical program `A092365.P1251251281909042150` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092365 has offset 1).

The definition of A092365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092365.P1251251281909042150

`(n+1)²*(C(n+1, 2)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092365

/-- `(n+1)²*(C(n+1, 2)+1)` -/
def P1251251281909042150.Spec : Prop :=
  ∀ n, (P1251251281909042150.a n : ℤ) = A092365 (n + 1)

theorem P1251251281909042150.correct : P1251251281909042150.Spec := by
  intro n
  simp only [A092365, Nat.add_sub_cancel]

end A092365

/-! ## A092365.P8415526555726153001

`A000290(n+1)*A152947(n+2)`
-/

namespace A092365.P8415526555726153001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A152947 (n + 2)

end

end A092365.P8415526555726153001

namespace A092365

/-- `A000290(n+1)*A152947(n+2)` -/
def P8415526555726153001.Spec : Prop :=
  ∀ n, P8415526555726153001.a n = A092365 (n + 1)

theorem P8415526555726153001.correct : P8415526555726153001.Spec := by
  intro n
  simp only [A092365, Nat.add_sub_cancel, A092365.P8415526555726153001.a, A092365.P1251251281909042150.a, A000290, A000290.P12206242496348924484.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092365

/-! ## A092365.P721555766171127850

`(∑[n]+1)*(n+1)²`
-/

namespace A092365.P721555766171127850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1) ^ 2

end

end A092365.P721555766171127850

namespace A092365

/-- `(∑[n]+1)*(n+1)²` -/
def P721555766171127850.Spec : Prop :=
  ∀ n, (P721555766171127850.a n : ℤ) = A092365 (n + 1)

end A092365

/-! ## A092365.P10809206377000638691

`∑[∑[∑[ogf((1+3x+6x^2+2x^3)/(1-2x+x^2))]]]`
-/

namespace A092365.P10809206377000638691
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6, 2] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092365.P10809206377000638691

namespace A092365

/-- `∑[∑[∑[ogf((1+3x+6x^2+2x^3)/(1-2x+x^2))]]]` -/
def P10809206377000638691.Spec : Prop :=
  ∀ n, P10809206377000638691.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P14524414993886238768

`floor((n+1)*∑[∑[a(n-1)+3]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A092365.P14524414993886238768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092365.P14524414993886238768

namespace A092365

/-- `floor((n+1)*∑[∑[a(n-1)+3]])` -/
def P14524414993886238768.Spec : Prop :=
  ∀ n, (P14524414993886238768.a n : ℤ) = A092365 (n + 1)

end A092365

/-! ## A092365.P2717822051419665658

`lcm(n+1, (∑[n]+1)*∑[2*n+1])`
-/

namespace A092365.P2717822051419665658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A092365.P2717822051419665658

namespace A092365

/-- `lcm(n+1, (∑[n]+1)*∑[2*n+1])` -/
def P2717822051419665658.Spec : Prop :=
  ∀ n, (P2717822051419665658.a n : ℤ) = A092365 (n + 1)

end A092365

/-! ## A092365.P2097199754325027529

`∑[a(n-1)+1]/(n+1)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A092365.P2097199754325027529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A092365.P2097199754325027529

namespace A092365

/-- `∑[a(n-1)+1]/(n+1)^(-2)` -/
def P2097199754325027529.Spec : Prop :=
  ∀ n, P2097199754325027529.a n = (A092365 (n + 1) : ℚ)

end A092365

/-! ## A092365.P12584622740001742112

`C(∑[2*n+1], 2)-(n+1)*∑[n-1]`
-/

namespace A092365.P12584622740001742112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A092365.P12584622740001742112

namespace A092365

/-- `C(∑[2*n+1], 2)-(n+1)*∑[n-1]` -/
def P12584622740001742112.Spec : Prop :=
  ∀ n, P12584622740001742112.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P18141996943801532462

`∑[2*n+1]+C(n+1, 2)*∑[2*n+1]`
-/

namespace A092365.P18141996943801532462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A092365.P18141996943801532462

namespace A092365

/-- `∑[2*n+1]+C(n+1, 2)*∑[2*n+1]` -/
def P18141996943801532462.Spec : Prop :=
  ∀ n, (P18141996943801532462.a n : ℤ) = A092365 (n + 1)

end A092365

/-! ## A092365.P11624439314425024615

`A039623(n+1)+∑[n]²`
-/

namespace A092365.P11624439314425024615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A092365.P11624439314425024615

namespace A092365

/-- `A039623(n+1)+∑[n]²` -/
def P11624439314425024615.Spec : Prop :=
  ∀ n, P11624439314425024615.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P8165340965249027440

`A092364(n+1)+(n+1)²`
-/

namespace A092365.P8165340965249027440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A092365.P8165340965249027440

namespace A092365

/-- `A092364(n+1)+(n+1)²` -/
def P8165340965249027440.Spec : Prop :=
  ∀ n, P8165340965249027440.a n = A092365 (n + 1)

theorem P8165340965249027440.correct : P8165340965249027440.Spec := by
  intro n
  simp only [A092365, Nat.add_sub_cancel, A092365.P8165340965249027440.a, A092365.P1251251281909042150.a, A092364, A092364.P13609031644531025109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092365

/-! ## A092365.P9933077265760975882

`A100175(n+1)+C(n², 2)`
-/

namespace A092365.P9933077265760975882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A092365.P9933077265760975882

namespace A092365

/-- `A100175(n+1)+C(n², 2)` -/
def P9933077265760975882.Spec : Prop :=
  ∀ n, P9933077265760975882.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P16883152768154060295

`∑[A063488(n+1)]+∑[n]²`
-/

namespace A092365.P16883152768154060295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A092365.P16883152768154060295

namespace A092365

/-- `∑[A063488(n+1)]+∑[n]²` -/
def P16883152768154060295.Spec : Prop :=
  ∀ n, P16883152768154060295.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P12139282394187838955

`(n+1)²+A085537(n+1)/2`
-/

namespace A092365.P12139282394187838955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) + (A085537 (n + 1) : ℚ) / 2

end

end A092365.P12139282394187838955

namespace A092365

/-- `(n+1)²+A085537(n+1)/2` -/
def P12139282394187838955.Spec : Prop :=
  ∀ n, P12139282394187838955.a n = (A092365 (n + 1) : ℚ)

theorem P12139282394187838955.correct : P12139282394187838955.Spec := by
  intro n
  simp only [A092365, Nat.add_sub_cancel, A092365.P12139282394187838955.a, A092365.P1251251281909042150.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092365

/-! ## A092365.P1049329537328497392

`round((sqrt(A000537(n))+1)*(n+1)²)`
-/

namespace A092365.P1049329537328497392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (A000537 n : ℝ) + 1) * ((n + 1) ^ 2 : ℝ))

end

end A092365.P1049329537328497392

namespace A092365

/-- `round((sqrt(A000537(n))+1)*(n+1)²)` -/
def P1049329537328497392.Spec : Prop :=
  ∀ n, P1049329537328497392.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P6657171377392988679

`(n+1)²+(n+1)²*A000217(n)`
-/

namespace A092365.P6657171377392988679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A000217 n

end

end A092365.P6657171377392988679

namespace A092365

/-- `(n+1)²+(n+1)²*A000217(n)` -/
def P6657171377392988679.Spec : Prop :=
  ∀ n, P6657171377392988679.a n = A092365 (n + 1)

theorem P6657171377392988679.correct : P6657171377392988679.Spec := by
  intro n
  simp only [A092365, Nat.add_sub_cancel, A092365.P6657171377392988679.a, A092365.P1251251281909042150.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092365

/-! ## A092365.P16157335290538677931

`A071237(n)+A069778(n)`
-/

namespace A092365.P16157335290538677931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n + A069778 n

end

end A092365.P16157335290538677931

namespace A092365

/-- `A071237(n)+A069778(n)` -/
def P16157335290538677931.Spec : Prop :=
  ∀ n, P16157335290538677931.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P9898053739608724088

`A143690(n)+A027441(n)`
-/

namespace A092365.P9898053739608724088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143690 n + A027441 n

end

end A092365.P9898053739608724088

namespace A092365

/-- `A143690(n)+A027441(n)` -/
def P9898053739608724088.Spec : Prop :=
  ∀ n, P9898053739608724088.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P8054205002399707544

`A171129(n)+A005898(n)`
-/

namespace A092365.P8054205002399707544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A005898 n

end

end A092365.P8054205002399707544

namespace A092365

/-- `A171129(n)+A005898(n)` -/
def P8054205002399707544.Spec : Prop :=
  ∀ n, P8054205002399707544.a n = A092365 (n + 1)

end A092365

/-! ## A092365.P5951896780989089215

`A383834(n)+A006003(n)`
-/

namespace A092365.P5951896780989089215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383834 n + A006003 n

end

end A092365.P5951896780989089215

namespace A092365

/-- `A383834(n)+A006003(n)` -/
def P5951896780989089215.Spec : Prop :=
  ∀ n, P5951896780989089215.a n = A092365 (n + 1)

end A092365

/-!
# A092366: Coefficient of x^n in expansion of (1+n*x+n*x^2)^n.

The programs for A092366, there is no canonical definition to state claims against.
-/

/-! ## A092366.P14957515140582942672

`A307910(∑[4*n])`
-/

namespace A092366.P14957515140582942672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092366.P14957515140582942672

/-! ## A092366.P10471027752716085244

`lcm(A033999(n), A307910(A046092(n)))`
-/

namespace A092366.P10471027752716085244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A307910 (A046092 n).toNat)

end

end A092366.P10471027752716085244

/-! ## A092366.P3847402875687676731

`or(A000007(n), A307910(A046092(n)))`
-/

namespace A092366.P3847402875687676731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A307910 (A046092 n).toNat)

end

end A092366.P3847402875687676731

/-! ## A092366.P17509980100818228494

`A014963(26*(n+1))*A307910(A046092(n))`
-/

namespace A092366.P17509980100818228494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (26 * (n + 1)) * A307910 (A046092 n).toNat

end

end A092366.P17509980100818228494

/-! ## A092366.P13055799014734756702

`A000005(gcd(n, n+1))*A307910(A046092(n))`
-/

namespace A092366.P13055799014734756702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A307910 (A046092 n).toNat

end

end A092366.P13055799014734756702

/-!
# A092367: Numbers n with property that the binary cyclic right-rotating progressive sum of digits (see A091821) is exactly n/2.

The programs for A092367, there is no canonical definition to state claims against.
-/

/-! ## A092367.P12127999039722022822

`eq[A001316(n)+1, A086520(A047566(n+1))]`
-/

namespace A092367.P12127999039722022822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A047566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092367.P12127999039722022822

/-! ## A092367.P13517827821162274342

`eq[A001316(n)+1, A086520(A047578(n+1))]`
-/

namespace A092367.P13517827821162274342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A047578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092367.P13517827821162274342

/-! ## A092367.P16464352776146642615

`eq[A001316(n)+1, A086520(A053438(n+1))]`
-/

namespace A092367.P16464352776146642615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A053438 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092367.P16464352776146642615

/-! ## A092367.P11978139890544711761

`eq[A001316(n)+1, A086520(A042963(n+1)+1)]`
-/

namespace A092367.P11978139890544711761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A042963 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092367.P11978139890544711761

/-!
# A092368: a(0)=0, a(1)=1, a(2)=1. For n>2, let R_{k}(n) = the digit reversal of n in base k (R_{k}(n) is written in base 10). a(n) is the smallest value of R_{k}(n) arising if k=2,..,n-1.

The programs for A092368, there is no canonical definition to state claims against.
-/

/-! ## A092368.P17860399912842474475

`A052088(A123288(n))%(n+1)`
-/

namespace A092368.P17860399912842474475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052088 (A123288 (n + 62)).toNat) (n + 1 : ℤ)

end

end A092368.P17860399912842474475

/-! ## A092368.P17671855872223765010

`A030430(A226657(n+1)+1)%(n+1)`
-/

namespace A092368.P17671855872223765010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (A226657 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A092368.P17671855872223765010

/-! ## A092368.P9423578991546636730

`A285789(A198253(n+1)+1)%(n+1)`
-/

namespace A092368.P9423578991546636730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285789 (A198253 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A092368.P9423578991546636730

/-! ## A092368.P2921604049987280301

`A156307(A223172(n))%A001478(n+1)`
-/

namespace A092368.P2921604049987280301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156307 (A223172 n).toNat) (A001478 (n + 1))

end

end A092368.P2921604049987280301

/-! ## A092368.P4185897380547152187

`A276181(3*(n+1))%A000040(A000005(n+1))`
-/

namespace A092368.P4185897380547152187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276181 (3 * (n + 1))) (A000040 (A000005 (n + 1)).toNat)

end

end A092368.P4185897380547152187

/-!
# A092369: Spiro-tetranacci numbers: a(n) = sum of four previous terms that are nearest when terms arranged in a spiral.

The programs for A092369, there is no canonical definition to state claims against.
-/

/-! ## A092369.P835030879419432971

`A003056(A109454(n)+A003056(n))`
-/

namespace A092369.P835030879419432971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A109454 n + A003056 n).toNat

end

end A092369.P835030879419432971

/-! ## A092369.P5561600725318363723

`A000196(A384072(n)+1)-1`
-/

namespace A092369.P5561600725318363723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A384072 n + 1).toNat - 1

end

end A092369.P5561600725318363723

/-! ## A092369.P14073328721947317972

`A055086(A208176(n))-floor((5/8)^-n)`
-/

namespace A092369.P14073328721947317972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A208176 n).toNat - ⌊((5 : ℚ) / 8) ^ (-(n : ℤ) : ℤ)⌋

end

end A092369.P14073328721947317972

/-! ## A092369.P2849390376371715158

`A000196(A131408(n)-A119016(n))`
-/

namespace A092369.P2849390376371715158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A131408 n - A119016 n).toNat

end

end A092369.P2849390376371715158

/-! ## A092369.P5084141257655859511

`A000196(A305412(n)-A164393(n))`
-/

namespace A092369.P5084141257655859511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A305412 n - A164393 n).toNat

end

end A092369.P5084141257655859511

/-!
# A092370: Triangle read by rows: T(n,k)=(1/2)*C(n+k,k)*C(n,n-k).

The programs for A092370, the canonical program `A092370.P10746559551682177439` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092370 has offset 1).

The definition of A092370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092370.P11364256838111459617

`A063007(comp[∑[n]])/2`
-/

namespace A092370.P11364256838111459617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A092370.P11364256838111459617

namespace A092370

/-- `A063007(comp[∑[n]])/2` -/
def P11364256838111459617.Spec : Prop :=
  ∀ n, P11364256838111459617.a n = (A092370 (n + 1) : ℚ)

end A092370

/-! ## A092370.P14749955484081114417

`floor(A063007(comp[A000217(n)])/2)`
-/

namespace A092370.P14749955484081114417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063007 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2⌋

end

end A092370.P14749955484081114417

namespace A092370

/-- `floor(A063007(comp[A000217(n)])/2)` -/
def P14749955484081114417.Spec : Prop :=
  ∀ n, P14749955484081114417.a n = A092370 (n + 1)

end A092370

/-! ## A092370.P10746559551682177439

`floor(A063007(A014132(n+1))/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A092370

/-- `floor(A063007(A014132(n+1))/2)` -/
def P10746559551682177439.Spec : Prop :=
  ∀ n, P10746559551682177439.a n = A092370 (n + 1)

theorem P10746559551682177439.correct : P10746559551682177439.Spec := by
  intro n
  simp only [A092370, Nat.add_sub_cancel]

end A092370

/-! ## A092370.P4800564148339951070

`A104684(A061579(comp[∑[n]]))/2`
-/

namespace A092370.P4800564148339951070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat : ℚ) / 2

end

end A092370.P4800564148339951070

namespace A092370

/-- `A104684(A061579(comp[∑[n]]))/2` -/
def P4800564148339951070.Spec : Prop :=
  ∀ n, P4800564148339951070.a n = (A092370 (n + 1) : ℚ)

end A092370

/-! ## A092370.P17017734338213074219

`A109983(eq[1, floor(2*sqrt(n))%2])/2`
-/

namespace A092370.P17017734338213074219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A092370.P17017734338213074219

namespace A092370

/-- `A109983(eq[1, floor(2*sqrt(n))%2])/2` -/
def P17017734338213074219.Spec : Prop :=
  ∀ n, P17017734338213074219.a n = (A092370 (n + 1) : ℚ)

end A092370

/-!
# A092371: Triangle read by rows: T(n, k) = binomial(n, k) * binomial(n+k, n-k).

The programs for A092371, the canonical program `A092371.P9823255814737309741` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092371 has offset 1).

The definition of A092371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092371.P9823255814737309741

`abs(A109954(n)*A135278(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092371

/-- `abs(A109954(n)*A135278(n))` -/
def P9823255814737309741.Spec : Prop :=
  ∀ n, P9823255814737309741.a n = A092371 (n + 1)

theorem P9823255814737309741.correct : P9823255814737309741.Spec := by
  intro n
  simp only [A092371, Nat.add_sub_cancel]

end A092371

/-! ## A092371.P8085977180288852637

`A135278(n)*A258993(n+2)`
-/

namespace A092371.P8085977180288852637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A258993 (n + 2)

end

end A092371.P8085977180288852637

namespace A092371

/-- `A135278(n)*A258993(n+2)` -/
def P8085977180288852637.Spec : Prop :=
  ∀ n, P8085977180288852637.a n = A092371 (n + 1)

end A092371

/-! ## A092371.P8872041557535880937

`A007318(comp[∑[n]])*A258993(n+2)`
-/

namespace A092371.P8872041557535880937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A258993 (n + 2)

end

end A092371.P8872041557535880937

namespace A092371

/-- `A007318(comp[∑[n]])*A258993(n+2)` -/
def P8872041557535880937.Spec : Prop :=
  ∀ n, P8872041557535880937.a n = A092371 (n + 1)

end A092371

/-! ## A092371.P4799127946317334344

`A135278(n)*A143858(n+1)`
-/

namespace A092371.P4799127946317334344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A143858 (n + 1)

end

end A092371.P4799127946317334344

namespace A092371

/-- `A135278(n)*A143858(n+1)` -/
def P4799127946317334344.Spec : Prop :=
  ∀ n, P4799127946317334344.a n = A092371 (n + 1)

end A092371

/-! ## A092371.P3136594203229929839

`A007318(comp[∑[n]])*A143858(n+1)`
-/

namespace A092371.P3136594203229929839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A143858 (n + 1)

end

end A092371.P3136594203229929839

namespace A092371

/-- `A007318(comp[∑[n]])*A143858(n+1)` -/
def P3136594203229929839.Spec : Prop :=
  ∀ n, P3136594203229929839.a n = A092371 (n + 1)

end A092371

/-!
# A092372: The O(1) loop model on the square lattice is defined as follows: At every vertex the loop turns to the left or to the right with equal probability, unless the vertex has been visited before, in which case the loop leaves the vertex via the unused edge. Every vertex is visited twice. The probability that a face of the lattice on an n X infinity cylinder is surrounded by zero loops is conjectured to be given by a(n)/A_{HT}(n)^2, where A_{HT}(n) is the number of n X n half turn symmetric alternating sign matrices.

The programs for A092372, there is no canonical definition to state claims against.
-/

/-! ## A092372.P7045445422431729635

`∑[A117910(A098443(n))]`
-/

namespace A092372.P7045445422431729635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A098443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092372.P7045445422431729635

/-!
# A092383: Sum of digits of n if n odd, else sum of digits of 2n.

The programs for A092383, the canonical program `A092383.P8741467277079814351` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092383 has offset 0).

The definition of A092383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092383.P8741467277079814351

`∑{digits}[n*gcd(2, n), #]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092383

/-- `∑{digits}[n*gcd(2, n), #]` -/
def P8741467277079814351.Spec : Prop :=
  ∀ n, (P8741467277079814351.a n : ℤ) = A092383 n

theorem P8741467277079814351.correct : P8741467277079814351.Spec := by
  intro n
  simp only [A092383]

end A092383

/-! ## A092383.P14819560561754457925

`∑{digits}[n*or(n, -2), #]`
-/

namespace A092383.P14819560561754457925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092383.P14819560561754457925

namespace A092383

/-- `∑{digits}[n*or(n, -2), #]` -/
def P14819560561754457925.Spec : Prop :=
  ∀ n, (P14819560561754457925.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P11538152620448909357

`∑{digits}[gcd(n+n, n²), #]`
-/

namespace A092383.P11538152620448909357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092383.P11538152620448909357

namespace A092383

/-- `∑{digits}[gcd(n+n, n²), #]` -/
def P11538152620448909357.Spec : Prop :=
  ∀ n, (P11538152620448909357.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P1244308785721532412

`∑{digits}[n*(2-n%2), #]`
-/

namespace A092383.P1244308785721532412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092383.P1244308785721532412

namespace A092383

/-- `∑{digits}[n*(2-n%2), #]` -/
def P1244308785721532412.Spec : Prop :=
  ∀ n, (P1244308785721532412.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P16954830945197900240

`∑{digits}[lcm(2, n)-3*n, #]`
-/

namespace A092383.P16954830945197900240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (3 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092383.P16954830945197900240

namespace A092383

/-- `∑{digits}[lcm(2, n)-3*n, #]` -/
def P16954830945197900240.Spec : Prop :=
  ∀ n, (P16954830945197900240.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P8074011691788681946

`∑{digits}[n*(and(1, n)-2), #]`
-/

namespace A092383.P8074011691788681946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092383.P8074011691788681946

namespace A092383

/-- `∑{digits}[n*(and(1, n)-2), #]` -/
def P8074011691788681946.Spec : Prop :=
  ∀ n, (P8074011691788681946.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P3175653558379918119

`∑{digits}[n*(char[2*n]+1), #]`
-/

namespace A092383.P3175653558379918119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092383.P3175653558379918119

namespace A092383

/-- `∑{digits}[n*(char[2*n]+1), #]` -/
def P3175653558379918119.Spec : Prop :=
  ∀ n, (P3175653558379918119.a n : ℤ) = A092383 n

end A092383

/-! ## A092383.P14894700642717101568

`A007953(n*gcd(2, n))`
-/

namespace A092383.P14894700642717101568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n * Nat.gcd 2 n)

end

end A092383.P14894700642717101568

namespace A092383

/-- `A007953(n*gcd(2, n))` -/
def P14894700642717101568.Spec : Prop :=
  ∀ n, P14894700642717101568.a n = A092383 n

end A092383

/-! ## A092383.P10190440372701947283

`A007953(A022998(n))`
-/

namespace A092383.P10190440372701947283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A022998 n).toNat

end

end A092383.P10190440372701947283

namespace A092383

/-- `A007953(A022998(n))` -/
def P10190440372701947283.Spec : Prop :=
  ∀ n, P10190440372701947283.a n = A092383 n

end A092383

/-! ## A092383.P1741069704131686015

`A007953(n*A000034(n+1))`
-/

namespace A092383.P1741069704131686015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) * A000034 (n + 1)).toNat

end

end A092383.P1741069704131686015

namespace A092383

/-- `A007953(n*A000034(n+1))` -/
def P1741069704131686015.Spec : Prop :=
  ∀ n, P1741069704131686015.a n = A092383 n

end A092383

/-! ## A092383.P10647138002785499414

`A007953(2*n/A000034(n))`
-/

namespace A092383.P10647138002785499414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A000034 n : ℚ))).toNat

end

end A092383.P10647138002785499414

namespace A092383

/-- `A007953(2*n/A000034(n))` -/
def P10647138002785499414.Spec : Prop :=
  ∀ n, P10647138002785499414.a n = A092383 n

end A092383

/-! ## A092383.P9508686561224769491

`A007953(2*n/A177704(2*n+1))`
-/

namespace A092383.P9508686561224769491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A177704 (2 * n + 1) : ℚ))).toNat

end

end A092383.P9508686561224769491

namespace A092383

/-- `A007953(2*n/A177704(2*n+1))` -/
def P9508686561224769491.Spec : Prop :=
  ∀ n, P9508686561224769491.a n = A092383 n

end A092383

/-! ## A092383.P13492284281781070504

`A007953(n*A058306(n²))`
-/

namespace A092383.P13492284281781070504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) * A058306 (n ^ 2)).toNat

end

end A092383.P13492284281781070504

namespace A092383

/-- `A007953(n*A058306(n²))` -/
def P13492284281781070504.Spec : Prop :=
  ∀ n, P13492284281781070504.a n = A092383 n

end A092383

/-!
# A092384: Sum of digits of n if n even, else sum of digits of 2n.

The programs for A092384, the canonical program `A092384.P4195812201821580301` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092384 has offset 0).

The definition of A092384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092384.P4195812201821580301

`∑{digits}[lcm(2, n), #]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092384

/-- `∑{digits}[lcm(2, n), #]` -/
def P4195812201821580301.Spec : Prop :=
  ∀ n, (P4195812201821580301.a n : ℤ) = A092384 n

theorem P4195812201821580301.correct : P4195812201821580301.Spec := by
  intro n
  simp only [A092384]

end A092384

/-! ## A092384.P9708141688031697810

`∑{digits}[2*gcd(n, ∑[n]), #]`
-/

namespace A092384.P9708141688031697810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P9708141688031697810

namespace A092384

/-- `∑{digits}[2*gcd(n, ∑[n]), #]` -/
def P9708141688031697810.Spec : Prop :=
  ∀ n, (P9708141688031697810.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P10594894802480187348

`∑{digits}[n*(n%2+1), #]`
-/

namespace A092384.P10594894802480187348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P10594894802480187348

namespace A092384

/-- `∑{digits}[n*(n%2+1), #]` -/
def P10594894802480187348.Spec : Prop :=
  ∀ n, (P10594894802480187348.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P12576589192047012835

`∑{digits}[n*(and(1, n)+1), #]`
-/

namespace A092384.P12576589192047012835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P12576589192047012835

namespace A092384

/-- `∑{digits}[n*(and(1, n)+1), #]` -/
def P12576589192047012835.Spec : Prop :=
  ∀ n, (P12576589192047012835.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P11823414705918123009

`∑{digits}[n*2^and(1, n), #]`
-/

namespace A092384.P11823414705918123009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P11823414705918123009

namespace A092384

/-- `∑{digits}[n*2^and(1, n), #]` -/
def P11823414705918123009.Spec : Prop :=
  ∀ n, (P11823414705918123009.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P11309872650310833018

`∑{digits}[n*C(2, and(1, n)), #]`
-/

namespace A092384.P11309872650310833018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P11309872650310833018

namespace A092384

/-- `∑{digits}[n*C(2, and(1, n)), #]` -/
def P11309872650310833018.Spec : Prop :=
  ∀ n, (P11309872650310833018.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P14671132827610422848

`∑{digits}[n*or(n+1, -2), #]`
-/

namespace A092384.P14671132827610422848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092384.P14671132827610422848

namespace A092384

/-- `∑{digits}[n*or(n+1, -2), #]` -/
def P14671132827610422848.Spec : Prop :=
  ∀ n, (P14671132827610422848.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P9150525955649781062

`∑{digits}[2*n/or(n, -2), #]`
-/

namespace A092384.P9150525955649781062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A092384.P9150525955649781062

namespace A092384

/-- `∑{digits}[2*n/or(n, -2), #]` -/
def P9150525955649781062.Spec : Prop :=
  ∀ n, (P9150525955649781062.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P3866345706836067328

`∑{digits}[n*(2*and(1, n))!, #]`
-/

namespace A092384.P3866345706836067328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A092384.P3866345706836067328

namespace A092384

/-- `∑{digits}[n*(2*and(1, n))!, #]` -/
def P3866345706836067328.Spec : Prop :=
  ∀ n, (P3866345706836067328.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P117588799049606970

`∑{digits}[A109043(n), #]`
-/

namespace A092384.P117588799049606970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092384.P117588799049606970

namespace A092384

/-- `∑{digits}[A109043(n), #]` -/
def P117588799049606970.Spec : Prop :=
  ∀ n, (P117588799049606970.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P16666935838968550168

`A004092(n/gcd(2, n))`
-/

namespace A092384.P16666935838968550168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A092384.P16666935838968550168

namespace A092384

/-- `A004092(n/gcd(2, n))` -/
def P16666935838968550168.Spec : Prop :=
  ∀ n, P16666935838968550168.a n = A092384 n

end A092384

/-! ## A092384.P11169956659935676280

`A004092(A026741(n))`
-/

namespace A092384.P11169956659935676280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A026741 n).toNat

end

end A092384.P11169956659935676280

namespace A092384

/-- `A004092(A026741(n))` -/
def P11169956659935676280.Spec : Prop :=
  ∀ n, P11169956659935676280.a n = A092384 n

end A092384

/-! ## A092384.P49962415215546070

`∑{digits}[n*Δ[comp[3*n]], #]`
-/

namespace A092384.P49962415215546070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A092384.P49962415215546070

namespace A092384

/-- `∑{digits}[n*Δ[comp[3*n]], #]` -/
def P49962415215546070.Spec : Prop :=
  ∀ n, (P49962415215546070.a n : ℤ) = A092384 n

end A092384

/-! ## A092384.P10638660216241346674

`A007953(lcm(2, n))`
-/

namespace A092384.P10638660216241346674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Nat.lcm 2 n)

end

end A092384.P10638660216241346674

namespace A092384

/-- `A007953(lcm(2, n))` -/
def P10638660216241346674.Spec : Prop :=
  ∀ n, P10638660216241346674.a n = A092384 n

end A092384

/-! ## A092384.P18157971494637663415

`A007953(A109043(n))`
-/

namespace A092384.P18157971494637663415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A109043 n).toNat

end

end A092384.P18157971494637663415

namespace A092384

/-- `A007953(A109043(n))` -/
def P18157971494637663415.Spec : Prop :=
  ∀ n, P18157971494637663415.a n = A092384 n

end A092384

/-! ## A092384.P6172770825773250021

`A007953(n*A000034(n))`
-/

namespace A092384.P6172770825773250021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) * A000034 n).toNat

end

end A092384.P6172770825773250021

namespace A092384

/-- `A007953(n*A000034(n))` -/
def P6172770825773250021.Spec : Prop :=
  ∀ n, P6172770825773250021.a n = A092384 n

end A092384

/-! ## A092384.P2063756338122466485

`A007953(n*A177704(2*n+1))`
-/

namespace A092384.P2063756338122466485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) * A177704 (2 * n + 1)).toNat

end

end A092384.P2063756338122466485

namespace A092384

/-- `A007953(n*A177704(2*n+1))` -/
def P2063756338122466485.Spec : Prop :=
  ∀ n, P2063756338122466485.a n = A092384 n

end A092384

/-! ## A092384.P14459061460998978916

`A004092(A195817(n))`
-/

namespace A092384.P14459061460998978916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A195817 n).toNat

end

end A092384.P14459061460998978916

namespace A092384

/-- `A004092(A195817(n))` -/
def P14459061460998978916.Spec : Prop :=
  ∀ n, P14459061460998978916.a n = A092384 n

end A092384

/-!
# A092386: Let p(n) = n-th prime; a(n) = largest prime factor of (p(n+1)^2 - p(n)*p(n+2)).

The programs for A092386, the canonical program `A092386.P2269527021586584002` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092386 has offset 0).

The definition of A092386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092386.P2269527021586584002

`A006530(lcm(2, A056221(n+1))/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092386

/-- `A006530(lcm(2, A056221(n+1))/2)` -/
def P2269527021586584002.Spec : Prop :=
  ∀ n, P2269527021586584002.a n = A092386 n

theorem P2269527021586584002.correct : P2269527021586584002.Spec := by
  intro n
  simp only [A092386]

end A092386

/-! ## A092386.P18125324901647510241

`A006530(abs(A056221(n+1)))`
-/

namespace A092386.P18125324901647510241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A056221 (n + 1)|.toNat

end

end A092386.P18125324901647510241

namespace A092386

/-- `A006530(abs(A056221(n+1)))` -/
def P18125324901647510241.Spec : Prop :=
  ∀ n, P18125324901647510241.a n = A092386 n

end A092386

/-! ## A092386.P11743949642619558658

`A006530(∏{p}[A056221(n+1), #])`
-/

namespace A092386.P11743949642619558658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A092386.P11743949642619558658

namespace A092386

/-- `A006530(∏{p}[A056221(n+1), #])` -/
def P11743949642619558658.Spec : Prop :=
  ∀ n, P11743949642619558658.a n = A092386 n

end A092386

/-! ## A092386.P7441145733024786796

`A006530(abs(A056140(A000040(n+2))))`
-/

namespace A092386.P7441145733024786796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A056140 (A000040 (n + 2)).toNat|.toNat

end

end A092386.P7441145733024786796

namespace A092386

/-- `A006530(abs(A056140(A000040(n+2))))` -/
def P7441145733024786796.Spec : Prop :=
  ∀ n, P7441145733024786796.a n = A092386 n

end A092386

/-! ## A092386.P10301963556646550975

`A006530(abs(A090076(n+1)-A324795(n+1)))`
-/

namespace A092386.P10301963556646550975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A090076 (n + 1) - A324795 (n + 1)|.toNat

end

end A092386.P10301963556646550975

namespace A092386

/-- `A006530(abs(A090076(n+1)-A324795(n+1)))` -/
def P10301963556646550975.Spec : Prop :=
  ∀ n, P10301963556646550975.a n = A092386 n

end A092386

/-! ## A092386.P17026457667041863422

`A006530(abs(A001248(n+2)-A090076(n+1)))`
-/

namespace A092386.P17026457667041863422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A001248 (n + 2) - A090076 (n + 1)|.toNat

end

end A092386.P17026457667041863422

namespace A092386

/-- `A006530(abs(A001248(n+2)-A090076(n+1)))` -/
def P17026457667041863422.Spec : Prop :=
  ∀ n, P17026457667041863422.a n = A092386 n

end A092386

/-! ## A092386.P7794017175511123059

`A006530(abs(A000040(n+2)*A073272(n+1)-A022462(n+1)))`
-/

namespace A092386.P7794017175511123059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A000040 (n + 2) * A073272 (n + 1) - A022462 (n + 1)|.toNat

end

end A092386.P7794017175511123059

namespace A092386

/-- `A006530(abs(A000040(n+2)*A073272(n+1)-A022462(n+1)))` -/
def P7794017175511123059.Spec : Prop :=
  ∀ n, P7794017175511123059.a n = A092386 n

end A092386

/-! ## A092386.P13786199034594179148

`A006530(abs(A000040(n+2)²-A000040(n+1)*A000040(n+3)))`
-/

namespace A092386.P13786199034594179148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A000040 (n + 2) ^ 2 - A000040 (n + 1) * A000040 (n + 3)|.toNat

end

end A092386.P13786199034594179148

namespace A092386

/-- `A006530(abs(A000040(n+2)²-A000040(n+1)*A000040(n+3)))` -/
def P13786199034594179148.Spec : Prop :=
  ∀ n, P13786199034594179148.a n = A092386 n

end A092386

/-! ## A092386.P9066728520805761249

`A085392(abs(A056221(n+1)))`
-/

namespace A092386.P9066728520805761249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 |A056221 (n + 1)|.toNat

end

end A092386.P9066728520805761249

namespace A092386

/-- `A085392(abs(A056221(n+1)))` -/
def P9066728520805761249.Spec : Prop :=
  ∀ n, P9066728520805761249.a n = A092386 n

end A092386

/-!
# A092387: a(n) = Fibonacci(2*n+1) + Fibonacci(2*n-1) + 2.

The programs for A092387, the canonical program `A092387.P8998779271687369840` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092387 has offset 0).

The definition of A092387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092387.P8998779271687369840

`3*a(n-1)-a(n-2)-2` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092387

/-- `3*a(n-1)-a(n-2)-2` -/
def P8998779271687369840.Spec : Prop :=
  ∀ n, P8998779271687369840.a n = A092387 n

theorem P8998779271687369840.correct : P8998779271687369840.Spec := by
  intro n
  simp only [A092387]

end A092387

/-! ## A092387.P2580995635639003544

`A005248(n)+2`
-/

namespace A092387.P2580995635639003544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + 2

end

end A092387.P2580995635639003544

namespace A092387

/-- `A005248(n)+2` -/
def P2580995635639003544.Spec : Prop :=
  ∀ n, P2580995635639003544.a n = A092387 n

end A092387

/-! ## A092387.P10495046085871988005

`A005592(n)+3`
-/

namespace A092387.P10495046085871988005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n + 3

end

end A092387.P10495046085871988005

namespace A092387

/-- `A005592(n)+3` -/
def P10495046085871988005.Spec : Prop :=
  ∀ n, P10495046085871988005.a n = A092387 n

end A092387

/-! ## A092387.P14913414572470159921

`3+floor(ϕ²^n)`
-/

namespace A092387.P14913414572470159921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + ⌊(Real.goldenRatio ^ 2) ^ n⌋

end

end A092387.P14913414572470159921

namespace A092387

/-- `3+floor(ϕ²^n)` -/
def P14913414572470159921.Spec : Prop :=
  ∀ n, P14913414572470159921.a n = A092387 n

end A092387

/-! ## A092387.P10961447745913974772

`floor(record[(-ϕ)^n+3])`
-/

namespace A092387.P10961447745913974772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A092387.P10961447745913974772

namespace A092387

/-- `floor(record[(-ϕ)^n+3])` -/
def P10961447745913974772.Spec : Prop :=
  ∀ n, P10961447745913974772.a n = A092387 n

end A092387

/-! ## A092387.P13141046865237011618

`xor(2, floor(ϕ^(2*n))+5)`
-/

namespace A092387.P13141046865237011618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (⌊Real.goldenRatio ^ (2 * n)⌋ + 5)

end

end A092387.P13141046865237011618

namespace A092387

/-- `xor(2, floor(ϕ^(2*n))+5)` -/
def P13141046865237011618.Spec : Prop :=
  ∀ n, P13141046865237011618.a n = A092387 n

end A092387

/-! ## A092387.P2609878936688828845

`record[a(n-2)+2-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A092387.P2609878936688828845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 2) + (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P2609878936688828845

namespace A092387

/-- `record[a(n-2)+2-a(n-1)]` -/
def P2609878936688828845.Spec : Prop :=
  ∀ n, P2609878936688828845.a n = A092387 n

end A092387

/-! ## A092387.P5019669161771492661

`record[2-(a(n-1)-a(n-2))]` with `a(0)=4, a(1)=1`
-/

namespace A092387.P5019669161771492661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  2 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P5019669161771492661

namespace A092387

/-- `record[2-(a(n-1)-a(n-2))]` -/
def P5019669161771492661.Spec : Prop :=
  ∀ n, P5019669161771492661.a n = A092387 n

end A092387

/-! ## A092387.P16643416811648307158

`A000211(2*n)`
-/

namespace A092387.P16643416811648307158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (2 * n)

end

end A092387.P16643416811648307158

namespace A092387

/-- `A000211(2*n)` -/
def P16643416811648307158.Spec : Prop :=
  ∀ n, P16643416811648307158.a n = A092387 n

end A092387

/-! ## A092387.P11767656545645586602

`record[A005247(n)+2]`
-/

namespace A092387.P11767656545645586602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P11767656545645586602

namespace A092387

/-- `record[A005247(n)+2]` -/
def P11767656545645586602.Spec : Prop :=
  ∀ n, P11767656545645586602.a n = A092387 n

end A092387

/-! ## A092387.P6836527018072346676

`∑[A002878(abs(1-n))]`
-/

namespace A092387.P6836527018072346676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092387.P6836527018072346676

namespace A092387

/-- `∑[A002878(abs(1-n))]` -/
def P6836527018072346676.Spec : Prop :=
  ∀ n, P6836527018072346676.a n = A092387 n

end A092387

/-! ## A092387.P435770681877615374

`record[A061084(n+1)+2]`
-/

namespace A092387.P435770681877615374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P435770681877615374

namespace A092387

/-- `record[A061084(n+1)+2]` -/
def P435770681877615374.Spec : Prop :=
  ∀ n, P435770681877615374.a n = A092387 n

end A092387

/-! ## A092387.P7204997302979139847

`record[A063726(n+1)+2]`
-/

namespace A092387.P7204997302979139847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P7204997302979139847

namespace A092387

/-- `record[A063726(n+1)+2]` -/
def P7204997302979139847.Spec : Prop :=
  ∀ n, P7204997302979139847.a n = A092387 n

end A092387

/-! ## A092387.P18143942808295424029

`record[A000032(n%4+n)+2]`
-/

namespace A092387.P18143942808295424029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n % 4 + n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092387.P18143942808295424029

namespace A092387

/-- `record[A000032(n%4+n)+2]` -/
def P18143942808295424029.Spec : Prop :=
  ∀ n, P18143942808295424029.a n = A092387 n

end A092387

/-! ## A092387.P8730154460209636318

`∑[A000032(abs(2*(1-n))+1)]`
-/

namespace A092387.P8730154460209636318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (|2 * (1 - (n : ℤ))| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092387.P8730154460209636318

namespace A092387

/-- `∑[A000032(abs(2*(1-n))+1)]` -/
def P8730154460209636318.Spec : Prop :=
  ∀ n, P8730154460209636318.a n = A092387 n

end A092387

/-! ## A092387.P5092387822551449061

`(A061084(n)+A000204(n+1))*A005247(n)`
-/

namespace A092387.P5092387822551449061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061084 n + A000204 (n + 1)) * A005247 n

end

end A092387.P5092387822551449061

namespace A092387

/-- `(A061084(n)+A000204(n+1))*A005247(n)` -/
def P5092387822551449061.Spec : Prop :=
  ∀ n, P5092387822551449061.a n = A092387 n

end A092387

/-! ## A092387.P12364785518233380828

`(A075091(n+1)+A061084(n+1))*A005247(n)`
-/

namespace A092387.P12364785518233380828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075091 (n + 1) + A061084 (n + 1)) * A005247 n

end

end A092387.P12364785518233380828

namespace A092387

/-- `(A075091(n+1)+A061084(n+1))*A005247(n)` -/
def P12364785518233380828.Spec : Prop :=
  ∀ n, P12364785518233380828.a n = A092387 n

end A092387

/-! ## A092387.P13204586758877619723

`Δ[A112469(2*n)+A002062(2*n)]`
-/

namespace A092387.P13204586758877619723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 (2 * n) + A002062 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092387.P13204586758877619723

namespace A092387

/-- `Δ[A112469(2*n)+A002062(2*n)]` -/
def P13204586758877619723.Spec : Prop :=
  ∀ n, P13204586758877619723.a n = A092387 n

end A092387

/-! ## A092387.P7613100505878719894

`Δ[Δ[A248924(2*n)]-A248924(2*n)]`
-/

namespace A092387.P7613100505878719894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248924 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A248924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092387.P7613100505878719894

namespace A092387

/-- `Δ[Δ[A248924(2*n)]-A248924(2*n)]` -/
def P7613100505878719894.Spec : Prop :=
  ∀ n, P7613100505878719894.a n = A092387 n

end A092387

/-! ## A092387.P1834442111675718141

`A020876(n)/A000351(n)*A020876(n)`
-/

namespace A092387.P1834442111675718141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020876 n : ℚ) / (A000351 n : ℚ) * (A020876 n : ℚ)

end

end A092387.P1834442111675718141

namespace A092387

/-- `A020876(n)/A000351(n)*A020876(n)` -/
def P1834442111675718141.Spec : Prop :=
  ∀ n, P1834442111675718141.a n = (A092387 n : ℚ)

end A092387

/-!
# A092390: a(n) = prime(n) + prime(2n).

The programs for A092390, the canonical program `A092390.P6063614975695933482` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092390 has offset 1).

The definition of A092390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092390.P17866879312485490678

`A031215(n+1)+Δ[A007504(n)]`
-/

namespace A092390.P17866879312485490678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092390.P17866879312485490678

namespace A092390

/-- `A031215(n+1)+Δ[A007504(n)]` -/
def P17866879312485490678.Spec : Prop :=
  ∀ n, P17866879312485490678.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P6063614975695933482

`A031215(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092390

/-- `A031215(n+1)+A000040(n+1)` -/
def P6063614975695933482.Spec : Prop :=
  ∀ n, P6063614975695933482.a n = A092390 (n + 1)

theorem P6063614975695933482.correct : P6063614975695933482.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel]

end A092390

/-! ## A092390.P13114561930226152250

`A066066(n+1)+A001748(n+1)`
-/

namespace A092390.P13114561930226152250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A001748 (n + 1)

end

end A092390.P13114561930226152250

namespace A092390

/-- `A066066(n+1)+A001748(n+1)` -/
def P13114561930226152250.Spec : Prop :=
  ∀ n, P13114561930226152250.a n = A092390 (n + 1)

theorem P13114561930226152250.correct : P13114561930226152250.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P13114561930226152250.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A031215, A031215.P5770198321376253516.a, A066066, A066066.P11585399840041140735.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P6598443016517965432

`A100484(n+1)+A072473(n+1)`
-/

namespace A092390.P6598443016517965432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A072473 (n + 1)

end

end A092390.P6598443016517965432

namespace A092390

/-- `A100484(n+1)+A072473(n+1)` -/
def P6598443016517965432.Spec : Prop :=
  ∀ n, P6598443016517965432.a n = A092390 (n + 1)

theorem P6598443016517965432.correct : P6598443016517965432.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P6598443016517965432.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072473, A072473.P3407629193092000128.a, A100484, A100484.P9678625670825099636.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P17120684470489647514

`A141101(n+1)+A078916(n+1)`
-/

namespace A092390.P17120684470489647514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141101 (n + 1) + A078916 (n + 1)

end

end A092390.P17120684470489647514

namespace A092390

/-- `A141101(n+1)+A078916(n+1)` -/
def P17120684470489647514.Spec : Prop :=
  ∀ n, P17120684470489647514.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P18146847899377856190

`A116368(n+1)-A001223(n+1)`
-/

namespace A092390.P18146847899377856190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116368 (n + 1) - A001223 (n + 1)

end

end A092390.P18146847899377856190

namespace A092390

/-- `A116368(n+1)-A001223(n+1)` -/
def P18146847899377856190.Spec : Prop :=
  ∀ n, P18146847899377856190.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P5214148282297736990

`A272042(n+1)-A066066(n+1)`
-/

namespace A092390.P5214148282297736990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1) - A066066 (n + 1)

end

end A092390.P5214148282297736990

namespace A092390

/-- `A272042(n+1)-A066066(n+1)` -/
def P5214148282297736990.Spec : Prop :=
  ∀ n, P5214148282297736990.a n = A092390 (n + 1)

theorem P5214148282297736990.correct : P5214148282297736990.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P5214148282297736990.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A066066, A066066.P11585399840041140735.a, A272042, A272042.P14624273689638821498.a, A072473, A072473.P3407629193092000128.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P567243361504454094

`A072672(n+1)-A319613(n+1)`
-/

namespace A092390.P567243361504454094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072672 (n + 1) - A319613 (n + 1)

end

end A092390.P567243361504454094

namespace A092390

/-- `A072672(n+1)-A319613(n+1)` -/
def P567243361504454094.Spec : Prop :=
  ∀ n, P567243361504454094.a n = A092390 (n + 1)

theorem P567243361504454094.correct : P567243361504454094.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P567243361504454094.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072672, A072672.P5338413225751562220.a, A319613, A319613.P13901213373723697006.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P14792707487124663765

`A031215(n+1)+abs(Δ[A022837(n)])`
-/

namespace A092390.P14792707487124663765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + |f1 (n + 1) - f1 n|

end

end A092390.P14792707487124663765

namespace A092390

/-- `A031215(n+1)+abs(Δ[A022837(n)])` -/
def P14792707487124663765.Spec : Prop :=
  ∀ n, P14792707487124663765.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P6931770232657266220

`A031215(n+1)+sqrt(A001248(n+1))`
-/

namespace A092390.P6931770232657266220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A092390.P6931770232657266220

namespace A092390

/-- `A031215(n+1)+sqrt(A001248(n+1))` -/
def P6931770232657266220.Spec : Prop :=
  ∀ n, P6931770232657266220.a n = (A092390 (n + 1) : ℝ)

end A092390

/-! ## A092390.P14186674298950672548

`A031215(n+1)+∑[A054541(n+1)]`
-/

namespace A092390.P14186674298950672548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092390.P14186674298950672548

namespace A092390

/-- `A031215(n+1)+∑[A054541(n+1)]` -/
def P14186674298950672548.Spec : Prop :=
  ∀ n, P14186674298950672548.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P1580042390402215463

`A031215(n+1)+A040976(n+1)+2`
-/

namespace A092390.P1580042390402215463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A040976 (n + 1) + 2)

end

end A092390.P1580042390402215463

namespace A092390

/-- `A031215(n+1)+A040976(n+1)+2` -/
def P1580042390402215463.Spec : Prop :=
  ∀ n, P1580042390402215463.a n = A092390 (n + 1)

theorem P1580042390402215463.correct : P1580042390402215463.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P1580042390402215463.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A040976, A040976.P11599754272797435513.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P939839617558059959

`A031215(n+1)+A052147(n+1)-2`
-/

namespace A092390.P939839617558059959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A052147 (n + 1) - 2)

end

end A092390.P939839617558059959

namespace A092390

/-- `A031215(n+1)+A052147(n+1)-2` -/
def P939839617558059959.Spec : Prop :=
  ∀ n, P939839617558059959.a n = A092390 (n + 1)

theorem P939839617558059959.correct : P939839617558059959.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P939839617558059959.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P13894101535563369637

`A055670(2*(n+1))+A006093(n+1)`
-/

namespace A092390.P13894101535563369637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1)) + A006093 (n + 1)

end

end A092390.P13894101535563369637

namespace A092390

/-- `A055670(2*(n+1))+A006093(n+1)` -/
def P13894101535563369637.Spec : Prop :=
  ∀ n, P13894101535563369637.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P8379297652368815393

`A072473(n+1)+2*A000040(n+1)`
-/

namespace A092390.P8379297652368815393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + 2 * A000040 (n + 1)

end

end A092390.P8379297652368815393

namespace A092390

/-- `A072473(n+1)+2*A000040(n+1)` -/
def P8379297652368815393.Spec : Prop :=
  ∀ n, P8379297652368815393.a n = A092390 (n + 1)

theorem P8379297652368815393.correct : P8379297652368815393.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P8379297652368815393.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072473, A072473.P3407629193092000128.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P7874413237035840004

`2*A031215(n+1)-A072473(n+1)`
-/

namespace A092390.P7874413237035840004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031215 (n + 1) - A072473 (n + 1)

end

end A092390.P7874413237035840004

namespace A092390

/-- `2*A031215(n+1)-A072473(n+1)` -/
def P7874413237035840004.Spec : Prop :=
  ∀ n, P7874413237035840004.a n = A092390 (n + 1)

theorem P7874413237035840004.correct : P7874413237035840004.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P7874413237035840004.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072473, A072473.P3407629193092000128.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P2541908327062730212

`A031215(n+1)+A100484(n+1)/2`
-/

namespace A092390.P2541908327062730212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A092390.P2541908327062730212

namespace A092390

/-- `A031215(n+1)+A100484(n+1)/2` -/
def P2541908327062730212.Spec : Prop :=
  ∀ n, P2541908327062730212.a n = (A092390 (n + 1) : ℚ)

theorem P2541908327062730212.correct : P2541908327062730212.Spec := by
  intro n
  simp only [A092390, Nat.add_sub_cancel, A092390.P2541908327062730212.a, A092390.P6063614975695933482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092390

/-! ## A092390.P4301219242073287073

`A332806(A080148(n+1))+A000040(n+1)`
-/

namespace A092390.P4301219242073287073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080148 (n + 1)).toNat + A000040 (n + 1)

end

end A092390.P4301219242073287073

namespace A092390

/-- `A332806(A080148(n+1))+A000040(n+1)` -/
def P4301219242073287073.Spec : Prop :=
  ∀ n, P4301219242073287073.a n = A092390 (n + 1)

end A092390

/-! ## A092390.P14696231095906228619

`A008347(n+1)+A031215(n+1)+A008347(n)`
-/

namespace A092390.P14696231095906228619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 1) + (A031215 (n + 1) + A008347 n)

end

end A092390.P14696231095906228619

namespace A092390

/-- `A008347(n+1)+A031215(n+1)+A008347(n)` -/
def P14696231095906228619.Spec : Prop :=
  ∀ n, P14696231095906228619.a n = A092390 (n + 1)

end A092390

/-!
# A092391: a(n) = n + wt(n), where wt(n) = A000120(n) = binary weight of n.

The programs for A092391, the canonical program `A092391.P1831081500129819331` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092391 has offset 0).

The definition of A092391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092391.P1831081500129819331

`n+A000120(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092391

/-- `n+A000120(n)` -/
def P1831081500129819331.Spec : Prop :=
  ∀ n, P1831081500129819331.a n = A092391 n

theorem P1831081500129819331.correct : P1831081500129819331.Spec := by
  intro n
  simp only [A092391]

end A092391

/-! ## A092391.P10404351733232547223

`a(n-1)+2-val(n, 2)` with `a(0)=0`
-/

namespace A092391.P10404351733232547223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A092391.P10404351733232547223

namespace A092391

/-- `a(n-1)+2-val(n, 2)` -/
def P10404351733232547223.Spec : Prop :=
  ∀ n, P10404351733232547223.a n = A092391 n

end A092391

/-! ## A092391.P6405659648662732131

`2-(val(n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A092391.P6405659648662732131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ((SequenceMachineLib.valuation n 2 : ℤ) - a (n - 1))

end

end A092391.P6405659648662732131

namespace A092391

/-- `2-(val(n, 2)-a(n-1))` -/
def P6405659648662732131.Spec : Prop :=
  ∀ n, P6405659648662732131.a n = A092391 n

end A092391

/-! ## A092391.P14964706138511853090

`∑[∑{e}[xor(n, -n), 2-#]]+n`
-/

namespace A092391.P14964706138511853090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A092391.P14964706138511853090

namespace A092391

/-- `∑[∑{e}[xor(n, -n), 2-#]]+n` -/
def P14964706138511853090.Spec : Prop :=
  ∀ n, P14964706138511853090.a n = A092391 n

end A092391

/-! ## A092391.P14586030401990043087

`∑[1-∑{e}[or(n, -n), #]]-1+n`
-/

namespace A092391.P14586030401990043087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A092391.P14586030401990043087

namespace A092391

/-- `∑[1-∑{e}[or(n, -n), #]]-1+n` -/
def P14586030401990043087.Spec : Prop :=
  ∀ n, P14586030401990043087.a n = A092391 n

end A092391

/-! ## A092391.P3814596154917105803

`∑[1-∑{e}[or(n, -n), #]]-(1-n)`
-/

namespace A092391.P3814596154917105803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (1 - (n : ℤ))

end

end A092391.P3814596154917105803

namespace A092391

/-- `∑[1-∑{e}[or(n, -n), #]]-(1-n)` -/
def P3814596154917105803.Spec : Prop :=
  ∀ n, P3814596154917105803.a n = A092391 n

end A092391

/-! ## A092391.P13322675802480746557

`∑[a(floor(n/2))-a(n-1)]/3+n` with `a(0)=0, a(1)=3`
-/

namespace A092391.P13322675802480746557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3 + (n : ℚ)

end

end A092391.P13322675802480746557

namespace A092391

/-- `∑[a(floor(n/2))-a(n-1)]/3+n` -/
def P13322675802480746557.Spec : Prop :=
  ∀ n, P13322675802480746557.a n = (A092391 n : ℚ)

end A092391

/-! ## A092391.P17435833593820114833

`log2(A001316(n))+n`
-/

namespace A092391.P17435833593820114833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + (n : ℝ)

end

end A092391.P17435833593820114833

namespace A092391

/-- `log2(A001316(n))+n` -/
def P17435833593820114833.Spec : Prop :=
  ∀ n, P17435833593820114833.a n = (A092391 n : ℝ)

end A092391

/-! ## A092391.P14099409796157335530

`∑[A088705(n)]+n`
-/

namespace A092391.P14099409796157335530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A092391.P14099409796157335530

namespace A092391

/-- `∑[A088705(n)]+n` -/
def P14099409796157335530.Spec : Prop :=
  ∀ n, P14099409796157335530.a n = A092391 n

end A092391

/-! ## A092391.P477766603097018028

`A230300(n+1)-1`
-/

namespace A092391.P477766603097018028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230300 (n + 1) - 1

end

end A092391.P477766603097018028

namespace A092391

/-- `A230300(n+1)-1` -/
def P477766603097018028.Spec : Prop :=
  ∀ n, P477766603097018028.a n = A092391 n

end A092391

/-! ## A092391.P16697879751257362837

`2*n-A011371(n)`
-/

namespace A092391.P16697879751257362837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A011371 n

end

end A092391.P16697879751257362837

namespace A092391

/-- `2*n-A011371(n)` -/
def P16697879751257362837.Spec : Prop :=
  ∀ n, P16697879751257362837.a n = A092391 n

end A092391

/-! ## A092391.P12972134532136886150

`3*n-A005187(n)`
-/

namespace A092391.P12972134532136886150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A005187 n

end

end A092391.P12972134532136886150

namespace A092391

/-- `3*n-A005187(n)` -/
def P12972134532136886150.Spec : Prop :=
  ∀ n, P12972134532136886150.a n = A092391 n

theorem P12972134532136886150.correct : P12972134532136886150.Spec := by
  intro n
  simp only [A092391, Nat.add_sub_cancel, A092391.P12972134532136886150.a, A092391.P1831081500129819331.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092391

/-! ## A092391.P14780402601733454971

`4*n-A004134(n)`
-/

namespace A092391.P14780402601733454971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A004134 n

end

end A092391.P14780402601733454971

namespace A092391

/-- `4*n-A004134(n)` -/
def P14780402601733454971.Spec : Prop :=
  ∀ n, P14780402601733454971.a n = A092391 n

theorem P14780402601733454971.correct : P14780402601733454971.Spec := by
  intro n
  simp only [A092391, Nat.add_sub_cancel, A092391.P14780402601733454971.a, A092391.P1831081500129819331.a, A000120, A000120.P2816527436160941581.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092391

/-! ## A092391.P13794372175088661349

`5*n-A120738(n)`
-/

namespace A092391.P13794372175088661349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A120738 n

end

end A092391.P13794372175088661349

namespace A092391

/-- `5*n-A120738(n)` -/
def P13794372175088661349.Spec : Prop :=
  ∀ n, P13794372175088661349.a n = A092391 n

theorem P13794372175088661349.correct : P13794372175088661349.Spec := by
  intro n
  simp only [A092391, Nat.add_sub_cancel, A092391.P13794372175088661349.a, A092391.P1831081500129819331.a, A000120, A000120.P2816527436160941581.a, A120738, A120738.P9838444930846786751.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092391

/-! ## A092391.P1838797919653165975

`val(A102377(n), 2)+n`
-/

namespace A092391.P1838797919653165975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2 + n

end

end A092391.P1838797919653165975

namespace A092391

/-- `val(A102377(n), 2)+n` -/
def P1838797919653165975.Spec : Prop :=
  ∀ n, (P1838797919653165975.a n : ℤ) = A092391 n

end A092391

/-! ## A092391.P148478241005453962

`val(A160713(n), 2)+n`
-/

namespace A092391.P148478241005453962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2 + n

end

end A092391.P148478241005453962

namespace A092391

/-- `val(A160713(n), 2)+n` -/
def P148478241005453962.Spec : Prop :=
  ∀ n, (P148478241005453962.a n : ℤ) = A092391 n

end A092391

/-! ## A092391.P9840738355381186554

`val(A246037(n), 2)+n`
-/

namespace A092391.P9840738355381186554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246037 n).toNat 2 + n

end

end A092391.P9840738355381186554

namespace A092391

/-- `val(A246037(n), 2)+n` -/
def P9840738355381186554.Spec : Prop :=
  ∀ n, (P9840738355381186554.a n : ℤ) = A092391 n

end A092391

/-! ## A092391.P14655084271481073732

`val(A283477(n), 2)+n`
-/

namespace A092391.P14655084271481073732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283477 n).toNat 2 + n

end

end A092391.P14655084271481073732

namespace A092391

/-- `val(A283477(n), 2)+n` -/
def P14655084271481073732.Spec : Prop :=
  ∀ n, (P14655084271481073732.a n : ℤ) = A092391 n

end A092391

/-! ## A092391.P3123437170397651946

`val(A329886(n), 2)+n`
-/

namespace A092391.P3123437170397651946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329886 n).toNat 2 + n

end

end A092391.P3123437170397651946

namespace A092391

/-- `val(A329886(n), 2)+n` -/
def P3123437170397651946.Spec : Prop :=
  ∀ n, (P3123437170397651946.a n : ℤ) = A092391 n

end A092391

/-!
# A092392: Triangle read by rows: T(n,k) = C(2*n - k,n), 0 <= k <= n.

The programs for A092392, the canonical program `A092392.P2058426022526125338` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092392 has offset 0).

The definition of A092392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092392.P2058426022526125338

`A046899(A061579(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A092392

/-- `A046899(A061579(n))` -/
def P2058426022526125338.Spec : Prop :=
  ∀ n, P2058426022526125338.a n = A092392 n

theorem P2058426022526125338.correct : P2058426022526125338.Spec := by
  intro n
  simp only [A092392]

end A092392

/-! ## A092392.P18251004164851846630

`A046899(A038722(n+2))`
-/

namespace A092392.P18251004164851846630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A038722 (n + 2)).toNat

end

end A092392.P18251004164851846630

namespace A092392

/-- `A046899(A038722(n+2))` -/
def P18251004164851846630.Spec : Prop :=
  ∀ n, P18251004164851846630.a n = A092392 n

end A092392

/-! ## A092392.P4236547540806450343

`A046899(A114327(n)+n)`
-/

namespace A092392.P4236547540806450343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A114327 n + (n : ℤ)).toNat

end

end A092392.P4236547540806450343

namespace A092392

/-- `A046899(A114327(n)+n)` -/
def P4236547540806450343.Spec : Prop :=
  ∀ n, P4236547540806450343.a n = A092392 n

end A092392

/-! ## A092392.P5055284419127270025

`A171824(n)-A046899(n)`
-/

namespace A092392.P5055284419127270025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 n - A046899 n

end

end A092392.P5055284419127270025

namespace A092392

/-- `A171824(n)-A046899(n)` -/
def P5055284419127270025.Spec : Prop :=
  ∀ n, P5055284419127270025.a n = A092392 n

theorem P5055284419127270025.correct : P5055284419127270025.Spec := by
  intro n
  simp only [A092392, Nat.add_sub_cancel, A092392.P5055284419127270025.a, A092392.P2058426022526125338.a, A046899, A046899.P13814988241420676234.a, A061579, A061579.P7462537595056690109.a, A171824, A171824.P9505180745158428969.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A092392

/-! ## A092392.P13227588697649102995

`2*A100100(n)-A106566(n)`
-/

namespace A092392.P13227588697649102995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100100 n - A106566 n

end

end A092392.P13227588697649102995

namespace A092392

/-- `2*A100100(n)-A106566(n)` -/
def P13227588697649102995.Spec : Prop :=
  ∀ n, P13227588697649102995.a n = A092392 n

theorem P13227588697649102995.correct : P13227588697649102995.Spec := by
  intro n
  simp only [A092392, Nat.add_sub_cancel, A092392.P13227588697649102995.a, A092392.P2058426022526125338.a, A046899, A046899.P13814988241420676234.a, A061579, A061579.P7462537595056690109.a, A100100, A100100.P334722086453035183.a, A106566, A106566.P15038054948988524136.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A092392

/-! ## A092392.P5153621298419674071

`A100100(comp[∑[n]])`
-/

namespace A092392.P5153621298419674071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092392.P5153621298419674071

namespace A092392

/-- `A100100(comp[∑[n]])` -/
def P5153621298419674071.Spec : Prop :=
  ∀ n, P5153621298419674071.a n = A092392 n

end A092392

/-! ## A092392.P1562988170220410920

`A074909(n+1)/A001263(n+1)*A060693(n)`
-/

namespace A092392.P1562988170220410920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A060693 n : ℚ)

end

end A092392.P1562988170220410920

namespace A092392

/-- `A074909(n+1)/A001263(n+1)*A060693(n)` -/
def P1562988170220410920.Spec : Prop :=
  ∀ n, P1562988170220410920.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P4183358192042791873

`C(A294317(n), A003056(n))`
-/

namespace A092392.P4183358192042791873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n).toNat (A003056 n).toNat

end

end A092392.P4183358192042791873

namespace A092392

/-- `C(A294317(n), A003056(n))` -/
def P4183358192042791873.Spec : Prop :=
  ∀ n, (P4183358192042791873.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P15459716430589620229

`C(A294317(n), A025581(n))`
-/

namespace A092392.P15459716430589620229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n).toNat (A025581 n).toNat

end

end A092392.P15459716430589620229

namespace A092392

/-- `C(A294317(n), A025581(n))` -/
def P15459716430589620229.Spec : Prop :=
  ∀ n, (P15459716430589620229.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P5738294711045947597

`C(A294317(n), n-A083920(n))`
-/

namespace A092392.P5738294711045947597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n).toNat ((n : ℤ) - A083920 n).toNat

end

end A092392.P5738294711045947597

namespace A092392

/-- `C(A294317(n), n-A083920(n))` -/
def P5738294711045947597.Spec : Prop :=
  ∀ n, (P5738294711045947597.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P11848066112944562891

`C(A025581(n)+A003056(n), A003056(n))`
-/

namespace A092392.P11848066112944562891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + A003056 n).toNat (A003056 n).toNat

end

end A092392.P11848066112944562891

namespace A092392

/-- `C(A025581(n)+A003056(n), A003056(n))` -/
def P11848066112944562891.Spec : Prop :=
  ∀ n, (P11848066112944562891.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P255032206343594379

`C(A057554(2*(n+1))+A003056(n+1), A003056(n+1))`
-/

namespace A092392.P255032206343594379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057554 (2 * (n + 1)) + A003056 (n + 1)).toNat (A003056 (n + 1)).toNat

end

end A092392.P255032206343594379

namespace A092392

/-- `C(A057554(2*(n+1))+A003056(n+1), A003056(n+1))` -/
def P255032206343594379.Spec : Prop :=
  ∀ n, (P255032206343594379.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P7309011128113634745

`A104684(n)/A007318(n)`
-/

namespace A092392.P7309011128113634745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A007318 n : ℚ)

end

end A092392.P7309011128113634745

namespace A092392

/-- `A104684(n)/A007318(n)` -/
def P7309011128113634745.Spec : Prop :=
  ∀ n, P7309011128113634745.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P17531027142521084943

`A063007(A038722(n+1)-1)/A007318(n)`
-/

namespace A092392.P17531027142521084943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 (A038722 (n + 1) - 1).toNat : ℚ) / (A007318 n : ℚ)

end

end A092392.P17531027142521084943

namespace A092392

/-- `A063007(A038722(n+1)-1)/A007318(n)` -/
def P17531027142521084943.Spec : Prop :=
  ∀ n, P17531027142521084943.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P10014786770618389387

`A063007(A038722(n+2))/A007318(n)`
-/

namespace A092392.P10014786770618389387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 (A038722 (n + 2)).toNat : ℚ) / (A007318 n : ℚ)

end

end A092392.P10014786770618389387

namespace A092392

/-- `A063007(A038722(n+2))/A007318(n)` -/
def P10014786770618389387.Spec : Prop :=
  ∀ n, P10014786770618389387.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P16450657866750417044

`A371400(n)/A046899(n)`
-/

namespace A092392.P16450657866750417044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371400 n : ℚ) / (A046899 n : ℚ)

end

end A092392.P16450657866750417044

namespace A092392

/-- `A371400(n)/A046899(n)` -/
def P16450657866750417044.Spec : Prop :=
  ∀ n, P16450657866750417044.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P11750456792332954188

`A356546(n)/A062344(n)`
-/

namespace A092392.P11750456792332954188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A062344 n : ℚ)

end

end A092392.P11750456792332954188

namespace A092392

/-- `A356546(n)/A062344(n)` -/
def P11750456792332954188.Spec : Prop :=
  ∀ n, P11750456792332954188.a n = (A092392 n : ℚ)

end A092392

/-! ## A092392.P15602663944682293938

`C(A025581(A292564(n)), A025581(n))`
-/

namespace A092392.P15602663944682293938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 (A292564 n).toNat).toNat (A025581 n).toNat

end

end A092392.P15602663944682293938

namespace A092392

/-- `C(A025581(A292564(n)), A025581(n))` -/
def P15602663944682293938.Spec : Prop :=
  ∀ n, (P15602663944682293938.a n : ℤ) = A092392 n

end A092392

/-! ## A092392.P13235114907598094446

`A107249(A185869(n+1)-1)`
-/

namespace A092392.P13235114907598094446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (A185869 (n + 1) - 1).toNat

end

end A092392.P13235114907598094446

namespace A092392

/-- `A107249(A185869(n+1)-1)` -/
def P13235114907598094446.Spec : Prop :=
  ∀ n, P13235114907598094446.a n = A092392 n

end A092392

/-! ## A092392.P5906262581717230398

`A107249(A185871(n+1)-1)`
-/

namespace A092392.P5906262581717230398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (A185871 (n + 1) - 1).toNat

end

end A092392.P5906262581717230398

namespace A092392

/-- `A107249(A185871(n+1)-1)` -/
def P5906262581717230398.Spec : Prop :=
  ∀ n, P5906262581717230398.a n = A092392 n

end A092392

/-!
# A092393: Triangle read by rows: T(n,k) = (n+k)*binomial(n,k) (for k=0..n-1).

The programs for A092393, the canonical program `A092393.P14333923144076909160` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092393 has offset 1).

The definition of A092393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092393.P13435039632986317434

`(n+1-C(∑[char[∑[n+1]]], 2))*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))`
-/

namespace A092393.P13435039632986317434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ)).toNat : ℤ)

end

end A092393.P13435039632986317434

namespace A092393

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))` -/
def P13435039632986317434.Spec : Prop :=
  ∀ n, P13435039632986317434.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P16667857682141388849

`∑[char[∑[n]]]*A029637(n+1)`
-/

namespace A092393.P16667857682141388849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A029637 (n + 1)

end

end A092393.P16667857682141388849

namespace A092393

/-- `∑[char[∑[n]]]*A029637(n+1)` -/
def P16667857682141388849.Spec : Prop :=
  ∀ n, P16667857682141388849.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P16830206630359013203

`(n+1-C(∑[char[∑[n+1]]], 2))*A007318(comp[∑[n+1]])`
-/

namespace A092393.P16830206630359013203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A092393.P16830206630359013203

namespace A092393

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A007318(comp[∑[n+1]])` -/
def P16830206630359013203.Spec : Prop :=
  ∀ n, P16830206630359013203.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P14333923144076909160

`(A051162(n)+1)*A074909(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092393

/-- `(A051162(n)+1)*A074909(n)` -/
def P14333923144076909160.Spec : Prop :=
  ∀ n, P14333923144076909160.a n = A092393 (n + 1)

theorem P14333923144076909160.correct : P14333923144076909160.Spec := by
  intro n
  simp only [A092393, Nat.add_sub_cancel]

end A092393

/-! ## A092393.P11190132694213938338

`A074909(n)*A094727(n+1)`
-/

namespace A092393.P11190132694213938338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A094727 (n + 1)

end

end A092393.P11190132694213938338

namespace A092393

/-- `A074909(n)*A094727(n+1)` -/
def P11190132694213938338.Spec : Prop :=
  ∀ n, P11190132694213938338.a n = A092393 (n + 1)

theorem P11190132694213938338.correct : P11190132694213938338.Spec := by
  intro n
  simp only [A092393, Nat.add_sub_cancel, A092393.P11190132694213938338.a, A092393.P14333923144076909160.a, A051162, A051162.P14261216125704105833.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A094727, A094727.P1759177724676722475.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A092393

/-! ## A092393.P17521248897503205196

`(A051162(n)+1)*A007318(comp[∑[n+1]])`
-/

namespace A092393.P17521248897503205196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092393.P17521248897503205196

namespace A092393

/-- `(A051162(n)+1)*A007318(comp[∑[n+1]])` -/
def P17521248897503205196.Spec : Prop :=
  ∀ n, P17521248897503205196.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P16547035840041276721

`A007318(comp[∑[n+1]])*A094727(n+1)`
-/

namespace A092393.P16547035840041276721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A094727 (n + 1)

end

end A092393.P16547035840041276721

namespace A092393

/-- `A007318(comp[∑[n+1]])*A094727(n+1)` -/
def P16547035840041276721.Spec : Prop :=
  ∀ n, P16547035840041276721.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P9761444355476689406

`A029637(n+1)*A123578(n+1)`
-/

namespace A092393.P9761444355476689406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) * A123578 (n + 1)

end

end A092393.P9761444355476689406

namespace A092393

/-- `A029637(n+1)*A123578(n+1)` -/
def P9761444355476689406.Spec : Prop :=
  ∀ n, P9761444355476689406.a n = A092393 (n + 1)

end A092393

/-! ## A092393.P14719649064972539269

`abs(A331431(n)/A009766(n))`
-/

namespace A092393.P14719649064972539269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A331431 n : ℚ) / (A009766 n : ℚ)|

end

end A092393.P14719649064972539269

namespace A092393

/-- `abs(A331431(n)/A009766(n))` -/
def P14719649064972539269.Spec : Prop :=
  ∀ n, P14719649064972539269.a n = (A092393 (n + 1) : ℚ)

end A092393

/-!
# A092395: Primes occurring as divisors of fibonacci(p) with p prime.

The programs for A092395, there is no canonical definition to state claims against.
-/

/-! ## A092395.P12133394437770180467

`p?[A233281(n+1)]`
-/

namespace A092395.P12133394437770180467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092395.P12133394437770180467

/-! ## A092395.P14612877837520290780

`∩[A042998(n+1), A233281(n+1)]`
-/

namespace A092395.P14612877837520290780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P14612877837520290780

/-! ## A092395.P12744994694726773742

`∩[A045352(n+1), A233281(n+1)]`
-/

namespace A092395.P12744994694726773742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P12744994694726773742

/-! ## A092395.P2672148528988994389

`∩[A224450(n+1), A233281(n+1)]`
-/

namespace A092395.P2672148528988994389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P2672148528988994389

/-! ## A092395.P11460786807903236246

`∩[A233281(n+1), A281292(n+1)]`
-/

namespace A092395.P11460786807903236246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P11460786807903236246

/-! ## A092395.P4818614903948654105

`∩[A233281(n+1), A270617(n+1)]`
-/

namespace A092395.P4818614903948654105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P4818614903948654105

/-! ## A092395.P13425813185022687347

`∩[A233281(n+1), A257974(n+1)]`
-/

namespace A092395.P13425813185022687347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P13425813185022687347

/-! ## A092395.P16406441696044079570

`∩[A233281(n+1), A261123(n+1)]`
-/

namespace A092395.P16406441696044079570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P16406441696044079570

/-! ## A092395.P1690946326765728519

`∩[A000040(n+1), A233281(n+1)]`
-/

namespace A092395.P1690946326765728519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P1690946326765728519

/-! ## A092395.P9474403589502132124

`∩[A008578(n+1), A233281(n+1)]`
-/

namespace A092395.P9474403589502132124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P9474403589502132124

/-! ## A092395.P6382280710246200729

`∩[A033946(n+1), A233281(n+1)]`
-/

namespace A092395.P6382280710246200729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P6382280710246200729

/-! ## A092395.P10619124304592138850

`∩[A045344(n+1), A233281(n+1)]`
-/

namespace A092395.P10619124304592138850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P10619124304592138850

/-! ## A092395.P143022167606211096

`∩[A046022(n+1), A233281(n+1)]`
-/

namespace A092395.P143022167606211096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P143022167606211096

/-! ## A092395.P9976579310680594809

`∩[A051948(n+1), A233281(n+1)]`
-/

namespace A092395.P9976579310680594809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P9976579310680594809

/-! ## A092395.P11964180964321287592

`∩[A182986(n+1), A233281(n+1)]`
-/

namespace A092395.P11964180964321287592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092395.P11964180964321287592

/-! ## A092395.P6124662893409473697

`record[A020639(A233281(A065033(n)))]`
-/

namespace A092395.P6124662893409473697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233281 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092395.P6124662893409473697

/-! ## A092395.P7729382781523259956

`record[A006530(A233281(A154958(n)))]`
-/

namespace A092395.P7729382781523259956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233281 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092395.P7729382781523259956

/-! ## A092395.P15773699063530895590

`A000040(record[(n+1)/A001222(A001602(n+1))])`
-/

namespace A092395.P15773699063530895590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A001602 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A092395.P15773699063530895590

/-! ## A092395.P10521062987407706790

`p?[A000040(n+1)*A001222(A001602(n+1))]`
-/

namespace A092395.P10521062987407706790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A001602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092395.P10521062987407706790

/-!
# A092396: Row 2 of array in A288580.

The programs for A092396, there is no canonical definition to state claims against.
-/

/-! ## A092396.P1574713691733034804

`∏[-(n²/a(n-1))]` with `a(0)=1`
-/

namespace A092396.P1574713691733034804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n ^ 2 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092396.P1574713691733034804

/-! ## A092396.P8839711921267296783

`∏[-(n*n/a(n-1))]` with `a(0)=1`
-/

namespace A092396.P8839711921267296783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n : ℚ) * ((n : ℚ) / f1 (n - 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092396.P8839711921267296783

/-! ## A092396.P3723699386479521882

`∏[(n-∑[2*n])/a(n-1)]` with `a(0)=1`
-/

namespace A092396.P3723699386479521882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092396.P3723699386479521882

/-! ## A092396.P10152666860443349003

`(n-∑[2*n])*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A092396.P10152666860443349003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * a (n - 2)

end

end A092396.P10152666860443349003

/-! ## A092396.P12954426972046025113

`floor((n-n*(n+1))*a(n-2))` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A092396.P12954426972046025113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - (n * (n + 1) : ℤ)) * a (n - 2)

end

end A092396.P12954426972046025113

/-! ## A092396.P13831497237399957818

`a(n-2)-(n²+1)*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A092396.P13831497237399957818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - (n ^ 2 + 1 : ℤ) * a (n - 2)

end

end A092396.P13831497237399957818

/-! ## A092396.P6977703313768680904

`(1-n²)*a(n-2)-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A092396.P6977703313768680904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (1 - (n ^ 2 : ℤ)) * a (n - 2) - a (n - 2)

end

end A092396.P6977703313768680904

/-! ## A092396.P17301037662797533629

`n*(a(n-2)-(n+1)*a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A092396.P17301037662797533629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (n : ℤ) * (a (n - 2) - (n + 1 : ℤ) * a (n - 2))

end

end A092396.P17301037662797533629

/-! ## A092396.P17003815508343062427

`A184877(n)/∏[(-1)^n]`
-/

namespace A092396.P17003815508343062427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184877 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A092396.P17003815508343062427

/-! ## A092396.P7412285052949257044

`A006882(n)²*A087960(n)`
-/

namespace A092396.P7412285052949257044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n ^ 2 * A087960 n

end

end A092396.P7412285052949257044

/-!
# A092397: Row 3 of array in A288580.

The programs for A092397, there is no canonical definition to state claims against.
-/

/-! ## A092397.P17001262933913885841

`A092971(2*n)/∏[(n²+1)%3]`
-/

namespace A092397.P17001262933913885841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092971 (2 * n) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A092397.P17001262933913885841

/-! ## A092397.P10582363398947449533

`A288580(∑[n+3])`
-/

namespace A092397.P10582363398947449533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092397.P10582363398947449533

/-! ## A092397.P10107146780014022003

`A288580(A055998(n+1))+A000038(n+2)`
-/

namespace A092397.P10107146780014022003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A055998 (n + 1)).toNat + A000038 (n + 2)

end

end A092397.P10107146780014022003

/-! ## A092397.P15560248976094481583

`A288580(A055998(n+1))+A091684(3*n)`
-/

namespace A092397.P15560248976094481583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A055998 (n + 1)).toNat + A091684 (3 * n)

end

end A092397.P15560248976094481583

/-! ## A092397.P7542608304722366447

`A288580(A141214(n))%A002902(n+1)`
-/

namespace A092397.P7542608304722366447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288580 (A141214 n).toNat) (A002902 (n + 1))

end

end A092397.P7542608304722366447

/-!
# A092398: Row 4 of array in A288580.

The programs for A092398, there is no canonical definition to state claims against.
-/

/-! ## A092398.P15008573560093292117

`A288580(∑[n+3]+n+3)`
-/

namespace A092398.P15008573560093292117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A092398.P15008573560093292117

/-! ## A092398.P968037783023885784

`and(-1, A288580(A046691(n+2)))`
-/

namespace A092398.P968037783023885784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A288580 (A046691 (n + 2)).toNat)

end

end A092398.P968037783023885784

/-! ## A092398.P10665729194323099372

`A288580(A046691(n+2))+A091684(3*(n+1))`
-/

namespace A092398.P10665729194323099372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A046691 (n + 2)).toNat + A091684 (3 * (n + 1))

end

end A092398.P10665729194323099372

/-!
# A092399: Row 5 of array in A288580.

The programs for A092399, there is no canonical definition to state claims against.
-/

/-! ## A092399.P10518002706940188682

`A288580(A052905(n+2))`
-/

namespace A092399.P10518002706940188682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A052905 (n + 2)).toNat

end

end A092399.P10518002706940188682

/-! ## A092399.P201166569370086835

`A288580(A056115(n)+10)`
-/

namespace A092399.P201166569370086835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (A056115 n + 10).toNat

end

end A092399.P201166569370086835

/-! ## A092399.P3188335009080447186

`A288580(eq[4, A025581(n)])`
-/

namespace A092399.P3188335009080447186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092399.P3188335009080447186

/-! ## A092399.P15917589406812614361

`A288580(eq[5, A193739(n)])`
-/

namespace A092399.P15917589406812614361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092399.P15917589406812614361

/-! ## A092399.P32074379781733867

`A288580(eq[9, A099375(n)])`
-/

namespace A092399.P32074379781733867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092399.P32074379781733867

