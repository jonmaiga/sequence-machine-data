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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A200706: Number of n X n 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200706, there is no canonical definition to state claims against.
-/

/-! ## A200706.P15583812329359156022

`A200713(∑[4*n]+1)`
-/

namespace A200706.P15583812329359156022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200706.P15583812329359156022

/-!
# A200707: Number of nX1 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200707, there is no canonical definition to state claims against.
-/

/-! ## A200707.P7122646888716182177

`A200763(A055999(n+4))`
-/

namespace A200707.P7122646888716182177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A055999 (n + 4)).toNat

end

end A200707.P7122646888716182177

/-! ## A200707.P5379456254154658877

`A200763(A000096(n+6)-5)`
-/

namespace A200707.P5379456254154658877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 6) - 5).toNat

end

end A200707.P5379456254154658877

/-! ## A200707.P5840380958461927313

`A200763(A000217(n+7)-6)`
-/

namespace A200707.P5840380958461927313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 7) - 6).toNat

end

end A200707.P5840380958461927313

/-! ## A200707.P1988265426210907769

`A200763(A000124(n+7)-7)`
-/

namespace A200707.P1988265426210907769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000124 (n + 7) - 7).toNat

end

end A200707.P1988265426210907769

/-! ## A200707.P16504765957005353873

`A200763(A167614(A020715(n))-9)`
-/

namespace A200707.P16504765957005353873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167614 (A020715 n).toNat - 9).toNat

end

end A200707.P16504765957005353873

/-!
# A200708: Number of nX2 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200708, there is no canonical definition to state claims against.
-/

/-! ## A200708.P516507325158024949

`A200713(∑[n+1]+2)`
-/

namespace A200708.P516507325158024949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200708.P516507325158024949

/-! ## A200708.P3539756993223061499

`record[gcd(A049600(n), A200713(n+2))]`
-/

namespace A200708.P3539756993223061499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A200713 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200708.P3539756993223061499

/-! ## A200708.P13175886477663560403

`A153675(n+1)*A200713(A000096(n)+3)`
-/

namespace A200708.P13175886477663560403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1) * A200713 (A000096 n + 3).toNat

end

end A200708.P13175886477663560403

/-! ## A200708.P5140880539679469137

`A200713(A000096(n)+3)/A153675(n+2)`
-/

namespace A200708.P5140880539679469137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200713 (A000096 n + 3).toNat : ℚ) / (A153675 (n + 2) : ℚ)

end

end A200708.P5140880539679469137

/-! ## A200708.P9496645823890708807

`record[A200713(Δ[A003453(n+5)])]`
-/

namespace A200708.P9496645823890708807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200708.P9496645823890708807

/-!
# A200709: Number of n X 3 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200709, there is no canonical definition to state claims against.
-/

/-! ## A200709.P1414849423714985799

`A200713(∑[n+2]+4)`
-/

namespace A200709.P1414849423714985799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200709.P1414849423714985799

/-! ## A200709.P857378688099704083

`record[gcd(A049600(n+1), A200713(n+4))]`
-/

namespace A200709.P857378688099704083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 (n + 1)) (A200713 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200709.P857378688099704083

/-! ## A200709.P17578378460699077897

`A200713(A167614(n+1))+A045887(n)`
-/

namespace A200709.P17578378460699077897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A167614 (n + 1)).toNat + A045887 n

end

end A200709.P17578378460699077897

/-! ## A200709.P11172044421958052582

`A225099(n)+A200713(A167614(n+1))`
-/

namespace A200709.P11172044421958052582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n + A200713 (A167614 (n + 1)).toNat

end

end A200709.P11172044421958052582

/-! ## A200709.P1073269127782394613

`A200713(A167614(n+1))*A245013(n)`
-/

namespace A200709.P1073269127782394613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A167614 (n + 1)).toNat * A245013 n

end

end A200709.P1073269127782394613

/-!
# A200710: Number of n X 4 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200710, there is no canonical definition to state claims against.
-/

/-! ## A200710.P13865827015555707557

`A200713(A141214(n)+7)`
-/

namespace A200710.P13865827015555707557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A141214 n + 7).toNat

end

end A200710.P13865827015555707557

/-! ## A200710.P12576356121722303628

`A200713(A052905(n)+9)`
-/

namespace A200710.P12576356121722303628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A052905 n + 9).toNat

end

end A200710.P12576356121722303628

/-! ## A200710.P16246582826163464740

`A200713(A055999(n)+10)`
-/

namespace A200710.P16246582826163464740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A055999 n + 10).toNat

end

end A200710.P16246582826163464740

/-! ## A200710.P10293225274385900120

`A200713(eq[5, A066657(n)])`
-/

namespace A200710.P10293225274385900120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200710.P10293225274385900120

/-!
# A200711: Number of nX5 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200711, there is no canonical definition to state claims against.
-/

/-! ## A200711.P474800618771914219

`A200713(A374005(n+1))`
-/

namespace A200711.P474800618771914219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200713 (A374005 (n + 1)).toNat

end

end A200711.P474800618771914219

/-!
# A200713: T(n,k)=Number of nXk 0..7 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200713, there is no canonical definition to state claims against.
-/

/-! ## A200713.P9572402710905649952

`A053303(A000040(n+2)-A007318(3*n+2))`
-/

namespace A200713.P9572402710905649952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053303 (A000040 (n + 2) - A007318 (3 * n + 2)).toNat

end

end A200713.P9572402710905649952

/-!
# A200714: Stolarsky representation interpreted as binary to decimal integers.

The programs for A200714, there is no canonical definition to state claims against.
-/

/-! ## A200714.P16611696056098852362

`A367306(A358654(n))`
-/

namespace A200714.P16611696056098852362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A358654 n).toNat

end

end A200714.P16611696056098852362

/-! ## A200714.P12501091637863732728

`A358654(n)+A194801(A288117(n))`
-/

namespace A200714.P12501091637863732728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 n + A194801 (A288117 n).toNat

end

end A200714.P12501091637863732728

/-! ## A200714.P18003559532660511372

`A358654(n)%A121964(n)`
-/

namespace A200714.P18003559532660511372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358654 n) (A121964 (n + 30))

end

end A200714.P18003559532660511372

/-! ## A200714.P7767000178535400173

`A358654(n)+A000007(A019466(n))`
-/

namespace A200714.P7767000178535400173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 n + A000007 (A019466 n).toNat

end

end A200714.P7767000178535400173

/-! ## A200714.P10901316308443174343

`A358654(n)+A000007(A130755(n))`
-/

namespace A200714.P10901316308443174343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 n + A000007 (A130755 n).toNat

end

end A200714.P10901316308443174343

/-!
# A200715: Expansion of (-3*x^2 + x - 1)/(x^3 - 3*x^2 + x - 1).

The programs for A200715, the canonical program `A200715.P3047439603085832376` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200715 has offset 0).

The definition of A200715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+3x^2)/(1-x+3x^2-x^3))` (program `A200715.P3047439603085832376`, by `A200715.P3047439603085832376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200715.P3047439603085832376

`ogf((1-x+3x^2)/(1-x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200715

/-- `ogf((1-x+3x^2)/(1-x+3x^2-x^3))` -/
def P3047439603085832376.Spec : Prop :=
  ∀ n, P3047439603085832376.a n = A200715 n

theorem P3047439603085832376.correct : P3047439603085832376.Spec := by
  intro n
  simp only [A200715]

end A200715

/-! ## A200715.P14282978450634075697

`a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200715.P14282978450634075697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A200715.P14282978450634075697

namespace A200715

/-- `a(n-1)-3*a(n-2)+a(n-3)` -/
def P14282978450634075697.Spec : Prop :=
  ∀ n, P14282978450634075697.a n = A200715 n

end A200715

/-! ## A200715.P1988979592642684724

`a(n-1)-(3*a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200715.P1988979592642684724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (3 * a (n - 2) - a (n - 3))

end

end A200715.P1988979592642684724

namespace A200715

/-- `a(n-1)-(3*a(n-2)-a(n-3))` -/
def P1988979592642684724.Spec : Prop :=
  ∀ n, P1988979592642684724.a n = A200715 n

end A200715

/-!
# A200716: G.f. satisfies: A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)).

The programs for A200716, there is no canonical definition to state claims against.
-/

/-! ## A200716.P9791283663801451934

`A000201(A248608(n!))`
-/

namespace A200716.P9791283663801451934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A248608 (Nat.factorial n)).toNat

end

end A200716.P9791283663801451934

/-! ## A200716.P5699512816969625257

`A328678(A008000(n))+n`
-/

namespace A200716.P5699512816969625257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328678 (A008000 n).toNat + (n : ℤ)

end

end A200716.P5699512816969625257

/-!
# A200717: G.f. satisfies: A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)^2).

The programs for A200717, there is no canonical definition to state claims against.
-/

/-! ## A200717.P15225539588588578973

`A116480(A002061(n))-1`
-/

namespace A200717.P15225539588588578973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116480 (A002061 n).toNat - 1

end

end A200717.P15225539588588578973

/-! ## A200717.P9275276304021521043

`A097992(or(n, A083882(n)))`
-/

namespace A200717.P9275276304021521043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (Int.lor (n : ℤ) (A083882 n)).toNat

end

end A200717.P9275276304021521043

/-!
# A200718: G.f. satisfies A(x) = (1 + x*A(x)^2) * (1 + x^2*A(x)^6).

The programs for A200718, there is no canonical definition to state claims against.
-/

/-! ## A200718.P5326774450140387512

`A277193(A317082(n²))`
-/

namespace A200718.P5326774450140387512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A317082 (n ^ 2)).toNat

end

end A200718.P5326774450140387512

/-! ## A200718.P8799439172986909249

`A289499(A002893(n))+1`
-/

namespace A200718.P8799439172986909249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289499 (A002893 n).toNat + 1

end

end A200718.P8799439172986909249

/-!
# A200719: G.f. satisfies A(x) = (1 + x*A(x)^2) * (1 + x^2*A(x)^5).

The programs for A200719, there is no canonical definition to state claims against.
-/

/-! ## A200719.P10532160792622938150

`A371788(A143571(n))+A366026(n)`
-/

namespace A200719.P10532160792622938150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371788 (A143571 n).toNat + A366026 n

end

end A200719.P10532160792622938150

/-! ## A200719.P5104201002236116596

`or(A342991(A007716(n+1)), A366026(n))`
-/

namespace A200719.P5104201002236116596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342991 (A007716 (n + 1)).toNat) (A366026 n)

end

end A200719.P5104201002236116596

/-! ## A200719.P9289504871186408567

`or(A342991(A124795(2*n+5)), A366026(n))`
-/

namespace A200719.P9289504871186408567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342991 (A124795 (2 * n + 5)).toNat) (A366026 n)

end

end A200719.P9289504871186408567

/-! ## A200719.P2193572767066160728

`or(A173856(A218056(3*n+5)), A366026(n))`
-/

namespace A200719.P2193572767066160728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173856 (A218056 (3 * n + 5)).toNat) (A366026 n)

end

end A200719.P2193572767066160728

/-!
# A200723: The sum of integers k from 1 to n such that the greatest common unitary divisor of k and n is 1.

The programs for A200723, there is no canonical definition to state claims against.
-/

/-! ## A200723.P5895860727360852024

`xor(∑[n], A306268((n+1)*∏{p}[n+1, #]))`
-/

namespace A200723.P5895860727360852024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A306268 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)))

end

end A200723.P5895860727360852024

/-! ## A200723.P10672285003760827338

`C(∑{p}[n+1, #^val(n+1, #)], A008472(4^n))`
-/

namespace A200723.P10672285003760827338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p) (A008472 (4 ^ n)).toNat

end

end A200723.P10672285003760827338

/-! ## A200723.P13547053977877321354

`C(∑{p}[n+1, #^val(n+1, #)], 2%A135957(n))`
-/

namespace A200723.P13547053977877321354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p) (Int.tmod 2 (A135957 n)).toNat

end

end A200723.P13547053977877321354

/-! ## A200723.P919908324148145419

`C(∑{p}[n+1, #]^∏{e}[n+1, #], A008472((2^n)²))`
-/

namespace A200723.P919908324148145419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) (A008472 ((2 ^ n) ^ 2)).toNat

end

end A200723.P919908324148145419

/-! ## A200723.P13020729777894150621

`A057944(A101113(3^n))`
-/

namespace A200723.P13020729777894150621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A101113 (3 ^ n)).toNat

end

end A200723.P13020729777894150621

/-!
# A200724: Expansion of 1/(1-35*x+x^2).

The programs for A200724, the canonical program `A200724.P11551505688624773817` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200724 has offset 0).

The definition of A200724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-35x+x^2))` (program `A200724.P11551505688624773817`, by `A200724.P11551505688624773817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200724.P11551505688624773817

`ogf(1/(1-35x+x^2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200724

/-- `ogf(1/(1-35x+x^2))` -/
def P11551505688624773817.Spec : Prop :=
  ∀ n, P11551505688624773817.a n = A200724 n

theorem P11551505688624773817.correct : P11551505688624773817.Spec := by
  intro n
  simp only [A200724]

end A200724

/-! ## A200724.P10532581705136143584

`35*a(n-1)-a(n-2)` with `a(0)=1, a(1)=35`
-/

namespace A200724.P10532581705136143584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35] fun n a =>
  35 * a (n - 1) - a (n - 2)

end

end A200724.P10532581705136143584

namespace A200724

/-- `35*a(n-1)-a(n-2)` -/
def P10532581705136143584.Spec : Prop :=
  ∀ n, P10532581705136143584.a n = A200724 n

end A200724

/-! ## A200724.P11776335164440993799

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=35`
-/

namespace A200724.P11776335164440993799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 35] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A200724.P11776335164440993799

namespace A200724

/-- `(a(n-1)²-1)/a(n-2)` -/
def P11776335164440993799.Spec : Prop :=
  ∀ n, P11776335164440993799.a n = (A200724 n : ℚ)

end A200724

/-!
# A200725: G.f. A(x) satisfies A(x) = (1+x^2)*(1 + x*A(x)^3).

The programs for A200725, there is no canonical definition to state claims against.
-/

/-! ## A200725.P8532662224425884552

`A255906(n)-A061558(A139398(n))`
-/

namespace A200725.P8532662224425884552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A061558 (A139398 n).toNat

end

end A200725.P8532662224425884552

/-! ## A200725.P12692049858082383801

`A345439(∑[(2-3/(n+1))*4*a(n-1)])` with `a(0)=2, a(1)=2`
-/

namespace A200725.P12692049858082383801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  (2 - 3 / (n + 1 : ℚ)) * (4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A200725.P12692049858082383801

/-!
# A200726: Define a map f from primes to integers mod 4 by f(p) = 0,1,3,2,1 according as p == 1,2,3,4,0 mod 5; a(n) = Sum_{all primes p} v_p(n)*f(p), where v_p(n) is the exponent of the highest power of p dividing n.

The programs for A200726, there is no canonical definition to state claims against.
-/

/-! ## A200726.P10084686015855534428

`A053836(A346105(n+1))%4`
-/

namespace A200726.P10084686015855534428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 (A346105 (n + 1)).toNat) 4

end

end A200726.P10084686015855534428

/-!
# A200727: Number of partitions of n such that the number of parts is not divisible by the greatest part.

The programs for A200727, there is no canonical definition to state claims against.
-/

/-! ## A200727.P15953639306705240744

`Δ[A000070(n)]-A168659(n+1)`
-/

namespace A200727.P15953639306705240744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A168659 (n + 1)

end

end A200727.P15953639306705240744

/-! ## A200727.P2964044597099401073

`record[A035363(n)]-A168659(n+1)`
-/

namespace A200727.P2964044597099401073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A168659 (n + 1)

end

end A200727.P2964044597099401073

/-! ## A200727.P10436143054436179272

`A000041(n+1)-A168659(n+1)`
-/

namespace A200727.P10436143054436179272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A168659 (n + 1)

end

end A200727.P10436143054436179272

/-! ## A200727.P14793753256152003273

`record[A299200(n+1)]-A168659(n+1)`
-/

namespace A200727.P14793753256152003273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A168659 (n + 1)

end

end A200727.P14793753256152003273

/-! ## A200727.P11144011249851685378

`A064173(n+1)+A064174(n+1)-A168659(n+1)`
-/

namespace A200727.P11144011249851685378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A064174 (n + 1) - A168659 (n + 1))

end

end A200727.P11144011249851685378

/-!
# A200731: G.f. satisfies: A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)^6).

The programs for A200731, there is no canonical definition to state claims against.
-/

/-! ## A200731.P3292490940214203159

`A262082(∑[n+3]+n+3)`
-/

namespace A200731.P3292490940214203159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262082 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A200731.P3292490940214203159

/-! ## A200731.P9094885464609170029

`A070548(∑[A214764(n)]+1)`
-/

namespace A200731.P9094885464609170029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A200731.P9094885464609170029

/-!
# A200732: Primes of the form 4*n^3-5.

The programs for A200732, there is no canonical definition to state claims against.
-/

/-! ## A200732.P6454834625854590921

`p?[4*n^3-5]`
-/

namespace A200732.P6454834625854590921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200732.P6454834625854590921

/-! ## A200732.P3833085300194312902

`or(1, p?[A317614(n+1)-5])`
-/

namespace A200732.P3833085300194312902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200732.P3833085300194312902

/-! ## A200732.P16237413971561147723

`A007318(∑[n])*p?[A317614(n+1)-5]`
-/

namespace A200732.P16237413971561147723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A200732.P16237413971561147723

/-!
# A200733: Primes of the form 4*n^3-7.

The programs for A200733, there is no canonical definition to state claims against.
-/

/-! ## A200733.P9091930095702461901

`p?[4*n^3-7]`
-/

namespace A200733.P9091930095702461901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200733.P9091930095702461901

/-! ## A200733.P10672569721175051872

`round(sqrt(p?[(n+1)*(2*(n+1))²-7]²+1))`
-/

namespace A200733.P10672569721175051872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * (n + 1)) ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A200733.P10672569721175051872

/-! ## A200733.P808577698217724337

`or(1, p?[A033430(n)-7])`
-/

namespace A200733.P808577698217724337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200733.P808577698217724337

/-! ## A200733.P1262340117521844234

`p?[n*(2*n)²-7]-A026830(n)`
-/

namespace A200733.P1262340117521844234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A026830 n

end

end A200733.P1262340117521844234

/-! ## A200733.P10237387421076498710

`A067168(n)+p?[A033430(n)-7]`
-/

namespace A200733.P10237387421076498710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067168 (n + 10) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200733.P10237387421076498710

/-!
# A200734: Primes of the form 4*n^3-9.

The programs for A200734, there is no canonical definition to state claims against.
-/

/-! ## A200734.P9205886490946628767

`p?[4*n^3-9]`
-/

namespace A200734.P9205886490946628767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200734.P9205886490946628767

/-! ## A200734.P3581028546570368555

`or(1, p?[A317614(n+1)-9])`
-/

namespace A200734.P3581028546570368555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200734.P3581028546570368555

/-! ## A200734.P11688636576699405507

`record[p?[n²*A025480(n)-9]]`
-/

namespace A200734.P11688636576699405507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A025480 n - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200734.P11688636576699405507

/-! ## A200734.P9326916791345273459

`A007318(∑[n])*p?[A317614(n+1)-9]`
-/

namespace A200734.P9326916791345273459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A200734.P9326916791345273459

/-! ## A200734.P7500064704329660838

`p?[A317614(n+1)-9]/A007318(floor(n/12))`
-/

namespace A200734.P7500064704329660838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 ⌊(n : ℚ) / 12⌋.toNat : ℚ)

end

end A200734.P7500064704329660838

/-!
# A200736: Primes of the form 5*n^3-4.

The programs for A200736, there is no canonical definition to state claims against.
-/

/-! ## A200736.P10074042536392884352

`p?[5*n^3-4]`
-/

namespace A200736.P10074042536392884352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200736.P10074042536392884352

/-!
# A200737: Table of numbers of the form v*w + w*u + u*v with 1 <= u <= v <= w <= n, with repetitions.

The programs for A200737, there is no canonical definition to state claims against.
-/

/-! ## A200737.P7846207539597286151

`A200741(∑[A034435(n+1)!²])`
-/

namespace A200737.P7846207539597286151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034435 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200737.P7846207539597286151

/-! ## A200737.P4641463389416898219

`A000034(6*n²)*A200741(n+1)`
-/

namespace A200737.P4641463389416898219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (6 * n ^ 2) * A200741 (n + 1)

end

end A200737.P4641463389416898219

/-! ## A200737.P7839032065726444315

`A200741(n+1)^A034435(n+1)!`
-/

namespace A200737.P7839032065726444315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200741 (n + 1) ^ Nat.factorial (A034435 (n + 1)).toNat

end

end A200737.P7839032065726444315

/-! ## A200737.P6166900389731974594

`A200741(n+1)+A175676(A005897(n))`
-/

namespace A200737.P6166900389731974594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200741 (n + 1) + A175676 (A005897 n).toNat

end

end A200737.P6166900389731974594

/-! ## A200737.P11648363810158884409

`A014306(A250561(n+1))*A200741(n+1)`
-/

namespace A200737.P11648363810158884409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A250561 (n + 1)).toNat * A200741 (n + 1)

end

end A200737.P11648363810158884409

/-!
# A200738: Greatest number such that in the triangle A200737 the first terms in row n coincide with row n+1.

The programs for A200738, there is no canonical definition to state claims against.
-/

/-! ## A200738.P238579865282722228

`eq[1, Δ[A008624(A025050(n+1))]]`
-/

namespace A200738.P238579865282722228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A025050 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200738.P238579865282722228

/-! ## A200738.P10829009318054285318

`∑[A066955(2*(n+2))+A066955(2*n+5)]`
-/

namespace A200738.P10829009318054285318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (2 * (n + 2)) + A066955 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200738.P10829009318054285318

/-! ## A200738.P13051216540239858221

`A323162(A004396(A274761(n)))+A096182(n+1)`
-/

namespace A200738.P13051216540239858221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A004396 (A274761 n).toNat).toNat + A096182 (n + 1)

end

end A200738.P13051216540239858221

/-! ## A200738.P13351068994322514881

`A374243(n+5)+A122287(A000217(n))`
-/

namespace A200738.P13351068994322514881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374243 (n + 5) + A122287 (A000217 n).toNat

end

end A200738.P13351068994322514881

/-! ## A200738.P926776058256657102

`A036604(n+1)+A011655(A032533(n+1)²)`
-/

namespace A200738.P926776058256657102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036604 (n + 1) + A011655 (A032533 (n + 1) ^ 2).toNat

end

end A200738.P926776058256657102

/-!
# A200739: Expansion of (-x^2+5*x-1)/(x^3-x^2+5*x-1).

The programs for A200739, the canonical program `A200739.P4416501429605904473` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200739 has offset 0).

The definition of A200739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+x^2)/(1-5x+x^2-x^3))` (program `A200739.P4416501429605904473`, by `A200739.P4416501429605904473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200739.P4416501429605904473

`ogf((1-5x+x^2)/(1-5x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200739

/-- `ogf((1-5x+x^2)/(1-5x+x^2-x^3))` -/
def P4416501429605904473.Spec : Prop :=
  ∀ n, P4416501429605904473.a n = A200739 n

theorem P4416501429605904473.correct : P4416501429605904473.Spec := by
  intro n
  simp only [A200739]

end A200739

/-! ## A200739.P13554581265731465843

`5*a(n-1)+a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200739.P13554581265731465843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  5 * a (n - 1) + (a (n - 3) - a (n - 2))

end

end A200739.P13554581265731465843

namespace A200739

/-- `5*a(n-1)+a(n-3)-a(n-2)` -/
def P13554581265731465843.Spec : Prop :=
  ∀ n, P13554581265731465843.a n = A200739 n

end A200739

/-! ## A200739.P17946892508595981310

`a(n-3)-(a(n-2)-5*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200739.P17946892508595981310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - (a (n - 2) - 5 * a (n - 1))

end

end A200739.P17946892508595981310

namespace A200739

/-- `a(n-3)-(a(n-2)-5*a(n-1))` -/
def P17946892508595981310.Spec : Prop :=
  ∀ n, P17946892508595981310.a n = A200739 n

end A200739

/-! ## A200739.P13204017517055789168

`A314770(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200739.P13204017517055789168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A314770 (a (n - 1)).toNat

end

end A200739.P13204017517055789168

namespace A200739

/-- `A314770(a(n-1))` -/
def P13204017517055789168.Spec : Prop :=
  ∀ n, P13204017517055789168.a n = A200739 n

end A200739

/-!
# A200740: Generating function satisfies A(x)=1-xA(x)+2x(A(x))^2-x^2(A(x))^3+x^2(A(x))^4.

The programs for A200740, there is no canonical definition to state claims against.
-/

/-! ## A200740.P9010730390081067262

`A370441(n+1)+A046660(A075834(n))`
-/

namespace A200740.P9010730390081067262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370441 (n + 1) + A046660 (A075834 n).toNat

end

end A200740.P9010730390081067262

/-! ## A200740.P13581825201349445733

`A370441(n+1)+A244315(A014384(n))`
-/

namespace A200740.P13581825201349445733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370441 (n + 1) + A244315 (A014384 n).toNat

end

end A200740.P13581825201349445733

/-!
# A200743: Divide integers 1..n into two sets, minimizing the difference of their products. This sequence is the smaller product.

The programs for A200743, there is no canonical definition to state claims against.
-/

/-! ## A200743.P2287324660124312068

`A200744(n+1)-A038667(n+1)`
-/

namespace A200743.P2287324660124312068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200744 (n + 1) - A038667 (n + 1)

end

end A200743.P2287324660124312068

/-! ## A200743.P9189462254706564634

`A127180(n+1)-A200744(n+1)`
-/

namespace A200743.P9189462254706564634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127180 (n + 1) - A200744 (n + 1)

end

end A200743.P9189462254706564634

/-! ## A200743.P12398909799082368359

`(A127180(n+1)-A038667(n+1))/2`
-/

namespace A200743.P12398909799082368359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127180 (n + 1) - A038667 (n + 1) : ℚ) / 2

end

end A200743.P12398909799082368359

/-! ## A200743.P5245257186048728366

`record[A084938(n)]/A200744(n+1)`
-/

namespace A200743.P5245257186048728366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A200744 (n + 1) : ℚ)

end

end A200743.P5245257186048728366

/-! ## A200743.P14501129746437666431

`A000142(n+1)/A200744(n+1)`
-/

namespace A200743.P14501129746437666431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A200744 (n + 1) : ℚ)

end

end A200743.P14501129746437666431

/-! ## A200743.P13616048402091688551

`∏[A000027(n+1)]/A200744(n+1)`
-/

namespace A200743.P13616048402091688551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A200744 (n + 1) : ℚ)

end

end A200743.P13616048402091688551

/-!
# A200744: Divide integers 1..n into two sets, minimizing the difference of their products. This sequence is the larger product.

The programs for A200744, there is no canonical definition to state claims against.
-/

/-! ## A200744.P15410117688617042795

`A038667(n+1)+A200743(n+1)`
-/

namespace A200744.P15410117688617042795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038667 (n + 1) + A200743 (n + 1)

end

end A200744.P15410117688617042795

/-! ## A200744.P4423647345406459518

`A127180(n+1)-A200743(n+1)`
-/

namespace A200744.P4423647345406459518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127180 (n + 1) - A200743 (n + 1)

end

end A200744.P4423647345406459518

/-! ## A200744.P5438509816075336738

`(A038667(n+1)+A127180(n+1))/2`
-/

namespace A200744.P5438509816075336738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038667 (n + 1) + A127180 (n + 1) : ℚ) / 2

end

end A200744.P5438509816075336738

/-! ## A200744.P14876320465995522217

`record[A047920(n)]/A200743(n+1)`
-/

namespace A200744.P14876320465995522217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A200743 (n + 1) : ℚ)

end

end A200744.P14876320465995522217

/-! ## A200744.P14555804782386633639

`record[A098361(n)]/A200743(n+1)`
-/

namespace A200744.P14555804782386633639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A200743 (n + 1) : ℚ)

end

end A200744.P14555804782386633639

/-! ## A200744.P6189006546800577567

`A000142(n+1)/A200743(n+1)`
-/

namespace A200744.P6189006546800577567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A200743 (n + 1) : ℚ)

end

end A200744.P6189006546800577567

/-! ## A200744.P8655936839691592337

`record[A094310(n+1)]/A200743(n+1)`
-/

namespace A200744.P8655936839691592337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A200743 (n + 1) : ℚ)

end

end A200744.P8655936839691592337

/-!
# A200745: Number of partitions of n into distinct non-divisors of n.

The programs for A200745, there is no canonical definition to state claims against.
-/

/-! ## A200745.P8761612244575789341

`A240600(A332001(n))`
-/

namespace A200745.P8761612244575789341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A332001 n).toNat

end

end A200745.P8761612244575789341

/-! ## A200745.P6304059406734901480

`A003056(A003056(A332001(n)²))`
-/

namespace A200745.P6304059406734901480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (A332001 n ^ 2).toNat).toNat

end

end A200745.P6304059406734901480

/-! ## A200745.P632981357969880546

`A048766(A004396(A332001(n)²))`
-/

namespace A200745.P632981357969880546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A004396 (A332001 n ^ 2).toNat).toNat

end

end A200745.P632981357969880546

/-! ## A200745.P37885094603311986

`A269381(A098743(n)%A084959(n+1))`
-/

namespace A200745.P37885094603311986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Int.tmod (A098743 n) (A084959 (n + 1))).toNat

end

end A200745.P37885094603311986

/-! ## A200745.P11158954047370551577

`and(A341450(A213030(n)), A341450(n))`
-/

namespace A200745.P11158954047370551577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341450 (A213030 n).toNat) (A341450 n)

end

end A200745.P11158954047370551577

/-!
# A200746: Completely multiplicative function with a(prime(k)) = prime(k)*prime(k-1), a(2) = 2.

The programs for A200746, the canonical program `A200746.P16661720704137132554` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200746 has offset 1).

The definition of A200746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A200746.P16661720704137132554

`(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A200746

/-- `(n+1)*A064989(n+1)` -/
def P16661720704137132554.Spec : Prop :=
  ∀ n, P16661720704137132554.a n = A200746 (n + 1)

theorem P16661720704137132554.correct : P16661720704137132554.Spec := by
  intro n
  simp only [A200746, Nat.add_sub_cancel]

end A200746

/-! ## A200746.P11179608680353065827

`abs((n+1)*A290099(n+1))`
-/

namespace A200746.P11179608680353065827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A290099 (n + 1)|

end

end A200746.P11179608680353065827

namespace A200746

/-- `abs((n+1)*A290099(n+1))` -/
def P11179608680353065827.Spec : Prop :=
  ∀ n, P11179608680353065827.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P2303137020625334580

`(n+1)*A252463((n+1)/and(n+1, -(n+1)))`
-/

namespace A200746.P2303137020625334580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A200746.P2303137020625334580

namespace A200746

/-- `(n+1)*A252463((n+1)/and(n+1, -(n+1)))` -/
def P2303137020625334580.Spec : Prop :=
  ∀ n, P2303137020625334580.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P17433589919428361716

`(n+1)*A064216(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A200746.P17433589919428361716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064216 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A200746.P17433589919428361716

namespace A200746

/-- `(n+1)*A064216(floor(n/(xor(n, n+1)+1))+1)` -/
def P17433589919428361716.Spec : Prop :=
  ∀ n, P17433589919428361716.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P13700879825312350656

`(n+1)*A064216(A003602(n+1))`
-/

namespace A200746.P13700879825312350656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064216 (A003602 (n + 1)).toNat

end

end A200746.P13700879825312350656

namespace A200746

/-- `(n+1)*A064216(A003602(n+1))` -/
def P13700879825312350656.Spec : Prop :=
  ∀ n, P13700879825312350656.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P15713584218291133486

`(n+1)*A079707(A000265(n+1))`
-/

namespace A200746.P15713584218291133486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079707 (A000265 (n + 1)).toNat

end

end A200746.P15713584218291133486

namespace A200746

/-- `(n+1)*A079707(A000265(n+1))` -/
def P15713584218291133486.Spec : Prop :=
  ∀ n, P15713584218291133486.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P2238863446636152583

`(n+1)*A064216(A025480(n)+1)`
-/

namespace A200746.P2238863446636152583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064216 (A025480 n + 1).toNat

end

end A200746.P2238863446636152583

namespace A200746

/-- `(n+1)*A064216(A025480(n)+1)` -/
def P2238863446636152583.Spec : Prop :=
  ∀ n, P2238863446636152583.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P3296636040488435482

`(n+1)*A266645(A268674(n+1))`
-/

namespace A200746.P3296636040488435482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266645 (A268674 (n + 1)).toNat

end

end A200746.P3296636040488435482

namespace A200746

/-- `(n+1)*A266645(A268674(n+1))` -/
def P3296636040488435482.Spec : Prop :=
  ∀ n, P3296636040488435482.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P12787963210338353727

`(n+1)*A353749(n+1)/Δ[A005728(n)]`
-/

namespace A200746.P12787963210338353727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A353749 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A200746.P12787963210338353727

namespace A200746

/-- `(n+1)*A353749(n+1)/Δ[A005728(n)]` -/
def P12787963210338353727.Spec : Prop :=
  ∀ n, P12787963210338353727.a n = (A200746 (n + 1) : ℚ)

end A200746

/-! ## A200746.P9310229557147069496

`(A349126(n+1)-A349125(n+1))*(n+1)`
-/

namespace A200746.P9310229557147069496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349126 (n + 1) - A349125 (n + 1)) * (n + 1 : ℤ)

end

end A200746.P9310229557147069496

namespace A200746

/-- `(A349126(n+1)-A349125(n+1))*(n+1)` -/
def P9310229557147069496.Spec : Prop :=
  ∀ n, P9310229557147069496.a n = A200746 (n + 1)

theorem P9310229557147069496.correct : P9310229557147069496.Spec := by
  intro n
  simp only [A200746, Nat.add_sub_cancel, A200746.P9310229557147069496.a, A200746.P16661720704137132554.a, A064989, A064989.P13349672914146769936.a, A349125, A349125.P4936637679341869880.a, A349126, A349126.P8045301494363547831.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A200746

/-! ## A200746.P15763286308803876650

`(n+1)*A319627(n+1)*A330749(n+1)`
-/

namespace A200746.P15763286308803876650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A319627 (n + 1) * A330749 (n + 1))

end

end A200746.P15763286308803876650

namespace A200746

/-- `(n+1)*A319627(n+1)*A330749(n+1)` -/
def P15763286308803876650.Spec : Prop :=
  ∀ n, P15763286308803876650.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P17499292280926557953

`(n+1)/A000010(n+1)*A353749(n+1)`
-/

namespace A200746.P17499292280926557953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 1) : ℚ) * (A353749 (n + 1) : ℚ)

end

end A200746.P17499292280926557953

namespace A200746

/-- `(n+1)/A000010(n+1)*A353749(n+1)` -/
def P17499292280926557953.Spec : Prop :=
  ∀ n, P17499292280926557953.a n = (A200746 (n + 1) : ℚ)

end A200746

/-! ## A200746.P11578670735742674657

`∑{d}[n+1, A342662(#)*A349125((n+1)/#)]`
-/

namespace A200746.P11578670735742674657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342662 d * A349125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A200746.P11578670735742674657

namespace A200746

/-- `∑{d}[n+1, A342662(#)*A349125((n+1)/#)]` -/
def P11578670735742674657.Spec : Prop :=
  ∀ n, P11578670735742674657.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P13879330904653912991

`∑{d}[n+1, A342661(#)*A349343((n+1)/#)]`
-/

namespace A200746.P13879330904653912991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342661 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A200746.P13879330904653912991

namespace A200746

/-- `∑{d}[n+1, A342661(#)*A349343((n+1)/#)]` -/
def P13879330904653912991.Spec : Prop :=
  ∀ n, P13879330904653912991.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P14961776262249463

`(n+1)*A353749(n+1)/(1-A051953(n+1)+n)`
-/

namespace A200746.P14961776262249463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A353749 (n + 1) : ℚ) / (1 - A051953 (n + 1) + (n : ℤ) : ℚ))

end

end A200746.P14961776262249463

namespace A200746

/-- `(n+1)*A353749(n+1)/(1-A051953(n+1)+n)` -/
def P14961776262249463.Spec : Prop :=
  ∀ n, P14961776262249463.a n = (A200746 (n + 1) : ℚ)

end A200746

/-! ## A200746.P12047465202861711255

`(n+1)*A353749(n+1)/(A353643(n+1)*A353644(n+1))`
-/

namespace A200746.P12047465202861711255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A353749 (n + 1) : ℚ) / (A353643 (n + 1) * A353644 (n + 1) : ℚ))

end

end A200746.P12047465202861711255

namespace A200746

/-- `(n+1)*A353749(n+1)/(A353643(n+1)*A353644(n+1))` -/
def P12047465202861711255.Spec : Prop :=
  ∀ n, P12047465202861711255.a n = (A200746 (n + 1) : ℚ)

end A200746

/-! ## A200746.P8956723939128009106

`(n+1)*A252463(A353412(2*(n+1)))`
-/

namespace A200746.P8956723939128009106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A252463 (A353412 (2 * (n + 1))).toNat

end

end A200746.P8956723939128009106

namespace A200746

/-- `(n+1)*A252463(A353412(2*(n+1)))` -/
def P8956723939128009106.Spec : Prop :=
  ∀ n, P8956723939128009106.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P16501820459357513637

`A252463(A139391(2*(n+1)))*(n+1)`
-/

namespace A200746.P16501820459357513637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A139391 (2 * (n + 1))).toNat * (n + 1 : ℤ)

end

end A200746.P16501820459357513637

namespace A200746

/-- `A252463(A139391(2*(n+1)))*(n+1)` -/
def P16501820459357513637.Spec : Prop :=
  ∀ n, P16501820459357513637.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P18278682808042762551

`A252463(A000265(2*(n+1)))*A252463(2*(n+1))`
-/

namespace A200746.P18278682808042762551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A000265 (2 * (n + 1))).toNat * A252463 (2 * (n + 1))

end

end A200746.P18278682808042762551

namespace A200746

/-- `A252463(A000265(2*(n+1)))*A252463(2*(n+1))` -/
def P18278682808042762551.Spec : Prop :=
  ∀ n, P18278682808042762551.a n = A200746 (n + 1)

end A200746

/-! ## A200746.P16973064774053523446

`(n+1)*A285728(2*(n+1))`
-/

namespace A200746.P16973064774053523446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285728 (2 * (n + 1))

end

end A200746.P16973064774053523446

namespace A200746

/-- `(n+1)*A285728(2*(n+1))` -/
def P16973064774053523446.Spec : Prop :=
  ∀ n, P16973064774053523446.a n = A200746 (n + 1)

end A200746

/-!
# A200747: Number of iterations of A034968 required to reach 1.

The programs for A200747, the canonical program `A200747.P15284769991947233914` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200747 has offset 1).

The definition of A200747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200747.P15284769991947233914

`a(A034968(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A200747

/-- `a(A034968(n+1)-1)+1` -/
def P15284769991947233914.Spec : Prop :=
  ∀ n, (P15284769991947233914.a n : ℤ) = A200747 (n + 1)

theorem P15284769991947233914.correct : P15284769991947233914.Spec := by
  intro n
  simp only [A200747, Nat.add_sub_cancel]

end A200747

/-! ## A200747.P2396206939965552976

`a(n-A219651(n+1))+1` with `a(0)=0`
-/

namespace A200747.P2396206939965552976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A219651 (n + 1)).toNat + 1

end

end A200747.P2396206939965552976

namespace A200747

/-- `a(n-A219651(n+1))+1` -/
def P2396206939965552976.Spec : Prop :=
  ∀ n, (P2396206939965552976.a n : ℤ) = A200747 (n + 1)

theorem P2396206939965552976.correct : P2396206939965552976.Spec := by
  intro n
  simp only [A200747, Nat.add_sub_cancel, A200747.P2396206939965552976.a, A200747.P15284769991947233914.a, A034968, A034968.P11463317321541393924.a, A219651, A219651.P5835350949150730882.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A200747

/-! ## A200747.P10600303858206361028

`A005496(a(n-A219651(n+1)))` with `a(0)=0`
-/

namespace A200747.P10600303858206361028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a ((n : ℤ) - A219651 (n + 1)).toNat).toNat

end

end A200747.P10600303858206361028

namespace A200747

/-- `A005496(a(n-A219651(n+1)))` -/
def P10600303858206361028.Spec : Prop :=
  ∀ n, P10600303858206361028.a n = A200747 (n + 1)

end A200747

/-! ## A200747.P8408538239284674487

`A215366(a(n-A219651(n+1)))` with `a(0)=0`
-/

namespace A200747.P8408538239284674487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A215366 (a ((n : ℤ) - A219651 (n + 1)).toNat).toNat

end

end A200747.P8408538239284674487

namespace A200747

/-- `A215366(a(n-A219651(n+1)))` -/
def P8408538239284674487.Spec : Prop :=
  ∀ n, P8408538239284674487.a n = A200747 (n + 1)

end A200747

/-! ## A200747.P6778113476719277763

`a(A139365(A220655(n+2))-1)+1` with `a(0)=0`
-/

namespace A200747.P6778113476719277763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A139365 (A220655 (n + 2)).toNat - 1).toNat + 1

end

end A200747.P6778113476719277763

namespace A200747

/-- `a(A139365(A220655(n+2))-1)+1` -/
def P6778113476719277763.Spec : Prop :=
  ∀ n, (P6778113476719277763.a n : ℤ) = A200747 (n + 1)

end A200747

/-!
# A200748: Smallest number requiring n terms to be expressed as a sum of factorials.

The programs for A200748, the canonical program `A200748.P9894556090439625934` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200748 has offset 0).

The definition of A200748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200748.P9894556090439625934

`A051683(n+1)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200748

/-- `A051683(n+1)-1` -/
def P9894556090439625934.Spec : Prop :=
  ∀ n, P9894556090439625934.a n = A200748 n

theorem P9894556090439625934.correct : P9894556090439625934.Spec := by
  intro n
  simp only [A200748]

end A200748

/-! ## A200748.P13150090429928964698

`∑[round(sqrt(2*n))!]-1`
-/

namespace A200748.P13150090429928964698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A200748.P13150090429928964698

namespace A200748

/-- `∑[round(sqrt(2*n))!]-1` -/
def P13150090429928964698.Spec : Prop :=
  ∀ n, P13150090429928964698.a n = A200748 n

end A200748

/-! ## A200748.P11499448474068250659

`a(n-1)+round(sqrt(2*n))!` with `a(0)=0`
-/

namespace A200748.P11499448474068250659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A200748.P11499448474068250659

namespace A200748

/-- `a(n-1)+round(sqrt(2*n))!` -/
def P11499448474068250659.Spec : Prop :=
  ∀ n, (P11499448474068250659.a n : ℤ) = A200748 n

end A200748

/-! ## A200748.P14138086591691811111

`record[A324225(n+1)-1]`
-/

namespace A200748.P14138086591691811111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200748.P14138086591691811111

namespace A200748

/-- `record[A324225(n+1)-1]` -/
def P14138086591691811111.Spec : Prop :=
  ∀ n, P14138086591691811111.a n = A200748 n

end A200748

/-! ## A200748.P17200510956369133500

`∑[A000142(round(sqrt(2*n)))]-1`
-/

namespace A200748.P17200510956369133500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A200748.P17200510956369133500

namespace A200748

/-- `∑[A000142(round(sqrt(2*n)))]-1` -/
def P17200510956369133500.Spec : Prop :=
  ∀ n, P17200510956369133500.a n = A200748 n

end A200748

/-! ## A200748.P6847482574691253778

`A162608(A007401(n+1))-1`
-/

namespace A200748.P6847482574691253778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (A007401 (n + 1)).toNat - 1

end

end A200748.P6847482574691253778

namespace A200748

/-- `A162608(A007401(n+1))-1` -/
def P6847482574691253778.Spec : Prop :=
  ∀ n, P6847482574691253778.a n = A200748 n

end A200748

/-! ## A200748.P9388485923374104016

`A324225(A004202(n+1))-1`
-/

namespace A200748.P9388485923374104016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A004202 (n + 1)).toNat - 1

end

end A200748.P9388485923374104016

namespace A200748

/-- `A324225(A004202(n+1))-1` -/
def P9388485923374104016.Spec : Prop :=
  ∀ n, P9388485923374104016.a n = A200748 n

end A200748

/-! ## A200748.P8965463329072074003

`abs(1-∑[A002024(A028310(n))!])`
-/

namespace A200748.P8965463329072074003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002024 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A200748.P8965463329072074003

namespace A200748

/-- `abs(1-∑[A002024(A028310(n))!])` -/
def P8965463329072074003.Spec : Prop :=
  ∀ n, P8965463329072074003.a n = A200748 n

end A200748

/-! ## A200748.P11677651742501448846

`A162608(A002024(n+1)+n)-1`
-/

namespace A200748.P11677651742501448846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (A002024 (n + 1) + (n : ℤ)).toNat - 1

end

end A200748.P11677651742501448846

namespace A200748

/-- `A162608(A002024(n+1)+n)-1` -/
def P11677651742501448846.Spec : Prop :=
  ∀ n, P11677651742501448846.a n = A200748 n

end A200748

/-! ## A200748.P9448886249685493765

`record[A004737(n+1)*A214080(n)-1]`
-/

namespace A200748.P9448886249685493765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A214080 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200748.P9448886249685493765

namespace A200748

/-- `record[A004737(n+1)*A214080(n)-1]` -/
def P9448886249685493765.Spec : Prop :=
  ∀ n, P9448886249685493765.a n = A200748 n

end A200748

/-! ## A200748.P14848177160840488865

`A003991(n+1)*A077012(n+1)-1`
-/

namespace A200748.P14848177160840488865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A077012 (n + 1) - 1

end

end A200748.P14848177160840488865

namespace A200748

/-- `A003991(n+1)*A077012(n+1)-1` -/
def P14848177160840488865.Spec : Prop :=
  ∀ n, P14848177160840488865.a n = A200748 n

end A200748

/-! ## A200748.P3064471544429273966

`A002260(n+1)*A130493(n+1)-1`
-/

namespace A200748.P3064471544429273966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130493 (n + 1) - 1

end

end A200748.P3064471544429273966

namespace A200748

/-- `A002260(n+1)*A130493(n+1)-1` -/
def P3064471544429273966.Spec : Prop :=
  ∀ n, P3064471544429273966.a n = A200748 n

end A200748

/-! ## A200748.P5152796858123445756

`A094310(n+1)*A133819(n+1)-1`
-/

namespace A200748.P5152796858123445756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) * A133819 (n + 1) - 1

end

end A200748.P5152796858123445756

namespace A200748

/-- `A094310(n+1)*A133819(n+1)-1` -/
def P5152796858123445756.Spec : Prop :=
  ∀ n, P5152796858123445756.a n = A200748 n

end A200748

/-! ## A200748.P14431943164684345799

`record[A000196(n)!*A004737(n+1)]-1`
-/

namespace A200748.P14431943164684345799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000196 n).toNat : ℤ) * A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A200748.P14431943164684345799

namespace A200748

/-- `record[A000196(n)!*A004737(n+1)]-1` -/
def P14431943164684345799.Spec : Prop :=
  ∀ n, P14431943164684345799.a n = A200748 n

end A200748

/-! ## A200748.P12539119135496006437

`A002260(n+1)²*A094310(n+1)-1`
-/

namespace A200748.P12539119135496006437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A094310 (n + 1) - 1

end

end A200748.P12539119135496006437

namespace A200748

/-- `A002260(n+1)²*A094310(n+1)-1` -/
def P12539119135496006437.Spec : Prop :=
  ∀ n, P12539119135496006437.a n = A200748 n

end A200748

/-! ## A200748.P3782054691156686233

`A002024(n+1)!*A002260(n+1)-1`
-/

namespace A200748.P3782054691156686233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℤ) * A002260 (n + 1) - 1

end

end A200748.P3782054691156686233

namespace A200748

/-- `A002024(n+1)!*A002260(n+1)-1` -/
def P3782054691156686233.Spec : Prop :=
  ∀ n, P3782054691156686233.a n = A200748 n

end A200748

/-! ## A200748.P16885646136574160876

`∏[A130296(n+1)]*A002260(n+1)-1`
-/

namespace A200748.P16885646136574160876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1) - 1

end

end A200748.P16885646136574160876

namespace A200748

/-- `∏[A130296(n+1)]*A002260(n+1)-1` -/
def P16885646136574160876.Spec : Prop :=
  ∀ n, P16885646136574160876.a n = A200748 n

end A200748

/-! ## A200748.P5013176162092701941

`(round(sqrt(2*n+1))-A025581(n))*A002024(n+1)!-1`
-/

namespace A200748.P5013176162092701941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A025581 n) * (Nat.factorial (A002024 (n + 1)).toNat : ℤ) - 1

end

end A200748.P5013176162092701941

namespace A200748

/-- `(round(sqrt(2*n+1))-A025581(n))*A002024(n+1)!-1` -/
def P5013176162092701941.Spec : Prop :=
  ∀ n, P5013176162092701941.a n = A200748 n

end A200748

/-! ## A200748.P12781226769070535720

`(A002024(n+1)-(A004736(n+1)-1))*A002024(n+1)!-1`
-/

namespace A200748.P12781226769070535720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - (A004736 (n + 1) - 1)) * (Nat.factorial (A002024 (n + 1)).toNat : ℤ) - 1

end

end A200748.P12781226769070535720

namespace A200748

/-- `(A002024(n+1)-(A004736(n+1)-1))*A002024(n+1)!-1` -/
def P12781226769070535720.Spec : Prop :=
  ∀ n, P12781226769070535720.a n = A200748 n

end A200748

/-! ## A200748.P4950265075391781458

`∑[A130493(n+1)]-A130493(n+1)`
-/

namespace A200748.P4950265075391781458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130493 (n + 1)

end

end A200748.P4950265075391781458

namespace A200748

/-- `∑[A130493(n+1)]-A130493(n+1)` -/
def P4950265075391781458.Spec : Prop :=
  ∀ n, P4950265075391781458.a n = A200748 n

end A200748

/-!
# A200749: Number of meanders filling out an n X n grid, not reduced for symmetry.

The programs for A200749, there is no canonical definition to state claims against.
-/

/-! ## A200749.P1351145415137091816

`A201145(∑[n+1])`
-/

namespace A200749.P1351145415137091816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200749.P1351145415137091816

/-! ## A200749.P5237557242783779530

`A201145(A000217(n+1))*A236861(n)`
-/

namespace A200749.P5237557242783779530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201145 (A000217 (n + 1)).toNat * A236861 n

end

end A200749.P5237557242783779530

/-! ## A200749.P9787023137511294906

`A057427(n+1)*A201145(A000217(n+1))`
-/

namespace A200749.P9787023137511294906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A201145 (A000217 (n + 1)).toNat

end

end A200749.P9787023137511294906

/-! ## A200749.P9830522357438245306

`A201145(A001972(2*n))+A000038(3*(n+1))`
-/

namespace A200749.P9830522357438245306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201145 (A001972 (2 * n)).toNat + A000038 (3 * (n + 1))

end

end A200749.P9830522357438245306

/-!
# A200750: Number of partitions of n such that the number of parts and the greatest part are coprime.

The programs for A200750, there is no canonical definition to state claims against.
-/

/-! ## A200750.P3233822091362592426

`Δ[A000070(n)]-A200792(n+1)`
-/

namespace A200750.P3233822091362592426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A200792 (n + 1)

end

end A200750.P3233822091362592426

/-! ## A200750.P826324671935276516

`record[A035363(n)]-A200792(n+1)`
-/

namespace A200750.P826324671935276516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P826324671935276516

/-! ## A200750.P10503769840021545701

`record[A035444(n)]-A200792(n+1)`
-/

namespace A200750.P10503769840021545701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P10503769840021545701

/-! ## A200750.P14128093693074201620

`record[A114099(n)]-A200792(n+1)`
-/

namespace A200750.P14128093693074201620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P14128093693074201620

/-! ## A200750.P10173394367482848633

`A000041(n+1)-A200792(n+1)`
-/

namespace A200750.P10173394367482848633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A200792 (n + 1)

end

end A200750.P10173394367482848633

/-! ## A200750.P8094883463847163736

`record[A124094(n)]-A200792(n+1)`
-/

namespace A200750.P8094883463847163736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P8094883463847163736

/-! ## A200750.P4976587256098905469

`record[A194543(n)]-A200792(n+1)`
-/

namespace A200750.P4976587256098905469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P4976587256098905469

/-! ## A200750.P2820550954617922307

`record[A026794(n+1)]-A200792(n+1)`
-/

namespace A200750.P2820550954617922307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200792 (n + 1)

end

end A200750.P2820550954617922307

/-!
# A200752: Expansion of (-x^2 + 3*x - 1)/(x^3 - x^2 + 3*x - 1).

The programs for A200752, the canonical program `A200752.P11672385476748445239` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200752 has offset 0).

The definition of A200752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-3x+x^2-x^3))` (program `A200752.P11672385476748445239`, by `A200752.P11672385476748445239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200752.P11672385476748445239

`ogf((1-3x+x^2)/(1-3x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200752

/-- `ogf((1-3x+x^2)/(1-3x+x^2-x^3))` -/
def P11672385476748445239.Spec : Prop :=
  ∀ n, P11672385476748445239.a n = A200752 n

theorem P11672385476748445239.correct : P11672385476748445239.Spec := by
  intro n
  simp only [A200752]

end A200752

/-! ## A200752.P14379560450997682701

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200752.P14379560450997682701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3)

end

end A200752.P14379560450997682701

namespace A200752

/-- `3*a(n-1)-a(n-2)+a(n-3)` -/
def P14379560450997682701.Spec : Prop :=
  ∀ n, P14379560450997682701.a n = A200752 n

end A200752

/-! ## A200752.P14169635089962479978

`a(n-3)-(a(n-2)-3*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A200752.P14169635089962479978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - (a (n - 2) - 3 * a (n - 1))

end

end A200752.P14169635089962479978

namespace A200752

/-- `a(n-3)-(a(n-2)-3*a(n-1))` -/
def P14169635089962479978.Spec : Prop :=
  ∀ n, P14169635089962479978.a n = A200752 n

end A200752

/-! ## A200752.P10654719653151054071

`A098182(n)-Δ[A098182(n)/2]`
-/

namespace A200752.P10654719653151054071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098182 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098182 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A200752.P10654719653151054071

namespace A200752

/-- `A098182(n)-Δ[A098182(n)/2]` -/
def P10654719653151054071.Spec : Prop :=
  ∀ n, P10654719653151054071.a n = (A200752 n : ℚ)

end A200752

/-! ## A200752.P9198947590029858749

`A098182(n)-A025480(Δ[A098182(n)])`
-/

namespace A200752.P9198947590029858749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n - A025480 (f1 (n + 1) - f1 n).toNat

end

end A200752.P9198947590029858749

namespace A200752

/-- `A098182(n)-A025480(Δ[A098182(n)])` -/
def P9198947590029858749.Spec : Prop :=
  ∀ n, P9198947590029858749.a n = A200752 n

end A200752

/-!
# A200753: G.f. satisfies: A(x) = 1 + (x-x^2)*A(x)^3.

The programs for A200753, there is no canonical definition to state claims against.
-/

/-! ## A200753.P12741921442004180420

`A004526(A053617(n)+A032351(n))`
-/

namespace A200753.P12741921442004180420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053617 n + A032351 n).toNat

end

end A200753.P12741921442004180420

/-! ## A200753.P17238809875329579737

`A001281(A165545(n)+A165542(n))`
-/

namespace A200753.P17238809875329579737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A165545 n + A165542 n).toNat

end

end A200753.P17238809875329579737

/-! ## A200753.P17622216625964228320

`A004525(A165545(n)+A165542(n))`
-/

namespace A200753.P17622216625964228320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A165545 n + A165542 n).toNat

end

end A200753.P17622216625964228320

/-! ## A200753.P1692322884213914406

`A004526(A165545(n)+A165542(n))`
-/

namespace A200753.P1692322884213914406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165545 n + A165542 n).toNat

end

end A200753.P1692322884213914406

/-!
# A200754: G.f. satisfies A(x) = 1 + x*A(x)^4 - x^2*A(x)^5.

The programs for A200754, there is no canonical definition to state claims against.
-/

/-! ## A200754.P16549439679351777974

`A282166(A198944(n))`
-/

namespace A200754.P16549439679351777974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282166 (A198944 n).toNat

end

end A200754.P16549439679351777974

/-! ## A200754.P15664639859065626098

`A064062(n)-A010060(A059948(n+1))`
-/

namespace A200754.P15664639859065626098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n - A010060 (A059948 (n + 1)).toNat

end

end A200754.P15664639859065626098

/-!
# A200755: G.f. satisfies A(x) = 1 + x*A(x)^3 - x^2*A(x)^2.

The programs for A200755, there is no canonical definition to state claims against.
-/

/-! ## A200755.P6183233128379822077

`A092278(A150880(n)+6)`
-/

namespace A200755.P6183233128379822077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A150880 n + 6).toNat

end

end A200755.P6183233128379822077

/-! ## A200755.P14260212647697963333

`filter[A331934(n+2), A323511(#)]`
-/

namespace A200755.P14260212647697963333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A200755.P14260212647697963333

/-! ## A200755.P5205346396819462761

`A331934((2*n)^A193512(n+1))`
-/

namespace A200755.P5205346396819462761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331934 (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (A193512 (n + 1) : ℤ))).toNat

end

end A200755.P5205346396819462761

/-!
# A200756: Triangle T(n,k) = coefficient of x^n in expansion of ((1 -sqrt(1 - 4*x - 4*x^2))/2)^k.

The programs for A200756, there is no canonical definition to state claims against.
-/

/-! ## A200756.P17544424364420711086

`A378317(A380649(n+1))`
-/

namespace A200756.P17544424364420711086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378317 (A380649 (n + 1)).toNat

end

end A200756.P17544424364420711086

/-! ## A200756.P8204337970637009916

`A167489(A325220(n)+A111146(n+1))`
-/

namespace A200756.P8204337970637009916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A325220 n + A111146 (n + 1)).toNat

end

end A200756.P8204337970637009916

/-!
# A200757: Number of noncrossing forests in the regular (n+1)-polygon obtained by a grafting procedure.

The programs for A200757, there is no canonical definition to state claims against.
-/

/-! ## A200757.P13686276887442064240

`A054727(n+2)-A108447(n+1)`
-/

namespace A200757.P13686276887442064240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054727 (n + 2) - A108447 (n + 1)

end

end A200757.P13686276887442064240

/-! ## A200757.P1212255546621163430

`A108447(n)+A118341(n)-A000007(n)`
-/

namespace A200757.P1212255546621163430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108447 n + (A118341 n - A000007 n)

end

end A200757.P1212255546621163430

/-! ## A200757.P18248930576775863972

`(A118341(n)+A108447(n))/A054977(n)`
-/

namespace A200757.P18248930576775863972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118341 n + A108447 n : ℚ) / (A054977 n : ℚ)

end

end A200757.P18248930576775863972

/-! ## A200757.P3884958221658532135

`A108447(n)+A118341(n)%A118342(n)`
-/

namespace A200757.P3884958221658532135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108447 n + Int.tmod (A118341 n) (A118342 n)

end

end A200757.P3884958221658532135

/-! ## A200757.P1591678035387587234

`A118341(n)+A108447(n)%∏[A118362(n+1)]`
-/

namespace A200757.P1591678035387587234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118341 n + Int.tmod (A108447 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A200757.P1591678035387587234

/-!
# A200758: Superimperfect numbers.

The programs for A200758, there is no canonical definition to state claims against.
-/

/-! ## A200758.P3584289789550132113

`2^(2^n-floor(atan(n)))`
-/

namespace A200758.P3584289789550132113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A200758.P3584289789550132113

/-!
# A200759: Number of 0..3 arrays x(0..n-1) of n elements with nondecreasing average value.

The programs for A200759, there is no canonical definition to state claims against.
-/

/-! ## A200759.P11257720966506009722

`A200763(∑[n+3]+1)`
-/

namespace A200759.P11257720966506009722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200759.P11257720966506009722

/-! ## A200759.P7536439406211696609

`xor(3, xor(3, A200763(A052905(n)+3)))`
-/

namespace A200759.P7536439406211696609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.xor 3 (A200763 (A052905 n + 3).toNat))

end

end A200759.P7536439406211696609

/-! ## A200759.P1631787872557097662

`A200763(A052905(n)+3)%A260277(n+1)`
-/

namespace A200759.P1631787872557097662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200763 (A052905 n + 3).toNat) (A260277 (n + 1))

end

end A200759.P1631787872557097662

/-! ## A200759.P7666050956850208723

`A200763(A052905(n)+3)+n*A000038(n)`
-/

namespace A200759.P7666050956850208723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 n + 3).toNat + (n : ℤ) * A000038 n

end

end A200759.P7666050956850208723

/-! ## A200759.P2682981460460555109

`A007318(C(2, n+2))*A200763(A052905(n)+3)`
-/

namespace A200759.P2682981460460555109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A200763 (A052905 n + 3).toNat

end

end A200759.P2682981460460555109

/-! ## A200759.P10187889408490583405

`A200763(A052905(n)+3)+C(2, n+2)*A000045(n)`
-/

namespace A200759.P10187889408490583405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 n + 3).toNat + (Nat.choose 2 (n + 2) : ℤ) * A000045 n

end

end A200759.P10187889408490583405

/-! ## A200759.P17240197431666200529

`A007318(A000217(n+4))*A200763(A052905(n)+3)`
-/

namespace A200759.P17240197431666200529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 4)).toNat * A200763 (A052905 n + 3).toNat

end

end A200759.P17240197431666200529

/-!
# A200760: Number of 0..4 arrays x(0..n-1) of n elements with nondecreasing average value.

The programs for A200760, there is no canonical definition to state claims against.
-/

/-! ## A200760.P13175317553686538720

`A200763(A027379(n+2))`
-/

namespace A200760.P13175317553686538720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A027379 (n + 2)).toNat

end

end A200760.P13175317553686538720

/-! ## A200760.P4624163972174192237

`A200763(A055998(n+2))`
-/

namespace A200760.P4624163972174192237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A055998 (n + 2)).toNat

end

end A200760.P4624163972174192237

/-! ## A200760.P16088256649967017346

`A200763(A155212(n)+5)`
-/

namespace A200760.P16088256649967017346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A155212 n + 5).toNat

end

end A200760.P16088256649967017346

/-! ## A200760.P1352884664352561563

`A200763(A052905(n+1)+2)`
-/

namespace A200760.P1352884664352561563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 (n + 1) + 2).toNat

end

end A200760.P1352884664352561563

/-! ## A200760.P561095868440461111

`A200763(A000096(n+3)-2)`
-/

namespace A200760.P561095868440461111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 3) - 2).toNat

end

end A200760.P561095868440461111

/-! ## A200760.P9819383580964541344

`A200763(A000217(n+4)-3)`
-/

namespace A200760.P9819383580964541344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 4) - 3).toNat

end

end A200760.P9819383580964541344

/-! ## A200760.P16694402813377493458

`A200763(Δ[A008778(n+1)]-1)`
-/

namespace A200760.P16694402813377493458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n - 1).toNat

end

end A200760.P16694402813377493458

/-! ## A200760.P12451233347681231100

`A200763(Δ[A005286(n+1)]-2)`
-/

namespace A200760.P12451233347681231100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n - 2).toNat

end

end A200760.P12451233347681231100

/-! ## A200760.P17927417439223158140

`A200763(A027688(n+1)+∑[2-n])`
-/

namespace A200760.P17927417439223158140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A027688 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A200760.P17927417439223158140

/-! ## A200760.P11797291973784399052

`A200763(n+1+A167614(n+1)+n)`
-/

namespace A200760.P11797291973784399052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 ((n + 1 : ℤ) + (A167614 (n + 1) + (n : ℤ))).toNat

end

end A200760.P11797291973784399052

/-!
# A200761: Number of 0..5 arrays x(0..n-1) of n elements with nondecreasing average value.

The programs for A200761, there is no canonical definition to state claims against.
-/

/-! ## A200761.P12077884846184136190

`A200763(∑[n+5]+6)`
-/

namespace A200761.P12077884846184136190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200761.P12077884846184136190

/-! ## A200761.P17717141621476861840

`A200763(Δ[A264443(n)])%A200707(n+1)`
-/

namespace A200761.P17717141621476861840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200763 (f1 (n + 1) - f1 n).toNat) (A200707 (n + 1))

end

end A200761.P17717141621476861840

/-! ## A200761.P16931395949247646485

`A200763(A046691(n+3))%A200762(n+1)`
-/

namespace A200761.P16931395949247646485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200763 (A046691 (n + 3)).toNat) (A200762 (n + 1))

end

end A200761.P16931395949247646485

/-! ## A200761.P9220118383130604874

`or(A000038(n), A200763(A052905(n+2)+1))`
-/

namespace A200761.P9220118383130604874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A200763 (A052905 (n + 2) + 1).toNat)

end

end A200761.P9220118383130604874

/-! ## A200761.P895919985696966373

`2*n+A200763(Δ[A264443(n)])-A005843(n)`
-/

namespace A200761.P895919985696966373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A200763 (f1 (n + 1) - f1 n).toNat - A005843 n)

end

end A200761.P895919985696966373

/-! ## A200761.P2785075258133485178

`A200763(A052905(n+2)+1)+A000007(n+1)`
-/

namespace A200761.P2785075258133485178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A200761.P2785075258133485178

/-! ## A200761.P8363933271286480082

`A200763(A046691(n+3))+A007814(2*n+1)`
-/

namespace A200761.P8363933271286480082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A046691 (n + 3)).toNat + A007814 (2 * n + 1)

end

end A200761.P8363933271286480082

/-! ## A200761.P6289364650541000765

`A200763(A052905(n+2)+1)%A200707(n+1)`
-/

namespace A200761.P6289364650541000765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200763 (A052905 (n + 2) + 1).toNat) (A200707 (n + 1))

end

end A200761.P6289364650541000765

/-! ## A200761.P14516793875136025516

`(A060546(n)%2)!*A200763(A052905(n+2)+1)`
-/

namespace A200761.P14516793875136025516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A060546 n) 2).toNat : ℤ) * A200763 (A052905 (n + 2) + 1).toNat

end

end A200761.P14516793875136025516

/-! ## A200761.P8962510309530738373

`A007318(A000217(n))*A200763(A052905(n+2)+1)`
-/

namespace A200761.P8962510309530738373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A200763 (A052905 (n + 2) + 1).toNat

end

end A200761.P8962510309530738373

/-! ## A200761.P6041503397983682452

`A056926(A020639(n+1))*A200763(A046691(n+3))`
-/

namespace A200761.P6041503397983682452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A020639 (n + 1)).toNat * A200763 (A046691 (n + 3)).toNat

end

end A200761.P6041503397983682452

/-!
# A200762: Number of 0..6 arrays x(0..n-1) of n elements with nondecreasing average value.

The programs for A200762, there is no canonical definition to state claims against.
-/

/-! ## A200762.P10394143012051579921

`A200763(A052905(n+3))`
-/

namespace A200762.P10394143012051579921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 (n + 3)).toNat

end

end A200762.P10394143012051579921

/-! ## A200762.P8143174116818676995

`A200763(A055998(n+4)-2)`
-/

namespace A200762.P8143174116818676995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A055998 (n + 4) - 2).toNat

end

end A200762.P8143174116818676995

/-! ## A200762.P12390029556994614402

`A200763(A000096(n+5)-4)`
-/

namespace A200762.P12390029556994614402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 5) - 4).toNat

end

end A200762.P12390029556994614402

/-! ## A200762.P12564404700898628174

`A200763(A000217(n+6)-5)`
-/

namespace A200762.P12564404700898628174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 6) - 5).toNat

end

end A200762.P12564404700898628174

/-! ## A200762.P2672328808128721236

`A200763(Δ[Δ[A006504(n+1)]])`
-/

namespace A200762.P2672328808128721236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n).toNat

end

end A200762.P2672328808128721236

/-! ## A200762.P6637599493579263350

`A200763(Δ[A264443(n+1)]-1)`
-/

namespace A200762.P6637599493579263350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n - 1).toNat

end

end A200762.P6637599493579263350

/-!
# A200763: T(n,k)=Number of 0..k arrays x(0..n-1) of n elements with nondecreasing average value.

The programs for A200763, there is no canonical definition to state claims against.
-/

/-! ## A200763.P15495211168453535456

`A055570(A009999(n))+A051597(n)`
-/

namespace A200763.P15495211168453535456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A009999 n).toNat + A051597 n

end

end A200763.P15495211168453535456

/-! ## A200763.P13568920287313439244

`A090106(A051597(n)+A009999(n))`
-/

namespace A200763.P13568920287313439244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A051597 n + A009999 n).toNat

end

end A200763.P13568920287313439244

/-! ## A200763.P3702519577181406423

`A243903(A051597(n)+A009999(n))`
-/

namespace A200763.P3702519577181406423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A051597 n + A009999 n).toNat

end

end A200763.P3702519577181406423

/-! ## A200763.P17533113572478918547

`A124778(A008277(n+1))+A124727(n+1)`
-/

namespace A200763.P17533113572478918547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A008277 (n + 1)).toNat + A124727 (n + 1)

end

end A200763.P17533113572478918547

/-! ## A200763.P9210062112943758284

`A009999(n)+A014963(A158117(n))*A051597(n)`
-/

namespace A200763.P9210062112943758284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n + A014963 (A158117 n).toNat * A051597 n

end

end A200763.P9210062112943758284

/-!
# A200764: Number of 0..n arrays x(0..3) of 4 elements with nondecreasing average value.

The programs for A200764, there is no canonical definition to state claims against.
-/

/-! ## A200764.P3829340908674438485

`A200763(∑[a(n-1)+1]+3)` with `a(0)=7, a(1)=4`
-/

namespace A200764.P3829340908674438485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200764.P3829340908674438485

/-! ## A200764.P9417093027004450413

`A200763(Δ[A005286(n)]+5)`
-/

namespace A200764.P9417093027004450413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n + 5).toNat

end

end A200764.P9417093027004450413

/-! ## A200764.P8771936300983533300

`A200763(A167614(n+2)+1)`
-/

namespace A200764.P8771936300983533300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167614 (n + 2) + 1).toNat

end

end A200764.P8771936300983533300

/-! ## A200764.P6975465122524171773

`A200763(A000096(n+2)+5)`
-/

namespace A200764.P6975465122524171773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 2) + 5).toNat

end

end A200764.P6975465122524171773

/-! ## A200764.P6014361031653263965

`A200763(A000217(n+3)+4)`
-/

namespace A200764.P6014361031653263965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 3) + 4).toNat

end

end A200764.P6014361031653263965

/-! ## A200764.P15721921122913847645

`A200763(A034856(n+2)+6)`
-/

namespace A200764.P15721921122913847645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A034856 (n + 2) + 6).toNat

end

end A200764.P15721921122913847645

/-! ## A200764.P9824767655863279154

`A200763(A055998(n+1)+7)`
-/

namespace A200764.P9824767655863279154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A055998 (n + 1) + 7).toNat

end

end A200764.P9824767655863279154

/-! ## A200764.P14669815013346682490

`A200763(Δ[A264443(n)-n²])`
-/

namespace A200764.P14669815013346682490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n).toNat

end

end A200764.P14669815013346682490

/-!
# A200765: Number of 0..n arrays x(0..4) of 5 elements with nondecreasing average value.

The programs for A200765, there is no canonical definition to state claims against.
-/

/-! ## A200765.P10712987999637211271

`A200763(A167499(n+3))`
-/

namespace A200765.P10712987999637211271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167499 (n + 3)).toNat

end

end A200765.P10712987999637211271

/-! ## A200765.P2321607694455155148

`A200763(A155212(n)+13)`
-/

namespace A200765.P2321607694455155148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A155212 n + 13).toNat

end

end A200765.P2321607694455155148

/-! ## A200765.P4225365312025855556

`A200763(A000124(n+4)+4)`
-/

namespace A200765.P4225365312025855556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000124 (n + 4) + 4).toNat

end

end A200765.P4225365312025855556

/-! ## A200765.P3410818537818717059

`A200763(A000096(n+3)+6)`
-/

namespace A200765.P3410818537818717059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 3) + 6).toNat

end

end A200765.P3410818537818717059

/-! ## A200765.P18084481990120429187

`A200763(A000217(n+4)+5)`
-/

namespace A200765.P18084481990120429187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 4) + 5).toNat

end

end A200765.P18084481990120429187

/-! ## A200765.P7935931930354940296

`A200763(A027379(n+2)+8)`
-/

namespace A200765.P7935931930354940296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A027379 (n + 2) + 8).toNat

end

end A200765.P7935931930354940296

/-! ## A200765.P3513289393358413065

`A200763(A034856(n+3)+7)`
-/

namespace A200765.P3513289393358413065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A034856 (n + 3) + 7).toNat

end

end A200765.P3513289393358413065

/-! ## A200765.P3235280549812009739

`A200763(A052905(n+3)-(2*n+1))`
-/

namespace A200765.P3235280549812009739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A200765.P3235280549812009739

/-! ## A200765.P7384814261388515415

`A200763(A167614(n+2)+A020715(n))`
-/

namespace A200765.P7384814261388515415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167614 (n + 2) + A020715 n).toNat

end

end A200765.P7384814261388515415

/-! ## A200765.P16971481520053340187

`A200763(Δ[A264443(n+1)]-A005843(n+1))`
-/

namespace A200765.P16971481520053340187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (f1 (n + 1) - f1 n - A005843 (n + 1)).toNat

end

end A200765.P16971481520053340187

/-!
# A200766: Number of 0..n arrays x(0..5) of 6 elements with nondecreasing average value.

The programs for A200766, there is no canonical definition to state claims against.
-/

/-! ## A200766.P2326287137701180623

`A200763(A167499(n+4)+1)`
-/

namespace A200766.P2326287137701180623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167499 (n + 4) + 1).toNat

end

end A200766.P2326287137701180623

/-! ## A200766.P15214562971634910596

`A200763(A167614(n+4)+3)`
-/

namespace A200766.P15214562971634910596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167614 (n + 4) + 3).toNat

end

end A200766.P15214562971634910596

/-! ## A200766.P11286624397965867549

`A200763(A000124(n+5)+5)`
-/

namespace A200766.P11286624397965867549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000124 (n + 5) + 5).toNat

end

end A200766.P11286624397965867549

/-! ## A200766.P9585188452879309400

`A200763(A000096(n+4)+7)`
-/

namespace A200766.P9585188452879309400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 4) + 7).toNat

end

end A200766.P9585188452879309400

/-! ## A200766.P11831849066075798454

`A200763(A000217(n+5)+6)`
-/

namespace A200766.P11831849066075798454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 5) + 6).toNat

end

end A200766.P11831849066075798454

/-!
# A200767: Number of 0..n arrays x(0..6) of 7 elements with nondecreasing average value.

The programs for A200767, there is no canonical definition to state claims against.
-/

/-! ## A200767.P4470473559690896232

`A200763(A167499(n+5)+2)`
-/

namespace A200767.P4470473559690896232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A167499 (n + 5) + 2).toNat

end

end A200767.P4470473559690896232

/-! ## A200767.P5164336151414747148

`A200763(A000124(n+6)+6)`
-/

namespace A200767.P5164336151414747148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000124 (n + 6) + 6).toNat

end

end A200767.P5164336151414747148

/-! ## A200767.P9507862454026911439

`A200763(A000096(n+5)+8)`
-/

namespace A200767.P9507862454026911439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000096 (n + 5) + 8).toNat

end

end A200767.P9507862454026911439

/-! ## A200767.P2115585507278976240

`A200763(A000217(n+6)+7)`
-/

namespace A200767.P2115585507278976240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A000217 (n + 6) + 7).toNat

end

end A200767.P2115585507278976240

/-! ## A200767.P5697310259994388298

`A200763(A161680(n+7)+7)`
-/

namespace A200767.P5697310259994388298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200763 (A161680 (n + 7) + 7).toNat

end

end A200767.P5697310259994388298

/-!
# A200768: Sum of the n-th powers of the distinct prime divisors of n.

The programs for A200768, there is no canonical definition to state claims against.
-/

/-! ## A200768.P652362808453542885

`∑{p}[n+1, #^(n+1)]`
-/

namespace A200768.P652362808453542885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ (n + 1)

end

end A200768.P652362808453542885

/-! ## A200768.P11555170486301118081

`∑{d}[n+1, A061397((n+1)/#)^(n+1)]`
-/

namespace A200768.P11555170486301118081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ (n + 1)

end

end A200768.P11555170486301118081

/-! ## A200768.P17336160681234660142

`A322080(2*(n+1)²)`
-/

namespace A200768.P17336160681234660142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322080 (2 * (n + 1) ^ 2)

end

end A200768.P17336160681234660142

/-!
# A200769: Number of n X n 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200769, there is no canonical definition to state claims against.
-/

/-! ## A200769.P17821700128487716007

`A200777(∑[4*n]+1)`
-/

namespace A200769.P17821700128487716007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200769.P17821700128487716007

/-! ## A200769.P15796206816312159681

`and(-1, A200777(A001844(n)))`
-/

namespace A200769.P15796206816312159681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A200777 (A001844 n).toNat)

end

end A200769.P15796206816312159681

/-! ## A200769.P5342566395196849907

`record[A200777(A001844(val(n+1, 2)))]`
-/

namespace A200769.P5342566395196849907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200769.P5342566395196849907

/-! ## A200769.P13822348565380371920

`record[A003982(n)*A200777(n+1)]`
-/

namespace A200769.P13822348565380371920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A200777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200769.P13822348565380371920

/-! ## A200769.P5406594928054609407

`record[gcd(A003987(n), A200777(n+1))]`
-/

namespace A200769.P5406594928054609407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A200777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200769.P5406594928054609407

/-!
# A200770: Number of nX1 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200770, there is no canonical definition to state claims against.
-/

/-! ## A200770.P12120242079567035367

`A200942(∑[n+2])`
-/

namespace A200770.P12120242079567035367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200770.P12120242079567035367

/-! ## A200770.P16779044311792745216

`or(char[1], A200942(A000096(n+1)))`
-/

namespace A200770.P16779044311792745216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A000096 (n + 1)).toNat)

end

end A200770.P16779044311792745216

/-! ## A200770.P9427593226971704040

`A200942(A000096(n+1))+A025466(n)`
-/

namespace A200770.P9427593226971704040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000096 (n + 1)).toNat + A025466 n

end

end A200770.P9427593226971704040

/-! ## A200770.P8122297151072908131

`A200942(A000096(n+1))%A000045(n+5)`
-/

namespace A200770.P8122297151072908131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200942 (A000096 (n + 1)).toNat) (A000045 (n + 5))

end

end A200770.P8122297151072908131

/-! ## A200770.P15769350485811398640

`A007318(C(2, n))*A200942(A000096(n+1))`
-/

namespace A200770.P15769350485811398640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200942 (A000096 (n + 1)).toNat

end

end A200770.P15769350485811398640

/-!
# A200771: Number of nX2 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200771, there is no canonical definition to state claims against.
-/

/-! ## A200771.P870881333517272493

`A200777(∑[n+1]+2)`
-/

namespace A200771.P870881333517272493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200771.P870881333517272493

/-! ## A200771.P17507432104496052551

`(A200777(A000096(n)+3)^cot(atan(2)))²`
-/

namespace A200771.P17507432104496052551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A200777 (A000096 n + 3).toNat : ℝ) ^ (Real.cot (Real.arctan (2 : ℝ)))) ^ 2

end

end A200771.P17507432104496052551

/-! ## A200771.P13987393349371590405

`A200777(A000096(n)+3)+A008683(4*(n+1))`
-/

namespace A200771.P13987393349371590405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A000096 n + 3).toNat + A008683 (4 * (n + 1))

end

end A200771.P13987393349371590405

/-! ## A200771.P16953096677818060139

`A014963(6*(n+1))*A200777(A000096(n)+3)`
-/

namespace A200771.P16953096677818060139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A200777 (A000096 n + 3).toNat

end

end A200771.P16953096677818060139

/-! ## A200771.P2022552382174148150

`A200777(A000096(n)+3)+A001222(gcd(n, n+1))`
-/

namespace A200771.P2022552382174148150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A000096 n + 3).toNat + A001222 (Nat.gcd n (n + 1))

end

end A200771.P2022552382174148150

/-!
# A200772: Number of nX3 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200772, there is no canonical definition to state claims against.
-/

/-! ## A200772.P16815074560451454921

`A200777(∑[n+2]+4)`
-/

namespace A200772.P16815074560451454921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200772.P16815074560451454921

/-! ## A200772.P7172679659780337103

`A200777(A167614(n+1))+char[17]`
-/

namespace A200772.P7172679659780337103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200772.P7172679659780337103

/-! ## A200772.P10633369885020374785

`A200777(A055998(n)+6)+char[17]`
-/

namespace A200772.P10633369885020374785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200772.P10633369885020374785

/-! ## A200772.P1086920397416286475

`A200777(A167614(n+1))*A304042(n)`
-/

namespace A200772.P1086920397416286475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167614 (n + 1)).toNat * A304042 n

end

end A200772.P1086920397416286475

/-! ## A200772.P2220004417169564571

`A200777(A167614(n+1))%A094795(n)`
-/

namespace A200772.P2220004417169564571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200777 (A167614 (n + 1)).toNat) (A094795 n)

end

end A200772.P2220004417169564571

/-!
# A200773: Number of nX4 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200773, there is no canonical definition to state claims against.
-/

/-! ## A200773.P12425914910300135167

`A200777(∑[n+3]+7)`
-/

namespace A200773.P12425914910300135167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200773.P12425914910300135167

/-! ## A200773.P18257149292045680953

`A200777(A055999(n)+10)%A254810(n+1)`
-/

namespace A200773.P18257149292045680953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200777 (A055999 n + 10).toNat) (A254810 (n + 1))

end

end A200773.P18257149292045680953

/-! ## A200773.P2253092204313056758

`A200777(A034856(n+2)+6)%A254810(n+1)`
-/

namespace A200773.P2253092204313056758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200777 (A034856 (n + 2) + 6).toNat) (A254810 (n + 1))

end

end A200773.P2253092204313056758

/-! ## A200773.P2938758502988510829

`A200777(A055999(n)+10)+A008683(A189990(n+1))`
-/

namespace A200773.P2938758502988510829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A055999 n + 10).toNat + A008683 (A189990 (n + 1)).toNat

end

end A200773.P2938758502988510829

/-! ## A200773.P2445839538778389070

`A200777(A055998(n+2))*A304779(2*n+3)`
-/

namespace A200773.P2445839538778389070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A055998 (n + 2)).toNat * A304779 (2 * n + 3)

end

end A200773.P2445839538778389070

/-!
# A200774: Number of nX5 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200774, there is no canonical definition to state claims against.
-/

/-! ## A200774.P6279625990756052564

`A200777(A374005(n+1))`
-/

namespace A200774.P6279625990756052564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A374005 (n + 1)).toNat

end

end A200774.P6279625990756052564

/-! ## A200774.P337087900546032559

`A200777(A155212(n)+13)`
-/

namespace A200774.P337087900546032559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A155212 n + 13).toNat

end

end A200774.P337087900546032559

/-! ## A200774.P17641348257442780003

`A200777(A056000(n)+15)`
-/

namespace A200774.P17641348257442780003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A056000 n + 15).toNat

end

end A200774.P17641348257442780003

/-! ## A200774.P6334688523287939757

`A200777(eq[7, A066657(n)])`
-/

namespace A200774.P6334688523287939757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200774.P6334688523287939757

/-! ## A200774.P10144484103551257848

`A200777(A167614(n+3)+2)`
-/

namespace A200774.P10144484103551257848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167614 (n + 3) + 2).toNat

end

end A200774.P10144484103551257848

/-!
# A200775: Number of nX6 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200775, there is no canonical definition to state claims against.
-/

/-! ## A200775.P6809430633712639766

`A200777(A374007(n+1))`
-/

namespace A200775.P6809430633712639766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A374007 (n + 1)).toNat

end

end A200775.P6809430633712639766

/-! ## A200775.P6994658016876982182

`A200777(A166136(n+4))`
-/

namespace A200775.P6994658016876982182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A166136 (n + 4)).toNat

end

end A200775.P6994658016876982182

/-! ## A200775.P11378145446360546653

`A200777(A056115(n)+21)`
-/

namespace A200775.P11378145446360546653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A056115 n + 21).toNat

end

end A200775.P11378145446360546653

/-! ## A200775.P15103691198871291

`A200777(A167499(n+4)+1)`
-/

namespace A200775.P15103691198871291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167499 (n + 4) + 1).toNat

end

end A200775.P15103691198871291

/-! ## A200775.P5427547484528824457

`A200777(A167614(n+4)+3)`
-/

namespace A200775.P5427547484528824457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167614 (n + 4) + 3).toNat

end

end A200775.P5427547484528824457

/-!
# A200776: Number of nX7 0..2 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200776, there is no canonical definition to state claims against.
-/

/-! ## A200776.P1274650097991829764

`A200777(A374008(n+1))`
-/

namespace A200776.P1274650097991829764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A374008 (n + 1)).toNat

end

end A200776.P1274650097991829764

/-! ## A200776.P12664430730184552758

`A200777(A056119(n)+28)`
-/

namespace A200776.P12664430730184552758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A056119 n + 28).toNat

end

end A200776.P12664430730184552758

/-! ## A200776.P11904755909929304052

`A200777(eq[11, A066657(n)])`
-/

namespace A200776.P11904755909929304052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200776.P11904755909929304052

/-! ## A200776.P9362111510499838547

`A200777(A166136(n+5)+1)`
-/

namespace A200776.P9362111510499838547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A166136 (n + 5) + 1).toNat

end

end A200776.P9362111510499838547

/-! ## A200776.P6219508057967066049

`A200777(A167614(n+5)+4)`
-/

namespace A200776.P6219508057967066049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (A167614 (n + 5) + 4).toNat

end

end A200776.P6219508057967066049

/-!
# A200779: a(n) = number of i in the range 1 <= i <= n such that b(i)=b(n), where b is the sequence A053615 taken with offset 1.

The programs for A200779, the canonical program `A200779.P665373488790890752` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200779 has offset 1).

The definition of A200779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200779.P665373488790890752

`A004741(A000037(n+1))/Δ[A164386(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200779

/-- `A004741(A000037(n+1))/Δ[A164386(n+1)]` -/
def P665373488790890752.Spec : Prop :=
  ∀ n, P665373488790890752.a n = (A200779 (n + 1) : ℚ)

end A200779

/-! ## A200779.P17941451467667314813

`A004737(n+1)+A053188(n)%A008299(n+2)`
-/

namespace A200779.P17941451467667314813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + Int.tmod (A053188 n) (A008299 (n + 2))

end

end A200779.P17941451467667314813

namespace A200779

/-- `A004737(n+1)+A053188(n)%A008299(n+2)` -/
def P17941451467667314813.Spec : Prop :=
  ∀ n, P17941451467667314813.a n = A200779 (n + 1)

end A200779

/-! ## A200779.P9153252826968576119

`A286558(n+1)%A286597(A286612(n+2))`
-/

namespace A200779.P9153252826968576119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286558 (n + 1)) (A286597 (A286612 (n + 2)).toNat)

end

end A200779.P9153252826968576119

namespace A200779

/-- `A286558(n+1)%A286597(A286612(n+2))` -/
def P9153252826968576119.Spec : Prop :=
  ∀ n, P9153252826968576119.a n = A200779 (n + 1)

end A200779

/-! ## A200779.P14591323075071792524

`A286558(A187829(n+1))`
-/

namespace A200779.P14591323075071792524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (A187829 (n + 1)).toNat

end

end A200779.P14591323075071792524

namespace A200779

/-- `A286558(A187829(n+1))` -/
def P14591323075071792524.Spec : Prop :=
  ∀ n, P14591323075071792524.a n = A200779 (n + 1)

end A200779

/-! ## A200779.P10148169907152579486

`A286558(n+1)%A094447(A130329(n))`
-/

namespace A200779.P10148169907152579486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286558 (n + 1)) (A094447 (A130329 n).toNat)

end

end A200779.P10148169907152579486

namespace A200779

/-- `A286558(n+1)%A094447(A130329(n))` -/
def P10148169907152579486.Spec : Prop :=
  ∀ n, P10148169907152579486.a n = A200779 (n + 1)

end A200779

/-!
# A200780: a(n) = number of i in the range 1 <= i <= n such that b(i)=b(n), where b is the sequence A181391 taken with offset 1.

The programs for A200780, there is no canonical definition to state claims against.
-/

/-! ## A200780.P13597298559815320131

`A338899(lt[A122662(n), A043075(n+1)])`
-/

namespace A200780.P13597298559815320131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122662 (n + 17)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A200780.P13597298559815320131

/-! ## A200780.P14960981901336712570

`A338899(lt[A327351(n), A005520(n+1)])`
-/

namespace A200780.P14960981901336712570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A200780.P14960981901336712570

/-! ## A200780.P15716423597652557668

`A338899(lt[A327351(n), A305769(n+1)])`
-/

namespace A200780.P15716423597652557668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A200780.P15716423597652557668

/-! ## A200780.P1682562859418912887

`A338899(∑[∏{e}[A338930(3*(n+1))+1, #!]])`
-/

namespace A200780.P1682562859418912887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338930 (3 * (n + 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200780.P1682562859418912887

/-!
# A200781: G.f.: 1/(1-5*x+10*x^3-5*x^4).

The programs for A200781, the canonical program `A200781.P15183415105326495596` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200781 has offset 0).

The definition of A200781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200781.P15183415105326495596

`5*a(n-1)-10*a(n-3)+5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=115`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200781

/-- `5*a(n-1)-10*a(n-3)+5*a(n-4)` -/
def P15183415105326495596.Spec : Prop :=
  ∀ n, P15183415105326495596.a n = A200781 n

theorem P15183415105326495596.correct : P15183415105326495596.Spec := by
  intro n
  simp only [A200781]

end A200781

/-! ## A200781.P16886134431685805529

`ogf(1/(1-5x+10x^3-5x^4))`
-/

namespace A200781.P16886134431685805529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 0, 10, -5] n

end

end A200781.P16886134431685805529

namespace A200781

/-- `ogf(1/(1-5x+10x^3-5x^4))` -/
def P16886134431685805529.Spec : Prop :=
  ∀ n, P16886134431685805529.a n = A200781 n

end A200781

/-!
# A200782: Expansion of 1 / (1 - 6*x + 20*x^3 - 15*x^4 + x^6).

The programs for A200782, the canonical program `A200782.P14379696556929520426` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200782 has offset 0).

The definition of A200782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+20x^3-15x^4+x^6))` (program `A200782.P14379696556929520426`, by `A200782.P14379696556929520426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200782.P14379696556929520426

`ogf(1/(1-6x+20x^3-15x^4+x^6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200782

/-- `ogf(1/(1-6x+20x^3-15x^4+x^6))` -/
def P14379696556929520426.Spec : Prop :=
  ∀ n, P14379696556929520426.a n = A200782 n

theorem P14379696556929520426.correct : P14379696556929520426.Spec := by
  intro n
  simp only [A200782]

end A200782

/-!
# A200783: G.f.: 1/(1-7*x+35*x^3-35*x^4+7*x^6-x^7).

The programs for A200783, there is no canonical definition to state claims against.
-/

/-! ## A200783.P8446703427643199970

`A189688(A278392(n+1)-A175413(n+1))`
-/

namespace A200783.P8446703427643199970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189688 (A278392 (n + 1) - A175413 (n + 1)).toNat

end

end A200783.P8446703427643199970

/-!
# A200784: Number of 0..7 arrays x(0..n+1) of n+2 elements without any two consecutive increases.

The programs for A200784, there is no canonical definition to state claims against.
-/

/-! ## A200784.P11608345665295610651

`A200785(A055999(n+4))`
-/

namespace A200784.P11608345665295610651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A055999 (n + 4)).toNat

end

end A200784.P11608345665295610651

/-! ## A200784.P758948742210732461

`A200785(A046691(n+5)-2)`
-/

namespace A200784.P758948742210732461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A046691 (n + 5) - 2).toNat

end

end A200784.P758948742210732461

/-! ## A200784.P10009989224712933357

`A200785(A055998(n+5)-3)`
-/

namespace A200784.P10009989224712933357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A055998 (n + 5) - 3).toNat

end

end A200784.P10009989224712933357

/-! ## A200784.P10968689158642470427

`A200785(A000217(n+7)-6)`
-/

namespace A200784.P10968689158642470427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000217 (n + 7) - 6).toNat

end

end A200784.P10968689158642470427

/-! ## A200784.P4761689980330288779

`A200785(A000124(n+7)-7)`
-/

namespace A200784.P4761689980330288779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000124 (n + 7) - 7).toNat

end

end A200784.P4761689980330288779

/-! ## A200784.P9863507867144839409

`A200785(eq[7, A004736(n+1)]+1)`
-/

namespace A200784.P9863507867144839409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A200784.P9863507867144839409

/-! ## A200784.P6317959253391091289

`A200785(A000096(n+5)+n+2)`
-/

namespace A200784.P6317959253391091289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A200784.P6317959253391091289

/-!
# A200786: Number of 0..n arrays x(0..3) of 4 elements without any two consecutive increases.

The programs for A200786, the canonical program `A200786.P5964160846350272105` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200786 has offset 1).

The definition of A200786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200786.P5964160846350272105

`(24+106*(n+1)+151*(n+1)²+86*(n+1)^3+17*(n+1)^4)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200786

/-- `(24+106*(n+1)+151*(n+1)²+86*(n+1)^3+17*(n+1)^4)/24` -/
def P5964160846350272105.Spec : Prop :=
  ∀ n, P5964160846350272105.a n = (A200786 (n + 1) : ℚ)

end A200786

/-! ## A200786.P7101918056082239765

`A250141(n+1)+A051744(n+1)`
-/

namespace A200786.P7101918056082239765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250141 (n + 1) + A051744 (n + 1)

end

end A200786.P7101918056082239765

namespace A200786

/-- `A250141(n+1)+A051744(n+1)` -/
def P7101918056082239765.Spec : Prop :=
  ∀ n, P7101918056082239765.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P12139172101378293365

`A271567(n+1)-(A051843(n+1)+A051843(n))`
-/

namespace A200786.P12139172101378293365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 (n + 1) - (A051843 (n + 1) + A051843 n)

end

end A200786.P12139172101378293365

namespace A200786

/-- `A271567(n+1)-(A051843(n+1)+A051843(n))` -/
def P12139172101378293365.Spec : Prop :=
  ∀ n, P12139172101378293365.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P14291316092657687422

`A053134(n+1)+∑[∑[∑[n+1]]]`
-/

namespace A200786.P14291316092657687422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A200786.P14291316092657687422

namespace A200786

/-- `A053134(n+1)+∑[∑[∑[n+1]]]` -/
def P14291316092657687422.Spec : Prop :=
  ∀ n, P14291316092657687422.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P8851756252861491272

`Δ[A056118(n)+A051843(n)]`
-/

namespace A200786.P8851756252861491272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n + A051843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200786.P8851756252861491272

namespace A200786

/-- `Δ[A056118(n)+A051843(n)]` -/
def P8851756252861491272.Spec : Prop :=
  ∀ n, P8851756252861491272.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P5518858822180467029

`A005701(n)+Δ[A108650(n)]`
-/

namespace A200786.P5518858822180467029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n + (f1 (n + 1) - f1 n)

end

end A200786.P5518858822180467029

namespace A200786

/-- `A005701(n)+Δ[A108650(n)]` -/
def P5518858822180467029.Spec : Prop :=
  ∀ n, P5518858822180467029.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P3257476114035652758

`A290312(n+1)+A190048(n)`
-/

namespace A200786.P3257476114035652758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 (n + 1) + A190048 n

end

end A200786.P3257476114035652758

namespace A200786

/-- `A290312(n+1)+A190048(n)` -/
def P3257476114035652758.Spec : Prop :=
  ∀ n, P3257476114035652758.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P13412364952382618480

`A302560(n+2)+A005701(n)`
-/

namespace A200786.P13412364952382618480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 2) + A005701 n

end

end A200786.P13412364952382618480

namespace A200786

/-- `A302560(n+2)+A005701(n)` -/
def P13412364952382618480.Spec : Prop :=
  ∀ n, P13412364952382618480.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P5914545326114470791

`A002419(n+1)+Δ[A056118(n)]`
-/

namespace A200786.P5914545326114470791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (f1 (n + 1) - f1 n)

end

end A200786.P5914545326114470791

namespace A200786

/-- `A002419(n+1)+Δ[A056118(n)]` -/
def P5914545326114470791.Spec : Prop :=
  ∀ n, P5914545326114470791.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P4244434183555800638

`A055268(n+1)+A002419(n+1)`
-/

namespace A200786.P4244434183555800638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 (n + 1) + A002419 (n + 1)

end

end A200786.P4244434183555800638

namespace A200786

/-- `A055268(n+1)+A002419(n+1)` -/
def P4244434183555800638.Spec : Prop :=
  ∀ n, P4244434183555800638.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P15684900099635698309

`A213549(n+2)+A052149(n+2)`
-/

namespace A200786.P15684900099635698309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 2) + A052149 (n + 2)

end

end A200786.P15684900099635698309

namespace A200786

/-- `A213549(n+2)+A052149(n+2)` -/
def P15684900099635698309.Spec : Prop :=
  ∀ n, P15684900099635698309.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P2453673730162531148

`A076454(n+2)-A338996(n+1)`
-/

namespace A200786.P2453673730162531148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 2) - A338996 (n + 1)

end

end A200786.P2453673730162531148

namespace A200786

/-- `A076454(n+2)-A338996(n+1)` -/
def P2453673730162531148.Spec : Prop :=
  ∀ n, P2453673730162531148.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P1726253074176876103

`A187673(n+1)+2*A004320(n+1)`
-/

namespace A200786.P1726253074176876103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 (n + 1) + 2 * A004320 (n + 1)

end

end A200786.P1726253074176876103

namespace A200786

/-- `A187673(n+1)+2*A004320(n+1)` -/
def P1726253074176876103.Spec : Prop :=
  ∀ n, P1726253074176876103.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P15019913760353602501

`A006322(n+2)+2*A052149(n+2)`
-/

namespace A200786.P15019913760353602501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 2) + 2 * A052149 (n + 2)

end

end A200786.P15019913760353602501

namespace A200786

/-- `A006322(n+2)+2*A052149(n+2)` -/
def P15019913760353602501.Spec : Prop :=
  ∀ n, P15019913760353602501.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P11416808269473353412

`2*A213549(n+2)-A006322(n+2)`
-/

namespace A200786.P11416808269473353412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213549 (n + 2) - A006322 (n + 2)

end

end A200786.P11416808269473353412

namespace A200786

/-- `2*A213549(n+2)-A006322(n+2)` -/
def P11416808269473353412.Spec : Prop :=
  ∀ n, P11416808269473353412.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P2900127849565066915

`A002419(n+1)+A056118(n+1)-A056118(n)`
-/

namespace A200786.P2900127849565066915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (A056118 (n + 1) - A056118 n)

end

end A200786.P2900127849565066915

namespace A200786

/-- `A002419(n+1)+A056118(n+1)-A056118(n)` -/
def P2900127849565066915.Spec : Prop :=
  ∀ n, P2900127849565066915.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P10284194647180367110

`A062392(n+2)+A002418(n+1)`
-/

namespace A200786.P10284194647180367110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (n + 2) + A002418 (n + 1)

end

end A200786.P10284194647180367110

namespace A200786

/-- `A062392(n+2)+A002418(n+1)` -/
def P10284194647180367110.Spec : Prop :=
  ∀ n, P10284194647180367110.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P8925916638519860035

`A212415(n+2)+A103220(n+2)`
-/

namespace A200786.P8925916638519860035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 (n + 2) + A103220 (n + 2)

end

end A200786.P8925916638519860035

namespace A200786

/-- `A212415(n+2)+A103220(n+2)` -/
def P8925916638519860035.Spec : Prop :=
  ∀ n, P8925916638519860035.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P6827947789261602764

`A236770(n+2)+A112742(n+2)`
-/

namespace A200786.P6827947789261602764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 (n + 2) + A112742 (n + 2)

end

end A200786.P6827947789261602764

namespace A200786

/-- `A236770(n+2)+A112742(n+2)` -/
def P6827947789261602764.Spec : Prop :=
  ∀ n, P6827947789261602764.a n = A200786 (n + 1)

end A200786

/-! ## A200786.P2843421390837999376

`A264854(n+2)+A153978(n+2)`
-/

namespace A200786.P2843421390837999376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264854 (n + 2) + A153978 (n + 2)

end

end A200786.P2843421390837999376

namespace A200786

/-- `A264854(n+2)+A153978(n+2)` -/
def P2843421390837999376.Spec : Prop :=
  ∀ n, P2843421390837999376.a n = A200786 (n + 1)

end A200786

/-!
# A200787: Number of 0..n arrays x(0..4) of 5 elements without any two consecutive increases.

The programs for A200787, there is no canonical definition to state claims against.
-/

/-! ## A200787.P7930513518128176873

`A200785(∑[n+2]+4)`
-/

namespace A200787.P7930513518128176873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200787.P7930513518128176873

/-! ## A200787.P17210733947943827008

`(1-4/2)²*A200785(A167614(n+1))`
-/

namespace A200787.P17210733947943827008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A200785 (A167614 (n + 1)).toNat : ℚ)

end

end A200787.P17210733947943827008

/-! ## A200787.P11746105841309631221

`A200785(A167614(n+1))%A016950(n)`
-/

namespace A200787.P11746105841309631221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200785 (A167614 (n + 1)).toNat) (A016950 n)

end

end A200787.P11746105841309631221

/-! ## A200787.P1059524107641397215

`lcm(A040001(n), A200785(A167614(n+1)))`
-/

namespace A200787.P1059524107641397215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A200785 (A167614 (n + 1)).toNat)

end

end A200787.P1059524107641397215

/-! ## A200787.P885573890978411402

`A200785(A167614(n+1))+A000007(2*n+3)`
-/

namespace A200787.P885573890978411402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167614 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A200787.P885573890978411402

/-!
# A200788: Number of 0..n arrays x(0..5) of 6 elements without any two consecutive increases.

The programs for A200788, there is no canonical definition to state claims against.
-/

/-! ## A200788.P10638891647987637934

`A200785(A052905(n)+9)`
-/

namespace A200788.P10638891647987637934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A052905 n + 9).toNat

end

end A200788.P10638891647987637934

/-! ## A200788.P7878181806394966716

`A200785(A055999(n)+10)`
-/

namespace A200788.P7878181806394966716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A055999 n + 10).toNat

end

end A200788.P7878181806394966716

/-! ## A200788.P7413575342001080031

`A200785(A167614(n+2)+1)`
-/

namespace A200788.P7413575342001080031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167614 (n + 2) + 1).toNat

end

end A200788.P7413575342001080031

/-! ## A200788.P2936800727202202270

`A200785(Δ[A023545(n+1)-n²])`
-/

namespace A200788.P2936800727202202270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (f1 (n + 1) - f1 n).toNat

end

end A200788.P2936800727202202270

/-! ## A200788.P1297314971829353890

`A200785(A080036(A167614(n+1)))`
-/

namespace A200788.P1297314971829353890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A200788.P1297314971829353890

/-! ## A200788.P2213190054984195296

`A200785(A046691(n+5)-A016825(n+3))`
-/

namespace A200788.P2213190054984195296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A046691 (n + 5) - A016825 (n + 3)).toNat

end

end A200788.P2213190054984195296

/-!
# A200789: Number of 0..n arrays x(0..6) of 7 elements without any two consecutive increases.

The programs for A200789, there is no canonical definition to state claims against.
-/

/-! ## A200789.P2886287528385252799

`A200785(A167499(n+3))`
-/

namespace A200789.P2886287528385252799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167499 (n + 3)).toNat

end

end A200789.P2886287528385252799

/-! ## A200789.P10506010905058071736

`A200785(A000217(n+4)+5)`
-/

namespace A200789.P10506010905058071736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000217 (n + 4) + 5).toNat

end

end A200789.P10506010905058071736

/-! ## A200789.P12845737213396634011

`A200785(A052905(n+1)+10)`
-/

namespace A200789.P12845737213396634011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A052905 (n + 1) + 10).toNat

end

end A200789.P12845737213396634011

/-! ## A200789.P3367678646949132464

`A200785(A000124(n+5)-(n+1))`
-/

namespace A200789.P3367678646949132464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A200789.P3367678646949132464

/-! ## A200789.P12897165627708310583

`A200785(eq[5, A025581(n)]-2*n)`
-/

namespace A200789.P12897165627708310583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A200789.P12897165627708310583

/-! ## A200789.P6830167718606909919

`A200785(A038722(Δ[A023545(n+1)]))`
-/

namespace A200789.P6830167718606909919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A200789.P6830167718606909919

/-! ## A200789.P3885005003846935646

`A200785(A000096(n+7)-A008574(n+5))`
-/

namespace A200789.P3885005003846935646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000096 (n + 7) - A008574 (n + 5)).toNat

end

end A200789.P3885005003846935646

/-!
# A200790: Number of 0..n arrays x(0..7) of 8 elements without any two consecutive increases.

The programs for A200790, there is no canonical definition to state claims against.
-/

/-! ## A200790.P4836094146836349048

`A200785(A167499(n+4)+1)`
-/

namespace A200790.P4836094146836349048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167499 (n + 4) + 1).toNat

end

end A200790.P4836094146836349048

/-! ## A200790.P13170888035411740529

`A200785(A167614(n+4)+3)`
-/

namespace A200790.P13170888035411740529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167614 (n + 4) + 3).toNat

end

end A200790.P13170888035411740529

/-! ## A200790.P17074617339046137765

`A200785(A000096(n+4)+7)`
-/

namespace A200790.P17074617339046137765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000096 (n + 4) + 7).toNat

end

end A200790.P17074617339046137765

/-! ## A200790.P11880156110913948253

`A200785(A000217(n+5)+6)`
-/

namespace A200790.P11880156110913948253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000217 (n + 5) + 6).toNat

end

end A200790.P11880156110913948253

/-! ## A200790.P3114998934173987779

`A200785(A046691(n+3)+10)`
-/

namespace A200790.P3114998934173987779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A046691 (n + 3) + 10).toNat

end

end A200790.P3114998934173987779

/-! ## A200790.P1860738619968284888

`A200785(Δ[A000292(n+5)]-n)`
-/

namespace A200790.P1860738619968284888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A200790.P1860738619968284888

/-!
# A200791: Number of 0..n arrays x(0..8) of 9 elements without any two consecutive increases.

The programs for A200791, there is no canonical definition to state claims against.
-/

/-! ## A200791.P14858248094536058206

`A200785(A167499(n+5)+2)`
-/

namespace A200791.P14858248094536058206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A167499 (n + 5) + 2).toNat

end

end A200791.P14858248094536058206

/-! ## A200791.P17827192751531638443

`A200785(A000217(n+6)+7)`
-/

namespace A200791.P17827192751531638443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A000217 (n + 6) + 7).toNat

end

end A200791.P17827192751531638443

/-! ## A200791.P1105422872821865837

`A200785(Δ[A000292(n+5)]+7)`
-/

namespace A200791.P1105422872821865837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (f1 (n + 1) - f1 n + 7).toNat

end

end A200791.P1105422872821865837

/-! ## A200791.P13463750397373839240

`A200785(A161680(n+9)-8-2*n)`
-/

namespace A200791.P13463750397373839240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A161680 (n + 9) - 8 - (2 * n : ℤ)).toNat

end

end A200791.P13463750397373839240

/-! ## A200791.P10399407476804928278

`A200785(A055998(n)+A008574(n+7))`
-/

namespace A200791.P10399407476804928278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A055998 n + A008574 (n + 7)).toNat

end

end A200791.P10399407476804928278

/-! ## A200791.P11958313637648481794

`A200785(A016825(n+6)+A000096(n+1))`
-/

namespace A200791.P11958313637648481794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200785 (A016825 (n + 6) + A000096 (n + 1)).toNat

end

end A200791.P11958313637648481794

/-!
# A200792: Number of partitions of n such that the number of parts and the greatest part are not coprime.

The programs for A200792, there is no canonical definition to state claims against.
-/

/-! ## A200792.P1287695134615294352

`Δ[A000070(n)]-A200750(n+1)`
-/

namespace A200792.P1287695134615294352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A200750 (n + 1)

end

end A200792.P1287695134615294352

/-! ## A200792.P17756129509754254815

`record[A035363(n)]-A200750(n+1)`
-/

namespace A200792.P17756129509754254815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200750 (n + 1)

end

end A200792.P17756129509754254815

/-! ## A200792.P16832439667794770056

`record[A035444(n)]-A200750(n+1)`
-/

namespace A200792.P16832439667794770056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200750 (n + 1)

end

end A200792.P16832439667794770056

/-! ## A200792.P16093057444703068891

`A000041(n+1)-A200750(n+1)`
-/

namespace A200792.P16093057444703068891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A200750 (n + 1)

end

end A200792.P16093057444703068891

/-! ## A200792.P12925668913468292796

`A000041(A000027(n+1))%A200750(n+1)`
-/

namespace A200792.P12925668913468292796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000027 (n + 1)).toNat) (A200750 (n + 1))

end

end A200792.P12925668913468292796

/-! ## A200792.P15873119121426939460

`(A000041(n+1)%A200750(n+1))%A000041(n)`
-/

namespace A200792.P15873119121426939460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000041 (n + 1)) (A200750 (n + 1))) (A000041 n)

end

end A200792.P15873119121426939460

/-! ## A200792.P3570553571809296412

`A000041(A007318(A034856(n+1)))%A200750(n+1)`
-/

namespace A200792.P3570553571809296412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A007318 (A034856 (n + 1)).toNat).toNat) (A200750 (n + 1))

end

end A200792.P3570553571809296412

/-!
# A200793: The number of forests on n nodes of rooted labeled binary trees (each node has degree <=2).

The programs for A200793, there is no canonical definition to state claims against.
-/

/-! ## A200793.P12794270872113674152

`∑{d}[∏[1-2*n], A123070(#)]`
-/

namespace A200793.P12794270872113674152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A123070 d

end

end A200793.P12794270872113674152

/-! ## A200793.P4681300651318488608

`A266190(A145158(n))`
-/

namespace A200793.P4681300651318488608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A145158 n).toNat

end

end A200793.P4681300651318488608

/-!
# A200794: Number of n X n 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200794, there is no canonical definition to state claims against.
-/

/-! ## A200794.P844403181288515445

`A200801((n+1)²+n²)`
-/

namespace A200794.P844403181288515445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 ((n + 1) ^ 2 + n ^ 2)

end

end A200794.P844403181288515445

/-!
# A200795: Number of n X 2 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200795, there is no canonical definition to state claims against.
-/

/-! ## A200795.P9421295980469590607

`A200801(∑[n+1]+2)`
-/

namespace A200795.P9421295980469590607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200795.P9421295980469590607

/-! ## A200795.P15135921729458116773

`A241119(∑[n+1]+2)`
-/

namespace A200795.P15135921729458116773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200795.P15135921729458116773

/-! ## A200795.P15986954760244337973

`record[A200801(Δ[A003453(n+5)])]`
-/

namespace A200795.P15986954760244337973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200795.P15986954760244337973

/-! ## A200795.P180289059846218021

`record[gcd(A200801(n+2), A318557(n+2))]`
-/

namespace A200795.P180289059846218021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A200801 (n + 2)) (A318557 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200795.P180289059846218021

/-! ## A200795.P12499033875037929964

`record[A241119(A101881(n)+1)]`
-/

namespace A200795.P12499033875037929964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200795.P12499033875037929964

/-!
# A200796: Number of nX3 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200796, there is no canonical definition to state claims against.
-/

/-! ## A200796.P17778230201199779256

`A200801(∑[n+2]+4)`
-/

namespace A200796.P17778230201199779256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200796.P17778230201199779256

/-! ## A200796.P12696590592519452999

`lcm((-1)^val(n+1, 2), A200801(A167499(n)+n))`
-/

namespace A200796.P12696590592519452999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A200801 (A167499 n + (n : ℤ)).toNat)

end

end A200796.P12696590592519452999

/-! ## A200796.P13113892328138807616

`A200801(A167614(n+1))+A011741(n)`
-/

namespace A200796.P13113892328138807616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A167614 (n + 1)).toNat + A011741 n

end

end A200796.P13113892328138807616

/-! ## A200796.P5983501472559990123

`A152848(n)*A200801(A167614(n+1))`
-/

namespace A200796.P5983501472559990123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A200801 (A167614 (n + 1)).toNat

end

end A200796.P5983501472559990123

/-! ## A200796.P13622250237138614298

`lcm(A020985(n), A200801(A167614(n+1)))`
-/

namespace A200796.P13622250237138614298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A200801 (A167614 (n + 1)).toNat)

end

end A200796.P13622250237138614298

/-!
# A200797: Number of nX4 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200797, there is no canonical definition to state claims against.
-/

/-! ## A200797.P4949986856917440192

`A200801(A141214(n)+7)`
-/

namespace A200797.P4949986856917440192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A141214 n + 7).toNat

end

end A200797.P4949986856917440192

/-! ## A200797.P8360394885902179396

`A200801(A052905(n)+9)`
-/

namespace A200797.P8360394885902179396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A052905 n + 9).toNat

end

end A200797.P8360394885902179396

/-! ## A200797.P12064101576228886180

`A200801(A055999(n)+10)`
-/

namespace A200797.P12064101576228886180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A055999 n + 10).toNat

end

end A200797.P12064101576228886180

/-! ## A200797.P4893296310957505720

`A200801(A167614(n+2)+1)`
-/

namespace A200797.P4893296310957505720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A167614 (n + 2) + 1).toNat

end

end A200797.P4893296310957505720

/-! ## A200797.P9266167783298760268

`A200801(Δ[A264443(n)-n²])`
-/

namespace A200797.P9266167783298760268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (f1 (n + 1) - f1 n).toNat

end

end A200797.P9266167783298760268

/-!
# A200798: Number of nX5 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200798, there is no canonical definition to state claims against.
-/

/-! ## A200798.P8957394047302310984

`A200801(Δ[A264443(n)])`
-/

namespace A200798.P8957394047302310984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (f1 (n + 1) - f1 n).toNat

end

end A200798.P8957394047302310984

/-! ## A200798.P1497400905429180857

`A200801(A374005(n+1))`
-/

namespace A200798.P1497400905429180857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A374005 (n + 1)).toNat

end

end A200798.P1497400905429180857

/-! ## A200798.P5363130625919134265

`A200801(Δ[A023545(n+1)])`
-/

namespace A200798.P5363130625919134265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (f1 (n + 1) - f1 n).toNat

end

end A200798.P5363130625919134265

/-! ## A200798.P4942193386340893818

`A200801(A000124(n+5)-5)`
-/

namespace A200798.P4942193386340893818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A000124 (n + 5) - 5).toNat

end

end A200798.P4942193386340893818

/-! ## A200798.P9800843286336207216

`A200801(A264443(n+1)-A264443(n))`
-/

namespace A200798.P9800843286336207216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (A264443 (n + 1) - A264443 n).toNat

end

end A200798.P9800843286336207216

