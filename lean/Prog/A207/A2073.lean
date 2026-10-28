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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207301: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207301, there is no canonical definition to state claims against.
-/

/-! ## A207301.P3921829559522863290

`A207305(∑[4*n]+1)`
-/

namespace A207301.P3921829559522863290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207301.P3921829559522863290

/-! ## A207301.P11548187081816321822

`record[A207305(A152271(n²))]`
-/

namespace A207301.P11548187081816321822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207301.P11548187081816321822

/-! ## A207301.P6964138248060920388

`record[A207305(A330613(n+1))]`
-/

namespace A207301.P6964138248060920388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207301.P6964138248060920388

/-! ## A207301.P6116289385489184488

`or(char[3], A207305(A001844(n)))`
-/

namespace A207301.P6116289385489184488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207305 (A001844 n).toNat)

end

end A207301.P6116289385489184488

/-! ## A207301.P2170195746986244587

`record[A003982(n)*A207305(n+1)]`
-/

namespace A207301.P2170195746986244587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207301.P2170195746986244587

/-!
# A207302: Number of n X 5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207302, the canonical program `A207302.P16788938204566036056` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207302 has offset 1).

The definition of A207302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207302.P10219921729223182823

`ogf((13+104x-50x^2-6x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A207302.P10219921729223182823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 104, -50, -6, 3] [1, -5, 10, -10, 5, -1] n

end

end A207302.P10219921729223182823

namespace A207302

/-- `ogf((13+104x-50x^2-6x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10219921729223182823.Spec : Prop :=
  ∀ n, P10219921729223182823.a n = A207302 (n + 1)

end A207302

/-! ## A207302.P16788938204566036056

`8/3*(n+1)^4+49/3*(n+1)^3+16/3*(n+1)²-43/3*(n+1)+3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207302

/-- `8/3*(n+1)^4+49/3*(n+1)^3+16/3*(n+1)²-43/3*(n+1)+3` -/
def P16788938204566036056.Spec : Prop :=
  ∀ n, P16788938204566036056.a n = (A207302 (n + 1) : ℚ)

end A207302

/-! ## A207302.P2893683995569215244

`A207305(∑[n+5]+6)`
-/

namespace A207302.P2893683995569215244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207302.P2893683995569215244

namespace A207302

/-- `A207305(∑[n+5]+6)` -/
def P2893683995569215244.Spec : Prop :=
  ∀ n, P2893683995569215244.a n = A207302 (n + 1)

end A207302

/-! ## A207302.P16836784582513806774

`or(1, A207305(A046691(n+3)))`
-/

namespace A207302.P16836784582513806774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207305 (A046691 (n + 3)).toNat)

end

end A207302.P16836784582513806774

namespace A207302

/-- `or(1, A207305(A046691(n+3)))` -/
def P16836784582513806774.Spec : Prop :=
  ∀ n, P16836784582513806774.a n = A207302 (n + 1)

end A207302

/-! ## A207302.P15643191184676285272

`or(1, A207305(Δ[A023545(n+1)]))`
-/

namespace A207302.P15643191184676285272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207305 (f1 (n + 1) - f1 n).toNat)

end

end A207302.P15643191184676285272

namespace A207302

/-- `or(1, A207305(Δ[A023545(n+1)]))` -/
def P15643191184676285272.Spec : Prop :=
  ∀ n, P15643191184676285272.a n = A207302 (n + 1)

end A207302

/-!
# A207303: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207303, there is no canonical definition to state claims against.
-/

/-! ## A207303.P9190354706196639914

`A207305(A052905(n+3))`
-/

namespace A207303.P9190354706196639914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A052905 (n + 3)).toNat

end

end A207303.P9190354706196639914

/-! ## A207303.P18298082678857988819

`A207305(A302537(n)+15)`
-/

namespace A207303.P18298082678857988819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A302537 n + 15).toNat

end

end A207303.P18298082678857988819

/-! ## A207303.P885611514862547435

`A207305(A056119(n)+16)`
-/

namespace A207303.P885611514862547435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A056119 n + 16).toNat

end

end A207303.P885611514862547435

/-! ## A207303.P8269086806548490822

`A207305(eq[3, A219347(n)])`
-/

namespace A207303.P8269086806548490822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207303.P8269086806548490822

/-! ## A207303.P7467746053053404578

`A207305(eq[5, A193592(n)])`
-/

namespace A207303.P7467746053053404578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207303.P7467746053053404578

/-!
# A207304: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207304, there is no canonical definition to state claims against.
-/

/-! ## A207304.P16720491895655204913

`A207305(A055999(n+4))`
-/

namespace A207304.P16720491895655204913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A055999 (n + 4)).toNat

end

end A207304.P16720491895655204913

/-! ## A207304.P4358091011612034255

`A207305(eq[4, A219347(n)])`
-/

namespace A207304.P4358091011612034255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207304.P4358091011612034255

/-! ## A207304.P13233902122041721095

`A207305(eq[6, A193592(n)])`
-/

namespace A207304.P13233902122041721095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207304.P13233902122041721095

/-! ## A207304.P14521441658012220428

`A207305(Δ[A023551(n+2)])`
-/

namespace A207304.P14521441658012220428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (f1 (n + 1) - f1 n).toNat

end

end A207304.P14521441658012220428

/-! ## A207304.P4592073892349366399

`A207305(A052905(n+4)-1)`
-/

namespace A207304.P4592073892349366399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A052905 (n + 4) - 1).toNat

end

end A207304.P4592073892349366399

/-!
# A207305: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207305, there is no canonical definition to state claims against.
-/

/-! ## A207305.P1989002795010620267

`A207111(n+1)+A016389(A119502(n))`
-/

namespace A207305.P1989002795010620267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (n + 1) + A016389 (A119502 n).toNat

end

end A207305.P1989002795010620267

/-! ## A207305.P15314484116453557194

`A207111(n+1)+A016389(A152656(n))`
-/

namespace A207305.P15314484116453557194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (n + 1) + A016389 (A152656 n).toNat

end

end A207305.P15314484116453557194

/-! ## A207305.P13756637025214196694

`A207111(n+1)+A070204(A126331(n))`
-/

namespace A207305.P13756637025214196694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207111 (n + 1) + A070204 (A126331 n).toNat

end

end A207305.P13756637025214196694

/-!
# A207306: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207306, the canonical program `A207306.P5498208446508142153` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207306 has offset 1).

The definition of A207306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207306.P5498208446508142153

`ogf((6+30x+56x^2+101x^3+56x^4+x^5-38x^6-26x^7-2x^8)/(1-x-x^2-6x^3-4x^4-x^5+2x^6+2x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207306

/-- `ogf((6+30x+56x^2+101x^3+56x^4+x^5-38x^6-26x^7-2x^8)/(1-x-x^2-6x^3-4x^4-x^5+2x^6+2x^7))` -/
def P5498208446508142153.Spec : Prop :=
  ∀ n, P5498208446508142153.a n = A207306 (n + 1)

theorem P5498208446508142153.correct : P5498208446508142153.Spec := by
  intro n
  simp only [A207306, Nat.add_sub_cancel]

end A207306

/-! ## A207306.P9575852113821385238

`A207305(∑[n+2]+4)`
-/

namespace A207306.P9575852113821385238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207306.P9575852113821385238

namespace A207306

/-- `A207305(∑[n+2]+4)` -/
def P9575852113821385238.Spec : Prop :=
  ∀ n, P9575852113821385238.a n = A207306 (n + 1)

end A207306

/-! ## A207306.P16869501280307243719

`record[A207305(A008795(n)+3)]`
-/

namespace A207306.P16869501280307243719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207306.P16869501280307243719

namespace A207306

/-- `record[A207305(A008795(n)+3)]` -/
def P16869501280307243719.Spec : Prop :=
  ∀ n, P16869501280307243719.a n = A207306 (n + 1)

end A207306

/-! ## A207306.P9785019024024795900

`or(char[3], A207305(A167614(n+1)))`
-/

namespace A207306.P9785019024024795900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207305 (A167614 (n + 1)).toNat)

end

end A207306.P9785019024024795900

namespace A207306

/-- `or(char[3], A207305(A167614(n+1)))` -/
def P9785019024024795900.Spec : Prop :=
  ∀ n, P9785019024024795900.a n = A207306 (n + 1)

end A207306

/-! ## A207306.P5234216729332575656

`A207305(A046691(n)+7)+char[34]`
-/

namespace A207306.P5234216729332575656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A207306.P5234216729332575656

namespace A207306

/-- `A207305(A046691(n)+7)+char[34]` -/
def P5234216729332575656.Spec : Prop :=
  ∀ n, P5234216729332575656.a n = A207306 (n + 1)

end A207306

/-!
# A207307: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207307, there is no canonical definition to state claims against.
-/

/-! ## A207307.P6978871369569416442

`A207305(∑[n+3]+7)`
-/

namespace A207307.P6978871369569416442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207307.P6978871369569416442

/-! ## A207307.P773881892276946644

`or(char[7], A207305(A055999(n)+10))`
-/

namespace A207307.P773881892276946644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207305 (A055999 n + 10).toNat)

end

end A207307.P773881892276946644

/-! ## A207307.P8640206974338094801

`A007318(C(2, n))*A207305(A055999(n)+10)`
-/

namespace A207307.P8640206974338094801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207305 (A055999 n + 10).toNat

end

end A207307.P8640206974338094801

/-! ## A207307.P5953815853266949867

`A207305(A055999(n)+10)^A007318(C(2, n²))`
-/

namespace A207307.P5953815853266949867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207305 (A055999 n + 10).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A207307.P5953815853266949867

/-! ## A207307.P14175953545643099232

`A207305(A055999(n)+10)+A008683(4*(n+1))`
-/

namespace A207307.P14175953545643099232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A055999 n + 10).toNat + A008683 (4 * (n + 1))

end

end A207307.P14175953545643099232

/-!
# A207308: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207308, there is no canonical definition to state claims against.
-/

/-! ## A207308.P10846735935459037157

`A207305(A167499(n+3))`
-/

namespace A207308.P10846735935459037157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A167499 (n + 3)).toNat

end

end A207308.P10846735935459037157

/-! ## A207308.P8066794848330492229

`A207305(A155212(n)+13)`
-/

namespace A207308.P8066794848330492229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A155212 n + 13).toNat

end

end A207308.P8066794848330492229

/-! ## A207308.P2405025841842699

`A207305(A056000(n)+15)`
-/

namespace A207308.P2405025841842699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A056000 n + 15).toNat

end

end A207308.P2405025841842699

/-! ## A207308.P3942883249777695307

`A207305(A166136(n+3)-1)`
-/

namespace A207308.P3942883249777695307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A166136 (n + 3) - 1).toNat

end

end A207308.P3942883249777695307

/-! ## A207308.P14895217184431695405

`A207305(A167614(n+3)+2)`
-/

namespace A207308.P14895217184431695405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A167614 (n + 3) + 2).toNat

end

end A207308.P14895217184431695405

/-!
# A207309: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207309, there is no canonical definition to state claims against.
-/

/-! ## A207309.P16089319783536543561

`A207305(∑[n+5]+16)`
-/

namespace A207309.P16089319783536543561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A207309.P16089319783536543561

/-! ## A207309.P14104163941486364657

`lcm(A033999(n), A207305(A166136(n+4)))`
-/

namespace A207309.P14104163941486364657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207305 (A166136 (n + 4)).toNat)

end

end A207309.P14104163941486364657

/-! ## A207309.P7331564677173277229

`A207305(A000124(n+5)+5)%A207116(2*(n+1))`
-/

namespace A207309.P7331564677173277229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207305 (A000124 (n + 5) + 5).toNat) (A207116 (2 * (n + 1)))

end

end A207309.P7331564677173277229

/-! ## A207309.P4797912689083718771

`A207305(A000124(n+5)+5)%A352220(n+1)`
-/

namespace A207309.P4797912689083718771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207305 (A000124 (n + 5) + 5).toNat) (A352220 (n + 1))

end

end A207309.P4797912689083718771

/-!
# A207310: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207310, there is no canonical definition to state claims against.
-/

/-! ## A207310.P15895903818323727534

`A207305(A056119(n)+28)`
-/

namespace A207310.P15895903818323727534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A056119 n + 28).toNat

end

end A207310.P15895903818323727534

/-! ## A207310.P12507556622268894147

`A207305(A167499(n+5)+2)`
-/

namespace A207310.P12507556622268894147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A167499 (n + 5) + 2).toNat

end

end A207310.P12507556622268894147

/-! ## A207310.P16863159089515215470

`A207305(A167614(n+5)+4)`
-/

namespace A207310.P16863159089515215470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A167614 (n + 5) + 4).toNat

end

end A207310.P16863159089515215470

/-! ## A207310.P6411519275539351835

`A207305(A133263(n+6)+5)`
-/

namespace A207310.P6411519275539351835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A133263 (n + 6) + 5).toNat

end

end A207310.P6411519275539351835

/-! ## A207310.P13560331302907651021

`A207305(A000124(n+6)+6)`
-/

namespace A207310.P13560331302907651021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (A000124 (n + 6) + 6).toNat

end

end A207310.P13560331302907651021

/-!
# A207311: Number of n X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207311, there is no canonical definition to state claims against.
-/

/-! ## A207311.P16919455311652238195

`A207317((n+1)²+n²)`
-/

namespace A207311.P16919455311652238195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 ((n + 1) ^ 2 + n ^ 2)

end

end A207311.P16919455311652238195

/-!
# A207312: Number of nX3 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207312, there is no canonical definition to state claims against.
-/

/-! ## A207312.P2726900246266568683

`A207317(∑[n+2]+4)`
-/

namespace A207312.P2726900246266568683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207312.P2726900246266568683

/-! ## A207312.P4739717888264840511

`record[A207317(A127773(n+1)+3)]`
-/

namespace A207312.P4739717888264840511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A127773 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207312.P4739717888264840511

/-! ## A207312.P14277915498394230360

`lcm(A054977(n), A207317(A167614(n+1)))`
-/

namespace A207312.P14277915498394230360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A207317 (A167614 (n + 1)).toNat)

end

end A207312.P14277915498394230360

/-! ## A207312.P8915601423179902143

`or(A000038(n), A207317(A167614(n+1)))`
-/

namespace A207312.P8915601423179902143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207317 (A167614 (n + 1)).toNat)

end

end A207312.P8915601423179902143

/-! ## A207312.P4335901226514819968

`A207317(A167614(n+1))%A230174(n+1)`
-/

namespace A207312.P4335901226514819968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207317 (A167614 (n + 1)).toNat) (A230174 (n + 1))

end

end A207312.P4335901226514819968

/-!
# A207313: Number of nX4 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207313, there is no canonical definition to state claims against.
-/

/-! ## A207313.P11198208347672205153

`A207317(A374004(n+1))`
-/

namespace A207313.P11198208347672205153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A374004 (n + 1)).toNat

end

end A207313.P11198208347672205153

/-! ## A207313.P15446021313786169733

`A207317(A052905(n)+9)`
-/

namespace A207313.P15446021313786169733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A052905 n + 9).toNat

end

end A207313.P15446021313786169733

/-! ## A207313.P3553628841530842432

`A207317(A167614(n+2)+1)`
-/

namespace A207313.P3553628841530842432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A167614 (n + 2) + 1).toNat

end

end A207313.P3553628841530842432

/-! ## A207313.P34199397441224991

`A207317(A034856(n+2)+6)`
-/

namespace A207313.P34199397441224991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A034856 (n + 2) + 6).toNat

end

end A207313.P34199397441224991

/-! ## A207313.P7750730958157745538

`A207317(Δ[A264443(n)-n²])`
-/

namespace A207313.P7750730958157745538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (f1 (n + 1) - f1 n).toNat

end

end A207313.P7750730958157745538

/-!
# A207314: Number of nX5 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207314, there is no canonical definition to state claims against.
-/

/-! ## A207314.P7167669373412896932

`A207317(A374005(n+1))`
-/

namespace A207314.P7167669373412896932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A374005 (n + 1)).toNat

end

end A207314.P7167669373412896932

/-! ## A207314.P14239472779324714029

`A207317(eq[6, A131818(n+1)])`
-/

namespace A207314.P14239472779324714029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207314.P14239472779324714029

/-! ## A207314.P9839774685731085473

`A207317(Δ[A264443(n)])`
-/

namespace A207314.P9839774685731085473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (f1 (n + 1) - f1 n).toNat

end

end A207314.P9839774685731085473

/-! ## A207314.P4326622634757034683

`A207317(A056115(n)+11)`
-/

namespace A207314.P4326622634757034683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A056115 n + 11).toNat

end

end A207314.P4326622634757034683

/-! ## A207314.P12068742208183216237

`A207317(eq[3, A152157(n)])`
-/

namespace A207314.P12068742208183216237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207314.P12068742208183216237

/-!
# A207315: Number of nX6 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207315, there is no canonical definition to state claims against.
-/

/-! ## A207315.P5321024454084647747

`A207317(A374007(n+1))`
-/

namespace A207315.P5321024454084647747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A374007 (n + 1)).toNat

end

end A207315.P5321024454084647747

/-! ## A207315.P18019711398450849218

`A207317(A000217(n+5)+6)`
-/

namespace A207315.P18019711398450849218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (A000217 (n + 5) + 6).toNat

end

end A207315.P18019711398450849218

/-! ## A207315.P2431567127698721669

`A207317(eq[16, A057728(n+1)])`
-/

namespace A207315.P2431567127698721669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207315.P2431567127698721669

/-! ## A207315.P8358503597614525648

`A207317(Δ[Δ[A006504(n+1)]])`
-/

namespace A207315.P8358503597614525648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (f1 (n + 1) - f1 n).toNat

end

end A207315.P8358503597614525648

/-! ## A207315.P15148185594793274589

`A207317(Δ[A264443(n+1)]-1)`
-/

namespace A207315.P15148185594793274589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (f1 (n + 1) - f1 n - 1).toNat

end

end A207315.P15148185594793274589

/-!
# A207316: Number of nX7 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A207316, there is no canonical definition to state claims against.
-/

/-! ## A207316.P13421314259191542789

`A207317(eq[8, A131818(n+1)])`
-/

namespace A207316.P13421314259191542789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207316.P13421314259191542789

/-! ## A207316.P18290877737286105187

`A207317(eq[6, A193592(n)])`
-/

namespace A207316.P18290877737286105187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207316.P18290877737286105187

/-!
# A207319: a(n) = Sum_{k=0..n-1} (-1)^k*k*A000172(k).

The programs for A207319, there is no canonical definition to state claims against.
-/

/-! ## A207319.P9344997398567389332

`n*A207318(n)-∑[A207318(n)]`
-/

namespace A207319.P9344997398567389332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A207318 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207319.P9344997398567389332

/-!
# A207320: a(n) = Sum_{k=0..n-1} (-1)^k*k^2*A000172(k).

The programs for A207320, there is no canonical definition to state claims against.
-/

/-! ## A207320.P4314414438528062105

`∑[ceil((A328258(A248471(n))-1)/3)]`
-/

namespace A207320.P4314414438528062105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328258 (A248471 n).toNat - 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207320.P4314414438528062105

/-!
# A207321: Partial sums of A002893 with A002893(0)=0.

The programs for A207321, the canonical program `A207321.P7475223820928734017` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207321 has offset 0).

The definition of A207321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174123, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A207321.P7475223820928734017

`A174123(n)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207321

/-- `A174123(n)-1` -/
def P7475223820928734017.Spec : Prop :=
  ∀ n, P7475223820928734017.a n = A207321 n

theorem P7475223820928734017.correct : P7475223820928734017.Spec := by
  intro n
  simp only [A207321]

end A207321

/-! ## A207321.P1479710739760843236

`∑[A002893(n)]-1`
-/

namespace A207321.P1479710739760843236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207321.P1479710739760843236

namespace A207321

/-- `∑[A002893(n)]-1` -/
def P1479710739760843236.Spec : Prop :=
  ∀ n, P1479710739760843236.a n = A207321 n

end A207321

/-! ## A207321.P5095672318473621927

`∑[A002893(n)*A057427(n)]`
-/

namespace A207321.P5095672318473621927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207321.P5095672318473621927

namespace A207321

/-- `∑[A002893(n)*A057427(n)]` -/
def P5095672318473621927.Spec : Prop :=
  ∀ n, P5095672318473621927.a n = A207321 n

end A207321

/-! ## A207321.P1959641961586338336

`∑[A002893(n)%A174123(n)]`
-/

namespace A207321.P1959641961586338336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002893 n) (A174123 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207321.P1959641961586338336

namespace A207321

/-- `∑[A002893(n)%A174123(n)]` -/
def P1959641961586338336.Spec : Prop :=
  ∀ n, P1959641961586338336.a n = A207321 n

end A207321

/-! ## A207321.P8036371816894244864

`∑[A228514(n)+A086618(n)]-1`
-/

namespace A207321.P8036371816894244864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228514 n + A086618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207321.P8036371816894244864

namespace A207321

/-- `∑[A228514(n)+A086618(n)]-1` -/
def P8036371816894244864.Spec : Prop :=
  ∀ n, P8036371816894244864.a n = A207321 n

theorem P8036371816894244864.correct : P8036371816894244864.Spec := by
  intro n
  simp only [A207321, Nat.add_sub_cancel, A207321.P8036371816894244864.f1, A207321.P8036371816894244864.a, A207321.P7475223820928734017.a, A086618, A086618.P9473914020153117651.a, A174123, A174123.P5694243228090191309.f1, A174123.P5694243228090191309.a, A228514, A228514.P12479248012898447411.a, A002893, A002893.P7915644095541255392.f1, A002893.P7915644095541255392.a, A087457, A087457.P600842254710248495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207321

/-! ## A207321.P495793979818191806

`A033999(2*n+1)+∑[A002893(n)]`
-/

namespace A207321.P495793979818191806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207321.P495793979818191806

namespace A207321

/-- `A033999(2*n+1)+∑[A002893(n)]` -/
def P495793979818191806.Spec : Prop :=
  ∀ n, P495793979818191806.a n = A207321 n

end A207321

/-! ## A207321.P4265063545733631058

`∑[A002896(n)/A000984(n)]-1`
-/

namespace A207321.P4265063545733631058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A000984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207321.P4265063545733631058

namespace A207321

/-- `∑[A002896(n)/A000984(n)]-1` -/
def P4265063545733631058.Spec : Prop :=
  ∀ n, P4265063545733631058.a n = (A207321 n : ℚ)

end A207321

/-! ## A207321.P3094843079447900984

`∑[A002896(n)/A007318((n+1)*2*n)]-1`
-/

namespace A207321.P3094843079447900984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A007318 ((n + 1) * (2 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207321.P3094843079447900984

namespace A207321

/-- `∑[A002896(n)/A007318((n+1)*2*n)]-1` -/
def P3094843079447900984.Spec : Prop :=
  ∀ n, P3094843079447900984.a n = (A207321 n : ℚ)

end A207321

/-! ## A207321.P16145865526474139799

`∑[A002896(n)/((n+1)*A126120(2*n))]-1`
-/

namespace A207321.P16145865526474139799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / ((n + 1 : ℤ) * A126120 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207321.P16145865526474139799

namespace A207321

/-- `∑[A002896(n)/((n+1)*A126120(2*n))]-1` -/
def P16145865526474139799.Spec : Prop :=
  ∀ n, P16145865526474139799.a n = (A207321 n : ℚ)

end A207321

/-!
# A207322: a(n) = Sum{k=0..n} (-1)^k*A002893(k).

The programs for A207322, there is no canonical definition to state claims against.
-/

/-! ## A207322.P17058723756961476073

`∑[A002893(n)*A033999(n)]-1`
-/

namespace A207322.P17058723756961476073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A207322.P17058723756961476073

/-! ## A207322.P10846546186893114264

`a(n-1)-A002893(n)*A062157(n)` with `a(0)=0`
-/

namespace A207322.P10846546186893114264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A002893 n * A062157 n

end

end A207322.P10846546186893114264

/-! ## A207322.P4391745572063553311

`∑[A002893(n)*A057427(n)*(-1)^n]`
-/

namespace A207322.P4391745572063553311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A057427 n * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207322.P4391745572063553311

/-! ## A207322.P14875592188276203333

`∑[(-1)^n*A002893(n)%A001021(n)]`
-/

namespace A207322.P14875592188276203333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.tmod (A002893 n) (A001021 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207322.P14875592188276203333

/-! ## A207322.P12410535736546534462

`∑[A002893(n)%A001021(n)*A033999(n)]`
-/

namespace A207322.P12410535736546534462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002893 n) (A001021 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207322.P12410535736546534462

/-!
# A207323: a(n) = Sum_{k=0..n} k*A002893(k).

The programs for A207323, the canonical program `A207323.P5704552475137606737` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207323 has offset 0).

The definition of A207323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207323.P5704552475137606737

`∑[n*A002893(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207323

/-- `∑[n*A002893(n)]` -/
def P5704552475137606737.Spec : Prop :=
  ∀ n, P5704552475137606737.a n = A207323 n

theorem P5704552475137606737.correct : P5704552475137606737.Spec := by
  intro n
  simp only [A207323]

end A207323

/-! ## A207323.P16537933496293324787

`∑[3/2*A226312(n)]`
-/

namespace A207323.P16537933496293324787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A226312 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207323.P16537933496293324787

namespace A207323

/-- `∑[3/2*A226312(n)]` -/
def P16537933496293324787.Spec : Prop :=
  ∀ n, P16537933496293324787.a n = (A207323 n : ℚ)

end A207323

/-! ## A207323.P16887700383559847797

`∑[n*(A228514(n)+A086618(n))]`
-/

namespace A207323.P16887700383559847797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228514 n + A086618 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207323.P16887700383559847797

namespace A207323

/-- `∑[n*(A228514(n)+A086618(n))]` -/
def P16887700383559847797.Spec : Prop :=
  ∀ n, P16887700383559847797.a n = A207323 n

theorem P16887700383559847797.correct : P16887700383559847797.Spec := by
  intro n
  simp only [A207323, Nat.add_sub_cancel, A207323.P16887700383559847797.f1, A207323.P16887700383559847797.a, A207323.P5704552475137606737.f1, A207323.P5704552475137606737.a, A002893, A002893.P7915644095541255392.f1, A002893.P7915644095541255392.a, A086618, A086618.P9473914020153117651.a, A228514, A228514.P12479248012898447411.a, A087457, A087457.P600842254710248495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207323

/-! ## A207323.P5101575959997012867

`∑[n/A000984(n)*A002896(n)]`
-/

namespace A207323.P5101575959997012867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000984 n : ℚ) * (A002896 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207323.P5101575959997012867

namespace A207323

/-- `∑[n/A000984(n)*A002896(n)]` -/
def P5101575959997012867.Spec : Prop :=
  ∀ n, P5101575959997012867.a n = (A207323 n : ℚ)

end A207323

/-! ## A207323.P11547164192392745572

`∑[3*n*A130046(A007588(n))]`
-/

namespace A207323.P11547164192392745572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A130046 (A007588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207323.P11547164192392745572

namespace A207323

/-- `∑[3*n*A130046(A007588(n))]` -/
def P11547164192392745572.Spec : Prop :=
  ∀ n, P11547164192392745572.a n = A207323 n

end A207323

/-!
# A207324: List of permutations of 1,2,3,...,n for n=1,2,3,..., in the order they are output by Steinhaus-Johnson-Trotter algorithm.

The programs for A207324, there is no canonical definition to state claims against.
-/

/-! ## A207324.P6236921578423988495

`A289498(A003188(n)^A010873(n))%4`
-/

namespace A207324.P6236921578423988495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289498 (SequenceMachineLib.roundAway ((A003188 n : ℚ) ^ (A010873 n : ℤ))).toNat) 4

end

end A207324.P6236921578423988495

/-! ## A207324.P10578856930078084537

`A010873(A289498(A003188(n)^A010873(n)))`
-/

namespace A207324.P10578856930078084537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A289498 (SequenceMachineLib.roundAway ((A003188 n : ℚ) ^ (A010873 n : ℤ))).toNat).toNat

end

end A207324.P10578856930078084537

/-! ## A207324.P11157884250124714727

`A001221(∑[A324891(n+1)+A278594(n)])`
-/

namespace A207324.P11157884250124714727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324891 (n + 1) + A278594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207324.P11157884250124714727

/-! ## A207324.P8304875945467949241

`A098281(∑[A221193(A000700(n))])`
-/

namespace A207324.P8304875945467949241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221193 (A000700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207324.P8304875945467949241

/-! ## A207324.P10241178696520404490

`A001222(or(A036681(n), A102627(n+1)))`
-/

namespace A207324.P10241178696520404490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A036681 n) (A102627 (n + 1))).toNat

end

end A207324.P10241178696520404490

/-!
# A207325: Primes p which divide A003499((p-1)/2)+6 and do not divide A003499(n) + 6 where n < (p-1)/2.

The programs for A207325, there is no canonical definition to state claims against.
-/

/-! ## A207325.P17963180569464341915

`record[p?[(n+1)%A175181(n+1)]]`
-/

namespace A207325.P17963180569464341915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A175181 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207325.P17963180569464341915

/-! ## A207325.P4305599864588600880

`eq[A163300(n+1), A175181(A093178(n))]`
-/

namespace A207325.P4305599864588600880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207325.P4305599864588600880

/-! ## A207325.P13377570954286574468

`eq[A026491(n), A175181(A233583(n+1))]`
-/

namespace A207325.P13377570954286574468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207325.P13377570954286574468

/-! ## A207325.P10335984732292628255

`eq[A103517(n), A175181(A233583(n+1))]`
-/

namespace A207325.P10335984732292628255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207325.P10335984732292628255

/-! ## A207325.P12749787130265066367

`eq[A051755(n+2), A175181(A093178(n))]`
-/

namespace A207325.P12749787130265066367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207325.P12749787130265066367

/-!
# A207326: E.g.f. satisfies 2*A(x)-exp(A(x))+1=sin(x).

The programs for A207326, there is no canonical definition to state claims against.
-/

/-! ## A207326.P11877470764283930471

`A004277(A323772(n))-A323795(n)`
-/

namespace A207326.P11877470764283930471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A323772 n).toNat - A323795 n

end

end A207326.P11877470764283930471

/-!
# A207327: Riordan array (1, x*(1+x)^2/(1-x)).

The programs for A207327, there is no canonical definition to state claims against.
-/

/-! ## A207327.P16944422751139663495

`A202178(n+1)+A186718(A002144(n+1))`
-/

namespace A207327.P16944422751139663495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202178 (n + 1) + A186718 (A002144 (n + 1)).toNat

end

end A207327.P16944422751139663495

/-! ## A207327.P704383506469197212

`A319083(n)-A067898(A010750(n))`
-/

namespace A207327.P704383506469197212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 n - A067898 (A010750 n).toNat

end

end A207327.P704383506469197212

/-! ## A207327.P3274781926377831573

`and(A143034(A180615(n+1)), A319083(n))`
-/

namespace A207327.P3274781926377831573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143034 (A180615 (n + 1)).toNat) (A319083 n)

end

end A207327.P3274781926377831573

/-! ## A207327.P11842628808937893838

`A122016(n)+A037833(A306347(n))`
-/

namespace A207327.P11842628808937893838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 n + A037833 (A306347 n).toNat

end

end A207327.P11842628808937893838

/-! ## A207327.P7999529058418536357

`A319083(n)-A361414(A214825(n))`
-/

namespace A207327.P7999529058418536357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 n - A361414 (A214825 n).toNat

end

end A207327.P7999529058418536357

/-!
# A207328: Nonlinearities of 4-variable Boolean functions ordered lexicographically.

The programs for A207328, the canonical program `A207328.P8721381619634705548` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207328 has offset 0).

The definition of A207328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207328.P15629023549052693275

`A268687(A000120(n))%7`
-/

namespace A207328.P15629023549052693275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268687 (A000120 n).toNat) 7

end

end A207328.P15629023549052693275

namespace A207328

/-- `A268687(A000120(n))%7` -/
def P15629023549052693275.Spec : Prop :=
  ∀ n, P15629023549052693275.a n = A207328 n

end A207328

/-! ## A207328.P8721381619634705548

`∑{p}[A057335(n), A097807(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A207328

/-- `∑{p}[A057335(n), A097807(#)]` -/
def P8721381619634705548.Spec : Prop :=
  ∀ n, P8721381619634705548.a n = A207328 n

theorem P8721381619634705548.correct : P8721381619634705548.Spec := by
  intro n
  simp only [A207328]

end A207328

/-! ## A207328.P12385724007029863035

`∑{p}[A163755(A341916(n)), A097807(#)]`
-/

namespace A207328.P12385724007029863035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A097807 p

end

end A207328.P12385724007029863035

namespace A207328

/-- `∑{p}[A163755(A341916(n)), A097807(#)]` -/
def P12385724007029863035.Spec : Prop :=
  ∀ n, P12385724007029863035.a n = A207328 n

end A207328

/-! ## A207328.P3093309852256331666

`4-abs(4-A000120(A000695(n)))`
-/

namespace A207328.P3093309852256331666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - |4 - A000120 (A000695 n).toNat|

end

end A207328.P3093309852256331666

namespace A207328

/-- `4-abs(4-A000120(A000695(n)))` -/
def P3093309852256331666.Spec : Prop :=
  ∀ n, P3093309852256331666.a n = A207328 n

end A207328

/-! ## A207328.P6417598605629680328

`A095401(A001316(n))%5`
-/

namespace A207328.P6417598605629680328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095401 (A001316 n).toNat) 5

end

end A207328.P6417598605629680328

namespace A207328

/-- `A095401(A001316(n))%5` -/
def P6417598605629680328.Spec : Prop :=
  ∀ n, P6417598605629680328.a n = A207328 n

end A207328

/-! ## A207328.P12925231879284254712

`val(A222226(A102376(n)), 4)`
-/

namespace A207328.P12925231879284254712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A222226 (A102376 n).toNat).toNat 4

end

end A207328.P12925231879284254712

namespace A207328

/-- `val(A222226(A102376(n)), 4)` -/
def P12925231879284254712.Spec : Prop :=
  ∀ n, (P12925231879284254712.a n : ℤ) = A207328 n

end A207328

/-! ## A207328.P3289759192136346824

`A086096(A001316(n)²)%5`
-/

namespace A207328.P3289759192136346824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086096 (A001316 n ^ 2).toNat) 5

end

end A207328.P3289759192136346824

namespace A207328

/-- `A086096(A001316(n)²)%5` -/
def P3289759192136346824.Spec : Prop :=
  ∀ n, P3289759192136346824.a n = A207328 n

end A207328

/-! ## A207328.P636835114493258403

`A001221(A190803(A001316(n)²))`
-/

namespace A207328.P636835114493258403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A190803 (A001316 n ^ 2).toNat).toNat

end

end A207328.P636835114493258403

namespace A207328

/-- `A001221(A190803(A001316(n)²))` -/
def P636835114493258403.Spec : Prop :=
  ∀ n, P636835114493258403.a n = A207328 n

end A207328

/-! ## A207328.P16553378091423051357

`A001222(A161152(3^A000120(n)))`
-/

namespace A207328.P16553378091423051357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161152 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000120 n : ℤ))).toNat).toNat

end

end A207328.P16553378091423051357

namespace A207328

/-- `A001222(A161152(3^A000120(n)))` -/
def P16553378091423051357.Spec : Prop :=
  ∀ n, P16553378091423051357.a n = A207328 n

end A207328

/-! ## A207328.P10238432883238891945

`A303597(A000120(n)%p?[A000695(n)])`
-/

namespace A207328.P10238432883238891945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303597 (Int.tmod (A000120 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A207328.P10238432883238891945

namespace A207328

/-- `A303597(A000120(n)%p?[A000695(n)])` -/
def P10238432883238891945.Spec : Prop :=
  ∀ n, P10238432883238891945.a n = A207328 n

end A207328

/-!
# A207329: Number of distinct integers which can be represented as the product of factors of n, using each factor at most once.

The programs for A207329, there is no canonical definition to state claims against.
-/

/-! ## A207329.P2448571137005627117

`A069625(n+1)+1`
-/

namespace A207329.P2448571137005627117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069625 (n + 1) + 1

end

end A207329.P2448571137005627117

/-! ## A207329.P6554657742650130715

`A032741(∏{d}[n+1, #]/(n+1))+∏{e}[n+1, #+1]`
-/

namespace A207329.P6554657742650130715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat + ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A207329.P6554657742650130715

/-! ## A207329.P5795278360383180504

`A123580(A100577(n+1))`
-/

namespace A207329.P5795278360383180504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A100577 (n + 1)).toNat

end

end A207329.P5795278360383180504

/-! ## A207329.P4167480286839959077

`A271519(A283995(n+1))+1`
-/

namespace A207329.P4167480286839959077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (A283995 (n + 1)).toNat + 1

end

end A207329.P4167480286839959077

/-! ## A207329.P8903734531114482858

`A032741(A007956(n+1))+A000005(n+1)`
-/

namespace A207329.P8903734531114482858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007956 (n + 1)).toNat + A000005 (n + 1)

end

end A207329.P8903734531114482858

/-!
# A207331: Array of indices (or logarithms) Modd p for odd numbers smaller than p relative to basis of smallest primitive root.

The programs for A207331, there is no canonical definition to state claims against.
-/

/-! ## A207331.P7846381634864932170

`A001842(A073031(n)*A122805(n+1))`
-/

namespace A207331.P7846381634864932170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A073031 n * A122805 (n + 1)).toNat

end

end A207331.P7846381634864932170

/-! ## A207331.P10874873723349744373

`A001222(A194029(n+1)^A067591(n))`
-/

namespace A207331.P10874873723349744373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A194029 (n + 1) : ℚ) ^ (A067591 n : ℤ))).toNat

end

end A207331.P10874873723349744373

/-! ## A207331.P6843302783502161690

`A001222(A194029(n+1)^A147785(n))`
-/

namespace A207331.P6843302783502161690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A194029 (n + 1) : ℚ) ^ (A147785 n : ℤ))).toNat

end

end A207331.P6843302783502161690

/-! ## A207331.P1419306351175820270

`A000005(A194029(n+1)^A067591(n))-1`
-/

namespace A207331.P1419306351175820270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A194029 (n + 1) : ℚ) ^ (A067591 n : ℤ))).toNat - 1

end

end A207331.P1419306351175820270

/-! ## A207331.P9423443604417027801

`A000005(A194029(n+1)^A147785(n))-1`
-/

namespace A207331.P9423443604417027801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A194029 (n + 1) : ℚ) ^ (A147785 n : ℤ))).toNat - 1

end

end A207331.P9423443604417027801

/-!
# A207332: Double factorials (prime(n)-2)!!.

The programs for A207332, the canonical program `A207332.P9994146433666114219` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207332 has offset 1).

The definition of A207332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207332.P9994146433666114219

`A006882(A000040(n+1)-2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207332

/-- `A006882(A000040(n+1)-2)` -/
def P9994146433666114219.Spec : Prop :=
  ∀ n, P9994146433666114219.a n = A207332 (n + 1)

theorem P9994146433666114219.correct : P9994146433666114219.Spec := by
  intro n
  simp only [A207332, Nat.add_sub_cancel]

end A207332

/-! ## A207332.P8728977479911538450

`A133221(p?[comp[n²]])`
-/

namespace A207332.P8728977479911538450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A207332.P8728977479911538450

namespace A207332

/-- `A133221(p?[comp[n²]])` -/
def P8728977479911538450.Spec : Prop :=
  ∀ n, P8728977479911538450.a n = A207332 (n + 1)

end A207332

/-! ## A207332.P16721398280282810378

`A006882(p?[comp[4*n]]-2)`
-/

namespace A207332.P16721398280282810378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2)

end

end A207332.P16721398280282810378

namespace A207332

/-- `A006882(p?[comp[4*n]]-2)` -/
def P16721398280282810378.Spec : Prop :=
  ∀ n, P16721398280282810378.a n = A207332 (n + 1)

end A207332

/-! ## A207332.P11837033378534678400

`A006882(eq[1, ∑{e}[n+2, #]])`
-/

namespace A207332.P11837033378534678400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207332.P11837033378534678400

namespace A207332

/-- `A006882(eq[1, ∑{e}[n+2, #]])` -/
def P11837033378534678400.Spec : Prop :=
  ∀ n, P11837033378534678400.a n = A207332 (n + 1)

end A207332

/-! ## A207332.P11694561798139414704

`abs(A055634(record[∏{p}[n+1, #-1]]))`
-/

namespace A207332.P11694561798139414704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A207332.P11694561798139414704

namespace A207332

/-- `abs(A055634(record[∏{p}[n+1, #-1]]))` -/
def P11694561798139414704.Spec : Prop :=
  ∀ n, P11694561798139414704.a n = A207332 (n + 1)

end A207332

/-!
# A207333: Allowed values of degrees of minimal polynomials of 2*cos(Pi/N).

The programs for A207333, there is no canonical definition to state claims against.
-/

/-! ## A207333.P3740267109317919636

`A095201(A323550(n+1))`
-/

namespace A207333.P3740267109317919636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (A323550 (n + 1)).toNat

end

end A207333.P3740267109317919636

/-! ## A207333.P13091532279046723212

`record[A055034(A272978(n+1))]`
-/

namespace A207333.P13091532279046723212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A272978 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207333.P13091532279046723212

/-! ## A207333.P3351512846882584685

`A323608(record[A000010(2*(n+2))+1])`
-/

namespace A207333.P3351512846882584685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323608 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207333.P3351512846882584685

/-! ## A207333.P5030876900564830861

`record[A055034(n+1)%A345945(n+1)]`
-/

namespace A207333.P5030876900564830861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055034 (n + 1)) (A345945 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207333.P5030876900564830861

/-! ## A207333.P14630424220559374090

`record[A055034(n+1)]%(lt[A202673(n+4), 1]+2)`
-/

namespace A207333.P14630424220559374090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202673 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2 : ℤ)

end

end A207333.P14630424220559374090

/-!
# A207335: Number of minimal polynomials of 2*cos(Pi/N) with allowed degree given by A207333.

The programs for A207335, there is no canonical definition to state claims against.
-/

/-! ## A207335.P18150811273923329871

`floor(A143422(n+2)+acot(n))`
-/

namespace A207335.P18150811273923329871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143422 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A207335.P18150811273923329871

/-! ## A207335.P15288968597818877660

`A143422(ceil(acot(n)+n)+1)`
-/

namespace A207335.P15288968597818877660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉ + 1).toNat

end

end A207335.P15288968597818877660

/-! ## A207335.P16247456978824142365

`A143422(round(sqrt(n²+1))+2)`
-/

namespace A207335.P16247456978824142365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat

end

end A207335.P16247456978824142365

/-! ## A207335.P8761340614703233479

`A143422(n+2)+A000007(n)`
-/

namespace A207335.P8761340614703233479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 2) + A000007 n

end

end A207335.P8761340614703233479

/-! ## A207335.P9065456458249137472

`A151933(n)+A143422(n+2)`
-/

namespace A207335.P9065456458249137472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A143422 (n + 2)

end

end A207335.P9065456458249137472

/-! ## A207335.P15071255933596161421

`A143422(n+2)+1-A057427(n)`
-/

namespace A207335.P15071255933596161421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 2) + 1 - A057427 n

end

end A207335.P15071255933596161421

/-! ## A207335.P13423864141577680123

`Δ[∑[A143422(n+1)]%A112849(n+1)]`
-/

namespace A207335.P13423864141577680123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A112849 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207335.P13423864141577680123

/-!
# A207336: One half of smallest positive nontrivial even solution of the congruence x^2 == 1 (mod A001748(n+2)), n>=1.

The programs for A207336, the canonical program `A207336.P470333082275016402` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207336 has offset 1).

The definition of A207336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A207336.P470333082275016402

`(3*A000040(n+3)-A208296(n+1))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207336

/-- `(3*A000040(n+3)-A208296(n+1))/2` -/
def P470333082275016402.Spec : Prop :=
  ∀ n, P470333082275016402.a n = (A207336 (n + 1) : ℚ)

end A207336

/-! ## A207336.P485592792547088775

`eq[gcd(3, n), A051699(2*n)]`
-/

namespace A207336.P485592792547088775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207336.P485592792547088775

namespace A207336

/-- `eq[gcd(3, n), A051699(2*n)]` -/
def P485592792547088775.Spec : Prop :=
  ∀ n, (P485592792547088775.a n : ℤ) = A207336 (n + 1)

end A207336

/-! ## A207336.P962146883789133105

`record[ceil(Δ[ratio[A020639(n+3)]])]`
-/

namespace A207336.P962146883789133105
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207336.P962146883789133105

namespace A207336

/-- `record[ceil(Δ[ratio[A020639(n+3)]])]` -/
def P962146883789133105.Spec : Prop :=
  ∀ n, P962146883789133105.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P2575115976383194509

`A300076(p?[2*n-n%3+5])`
-/

namespace A207336.P2575115976383194509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 3 : ℕ) : ℤ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A207336.P2575115976383194509

namespace A207336

/-- `A300076(p?[2*n-n%3+5])` -/
def P2575115976383194509.Spec : Prop :=
  ∀ n, P2575115976383194509.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P574075002419120158

`eq[1, A001222((2*n)%3+2*n+1)]+1`
-/

namespace A207336.P574075002419120158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n % 3 + 2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A207336.P574075002419120158

namespace A207336

/-- `eq[1, A001222((2*n)%3+2*n+1)]+1` -/
def P574075002419120158.Spec : Prop :=
  ∀ n, (P574075002419120158.a n : ℤ) = A207336 (n + 1)

end A207336

/-! ## A207336.P18036934043084586186

`A001651(A181709(n+1))`
-/

namespace A207336.P18036934043084586186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A181709 (n + 1)).toNat

end

end A207336.P18036934043084586186

namespace A207336

/-- `A001651(A181709(n+1))` -/
def P18036934043084586186.Spec : Prop :=
  ∀ n, P18036934043084586186.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P11469124469254560481

`A300076(A004139(n+1))`
-/

namespace A207336.P11469124469254560481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A004139 (n + 1)).toNat

end

end A207336.P11469124469254560481

namespace A207336

/-- `A300076(A004139(n+1))` -/
def P11469124469254560481.Spec : Prop :=
  ∀ n, P11469124469254560481.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P15812784801209070988

`A300076(A215848(n+1))`
-/

namespace A207336.P15812784801209070988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A215848 (n + 1)).toNat

end

end A207336.P15812784801209070988

namespace A207336

/-- `A300076(A215848(n+1))` -/
def P15812784801209070988.Spec : Prop :=
  ∀ n, P15812784801209070988.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P10095549732334449709

`A080782(A006254(n+2))`
-/

namespace A207336.P10095549732334449709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A006254 (n + 2)).toNat

end

end A207336.P10095549732334449709

namespace A207336

/-- `A080782(A006254(n+2))` -/
def P10095549732334449709.Spec : Prop :=
  ∀ n, P10095549732334449709.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P5960741679493431574

`A143097(A005097(n+2))`
-/

namespace A207336.P5960741679493431574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A005097 (n + 2)).toNat

end

end A207336.P5960741679493431574

namespace A207336

/-- `A143097(A005097(n+2))` -/
def P5960741679493431574.Spec : Prop :=
  ∀ n, P5960741679493431574.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P15574546293060767681

`A106251(A165972(n+2))`
-/

namespace A207336.P15574546293060767681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A165972 (n + 2)).toNat

end

end A207336.P15574546293060767681

namespace A207336

/-- `A106251(A165972(n+2))` -/
def P15574546293060767681.Spec : Prop :=
  ∀ n, P15574546293060767681.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P3822801671121095612

`A300076(A045319(n+2))`
-/

namespace A207336.P3822801671121095612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A045319 (n + 2)).toNat

end

end A207336.P3822801671121095612

namespace A207336

/-- `A300076(A045319(n+2))` -/
def P3822801671121095612.Spec : Prop :=
  ∀ n, P3822801671121095612.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P17030696396710276882

`A300076(A045344(n+2))`
-/

namespace A207336.P17030696396710276882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A045344 (n + 2)).toNat

end

end A207336.P17030696396710276882

namespace A207336

/-- `A300076(A045344(n+2))` -/
def P17030696396710276882.Spec : Prop :=
  ∀ n, P17030696396710276882.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P204412353704352631

`A300076(A065091(n+2))`
-/

namespace A207336.P204412353704352631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A065091 (n + 2)).toNat

end

end A207336.P204412353704352631

namespace A207336

/-- `A300076(A065091(n+2))` -/
def P204412353704352631.Spec : Prop :=
  ∀ n, P204412353704352631.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P10704667669411801659

`A335129(A089192(n+2))`
-/

namespace A207336.P10704667669411801659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335129 (A089192 (n + 2)).toNat

end

end A207336.P10704667669411801659

namespace A207336

/-- `A335129(A089192(n+2))` -/
def P10704667669411801659.Spec : Prop :=
  ∀ n, P10704667669411801659.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P14614437098373264755

`A300076(A140475(n+2))`
-/

namespace A207336.P14614437098373264755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A140475 (n + 2)).toNat

end

end A207336.P14614437098373264755

namespace A207336

/-- `A300076(A140475(n+2))` -/
def P14614437098373264755.Spec : Prop :=
  ∀ n, P14614437098373264755.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P354104137882779314

`A300076(A000040(n+3))`
-/

namespace A207336.P354104137882779314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A000040 (n + 3)).toNat

end

end A207336.P354104137882779314

namespace A207336

/-- `A300076(A000040(n+3))` -/
def P354104137882779314.Spec : Prop :=
  ∀ n, P354104137882779314.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P4334412563115503513

`A300076(p?[comp[A300042(n)]])`
-/

namespace A207336.P4334412563115503513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300042 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A207336.P4334412563115503513

namespace A207336

/-- `A300076(p?[comp[A300042(n)]])` -/
def P4334412563115503513.Spec : Prop :=
  ∀ n, P4334412563115503513.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P7939444137797970223

`record[A300076(A006530(n+3))]`
-/

namespace A207336.P7939444137797970223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A006530 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207336.P7939444137797970223

namespace A207336

/-- `record[A300076(A006530(n+3))]` -/
def P7939444137797970223.Spec : Prop :=
  ∀ n, P7939444137797970223.a n = A207336 (n + 1)

end A207336

/-! ## A207336.P280414494333053550

`record[A300076(A014963(n+3))]`
-/

namespace A207336.P280414494333053550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A014963 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207336.P280414494333053550

namespace A207336

/-- `record[A300076(A014963(n+3))]` -/
def P280414494333053550.Spec : Prop :=
  ∀ n, P280414494333053550.a n = A207336 (n + 1)

end A207336

/-!
# A207337: Primes of the form (m^2+1)/10.

The programs for A207337, there is no canonical definition to state claims against.
-/

/-! ## A207337.P1599081809726230609

`∪[A154409(n+1), A154412(n+1)]`
-/

namespace A207337.P1599081809726230609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P1599081809726230609

/-! ## A207337.P14240503921523165743

`A014442(A002733(n+1))`
-/

namespace A207337.P14240503921523165743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A002733 (n + 1)).toNat

end

end A207337.P14240503921523165743

/-! ## A207337.P16014130422830424055

`record[A014442(A063206(n+1))]`
-/

namespace A207337.P16014130422830424055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A063206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207337.P16014130422830424055

/-! ## A207337.P16150803296516788205

`record[A014442(A063226(n+1))]`
-/

namespace A207337.P16150803296516788205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A063226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207337.P16150803296516788205

/-! ## A207337.P14718999806918041926

`A036408(or(1, A002733(n+1)))`
-/

namespace A207337.P14718999806918041926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (Int.lor 1 (A002733 (n + 1))).toNat

end

end A207337.P14718999806918041926

/-! ## A207337.P2580486509214735073

`record[A014442(sqrt(A273374(n+1)))]`
-/

namespace A207337.P2580486509214735073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (SequenceMachineLib.roundAway (Real.sqrt (A273374 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207337.P2580486509214735073

/-! ## A207337.P11320510714264147036

`A036408(eq[A036408(n), A281793(n)])`
-/

namespace A207337.P11320510714264147036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207337.P11320510714264147036

/-! ## A207337.P17794507039684204294

`A056864(eq[A056864(n), A281793(n)])`
-/

namespace A207337.P17794507039684204294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056864 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207337.P17794507039684204294

/-! ## A207337.P5914569449737604344

`A259036(A002733(n+1)%A016933(n)²)`
-/

namespace A207337.P5914569449737604344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (Int.tmod (A002733 (n + 1)) (A016933 n ^ 2)).toNat

end

end A207337.P5914569449737604344

/-! ## A207337.P6983431819959189691

`record[A014442(A004525(A017329(n)))]`
-/

namespace A207337.P6983431819959189691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A004525 (A017329 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207337.P6983431819959189691

/-! ## A207337.P3140979404206499695

`p?[round(n/3)²+n²]`
-/

namespace A207337.P3140979404206499695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3) ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207337.P3140979404206499695

/-! ## A207337.P2508617510004788671

`or(1, p?[A220082(n+1)])`
-/

namespace A207337.P2508617510004788671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A207337.P2508617510004788671

/-! ## A207337.P1855145890296233682

`p?[A220082(n+1)]%A220083(3*n+1)`
-/

namespace A207337.P1855145890296233682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A220083 (3 * n + 1))

end

end A207337.P1855145890296233682

/-! ## A207337.P16848636442586740482

`∩[A002144(n+1), A211440(n)]`
-/

namespace A207337.P16848636442586740482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P16848636442586740482

/-! ## A207337.P8980650274386783900

`∩[A002313(n+1), A211440(n)]`
-/

namespace A207337.P8980650274386783900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P8980650274386783900

/-! ## A207337.P15961841659071982374

`∩[A055025(n+1), A211440(n)]`
-/

namespace A207337.P15961841659071982374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P15961841659071982374

/-! ## A207337.P3130619402177106748

`∩[A002144(n+1), A220082(n+1)]`
-/

namespace A207337.P3130619402177106748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P3130619402177106748

/-! ## A207337.P6086892140993666243

`∩[A002313(n+1), A220082(n+1)]`
-/

namespace A207337.P6086892140993666243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P6086892140993666243

/-! ## A207337.P12535401729773706246

`∩[A055025(n+1), A220082(n+1)]`
-/

namespace A207337.P12535401729773706246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P12535401729773706246

/-! ## A207337.P17951844083802372080

`∩[A172480(n+1), A211440(n)]`
-/

namespace A207337.P17951844083802372080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207337.P17951844083802372080

/-!
# A207338: Triangle read by rows in which row n lists the prime factors of n with repetition, with a(1) = 1, but with the primes of the form 4k + 1 multiplied by -1.

The programs for A207338, there is no canonical definition to state claims against.
-/

/-! ## A207338.P11103047797783298060

`A209662(A027746(n+1))`
-/

namespace A207338.P11103047797783298060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (A027746 (n + 1)).toNat

end

end A207338.P11103047797783298060

/-! ## A207338.P12590168661921423903

`∏{d}[A085392(A265110(n+1)²), A209662(#)]`
-/

namespace A207338.P12590168661921423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A265110 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A209662 d

end

end A207338.P12590168661921423903

/-! ## A207338.P9070130870755604167

`A027746(n+1)*A209661(A307746(n+1))`
-/

namespace A207338.P9070130870755604167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1) * A209661 (A307746 (n + 1)).toNat

end

end A207338.P9070130870755604167

/-! ## A207338.P11741477904137265340

`A027746(n+1)*A209661(2*A027746(n+1))`
-/

namespace A207338.P11741477904137265340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1) * A209661 (2 * A027746 (n + 1)).toNat

end

end A207338.P11741477904137265340

/-! ## A207338.P5408827357585452873

`A027746(A000027(n+1))*A209661(A027746(n+1))`
-/

namespace A207338.P5408827357585452873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A000027 (n + 1)).toNat * A209661 (A027746 (n + 1)).toNat

end

end A207338.P5408827357585452873

/-! ## A207338.P5471347501266281755

`A006530(A265110(n+1))*A209661(A027746(n+1))`
-/

namespace A207338.P5471347501266281755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (n + 1)).toNat * A209661 (A027746 (n + 1)).toNat

end

end A207338.P5471347501266281755

/-! ## A207338.P10567238258506432074

`A006530(A265110(n+1))*A209661(A307746(n+1))`
-/

namespace A207338.P10567238258506432074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (n + 1)).toNat * A209661 (A307746 (n + 1)).toNat

end

end A207338.P10567238258506432074

/-! ## A207338.P1121530778402083265

`A087039(A265110(n+1)²)/A209661(A027746(n+1))`
-/

namespace A207338.P1121530778402083265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087039 (A265110 (n + 1) ^ 2).toNat : ℚ) / (A209661 (A027746 (n + 1)).toNat : ℚ)

end

end A207338.P1121530778402083265

/-!
# A207339: Triangular numbers T from A000217 such that (4*T+1)/5 is prime.

The programs for A207339, there is no canonical definition to state claims against.
-/

/-! ## A207339.P2447096140707651101

`A000217((A002733(n+1)-1)/2)`
-/

namespace A207339.P2447096140707651101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A002733 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A207339.P2447096140707651101

/-! ## A207339.P3333333396595758650

`A001972(A002733(n+1)-3)`
-/

namespace A207339.P3333333396595758650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A002733 (n + 1) - 3).toNat

end

end A207339.P3333333396595758650

/-! ## A207339.P5809195084453785093

`A008795(A002733(n+1)-3)`
-/

namespace A207339.P5809195084453785093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A002733 (n + 1) - 3).toNat

end

end A207339.P5809195084453785093

/-! ## A207339.P17937393072069989899

`A001971(A002733(n+1))`
-/

namespace A207339.P17937393072069989899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A002733 (n + 1)).toNat

end

end A207339.P17937393072069989899

/-! ## A207339.P95628535497480743

`A209268(A002733(n+1)-2)`
-/

namespace A207339.P95628535497480743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (A002733 (n + 1) - 2).toNat

end

end A207339.P95628535497480743

/-! ## A207339.P11245350835737407154

`A082184(A207337(n+1))`
-/

namespace A207339.P11245350835737407154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (A207337 (n + 1)).toNat

end

end A207339.P11245350835737407154

/-!
# A207340: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207340, there is no canonical definition to state claims against.
-/

/-! ## A207340.P8987432131984802988

`A207346(∑[4*n]+1)`
-/

namespace A207340.P8987432131984802988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207340.P8987432131984802988

/-! ## A207340.P6856082513480944196

`record[gcd(A114327(n), A207346(n+1))]`
-/

namespace A207340.P6856082513480944196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207346 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207340.P6856082513480944196

/-! ## A207340.P6110703756254215663

`gcd(A000038(n), A207346(A001844(n)))`
-/

namespace A207340.P6110703756254215663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207346 (A001844 n).toNat)

end

end A207340.P6110703756254215663

/-! ## A207340.P12882187447840687838

`lcm(A207346(A001844(n)), A340811(n))`
-/

namespace A207340.P12882187447840687838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A207346 (A001844 n).toNat) (A340811 n)

end

end A207340.P12882187447840687838

/-! ## A207340.P7259102967112256072

`A207346(A001844(n))^A007318(∑[n+1])`
-/

namespace A207340.P7259102967112256072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207346 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A207340.P7259102967112256072

/-!
# A207341: Number of nX3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207341, there is no canonical definition to state claims against.
-/

/-! ## A207341.P8620747941774780949

`A207774(∑[n+2]+4)`
-/

namespace A207341.P8620747941774780949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207341.P8620747941774780949

/-! ## A207341.P7839056563405132216

`lcm(2, A207774(A167614(n+1)))`
-/

namespace A207341.P7839056563405132216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207774 (A167614 (n + 1)).toNat)

end

end A207341.P7839056563405132216

/-! ## A207341.P1365872522578621473

`A207661(∑[n+2]+4)`
-/

namespace A207341.P1365872522578621473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207341.P1365872522578621473

/-! ## A207341.P5648590394908972697

`A207661(A167614(n+1))+A178798(n)`
-/

namespace A207341.P5648590394908972697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A167614 (n + 1)).toNat + A178798 n

end

end A207341.P5648590394908972697

/-! ## A207341.P4394155423058698271

`A207661(A167614(n+1))+A185284(n)`
-/

namespace A207341.P4394155423058698271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A167614 (n + 1)).toNat + A185284 n

end

end A207341.P4394155423058698271

/-!
# A207342: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207342, there is no canonical definition to state claims against.
-/

/-! ## A207342.P11443705669455520510

`A207774(A141214(n)+7)`
-/

namespace A207342.P11443705669455520510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A141214 n + 7).toNat

end

end A207342.P11443705669455520510

/-! ## A207342.P18441359945681970930

`A207774(A052905(n)+9)`
-/

namespace A207342.P18441359945681970930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A052905 n + 9).toNat

end

end A207342.P18441359945681970930

/-! ## A207342.P14701129010113475560

`A207774(A167614(n+2)+1)`
-/

namespace A207342.P14701129010113475560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A167614 (n + 2) + 1).toNat

end

end A207342.P14701129010113475560

/-! ## A207342.P5291292872097482389

`A207774(A166136(n+2)-2)`
-/

namespace A207342.P5291292872097482389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A166136 (n + 2) - 2).toNat

end

end A207342.P5291292872097482389

/-! ## A207342.P2491524793628163812

`A207774(A000096(n+2)+5)`
-/

namespace A207342.P2491524793628163812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000096 (n + 2) + 5).toNat

end

end A207342.P2491524793628163812

/-!
# A207343: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207343, there is no canonical definition to state claims against.
-/

/-! ## A207343.P3597967305317897651

`A207346(Δ[A264443(n)])`
-/

namespace A207343.P3597967305317897651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (f1 (n + 1) - f1 n).toNat

end

end A207343.P3597967305317897651

/-! ## A207343.P6194259328327378677

`A207346(A046691(n+3))`
-/

namespace A207343.P6194259328327378677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A046691 (n + 3)).toNat

end

end A207343.P6194259328327378677

/-! ## A207343.P7527481492916799754

`A207346(Δ[A023545(n+1)])`
-/

namespace A207343.P7527481492916799754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (f1 (n + 1) - f1 n).toNat

end

end A207343.P7527481492916799754

/-! ## A207343.P15637340349497832430

`A207346(A052905(n+2)+1)`
-/

namespace A207343.P15637340349497832430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A052905 (n + 2) + 1).toNat

end

end A207343.P15637340349497832430

/-! ## A207343.P9135910392849057458

`A207346(n+1+A000217(n+4))`
-/

namespace A207343.P9135910392849057458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 ((n + 1 : ℤ) + A000217 (n + 4)).toNat

end

end A207343.P9135910392849057458

/-!
# A207344: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207344, there is no canonical definition to state claims against.
-/

/-! ## A207344.P1383723484758578288

`A207346(A052905(n+3))`
-/

namespace A207344.P1383723484758578288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A052905 (n + 3)).toNat

end

end A207344.P1383723484758578288

/-! ## A207344.P8665470364651548642

`A207346(A055999(n+3)+1)`
-/

namespace A207344.P8665470364651548642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A055999 (n + 3) + 1).toNat

end

end A207344.P8665470364651548642

/-! ## A207344.P4091636019888069541

`A207346(A000217(n+6)-5)`
-/

namespace A207344.P4091636019888069541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000217 (n + 6) - 5).toNat

end

end A207344.P4091636019888069541

/-! ## A207344.P5969590175835378889

`A207346(A000124(n+6)-6)`
-/

namespace A207344.P5969590175835378889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000124 (n + 6) - 6).toNat

end

end A207344.P5969590175835378889

/-! ## A207344.P8051215206675776350

`A207346(Δ[A023551(n+1)]+1)`
-/

namespace A207344.P8051215206675776350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (f1 (n + 1) - f1 n + 1).toNat

end

end A207344.P8051215206675776350

/-!
# A207345: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207345, there is no canonical definition to state claims against.
-/

/-! ## A207345.P1843097577626802239

`A207346(C(n+7, 2)+n+1)`
-/

namespace A207345.P1843097577626802239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (Nat.choose (n + 7) 2 + (n + 1))

end

end A207345.P1843097577626802239

/-! ## A207345.P3899260655405806952

`A207346(A055999(n+4))`
-/

namespace A207345.P3899260655405806952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A055999 (n + 4)).toNat

end

end A207345.P3899260655405806952

/-! ## A207345.P17166042811828727080

`A207346(Δ[A023551(n+2)])`
-/

namespace A207345.P17166042811828727080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (f1 (n + 1) - f1 n).toNat

end

end A207345.P17166042811828727080

/-! ## A207345.P4096260197151971648

`A207346(A000124(n+7)-7)`
-/

namespace A207345.P4096260197151971648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000124 (n + 7) - 7).toNat

end

end A207345.P4096260197151971648

/-! ## A207345.P18273781533115876727

`A207346(A000217(n+6)+n+1)`
-/

namespace A207345.P18273781533115876727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207345.P18273781533115876727

/-!
# A207346: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207346, there is no canonical definition to state claims against.
-/

/-! ## A207346.P16303535862334194441

`A207895(n+1)-A184955(n)%3`
-/

namespace A207346.P16303535862334194441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (n + 1) - Int.tmod (A184955 n) 3

end

end A207346.P16303535862334194441

/-! ## A207346.P4518316043802517493

`A207895(n+1)-A055641(A005246(n))`
-/

namespace A207346.P4518316043802517493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (n + 1) - A055641 (A005246 n).toNat

end

end A207346.P4518316043802517493

/-! ## A207346.P10356669150988857719

`A207895(n+1)-A102683(A001629(n))`
-/

namespace A207346.P10356669150988857719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (n + 1) - A102683 (A001629 n).toNat

end

end A207346.P10356669150988857719

/-! ## A207346.P911586961979573598

`A207895(n+1)-A102683(A030239(n))`
-/

namespace A207346.P911586961979573598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (n + 1) - A102683 (A030239 n).toNat

end

end A207346.P911586961979573598

/-! ## A207346.P12476979319823757195

`A207895(n+1)-A101637(A046630(n))`
-/

namespace A207346.P12476979319823757195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (n + 1) - A101637 (A046630 n).toNat

end

end A207346.P12476979319823757195

/-!
# A207347: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207347, the canonical program `A207347.P7012448862978367937` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207347 has offset 1).

The definition of A207347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207347.P7012448862978367937

`ogf((6+24x+12x^2+18x^3+18x^4+6x^6)/(1-2x-x^3+2x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207347

/-- `ogf((6+24x+12x^2+18x^3+18x^4+6x^6)/(1-2x-x^3+2x^4+x^5+x^6))` -/
def P7012448862978367937.Spec : Prop :=
  ∀ n, P7012448862978367937.a n = A207347 (n + 1)

theorem P7012448862978367937.correct : P7012448862978367937.Spec := by
  intro n
  simp only [A207347, Nat.add_sub_cancel]

end A207347

/-! ## A207347.P4583626987683533857

`A207346(∑[n+2]+4)`
-/

namespace A207347.P4583626987683533857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207347.P4583626987683533857

namespace A207347

/-- `A207346(∑[n+2]+4)` -/
def P4583626987683533857.Spec : Prop :=
  ∀ n, P4583626987683533857.a n = A207347 (n + 1)

end A207347

/-! ## A207347.P1769307988194823728

`lcm(2, A207346(A167614(n+1)))`
-/

namespace A207347.P1769307988194823728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207346 (A167614 (n + 1)).toNat)

end

end A207347.P1769307988194823728

namespace A207347

/-- `lcm(2, A207346(A167614(n+1)))` -/
def P1769307988194823728.Spec : Prop :=
  ∀ n, (P1769307988194823728.a n : ℤ) = A207347 (n + 1)

end A207347

/-! ## A207347.P17276967899100326797

`A207346(A167614(n+1))%A017035(n)`
-/

namespace A207347.P17276967899100326797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207346 (A167614 (n + 1)).toNat) (A017035 n)

end

end A207347.P17276967899100326797

namespace A207347

/-- `A207346(A167614(n+1))%A017035(n)` -/
def P17276967899100326797.Spec : Prop :=
  ∀ n, P17276967899100326797.a n = A207347 (n + 1)

end A207347

/-! ## A207347.P10658690466766752781

`A207346(A167614(n+1))+A000007(n+1)`
-/

namespace A207347.P10658690466766752781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A207347.P10658690466766752781

namespace A207347

/-- `A207346(A167614(n+1))+A000007(n+1)` -/
def P10658690466766752781.Spec : Prop :=
  ∀ n, P10658690466766752781.a n = A207347 (n + 1)

end A207347

/-!
# A207348: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207348, there is no canonical definition to state claims against.
-/

/-! ## A207348.P17808809062906420840

`A207346(A141214(n)+7)`
-/

namespace A207348.P17808809062906420840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A141214 n + 7).toNat

end

end A207348.P17808809062906420840

/-! ## A207348.P15851362193520621729

`A207346(A052905(n)+9)`
-/

namespace A207348.P15851362193520621729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A052905 n + 9).toNat

end

end A207348.P15851362193520621729

/-! ## A207348.P16754179873281100572

`A207346(A055999(n)+10)`
-/

namespace A207348.P16754179873281100572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A055999 n + 10).toNat

end

end A207348.P16754179873281100572

/-! ## A207348.P14587271410827935873

`A207346(Δ[A008778(n)]+6)`
-/

namespace A207348.P14587271410827935873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (f1 (n + 1) - f1 n + 6).toNat

end

end A207348.P14587271410827935873

/-! ## A207348.P12136106587459601567

`A207346(A167614(n+2)+1)`
-/

namespace A207348.P12136106587459601567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A167614 (n + 2) + 1).toNat

end

end A207348.P12136106587459601567

/-!
# A207349: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207349, there is no canonical definition to state claims against.
-/

/-! ## A207349.P1728135856113832781

`A207346(A155212(n)+13)`
-/

namespace A207349.P1728135856113832781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A155212 n + 13).toNat

end

end A207349.P1728135856113832781

/-! ## A207349.P1591178079188943119

`A207346(A056000(n)+15)`
-/

namespace A207349.P1591178079188943119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A056000 n + 15).toNat

end

end A207349.P1591178079188943119

/-! ## A207349.P12585521285809118069

`A207346(A000217(n+4)+5)`
-/

namespace A207349.P12585521285809118069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000217 (n + 4) + 5).toNat

end

end A207349.P12585521285809118069

/-! ## A207349.P11600283337553840868

`A207346(A055998(n+2)+8)`
-/

namespace A207349.P11600283337553840868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A055998 (n + 2) + 8).toNat

end

end A207349.P11600283337553840868

/-! ## A207349.P5163736433421791731

`A207346(A055999(n+3)-2*n)`
-/

namespace A207349.P5163736433421791731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A207349.P5163736433421791731

/-!
# A207350: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207350, there is no canonical definition to state claims against.
-/

/-! ## A207350.P4008877102163421052

`A207346(A056115(n)+21)`
-/

namespace A207350.P4008877102163421052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A056115 n + 21).toNat

end

end A207350.P4008877102163421052

/-! ## A207350.P16900918874182298191

`A207346(A000217(n+5)+6)`
-/

namespace A207350.P16900918874182298191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000217 (n + 5) + 6).toNat

end

end A207350.P16900918874182298191

/-! ## A207350.P11462476709364195687

`A207346(A000124(n+6)-(n+1))`
-/

namespace A207350.P11462476709364195687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A207350.P11462476709364195687

/-! ## A207350.P11569567889068575886

`A207346(A166136(A020705(n)))`
-/

namespace A207350.P11569567889068575886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A166136 (A020705 n).toNat).toNat

end

end A207350.P11569567889068575886

/-! ## A207350.P5170656237330100320

`A207346(A004277(n+7)+A000124(n+3))`
-/

namespace A207350.P5170656237330100320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A004277 (n + 7) + A000124 (n + 3)).toNat

end

end A207350.P5170656237330100320

/-!
# A207351: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207351, there is no canonical definition to state claims against.
-/

/-! ## A207351.P4478644516413720930

`A207346(A167487(n+5))`
-/

namespace A207351.P4478644516413720930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A167487 (n + 5)).toNat

end

end A207351.P4478644516413720930

/-! ## A207351.P16503587076685489273

`A207346(A000124(n+6)+6)`
-/

namespace A207351.P16503587076685489273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000124 (n + 6) + 6).toNat

end

end A207351.P16503587076685489273

/-! ## A207351.P13810079855695024021

`A207346(A000217(n+6)+7)`
-/

namespace A207351.P13810079855695024021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A000217 (n + 6) + 7).toNat

end

end A207351.P13810079855695024021

/-! ## A207351.P6733913288267836938

`A207346(A155212(n+2)+15)`
-/

namespace A207351.P6733913288267836938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A155212 (n + 2) + 15).toNat

end

end A207351.P6733913288267836938

/-! ## A207351.P4415133618441237161

`A207346(A052905(n+5)-3-2*n)`
-/

namespace A207351.P4415133618441237161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (A052905 (n + 5) - 3 - (2 * n : ℤ)).toNat

end

end A207351.P4415133618441237161

/-!
# A207352: Number of n X n 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207352, there is no canonical definition to state claims against.
-/

/-! ## A207352.P7456954577502494150

`A207358((n+1)²+n²)`
-/

namespace A207352.P7456954577502494150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 ((n + 1) ^ 2 + n ^ 2)

end

end A207352.P7456954577502494150

/-!
# A207353: Number of nX3 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207353, there is no canonical definition to state claims against.
-/

/-! ## A207353.P9498782623007518850

`A207358(∑[n+2]+4)`
-/

namespace A207353.P9498782623007518850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207353.P9498782623007518850

/-! ## A207353.P6193166911354572443

`A207358(A167614(n+1))+A011731(n)`
-/

namespace A207353.P6193166911354572443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A167614 (n + 1)).toNat + A011731 n

end

end A207353.P6193166911354572443

/-! ## A207353.P4731965468595669865

`A207358(A167614(n+1))+A025437(n)`
-/

namespace A207353.P4731965468595669865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A167614 (n + 1)).toNat + A025437 n

end

end A207353.P4731965468595669865

/-! ## A207353.P17379075543759135325

`or(A102683(n), A207358(A167614(n+1)))`
-/

namespace A207353.P17379075543759135325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A207358 (A167614 (n + 1)).toNat)

end

end A207353.P17379075543759135325

/-! ## A207353.P2129195843366692857

`or(A207358(A167614(n+1)), A340999(n))`
-/

namespace A207353.P2129195843366692857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207358 (A167614 (n + 1)).toNat) (A340999 (n + 204))

end

end A207353.P2129195843366692857

/-!
# A207354: Number of n X 4 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207354, there is no canonical definition to state claims against.
-/

/-! ## A207354.P5961023677408405659

`A207358(A141214(n)+7)`
-/

namespace A207354.P5961023677408405659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A141214 n + 7).toNat

end

end A207354.P5961023677408405659

/-! ## A207354.P17296611017408970162

`A207358(A052905(n)+9)`
-/

namespace A207354.P17296611017408970162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A052905 n + 9).toNat

end

end A207354.P17296611017408970162

/-! ## A207354.P18370326613087453260

`A207358(A167614(n+2)+1)`
-/

namespace A207354.P18370326613087453260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A167614 (n + 2) + 1).toNat

end

end A207354.P18370326613087453260

/-! ## A207354.P7760609498696258568

`A207358(Δ[A264443(n)-n²])`
-/

namespace A207354.P7760609498696258568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (f1 (n + 1) - f1 n).toNat

end

end A207354.P7760609498696258568

/-! ## A207354.P4037745189580729727

`A207358(A141214(n+1))`
-/

namespace A207354.P4037745189580729727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A141214 (n + 1)).toNat

end

end A207354.P4037745189580729727

/-!
# A207355: Number of nX5 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207355, there is no canonical definition to state claims against.
-/

/-! ## A207355.P12074575654642538687

`A207358(A155212(n)+13)`
-/

namespace A207355.P12074575654642538687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A155212 n + 13).toNat

end

end A207355.P12074575654642538687

/-! ## A207355.P5795540350698390087

`A207358(A056000(n)+15)`
-/

namespace A207355.P5795540350698390087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A056000 n + 15).toNat

end

end A207355.P5795540350698390087

/-! ## A207355.P6590821589745183677

`A207358(eq[6, A131818(n+1)])`
-/

namespace A207355.P6590821589745183677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207355.P6590821589745183677

/-! ## A207355.P7731316336722751009

`A207358(Δ[A264443(n)])`
-/

namespace A207355.P7731316336722751009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (f1 (n + 1) - f1 n).toNat

end

end A207355.P7731316336722751009

/-! ## A207355.P8003831825062778339

`A207358(A374005(n+1))`
-/

namespace A207355.P8003831825062778339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A374005 (n + 1)).toNat

end

end A207355.P8003831825062778339

/-!
# A207356: Number of nX6 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207356, there is no canonical definition to state claims against.
-/

/-! ## A207356.P6961645977618772698

`A207358(A374007(n+1))`
-/

namespace A207356.P6961645977618772698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A374007 (n + 1)).toNat

end

end A207356.P6961645977618772698

/-! ## A207356.P10246160511531264298

`A207358(A052905(n+3))`
-/

namespace A207356.P10246160511531264298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A052905 (n + 3)).toNat

end

end A207356.P10246160511531264298

/-! ## A207356.P450677506039306693

`A207358(Δ[A264443(n+1)]-1)`
-/

namespace A207356.P450677506039306693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (f1 (n + 1) - f1 n - 1).toNat

end

end A207356.P450677506039306693

/-!
# A207357: Number of nX7 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207357, there is no canonical definition to state claims against.
-/

/-! ## A207357.P14160898585813007260

`A207358(A374008(n+1))`
-/

namespace A207357.P14160898585813007260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A374008 (n + 1)).toNat

end

end A207357.P14160898585813007260

/-! ## A207357.P9817043287137382203

`A207358(eq[6, A193592(n)])`
-/

namespace A207357.P9817043287137382203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207357.P9817043287137382203

/-! ## A207357.P11080969252269001393

`A207358(A000217(n+6)+n+1)`
-/

namespace A207357.P11080969252269001393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207357.P11080969252269001393

/-!
# A207358: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207358, there is no canonical definition to state claims against.
-/

/-! ## A207358.P11084271278054508101

`A207989(n+1)-A055641(A098051(n))`
-/

namespace A207358.P11084271278054508101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (n + 1) - A055641 (A098051 n).toNat

end

end A207358.P11084271278054508101

/-! ## A207358.P15549324947863607593

`A207989(n+1)-A340999(A276086(n))`
-/

namespace A207358.P15549324947863607593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (n + 1) - A340999 ((A276086 n).toNat + 204)

end

end A207358.P15549324947863607593

/-! ## A207358.P9891283122193721138

`A207989(n+1)-A010054(A207050(n+1))`
-/

namespace A207358.P9891283122193721138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A207358.P9891283122193721138

/-! ## A207358.P13025627482617916282

`A207989(n+1)-A321379(A164363(n+1))`
-/

namespace A207358.P13025627482617916282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (n + 1) - A321379 (A164363 (n + 1)).toNat

end

end A207358.P13025627482617916282

/-! ## A207358.P6485368608596123737

`and(A207201(A187829(n+1)), A207989(n+1))`
-/

namespace A207358.P6485368608596123737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207201 (A187829 (n + 1)).toNat) (A207989 (n + 1))

end

end A207358.P6485368608596123737

/-!
# A207359: Indices n, not squarefree, where A055231(n) = A055231(n-A055231(n)).

The programs for A207359, there is no canonical definition to state claims against.
-/

/-! ## A207359.P226347609047878920

`record[9*A006530(A177735(n))]`
-/

namespace A207359.P226347609047878920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006530 (A177735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207359.P226347609047878920

/-! ## A207359.P5292853904218680853

`A028234(8*A054979(n+1))`
-/

namespace A207359.P5292853904218680853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (8 * A054979 (n + 1)).toNat

end

end A207359.P5292853904218680853

/-! ## A207359.P11892928704892818001

`filter[A366786(n+1), A267142(#)]`
-/

namespace A207359.P11892928704892818001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A207359.P11892928704892818001

/-! ## A207359.P11583463235488523170

`eq[A089655(n+1), A109216(n)]`
-/

namespace A207359.P11583463235488523170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207359.P11583463235488523170

/-! ## A207359.P16082848697289589105

`filter[A323785(2*n+1), A359429(#)]`
-/

namespace A207359.P16082848697289589105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323785 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A207359.P16082848697289589105

/-!
# A207360: Numbers n, not squarefree, satisfying A055231(n) = A055231(n + A055231(n)).

The programs for A207360, there is no canonical definition to state claims against.
-/

/-! ## A207360.P12836166093565908488

`record[A234001(∑[A040003(n)])]`
-/

namespace A207360.P12836166093565908488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234001 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207360.P12836166093565908488

/-! ## A207360.P12405363619760778574

`A234001(2*A219016(n+1))`
-/

namespace A207360.P12405363619760778574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234001 (2 * A219016 (n + 1)).toNat

end

end A207360.P12405363619760778574

/-! ## A207360.P15237227688424636086

`A234001(2*A276378(n+1))`
-/

namespace A207360.P15237227688424636086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234001 (2 * A276378 (n + 1)).toNat

end

end A207360.P15237227688424636086

/-! ## A207360.P7784513898686468141

`A234001(lcm(2, A219016(n+1)))`
-/

namespace A207360.P7784513898686468141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234001 (Int.lcm 2 (A219016 (n + 1)))

end

end A207360.P7784513898686468141

/-! ## A207360.P3285258594373256624

`record[A234001(Δ[A238410(n+1)])]`
-/

namespace A207360.P3285258594373256624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234001 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207360.P3285258594373256624

/-!
# A207361: Displacement under constant discrete unit surge.

The programs for A207361, the canonical program `A207361.P11033788706148189340` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207361 has offset 0).

The definition of A207361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207361.P12031027832509957040

`ogf((x+5x^2+2x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A207361.P12031027832509957040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A207361.P12031027832509957040

namespace A207361

/-- `ogf((x+5x^2+2x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12031027832509957040.Spec : Prop :=
  ∀ n, P12031027832509957040.a n = A207361 n

end A207361

/-! ## A207361.P11033788706148189340

`a(n-1)+n²*(n+1)*(2*n+1)/6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207361

/-- `a(n-1)+n²*(n+1)*(2*n+1)/6` -/
def P11033788706148189340.Spec : Prop :=
  ∀ n, P11033788706148189340.a n = (A207361 n : ℚ)

end A207361

/-! ## A207361.P9469068837298587120

`n*(1+n)*(2+n)*(1+11*n+8*n²)/120`
-/

namespace A207361.P9469068837298587120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + n) * (2 + n) * (1 + 11 * n + 8 * n ^ 2) : ℚ) / 120

end

end A207361.P9469068837298587120

namespace A207361

/-- `n*(1+n)*(2+n)*(1+11*n+8*n²)/120` -/
def P9469068837298587120.Spec : Prop :=
  ∀ n, P9469068837298587120.a n = (A207361 n : ℚ)

end A207361

/-! ## A207361.P3798302306668097293

`floor(∑[n/acot(∑[n²])])`
-/

namespace A207361.P3798302306668097293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A207361.P3798302306668097293

namespace A207361

/-- `floor(∑[n/acot(∑[n²])])` -/
def P3798302306668097293.Spec : Prop :=
  ∀ n, P3798302306668097293.a n = A207361 n

end A207361

/-! ## A207361.P10785075814881452680

`or(∑[n*∑[n²]], char[1])`
-/

namespace A207361.P10785075814881452680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f3 j = n then 1 else 0)

end

end A207361.P10785075814881452680

namespace A207361

/-- `or(∑[n*∑[n²]], char[1])` -/
def P10785075814881452680.Spec : Prop :=
  ∀ n, (P10785075814881452680.a n : ℤ) = A207361 n

end A207361

/-! ## A207361.P13798834690305936757

`xor(1, xor(1, ∑[n*∑[n²]]))`
-/

namespace A207361.P13798834690305936757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A207361.P13798834690305936757

namespace A207361

/-- `xor(1, xor(1, ∑[n*∑[n²]]))` -/
def P13798834690305936757.Spec : Prop :=
  ∀ n, (P13798834690305936757.a n : ℤ) = A207361 n

end A207361

/-! ## A207361.P5579272336304772645

`lcm(gcd(7, n), ∑[n*∑[n²]])`
-/

namespace A207361.P5579272336304772645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.gcd 7 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207361.P5579272336304772645

namespace A207361

/-- `lcm(gcd(7, n), ∑[n*∑[n²]])` -/
def P5579272336304772645.Spec : Prop :=
  ∀ n, (P5579272336304772645.a n : ℤ) = A207361 n

end A207361

/-! ## A207361.P2554719244631425167

`∑[A108678(n)]-A108678(n)`
-/

namespace A207361.P2554719244631425167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108678 n

end

end A207361.P2554719244631425167

namespace A207361

/-- `∑[A108678(n)]-A108678(n)` -/
def P2554719244631425167.Spec : Prop :=
  ∀ n, P2554719244631425167.a n = A207361 n

end A207361

/-! ## A207361.P12170425230565383298

`A061927(n+1)-A006322(n+1)`
-/

namespace A207361.P12170425230565383298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (n + 1) - A006322 (n + 1)

end

end A207361.P12170425230565383298

namespace A207361

/-- `A061927(n+1)-A006322(n+1)` -/
def P12170425230565383298.Spec : Prop :=
  ∀ n, P12170425230565383298.a n = A207361 n

end A207361

/-! ## A207361.P2092272571616857752

`∑[n*∑[n²]]%A161941(n+1)`
-/

namespace A207361.P2092272571616857752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A161941 (n + 1))

end

end A207361.P2092272571616857752

namespace A207361

/-- `∑[n*∑[n²]]%A161941(n+1)` -/
def P2092272571616857752.Spec : Prop :=
  ∀ n, P2092272571616857752.a n = A207361 n

end A207361

/-!
# A207362: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207362, there is no canonical definition to state claims against.
-/

/-! ## A207362.P14003327049645068921

`A207368(∑[4*n]+1)`
-/

namespace A207362.P14003327049645068921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207362.P14003327049645068921

/-! ## A207362.P13577953213866122617

`record[A207368(Δ[A235355(n)])]`
-/

namespace A207362.P13577953213866122617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207362.P13577953213866122617

/-! ## A207362.P11167307135448550255

`record[A207368(A330613(n+1))]`
-/

namespace A207362.P11167307135448550255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207362.P11167307135448550255

/-! ## A207362.P9005152842990546072

`record[A003982(n)*A207368(n+1)]`
-/

namespace A207362.P9005152842990546072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207362.P9005152842990546072

/-! ## A207362.P15888125446254410148

`record[A207368(n+1)*A214505(n)]`
-/

namespace A207362.P15888125446254410148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207362.P15888125446254410148

/-!
# A207363: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207363, the canonical program `A207363.P4627691153910834279` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207363 has offset 1).

The definition of A207363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207363.P4627691153910834279

`(C(n+3, 2)-(n+1)%2)*C(n+3, 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207363

/-- `(C(n+3, 2)-(n+1)%2)*C(n+3, 2)` -/
def P4627691153910834279.Spec : Prop :=
  ∀ n, P4627691153910834279.a n = A207363 (n + 1)

theorem P4627691153910834279.correct : P4627691153910834279.Spec := by
  intro n
  simp only [A207363, Nat.add_sub_cancel]

end A207363

/-! ## A207363.P15570499137765733908

`(∑[n+2]+1)*(∑[n+2]+1-char[2*n])`
-/

namespace A207363.P15570499137765733908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

end

end A207363.P15570499137765733908

namespace A207363

/-- `(∑[n+2]+1)*(∑[n+2]+1-char[2*n])` -/
def P15570499137765733908.Spec : Prop :=
  ∀ n, P15570499137765733908.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P13305449601220291656

`ogf((6+24x+6x^2+9x^3+6x^4-2x^5-2x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A207363.P13305449601220291656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 6, 9, 6, -2, -2, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A207363.P13305449601220291656

namespace A207363

/-- `ogf((6+24x+6x^2+9x^3+6x^4-2x^5-2x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P13305449601220291656.Spec : Prop :=
  ∀ n, P13305449601220291656.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P6941275910560271417

`floor((A137928(n+2)+n+1)²/4)`
-/

namespace A207363.P6941275910560271417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A137928 (n + 2) + (n + 1 : ℤ)) ^ 2 : ℚ) / 4⌋

end

end A207363.P6941275910560271417

namespace A207363

/-- `floor((A137928(n+2)+n+1)²/4)` -/
def P6941275910560271417.Spec : Prop :=
  ∀ n, P6941275910560271417.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P8853478121404890579

`A002419(n+2)-A002492(A008619(n))`
-/

namespace A207363.P8853478121404890579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 2) - A002492 (A008619 n).toNat

end

end A207363.P8853478121404890579

namespace A207363

/-- `A002419(n+2)-A002492(A008619(n))` -/
def P8853478121404890579.Spec : Prop :=
  ∀ n, P8853478121404890579.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P15217251612006811711

`floor(((char[2*n]-A002378(n+2))/2)²)`
-/

namespace A207363.P15217251612006811711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A002378 (n + 2) : ℚ) / 2) ^ 2⌋

end

end A207363.P15217251612006811711

namespace A207363

/-- `floor(((char[2*n]-A002378(n+2))/2)²)` -/
def P15217251612006811711.Spec : Prop :=
  ∀ n, P15217251612006811711.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P5938418277113586685

`A002378(A000217(n+2))-A045896(n+1)`
-/

namespace A207363.P5938418277113586685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000217 (n + 2)).toNat - A045896 (n + 1)

end

end A207363.P5938418277113586685

namespace A207363

/-- `A002378(A000217(n+2))-A045896(n+1)` -/
def P5938418277113586685.Spec : Prop :=
  ∀ n, P5938418277113586685.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P9729702717533480768

`A355498(A085046(n+2))`
-/

namespace A207363.P9729702717533480768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355498 (A085046 (n + 2)).toNat

end

end A207363.P9729702717533480768

namespace A207363

/-- `A355498(A085046(n+2))` -/
def P9729702717533480768.Spec : Prop :=
  ∀ n, P9729702717533480768.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P10391191458028593702

`A002620(or(1, n+1)+(n+2)²)`
-/

namespace A207363.P10391191458028593702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Nat.lor 1 (n + 1) + (n + 2) ^ 2)

end

end A207363.P10391191458028593702

namespace A207363

/-- `A002620(or(1, n+1)+(n+2)²)` -/
def P10391191458028593702.Spec : Prop :=
  ∀ n, P10391191458028593702.a n = A207363 (n + 1)

end A207363

/-! ## A207363.P7679273337832281043

`A002620(A137928(n+2)+n+1)`
-/

namespace A207363.P7679273337832281043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A137928 (n + 2) + (n + 1 : ℤ)).toNat

end

end A207363.P7679273337832281043

namespace A207363

/-- `A002620(A137928(n+2)+n+1)` -/
def P7679273337832281043.Spec : Prop :=
  ∀ n, P7679273337832281043.a n = A207363 (n + 1)

end A207363

/-!
# A207364: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207364, the canonical program `A207364.P4503126614471380378` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207364 has offset 1).

The definition of A207364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207364.P4503126614471380378

`ogf((9+63x+54x^2+46x^3+15x^4-19x^5-22x^6+9x^7+10x^8-4x^9-2x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207364

/-- `ogf((9+63x+54x^2+46x^3+15x^4-19x^5-22x^6+9x^7+10x^8-4x^9-2x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P4503126614471380378.Spec : Prop :=
  ∀ n, P4503126614471380378.a n = A207364 (n + 1)

theorem P4503126614471380378.correct : P4503126614471380378.Spec := by
  intro n
  simp only [A207364, Nat.add_sub_cancel]

end A207364

/-! ## A207364.P2023101553866119751

`A207368(∑[n+4]+3)`
-/

namespace A207364.P2023101553866119751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207364.P2023101553866119751

namespace A207364

/-- `A207368(∑[n+4]+3)` -/
def P2023101553866119751.Spec : Prop :=
  ∀ n, P2023101553866119751.a n = A207364 (n + 1)

end A207364

/-! ## A207364.P9462120281893770155

`A207368(A027379(n+2))%A208017(n+1)`
-/

namespace A207364.P9462120281893770155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207368 (A027379 (n + 2)).toNat) (A208017 (n + 1))

end

end A207364.P9462120281893770155

namespace A207364

/-- `A207368(A027379(n+2))%A208017(n+1)` -/
def P9462120281893770155.Spec : Prop :=
  ∀ n, P9462120281893770155.a n = A207364 (n + 1)

end A207364

/-! ## A207364.P13678928440040637191

`A207368(A055998(n+2))%A287238(n+1)`
-/

namespace A207364.P13678928440040637191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207368 (A055998 (n + 2)).toNat) (A287238 (n + 1))

end

end A207364.P13678928440040637191

namespace A207364

/-- `A207368(A055998(n+2))%A287238(n+1)` -/
def P13678928440040637191.Spec : Prop :=
  ∀ n, P13678928440040637191.a n = A207364 (n + 1)

end A207364

/-! ## A207364.P3223314008742505015

`or(A101637(n+1), A207368(A027379(n+2)))`
-/

namespace A207364.P3223314008742505015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101637 (n + 1)) (A207368 (A027379 (n + 2)).toNat)

end

end A207364.P3223314008742505015

namespace A207364

/-- `or(A101637(n+1), A207368(A027379(n+2)))` -/
def P3223314008742505015.Spec : Prop :=
  ∀ n, P3223314008742505015.a n = A207364 (n + 1)

end A207364

/-!
# A207365: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207365, there is no canonical definition to state claims against.
-/

/-! ## A207365.P9967067950117167176

`A207368(A046691(n+3))`
-/

namespace A207365.P9967067950117167176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A046691 (n + 3)).toNat

end

end A207365.P9967067950117167176

/-! ## A207365.P10432372464631666634

`A207368(Δ[A023545(n+1)])`
-/

namespace A207365.P10432372464631666634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (f1 (n + 1) - f1 n).toNat

end

end A207365.P10432372464631666634

/-! ## A207365.P9753206407052526880

`A207368(A000096(n+4)-3)`
-/

namespace A207365.P9753206407052526880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000096 (n + 4) - 3).toNat

end

end A207365.P9753206407052526880

/-! ## A207365.P4755570316666636203

`A207368(A000217(n+5)-4)`
-/

namespace A207365.P4755570316666636203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000217 (n + 5) - 4).toNat

end

end A207365.P4755570316666636203

/-! ## A207365.P14945597701122715971

`A207368(eq[5, A004736(n+1)]+1)`
-/

namespace A207365.P14945597701122715971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207365.P14945597701122715971

/-!
# A207366: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207366, there is no canonical definition to state claims against.
-/

/-! ## A207366.P10470446642183093405

`A207368(A052905(n+3))`
-/

namespace A207366.P10470446642183093405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A052905 (n + 3)).toNat

end

end A207366.P10470446642183093405

/-! ## A207366.P1724239020520133751

`A207368(A000217(n+6)-5)`
-/

namespace A207366.P1724239020520133751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000217 (n + 6) - 5).toNat

end

end A207366.P1724239020520133751

/-! ## A207366.P3004041941337354896

`A207368(Δ[A023545(n+2)]-1)`
-/

namespace A207366.P3004041941337354896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (f1 (n + 1) - f1 n - 1).toNat

end

end A207366.P3004041941337354896

/-! ## A207366.P15413061755087241590

`A207368(Δ[A026054(n+3)]+1)`
-/

namespace A207366.P15413061755087241590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (f1 (n + 1) - f1 n + 1).toNat

end

end A207366.P15413061755087241590

/-! ## A207366.P18114492907362897379

`A207368(A000096(n+4)+n+2)`
-/

namespace A207366.P18114492907362897379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A207366.P18114492907362897379

/-!
# A207367: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207367, there is no canonical definition to state claims against.
-/

/-! ## A207367.P15850575274804720447

`A207368(A055999(n+4))`
-/

namespace A207367.P15850575274804720447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A055999 (n + 4)).toNat

end

end A207367.P15850575274804720447

/-! ## A207367.P11783435059973624973

`A207368(Δ[A026054(n+4)])`
-/

namespace A207367.P11783435059973624973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (f1 (n + 1) - f1 n).toNat

end

end A207367.P11783435059973624973

/-! ## A207367.P18202607273967940894

`A207368(A056000(n+3)+4)`
-/

namespace A207367.P18202607273967940894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A056000 (n + 3) + 4).toNat

end

end A207367.P18202607273967940894

/-! ## A207367.P16181028057464356789

`A207368(A046691(n+5)-2)`
-/

namespace A207367.P16181028057464356789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A046691 (n + 5) - 2).toNat

end

end A207367.P16181028057464356789

/-! ## A207367.P12024169326639556879

`A207368(A000217(n+7)-6)`
-/

namespace A207367.P12024169326639556879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000217 (n + 7) - 6).toNat

end

end A207367.P12024169326639556879

/-!
# A207368: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207368, there is no canonical definition to state claims against.
-/

/-! ## A207368.P16682982324626171080

`A208013(n+1)-A184955(n)%3`
-/

namespace A207368.P16682982324626171080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) - Int.tmod (A184955 n) 3

end

end A207368.P16682982324626171080

/-! ## A207368.P8885465549745955893

`A208013(n+1)-A055641(A005246(n))`
-/

namespace A207368.P8885465549745955893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) - A055641 (A005246 n).toNat

end

end A207368.P8885465549745955893

/-! ## A207368.P7267907419618584282

`A208013(n+1)-A102683(A001629(n))`
-/

namespace A207368.P7267907419618584282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) - A102683 (A001629 n).toNat

end

end A207368.P7267907419618584282

/-! ## A207368.P11316671755325332663

`A208013(n+1)-A102683(A030239(n))`
-/

namespace A207368.P11316671755325332663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) - A102683 (A030239 n).toNat

end

end A207368.P11316671755325332663

/-! ## A207368.P17797048364642135928

`A208013(n+1)-A101637(A046630(n))`
-/

namespace A207368.P17797048364642135928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) - A101637 (A046630 n).toNat

end

end A207368.P17797048364642135928

/-!
# A207369: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207369, there is no canonical definition to state claims against.
-/

/-! ## A207369.P5148902467424190104

`A207026(n+1)/A207025(n+1)*A207026(n+1)`
-/

namespace A207369.P5148902467424190104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207026 (n + 1) : ℚ)

end

end A207369.P5148902467424190104

/-! ## A207369.P18165143513981200433

`A207026(n+1)/A207027(n+1)*A207370(n+1)`
-/

namespace A207369.P18165143513981200433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) : ℚ) / (A207027 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207369.P18165143513981200433

/-! ## A207369.P7747197919029410073

`A207370(n+1)/A207371(n+1)*A207370(n+1)`
-/

namespace A207369.P7747197919029410073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207370 (n + 1) : ℚ) / (A207371 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207369.P7747197919029410073

/-! ## A207369.P10478868543897601775

`(A207026(n+1)/A207027(n+1))²*A207371(n+1)`
-/

namespace A207369.P10478868543897601775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207026 (n + 1) : ℚ) / (A207027 (n + 1) : ℚ)) ^ 2 * (A207371 (n + 1) : ℚ)

end

end A207369.P10478868543897601775

/-! ## A207369.P1623422659185978387

`A207026(n+1)²/A207025(n+1)`
-/

namespace A207369.P1623422659185978387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207369.P1623422659185978387

/-! ## A207369.P13559819926958657072

`A207370(n+1)²/A207371(n+1)`
-/

namespace A207369.P13559819926958657072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207370 (n + 1) ^ 2 : ℚ) / (A207371 (n + 1) : ℚ)

end

end A207369.P13559819926958657072

/-!
# A207370: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207370, there is no canonical definition to state claims against.
-/

/-! ## A207370.P126524163599491962

`A207026(n+1)/A207025(n+1)*A207027(n+1)`
-/

namespace A207370.P126524163599491962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207027 (n + 1) : ℚ)

end

end A207370.P126524163599491962

/-! ## A207370.P1655003534303665379

`A207027(n+1)/A207026(n+1)*A207369(n+1)`
-/

namespace A207370.P1655003534303665379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207027 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ) * (A207369 (n + 1) : ℚ)

end

end A207370.P1655003534303665379

/-! ## A207370.P6174842902684435436

`sqrt(A207369(n+1))*sqrt(A207371(n+1))`
-/

namespace A207370.P6174842902684435436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207369 (n + 1) : ℝ) * Real.sqrt (A207371 (n + 1) : ℝ)

end

end A207370.P6174842902684435436

/-! ## A207370.P567892679698569500

`A207026(n+1)/A207027(n+1)*A207371(n+1)`
-/

namespace A207370.P567892679698569500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207026 (n + 1) : ℚ) / (A207027 (n + 1) : ℚ) * (A207371 (n + 1) : ℚ)

end

end A207370.P567892679698569500

/-! ## A207370.P2916196056541112025

`sqrt(A207369(n+1)*A207371(n+1))`
-/

namespace A207370.P2916196056541112025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207369 (n + 1) * A207371 (n + 1) : ℝ)

end

end A207370.P2916196056541112025

/-!
# A207371: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207371, there is no canonical definition to state claims against.
-/

/-! ## A207371.P12080916521948834040

`A207027(n+1)/A207026(n+1)*A207370(n+1)`
-/

namespace A207371.P12080916521948834040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207027 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207371.P12080916521948834040

/-! ## A207371.P6140475017089695791

`A207370(n+1)/A207369(n+1)*A207370(n+1)`
-/

namespace A207371.P6140475017089695791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207370 (n + 1) : ℚ) / (A207369 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207371.P6140475017089695791

/-! ## A207371.P12539987323962545740

`(A207370(n+1)/A207026(n+1))²*A207025(n+1)`
-/

namespace A207371.P12539987323962545740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207370 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ)) ^ 2 * (A207025 (n + 1) : ℚ)

end

end A207371.P12539987323962545740

/-! ## A207371.P14345023228256602733

`(A207027(n+1)/A207026(n+1))²*A207369(n+1)`
-/

namespace A207371.P14345023228256602733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207027 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ)) ^ 2 * (A207369 (n + 1) : ℚ)

end

end A207371.P14345023228256602733

/-! ## A207371.P6854214985966366106

`A207027(n+1)/A207028(n+1)*A207372(n+1)`
-/

namespace A207371.P6854214985966366106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207027 (n + 1) : ℚ) / (A207028 (n + 1) : ℚ) * (A207372 (n + 1) : ℚ)

end

end A207371.P6854214985966366106

/-! ## A207371.P9137680746367600934

`A207027(n+1)²/A207025(n+1)`
-/

namespace A207371.P9137680746367600934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207027 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207371.P9137680746367600934

/-! ## A207371.P15215099870078462655

`A207370(n+1)²/A207369(n+1)`
-/

namespace A207371.P15215099870078462655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207370 (n + 1) ^ 2 : ℚ) / (A207369 (n + 1) : ℚ)

end

end A207371.P15215099870078462655

/-!
# A207372: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A207372, there is no canonical definition to state claims against.
-/

/-! ## A207372.P17958562717259766480

`A207027(n+1)/A207025(n+1)*A207028(n+1)`
-/

namespace A207372.P17958562717259766480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207027 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207028 (n + 1) : ℚ)

end

end A207372.P17958562717259766480

/-! ## A207372.P655118949695627985

`A207028(n+1)/A207026(n+1)*A207370(n+1)`
-/

namespace A207372.P655118949695627985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207028 (n + 1) : ℚ) / (A207026 (n + 1) : ℚ) * (A207370 (n + 1) : ℚ)

end

end A207372.P655118949695627985

/-! ## A207372.P14058202822867646582

`A207028(n+1)/A207027(n+1)*A207371(n+1)`
-/

namespace A207372.P14058202822867646582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207028 (n + 1) : ℚ) / (A207027 (n + 1) : ℚ) * (A207371 (n + 1) : ℚ)

end

end A207372.P14058202822867646582

/-! ## A207372.P5685573727539812975

`A207368(A167499(n+5)+2)`
-/

namespace A207372.P5685573727539812975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A167499 (n + 5) + 2).toNat

end

end A207372.P5685573727539812975

/-! ## A207372.P17263657010778178183

`A207368(A000217(n+6)+7)`
-/

namespace A207372.P17263657010778178183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (A000217 (n + 6) + 7).toNat

end

end A207372.P17263657010778178183

/-!
# A207373: Numbers whose square is the product of a number and its reverse.

The programs for A207373, there is no canonical definition to state claims against.
-/

/-! ## A207373.P4781017754117719541

`sqrt(A076750(n+1))`
-/

namespace A207373.P4781017754117719541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076750 (n + 1) : ℝ)

end

end A207373.P4781017754117719541

/-! ## A207373.P1052929261743594586

`root(A076750(n+1), 2%A015977(n))`
-/

namespace A207373.P1052929261743594586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076750 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A015977 n) : ℝ))

end

end A207373.P1052929261743594586

/-! ## A207373.P15459413514000243933

`root(A076750(n+1), A133265(A133265(n)))`
-/

namespace A207373.P15459413514000243933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076750 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A207373.P15459413514000243933

/-! ## A207373.P3983811160815757020

`root(A076750(n+1), gcd(2, A252053(n+1)))`
-/

namespace A207373.P3983811160815757020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076750 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A252053 (n + 1)) : ℝ))

end

end A207373.P3983811160815757020

/-!
# A207374: Composites of the form 24n - 1.

The programs for A207374, there is no canonical definition to state claims against.
-/

/-! ## A207374.P6336441143041527954

`record[A048671(A183010(n+4))]`
-/

namespace A207374.P6336441143041527954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A183010 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207374.P6336441143041527954

/-! ## A207374.P14989975304664325570

`filter[A092256(n+1), A072401(#)]`
-/

namespace A207374.P14989975304664325570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A207374.P14989975304664325570

/-! ## A207374.P15536782291223615356

`filter[A183010(n+1), A005171(#)]`
-/

namespace A207374.P15536782291223615356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A207374.P15536782291223615356

/-! ## A207374.P16989720206699434941

`filter[A183010(n+1), A066247(#)]`
-/

namespace A207374.P16989720206699434941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A207374.P16989720206699434941

/-! ## A207374.P17499167176482626322

`filter[A183010(n+1), A143731(#)]`
-/

namespace A207374.P17499167176482626322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A207374.P17499167176482626322

/-!
# A207375: Irregular array read by rows in which row n lists the (one or two) central divisors of n in increasing order.

The programs for A207375, there is no canonical definition to state claims against.
-/

/-! ## A207375.P6955897793776818445

`A162348(comp[2*n²])`
-/

namespace A207375.P6955897793776818445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A207375.P6955897793776818445

/-! ## A207375.P4884204757147648442

`A178686(A068976(n+1))+A057058(n+1)`
-/

namespace A207375.P4884204757147648442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (A068976 (n + 1)).toNat + A057058 (n + 1)

end

end A207375.P4884204757147648442

/-! ## A207375.P10117527961157625689

`A280738(n+1)+A025466(A045663(n))`
-/

namespace A207375.P10117527961157625689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1) + A025466 (A045663 n).toNat

end

end A207375.P10117527961157625689

/-! ## A207375.P8499851275480053338

`A190783(A190783(n))*A280738(n+1)`
-/

namespace A207375.P8499851275480053338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190783 (A190783 n).toNat * A280738 (n + 1)

end

end A207375.P8499851275480053338

/-! ## A207375.P10877799290285440599

`A027750(lt[A320080(3*n), A108052(n+1)])`
-/

namespace A207375.P10877799290285440599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207375.P10877799290285440599

/-!
# A207376: Sum of central divisors of n.

The programs for A207376, there is no canonical definition to state claims against.
-/

/-! ## A207376.P13409732348407146719

`A000203(n+1)-A323643(n+1)`
-/

namespace A207376.P13409732348407146719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A323643 (n + 1)

end

end A207376.P13409732348407146719

/-! ## A207376.P3364435509394642099

`A063655(n+1)-A037213(n+1)`
-/

namespace A207376.P3364435509394642099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A037213 (n + 1)

end

end A207376.P3364435509394642099

/-! ## A207376.P15991324213752289597

`A063655(n+1)/2*A275437(n)`
-/

namespace A207376.P15991324213752289597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) : ℚ) / 2 * (A275437 n : ℚ)

end

end A207376.P15991324213752289597

/-! ## A207376.P4347915494340563600

`A063655(n+1)/(2-A049240(n+1))`
-/

namespace A207376.P4347915494340563600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) : ℚ) / (2 - A049240 (n + 1) : ℚ)

end

end A207376.P4347915494340563600

/-! ## A207376.P6613392653872203225

`A078898(A063655(n+1)*A275437(n))`
-/

namespace A207376.P6613392653872203225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A063655 (n + 1) * A275437 n).toNat

end

end A207376.P6613392653872203225

/-! ## A207376.P1882813884212735557

`A078898(A262767(n+1)/2*A275437(n))`
-/

namespace A207376.P1882813884212735557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A262767 (n + 1) : ℚ) / 2 * (A275437 n : ℚ))).toNat

end

end A207376.P1882813884212735557

/-! ## A207376.P16061884916263217194

`A033677(n+1)+A033676(n+1)%A033677(n+1)`
-/

namespace A207376.P16061884916263217194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) + Int.tmod (A033676 (n + 1)) (A033677 (n + 1))

end

end A207376.P16061884916263217194

/-! ## A207376.P12701851408114633833

`A033677(n+1)+A063655(n+1)%A033677(n+1)`
-/

namespace A207376.P12701851408114633833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) + Int.tmod (A063655 (n + 1)) (A033677 (n + 1))

end

end A207376.P12701851408114633833

/-! ## A207376.P13044367682583163749

`A026922(A262767(n+1)*A275437(n))`
-/

namespace A207376.P13044367682583163749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A262767 (n + 1) * A275437 n).toNat

end

end A207376.P13044367682583163749

/-! ## A207376.P5734371836543317045

`A001065(n+1)+n+1-A323643(n+1)`
-/

namespace A207376.P5734371836543317045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A323643 (n + 1)

end

end A207376.P5734371836543317045

/-! ## A207376.P15932200211619245697

`abs(A323643(n+1)-A064987(n+1)/(n+1))`
-/

namespace A207376.P15932200211619245697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A323643 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A207376.P15932200211619245697

/-! ## A207376.P1991322466614937447

`abs(A323643(n+1)-(A237588(n+1)+Δ[n²]))`
-/

namespace A207376.P1991322466614937447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323643 (n + 1) - (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A207376.P1991322466614937447

/-! ## A207376.P10269650679650389816

`A000593(n+1)+A146076(n+1)-A323643(n+1)`
-/

namespace A207376.P10269650679650389816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A323643 (n + 1))

end

end A207376.P10269650679650389816

/-! ## A207376.P9538260749968765274

`A079667(n+1)+A117004(n+1)-A323643(n+1)`
-/

namespace A207376.P9538260749968765274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A323643 (n + 1))

end

end A207376.P9538260749968765274

/-! ## A207376.P2317919004882675943

`A011772(n+1)+A344765(n+1)-A323643(n+1)`
-/

namespace A207376.P2317919004882675943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A344765 (n + 1) - A323643 (n + 1))

end

end A207376.P2317919004882675943

/-!
# A207377: Triangle read by rows in which row n lists the parts of the last section of the set of partitions of n in nondecreasing order.

The programs for A207377, there is no canonical definition to state claims against.
-/

/-! ## A207377.P5061684136093181554

`A135010(n+1)-A015526(A350332(n+5))`
-/

namespace A207377.P5061684136093181554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) - A015526 (A350332 (n + 5)).toNat

end

end A207377.P5061684136093181554

/-! ## A207377.P1671724343779504702

`A135010(A334926(3*n+2)+n)`
-/

namespace A207377.P1671724343779504702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A334926 (3 * n + 2) + (n : ℤ)).toNat

end

end A207377.P1671724343779504702

/-! ## A207377.P1248110352557211847

`A135010(n+1)-A025469(A059119(n))`
-/

namespace A207377.P1248110352557211847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) - A025469 (A059119 n).toNat

end

end A207377.P1248110352557211847

/-! ## A207377.P9160445117363637068

`A135010(n+1)-A010054(A298911(n+2))`
-/

namespace A207377.P9160445117363637068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) - A010054 (A298911 (n + 2)).toNat

end

end A207377.P9160445117363637068

/-! ## A207377.P17612005214542555476

`A135010(n+1)-A098841(A096751(n))`
-/

namespace A207377.P17612005214542555476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) - A098841 (A096751 n).toNat

end

end A207377.P17612005214542555476

/-!
# A207378: Triangle read by rows in which row n lists the parts of the last section of the set of partitions of n in nonincreasing order.

The programs for A207378, there is no canonical definition to state claims against.
-/

/-! ## A207378.P8869273763070247251

`A138151(A038770(n+1))%A338825(2*(n+3))`
-/

namespace A207378.P8869273763070247251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138151 (A038770 (n + 1)).toNat) (A338825 (2 * (n + 3)))

end

end A207378.P8869273763070247251

/-! ## A207378.P2526823141210350990

`or(A138151(n+1), A179527(A155495(n)))`
-/

namespace A207378.P2526823141210350990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138151 (n + 1)) (A179527 (A155495 n).toNat)

end

end A207378.P2526823141210350990

/-! ## A207378.P6608987862903915835

`A138151(n+1)%A106096(A270995(n))`
-/

namespace A207378.P6608987862903915835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138151 (n + 1)) (A106096 (A270995 n).toNat)

end

end A207378.P6608987862903915835

/-! ## A207378.P25590997078181259

`A054977(A128166(n+1))*A138151(n+1)`
-/

namespace A207378.P25590997078181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A128166 (n + 1)).toNat * A138151 (n + 1)

end

end A207378.P25590997078181259

/-!
# A207379: Triangle read by rows: T(n,k) = number of parts that are in the k-th column of the last section of the set of partitions of n.

The programs for A207379, there is no canonical definition to state claims against.
-/

/-! ## A207379.P4429018789851163744

`A294903(A136170(n))`
-/

namespace A207379.P4429018789851163744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A136170 n).toNat

end

end A207379.P4429018789851163744

/-! ## A207379.P8127033261845222968

`A122922(7*A095133(n+1))`
-/

namespace A207379.P8127033261845222968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (7 * A095133 (n + 1)).toNat

end

end A207379.P8127033261845222968

/-! ## A207379.P1341677554300268526

`A004218(6^A220163(n+1))`
-/

namespace A207379.P1341677554300268526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A220163 (n + 1) : ℤ))).toNat

end

end A207379.P1341677554300268526

/-! ## A207379.P6985148169076376725

`A215887(6^A220163(n+1))`
-/

namespace A207379.P6985148169076376725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A220163 (n + 1) : ℤ))).toNat

end

end A207379.P6985148169076376725

/-! ## A207379.P14492809655110803076

`A126433(A179837(n+1))`
-/

namespace A207379.P14492809655110803076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (A179837 (n + 1)).toNat

end

end A207379.P14492809655110803076

/-!
# A207380: Total area of the shadows of the three views of a three-dimensional version of the modular table of partitions with n sections.

The programs for A207380, there is no canonical definition to state claims against.
-/

/-! ## A207380.P18136782791658655404

`A066186(n)+A000217(n)+A006128(n)`
-/

namespace A207380.P18136782791658655404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A000217 n + A006128 n

end

end A207380.P18136782791658655404

/-! ## A207380.P16901959772875454440

`n*A000041(n)+A000217(n)+A006128(n)`
-/

namespace A207380.P16901959772875454440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n + A000217 n + A006128 n

end

end A207380.P16901959772875454440

/-! ## A207380.P16490318434267211467

`A066186(n)+A210970(n)-A006128(n)`
-/

namespace A207380.P16490318434267211467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + (A210970 n - A006128 n)

end

end A207380.P16490318434267211467

/-! ## A207380.P5423181658459929280

`A006128(n)-(∑[A001489(n)]-A066186(n))`
-/

namespace A207380.P5423181658459929280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (∑ j ∈ Finset.range (n + 1), f1 j - A066186 n)

end

end A207380.P5423181658459929280

/-! ## A207380.P7688876417924695296

`A006128(n)-(A001489(∑[n])-A066186(n))`
-/

namespace A207380.P7688876417924695296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A001489 (∑ j ∈ Finset.range (n + 1), f1 j) - A066186 n)

end

end A207380.P7688876417924695296

/-!
# A207381: Total sum of the odd-indexed parts of all partitions of n.

The programs for A207381, there is no canonical definition to state claims against.
-/

/-! ## A207381.P4147163250860039634

`A066897(n+1)+A207382(n+1)`
-/

namespace A207381.P4147163250860039634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) + A207382 (n + 1)

end

end A207381.P4147163250860039634

/-! ## A207381.P1203366403457914132

`A066186(n+1)-A207382(n+1)`
-/

namespace A207381.P1203366403457914132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A207382 (n + 1)

end

end A207381.P1203366403457914132

/-! ## A207381.P603291474296062951

`A207382(n+1)+A090868(2*(n+1))`
-/

namespace A207381.P603291474296062951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207382 (n + 1) + A090868 (2 * (n + 1))

end

end A207381.P603291474296062951

/-! ## A207381.P18089187960590584019

`(n+1)*A000041(n+1)-A207382(n+1)`
-/

namespace A207381.P18089187960590584019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A207382 (n + 1)

end

end A207381.P18089187960590584019

/-! ## A207381.P12629569980639821389

`A066898(n+1)+A209423(n+1)+A207382(n+1)`
-/

namespace A207381.P12629569980639821389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (n + 1) + (A209423 (n + 1) + A207382 (n + 1))

end

end A207381.P12629569980639821389

/-! ## A207381.P13265163444071882551

`A006128(n+1)+A207382(n+1)-A066898(n+1)`
-/

namespace A207381.P13265163444071882551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A207382 (n + 1) - A066898 (n + 1))

end

end A207381.P13265163444071882551

/-!
# A207382: Sum of the even-indexed parts of all partitions of n.

The programs for A207382, there is no canonical definition to state claims against.
-/

/-! ## A207382.P11157680172481618172

`A066186(n+1)-A207381(n+1)`
-/

namespace A207382.P11157680172481618172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A207381 (n + 1)

end

end A207382.P11157680172481618172

/-! ## A207382.P10239097014150422017

`A207381(n+1)-A066897(n+1)`
-/

namespace A207382.P10239097014150422017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207381 (n + 1) - A066897 (n + 1)

end

end A207382.P10239097014150422017

/-! ## A207382.P5962856597581473309

`A207381(n+1)-A090868(2*(n+1))`
-/

namespace A207382.P5962856597581473309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207381 (n + 1) - A090868 (2 * (n + 1))

end

end A207382.P5962856597581473309

/-! ## A207382.P1250160742297356142

`(n+1)*A000041(n+1)-A207381(n+1)`
-/

namespace A207382.P1250160742297356142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A207381 (n + 1)

end

end A207382.P1250160742297356142

/-! ## A207382.P10361975000032038593

`A066898(n+1)+A207381(n+1)-A006128(n+1)`
-/

namespace A207382.P10361975000032038593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (n + 1) + (A207381 (n + 1) - A006128 (n + 1))

end

end A207382.P10361975000032038593

/-! ## A207382.P17806856764470708256

`A207381(n+1)-(A209423(n+1)+A066898(n+1))`
-/

namespace A207382.P17806856764470708256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207381 (n + 1) - (A209423 (n + 1) + A066898 (n + 1))

end

end A207382.P17806856764470708256

/-!
# A207383: Triangle read by rows: T(n,k) is the sum of parts of size k in the last section of the set of partitions of n.

The programs for A207383, there is no canonical definition to state claims against.
-/

/-! ## A207383.P16736035141995581464

`A002260(n+1)*A182703(n+1)`
-/

namespace A207383.P16736035141995581464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A182703 (n + 1)

end

end A207383.P16736035141995581464

/-! ## A207383.P5947432563700990838

`(A002262(n)+1)*A182703(n+1)`
-/

namespace A207383.P5947432563700990838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A182703 (n + 1)

end

end A207383.P5947432563700990838

/-! ## A207383.P858192637137182528

`A299769(n+1)/A002260(n+1)`
-/

namespace A207383.P858192637137182528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299769 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A207383.P858192637137182528

/-! ## A207383.P1449959406222460568

`A138785(n+1)/A299768(n+1)*A299769(n+1)`
-/

namespace A207383.P1449959406222460568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) : ℚ) / (A299768 (n + 1) : ℚ) * (A299769 (n + 1) : ℚ)

end

end A207383.P1449959406222460568

/-! ## A207383.P18287545249218917785

`A004736(A038722(n+1))*A182703(n+1)`
-/

namespace A207383.P18287545249218917785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A182703 (n + 1)

end

end A207383.P18287545249218917785

/-! ## A207383.P15878921319398116975

`A182703(n+1)*A207377(∑[A182703(n+1)])`
-/

namespace A207383.P15878921319398116975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1) * A207377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207383.P15878921319398116975

/-! ## A207383.P7033236567803021789

`A182703(n+1)/A228524(n+1)*A228527(n+1)`
-/

namespace A207383.P7033236567803021789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182703 (n + 1) : ℚ) / (A228524 (n + 1) : ℚ) * (A228527 (n + 1) : ℚ)

end

end A207383.P7033236567803021789

/-!
# A207384: A206815(n+1)-A206815(n).

The programs for A207384, there is no canonical definition to state claims against.
-/

/-! ## A207384.P12583707215275719858

`A206815(n+2)-A206815(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A207384.P12583707215275719858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 (n + 2) - A206815 (n + 1)

end

end A207384.P12583707215275719858

/-! ## A207384.P1703996772540699959

`Δ[A206815(n+1)]`
-/

namespace A207384.P1703996772540699959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207384.P1703996772540699959

/-! ## A207384.P7141190240643453174

`abs(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P7141190240643453174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A207384.P7141190240643453174

/-! ## A207384.P6277066972006188532

`Δ[A206815(n-or(n-1, -1))]%4`
-/

namespace A207384.P6277066972006188532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor ((n : ℤ) - 1) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A207384.P6277066972006188532

/-! ## A207384.P13142260082647430728

`A005117(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P13142260082647430728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f1 (n + 1) - f1 n).toNat

end

end A207384.P13142260082647430728

/-! ## A207384.P12127114225670428568

`A006530(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P12127114225670428568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A207384.P12127114225670428568

/-! ## A207384.P12284926068586349701

`A014963(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P12284926068586349701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A207384.P12284926068586349701

/-! ## A207384.P16050330296973244743

`A020639(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P16050330296973244743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A207384.P16050330296973244743

/-! ## A207384.P15808833185717741586

`A028310(Δ[A206815(n-or(n, -1))])`
-/

namespace A207384.P15808833185717741586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A207384.P15808833185717741586

/-!
# A207385: A206818(n+1)-A206818(n).

The programs for A207385, there is no canonical definition to state claims against.
-/

/-! ## A207385.P6137773255470902969

`A206818(n+2)-A206818(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A207385.P6137773255470902969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 (n + 2) - A206818 (n + 1)

end

end A207385.P6137773255470902969

/-! ## A207385.P11054614644422884626

`Δ[A206818(n+1)]`
-/

namespace A207385.P11054614644422884626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207385.P11054614644422884626

/-! ## A207385.P13762897906122661319

`abs(Δ[A206818(n-or(n, -1))])`
-/

namespace A207385.P13762897906122661319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A207385.P13762897906122661319

/-! ## A207385.P9841522155483220299

`dr(Δ[A206818(2*n-(n-1))])`
-/

namespace A207385.P9841522155483220299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A207385.P9841522155483220299

/-! ## A207385.P10483342152595407990

`Δ[A206818(n-or(n-1, -1))]%5`
-/

namespace A207385.P10483342152595407990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor ((n : ℤ) - 1) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A207385.P10483342152595407990

/-! ## A207385.P2944929219543995531

`and(3, Δ[A206818(n-or(3*n, -1))])`
-/

namespace A207385.P2944929219543995531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (3 * n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A207385.P2944929219543995531

/-! ## A207385.P13394595686729980021

`A000041(Δ[A206818(n-or(n, -1))])`
-/

namespace A207385.P13394595686729980021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A207385.P13394595686729980021

/-! ## A207385.P18312623741177635370

`A006530(Δ[A206818(n-or(n, -1))])`
-/

namespace A207385.P18312623741177635370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A207385.P18312623741177635370

/-! ## A207385.P9227128880451909532

`A020639(Δ[A206818(n-or(n, -1))])`
-/

namespace A207385.P9227128880451909532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A207385.P9227128880451909532

/-! ## A207385.P4694335125924239101

`Δ[A206818(n-or(n, -1))-A000005((-1)^(2*n))]`
-/

namespace A207385.P4694335125924239101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat - A000005 ((-1) ^ (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207385.P4694335125924239101

/-!
# A207386: G.f.: Sum_{n>=0} Product_{k=1..n} (q^k - 1) where q = (1+x)/(1+x^3).

The programs for A207386, there is no canonical definition to state claims against.
-/

/-! ## A207386.P13818392837881153900

`A166711(floor(A002720(n)/(n+1)))`
-/

namespace A207386.P13818392837881153900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 ⌊(A002720 n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A207386.P13818392837881153900

/-! ## A207386.P7548066842453020525

`A008611(A218677(n)+A026490(n+1))`
-/

namespace A207386.P7548066842453020525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A218677 n + A026490 (n + 1)).toNat

end

end A207386.P7548066842453020525

/-! ## A207386.P18303996443393021492

`A008620(A218677(n)+Δ[A066115(n+1)])`
-/

namespace A207386.P18303996443393021492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A218677 n + (f1 (n + 1) - f1 n)).toNat

end

end A207386.P18303996443393021492

/-!
# A207387: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207387, there is no canonical definition to state claims against.
-/

/-! ## A207387.P2313512103412689077

`A207391(∑[4*n]+1)`
-/

namespace A207387.P2313512103412689077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207387.P2313512103412689077

/-! ## A207387.P14415894430658860722

`record[A207391(Δ[A235355(n)])]`
-/

namespace A207387.P14415894430658860722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207387.P14415894430658860722

/-! ## A207387.P5158681981076391722

`record[A207391(A330613(n+1))]`
-/

namespace A207387.P5158681981076391722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207387.P5158681981076391722

/-! ## A207387.P9817797906510192713

`A207391(A001844(n))+char[15]`
-/

namespace A207387.P9817797906510192713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A207387.P9817797906510192713

/-! ## A207387.P5533422371956803552

`record[A003982(n)*A207391(n+1)]`
-/

namespace A207387.P5533422371956803552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207387.P5533422371956803552

/-!
# A207388: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207388, there is no canonical definition to state claims against.
-/

/-! ## A207388.P4269556994596813741

`A207391(A046691(n+3))`
-/

namespace A207388.P4269556994596813741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A046691 (n + 3)).toNat

end

end A207388.P4269556994596813741

/-! ## A207388.P4645249786587444

`A207391(Δ[A023545(n+1)])`
-/

namespace A207388.P4645249786587444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (f1 (n + 1) - f1 n).toNat

end

end A207388.P4645249786587444

/-! ## A207388.P13530961555936401048

`A207391(A052905(n+2)+1)`
-/

namespace A207388.P13530961555936401048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A052905 (n + 2) + 1).toNat

end

end A207388.P13530961555936401048

/-! ## A207388.P10300986332189352321

`A207391(A034856(n+4)-2)`
-/

namespace A207388.P10300986332189352321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A034856 (n + 4) - 2).toNat

end

end A207388.P10300986332189352321

/-! ## A207388.P14195013221903853460

`A207391(A000217(n+5)-4)`
-/

namespace A207388.P14195013221903853460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 5) - 4).toNat

end

end A207388.P14195013221903853460

/-!
# A207389: Number of n X 6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207389, there is no canonical definition to state claims against.
-/

/-! ## A207389.P2343481308374107025

`A207391(A052905(n+3))`
-/

namespace A207389.P2343481308374107025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A052905 (n + 3)).toNat

end

end A207389.P2343481308374107025

/-! ## A207389.P1936179117867702546

`A207391(A046691(n+4)-1)`
-/

namespace A207389.P1936179117867702546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A046691 (n + 4) - 1).toNat

end

end A207389.P1936179117867702546

/-! ## A207389.P4530128914373141253

`A207391(A000217(n+6)-5)`
-/

namespace A207389.P4530128914373141253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 6) - 5).toNat

end

end A207389.P4530128914373141253

/-! ## A207389.P16501893795685840783

`A207391(A000124(n+6)-6)`
-/

namespace A207389.P16501893795685840783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000124 (n + 6) - 6).toNat

end

end A207389.P16501893795685840783

/-! ## A207389.P1382580864324072269

`A207391(Δ[Δ[A006504(n+1)]])`
-/

namespace A207389.P1382580864324072269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (f1 (n + 1) - f1 n).toNat

end

end A207389.P1382580864324072269

/-!
# A207390: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207390, there is no canonical definition to state claims against.
-/

/-! ## A207390.P10161985264250033701

`A207391(A055999(n+4))`
-/

namespace A207390.P10161985264250033701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A055999 (n + 4)).toNat

end

end A207390.P10161985264250033701

/-! ## A207390.P10008307679296836850

`A207391(eq[6, A193592(n)])`
-/

namespace A207390.P10008307679296836850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207390.P10008307679296836850

/-! ## A207390.P4531951866235529568

`A207391(A000217(n+7)-6)`
-/

namespace A207390.P4531951866235529568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 7) - 6).toNat

end

end A207390.P4531951866235529568

/-! ## A207390.P11432743162219456092

`A207391(A000124(n+7)-7)`
-/

namespace A207390.P11432743162219456092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000124 (n + 7) - 7).toNat

end

end A207390.P11432743162219456092

/-! ## A207390.P11065353635838465768

`A207391(A167499(n+4)+2*(n+1))`
-/

namespace A207390.P11065353635838465768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A207390.P11065353635838465768

/-!
# A207391: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207391, there is no canonical definition to state claims against.
-/

/-! ## A207391.P1754715704034392072

`A207938(n+1)-A016389(A119502(n))`
-/

namespace A207391.P1754715704034392072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (n + 1) - A016389 (A119502 n).toNat

end

end A207391.P1754715704034392072

/-! ## A207391.P13561142362640576208

`A207938(n+1)-A016389(A152656(n))`
-/

namespace A207391.P13561142362640576208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (n + 1) - A016389 (A152656 n).toNat

end

end A207391.P13561142362640576208

/-! ## A207391.P10124205305049746231

`A207938(n+1)-A359472(A060281(n+1))`
-/

namespace A207391.P10124205305049746231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (n + 1) - A359472 (A060281 (n + 1)).toNat

end

end A207391.P10124205305049746231

/-! ## A207391.P1572821318279997578

`A207938(A187829(n+1))`
-/

namespace A207391.P1572821318279997578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A187829 (n + 1)).toNat

end

end A207391.P1572821318279997578

/-! ## A207391.P1045669624150520815

`A207938(n+1)+A000007(A094373(n))`
-/

namespace A207391.P1045669624150520815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (n + 1) + A000007 (A094373 n).toNat

end

end A207391.P1045669624150520815

/-!
# A207392: Number of 3Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207392, there is no canonical definition to state claims against.
-/

/-! ## A207392.P11654549199057983671

`A207391(∑[n+2]+4)`
-/

namespace A207392.P11654549199057983671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207392.P11654549199057983671

/-! ## A207392.P14050235037407681343

`A207391(A167614(n+1))+A025469(n)`
-/

namespace A207392.P14050235037407681343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 1)).toNat + A025469 n

end

end A207392.P14050235037407681343

/-! ## A207392.P12329450072970537532

`A207391(A167614(n+1))+A185284(n)`
-/

namespace A207392.P12329450072970537532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 1)).toNat + A185284 n

end

end A207392.P12329450072970537532

/-! ## A207392.P7148299267461220946

`lcm(A020985(n), A207391(A167614(n+1)))`
-/

namespace A207392.P7148299267461220946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207391 (A167614 (n + 1)).toNat)

end

end A207392.P7148299267461220946

/-! ## A207392.P11931742637835377783

`A207391(A167614(n+1))+A034568(n+1)`
-/

namespace A207392.P11931742637835377783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 1)).toNat + A034568 (n + 1)

end

end A207392.P11931742637835377783

/-!
# A207393: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207393, there is no canonical definition to state claims against.
-/

/-! ## A207393.P14331700754832283601

`A207391(A141214(n)+7)`
-/

namespace A207393.P14331700754832283601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A141214 n + 7).toNat

end

end A207393.P14331700754832283601

/-! ## A207393.P7015418867840418089

`A207391(A052905(n)+9)`
-/

namespace A207393.P7015418867840418089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A052905 n + 9).toNat

end

end A207393.P7015418867840418089

/-! ## A207393.P4254219398958739327

`A207391(A055999(n)+10)`
-/

namespace A207393.P4254219398958739327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A055999 n + 10).toNat

end

end A207393.P4254219398958739327

/-! ## A207393.P4502141274885636225

`A207391(A167614(n+2)+1)`
-/

namespace A207393.P4502141274885636225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 2) + 1).toNat

end

end A207393.P4502141274885636225

/-! ## A207393.P8912965338814535872

`A207391(A000096(n+2)+5)`
-/

namespace A207393.P8912965338814535872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000096 (n + 2) + 5).toNat

end

end A207393.P8912965338814535872

/-!
# A207394: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207394, there is no canonical definition to state claims against.
-/

/-! ## A207394.P7522485450667758249

`A207391(A167499(n+3))`
-/

namespace A207394.P7522485450667758249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167499 (n + 3)).toNat

end

end A207394.P7522485450667758249

/-! ## A207394.P1553526959585915766

`A207391(A167614(n+3)+2)`
-/

namespace A207394.P1553526959585915766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 3) + 2).toNat

end

end A207394.P1553526959585915766

/-! ## A207394.P17451096858358602038

`A207391(A000217(n+4)+5)`
-/

namespace A207394.P17451096858358602038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 4) + 5).toNat

end

end A207394.P17451096858358602038

/-! ## A207394.P398690297052599380

`A207391(A038722(Δ[A023545(n+1)]))`
-/

namespace A207394.P398690297052599380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207394.P398690297052599380

/-! ## A207394.P2686958427486952693

`A207391(A008619(Δ[A026046(n+6)]))`
-/

namespace A207394.P2686958427486952693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207394.P2686958427486952693

/-!
# A207395: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207395, there is no canonical definition to state claims against.
-/

/-! ## A207395.P10303016636192850202

`A207391(A000217(n+5)+6)`
-/

namespace A207395.P10303016636192850202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 5) + 6).toNat

end

end A207395.P10303016636192850202

/-! ## A207395.P13230369022207207079

`A207391(A034856(n+4)+8)`
-/

namespace A207395.P13230369022207207079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A034856 (n + 4) + 8).toNat

end

end A207395.P13230369022207207079

/-! ## A207395.P17793938899249806922

`A207391(A046691(n+3)+10)`
-/

namespace A207395.P17793938899249806922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A046691 (n + 3) + 10).toNat

end

end A207395.P17793938899249806922

/-! ## A207395.P16371377576462105551

`A207391(Δ[A023545(n+1)]+10)`
-/

namespace A207395.P16371377576462105551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (f1 (n + 1) - f1 n + 10).toNat

end

end A207395.P16371377576462105551

/-! ## A207395.P12077288297564076235

`A207391(A000124(n+6)-(n+1))`
-/

namespace A207395.P12077288297564076235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A207395.P12077288297564076235

/-!
# A207396: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207396, there is no canonical definition to state claims against.
-/

/-! ## A207396.P6731894854169425257

`A207391(A056119(n)+28)`
-/

namespace A207396.P6731894854169425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A056119 n + 28).toNat

end

end A207396.P6731894854169425257

/-! ## A207396.P16605578491834489736

`A207391(A167499(n+5)+2)`
-/

namespace A207396.P16605578491834489736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167499 (n + 5) + 2).toNat

end

end A207396.P16605578491834489736

/-! ## A207396.P3199176022716712091

`A207391(A167614(n+5)+4)`
-/

namespace A207396.P3199176022716712091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A167614 (n + 5) + 4).toNat

end

end A207396.P3199176022716712091

/-! ## A207396.P11807200651284803306

`A207391(A000217(n+6)+7)`
-/

namespace A207396.P11807200651284803306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000217 (n + 6) + 7).toNat

end

end A207396.P11807200651284803306

/-! ## A207396.P1513911733462151039

`A207391(A000124(n+7)-(n+1))`
-/

namespace A207396.P1513911733462151039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A207396.P1513911733462151039

/-!
# A207397: G.f.: Sum_{n>=0} Product_{k=1..n} (q^k - 1) where q = (1+x)/(1+x^2).

The programs for A207397, there is no canonical definition to state claims against.
-/

/-! ## A207397.P8113106696320901682

`A055253(A218677(n)+A091703(n))`
-/

namespace A207397.P8113106696320901682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 (A218677 n + A091703 n).toNat

end

end A207397.P8113106696320901682

/-! ## A207397.P10130481927248411982

`A285899(A000111(n))+A166298(n)`
-/

namespace A207397.P10130481927248411982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285899 (A000111 n).toNat + A166298 n

end

end A207397.P10130481927248411982

/-! ## A207397.P4606097809198845548

`A008616(A322380(n)+A191365(n))`
-/

namespace A207397.P4606097809198845548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A322380 n + A191365 n).toNat

end

end A207397.P4606097809198845548

/-!
# A207398: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207398, there is no canonical definition to state claims against.
-/

/-! ## A207398.P3798162315178664519

`A207403(∑[4*n]+1)`
-/

namespace A207398.P3798162315178664519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207398.P3798162315178664519

/-! ## A207398.P16194648158993558738

`or(char[3], A207403(A001844(n)))`
-/

namespace A207398.P16194648158993558738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207403 (A001844 n).toNat)

end

end A207398.P16194648158993558738

/-! ## A207398.P5299423155030988684

`A007318(∑[n])*A207403(A001844(n))`
-/

namespace A207398.P5299423155030988684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A207403 (A001844 n).toNat

end

end A207398.P5299423155030988684

/-! ## A207398.P363616438752799758

`A207403(A001844(n))+A008683(4*(n+4))`
-/

namespace A207398.P363616438752799758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A001844 n).toNat + A008683 (4 * (n + 4))

end

end A207398.P363616438752799758

/-! ## A207398.P5231737727354108061

`A207403(A001844(n))+log2(A014963(6*(n+1)))`
-/

namespace A207398.P5231737727354108061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207403 (A001844 n).toNat : ℝ) + Real.logb 2 (A014963 (6 * (n + 1)) : ℝ)

end

end A207398.P5231737727354108061

/-!
# A207399: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207399, the canonical program `A207399.P16001196230167075356` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207399 has offset 1).

The definition of A207399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207399.P16001196230167075356

`(n*(n+5)+3)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207399

/-- `(n*(n+5)+3)²` -/
def P16001196230167075356.Spec : Prop :=
  ∀ n, (P16001196230167075356.a n : ℤ) = A207399 (n + 1)

theorem P16001196230167075356.correct : P16001196230167075356.Spec := by
  intro n
  simp only [A207399, Nat.add_sub_cancel]

end A207399

/-! ## A207399.P5043176824389124441

`record[(3-(n²+n))²]`
-/

namespace A207399.P5043176824389124441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n ^ 2 + n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207399.P5043176824389124441

namespace A207399

/-- `record[(3-(n²+n))²]` -/
def P5043176824389124441.Spec : Prop :=
  ∀ n, P5043176824389124441.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P8171274820893473283

`8*C(∑[n+2], 2)+1`
-/

namespace A207399.P8171274820893473283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A207399.P8171274820893473283

namespace A207399

/-- `8*C(∑[n+2], 2)+1` -/
def P8171274820893473283.Spec : Prop :=
  ∀ n, (P8171274820893473283.a n : ℤ) = A207399 (n + 1)

end A207399

/-! ## A207399.P2772220143987655460

`(3-lcm(n+2, n+3))^2`
-/

namespace A207399.P2772220143987655460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.lcm (n + 2) (n + 3) : ℤ)) ^ 2

end

end A207399.P2772220143987655460

namespace A207399

/-- `(3-lcm(n+2, n+3))^2` -/
def P2772220143987655460.Spec : Prop :=
  ∀ n, P2772220143987655460.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P6988150599457269608

`floor(∑[a(n-1)+2]²)` with `a(0)=3, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A207399.P6988150599457269608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207399.P6988150599457269608

namespace A207399

/-- `floor(∑[a(n-1)+2]²)` -/
def P6988150599457269608.Spec : Prop :=
  ∀ n, (P6988150599457269608.a n : ℤ) = A207399 (n + 1)

end A207399

/-! ## A207399.P16162968010181086873

`∑[record[xor(1, n+1)+3]]^2`
-/

namespace A207399.P16162968010181086873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207399.P16162968010181086873

namespace A207399

/-- `∑[record[xor(1, n+1)+3]]^2` -/
def P16162968010181086873.Spec : Prop :=
  ∀ n, (P16162968010181086873.a n : ℤ) = A207399 (n + 1)

end A207399

/-! ## A207399.P1106937910607595923

`or(1, ((n+2)²-1+n)²)`
-/

namespace A207399.P1106937910607595923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((n + 2) ^ 2 : ℤ) - 1 + (n : ℤ)) ^ 2)

end

end A207399.P1106937910607595923

namespace A207399

/-- `or(1, ((n+2)²-1+n)²)` -/
def P1106937910607595923.Spec : Prop :=
  ∀ n, P1106937910607595923.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P5238650512439053475

`abs(record[(3-n*(n+1))^2])`
-/

namespace A207399.P5238650512439053475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n * (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A207399.P5238650512439053475

namespace A207399

/-- `abs(record[(3-n*(n+1))^2])` -/
def P5238650512439053475.Spec : Prop :=
  ∀ n, P5238650512439053475.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P17109375605495855953

`record[(2-n)^2-(n+1)]^2`
-/

namespace A207399.P17109375605495855953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A207399.P17109375605495855953

namespace A207399

/-- `record[(2-n)^2-(n+1)]^2` -/
def P17109375605495855953.Spec : Prop :=
  ∀ n, P17109375605495855953.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P3141731437736511735

`and(-3, ((n+2)²+n-1)²)`
-/

namespace A207399.P3141731437736511735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)) ^ 2)

end

end A207399.P3141731437736511735

namespace A207399

/-- `and(-3, ((n+2)²+n-1)²)` -/
def P3141731437736511735.Spec : Prop :=
  ∀ n, P3141731437736511735.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P13719757179729412348

`floor((∑[a(n-1)-2]-n)²)` with `a(0)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A207399.P13719757179729412348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ 2

end

end A207399.P13719757179729412348

namespace A207399

/-- `floor((∑[a(n-1)-2]-n)²)` -/
def P13719757179729412348.Spec : Prop :=
  ∀ n, P13719757179729412348.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P7348989994916746528

`∑[ogf((6-2x^2)/(1-2x+x^2))]²/4`
-/

namespace A207399.P7348989994916746528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, -2] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A207399.P7348989994916746528

namespace A207399

/-- `∑[ogf((6-2x^2)/(1-2x+x^2))]²/4` -/
def P7348989994916746528.Spec : Prop :=
  ∀ n, P7348989994916746528.a n = (A207399 (n + 1) : ℚ)

end A207399

/-! ## A207399.P8459674056089510914

`lcm(2, ((n+2)²+n-1)²)/2`
-/

namespace A207399.P8459674056089510914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)) ^ 2) : ℚ) / 2

end

end A207399.P8459674056089510914

namespace A207399

/-- `lcm(2, ((n+2)²+n-1)²)/2` -/
def P8459674056089510914.Spec : Prop :=
  ∀ n, P8459674056089510914.a n = (A207399 (n + 1) : ℚ)

end A207399

/-! ## A207399.P4412924810248399750

`ogf((9+36x-26x^2+4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A207399.P4412924810248399750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 36, -26, 4, 1] [1, -5, 10, -10, 5, -1] n

end

end A207399.P4412924810248399750

namespace A207399

/-- `ogf((9+36x-26x^2+4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4412924810248399750.Spec : Prop :=
  ∀ n, P4412924810248399750.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P16140056036247550459

`C(2, n+3)+((n+2)²+n-1)²`
-/

namespace A207399.P16140056036247550459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 3) : ℤ) + (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)) ^ 2

end

end A207399.P16140056036247550459

namespace A207399

/-- `C(2, n+3)+((n+2)²+n-1)²` -/
def P16140056036247550459.Spec : Prop :=
  ∀ n, P16140056036247550459.a n = A207399 (n + 1)

end A207399

/-! ## A207399.P6855465370978461091

`((n+2)²+n-1)²/gcd(n, n+1)`
-/

namespace A207399.P6855465370978461091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)) ^ 2 : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A207399.P6855465370978461091

namespace A207399

/-- `((n+2)²+n-1)²/gcd(n, n+1)` -/
def P6855465370978461091.Spec : Prop :=
  ∀ n, P6855465370978461091.a n = (A207399 (n + 1) : ℚ)

theorem P6855465370978461091.correct : P6855465370978461091.Spec := by
  intro n
  simp only [A207399, Nat.add_sub_cancel, A207399.P6855465370978461091.a, A207399.P16001196230167075356.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A207399

/-! ## A207399.P7124325882034799749

`A207400(n+1)²/A207401(n+1)`
-/

namespace A207399.P7124325882034799749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207400 (n + 1) ^ 2 : ℚ) / (A207401 (n + 1) : ℚ)

end

end A207399.P7124325882034799749

namespace A207399

/-- `A207400(n+1)²/A207401(n+1)` -/
def P7124325882034799749.Spec : Prop :=
  ∀ n, P7124325882034799749.a n = (A207399 (n + 1) : ℚ)

end A207399

/-! ## A207399.P5608651988819106759

`A207700(n+1)²/A207701(n+1)`
-/

namespace A207399.P5608651988819106759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207700 (n + 1) ^ 2 : ℚ) / (A207701 (n + 1) : ℚ)

end

end A207399.P5608651988819106759

namespace A207399

/-- `A207700(n+1)²/A207701(n+1)` -/
def P5608651988819106759.Spec : Prop :=
  ∀ n, P5608651988819106759.a n = (A207399 (n + 1) : ℚ)

end A207399

/-! ## A207399.P16641301257927547698

`((n+2)²+n-1)^A020639(A000010(n+3))`
-/

namespace A207399.P16641301257927547698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1) : ℚ) ^ (A020639 (A000010 (n + 3)).toNat : ℤ)

end

end A207399.P16641301257927547698

namespace A207399

/-- `((n+2)²+n-1)^A020639(A000010(n+3))` -/
def P16641301257927547698.Spec : Prop :=
  ∀ n, P16641301257927547698.a n = (A207399 (n + 1) : ℚ)

end A207399

/-! ## A207399.P13925667432056874486

`A014209(n+1)*A014209(n+1)`
-/

namespace A207399.P13925667432056874486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (n + 1) * A014209 (n + 1)

end

end A207399.P13925667432056874486

namespace A207399

/-- `A014209(n+1)*A014209(n+1)` -/
def P13925667432056874486.Spec : Prop :=
  ∀ n, P13925667432056874486.a n = A207399 (n + 1)

theorem P13925667432056874486.correct : P13925667432056874486.Spec := by
  intro n
  simp only [A207399, Nat.add_sub_cancel, A207399.P13925667432056874486.a, A207399.P16001196230167075356.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207399

