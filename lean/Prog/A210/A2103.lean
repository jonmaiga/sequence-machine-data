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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210301: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210301, there is no canonical definition to state claims against.
-/

/-! ## A210301.P14694474142361353163

`A210309(∑[4*n]+1)`
-/

namespace A210301.P14694474142361353163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210301.P14694474142361353163

/-!
# A210302: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210302, the canonical program `A210302.P4480323240577882787` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210302 has offset 1).

The definition of A210302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210302.P10193750749037628241

`ogf((29x-21x^2-4x^3+4x^4)/(1-15x+57x^2-41x^3-10x^4+8x^5))`
-/

namespace A210302.P10193750749037628241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 29, -21, -4, 4] [1, -15, 57, -41, -10, 8] n

end

end A210302.P10193750749037628241

namespace A210302

/-- `ogf((29x-21x^2-4x^3+4x^4)/(1-15x+57x^2-41x^3-10x^4+8x^5))` -/
def P10193750749037628241.Spec : Prop :=
  ∀ n, P10193750749037628241.a n = A210302 (n + 1)

end A210302

/-! ## A210302.P4480323240577882787

`A210397(n+1)-A210100(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210302

/-- `A210397(n+1)-A210100(n+1)` -/
def P4480323240577882787.Spec : Prop :=
  ∀ n, P4480323240577882787.a n = A210302 (n + 1)

theorem P4480323240577882787.correct : P4480323240577882787.Spec := by
  intro n
  simp only [A210302, Nat.add_sub_cancel]

end A210302

/-! ## A210302.P214721039011377153

`A210309(∑[n]+1)`
-/

namespace A210302.P214721039011377153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210302.P214721039011377153

namespace A210302

/-- `A210309(∑[n]+1)` -/
def P214721039011377153.Spec : Prop :=
  ∀ n, P214721039011377153.a n = A210302 (n + 1)

end A210302

/-! ## A210302.P11584013746300094265

`record[A010054(n)*A210309(n+1)]`
-/

namespace A210302.P11584013746300094265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210302.P11584013746300094265

namespace A210302

/-- `record[A010054(n)*A210309(n+1)]` -/
def P11584013746300094265.Spec : Prop :=
  ∀ n, P11584013746300094265.a n = A210302 (n + 1)

end A210302

/-! ## A210302.P12216558783774887805

`record[A210309(n+1)/A022171(n)]`
-/

namespace A210302.P12216558783774887805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210309 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210302.P12216558783774887805

namespace A210302

/-- `record[A210309(n+1)/A022171(n)]` -/
def P12216558783774887805.Spec : Prop :=
  ∀ n, P12216558783774887805.a n = (A210302 (n + 1) : ℚ)

end A210302

/-!
# A210303: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210303, there is no canonical definition to state claims against.
-/

/-! ## A210303.P2741689669882094369

`A210309(∑[n+1]+2)`
-/

namespace A210303.P2741689669882094369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210303.P2741689669882094369

/-! ## A210303.P12033784153790277605

`record[A010054(n)*A210309(n+2)]`
-/

namespace A210303.P12033784153790277605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210303.P12033784153790277605

/-! ## A210303.P1690488088955630655

`record[gcd(A002262(n), A210309(n+2))]`
-/

namespace A210303.P1690488088955630655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210309 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210303.P1690488088955630655

/-! ## A210303.P9455066648460328412

`or(1, A210309(A000096(n+1)))`
-/

namespace A210303.P9455066648460328412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210309 (A000096 (n + 1)).toNat)

end

end A210303.P9455066648460328412

/-! ## A210303.P5561969437039963822

`record[A210309(Δ[A003453(n+5)])]`
-/

namespace A210303.P5561969437039963822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210303.P5561969437039963822

/-!
# A210304: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210304, there is no canonical definition to state claims against.
-/

/-! ## A210304.P16981517177300592635

`A210309(∑[n+2]+4)`
-/

namespace A210304.P16981517177300592635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210304.P16981517177300592635

/-! ## A210304.P11406010860216075285

`record[A210309(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A210304.P11406010860216075285
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210304.P11406010860216075285

/-! ## A210304.P15861034462775937955

`lcm(A020985(n), A210309(A167614(n+1)))`
-/

namespace A210304.P15861034462775937955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A210309 (A167614 (n + 1)).toNat)

end

end A210304.P15861034462775937955

/-! ## A210304.P1065705258491525384

`or(A002262(n), A210309(A167614(n+1)))`
-/

namespace A210304.P1065705258491525384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A210309 (A167614 (n + 1)).toNat)

end

end A210304.P1065705258491525384

/-! ## A210304.P12257586795162167530

`or(A004247(n), A210309(A167614(n+1)))`
-/

namespace A210304.P12257586795162167530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004247 n) (A210309 (A167614 (n + 1)).toNat)

end

end A210304.P12257586795162167530

/-!
# A210305: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210305, there is no canonical definition to state claims against.
-/

/-! ## A210305.P3019411244406007327

`A210309(A167614(n+2)+1)`
-/

namespace A210305.P3019411244406007327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (A167614 (n + 2) + 1).toNat

end

end A210305.P3019411244406007327

/-! ## A210305.P9984217140998080189

`A210309(eq[3, A089606(n+1)])`
-/

namespace A210305.P9984217140998080189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210305.P9984217140998080189

/-!
# A210306: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210306, there is no canonical definition to state claims against.
-/

/-! ## A210306.P1615037905122261314

`A210309(A374005(n+1))`
-/

namespace A210306.P1615037905122261314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (A374005 (n + 1)).toNat

end

end A210306.P1615037905122261314

/-! ## A210306.P4981010987736514075

`A210309(A046691(n+3))`
-/

namespace A210306.P4981010987736514075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (A046691 (n + 3)).toNat

end

end A210306.P4981010987736514075

/-!
# A210309: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210309, there is no canonical definition to state claims against.
-/

/-! ## A210309.P11559174926117534064

`A210404(n+1)-A210107(n+1)`
-/

namespace A210309.P11559174926117534064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (n + 1) - A210107 (n + 1)

end

end A210309.P11559174926117534064

/-! ## A210309.P7236721380582267808

`A210086(n+1)+A210404(n+1)-A210134(n+1)`
-/

namespace A210309.P7236721380582267808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (n + 1) + (A210404 (n + 1) - A210134 (n + 1))

end

end A210309.P7236721380582267808

/-! ## A210309.P1291603152807218327

`(A210404(n+1)+A210086(n+1))%(A210107(n+1)+A210086(n+1))`
-/

namespace A210309.P1291603152807218327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210404 (n + 1) + A210086 (n + 1)) (A210107 (n + 1) + A210086 (n + 1))

end

end A210309.P1291603152807218327

/-!
# A210311: Primes that can be represented exactly in one way as a^2 + b^2 + c^2, 0 < a <= b <= c.

The programs for A210311, there is no canonical definition to state claims against.
-/

/-! ## A210311.P11019320454475582951

`p?[A025321(n+1)]`
-/

namespace A210311.P11019320454475582951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210311.P11019320454475582951

/-! ## A210311.P2057952714363262197

`p?[A094740(n+1)]`
-/

namespace A210311.P2057952714363262197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210311.P2057952714363262197

/-! ## A210311.P1939203356117917287

`p?[A223732(n+1)]`
-/

namespace A210311.P1939203356117917287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210311.P1939203356117917287

/-! ## A210311.P16474271803259918416

`p?[eq[1, A025427(n)]]`
-/

namespace A210311.P16474271803259918416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210311.P16474271803259918416

/-! ## A210311.P10014202198873654411

`eq[A025427(n), A181859(n)]`
-/

namespace A210311.P10014202198873654411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210311.P10014202198873654411

/-!
# A210312: 

The programs for A210312, there is no canonical definition to state claims against.
-/

/-! ## A210312.P7831594847013021113

`A210320(∑[4*n]+1)`
-/

namespace A210312.P7831594847013021113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210312.P7831594847013021113

/-!
# A210313: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210313, there is no canonical definition to state claims against.
-/

/-! ## A210313.P17837108390176731386

`A210320(∑[n]+1)`
-/

namespace A210313.P17837108390176731386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210313.P17837108390176731386

/-! ## A210313.P772539138835159321

`record[A103451(n)*A210320(n+1)]`
-/

namespace A210313.P772539138835159321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A210320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210313.P772539138835159321

/-! ## A210313.P9696967546264656223

`record[gcd(A002262(n), A210320(n+1))]`
-/

namespace A210313.P9696967546264656223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210320 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210313.P9696967546264656223

/-! ## A210313.P3267241841378017932

`record[(2-A002260(n+1))*A210320(n+1)]`
-/

namespace A210313.P3267241841378017932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A210320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210313.P3267241841378017932

/-! ## A210313.P9444450140264068524

`lcm(A033999(n), A210320(A000124(n)))`
-/

namespace A210313.P9444450140264068524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210320 (A000124 n).toNat)

end

end A210313.P9444450140264068524

/-!
# A210314: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210314, there is no canonical definition to state claims against.
-/

/-! ## A210314.P10852931807780175805

`A210320(∑[n+1]+2)`
-/

namespace A210314.P10852931807780175805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210314.P10852931807780175805

/-! ## A210314.P8978654547932565220

`record[gcd(A002262(n), A210320(n+2))]`
-/

namespace A210314.P8978654547932565220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210320 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210314.P8978654547932565220

/-! ## A210314.P2009343975090687871

`record[root(A210320(n+2), A002260(n+1))]`
-/

namespace A210314.P2009343975090687871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210320 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210314.P2009343975090687871

/-!
# A210315: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210315, there is no canonical definition to state claims against.
-/

/-! ## A210315.P8365219116154238691

`A210320(∑[n+2]+4)`
-/

namespace A210315.P8365219116154238691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210315.P8365219116154238691

/-! ## A210315.P18389775675661230010

`A210320(A167614(n+1))/floor(acot(n))!`
-/

namespace A210315.P18389775675661230010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210320 (A167614 (n + 1)).toNat : ℚ) / (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℚ)

end

end A210315.P18389775675661230010

/-! ## A210315.P2591545724744900413

`record[A210320(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A210315.P2591545724744900413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210315.P2591545724744900413

/-!
# A210316: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210316, there is no canonical definition to state claims against.
-/

/-! ## A210316.P9834060297760532252

`A210320(A166136(n+2)-2)`
-/

namespace A210316.P9834060297760532252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A166136 (n + 2) - 2).toNat

end

end A210316.P9834060297760532252

/-! ## A210316.P6487141425415035839

`A210320(A166136(n+1)+1+n)`
-/

namespace A210316.P6487141425415035839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A210316.P6487141425415035839

/-! ## A210316.P10245700599195609564

`A210320(A027379(n+2))`
-/

namespace A210316.P10245700599195609564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A027379 (n + 2)).toNat

end

end A210316.P10245700599195609564

/-! ## A210316.P3091370568261590806

`A210320(eq[3, A193592(n)])`
-/

namespace A210316.P3091370568261590806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210316.P3091370568261590806

/-!
# A210317: 

The programs for A210317, there is no canonical definition to state claims against.
-/

/-! ## A210317.P13930455309624440449

`A210320(A167614(n+3)+2)`
-/

namespace A210317.P13930455309624440449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A167614 (n + 3) + 2).toNat

end

end A210317.P13930455309624440449

/-! ## A210317.P11867037418069282927

`A210320(A027379(n+2)+8)`
-/

namespace A210317.P11867037418069282927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A027379 (n + 2) + 8).toNat

end

end A210317.P11867037418069282927

/-!
# A210318: 

The programs for A210318, there is no canonical definition to state claims against.
-/

/-! ## A210318.P9706964525900988307

`A210320(A052905(n+3))`
-/

namespace A210318.P9706964525900988307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (A052905 (n + 3)).toNat

end

end A210318.P9706964525900988307

/-!
# A210319: 

The programs for A210319, there is no canonical definition to state claims against.
-/

/-! ## A210319.P1366114142653769106

`A210320(eq[6, A193592(n)])`
-/

namespace A210319.P1366114142653769106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210319.P1366114142653769106

/-!
# A210321: Number of 4-divided binary words of length n.

The programs for A210321, there is no canonical definition to state claims against.
-/

/-! ## A210321.P3476164974616829743

`A352853(n)%A195159(A276534(n))`
-/

namespace A210321.P3476164974616829743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352853 n) (A195159 (A276534 n).toNat)

end

end A210321.P3476164974616829743

/-! ## A210321.P14990511817144925387

`A085860(A001787(n)*A049810(n+1))`
-/

namespace A210321.P14990511817144925387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A001787 n * A049810 (n + 1)).toNat

end

end A210321.P14990511817144925387

/-! ## A210321.P1183542787188078271

`A001268(n)%A299759(A003136(3*n+2))`
-/

namespace A210321.P1183542787188078271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001268 n) (A299759 (A003136 (3 * n + 2)).toNat)

end

end A210321.P1183542787188078271

/-! ## A210321.P6229527041677927618

`A049639(and(A000110(n), A352109(2*(n+2))))`
-/

namespace A210321.P6229527041677927618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (Int.land (A000110 n) (A352109 (2 * (n + 2)))).toNat

end

end A210321.P6229527041677927618

/-! ## A210321.P9667268463331291889

`A242195(2*(n+1))%A381992(A219755(n+1))`
-/

namespace A210321.P9667268463331291889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242195 (2 * (n + 1))) (A381992 (A219755 (n + 1)).toNat)

end

end A210321.P9667268463331291889

/-!
# A210322: Number of 5-divided binary words of length n.

The programs for A210322, there is no canonical definition to state claims against.
-/

/-! ## A210322.P17644360685701585954

`6*A123497(A331575(n))`
-/

namespace A210322.P17644360685701585954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A123497 (A331575 n).toNat

end

end A210322.P17644360685701585954

/-! ## A210322.P13962481221196010436

`lcm(6, A171871(A060455(n)))`
-/

namespace A210322.P13962481221196010436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A171871 (A060455 n).toNat)

end

end A210322.P13962481221196010436

/-! ## A210322.P10410874468834832985

`6*A329566(A036633(n+1))`
-/

namespace A210322.P10410874468834832985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A329566 (A036633 (n + 1)).toNat

end

end A210322.P10410874468834832985

/-! ## A210322.P12363205502648205725

`∑[3*∑{p}[A000045(A319764(n)), #]]`
-/

namespace A210322.P12363205502648205725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A319764 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210322.P12363205502648205725

/-! ## A210322.P15299527178677711418

`A147795(C(n+1, 8))`
-/

namespace A210322.P15299527178677711418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (Nat.choose (n + 1) 8)

end

end A210322.P15299527178677711418

/-!
# A210323: Number of 2-divided words of length n over a 3-letter alphabet.

The programs for A210323, there is no canonical definition to state claims against.
-/

/-! ## A210323.P398342354097267314

`3^(n+1)-A001867(n+1)`
-/

namespace A210323.P398342354097267314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A001867 (n + 1)

end

end A210323.P398342354097267314

/-! ## A210323.P13619868783305705223

`∑[A008776(n)-Δ[A001867(n)]]`
-/

namespace A210323.P13619868783305705223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210323.P13619868783305705223

/-! ## A210323.P9021683751801187731

`Δ[-∑[A001867(n)-A000244(n)]]`
-/

namespace A210323.P9021683751801187731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A000244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210323.P9021683751801187731

/-! ## A210323.P7573553030648367308

`A034472(n+1)-A208724(n+1)`
-/

namespace A210323.P7573553030648367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) - A208724 (n + 1)

end

end A210323.P7573553030648367308

/-! ## A210323.P5393210952821478470

`∑{d}[n+1, A054718(#)-A027376(#)]`
-/

namespace A210323.P5393210952821478470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A054718 d - A027376 d)

end

end A210323.P5393210952821478470

/-!
# A210324: Number of 3-divided words of length n over a 3-letter alphabet.

The programs for A210324, there is no canonical definition to state claims against.
-/

/-! ## A210324.P16083055457972682818

`A335380(∑[A055004(n)²])`
-/

namespace A210324.P16083055457972682818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210324.P16083055457972682818

/-! ## A210324.P4304311776768140609

`A151294(n)-record[A136702(n)]`
-/

namespace A210324.P4304311776768140609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151294 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210324.P4304311776768140609

/-!
# A210325: Number of 4-divided words of length n over a 3-letter alphabet.

The programs for A210325, there is no canonical definition to state claims against.
-/

/-! ## A210325.P10812953546060843930

`∑[A316491(Δ[A218183(n)])]`
-/

namespace A210325.P10812953546060843930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210325.P10812953546060843930

/-! ## A210325.P13706012657308665819

`A025443(C(n, 2)*A149027(n))`
-/

namespace A210325.P13706012657308665819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 ((Nat.choose n 2 : ℤ) * A149027 n).toNat

end

end A210325.P13706012657308665819

/-! ## A210325.P12263733526058079676

`A127285(C(A293633(n+1)+1, 4))`
-/

namespace A210325.P12263733526058079676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (Nat.choose (A293633 (n + 1) + 1).toNat 4)

end

end A210325.P12263733526058079676

/-!
# A210326: Number of 5-divided words of length n over a 3-letter alphabet.

The programs for A210326, there is no canonical definition to state claims against.
-/

/-! ## A210326.P5469426150125100518

`xor(A051724(A002619(n+1)), A139550(n))`
-/

namespace A210326.P5469426150125100518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051724 (A002619 (n + 1)).toNat) (A139550 n)

end

end A210326.P5469426150125100518

/-! ## A210326.P3273635906933665693

`A065714(A219952(n))`
-/

namespace A210326.P3273635906933665693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A219952 n).toNat

end

end A210326.P3273635906933665693

/-! ## A210326.P18045822552199884966

`A049597(A269371(n!))`
-/

namespace A210326.P18045822552199884966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049597 (A269371 (Nat.factorial n)).toNat

end

end A210326.P18045822552199884966

/-! ## A210326.P10232444777217994184

`A144979(A147355(n+2))`
-/

namespace A210326.P10232444777217994184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144979 (A147355 (n + 2)).toNat

end

end A210326.P10232444777217994184

/-!
# A210327: 

The programs for A210327, there is no canonical definition to state claims against.
-/

/-! ## A210327.P14015997864103252094

`A210335(∑[4*n]+1)`
-/

namespace A210327.P14015997864103252094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210327.P14015997864103252094

/-!
# A210328: 1/4 of the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having two or three distinct clockwise edge differences.

The programs for A210328, there is no canonical definition to state claims against.
-/

/-! ## A210328.P416378030688763807

`A210335(∑[n]+1)`
-/

namespace A210328.P416378030688763807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210328.P416378030688763807

/-! ## A210328.P14739025246714474755

`record[root(A210335(n+1), A210341(n))]`
-/

namespace A210328.P14739025246714474755
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210335 (n + 1) : ℝ) ^ (1 / (A210341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210328.P14739025246714474755

/-! ## A210328.P14427970293365244143

`A210335(A000124(n))%A016942(n)`
-/

namespace A210328.P14427970293365244143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210335 (A000124 n).toNat) (A016942 n)

end

end A210328.P14427970293365244143

/-! ## A210328.P17910643056538617848

`or(A106404(n+1), A210335(A000124(n)))`
-/

namespace A210328.P17910643056538617848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106404 (n + 1)) (A210335 (A000124 n).toNat)

end

end A210328.P17910643056538617848

/-! ## A210328.P76313835031812237

`record[root(A210335(n+1), A135227(n))]`
-/

namespace A210328.P76313835031812237
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210335 (n + 1) : ℝ) ^ (1 / (A135227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210328.P76313835031812237

/-!
# A210329: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210329, there is no canonical definition to state claims against.
-/

/-! ## A210329.P16631093117819770218

`A210335(∑[n+1]+2)`
-/

namespace A210329.P16631093117819770218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210329.P16631093117819770218

/-! ## A210329.P4511119606439691113

`record[A210335(abs(A201163(n)))]`
-/

namespace A210329.P4511119606439691113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210329.P4511119606439691113

/-! ## A210329.P8365565207096141392

`record[A210335(A101881(n)+1)]`
-/

namespace A210329.P8365565207096141392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210329.P8365565207096141392

/-! ## A210329.P3024776693977615550

`record[root(A210335(n+3), A210341(n+3))]`
-/

namespace A210329.P3024776693977615550
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210335 (n + 3) : ℝ) ^ (1 / (A210341 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210329.P3024776693977615550

/-!
# A210330: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210330, there is no canonical definition to state claims against.
-/

/-! ## A210330.P5190718615484359061

`A210335(∑[n+2]+4)`
-/

namespace A210330.P5190718615484359061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210330.P5190718615484359061

/-! ## A210330.P5500744227071836163

`or(∑{e}[n+1, #-1], A210335(A167614(n+1)))`
-/

namespace A210330.P5500744227071836163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) (A210335 (A167614 (n + 1)).toNat)

end

end A210330.P5500744227071836163

/-! ## A210330.P2863076641963438110

`A210335(A167614(n+1))+A034561(n+1)`
-/

namespace A210330.P2863076641963438110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A167614 (n + 1)).toNat + A034561 (n + 1)

end

end A210330.P2863076641963438110

/-! ## A210330.P73198366802317005

`A210335(A167614(n+1))%A210350(n+1)`
-/

namespace A210330.P73198366802317005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210335 (A167614 (n + 1)).toNat) (A210350 (n + 1))

end

end A210330.P73198366802317005

/-!
# A210331: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210331, there is no canonical definition to state claims against.
-/

/-! ## A210331.P13925426174759915557

`A210335(A141214(n)+7)`
-/

namespace A210331.P13925426174759915557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A141214 n + 7).toNat

end

end A210331.P13925426174759915557

/-! ## A210331.P1237877092321553995

`A210335(A055999(n)+10)`
-/

namespace A210331.P1237877092321553995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A055999 n + 10).toNat

end

end A210331.P1237877092321553995

/-! ## A210331.P2755890517763717893

`A210335(A141214(n+1))`
-/

namespace A210331.P2755890517763717893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A141214 (n + 1)).toNat

end

end A210331.P2755890517763717893

/-!
# A210332: 

The programs for A210332, there is no canonical definition to state claims against.
-/

/-! ## A210332.P11520017289696293395

`A210335(C(n+5, 2)+5)`
-/

namespace A210332.P11520017289696293395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (Nat.choose (n + 5) 2 + 5)

end

end A210332.P11520017289696293395

/-! ## A210332.P4181274330765678126

`A210335(A056000(n)+15)`
-/

namespace A210332.P4181274330765678126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A056000 n + 15).toNat

end

end A210332.P4181274330765678126

/-!
# A210333: 

The programs for A210333, there is no canonical definition to state claims against.
-/

/-! ## A210333.P10588470476777137758

`A210335(A167499(n+4)+1)`
-/

namespace A210333.P10588470476777137758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A167499 (n + 4) + 1).toNat

end

end A210333.P10588470476777137758

/-! ## A210333.P7965131707333529140

`A210335(A033999(n)²+A056000(n+1)+15)`
-/

namespace A210333.P7965131707333529140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210335 (A033999 n ^ 2 + (A056000 (n + 1) + 15)).toNat

end

end A210333.P7965131707333529140

/-!
# A210336: Pairs of consecutive primes {p,q} for which the numbers of distinct residues of all factorials mod p and mod q are consecutive integers.

The programs for A210336, there is no canonical definition to state claims against.
-/

/-! ## A210336.P2820594025126951394

`p?[or(round(2*n/3), A002962(n+1))]`
-/

namespace A210336.P2820594025126951394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A002962 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210336.P2820594025126951394

/-! ## A210336.P16295761126487260306

`p?[A198318(2*n+1)+∑[C(2, ∑{e}[n+1, #+1])]]`
-/

namespace A210336.P16295761126487260306
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210336.P16295761126487260306

/-! ## A210336.P11705200847842201781

`p?[∑[A289234(A331509(n))]]`
-/

namespace A210336.P11705200847842201781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A331509 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210336.P11705200847842201781

/-!
# A210337: Sum of distinct residues of all factorials mod 2^n.

The programs for A210337, there is no canonical definition to state claims against.
-/

/-! ## A210337.P4662043528694524118

`∑[A340280(record[A047080(3*(n+1))])]`
-/

namespace A210337.P4662043528694524118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210337.P4662043528694524118

/-! ## A210337.P6647433823660429523

`A107028(n)-A074823(A363183(n))`
-/

namespace A210337.P6647433823660429523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107028 n - A074823 (A363183 n).toNat

end

end A210337.P6647433823660429523

/-! ## A210337.P13562963558075058325

`A234300(A087208(n)*A234300(n))`
-/

namespace A210337.P13562963558075058325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A087208 n * A234300 n).toNat

end

end A210337.P13562963558075058325

/-!
# A210338: Primes that can be represented exactly in two ways as a^2 + b^2 + c^2, 0 < a <= b <= c.

The programs for A210338, there is no canonical definition to state claims against.
-/

/-! ## A210338.P9457854268958413912

`p?[A025322(n+1)]`
-/

namespace A210338.P9457854268958413912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210338.P9457854268958413912

/-! ## A210338.P9139470939046579940

`p?[A223733(n+1)]`
-/

namespace A210338.P9139470939046579940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210338.P9139470939046579940

/-! ## A210338.P7622767522998602408

`p?[eq[2, A025427(n)]]`
-/

namespace A210338.P7622767522998602408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210338.P7622767522998602408

/-! ## A210338.P4742277638813686129

`eq[A025427(n), A092976(n)]`
-/

namespace A210338.P4742277638813686129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210338.P4742277638813686129

/-! ## A210338.P12955370025976604036

`eq[A025427(n), A225244(n)]`
-/

namespace A210338.P12955370025976604036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210338.P12955370025976604036

/-!
# A210341: Triangle generated by T(n,k) = Fibonacci(n-k+2)^k.

The programs for A210341, the canonical program `A210341.P8608090727078616868` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210341 has offset 0).

The definition of A210341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n)+2)^col(n)` (program `A210341.P8608090727078616868`, by `A210341.P8608090727078616868.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210341.P8608090727078616868

`A000045(row(n)-col(n)+2)^col(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210341

/-- `A000045(row(n)-col(n)+2)^col(n)` -/
def P8608090727078616868.Spec : Prop :=
  ∀ n, P8608090727078616868.a n = A210341 n

theorem P8608090727078616868.correct : P8608090727078616868.Spec := by
  intro n
  simp only [A210341]

end A210341

/-! ## A210341.P8798386869790848851

`A000045(row(n)+1-(col(n)+1)+2)^col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210341.P8798386869790848851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 2).toNat ^ SequenceMachineLib.triCol n

end

end A210341.P8798386869790848851

namespace A210341

/-- `A000045(row(n)+1-(col(n)+1)+2)^col(n)` -/
def P8798386869790848851.Spec : Prop :=
  ∀ n, P8798386869790848851.a n = A210341 n

theorem P8798386869790848851.correct : P8798386869790848851.Spec := by
  intro n
  simp only [A210341, Nat.add_sub_cancel, A210341.P8798386869790848851.a, A210341.P8608090727078616868.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A210341

/-! ## A210341.P7767828685371879568

`A053602(A099375(n))^A002262(n)`
-/

namespace A210341.P7767828685371879568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (A099375 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P7767828685371879568

namespace A210341

/-- `A053602(A099375(n))^A002262(n)` -/
def P7767828685371879568.Spec : Prop :=
  ∀ n, P7767828685371879568.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P3041406106345943056

`A104762(A080036(n))^A002262(n)`
-/

namespace A210341.P3041406106345943056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104762 (A080036 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P3041406106345943056

namespace A210341

/-- `A104762(A080036(n))^A002262(n)` -/
def P3041406106345943056.Spec : Prop :=
  ∀ n, P3041406106345943056.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P875846404288395853

`A193588(A061579(n))^A002262(n)`
-/

namespace A210341.P875846404288395853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193588 (A061579 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P875846404288395853

namespace A210341

/-- `A193588(A061579(n))^A002262(n)` -/
def P875846404288395853.Spec : Prop :=
  ∀ n, P875846404288395853.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P10768707741911026198

`A104762(A014132(n+1))^A002262(n)`
-/

namespace A210341.P10768707741911026198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104762 (A014132 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P10768707741911026198

namespace A210341

/-- `A104762(A014132(n+1))^A002262(n)` -/
def P10768707741911026198.Spec : Prop :=
  ∀ n, P10768707741911026198.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P10146914871932605641

`A000045(A025581(n)+2)^A002262(n)`
-/

namespace A210341.P10146914871932605641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A025581 n + 2).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P10146914871932605641

namespace A210341

/-- `A000045(A025581(n)+2)^A002262(n)` -/
def P10146914871932605641.Spec : Prop :=
  ∀ n, P10146914871932605641.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P11371179654976087124

`A000045(A004736(n+1)+1)^A002262(n)`
-/

namespace A210341.P11371179654976087124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A004736 (n + 1) + 1).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P11371179654976087124

namespace A210341

/-- `A000045(A004736(n+1)+1)^A002262(n)` -/
def P11371179654976087124.Spec : Prop :=
  ∀ n, P11371179654976087124.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P12882699945133236500

`A000045(log2(A090988(n+1))+1)^A002262(n)`
-/

namespace A210341.P12882699945133236500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ) + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P12882699945133236500

namespace A210341

/-- `A000045(log2(A090988(n+1))+1)^A002262(n)` -/
def P12882699945133236500.Spec : Prop :=
  ∀ n, P12882699945133236500.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P6571606052178429319

`A103323(A061579(n)+2)`
-/

namespace A210341.P6571606052178429319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103323 (A061579 n + 2).toNat

end

end A210341.P6571606052178429319

namespace A210341

/-- `A103323(A061579(n)+2)` -/
def P6571606052178429319.Spec : Prop :=
  ∀ n, P6571606052178429319.a n = A210341 n

end A210341

/-! ## A210341.P8291845738151457089

`A103323(A038722(n+1)+1)`
-/

namespace A210341.P8291845738151457089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103323 (A038722 (n + 1) + 1).toNat

end

end A210341.P8291845738151457089

namespace A210341

/-- `A103323(A038722(n+1)+1)` -/
def P8291845738151457089.Spec : Prop :=
  ∀ n, P8291845738151457089.a n = A210341 n

end A210341

/-! ## A210341.P4173708004365198126

`A268361(A057728(n+1))^A002262(n)`
-/

namespace A210341.P4173708004365198126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268361 (A057728 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P4173708004365198126

namespace A210341

/-- `A268361(A057728(n+1))^A002262(n)` -/
def P4173708004365198126.Spec : Prop :=
  ∀ n, P4173708004365198126.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P8160688670588196148

`A022290(A130321(n))^A002262(n)`
-/

namespace A210341.P8160688670588196148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022290 (A130321 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P8160688670588196148

namespace A210341

/-- `A022290(A130321(n))^A002262(n)` -/
def P8160688670588196148.Spec : Prop :=
  ∀ n, P8160688670588196148.a n = (A210341 n : ℚ)

end A210341

/-! ## A210341.P3446469965998753177

`A022290(A130321(n))^A191532(n)`
-/

namespace A210341.P3446469965998753177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022290 (A130321 n).toNat : ℚ) ^ (A191532 n : ℤ)

end

end A210341.P3446469965998753177

namespace A210341

/-- `A022290(A130321(n))^A191532(n)` -/
def P3446469965998753177.Spec : Prop :=
  ∀ n, P3446469965998753177.a n = (A210341 n : ℚ)

end A210341

/-!
# A210342: Row sums of triangle A210341.

The programs for A210342, the canonical program `A210342.P14222146850216605555` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210342 has offset 0).

The definition of A210342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210342.P14222146850216605555

`A135961(n+2)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210342

/-- `A135961(n+2)-1` -/
def P14222146850216605555.Spec : Prop :=
  ∀ n, P14222146850216605555.a n = A210342 n

theorem P14222146850216605555.correct : P14222146850216605555.Spec := by
  intro n
  simp only [A210342]

end A210342

/-! ## A210342.P1300988843568966949

`record[A135961(n)+A057428(n)]`
-/

namespace A210342.P1300988843568966949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135961 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210342.P1300988843568966949

namespace A210342

/-- `record[A135961(n)+A057428(n)]` -/
def P1300988843568966949.Spec : Prop :=
  ∀ n, P1300988843568966949.a n = A210342 n

end A210342

/-! ## A210342.P12413910159667744148

`record[A135961(n)-A057427(n)]`
-/

namespace A210342.P12413910159667744148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135961 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210342.P12413910159667744148

namespace A210342

/-- `record[A135961(n)-A057427(n)]` -/
def P12413910159667744148.Spec : Prop :=
  ∀ n, P12413910159667744148.a n = A210342 n

end A210342

/-! ## A210342.P8591115609867361559

`record[A135961(n)-A019426(2*n)]`
-/

namespace A210342.P8591115609867361559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135961 n - A019426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210342.P8591115609867361559

namespace A210342

/-- `record[A135961(n)-A019426(2*n)]` -/
def P8591115609867361559.Spec : Prop :=
  ∀ n, P8591115609867361559.a n = A210342 n

end A210342

/-! ## A210342.P1771901561460740895

`record[A135961(n)-A128966(A000217(n))]`
-/

namespace A210342.P1771901561460740895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135961 n - A128966 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210342.P1771901561460740895

namespace A210342

/-- `record[A135961(n)-A128966(A000217(n))]` -/
def P1771901561460740895.Spec : Prop :=
  ∀ n, P1771901561460740895.a n = A210342 n

end A210342

/-!
# A210343: a(n) = Fibonacci(n+1)^n.

The programs for A210343, the canonical program `A210343.P17608854723306712182` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210343 has offset 0).

The definition of A210343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)^n` (program `A210343.P17608854723306712182`, by `A210343.P17608854723306712182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210343.P17608854723306712182

`A000045(n+1)^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210343

/-- `A000045(n+1)^n` -/
def P17608854723306712182.Spec : Prop :=
  ∀ n, P17608854723306712182.a n = A210343 n

theorem P17608854723306712182.correct : P17608854723306712182.Spec := by
  intro n
  simp only [A210343]

end A210343

/-! ## A210343.P4251111169946195364

`Δ[round(ϕ*a(n-1))]^n` with `a(0)=1`
-/

namespace A210343.P4251111169946195364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A210343.P4251111169946195364

namespace A210343

/-- `Δ[round(ϕ*a(n-1))]^n` -/
def P4251111169946195364.Spec : Prop :=
  ∀ n, P4251111169946195364.a n = A210343 n

end A210343

/-! ## A210343.P8858113305648841840

`∑[a(n-1)+a(n-2)]^n` with `a(0)=1, a(1)=0`
-/

namespace A210343.P8858113305648841840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A210343.P8858113305648841840

namespace A210343

/-- `∑[a(n-1)+a(n-2)]^n` -/
def P8858113305648841840.Spec : Prop :=
  ∀ n, (P8858113305648841840.a n : ℤ) = A210343 n

end A210343

/-!
# A210344: Meandric numbers for a river crossing up to 16 parallel roads at n points.

The programs for A210344, there is no canonical definition to state claims against.
-/

/-! ## A210344.P3541514195270981937

`A210592(n)-A014382(A122888(n))`
-/

namespace A210344.P3541514195270981937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A014382 (A122888 n).toNat

end

end A210344.P3541514195270981937

/-! ## A210344.P17534501624978980907

`A210592(n)-A185284(A048313(n))`
-/

namespace A210344.P17534501624978980907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A185284 (A048313 n).toNat

end

end A210344.P17534501624978980907

/-! ## A210344.P8803177097910608355

`A210592(n)-A185284(A048340(n))`
-/

namespace A210344.P8803177097910608355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A185284 (A048340 n).toNat

end

end A210344.P8803177097910608355

/-! ## A210344.P3968088691386523694

`A206432(n)-A185284(A185236(n))`
-/

namespace A210344.P3968088691386523694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A185284 (A185236 n).toNat

end

end A210344.P3968088691386523694

/-! ## A210344.P10373661208511279667

`A210567(n)-A185284(A185236(n))`
-/

namespace A210344.P10373661208511279667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A185284 (A185236 n).toNat

end

end A210344.P10373661208511279667

/-!
# A210345: The number of degree sequences of simple graphs with n vertices with all even degrees.

The programs for A210345, there is no canonical definition to state claims against.
-/

/-! ## A210345.P16418723941557093035

`A038568(A006882(n)*A166444(n))`
-/

namespace A210345.P16418723941557093035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A006882 n * A166444 n).toNat

end

end A210345.P16418723941557093035

/-!
# A210346: The number of degree sequences of simple graphs with 2n vertices with all odd degrees.

The programs for A210346, there is no canonical definition to state claims against.
-/

/-! ## A210346.P17860607006942775697

`A210345(2*(n+1))`
-/

namespace A210346.P17860607006942775697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210345 (2 * (n + 1))

end

end A210346.P17860607006942775697

/-! ## A210346.P5156553535300757263

`record[A210345(xor(1, n)+1)]`
-/

namespace A210346.P5156553535300757263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210345 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210346.P5156553535300757263

/-! ## A210346.P2408295538348817020

`record[A210345(lcm(2, n)+1-n)]`
-/

namespace A210346.P2408295538348817020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210345 (Nat.lcm 2 n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210346.P2408295538348817020

/-! ## A210346.P2295084217656760762

`record[A210345(n+1)^(n%2)]`
-/

namespace A210346.P2295084217656760762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210345 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210346.P2295084217656760762

/-! ## A210346.P7651343336876228293

`record[A210345(n-∑{e}[and(n, -n), #]+1)]`
-/

namespace A210346.P7651343336876228293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210345 ((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210346.P7651343336876228293

/-!
# A210347: 

The programs for A210347, there is no canonical definition to state claims against.
-/

/-! ## A210347.P12559804574214074508

`A210355((n+1)²+n²)`
-/

namespace A210347.P12559804574214074508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 ((n + 1) ^ 2 + n ^ 2)

end

end A210347.P12559804574214074508

/-!
# A210348: 1/4 of the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210348, there is no canonical definition to state claims against.
-/

/-! ## A210348.P4488227087027744064

`A210355(∑[n]+1)`
-/

namespace A210348.P4488227087027744064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210348.P4488227087027744064

/-! ## A210348.P14234414265206592797

`record[root(A210355(n+1), A007318(n))]`
-/

namespace A210348.P14234414265206592797
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210355 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210348.P14234414265206592797

/-! ## A210348.P4721225326509431765

`record[root(A210355(n+1), A210341(n))]`
-/

namespace A210348.P4721225326509431765
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210355 (n + 1) : ℝ) ^ (1 / (A210341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210348.P4721225326509431765

/-! ## A210348.P16399013443938980782

`record[gcd(A002262(n), A210355(n+1))]`
-/

namespace A210348.P16399013443938980782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210348.P16399013443938980782

/-! ## A210348.P12991335108385758185

`A210355(A000124(n))+A185284(n)`
-/

namespace A210348.P12991335108385758185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (A000124 n).toNat + A185284 n

end

end A210348.P12991335108385758185

/-!
# A210349: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210349, there is no canonical definition to state claims against.
-/

/-! ## A210349.P771973065282894247

`A210355(∑[n+1]+2)`
-/

namespace A210349.P771973065282894247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210349.P771973065282894247

/-! ## A210349.P6330236487086323155

`record[gcd(A002262(n), A210355(n+2))]`
-/

namespace A210349.P6330236487086323155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210355 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210349.P6330236487086323155

/-!
# A210350: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210350, there is no canonical definition to state claims against.
-/

/-! ## A210350.P18207848655723596318

`A210355(∑[n+2]+4)`
-/

namespace A210350.P18207848655723596318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210350.P18207848655723596318

/-! ## A210350.P5272007954212159708

`lcm((-1)^n, A210355(A167614(n+1)))`
-/

namespace A210350.P5272007954212159708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A210355 (A167614 (n + 1)).toNat)

end

end A210350.P5272007954212159708

/-! ## A210350.P6938966555448103902

`or(A000007(n), A210355(A167614(n+1)))`
-/

namespace A210350.P6938966555448103902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210355 (A167614 (n + 1)).toNat)

end

end A210350.P6938966555448103902

/-! ## A210350.P13628723925657717464

`or(A000038(n), A210355(A167614(n+1)))`
-/

namespace A210350.P13628723925657717464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A210355 (A167614 (n + 1)).toNat)

end

end A210350.P13628723925657717464

/-! ## A210350.P7898286996647363891

`A297248(n+1)+A210355(A167614(n+1))`
-/

namespace A210350.P7898286996647363891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (n + 1) + A210355 (A167614 (n + 1)).toNat

end

end A210350.P7898286996647363891

/-!
# A210351: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210351, there is no canonical definition to state claims against.
-/

/-! ## A210351.P1474590072046455082

`A210355(A055999(n)+10)`
-/

namespace A210351.P1474590072046455082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (A055999 n + 10).toNat

end

end A210351.P1474590072046455082

/-! ## A210351.P7096472202704987567

`A210355(A167614(n+2)+1)`
-/

namespace A210351.P7096472202704987567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (A167614 (n + 2) + 1).toNat

end

end A210351.P7096472202704987567

/-! ## A210351.P9715997514778943059

`A210355(A052905(n+1)+2)`
-/

namespace A210351.P9715997514778943059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (A052905 (n + 1) + 2).toNat

end

end A210351.P9715997514778943059

/-! ## A210351.P21702382471615942

`A210355(lt[A210341(n+2), A210391(n)])`
-/

namespace A210351.P21702382471615942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210351.P21702382471615942

/-!
# A210353: 

The programs for A210353, there is no canonical definition to state claims against.
-/

/-! ## A210353.P10990868694511042755

`A210355(A167499(n+4)+1)`
-/

namespace A210353.P10990868694511042755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210355 (A167499 (n + 4) + 1).toNat

end

end A210353.P10990868694511042755

/-!
# A210356: Maximum modulus in the inverse of Hilbert's matrix.

The programs for A210356, there is no canonical definition to state claims against.
-/

/-! ## A210356.P12088772108293980382

`A348419(A210357(n+1)+∑[n])`
-/

namespace A210356.P12088772108293980382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348419 (A210357 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A210356.P12088772108293980382

/-!
# A210357: Location of the maximum modulus in the inverse of Hilbert's matrix.

The programs for A210357, the canonical program `A210357.P3827189753604429060` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210357 has offset 1).

The definition of A210357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210357.P12491881031618618825

`ceil(round(2*(n+1)*sqrt(2))/4)`
-/

namespace A210357.P12491881031618618825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)) : ℚ) / 4⌉

end

end A210357.P12491881031618618825

namespace A210357

/-- `ceil(round(2*(n+1)*sqrt(2))/4)` -/
def P12491881031618618825.Spec : Prop :=
  ∀ n, P12491881031618618825.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P3827189753604429060

`A110655(A022851(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210357

/-- `A110655(A022851(n+1))` -/
def P3827189753604429060.Spec : Prop :=
  ∀ n, P3827189753604429060.a n = A210357 (n + 1)

theorem P3827189753604429060.correct : P3827189753604429060.Spec := by
  intro n
  simp only [A210357, Nat.add_sub_cancel]

end A210357

/-! ## A210357.P751633904488238823

`A008619(A184624(n+1))`
-/

namespace A210357.P751633904488238823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184624 (n + 1)).toNat

end

end A210357.P751633904488238823

namespace A210357

/-- `A008619(A184624(n+1))` -/
def P751633904488238823.Spec : Prop :=
  ∀ n, P751633904488238823.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P2315504714424033176

`A065033(A184624(n+1)+1)`
-/

namespace A210357.P2315504714424033176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184624 (n + 1) + 1).toNat

end

end A210357.P2315504714424033176

namespace A210357

/-- `A065033(A184624(n+1)+1)` -/
def P2315504714424033176.Spec : Prop :=
  ∀ n, P2315504714424033176.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P8179002816588254679

`round((A001951(A008574(n+1))+3)/8)`
-/

namespace A210357.P8179002816588254679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001951 (A008574 (n + 1)).toNat + 3 : ℚ) / 8)

end

end A210357.P8179002816588254679

namespace A210357

/-- `round((A001951(A008574(n+1))+3)/8)` -/
def P8179002816588254679.Spec : Prop :=
  ∀ n, P8179002816588254679.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P10447459720535244095

`A000194(or(A000096(n), A054390(n)))`
-/

namespace A210357.P10447459720535244095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A000096 n) (A054390 n)).toNat

end

end A210357.P10447459720535244095

namespace A210357

/-- `A000194(or(A000096(n), A054390(n)))` -/
def P10447459720535244095.Spec : Prop :=
  ∀ n, P10447459720535244095.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P4873843333519384716

`A000194(A007401(n+1)+A000217(n)-A000194(n))`
-/

namespace A210357.P4873843333519384716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A007401 (n + 1) + (A000217 n - A000194 n)).toNat

end

end A210357.P4873843333519384716

namespace A210357

/-- `A000194(A007401(n+1)+A000217(n)-A000194(n))` -/
def P4873843333519384716.Spec : Prop :=
  ∀ n, P4873843333519384716.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P16668448464390172062

`A204166(A111802(n+1))`
-/

namespace A210357.P16668448464390172062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A111802 (n + 1)).toNat

end

end A210357.P16668448464390172062

namespace A210357

/-- `A204166(A111802(n+1))` -/
def P16668448464390172062.Spec : Prop :=
  ∀ n, P16668448464390172062.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P10840667769194304482

`A204164(A389317(n+1))`
-/

namespace A210357.P10840667769194304482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A389317 (n + 1)).toNat

end

end A210357.P10840667769194304482

namespace A210357

/-- `A204164(A389317(n+1))` -/
def P10840667769194304482.Spec : Prop :=
  ∀ n, P10840667769194304482.a n = A210357 (n + 1)

end A210357

/-! ## A210357.P164462517528976702

`A339183(A213398(n+1))`
-/

namespace A210357.P164462517528976702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A213398 (n + 1)).toNat

end

end A210357.P164462517528976702

namespace A210357

/-- `A339183(A213398(n+1))` -/
def P164462517528976702.Spec : Prop :=
  ∀ n, P164462517528976702.a n = A210357 (n + 1)

end A210357

/-!
# A210359: Number of rows of Pascal's triangle in which the maximal number of prime factors is n.

The programs for A210359, there is no canonical definition to state claims against.
-/

/-! ## A210359.P9777364069694509387

`A293164(A027965(3*n+4))+A079870(n+1)`
-/

namespace A210359.P9777364069694509387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293164 (A027965 (3 * n + 4)).toNat + A079870 (n + 1)

end

end A210359.P9777364069694509387

/-!
# A210360: Prime numbers p such that x^2 + x + p produces primes for x = 0..1 but not x = 2.

The programs for A210360, the canonical program `A210360.P3038244278204255362` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210360 has offset 1).

The definition of A210360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210360.P2694425821777234399

`p?[A140555(n+1)+2]-2`
-/

namespace A210360.P2694425821777234399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A210360.P2694425821777234399

namespace A210360

/-- `p?[A140555(n+1)+2]-2` -/
def P2694425821777234399.Spec : Prop :=
  ∀ n, P2694425821777234399.a n = A210360 (n + 1)

end A210360

/-! ## A210360.P11727749541836518267

`∩[A001359(n+1), A140555(n+1)]`
-/

namespace A210360.P11727749541836518267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P11727749541836518267

namespace A210360

/-- `∩[A001359(n+1), A140555(n+1)]` -/
def P11727749541836518267.Spec : Prop :=
  ∀ n, (P11727749541836518267.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P6219305581100974369

`∩[A001838(n+1), A140555(n+1)]`
-/

namespace A210360.P6219305581100974369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P6219305581100974369

namespace A210360

/-- `∩[A001838(n+1), A140555(n+1)]` -/
def P6219305581100974369.Spec : Prop :=
  ∀ n, (P6219305581100974369.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P12624277004741508401

`∩[A054799(n+1), A140555(n+1)]`
-/

namespace A210360.P12624277004741508401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P12624277004741508401

namespace A210360

/-- `∩[A054799(n+1), A140555(n+1)]` -/
def P12624277004741508401.Spec : Prop :=
  ∀ n, (P12624277004741508401.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P57164161252093601

`∩[A063693(n+1), A140555(n+1)]`
-/

namespace A210360.P57164161252093601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P57164161252093601

namespace A210360

/-- `∩[A063693(n+1), A140555(n+1)]` -/
def P57164161252093601.Spec : Prop :=
  ∀ n, (P57164161252093601.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P3182236261230980080

`∩[A063700(n+1), A140555(n+1)]`
-/

namespace A210360.P3182236261230980080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P3182236261230980080

namespace A210360

/-- `∩[A063700(n+1), A140555(n+1)]` -/
def P3182236261230980080.Spec : Prop :=
  ∀ n, (P3182236261230980080.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P15005371368435159631

`∩[A066147(n+1), A140555(n+1)]`
-/

namespace A210360.P15005371368435159631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P15005371368435159631

namespace A210360

/-- `∩[A066147(n+1), A140555(n+1)]` -/
def P15005371368435159631.Spec : Prop :=
  ∀ n, (P15005371368435159631.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P1544104138198084289

`∩[A140555(n+1), A181747(n+1)]`
-/

namespace A210360.P1544104138198084289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P1544104138198084289

namespace A210360

/-- `∩[A140555(n+1), A181747(n+1)]` -/
def P1544104138198084289.Spec : Prop :=
  ∀ n, (P1544104138198084289.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P6135190691919471159

`∩[A140555(n+1), A274212(n+1)]`
-/

namespace A210360.P6135190691919471159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P6135190691919471159

namespace A210360

/-- `∩[A140555(n+1), A274212(n+1)]` -/
def P6135190691919471159.Spec : Prop :=
  ∀ n, (P6135190691919471159.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P14716684189478895603

`∩[A140555(n+1), A280255(n+1)]`
-/

namespace A210360.P14716684189478895603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P14716684189478895603

namespace A210360

/-- `∩[A140555(n+1), A280255(n+1)]` -/
def P14716684189478895603.Spec : Prop :=
  ∀ n, (P14716684189478895603.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P3865964038532400618

`∩[A140555(n+1), A280590(n+1)]`
-/

namespace A210360.P3865964038532400618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P3865964038532400618

namespace A210360

/-- `∩[A140555(n+1), A280590(n+1)]` -/
def P3865964038532400618.Spec : Prop :=
  ∀ n, (P3865964038532400618.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P15943146902464153965

`∩[A072282(n+1), A140555(n+1)]`
-/

namespace A210360.P15943146902464153965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P15943146902464153965

namespace A210360

/-- `∩[A072282(n+1), A140555(n+1)]` -/
def P15943146902464153965.Spec : Prop :=
  ∀ n, (P15943146902464153965.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P17859420704144891906

`∩[A065873(n+1), A140555(n+1)]`
-/

namespace A210360.P17859420704144891906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P17859420704144891906

namespace A210360

/-- `∩[A065873(n+1), A140555(n+1)]` -/
def P17859420704144891906.Spec : Prop :=
  ∀ n, (P17859420704144891906.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P3038244278204255362

`p?[A067775(n+1)-2]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A210360

/-- `p?[A067775(n+1)-2]` -/
def P3038244278204255362.Spec : Prop :=
  ∀ n, P3038244278204255362.a n = A210360 (n + 1)

theorem P3038244278204255362.correct : P3038244278204255362.Spec := by
  intro n
  simp only [A210360, Nat.add_sub_cancel]

end A210360

/-! ## A210360.P14302952589301602643

`∩[A067532(n+1), A140555(n+1)]`
-/

namespace A210360.P14302952589301602643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P14302952589301602643

namespace A210360

/-- `∩[A067532(n+1), A140555(n+1)]` -/
def P14302952589301602643.Spec : Prop :=
  ∀ n, (P14302952589301602643.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P7681850944738883947

`p?[A040976(A258432(n+1))]`
-/

namespace A210360.P7681850944738883947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A258432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210360.P7681850944738883947

namespace A210360

/-- `p?[A040976(A258432(n+1))]` -/
def P7681850944738883947.Spec : Prop :=
  ∀ n, P7681850944738883947.a n = A210360 (n + 1)

end A210360

/-! ## A210360.P10592260395805450016

`A065091(eq[2, A208936(n+1)])`
-/

namespace A210360.P10592260395805450016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210360.P10592260395805450016

namespace A210360

/-- `A065091(eq[2, A208936(n+1)])` -/
def P10592260395805450016.Spec : Prop :=
  ∀ n, P10592260395805450016.a n = A210360 (n + 1)

end A210360

/-! ## A210360.P2331443089898894829

`∩[A040976(n+1), A140555(n+1)]`
-/

namespace A210360.P2331443089898894829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P2331443089898894829

namespace A210360

/-- `∩[A040976(n+1), A140555(n+1)]` -/
def P2331443089898894829.Spec : Prop :=
  ∀ n, (P2331443089898894829.a n : ℤ) = A210360 (n + 1)

end A210360

/-! ## A210360.P14368365835427920311

`filter[A140555(n+1), A353463(#)]`
-/

namespace A210360.P14368365835427920311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A210360.P14368365835427920311

namespace A210360

/-- `filter[A140555(n+1), A353463(#)]` -/
def P14368365835427920311.Spec : Prop :=
  ∀ n, P14368365835427920311.a n = A210360 (n + 1)

end A210360

/-! ## A210360.P3266562259117515944

`∩[A066692(n+1), A140555(n+1)]`
-/

namespace A210360.P3266562259117515944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210360.P3266562259117515944

namespace A210360

/-- `∩[A066692(n+1), A140555(n+1)]` -/
def P3266562259117515944.Spec : Prop :=
  ∀ n, (P3266562259117515944.a n : ℤ) = A210360 (n + 1)

end A210360

/-!
# A210361: Prime numbers p such that x^2 + x + p produces primes for x = 0..2 but not x = 3.

The programs for A210361, there is no canonical definition to state claims against.
-/

/-! ## A210361.P6437017909858852611

`A065091(eq[3, A208936(n+1)])`
-/

namespace A210361.P6437017909858852611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210361.P6437017909858852611

/-! ## A210361.P1138989496030349111

`p?[A052147(n+1)+1-A208936(n+1)]`
-/

namespace A210361.P1138989496030349111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (1 - A208936 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210361.P1138989496030349111

/-! ## A210361.P3243552476194105206

`p?[A052147(n+1)-A002837(A208936(n+1))]`
-/

namespace A210361.P3243552476194105206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A002837 (A208936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210361.P3243552476194105206

/-! ## A210361.P6571665836825940764

`p?[eq[3, A208645(n)]]`
-/

namespace A210361.P6571665836825940764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210361.P6571665836825940764

/-! ## A210361.P8668094454489213768

`eq[A026990(A107286(n)), A208645(n)]`
-/

namespace A210361.P8668094454489213768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026990 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210361.P8668094454489213768

/-!
# A210362: Prime numbers p such that x^2 + x + p produces primes for x = 0..3 but not x = 4.

The programs for A210362, there is no canonical definition to state claims against.
-/

/-! ## A210362.P13814617301032192284

`A065091(eq[4, A208936(n+1)])`
-/

namespace A210362.P13814617301032192284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210362.P13814617301032192284

/-! ## A210362.P12461254574553116736

`p?[A052147(n+1)-A032741(A208936(n+1))]`
-/

namespace A210362.P12461254574553116736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A032741 (A208936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210362.P12461254574553116736

/-! ## A210362.P16101064937723289037

`p?[eq[4, A208645(n)]]`
-/

namespace A210362.P16101064937723289037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210362.P16101064937723289037

/-! ## A210362.P11742401236097284395

`eq[A000005(A008486(n)), A208645(n)]`
-/

namespace A210362.P11742401236097284395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210362.P11742401236097284395

/-! ## A210362.P2188514854206992384

`eq[A055999(A032741(n)), A208645(n)]`
-/

namespace A210362.P2188514854206992384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210362.P2188514854206992384

/-!
# A210363: Prime numbers p such that x^2 + x + p produces primes for x = 0..4 but not x = 5.

The programs for A210363, there is no canonical definition to state claims against.
-/

/-! ## A210363.P55748088788183013

`filter[A187057(n+2), A011717(#)]`
-/

namespace A210363.P55748088788183013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011717 (f1 j).toNat = 1) n)

end

end A210363.P55748088788183013

/-!
# A210365: Prime numbers p such that x^2 + x + p produces primes for x = 0..6 but not x = 7.

The programs for A210365, there is no canonical definition to state claims against.
-/

/-! ## A210365.P573288947052195678

`A144051(lt[A067267(n+2), A340844(n+5)])`
-/

namespace A210365.P573288947052195678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067267 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340844 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210365.P573288947052195678

/-!
# A210366: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant >=n.

The programs for A210366, there is no canonical definition to state claims against.
-/

/-! ## A210366.P13003317274343087671

`A210291(n)+A210282(n)`
-/

namespace A210366.P13003317274343087671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210291 n + A210282 n

end

end A210366.P13003317274343087671

/-! ## A210366.P14413027441535301766

`A210282(n)+A210290(n)-(A211031(n)+A059306(n))/2`
-/

namespace A210366.P14413027441535301766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210282 n : ℚ) + ((A210290 n : ℚ) - (A211031 n + A059306 n : ℚ) / 2)

end

end A210366.P14413027441535301766

/-! ## A210366.P17835430933028954974

`A210282(n)+A210290(n)-A209995(n)`
-/

namespace A210366.P17835430933028954974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210282 n + (A210290 n - A209995 n)

end

end A210366.P17835430933028954974

/-! ## A210366.P6723954506236084470

`A210282(n)+(A059306(n)+(n+1)²²)/2-A209995(n)`
-/

namespace A210366.P6723954506236084470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210282 n : ℚ) + ((A059306 n + (((n + 1) ^ 2) ^ 2 : ℤ) : ℚ) / 2 - (A209995 n : ℚ))

end

end A210366.P6723954506236084470

/-! ## A210366.P13995970981049875507

`A210282(n)+A210371(n)+A210373(n)-A209995(n)`
-/

namespace A210366.P13995970981049875507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210282 n + (A210371 n + (A210373 n - A209995 n))

end

end A210366.P13995970981049875507

/-! ## A210366.P13694483671788992980

`A210282(n)+A210371(n)+A210370(n)/2-A209995(n)`
-/

namespace A210366.P13694483671788992980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210282 n : ℚ) + ((A210371 n : ℚ) + (A210370 n : ℚ) / 2 - (A209995 n : ℚ))

end

end A210366.P13694483671788992980

/-!
# A210367: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant >= 2n.

The programs for A210367, there is no canonical definition to state claims against.
-/

/-! ## A210367.P7305521983323795943

`A193330(A305001(n))+A112742(n)`
-/

namespace A210367.P7305521983323795943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A305001 n).toNat + A112742 n

end

end A210367.P7305521983323795943

/-!
# A210368: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant >= 3n.

The programs for A210368, there is no canonical definition to state claims against.
-/

/-! ## A210368.P10618905227446128181

`A336159(A085389(n+1))-n`
-/

namespace A210368.P10618905227446128181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336159 (A085389 (n + 1)).toNat - (n : ℤ)

end

end A210368.P10618905227446128181

/-!
# A210369: Number of 2 X 2 matrices with all terms in {0,1,...,n} and even determinant.

The programs for A210369, the canonical program `A210369.P18437762649926604915` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210369 has offset 0).

The definition of A210369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210369.P18437762649926604915

`((n+1)²-ceil(n/2)²)²+ceil(n/2)^4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210369

/-- `((n+1)²-ceil(n/2)²)²+ceil(n/2)^4` -/
def P18437762649926604915.Spec : Prop :=
  ∀ n, P18437762649926604915.a n = A210369 n

theorem P18437762649926604915.correct : P18437762649926604915.Spec := by
  intro n
  simp only [A210369]

end A210369

/-! ## A210369.P4742580066133973148

`ogf((1+9x+51x^2+59x^3+83x^4+27x^5+9x^6+x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A210369.P4742580066133973148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 51, 59, 83, 27, 9, 1] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A210369.P4742580066133973148

namespace A210369

/-- `ogf((1+9x+51x^2+59x^3+83x^4+27x^5+9x^6+x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P4742580066133973148.Spec : Prop :=
  ∀ n, P4742580066133973148.a n = A210369 n

end A210369

/-!
# A210370: Number of 2 X 2 matrices with all elements in {0,1,...,n} and odd determinant.

The programs for A210370, the canonical program `A210370.P15654090158491504536` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210370 has offset 0).

The definition of A210370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210370.P15654090158491504536

`2*((n+1)²-ceil(n/2)²)*ceil(n/2)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210370

/-- `2*((n+1)²-ceil(n/2)²)*ceil(n/2)²` -/
def P15654090158491504536.Spec : Prop :=
  ∀ n, P15654090158491504536.a n = A210370 n

theorem P15654090158491504536.correct : P15654090158491504536.Spec := by
  intro n
  simp only [A210370]

end A210370

/-! ## A210370.P7295627324569773389

`ogf((6x+10x^2+56x^3+32x^4+34x^5+6x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A210370.P7295627324569773389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10, 56, 32, 34, 6] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A210370.P7295627324569773389

namespace A210370

/-- `ogf((6x+10x^2+56x^3+32x^4+34x^5+6x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P7295627324569773389.Spec : Prop :=
  ∀ n, P7295627324569773389.a n = A210370 n

end A210370

/-! ## A210370.P6294410980494723576

`(n+1)²²-A210369(n)`
-/

namespace A210370.P6294410980494723576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A210369 n

end

end A210370.P6294410980494723576

namespace A210370

/-- `(n+1)²²-A210369(n)` -/
def P6294410980494723576.Spec : Prop :=
  ∀ n, P6294410980494723576.a n = A210370 n

theorem P6294410980494723576.correct : P6294410980494723576.Spec := by
  intro n
  simp only [A210370, Nat.add_sub_cancel, A210370.P6294410980494723576.a, A210370.P15654090158491504536.a, A210369, A210369.P18437762649926604915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210370

/-! ## A210370.P3922700210501379856

`A210373(n)+A210373(n)`
-/

namespace A210370.P3922700210501379856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210373 n + A210373 n

end

end A210370.P3922700210501379856

namespace A210370

/-- `A210373(n)+A210373(n)` -/
def P3922700210501379856.Spec : Prop :=
  ∀ n, P3922700210501379856.a n = A210370 n

end A210370

/-! ## A210370.P11309191474401758904

`A211064(n+1)-A212893(n)`
-/

namespace A210370.P11309191474401758904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A212893 n

end

end A210370.P11309191474401758904

namespace A210370

/-- `A211064(n+1)-A212893(n)` -/
def P11309191474401758904.Spec : Prop :=
  ∀ n, P11309191474401758904.a n = A210370 n

end A210370

/-! ## A210370.P11814877850820015825

`A062801(n)-2*A210372(n)`
-/

namespace A210370.P11814877850820015825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062801 n - 2 * A210372 n

end

end A210370.P11814877850820015825

namespace A210370

/-- `A062801(n)-2*A210372(n)` -/
def P11814877850820015825.Spec : Prop :=
  ∀ n, P11814877850820015825.a n = A210370 n

end A210370

/-!
# A210371: Number of 2 X 2 matrices with all elements in {0,1,...,n} and nonnegative even determinant.

The programs for A210371, there is no canonical definition to state claims against.
-/

/-! ## A210371.P81344136363866030

`(A210369(n)+A059306(n))/2`
-/

namespace A210371.P81344136363866030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210369 n + A059306 n : ℚ) / 2

end

end A210371.P81344136363866030

/-! ## A210371.P14378168625521774403

`A210372(n)+A059306(n)`
-/

namespace A210371.P14378168625521774403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210372 n + A059306 n

end

end A210371.P14378168625521774403

/-! ## A210371.P1924562985391501917

`A210369(n)-A210372(n)`
-/

namespace A210371.P1924562985391501917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n - A210372 n

end

end A210371.P1924562985391501917

/-! ## A210371.P2735953294940800012

`A210290(n)-A210373(n)`
-/

namespace A210371.P2735953294940800012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - A210373 n

end

end A210371.P2735953294940800012

/-! ## A210371.P10596222298913226408

`A210290(n)-A210370(n)/2`
-/

namespace A210371.P10596222298913226408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210290 n : ℚ) - (A210370 n : ℚ) / 2

end

end A210371.P10596222298913226408

/-! ## A210371.P9574058045574744800

`A210372(n)+∑[A016813(A209295(n))]`
-/

namespace A210371.P9574058045574744800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A209295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210372 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210371.P9574058045574744800

/-!
# A210372: Number of 2 X 2 matrices with all elements in {0,1,...,n} and positive even determinant.

The programs for A210372, there is no canonical definition to state claims against.
-/

/-! ## A210372.P16912544258260150118

`(A210369(n)-A059306(n))/2`
-/

namespace A210372.P16912544258260150118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210369 n - A059306 n : ℚ) / 2

end

end A210372.P16912544258260150118

/-! ## A210372.P9638584757648982973

`A210371(n)-A059306(n)`
-/

namespace A210372.P9638584757648982973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n - A059306 n

end

end A210372.P9638584757648982973

/-! ## A210372.P1056734333193154747

`A210369(n)-A210371(n)`
-/

namespace A210372.P1056734333193154747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n - A210371 n

end

end A210372.P1056734333193154747

/-! ## A210372.P7148756291379932206

`A210290(n)-(A210373(n)+A059306(n))`
-/

namespace A210372.P7148756291379932206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - (A210373 n + A059306 n)

end

end A210372.P7148756291379932206

/-! ## A210372.P10447410721429556152

`A210369(n)+A210373(n)-A210290(n)`
-/

namespace A210372.P10447410721429556152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n + (A210373 n - A210290 n)

end

end A210372.P10447410721429556152

/-! ## A210372.P11811670708168888146

`A210369(n)%(A210371(n)%A183761(n+1))`
-/

namespace A210372.P11811670708168888146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210369 n) (Int.tmod (A210371 n) (A183761 (n + 1)))

end

end A210372.P11811670708168888146

/-!
# A210373: Number of 2 X 2 matrices with all elements in {0,1,...,n} and positive odd determinant.

The programs for A210373, the canonical program `A210373.P8863700972329343371` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210373 has offset 0).

The definition of A210373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210373.P1539566459651087819

`ogf((3x+5x^2+28x^3+16x^4+17x^5+3x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A210373.P1539566459651087819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5, 28, 16, 17, 3] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A210373.P1539566459651087819

namespace A210373

/-- `ogf((3x+5x^2+28x^3+16x^4+17x^5+3x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P1539566459651087819.Spec : Prop :=
  ∀ n, P1539566459651087819.a n = A210373 n

end A210373

/-! ## A210373.P8863700972329343371

`(n+n%2)²*(3*n+2+n%2)*(n+2-n%2)/16`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210373

/-- `(n+n%2)²*(3*n+2+n%2)*(n+2-n%2)/16` -/
def P8863700972329343371.Spec : Prop :=
  ∀ n, P8863700972329343371.a n = (A210373 n : ℚ)

end A210373

/-! ## A210373.P7368913037475030346

`A210370(n)/2`
-/

namespace A210373.P7368913037475030346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210370 n : ℚ) / 2

end

end A210373.P7368913037475030346

namespace A210373

/-- `A210370(n)/2` -/
def P7368913037475030346.Spec : Prop :=
  ∀ n, P7368913037475030346.a n = (A210373 n : ℚ)

end A210373

/-! ## A210373.P17212685220481821451

`ceil(n/2)²*∑[n*gcd(2, n)+1]`
-/

namespace A210373.P17212685220481821451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210373.P17212685220481821451

namespace A210373

/-- `ceil(n/2)²*∑[n*gcd(2, n)+1]` -/
def P17212685220481821451.Spec : Prop :=
  ∀ n, P17212685220481821451.a n = A210373 n

end A210373

/-! ## A210373.P1931321854596445236

`((n+1)²-ceil(n/2)²)*ceil(n/2)²`
-/

namespace A210373.P1931321854596445236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - ⌈(n : ℚ) / 2⌉ ^ 2) * ⌈(n : ℚ) / 2⌉ ^ 2

end

end A210373.P1931321854596445236

namespace A210373

/-- `((n+1)²-ceil(n/2)²)*ceil(n/2)²` -/
def P1931321854596445236.Spec : Prop :=
  ∀ n, P1931321854596445236.a n = A210373 n

end A210373

/-! ## A210373.P6030277589709138915

`(n%2+n)²*(3*n+2+n%2)*(n+2-n%2)/16`
-/

namespace A210373.P6030277589709138915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n % 2 + n) ^ 2 * (3 * n + 2 + n % 2) : ℕ) : ℤ) * ((n + 2 : ℤ) - ((n % 2 : ℕ) : ℤ)) : ℚ) / 16

end

end A210373.P6030277589709138915

namespace A210373

/-- `(n%2+n)²*(3*n+2+n%2)*(n+2-n%2)/16` -/
def P6030277589709138915.Spec : Prop :=
  ∀ n, P6030277589709138915.a n = (A210373 n : ℚ)

end A210373

/-! ## A210373.P16594315876861239847

`A212765(n)+A212762(n)`
-/

namespace A210373.P16594315876861239847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 n + A212762 n

end

end A210373.P16594315876861239847

namespace A210373

/-- `A212765(n)+A212762(n)` -/
def P16594315876861239847.Spec : Prop :=
  ∀ n, P16594315876861239847.a n = A210373 n

end A210373

/-! ## A210373.P5854888794706884657

`(A211064(n+1)-A212893(n))/2`
-/

namespace A210373.P5854888794706884657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211064 (n + 1) - A212893 n : ℚ) / 2

end

end A210373.P5854888794706884657

namespace A210373

/-- `(A211064(n+1)-A212893(n))/2` -/
def P5854888794706884657.Spec : Prop :=
  ∀ n, P5854888794706884657.a n = (A210373 n : ℚ)

end A210373

/-! ## A210373.P4808032959593562862

`A212765(n)+sqrt(A212765(n)*A212766(n))`
-/

namespace A210373.P4808032959593562862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212765 n : ℝ) + Real.sqrt (A212765 n * A212766 n : ℝ)

end

end A210373.P4808032959593562862

namespace A210373

/-- `A212765(n)+sqrt(A212765(n)*A212766(n))` -/
def P4808032959593562862.Spec : Prop :=
  ∀ n, P4808032959593562862.a n = (A210373 n : ℝ)

end A210373

/-! ## A210373.P10616448428159567370

`A210290(n)-A210371(n)`
-/

namespace A210373.P10616448428159567370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - A210371 n

end

end A210373.P10616448428159567370

namespace A210373

/-- `A210290(n)-A210371(n)` -/
def P10616448428159567370.Spec : Prop :=
  ∀ n, P10616448428159567370.a n = A210373 n

end A210373

/-! ## A210373.P10936903483303705481

`A062801(n)/2-A210372(n)`
-/

namespace A210373.P10936903483303705481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062801 n : ℚ) / 2 - (A210372 n : ℚ)

end

end A210373.P10936903483303705481

namespace A210373

/-- `A062801(n)/2-A210372(n)` -/
def P10936903483303705481.Spec : Prop :=
  ∀ n, P10936903483303705481.a n = (A210373 n : ℚ)

end A210373

/-!
# A210374: Number of 2 X 2 matrices with all terms in {0,1,...,n} and (sum of terms) = n+2.

The programs for A210374, the canonical program `A210374.P7942064594094104247` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210374 has offset 0).

The definition of A210374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210374.P13763633497569906472

`a(n-1)+C(n+4, 2)` with `a(0)=0, a(1)=4`
-/

namespace A210374.P13763633497569906472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + Nat.choose (n + 4) 2

end

end A210374.P13763633497569906472

namespace A210374

/-- `a(n-1)+C(n+4, 2)` -/
def P13763633497569906472.Spec : Prop :=
  ∀ n, (P13763633497569906472.a n : ℤ) = A210374 n

end A210374

/-! ## A210374.P9972433257108782055

`ogf((4x+3x^2-12x^3+6x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A210374.P9972433257108782055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3, -12, 6] [1, -4, 6, -4, 1] n

end

end A210374.P9972433257108782055

namespace A210374

/-- `ogf((4x+3x^2-12x^3+6x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P9972433257108782055.Spec : Prop :=
  ∀ n, P9972433257108782055.a n = A210374 n

end A210374

/-! ## A210374.P6074048316536725073

`a(n-1)+∑[n+3]+3` with `a(0)=0, a(1)=4`
-/

namespace A210374.P6074048316536725073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A210374.P6074048316536725073

namespace A210374

/-- `a(n-1)+∑[n+3]+3` -/
def P6074048316536725073.Spec : Prop :=
  ∀ n, (P6074048316536725073.a n : ℤ) = A210374 n

end A210374

/-! ## A210374.P7942064594094104247

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=19, a(3)=40, a(4)=68`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210374

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7942064594094104247.Spec : Prop :=
  ∀ n, P7942064594094104247.a n = A210374 n

theorem P7942064594094104247.correct : P7942064594094104247.Spec := by
  intro n
  simp only [A210374]

end A210374

/-! ## A210374.P2564802586467621237

`∑[C(n+4, 2)%A034857(n+1)]`
-/

namespace A210374.P2564802586467621237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 4) 2 : ℤ) (A034857 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210374.P2564802586467621237

namespace A210374

/-- `∑[C(n+4, 2)%A034857(n+1)]` -/
def P2564802586467621237.Spec : Prop :=
  ∀ n, P2564802586467621237.a n = A210374 n

end A210374

/-! ## A210374.P15895509103473987435

`∑[A000217(n+3)%C(n+5, 5)]`
-/

namespace A210374.P15895509103473987435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 3)) (Nat.choose (n + 5) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210374.P15895509103473987435

namespace A210374

/-- `∑[A000217(n+3)%C(n+5, 5)]` -/
def P15895509103473987435.Spec : Prop :=
  ∀ n, P15895509103473987435.a n = A210374 n

end A210374

/-! ## A210374.P15826369285417936984

`∑[A000217(n+3)%A005891(n)]`
-/

namespace A210374.P15826369285417936984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 3)) (A005891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210374.P15826369285417936984

namespace A210374

/-- `∑[A000217(n+3)%A005891(n)]` -/
def P15826369285417936984.Spec : Prop :=
  ∀ n, P15826369285417936984.a n = A210374 n

end A210374

/-! ## A210374.P6804641457411623666

`record[abs(8-∑[∑[n]])-8]`
-/

namespace A210374.P6804641457411623666
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)| - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210374.P6804641457411623666

namespace A210374

/-- `record[abs(8-∑[∑[n]])-8]` -/
def P6804641457411623666.Spec : Prop :=
  ∀ n, P6804641457411623666.a n = A210374 n

end A210374

/-! ## A210374.P5483289319053722606

`∑[C(n+4, 2)%A273173(n)]`
-/

namespace A210374.P5483289319053722606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 4) 2 : ℤ) (A273173 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210374.P5483289319053722606

namespace A210374

/-- `∑[C(n+4, 2)%A273173(n)]` -/
def P5483289319053722606.Spec : Prop :=
  ∀ n, P5483289319053722606.a n = A210374 n

end A210374

/-!
# A210375: Number of 2 X 2 matrices with all terms in {0,1,...,n} and (sum of terms) = n + 3.

The programs for A210375, the canonical program `A210375.P15808739190161464043` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210375 has offset 0).

The definition of A210375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210375.P1466659713927006864

`ogf((x+12x^2-14x^3-4x^4+6x^5)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A210375.P1466659713927006864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 12, -14, -4, 6] [1, -4, 6, -4, 1] n

end

end A210375.P1466659713927006864

namespace A210375

/-- `ogf((x+12x^2-14x^3-4x^4+6x^5)/(1-4x+6x^2-4x^3+x^4))` -/
def P1466659713927006864.Spec : Prop :=
  ∀ n, P1466659713927006864.a n = A210375 n

end A210375

/-! ## A210375.P15808739190161464043

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=44, a(4)=80, a(5)=125`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210375

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15808739190161464043.Spec : Prop :=
  ∀ n, P15808739190161464043.a n = A210375 n

theorem P15808739190161464043.correct : P15808739190161464043.Spec := by
  intro n
  simp only [A210375]

end A210375

/-! ## A210375.P1223137082281792043

`a(n-1)+n+A052905(n)+9` with `a(0)=0, a(1)=1, a(2)=16`
-/

namespace A210375.P1223137082281792043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 16] fun n a =>
  a (n - 1) + (n : ℤ) + (A052905 n + 9)

end

end A210375.P1223137082281792043

namespace A210375

/-- `a(n-1)+n+A052905(n)+9` -/
def P1223137082281792043.Spec : Prop :=
  ∀ n, P1223137082281792043.a n = A210375 n

end A210375

/-! ## A210375.P2009578746059649256

`∑[record[A000217(n)%A339512(n)]]`
-/

namespace A210375.P2009578746059649256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A339512 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210375.P2009578746059649256

namespace A210375

/-- `∑[record[A000217(n)%A339512(n)]]` -/
def P2009578746059649256.Spec : Prop :=
  ∀ n, P2009578746059649256.a n = A210375 n

end A210375

/-! ## A210375.P12790418243321582294

`∑[record[∑[n]%A278601(n)]]`
-/

namespace A210375.P12790418243321582294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) (A278601 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210375.P12790418243321582294

namespace A210375

/-- `∑[record[∑[n]%A278601(n)]]` -/
def P12790418243321582294.Spec : Prop :=
  ∀ n, P12790418243321582294.a n = A210375 n

end A210375

/-! ## A210375.P10907124288663295875

`∑[record[A253145(n)%A052992(n)]]`
-/

namespace A210375.P10907124288663295875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A052992 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210375.P10907124288663295875

namespace A210375

/-- `∑[record[A253145(n)%A052992(n)]]` -/
def P10907124288663295875.Spec : Prop :=
  ∀ n, P10907124288663295875.a n = A210375 n

end A210375

/-! ## A210375.P4433858537652656874

`∑[record[A008805(2*n)%A052992(n)]]`
-/

namespace A210375.P4433858537652656874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008805 (2 * n)) (A052992 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210375.P4433858537652656874

namespace A210375

/-- `∑[record[A008805(2*n)%A052992(n)]]` -/
def P4433858537652656874.Spec : Prop :=
  ∀ n, P4433858537652656874.a n = A210375 n

end A210375

/-!
# A210376: Number of 2 X 2 matrices with all terms in {0,1,...,n} and (sum of terms) = n + 4.

The programs for A210376, the canonical program `A210376.P2037758100405243525` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210376 has offset 0).

The definition of A210376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210376.P8265714777504009676

`ogf((10x^2-15x^4+6x^6)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A210376.P8265714777504009676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 10, 0, -15, 0, 6] [1, -4, 6, -4, 1] n

end

end A210376.P8265714777504009676

namespace A210376

/-- `ogf((10x^2-15x^4+6x^6)/(1-4x+6x^2-4x^3+x^4))` -/
def P8265714777504009676.Spec : Prop :=
  ∀ n, P8265714777504009676.a n = A210376 n

end A210376

/-! ## A210376.P2037758100405243525

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=10, a(3)=40, a(4)=85, a(5)=140, a(6)=206`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210376

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2037758100405243525.Spec : Prop :=
  ∀ n, P2037758100405243525.a n = A210376 n

theorem P2037758100405243525.correct : P2037758100405243525.Spec := by
  intro n
  simp only [A210376]

end A210376

/-!
# A210377: Number of 2 X 2 matrices with all terms in {0,1,...,n} and (sum of terms) = n + 5.

The programs for A210377, the canonical program `A210377.P12918967370851588147` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210377 has offset 0).

The definition of A210377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210377.P6466073230630270951

`ogf((4x^2+15x^3-20x^4-4x^5+6x^7)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A210377.P6466073230630270951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 15, -20, -4, 0, 6] [1, -4, 6, -4, 1] n

end

end A210377.P6466073230630270951

namespace A210377

/-- `ogf((4x^2+15x^3-20x^4-4x^5+6x^7)/(1-4x+6x^2-4x^3+x^4))` -/
def P6466073230630270951.Spec : Prop :=
  ∀ n, P6466073230630270951.a n = A210377 n

end A210377

/-! ## A210377.P12918967370851588147

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=31, a(4)=80, a(5)=146, a(6)=224, a(7)=315`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210377

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12918967370851588147.Spec : Prop :=
  ∀ n, P12918967370851588147.a n = A210377 n

theorem P12918967370851588147.correct : P12918967370851588147.Spec := by
  intro n
  simp only [A210377]

end A210377

/-!
# A210378: Number of 2 X 2 matrices with all terms in {0,1,...,n} and even trace.

The programs for A210378, the canonical program `A210378.P14157685907776272504` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210378 has offset 0).

The definition of A210378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210378.P14157685907776272504

`(n+1)²*floor(((n+1)²+1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210378

/-- `(n+1)²*floor(((n+1)²+1)/2)` -/
def P14157685907776272504.Spec : Prop :=
  ∀ n, P14157685907776272504.a n = A210378 n

theorem P14157685907776272504.correct : P14157685907776272504.Spec := by
  intro n
  simp only [A210378]

end A210378

/-! ## A210378.P2583289649474424275

`ogf((1+6x+27x^2+28x^3+27x^4+6x^5+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A210378.P2583289649474424275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 27, 28, 27, 6, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A210378.P2583289649474424275

namespace A210378

/-- `ogf((1+6x+27x^2+28x^3+27x^4+6x^5+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P2583289649474424275.Spec : Prop :=
  ∀ n, P2583289649474424275.a n = A210378 n

end A210378

/-! ## A210378.P15800350543345876636

`(n+1)²*∑[or(1, n)]`
-/

namespace A210378.P15800350543345876636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210378.P15800350543345876636

namespace A210378

/-- `(n+1)²*∑[or(1, n)]` -/
def P15800350543345876636.Spec : Prop :=
  ∀ n, (P15800350543345876636.a n : ℤ) = A210378 n

end A210378

/-! ## A210378.P8361364201663745347

`(n+1)²*∑[a(n-2)+2]` with `a(0)=1, a(1)=1`
-/

namespace A210378.P8361364201663745347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210378.P8361364201663745347

namespace A210378

/-- `(n+1)²*∑[a(n-2)+2]` -/
def P8361364201663745347.Spec : Prop :=
  ∀ n, (P8361364201663745347.a n : ℤ) = A210378 n

end A210378

/-! ## A210378.P10577864492064180452

`∑[a(n-2)+2]/(n+1)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A210378.P10577864492064180452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A210378.P10577864492064180452

namespace A210378

/-- `∑[a(n-2)+2]/(n+1)^(-2)` -/
def P10577864492064180452.Spec : Prop :=
  ∀ n, P10577864492064180452.a n = (A210378 n : ℚ)

end A210378

/-! ## A210378.P11980983824091192088

`(n+1)²*∑[log2(gcd(2, n))]+(n+1)²*∑[n]`
-/

namespace A210378.P11980983824091192088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℝ)

end

end A210378.P11980983824091192088

namespace A210378

/-- `(n+1)²*∑[log2(gcd(2, n))]+(n+1)²*∑[n]` -/
def P11980983824091192088.Spec : Prop :=
  ∀ n, P11980983824091192088.a n = (A210378 n : ℝ)

end A210378

/-! ## A210378.P6216944163906246845

`(n+1)²²-A210379(n)`
-/

namespace A210378.P6216944163906246845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A210379 n

end

end A210378.P6216944163906246845

namespace A210378

/-- `(n+1)²²-A210379(n)` -/
def P6216944163906246845.Spec : Prop :=
  ∀ n, P6216944163906246845.a n = A210378 n

end A210378

/-! ## A210378.P6878440290458954400

`(n+1)²²-2*A212766(n)`
-/

namespace A210378.P6878440290458954400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - 2 * A212766 n

end

end A210378.P6878440290458954400

namespace A210378

/-- `(n+1)²²-2*A212766(n)` -/
def P6878440290458954400.Spec : Prop :=
  ∀ n, P6878440290458954400.a n = A210378 n

end A210378

/-! ## A210378.P9470250103520157161

`A130656(n+1)+A092364(n+1)`
-/

namespace A210378.P9470250103520157161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) + A092364 (n + 1)

end

end A210378.P9470250103520157161

namespace A210378

/-- `A130656(n+1)+A092364(n+1)` -/
def P9470250103520157161.Spec : Prop :=
  ∀ n, P9470250103520157161.a n = A210378 n

end A210378

/-! ## A210378.P15717526051536377949

`A303692(n+1)+A092365(n+1)`
-/

namespace A210378.P15717526051536377949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303692 (n + 1) + A092365 (n + 1)

end

end A210378.P15717526051536377949

namespace A210378

/-- `A303692(n+1)+A092365(n+1)` -/
def P15717526051536377949.Spec : Prop :=
  ∀ n, P15717526051536377949.a n = A210378 n

end A210378

/-! ## A210378.P17763182636863731249

`A128091(n+1)-A172517(n+1)`
-/

namespace A210378.P17763182636863731249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128091 (n + 1) - A172517 (n + 1)

end

end A210378.P17763182636863731249

namespace A210378

/-- `A128091(n+1)-A172517(n+1)` -/
def P17763182636863731249.Spec : Prop :=
  ∀ n, P17763182636863731249.a n = A210378 n

end A210378

/-! ## A210378.P3263567430685666398

`A077043(n+1)²-A002620(n+1)²`
-/

namespace A210378.P3263567430685666398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) ^ 2 - A002620 (n + 1) ^ 2

end

end A210378.P3263567430685666398

namespace A210378

/-- `A077043(n+1)²-A002620(n+1)²` -/
def P3263567430685666398.Spec : Prop :=
  ∀ n, P3263567430685666398.a n = A210378 n

end A210378

/-! ## A210378.P7050376982448722694

`A131479(n+1)+A000982(n+1)²`
-/

namespace A210378.P7050376982448722694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 (n + 1) + A000982 (n + 1) ^ 2

end

end A210378.P7050376982448722694

namespace A210378

/-- `A131479(n+1)+A000982(n+1)²` -/
def P7050376982448722694.Spec : Prop :=
  ∀ n, P7050376982448722694.a n = A210378 n

end A210378

/-! ## A210378.P14854615009384407202

`A129194(n+1)+n*A002411(n+1)`
-/

namespace A210378.P14854615009384407202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) + (n : ℤ) * A002411 (n + 1)

end

end A210378.P14854615009384407202

namespace A210378

/-- `A129194(n+1)+n*A002411(n+1)` -/
def P14854615009384407202.Spec : Prop :=
  ∀ n, P14854615009384407202.a n = A210378 n

end A210378

/-! ## A210378.P13937852570116787567

`A000982(n+1)+A000982(n+1)*A005563(n)`
-/

namespace A210378.P13937852570116787567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + A000982 (n + 1) * A005563 n

end

end A210378.P13937852570116787567

namespace A210378

/-- `A000982(n+1)+A000982(n+1)*A005563(n)` -/
def P13937852570116787567.Spec : Prop :=
  ∀ n, P13937852570116787567.a n = A210378 n

end A210378

/-! ## A210378.P7677047463193717183

`A000982(n+1)+A005843(n)*A005997(n+1)`
-/

namespace A210378.P7677047463193717183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + A005843 n * A005997 (n + 1)

end

end A210378.P7677047463193717183

namespace A210378

/-- `A000982(n+1)+A005843(n)*A005997(n+1)` -/
def P7677047463193717183.Spec : Prop :=
  ∀ n, P7677047463193717183.a n = A210378 n

end A210378

/-! ## A210378.P12759436050278686622

`record[A110514(n)²*∑[A110514(n)]]`
-/

namespace A210378.P12759436050278686622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210378.P12759436050278686622

namespace A210378

/-- `record[A110514(n)²*∑[A110514(n)]]` -/
def P12759436050278686622.Spec : Prop :=
  ∀ n, P12759436050278686622.a n = A210378 n

end A210378

/-! ## A210378.P7966410031048387004

`A036289(n+1)*A317614(n+1)/A000079(n+1)`
-/

namespace A210378.P7966410031048387004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (n + 1) * A317614 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A210378.P7966410031048387004

namespace A210378

/-- `A036289(n+1)*A317614(n+1)/A000079(n+1)` -/
def P7966410031048387004.Spec : Prop :=
  ∀ n, P7966410031048387004.a n = (A210378 n : ℚ)

end A210378

/-! ## A210378.P13023369203855476402

`A007758(n+1)*A317614(n+1)/A036289(n+1)`
-/

namespace A210378.P13023369203855476402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (n + 1) * A317614 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A210378.P13023369203855476402

namespace A210378

/-- `A007758(n+1)*A317614(n+1)/A036289(n+1)` -/
def P13023369203855476402.Spec : Prop :=
  ∀ n, P13023369203855476402.a n = (A210378 n : ℚ)

end A210378

/-! ## A210378.P12073585164979869022

`A128789(n+1)*A317614(n+1)/A007758(n+1)`
-/

namespace A210378.P12073585164979869022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 (n + 1) * A317614 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A210378.P12073585164979869022

namespace A210378

/-- `A128789(n+1)*A317614(n+1)/A007758(n+1)` -/
def P12073585164979869022.Spec : Prop :=
  ∀ n, P12073585164979869022.a n = (A210378 n : ℚ)

end A210378

/-!
# A210379: Number of 2 X 2 matrices with all terms in {0,1,...,n} and odd trace.

The programs for A210379, the canonical program `A210379.P3468153235779565725` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210379 has offset 0).

The definition of A210379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210379.P3468153235779565725

`(n+1)²*floor((n+1)²/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210379

/-- `(n+1)²*floor((n+1)²/2)` -/
def P3468153235779565725.Spec : Prop :=
  ∀ n, P3468153235779565725.a n = A210379 n

theorem P3468153235779565725.correct : P3468153235779565725.Spec := by
  intro n
  simp only [A210379]

end A210379

/-! ## A210379.P2477179569378754101

`ogf((8x+20x^2+40x^3+20x^4+8x^5)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A210379.P2477179569378754101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 20, 40, 20, 8] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A210379.P2477179569378754101

namespace A210379

/-- `ogf((8x+20x^2+40x^3+20x^4+8x^5)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P2477179569378754101.Spec : Prop :=
  ∀ n, P2477179569378754101.a n = A210379 n

end A210379

/-! ## A210379.P9284069484283684038

`2*(n+1)*∑[∑[lcm(2, n)]]`
-/

namespace A210379.P9284069484283684038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210379.P9284069484283684038

namespace A210379

/-- `2*(n+1)*∑[∑[lcm(2, n)]]` -/
def P9284069484283684038.Spec : Prop :=
  ∀ n, (P9284069484283684038.a n : ℤ) = A210379 n

end A210379

/-! ## A210379.P7354830299616038711

`(n+1)²*∑[and(1, n)+n]`
-/

namespace A210379.P7354830299616038711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210379.P7354830299616038711

namespace A210379

/-- `(n+1)²*∑[and(1, n)+n]` -/
def P7354830299616038711.Spec : Prop :=
  ∀ n, (P7354830299616038711.a n : ℤ) = A210379 n

end A210379

/-! ## A210379.P9216854313854038649

`floor((n+1)²*∑[a(n-2)+2])` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A210379.P9216854313854038649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210379.P9216854313854038649

namespace A210379

/-- `floor((n+1)²*∑[a(n-2)+2])` -/
def P9216854313854038649.Spec : Prop :=
  ∀ n, (P9216854313854038649.a n : ℤ) = A210379 n

end A210379

/-! ## A210379.P13006933350269061455

`∑[a(n-2)+2]/(n+1)^(-2)` with `a(0)=0, a(1)=2`
-/

namespace A210379.P13006933350269061455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A210379.P13006933350269061455

namespace A210379

/-- `∑[a(n-2)+2]/(n+1)^(-2)` -/
def P13006933350269061455.Spec : Prop :=
  ∀ n, P13006933350269061455.a n = (A210379 n : ℚ)

end A210379

/-! ## A210379.P4503090853238018676

`10*A212766(n)/5`
-/

namespace A210379.P4503090853238018676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A212766 n : ℚ) / 5

end

end A210379.P4503090853238018676

namespace A210379

/-- `10*A212766(n)/5` -/
def P4503090853238018676.Spec : Prop :=
  ∀ n, P4503090853238018676.a n = (A210379 n : ℚ)

end A210379

/-! ## A210379.P11837611415696249346

`(n+1)²²-A210378(n)`
-/

namespace A210379.P11837611415696249346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A210378 n

end

end A210379.P11837611415696249346

namespace A210379

/-- `(n+1)²²-A210378(n)` -/
def P11837611415696249346.Spec : Prop :=
  ∀ n, P11837611415696249346.a n = A210379 n

end A210379

/-! ## A210379.P4659459673010815074

`A212766(n)+A212766(n)`
-/

namespace A210379.P4659459673010815074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212766 n + A212766 n

end

end A210379.P4659459673010815074

namespace A210379

/-- `A212766(n)+A212766(n)` -/
def P4659459673010815074.Spec : Prop :=
  ∀ n, P4659459673010815074.a n = A210379 n

end A210379

/-! ## A210379.P817947618707844439

`∑[2*A110654(n)*A213399(n)]`
-/

namespace A210379.P817947618707844439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110654 n * A213399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210379.P817947618707844439

namespace A210379

/-- `∑[2*A110654(n)*A213399(n)]` -/
def P817947618707844439.Spec : Prop :=
  ∀ n, P817947618707844439.a n = A210379 n

end A210379

/-! ## A210379.P1758200890752824012

`A172517(n+1)+A035006(n+1)`
-/

namespace A210379.P1758200890752824012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172517 (n + 1) + A035006 (n + 1)

end

end A210379.P1758200890752824012

namespace A210379

/-- `A172517(n+1)+A035006(n+1)` -/
def P1758200890752824012.Spec : Prop :=
  ∀ n, P1758200890752824012.a n = A210379 n

end A210379

/-! ## A210379.P5837190246508043497

`2*A122657(n+1)/(n+1)`
-/

namespace A210379.P5837190246508043497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A122657 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A210379.P5837190246508043497

namespace A210379

/-- `2*A122657(n+1)/(n+1)` -/
def P5837190246508043497.Spec : Prop :=
  ∀ n, P5837190246508043497.a n = (A210379 n : ℚ)

end A210379

/-! ## A210379.P12395961912556342971

`A037270(n+1)-A129194(n+1)`
-/

namespace A210379.P12395961912556342971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n + 1) - A129194 (n + 1)

end

end A210379.P12395961912556342971

namespace A210379

/-- `A037270(n+1)-A129194(n+1)` -/
def P12395961912556342971.Spec : Prop :=
  ∀ n, P12395961912556342971.a n = A210379 n

end A210379

/-! ## A210379.P5885491745101903534

`A131479(n+1)+A007590(n+1)²`
-/

namespace A210379.P5885491745101903534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 (n + 1) + A007590 (n + 1) ^ 2

end

end A210379.P5885491745101903534

namespace A210379

/-- `A131479(n+1)+A007590(n+1)²` -/
def P5885491745101903534.Spec : Prop :=
  ∀ n, P5885491745101903534.a n = A210379 n

end A210379

/-! ## A210379.P12890107206484665352

`A172517(n+1)+Δ[A036464(n+1)]`
-/

namespace A210379.P12890107206484665352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172517 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210379.P12890107206484665352

namespace A210379

/-- `A172517(n+1)+Δ[A036464(n+1)]` -/
def P12890107206484665352.Spec : Prop :=
  ∀ n, P12890107206484665352.a n = A210379 n

end A210379

/-! ## A210379.P2692678682300265533

`Δ[A000538(n)]-(n+1)²*A000982(n+1)`
-/

namespace A210379.P2692678682300265533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 1) ^ 2 : ℤ) * A000982 (n + 1)

end

end A210379.P2692678682300265533

namespace A210379

/-- `Δ[A000538(n)]-(n+1)²*A000982(n+1)` -/
def P2692678682300265533.Spec : Prop :=
  ∀ n, P2692678682300265533.a n = A210379 n

end A210379

/-! ## A210379.P5902576945658857775

`A002522(n+1)*A007590(n+1)-A007590(n+1)`
-/

namespace A210379.P5902576945658857775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A007590 (n + 1) - A007590 (n + 1)

end

end A210379.P5902576945658857775

namespace A210379

/-- `A002522(n+1)*A007590(n+1)-A007590(n+1)` -/
def P5902576945658857775.Spec : Prop :=
  ∀ n, P5902576945658857775.a n = A210379 n

theorem P5902576945658857775.correct : P5902576945658857775.Spec := by
  intro n
  simp only [A210379, Nat.add_sub_cancel, A210379.P5902576945658857775.a, A210379.P3468153235779565725.a, A002522, A002522.P3778392011853271743.a, A007590, A007590.P9530274664467440414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210379

/-! ## A210379.P12502450175294487107

`A002620(n+1)*A058331(n+1)-A002620(n+1)`
-/

namespace A210379.P12502450175294487107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A058331 (n + 1) - A002620 (n + 1)

end

end A210379.P12502450175294487107

namespace A210379

/-- `A002620(n+1)*A058331(n+1)-A002620(n+1)` -/
def P12502450175294487107.Spec : Prop :=
  ∀ n, P12502450175294487107.a n = A210379 n

end A210379

/-! ## A210379.P932509362467986217

`A093353(n*(n+2))`
-/

namespace A210379.P932509362467986217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (n * (n + 2))

end

end A210379.P932509362467986217

namespace A210379

/-- `A093353(n*(n+2))` -/
def P932509362467986217.Spec : Prop :=
  ∀ n, P932509362467986217.a n = A210379 n

theorem P932509362467986217.correct : P932509362467986217.Spec := by
  intro n
  simp only [A210379, Nat.add_sub_cancel, A210379.P932509362467986217.a, A210379.P3468153235779565725.a, A093353, A093353.P3260188406593260230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210379

/-! ## A210379.P11509160231826522633

`A238411((n+1)²)/2`
-/

namespace A210379.P11509160231826522633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238411 ((n + 1) ^ 2) : ℚ) / 2

end

end A210379.P11509160231826522633

namespace A210379

/-- `A238411((n+1)²)/2` -/
def P11509160231826522633.Spec : Prop :=
  ∀ n, P11509160231826522633.a n = (A210379 n : ℚ)

end A210379

/-!
# A210381: Triangle by rows, derived from the beheaded Pascal's triangle, A074909.

The programs for A210381, the canonical program `A210381.P17433135722675622372` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210381 has offset 0).

The definition of A210381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210381.P7972364709154376127

`A198321(n)+char[∑[n+2]]`
-/

namespace A210381.P7972364709154376127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210381.P7972364709154376127

namespace A210381

/-- `A198321(n)+char[∑[n+2]]` -/
def P7972364709154376127.Spec : Prop :=
  ∀ n, P7972364709154376127.a n = A210381 n

end A210381

/-! ## A210381.P12738551274309307424

`A029656(n+1)-A129994(n)`
-/

namespace A210381.P12738551274309307424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A129994 n

end

end A210381.P12738551274309307424

namespace A210381

/-- `A029656(n+1)-A129994(n)` -/
def P12738551274309307424.Spec : Prop :=
  ∀ n, P12738551274309307424.a n = A210381 n

theorem P12738551274309307424.correct : P12738551274309307424.Spec := by
  intro n
  simp only [A210381, Nat.add_sub_cancel, A210381.P12738551274309307424.a, A210381.P17433135722675622372.a, A029656, A029656.P13202918215397249679.a, A074909, A074909.P6402560185863182536.a, A129994, A129994.P8909343354360901903.a, A198321, A198321.P15651192103710140511.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A104795, A104795.P13015670119841549225.a, A193815, A193815.P12377440765464689058.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210381

/-! ## A210381.P9517518778500696999

`A007318(n+1)-A214292(n)`
-/

namespace A210381.P9517518778500696999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - A214292 n

end

end A210381.P9517518778500696999

namespace A210381

/-- `A007318(n+1)-A214292(n)` -/
def P9517518778500696999.Spec : Prop :=
  ∀ n, P9517518778500696999.a n = A210381 n

end A210381

/-! ## A210381.P17433135722675622372

`A074909(n)-A198321(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A210381

/-- `A074909(n)-A198321(n+1)` -/
def P17433135722675622372.Spec : Prop :=
  ∀ n, P17433135722675622372.a n = A210381 n

theorem P17433135722675622372.correct : P17433135722675622372.Spec := by
  intro n
  simp only [A210381]

end A210381

/-! ## A210381.P2922981958721050243

`A007318(n+1)-Δ[A074909(n)]`
-/

namespace A210381.P2922981958721050243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - (f1 (n + 1) - f1 n)

end

end A210381.P2922981958721050243

namespace A210381

/-- `A007318(n+1)-Δ[A074909(n)]` -/
def P2922981958721050243.Spec : Prop :=
  ∀ n, P2922981958721050243.a n = A210381 n

end A210381

/-! ## A210381.P17845002784495611648

`Δ[A102363(n+1)-A074909(n)]`
-/

namespace A210381.P17845002784495611648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210381.P17845002784495611648

namespace A210381

/-- `Δ[A102363(n+1)-A074909(n)]` -/
def P17845002784495611648.Spec : Prop :=
  ∀ n, P17845002784495611648.a n = A210381 n

end A210381

/-! ## A210381.P4400994814412421048

`C(A003056(n+1), A004736(n+1))`
-/

namespace A210381.P4400994814412421048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A210381.P4400994814412421048

namespace A210381

/-- `C(A003056(n+1), A004736(n+1))` -/
def P4400994814412421048.Spec : Prop :=
  ∀ n, (P4400994814412421048.a n : ℤ) = A210381 n

end A210381

/-! ## A210381.P18443172077304123773

`C(∑[A010054(n+1)], A004736(n+1))`
-/

namespace A210381.P18443172077304123773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A004736 (n + 1)).toNat

end

end A210381.P18443172077304123773

namespace A210381

/-- `C(∑[A010054(n+1)], A004736(n+1))` -/
def P18443172077304123773.Spec : Prop :=
  ∀ n, (P18443172077304123773.a n : ℤ) = A210381 n

end A210381

/-! ## A210381.P2298018180079849896

`C(∑[A010054(n+1)], A025581(n)+1)`
-/

namespace A210381.P2298018180079849896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A025581 n + 1).toNat

end

end A210381.P2298018180079849896

namespace A210381

/-- `C(∑[A010054(n+1)], A025581(n)+1)` -/
def P2298018180079849896.Spec : Prop :=
  ∀ n, (P2298018180079849896.a n : ℤ) = A210381 n

end A210381

/-! ## A210381.P13336105710904398524

`A007318(n)-(A214292(n)-A259525(n))`
-/

namespace A210381.P13336105710904398524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A214292 n - A259525 n)

end

end A210381.P13336105710904398524

namespace A210381

/-- `A007318(n)-(A214292(n)-A259525(n))` -/
def P13336105710904398524.Spec : Prop :=
  ∀ n, P13336105710904398524.a n = A210381 n

end A210381

/-! ## A210381.P18342493753471048338

`A074909(n)-A007318(n)*A023532(n)`
-/

namespace A210381.P18342493753471048338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A007318 n * A023532 n

end

end A210381.P18342493753471048338

namespace A210381

/-- `A074909(n)-A007318(n)*A023532(n)` -/
def P18342493753471048338.Spec : Prop :=
  ∀ n, P18342493753471048338.a n = A210381 n

end A210381

/-! ## A210381.P538275157917543048

`A007318(A038722(n+1))+Δ[A010054(n)]`
-/

namespace A210381.P538275157917543048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A210381.P538275157917543048

namespace A210381

/-- `A007318(A038722(n+1))+Δ[A010054(n)]` -/
def P538275157917543048.Spec : Prop :=
  ∀ n, P538275157917543048.a n = A210381 n

end A210381

/-! ## A210381.P17898291925131474291

`A007318(A038722(n+1))+Δ[A035214(n)]`
-/

namespace A210381.P17898291925131474291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A210381.P17898291925131474291

namespace A210381

/-- `A007318(A038722(n+1))+Δ[A035214(n)]` -/
def P17898291925131474291.Spec : Prop :=
  ∀ n, P17898291925131474291.a n = A210381 n

end A210381

/-! ## A210381.P5174127628159882195

`A007318(n+1)+A074909(n)-A135278(n)`
-/

namespace A210381.P5174127628159882195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A074909 n - A135278 n)

end

end A210381.P5174127628159882195

namespace A210381

/-- `A007318(n+1)+A074909(n)-A135278(n)` -/
def P5174127628159882195.Spec : Prop :=
  ∀ n, P5174127628159882195.a n = A210381 n

end A210381

/-! ## A210381.P6880266672418121060

`A007318(n+1)+A156644(n)-A080233(n)`
-/

namespace A210381.P6880266672418121060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A156644 n - A080233 n)

end

end A210381.P6880266672418121060

namespace A210381

/-- `A007318(n+1)+A156644(n)-A080233(n)` -/
def P6880266672418121060.Spec : Prop :=
  ∀ n, P6880266672418121060.a n = A210381 n

end A210381

/-! ## A210381.P17414212530936008073

`A007318(n+1)+A198321(n)-A199011(n)`
-/

namespace A210381.P17414212530936008073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A198321 n - A199011 n)

end

end A210381.P17414212530936008073

namespace A210381

/-- `A007318(n+1)+A198321(n)-A199011(n)` -/
def P17414212530936008073.Spec : Prop :=
  ∀ n, P17414212530936008073.a n = A210381 n

end A210381

/-! ## A210381.P832534440601255714

`A007318(n+1)+A074909(n)-A074909(n+1)`
-/

namespace A210381.P832534440601255714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A074909 n - A074909 (n + 1))

end

end A210381.P832534440601255714

namespace A210381

/-- `A007318(n+1)+A074909(n)-A074909(n+1)` -/
def P832534440601255714.Spec : Prop :=
  ∀ n, P832534440601255714.a n = A210381 n

end A210381

/-! ## A210381.P10672047027795873606

`A163866(n+2)-(A214292(n)+A163866(n+1))`
-/

namespace A210381.P10672047027795873606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 2) - (A214292 n + A163866 (n + 1))

end

end A210381.P10672047027795873606

namespace A210381

/-- `A163866(n+2)-(A214292(n)+A163866(n+1))` -/
def P10672047027795873606.Spec : Prop :=
  ∀ n, P10672047027795873606.a n = A210381 n

end A210381

/-! ## A210381.P11247905350954700944

`C(A003056(n+1), A057555(2*(n+1)))`
-/

namespace A210381.P11247905350954700944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (n + 1)).toNat (A057555 (2 * (n + 1))).toNat

end

end A210381.P11247905350954700944

namespace A210381

/-- `C(A003056(n+1), A057555(2*(n+1)))` -/
def P11247905350954700944.Spec : Prop :=
  ∀ n, (P11247905350954700944.a n : ℤ) = A210381 n

end A210381

/-!
# A210382: 

The programs for A210382, there is no canonical definition to state claims against.
-/

/-! ## A210382.P8579721103586093874

`A210390((n+1)²+n²)`
-/

namespace A210382.P8579721103586093874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 ((n + 1) ^ 2 + n ^ 2)

end

end A210382.P8579721103586093874

/-!
# A210383: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210383, the canonical program `A210383.P15720850577900676873` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210383 has offset 1).

The definition of A210383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210383.P15720850577900676873

`ogf((73-60x-54x^2)/(1-9x+6x^2+6x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210383

/-- `ogf((73-60x-54x^2)/(1-9x+6x^2+6x^3))` -/
def P15720850577900676873.Spec : Prop :=
  ∀ n, P15720850577900676873.a n = A210383 (n + 1)

theorem P15720850577900676873.correct : P15720850577900676873.Spec := by
  intro n
  simp only [A210383, Nat.add_sub_cancel]

end A210383

/-! ## A210383.P13167132303819037045

`A210390(∑[n]+1)`
-/

namespace A210383.P13167132303819037045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210383.P13167132303819037045

namespace A210383

/-- `A210390(∑[n]+1)` -/
def P13167132303819037045.Spec : Prop :=
  ∀ n, P13167132303819037045.a n = A210383 (n + 1)

end A210383

/-! ## A210383.P1772244512459905088

`or(1, A210390(A000124(n)))`
-/

namespace A210383.P1772244512459905088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210390 (A000124 n).toNat)

end

end A210383.P1772244512459905088

namespace A210383

/-- `or(1, A210390(A000124(n)))` -/
def P1772244512459905088.Spec : Prop :=
  ∀ n, P1772244512459905088.a n = A210383 (n + 1)

end A210383

/-! ## A210383.P9714949359255568261

`record[root(A210390(n+1), A054142(n))]`
-/

namespace A210383.P9714949359255568261
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210390 (n + 1) : ℝ) ^ (1 / (A054142 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210383.P9714949359255568261

namespace A210383

/-- `record[root(A210390(n+1), A054142(n))]` -/
def P9714949359255568261.Spec : Prop :=
  ∀ n, P9714949359255568261.a n = (A210383 (n + 1) : ℝ)

end A210383

/-! ## A210383.P10331509840799273271

`record[root(A210390(n+1), A210341(n))]`
-/

namespace A210383.P10331509840799273271
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210390 (n + 1) : ℝ) ^ (1 / (A210341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210383.P10331509840799273271

namespace A210383

/-- `record[root(A210390(n+1), A210341(n))]` -/
def P10331509840799273271.Spec : Prop :=
  ∀ n, P10331509840799273271.a n = (A210383 (n + 1) : ℝ)

end A210383

/-!
# A210384: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210384, there is no canonical definition to state claims against.
-/

/-! ## A210384.P14425593769020092712

`A210390(∑[n+1]+2)`
-/

namespace A210384.P14425593769020092712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210384.P14425593769020092712

/-! ## A210384.P15892606728420865429

`record[gcd(A002262(n), A210390(n+2))]`
-/

namespace A210384.P15892606728420865429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210390 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210384.P15892606728420865429

/-! ## A210384.P14992620886134846592

`record[gcd(A210390(n+3), A242378(n))]`
-/

namespace A210384.P14992620886134846592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210390 (n + 3)) (A242378 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210384.P14992620886134846592

/-! ## A210384.P662914812637721343

`record[A210390(abs(A201163(n)))]`
-/

namespace A210384.P662914812637721343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210384.P662914812637721343

/-! ## A210384.P17469647472718020438

`or(1, A210390(A000096(n+1)))`
-/

namespace A210384.P17469647472718020438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210390 (A000096 (n + 1)).toNat)

end

end A210384.P17469647472718020438

/-!
# A210385: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210385, there is no canonical definition to state claims against.
-/

/-! ## A210385.P14120720562114907445

`A210390(∑[n+2]+4)`
-/

namespace A210385.P14120720562114907445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210385.P14120720562114907445

/-! ## A210385.P15734308097590164251

`or(1, A210390(A167614(n+1)))`
-/

namespace A210385.P15734308097590164251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210390 (A167614 (n + 1)).toNat)

end

end A210385.P15734308097590164251

/-! ## A210385.P15226396407369102126

`A210632(n)+A210390(A167614(n+1))`
-/

namespace A210385.P15226396407369102126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210632 n + A210390 (A167614 (n + 1)).toNat

end

end A210385.P15226396407369102126

/-! ## A210385.P14384857374088996620

`A210390(A167614(n+1))%A251494(n+1)`
-/

namespace A210385.P14384857374088996620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210390 (A167614 (n + 1)).toNat) (A251494 (n + 1))

end

end A210385.P14384857374088996620

/-!
# A210386: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having one, two or three distinct clockwise edge differences.

The programs for A210386, there is no canonical definition to state claims against.
-/

/-! ## A210386.P2699079025301816985

`A210390(A167614(n+2)+1)`
-/

namespace A210386.P2699079025301816985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (A167614 (n + 2) + 1).toNat

end

end A210386.P2699079025301816985

/-! ## A210386.P4351192115783412351

`A210390(A141214(n+1))`
-/

namespace A210386.P4351192115783412351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (A141214 (n + 1)).toNat

end

end A210386.P4351192115783412351

/-! ## A210386.P303036294666670835

`A210390(lt[A210341(n+2), A210391(n)])`
-/

namespace A210386.P303036294666670835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210386.P303036294666670835

/-!
# A210387: 

The programs for A210387, there is no canonical definition to state claims against.
-/

/-! ## A210387.P1935811671304368434

`A210390(A000217(n+5)-n)`
-/

namespace A210387.P1935811671304368434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A210387.P1935811671304368434

/-!
# A210388: 

The programs for A210388, there is no canonical definition to state claims against.
-/

/-! ## A210388.P15774988819494648735

`A210390(A000217(n+5)+6)`
-/

namespace A210388.P15774988819494648735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (A000217 (n + 5) + 6).toNat

end

end A210388.P15774988819494648735

/-!
# A210389: 

The programs for A210389, there is no canonical definition to state claims against.
-/

/-! ## A210389.P12289525748329923186

`A210390(A005408(n)+A000217(n+5)+6)`
-/

namespace A210389.P12289525748329923186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210390 (A005408 n + (A000217 (n + 5) + 6)).toNat

end

end A210389.P12289525748329923186

/-!
# A210391: Number A(n,k) of semistandard Young tableaux over all partitions of n with maximal element <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A210391, there is no canonical definition to state claims against.
-/

/-! ## A210391.P15897890924618047089

`A213276(n)+A102683(A284732(n+1))`
-/

namespace A210391.P15897890924618047089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n + A102683 (A284732 (n + 1)).toNat

end

end A210391.P15897890924618047089

/-! ## A210391.P5749769180837840678

`A213276(n)+A085974(A013612(n))`
-/

namespace A210391.P5749769180837840678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n + A085974 (A013612 n).toNat

end

end A210391.P5749769180837840678

/-! ## A210391.P2723943323893020350

`A004525(A266213(n)%A345910(2*n+5))`
-/

namespace A210391.P2723943323893020350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A266213 n) (A345910 (2 * n + 5))).toNat

end

end A210391.P2723943323893020350

/-! ## A210391.P11817494058746678230

`A118340(n)+A023969(A052326(n))`
-/

namespace A210391.P11817494058746678230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 n + A023969 (A052326 n).toNat

end

end A210391.P11817494058746678230

/-! ## A210391.P6076214048374211013

`A213276(n)+A058343(A143862(n))`
-/

namespace A210391.P6076214048374211013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n + A058343 (A143862 n).toNat

end

end A210391.P6076214048374211013

/-!
# A210392: 10-dimensional partition numbers.

The programs for A210392, there is no canonical definition to state claims against.
-/

/-! ## A210392.P4117411712540789424

`A096751(eq[12, A219347(n)])`
-/

namespace A210392.P4117411712540789424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210392.P4117411712540789424

/-!
# A210393: a(n) = least integer m>1 such that S_k! for k=1,...,n are pairwise distinct modulo m where S_k is the sum of the first k primes.

The programs for A210393, there is no canonical definition to state claims against.
-/

/-! ## A210393.P4687167109642222130

`A068073(A256078(3*n))+A007504(n)`
-/

namespace A210393.P4687167109642222130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A256078 (3 * n)).toNat + A007504 n

end

end A210393.P4687167109642222130

/-! ## A210393.P5223529941593588092

`A036439(n+1)-A102283(A000045(2*n))`
-/

namespace A210393.P5223529941593588092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - A102283 (A000045 (2 * n)).toNat

end

end A210393.P5223529941593588092

/-! ## A210393.P10665492639699711002

`A036439(n+1)-A102283(A157726(2*n))`
-/

namespace A210393.P10665492639699711002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - A102283 (A157726 (2 * n)).toNat

end

end A210393.P10665492639699711002

/-! ## A210393.P9792767362191262758

`A000040(∑[gcd(4, A264601(n))])`
-/

namespace A210393.P9792767362191262758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A264601 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210393.P9792767362191262758

/-! ## A210393.P14485148254737271004

`A000040(∑[A360998(2^floor(n/2))])`
-/

namespace A210393.P14485148254737271004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360998 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210393.P14485148254737271004

/-!
# A210394: a(n) = least integer m>1 such that m divides none of S_i!+S_j! with 0<i<j<=n where S_k is the sum of the first k primes.

The programs for A210394, there is no canonical definition to state claims against.
-/

/-! ## A210394.P7911698161409072159

`p?[A325457(n+1)-7]`
-/

namespace A210394.P7911698161409072159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210394.P7911698161409072159

/-! ## A210394.P5661805571265852321

`p?[A342525(n+1)-19]`
-/

namespace A210394.P5661805571265852321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210394.P5661805571265852321

/-! ## A210394.P3491741048110968444

`p?[or(2, A010442(n+1))]`
-/

namespace A210394.P3491741048110968444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A010442 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210394.P3491741048110968444

/-! ## A210394.P907023965196928607

`record[A020639(or(2, A088347(n)))]`
-/

namespace A210394.P907023965196928607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 2 (A088347 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210394.P907023965196928607

/-!
# A210396: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210396, there is no canonical definition to state claims against.
-/

/-! ## A210396.P7892153298881943326

`A210404((n+1)²+n²)`
-/

namespace A210396.P7892153298881943326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 ((n + 1) ^ 2 + n ^ 2)

end

end A210396.P7892153298881943326

/-!
# A210397: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210397, the canonical program `A210397.P3209281532341821173` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210397 has offset 1).

The definition of A210397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210397.P17159738757318530888

`ogf((7-11x-6x^2)/(1-10x+5x^2+4x^3))`
-/

namespace A210397.P17159738757318530888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -11, -6] [1, -10, 5, 4] n

end

end A210397.P17159738757318530888

namespace A210397

/-- `ogf((7-11x-6x^2)/(1-10x+5x^2+4x^3))` -/
def P17159738757318530888.Spec : Prop :=
  ∀ n, P17159738757318530888.a n = A210397 (n + 1)

end A210397

/-! ## A210397.P3209281532341821173

`10*a(n-1)-5*a(n-2)-4*a(n-3)` with `a(0)=7, a(1)=59, a(2)=549`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A210397

/-- `10*a(n-1)-5*a(n-2)-4*a(n-3)` -/
def P3209281532341821173.Spec : Prop :=
  ∀ n, P3209281532341821173.a n = A210397 (n + 1)

theorem P3209281532341821173.correct : P3209281532341821173.Spec := by
  intro n
  simp only [A210397, Nat.add_sub_cancel]

end A210397

/-! ## A210397.P5005215296086879919

`A210404(∑[n]+1)`
-/

namespace A210397.P5005215296086879919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210397.P5005215296086879919

namespace A210397

/-- `A210404(∑[n]+1)` -/
def P5005215296086879919.Spec : Prop :=
  ∀ n, P5005215296086879919.a n = A210397 (n + 1)

end A210397

/-! ## A210397.P16893446630403272843

`record[A210404(n+1)/A022171(n)]`
-/

namespace A210397.P16893446630403272843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210404 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210397.P16893446630403272843

namespace A210397

/-- `record[A210404(n+1)/A022171(n)]` -/
def P16893446630403272843.Spec : Prop :=
  ∀ n, P16893446630403272843.a n = (A210397 (n + 1) : ℚ)

end A210397

/-! ## A210397.P16208987985803876842

`record[root(A210404(n+1), A335975(n))]`
-/

namespace A210397.P16208987985803876842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210404 (n + 1) : ℝ) ^ (1 / (A335975 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210397.P16208987985803876842

namespace A210397

/-- `record[root(A210404(n+1), A335975(n))]` -/
def P16208987985803876842.Spec : Prop :=
  ∀ n, P16208987985803876842.a n = (A210397 (n + 1) : ℝ)

end A210397

/-!
# A210398: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210398, there is no canonical definition to state claims against.
-/

/-! ## A210398.P4470978017604421339

`A210404(∑[n+1]+2)`
-/

namespace A210398.P4470978017604421339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210398.P4470978017604421339

/-! ## A210398.P14492950238208002369

`record[gcd(A002262(n), A210404(n+2))]`
-/

namespace A210398.P14492950238208002369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210404 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210398.P14492950238208002369

/-! ## A210398.P10639220896090753393

`record[gcd(A091435(n), A210404(n+3))]`
-/

namespace A210398.P10639220896090753393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091435 n) (A210404 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210398.P10639220896090753393

/-! ## A210398.P17673869521791822674

`record[A210404(abs(A201163(n)))]`
-/

namespace A210398.P17673869521791822674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210398.P17673869521791822674

/-! ## A210398.P7258486901445060264

`record[A210404(Δ[A003453(n+5)])]`
-/

namespace A210398.P7258486901445060264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210398.P7258486901445060264

/-!
# A210399: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210399, there is no canonical definition to state claims against.
-/

/-! ## A210399.P10876196470523887249

`A210404(∑[n+2]+4)`
-/

namespace A210399.P10876196470523887249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210399.P10876196470523887249

/-! ## A210399.P9505682225597566977

`lcm(A033999(n), A210404(A167614(n+1)))`
-/

namespace A210399.P9505682225597566977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210404 (A167614 (n + 1)).toNat)

end

end A210399.P9505682225597566977

/-! ## A210399.P8421930565460544011

`or(A000007(n), A210404(A167614(n+1)))`
-/

namespace A210399.P8421930565460544011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210404 (A167614 (n + 1)).toNat)

end

end A210399.P8421930565460544011

/-! ## A210399.P9803263658359170784

`or(A210404(A167614(n+1)), A249832(n))`
-/

namespace A210399.P9803263658359170784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210404 (A167614 (n + 1)).toNat) (A249832 n)

end

end A210399.P9803263658359170784

/-! ## A210399.P7931904346136345099

`A057427(n+1)*A210404(A167614(n+1))`
-/

namespace A210399.P7931904346136345099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A210404 (A167614 (n + 1)).toNat

end

end A210399.P7931904346136345099

