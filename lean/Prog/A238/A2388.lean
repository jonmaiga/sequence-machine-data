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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

/-!
# A238800: Unreduced numerators in triangle that leads to the Euler numbers A198631(n)/A006519(n+1).

The programs for A238800, there is no canonical definition to state claims against.
-/

/-! ## A238800.P2251770713516800948

`A113381(A184955(n))*A132460(n)`
-/

namespace A238800.P2251770713516800948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (A184955 n).toNat * A132460 n

end

end A238800.P2251770713516800948

/-!
# A238801: Triangle T(n,k), read by rows, given by T(n,k) = C(n+1, k+1)*(1-(k mod 2)).

The programs for A238801, the canonical program `A238801.P1344822745636537481` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238801 has offset 0).

The definition of A238801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, col(n)+1)*(1-col(n)%2)` (program `A238801.P1344822745636537481`, by `A238801.P1344822745636537481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238801.P1344822745636537481

`C(row(n)+1, col(n)+1)*(1-col(n)%2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238801

/-- `C(row(n)+1, col(n)+1)*(1-col(n)%2)` -/
def P1344822745636537481.Spec : Prop :=
  ∀ n, P1344822745636537481.a n = A238801 n

theorem P1344822745636537481.correct : P1344822745636537481.Spec := by
  intro n
  simp only [A238801]

end A238801

/-! ## A238801.P18116440014040195897

`C(row(n)+1, col(n)+1)*(1-(-1)^(col(n)+1))/2`
-/

namespace A238801.P18116440014040195897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℤ) * (1 - (-1) ^ (SequenceMachineLib.triCol n + 1)) : ℚ) / 2

end

end A238801.P18116440014040195897

namespace A238801

/-- `C(row(n)+1, col(n)+1)*(1-(-1)^(col(n)+1))/2` -/
def P18116440014040195897.Spec : Prop :=
  ∀ n, P18116440014040195897.a n = (A238801 n : ℚ)

end A238801

/-! ## A238801.P9168742769461867770

`abs(A095704(n+1))`
-/

namespace A238801.P9168742769461867770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095704 (n + 1)|

end

end A238801.P9168742769461867770

namespace A238801

/-- `abs(A095704(n+1))` -/
def P9168742769461867770.Spec : Prop :=
  ∀ n, P9168742769461867770.a n = A238801 n

end A238801

/-! ## A238801.P11797872732363751215

`A133804(n)*A376583(n+1)`
-/

namespace A238801.P11797872732363751215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133804 n * A376583 (n + 1)

end

end A238801.P11797872732363751215

namespace A238801

/-- `A133804(n)*A376583(n+1)` -/
def P11797872732363751215.Spec : Prop :=
  ∀ n, P11797872732363751215.a n = A238801 n

end A238801

/-! ## A238801.P17196632131499367964

`A133807(n)*A376583(n+1)`
-/

namespace A238801.P17196632131499367964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133807 n * A376583 (n + 1)

end

end A238801.P17196632131499367964

namespace A238801

/-- `A133807(n)*A376583(n+1)` -/
def P17196632131499367964.Spec : Prop :=
  ∀ n, P17196632131499367964.a n = A238801 n

end A238801

/-! ## A238801.P7998871735047551727

`A135278(n)*A376583(n+1)`
-/

namespace A238801.P7998871735047551727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A376583 (n + 1)

end

end A238801.P7998871735047551727

namespace A238801

/-- `A135278(n)*A376583(n+1)` -/
def P7998871735047551727.Spec : Prop :=
  ∀ n, P7998871735047551727.a n = A238801 n

end A238801

/-! ## A238801.P14074974649696212926

`(1-A060510(n))*A135278(n)`
-/

namespace A238801.P14074974649696212926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A060510 n) * A135278 n

end

end A238801.P14074974649696212926

namespace A238801

/-- `(1-A060510(n))*A135278(n)` -/
def P14074974649696212926.Spec : Prop :=
  ∀ n, P14074974649696212926.a n = A238801 n

end A238801

/-! ## A238801.P12479106488582408875

`gcd(A000038(n), A095704(n+1))`
-/

namespace A238801.P12479106488582408875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A095704 (n + 1))

end

end A238801.P12479106488582408875

namespace A238801

/-- `gcd(A000038(n), A095704(n+1))` -/
def P12479106488582408875.Spec : Prop :=
  ∀ n, (P12479106488582408875.a n : ℤ) = A238801 n

end A238801

/-! ## A238801.P15149285688988398870

`lcm(A020985(n), A095704(n+1))`
-/

namespace A238801.P15149285688988398870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A095704 (n + 1))

end

end A238801.P15149285688988398870

namespace A238801

/-- `lcm(A020985(n), A095704(n+1))` -/
def P15149285688988398870.Spec : Prop :=
  ∀ n, (P15149285688988398870.a n : ℤ) = A238801 n

end A238801

/-! ## A238801.P9937823647176229841

`A133084(n+1)*A376583(n+1)`
-/

namespace A238801.P9937823647176229841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) * A376583 (n + 1)

end

end A238801.P9937823647176229841

namespace A238801

/-- `A133084(n+1)*A376583(n+1)` -/
def P9937823647176229841.Spec : Prop :=
  ∀ n, P9937823647176229841.a n = A238801 n

end A238801

/-! ## A238801.P15246859668748314829

`and(1, A002260(n+1))*A074909(n+1)`
-/

namespace A238801.P15246859668748314829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002260 (n + 1)) * A074909 (n + 1)

end

end A238801.P15246859668748314829

namespace A238801

/-- `and(1, A002260(n+1))*A074909(n+1)` -/
def P15246859668748314829.Spec : Prop :=
  ∀ n, P15246859668748314829.a n = A238801 n

end A238801

/-! ## A238801.P16056899817245262756

`A059841(A002262(n))*A135278(n)`
-/

namespace A238801.P16056899817245262756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A002262 n).toNat * A135278 n

end

end A238801.P16056899817245262756

namespace A238801

/-- `A059841(A002262(n))*A135278(n)` -/
def P16056899817245262756.Spec : Prop :=
  ∀ n, P16056899817245262756.a n = A238801 n

end A238801

/-! ## A238801.P6013808278753972335

`A000035(A002260(n+1))*A135278(n)`
-/

namespace A238801.P6013808278753972335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat * A135278 n

end

end A238801.P6013808278753972335

namespace A238801

/-- `A000035(A002260(n+1))*A135278(n)` -/
def P6013808278753972335.Spec : Prop :=
  ∀ n, P6013808278753972335.a n = A238801 n

end A238801

/-! ## A238801.P16839766392988855586

`A131047(A038722(n+1))`
-/

namespace A238801.P16839766392988855586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (A038722 (n + 1)).toNat

end

end A238801.P16839766392988855586

namespace A238801

/-- `A131047(A038722(n+1))` -/
def P16839766392988855586.Spec : Prop :=
  ∀ n, P16839766392988855586.a n = A238801 n

end A238801

/-! ## A238801.P2226861241513040228

`A131047(A378705(n+1))`
-/

namespace A238801.P2226861241513040228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (A378705 (n + 1)).toNat

end

end A238801.P2226861241513040228

namespace A238801

/-- `A131047(A378705(n+1))` -/
def P2226861241513040228.Spec : Prop :=
  ∀ n, P2226861241513040228.a n = A238801 n

end A238801

/-! ## A238801.P16657480363572090793

`A056594(A002262(n)²)*A135278(n)`
-/

namespace A238801.P16657480363572090793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n ^ 2).toNat * A135278 n

end

end A238801.P16657480363572090793

namespace A238801

/-- `A056594(A002262(n)²)*A135278(n)` -/
def P16657480363572090793.Spec : Prop :=
  ∀ n, P16657480363572090793.a n = A238801 n

end A238801

/-! ## A238801.P11025061507650048890

`A059841(A061885(n))*A135278(n)`
-/

namespace A238801.P11025061507650048890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A061885 n).toNat * A135278 n

end

end A238801.P11025061507650048890

namespace A238801

/-- `A059841(A061885(n))*A135278(n)` -/
def P11025061507650048890.Spec : Prop :=
  ∀ n, P11025061507650048890.a n = A238801 n

end A238801

/-! ## A238801.P14380640349761839276

`A051129(n+1)%2*A135278(n)`
-/

namespace A238801.P14380640349761839276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 (n + 1)) 2 * A135278 n

end

end A238801.P14380640349761839276

namespace A238801

/-- `A051129(n+1)%2*A135278(n)` -/
def P14380640349761839276.Spec : Prop :=
  ∀ n, P14380640349761839276.a n = A238801 n

end A238801

/-! ## A238801.P7994534027660506957

`A030201(A059268(n))²*A135278(n)`
-/

namespace A238801.P7994534027660506957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A059268 n).toNat ^ 2 * A135278 n

end

end A238801.P7994534027660506957

namespace A238801

/-- `A030201(A059268(n))²*A135278(n)` -/
def P7994534027660506957.Spec : Prop :=
  ∀ n, P7994534027660506957.a n = A238801 n

end A238801

/-!
# A238802: Number T(n,k) of standard Young tableaux with n cells where k is the length of the maximal consecutive sequence 1,2,...,k in the first column; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A238802, there is no canonical definition to state claims against.
-/

/-! ## A238802.P1778096892950359790

`A008326(n+2)-A165490(A135302(n))`
-/

namespace A238802.P1778096892950359790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (n + 2) - A165490 (A135302 n).toNat

end

end A238802.P1778096892950359790

/-! ## A238802.P10062588379570468715

`A163352(A106234(n+1)²)`
-/

namespace A238802.P10062588379570468715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A106234 (n + 1) ^ 2).toNat

end

end A238802.P10062588379570468715

/-! ## A238802.P5022540246242395405

`A163352(A106234(n+1)^2)`
-/

namespace A238802.P5022540246242395405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A106234 (n + 1) ^ 2).toNat

end

end A238802.P5022540246242395405

/-! ## A238802.P12910420142824202594

`A003056(A046923(A281446(n))²)`
-/

namespace A238802.P12910420142824202594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A046923 (A281446 n).toNat ^ 2).toNat

end

end A238802.P12910420142824202594

/-! ## A238802.P10672369833845133321

`A287822(n)-A281441(A330942(n))`
-/

namespace A238802.P10672369833845133321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 n - A281441 (A330942 n).toNat

end

end A238802.P10672369833845133321

/-!
# A238803: Number of ballot sequences of length 2n with exactly n fixed points.

The programs for A238803, the canonical program `A238803.P962036235110261935` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238803 has offset 0).

The definition of A238803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238803.P962036235110261935

`((2*n-1)*a(n-1)+n*(n-2)*a(n-2))/(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238803

/-- `((2*n-1)*a(n-1)+n*(n-2)*a(n-2))/(n-1)` -/
def P962036235110261935.Spec : Prop :=
  ∀ n, P962036235110261935.a n = (A238803 n : ℚ)

end A238803

/-! ## A238803.P7706133667153550774

`Δ[floor(A027412(n)/2)]`
-/

namespace A238803.P7706133667153550774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027412 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238803.P7706133667153550774

namespace A238803

/-- `Δ[floor(A027412(n)/2)]` -/
def P7706133667153550774.Spec : Prop :=
  ∀ n, P7706133667153550774.a n = A238803 n

end A238803

/-! ## A238803.P3570671676230150587

`abs(Δ[A005425(abs(1-n))])`
-/

namespace A238803.P3570671676230150587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A238803.P3570671676230150587

namespace A238803

/-- `abs(Δ[A005425(abs(1-n))])` -/
def P3570671676230150587.Spec : Prop :=
  ∀ n, P3570671676230150587.a n = A238803 n

end A238803

/-! ## A238803.P5939182522147682421

`Δ[A027412(n)]/(A057427(n)+1)`
-/

namespace A238803.P5939182522147682421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027412 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A238803.P5939182522147682421

namespace A238803

/-- `Δ[A027412(n)]/(A057427(n)+1)` -/
def P5939182522147682421.Spec : Prop :=
  ∀ n, P5939182522147682421.a n = (A238803 n : ℚ)

end A238803

/-! ## A238803.P4543618897107232746

`Δ[A027412(n)]/A040001(2*n)`
-/

namespace A238803.P4543618897107232746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027412 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A238803.P4543618897107232746

namespace A238803

/-- `Δ[A027412(n)]/A040001(2*n)` -/
def P4543618897107232746.Spec : Prop :=
  ∀ n, P4543618897107232746.a n = (A238803 n : ℚ)

end A238803

/-!
# A238804: Powers in a variant of Ramanujan's wrong identity for prime number partitions.

The programs for A238804, there is no canonical definition to state claims against.
-/

/-! ## A238804.P16814498143775070140

`lt[A274183(n), A274196(A274200(n+5))]`
-/

namespace A238804.P16814498143775070140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 (A274200 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238804.P16814498143775070140

/-!
# A238805: Number of n X n 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A238805, there is no canonical definition to state claims against.
-/

/-! ## A238805.P3687249027880357689

`A238812(∑[4*n]+1)`
-/

namespace A238805.P3687249027880357689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238805.P3687249027880357689

/-! ## A238805.P11970528290878505608

`lcm(2, A238812(A001844(n)))`
-/

namespace A238805.P11970528290878505608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238812 (A001844 n).toNat)

end

end A238805.P11970528290878505608

/-! ## A238805.P610743424937320174

`record[A003982(n)*A238812(n+1)]`
-/

namespace A238805.P610743424937320174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A238812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238805.P610743424937320174

/-! ## A238805.P7597631469143161753

`A008835(n+1)*A238812(A001844(n))`
-/

namespace A238805.P7597631469143161753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A238812 (A001844 n).toNat

end

end A238805.P7597631469143161753

/-! ## A238805.P16926577537588604108

`A014963(12*n+6)*A238812(A001844(n))`
-/

namespace A238805.P16926577537588604108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A238812 (A001844 n).toNat

end

end A238805.P16926577537588604108

/-!
# A238806: Number of n X 2 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238806, the canonical program `A238806.P16352425304220243914` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238806 has offset 1).

The definition of A238806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238806.P16352425304220243914

`∑[∑[n]+4]-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238806

/-- `∑[∑[n]+4]-1` -/
def P16352425304220243914.Spec : Prop :=
  ∀ n, P16352425304220243914.a n = A238806 (n + 1)

theorem P16352425304220243914.correct : P16352425304220243914.Spec := by
  intro n
  simp only [A238806, Nat.add_sub_cancel]

end A238806

/-! ## A238806.P2598092523092314373

`∑[ceil(∑[acot(n)²+n])]`
-/

namespace A238806.P2598092523092314373
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P2598092523092314373

namespace A238806

/-- `∑[ceil(∑[acot(n)²+n])]` -/
def P2598092523092314373.Spec : Prop :=
  ∀ n, P2598092523092314373.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P12293105607557274226

`∑[∑[C(3, n+2)+n]]`
-/

namespace A238806.P12293105607557274226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n + 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P12293105607557274226

namespace A238806

/-- `∑[∑[C(3, n+2)+n]]` -/
def P12293105607557274226.Spec : Prop :=
  ∀ n, (P12293105607557274226.a n : ℤ) = A238806 (n + 1)

end A238806

/-! ## A238806.P8821371787770308700

`∑[∑[round(acot(n)+n)]+1]`
-/

namespace A238806.P8821371787770308700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P8821371787770308700

namespace A238806

/-- `∑[∑[round(acot(n)+n)]+1]` -/
def P8821371787770308700.Spec : Prop :=
  ∀ n, P8821371787770308700.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P352956640807103414

`∑[∑[floor(2*acot(n)+n)]]`
-/

namespace A238806.P352956640807103414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P352956640807103414

namespace A238806

/-- `∑[∑[floor(2*acot(n)+n)]]` -/
def P352956640807103414.Spec : Prop :=
  ∀ n, P352956640807103414.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P1023679724153037124

`∑[∑[C(n, a(n-1))]]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A238806.P1023679724153037124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2] fun n f2 =>
  Nat.choose n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P1023679724153037124

namespace A238806

/-- `∑[∑[C(n, a(n-1))]]` -/
def P1023679724153037124.Spec : Prop :=
  ∀ n, (P1023679724153037124.a n : ℤ) = A238806 (n + 1)

end A238806

/-! ## A238806.P9141492477888031139

`∑[n-ceil(-a(n-1))]` with `a(0)=3, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A238806.P9141492477888031139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  (n : ℤ) - (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P9141492477888031139

namespace A238806

/-- `∑[n-ceil(-a(n-1))]` -/
def P9141492477888031139.Spec : Prop :=
  ∀ n, P9141492477888031139.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P363222871418052450

`floor(n-∑[a(n-1)-n])` with `a(0)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A238806.P363222871418052450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P363222871418052450

namespace A238806

/-- `floor(n-∑[a(n-1)-n])` -/
def P363222871418052450.Spec : Prop :=
  ∀ n, P363222871418052450.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P5536522981518362561

`floor(a(n-2)+n²+8)` with `a(0)=3, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A238806.P5536522981518362561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 2) + (n ^ 2 + 8)

end

end A238806.P5536522981518362561

namespace A238806

/-- `floor(a(n-2)+n²+8)` -/
def P5536522981518362561.Spec : Prop :=
  ∀ n, (P5536522981518362561.a n : ℤ) = A238806 (n + 1)

end A238806

/-! ## A238806.P7004866268587503719

`∑[8-(a(n-1)-n²)]` with `a(0)=3, a(1)=5`
-/

namespace A238806.P7004866268587503719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  8 - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P7004866268587503719

namespace A238806

/-- `∑[8-(a(n-1)-n²)]` -/
def P7004866268587503719.Spec : Prop :=
  ∀ n, P7004866268587503719.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P4693298545787774961

`∑[n-(char[1]-a(n-1))]` with `a(0)=3, a(1)=5`
-/

namespace A238806.P4693298545787774961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P4693298545787774961

namespace A238806

/-- `∑[n-(char[1]-a(n-1))]` -/
def P4693298545787774961.Spec : Prop :=
  ∀ n, P4693298545787774961.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P961838900480901061

`∑[(∑[n]+1)%(n+1)²+3]`
-/

namespace A238806.P961838900480901061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % (n + 1) ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P961838900480901061

namespace A238806

/-- `∑[(∑[n]+1)%(n+1)²+3]` -/
def P961838900480901061.Spec : Prop :=
  ∀ n, (P961838900480901061.a n : ℤ) = A238806 (n + 1)

end A238806

/-! ## A238806.P9675112246432969358

`∑[∑[gcd(n, n*a(n-1))]]` with `a(0)=3, a(1)=2`
-/

namespace A238806.P9675112246432969358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  Nat.gcd n (n * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P9675112246432969358

namespace A238806

/-- `∑[∑[gcd(n, n*a(n-1))]]` -/
def P9675112246432969358.Spec : Prop :=
  ∀ n, (P9675112246432969358.a n : ℤ) = A238806 (n + 1)

end A238806

/-! ## A238806.P12937017042992482984

`∑[∑[n*(n-a(n-1))]]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A238806.P12937017042992482984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n f2 =>
  (n : ℤ) * ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P12937017042992482984

namespace A238806

/-- `∑[∑[n*(n-a(n-1))]]` -/
def P12937017042992482984.Spec : Prop :=
  ∀ n, P12937017042992482984.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P18163399361238888506

`∑[∑[n/(n-a(n-1))]]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A238806.P18163399361238888506
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3, 2, 2] fun n f2 =>
  (n : ℚ) / ((n : ℚ) - f2 (n - 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P18163399361238888506

namespace A238806

/-- `∑[∑[n/(n-a(n-1))]]` -/
def P18163399361238888506.Spec : Prop :=
  ∀ n, P18163399361238888506.a n = (A238806 (n + 1) : ℚ)

end A238806

/-! ## A238806.P8485662567358705530

`∑[∑[n^(n-a(n-1))]]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A238806.P8485662567358705530
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [3, 2, 2] fun n f2 =>
  (n : ℝ) ^ ((n : ℝ) - f2 (n - 1))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P8485662567358705530

namespace A238806

/-- `∑[∑[n^(n-a(n-1))]]` -/
def P8485662567358705530.Spec : Prop :=
  ∀ n, P8485662567358705530.a n = (A238806 (n + 1) : ℝ)

end A238806

/-! ## A238806.P15787435865901844661

`∑[3-∑[a(n-1)-1]]` with `a(0)=0, a(1)=-2, a(2)=-2`
-/

namespace A238806.P15787435865901844661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -2, -2] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P15787435865901844661

namespace A238806

/-- `∑[3-∑[a(n-1)-1]]` -/
def P15787435865901844661.Spec : Prop :=
  ∀ n, P15787435865901844661.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P10754529832281708743

`abs(2-abs(C(n+4, 3)+1-n²))`
-/

namespace A238806.P10754529832281708743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |(Nat.choose (n + 4) 3 + 1 : ℤ) - (n ^ 2 : ℤ)|)|

end

end A238806.P10754529832281708743

namespace A238806

/-- `abs(2-abs(C(n+4, 3)+1-n²))` -/
def P10754529832281708743.Spec : Prop :=
  ∀ n, P10754529832281708743.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P831349122372688252

`Δ[C(n+2, 4)+n*(2*n+1)]`
-/

namespace A238806.P831349122372688252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A238806.P831349122372688252

namespace A238806

/-- `Δ[C(n+2, 4)+n*(2*n+1)]` -/
def P831349122372688252.Spec : Prop :=
  ∀ n, P831349122372688252.a n = A238806 (n + 1)

end A238806

/-! ## A238806.P7878681224041244780

`∑[A133263(n)+2]`
-/

namespace A238806.P7878681224041244780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238806.P7878681224041244780

namespace A238806

/-- `∑[A133263(n)+2]` -/
def P7878681224041244780.Spec : Prop :=
  ∀ n, P7878681224041244780.a n = A238806 (n + 1)

end A238806

/-!
# A238807: Number of n X 3 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238807, there is no canonical definition to state claims against.
-/

/-! ## A238807.P9388250286364543087

`A238812(∑[n+2]+4)`
-/

namespace A238807.P9388250286364543087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238807.P9388250286364543087

/-! ## A238807.P2837469564076540554

`A238812(A167499(n)+n)%A017046(n)`
-/

namespace A238807.P2837469564076540554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238812 (A167499 n + (n : ℤ)).toNat) (A017046 n)

end

end A238807.P2837469564076540554

/-! ## A238807.P14114831776757830944

`A238812(A167614(n+1))%A017234(n)²`
-/

namespace A238807.P14114831776757830944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238812 (A167614 (n + 1)).toNat) (A017234 n ^ 2)

end

end A238807.P14114831776757830944

/-! ## A238807.P18331459994472512901

`gcd(2, A000040(n+2))*A238812(A167614(n+1))`
-/

namespace A238807.P18331459994472512901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A238812 (A167614 (n + 1)).toNat

end

end A238807.P18331459994472512901

/-!
# A238808: Number of n X 4 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238808, there is no canonical definition to state claims against.
-/

/-! ## A238808.P16434025331373279931

`A238812(∑[n+3]+7)`
-/

namespace A238808.P16434025331373279931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238808.P16434025331373279931

/-! ## A238808.P1647561236299994989

`A238812(A052905(n)+9)%A017046(n)`
-/

namespace A238808.P1647561236299994989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238812 (A052905 n + 9).toNat) (A017046 n)

end

end A238808.P1647561236299994989

/-! ## A238808.P8316939385375279902

`A238812(A000217(n+3)+4)+A185246(n)`
-/

namespace A238808.P8316939385375279902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A000217 (n + 3) + 4).toNat + A185246 n

end

end A238808.P8316939385375279902

/-! ## A238808.P15205139730251880395

`(2-A011588((n+1)²))*A238812(A052905(n)+9)`
-/

namespace A238808.P15205139730251880395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011588 ((n + 1) ^ 2)) * A238812 (A052905 n + 9).toNat

end

end A238808.P15205139730251880395

/-! ## A238808.P11627290745406366277

`A238812(A000217(n+3)+4)+A025438(A017899(n))`
-/

namespace A238808.P11627290745406366277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A000217 (n + 3) + 4).toNat + A025438 (A017899 n).toNat

end

end A238808.P11627290745406366277

/-!
# A238809: Number of n X 5 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238809, there is no canonical definition to state claims against.
-/

/-! ## A238809.P9658096153436270711

`A238812(A374005(n+1))`
-/

namespace A238809.P9658096153436270711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A374005 (n + 1)).toNat

end

end A238809.P9658096153436270711

/-! ## A238809.P2275362484822299854

`A238812(A167499(n+3))`
-/

namespace A238809.P2275362484822299854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A167499 (n + 3)).toNat

end

end A238809.P2275362484822299854

/-! ## A238809.P9278422430268050881

`A238812(A000217(n+4)+5)`
-/

namespace A238809.P9278422430268050881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A000217 (n + 4) + 5).toNat

end

end A238809.P9278422430268050881

/-! ## A238809.P11840255176922902396

`A238812(A000124(n+5)-(n+1))`
-/

namespace A238809.P11840255176922902396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A238809.P11840255176922902396

/-! ## A238809.P18177828986777425490

`A238812(A167614(n+4)-(n+3))`
-/

namespace A238809.P18177828986777425490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A238809.P18177828986777425490

/-!
# A238810: Number of nX6 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238810, there is no canonical definition to state claims against.
-/

/-! ## A238810.P4849461441022647918

`A238812(A374007(n+1))`
-/

namespace A238810.P4849461441022647918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A374007 (n + 1)).toNat

end

end A238810.P4849461441022647918

/-! ## A238810.P17630174920994214793

`A238812(A167614(n+4)+3)`
-/

namespace A238810.P17630174920994214793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A167614 (n + 4) + 3).toNat

end

end A238810.P17630174920994214793

/-! ## A238810.P18093135239726702270

`A238812(Δ[A238806(n+5)]+2)`
-/

namespace A238810.P18093135239726702270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (f1 (n + 1) - f1 n + 2).toNat

end

end A238810.P18093135239726702270

/-! ## A238810.P6540163994207504047

`A238812(A141214(n)+A103517(n+8))`
-/

namespace A238810.P6540163994207504047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A141214 n + A103517 (n + 8)).toNat

end

end A238810.P6540163994207504047

/-! ## A238810.P8817796403129546737

`A238812(A141214(n)+A005843(n+9))`
-/

namespace A238810.P8817796403129546737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A141214 n + A005843 (n + 9)).toNat

end

end A238810.P8817796403129546737

/-!
# A238811: Number of nX7 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the sum of elements above it, modulo 3.

The programs for A238811, there is no canonical definition to state claims against.
-/

/-! ## A238811.P12282721709940955417

`A238812(A374008(n+1))`
-/

namespace A238811.P12282721709940955417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A374008 (n + 1)).toNat

end

end A238811.P12282721709940955417

/-! ## A238811.P371907085637203536

`A238812(A055999(n+4))`
-/

namespace A238811.P371907085637203536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A055999 (n + 4)).toNat

end

end A238811.P371907085637203536

/-! ## A238811.P11688870305688885955

`A238812(eq[6, A193592(n)])`
-/

namespace A238811.P11688870305688885955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238811.P11688870305688885955

/-! ## A238811.P4013190731377202793

`A238812(A000124(n+7)-7)`
-/

namespace A238811.P4013190731377202793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238812 (A000124 (n + 7) - 7).toNat

end

end A238811.P4013190731377202793

/-!
# A238812: T(n,k)=Number of nXk 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A238812, there is no canonical definition to state claims against.
-/

/-! ## A238812.P11207715826126570436

`A115009(n)+A077168(A068045(n))`
-/

namespace A238812.P11207715826126570436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 n + A077168 (A068045 n).toNat

end

end A238812.P11207715826126570436

/-! ## A238812.P1292010124965429687

`A198462(A091044(n+1))`
-/

namespace A238812.P1292010124965429687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198462 (A091044 (n + 1)).toNat

end

end A238812.P1292010124965429687

/-! ## A238812.P12089846648919493912

`A256221(A227269(n+1))`
-/

namespace A238812.P12089846648919493912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256221 (A227269 (n + 1)).toNat

end

end A238812.P12089846648919493912

/-! ## A238812.P15028886517785116462

`A360010(A184129(n+1))`
-/

namespace A238812.P15028886517785116462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A184129 (n + 1)).toNat

end

end A238812.P15028886517785116462

/-! ## A238812.P5924232560803085765

`A195932(A135835(n+1))+1`
-/

namespace A238812.P5924232560803085765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195932 (A135835 (n + 1)).toNat + 1

end

end A238812.P5924232560803085765

/-!
# A238813: Numerators of the coefficients of Euler-Ramanujan's harmonic number expansion into negative powers of a triangular number.

The programs for A238813, there is no canonical definition to state claims against.
-/

/-! ## A238813.P15903872668876321782

`1-A317839(∏[n+2]+n)`
-/

namespace A238813.P15903872668876321782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317839 (∏ j ∈ Finset.range (n + 1), f1 j + n)

end

end A238813.P15903872668876321782

/-! ## A238813.P5299829634681016414

`(-1)^n-A161680(A051117(n))`
-/

namespace A238813.P5299829634681016414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - A161680 (A051117 n).toNat

end

end A238813.P5299829634681016414

/-!
# A238814: Primes p with prime(p) - p + 1 and prime(q) - q + 1 both prime, where q is the first prime after p.

The programs for A238814, there is no canonical definition to state claims against.
-/

/-! ## A238814.P18293364342787577268

`∩[A234695(n+1), A064989(A234695(n+1))]`
-/

namespace A238814.P18293364342787577268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A234695 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238814.P18293364342787577268

/-! ## A238814.P6902216937510472848

`p?[Δ[A234852(n+1)]*A234695(n+1)]`
-/

namespace A238814.P6902216937510472848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A234695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238814.P6902216937510472848

/-! ## A238814.P17158063222181603436

`∩[A234695(n+1), A175787(A234852(n+1))]`
-/

namespace A238814.P17158063222181603436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A234852 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238814.P17158063222181603436

/-! ## A238814.P13345902272314713522

`∩[A234851(n+1), A175787(A234852(n+1))]`
-/

namespace A238814.P13345902272314713522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A234852 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238814.P13345902272314713522

/-!
# A238815: Number of prime powers p^k (k >= 0) (A000961) <= 10^n.

The programs for A238815, there is no canonical definition to state claims against.
-/

/-! ## A238815.P15405343616954718169

`A076048(n)+A006880(n)`
-/

namespace A238815.P15405343616954718169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 n + A006880 n

end

end A238815.P15405343616954718169

/-! ## A238815.P10123194486341205866

`A076048(n)+∑[A006879(n)]`
-/

namespace A238815.P10123194486341205866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238815.P10123194486341205866

/-! ## A238815.P9124638886976584664

`A090226(n+1)+A076048(n)-1`
-/

namespace A238815.P9124638886976584664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1) + (A076048 n - 1)

end

end A238815.P9124638886976584664

/-! ## A238815.P9110066049032713417

`A008683(A000043(n+1))+A090226(n+1)+A076048(n)`
-/

namespace A238815.P9110066049032713417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000043 (n + 1)).toNat + (A090226 (n + 1) + A076048 n)

end

end A238815.P9110066049032713417

/-! ## A238815.P16791187255247177874

`A122121(2*n)+A076048(n)`
-/

namespace A238815.P16791187255247177874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * n) + A076048 n

end

end A238815.P16791187255247177874

/-!
# A238816: Number of Hamiltonian cycles on 2n X 2n grid with at least the symmetry of reflection in an axis.

The programs for A238816, there is no canonical definition to state claims against.
-/

/-! ## A238816.P6196184973306565915

`A238818(n+1)+2*A237429(n+1)`
-/

namespace A238816.P6196184973306565915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238818 (n + 1) + 2 * A237429 (n + 1)

end

end A238816.P6196184973306565915

/-! ## A238816.P9600437637379583252

`A238818(n+1)+2*(A227257(n+1)-A237430(n+1))`
-/

namespace A238816.P9600437637379583252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238818 (n + 1) + 2 * (A227257 (n + 1) - A237430 (n + 1))

end

end A238816.P9600437637379583252

/-! ## A238816.P2327194888979397226

`A227257(n+1)-A237430(n+1)+A238818(n+1)+A237429(n+1)`
-/

namespace A238816.P2327194888979397226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227257 (n + 1) - A237430 (n + 1) + (A238818 (n + 1) + A237429 (n + 1))

end

end A238816.P2327194888979397226

/-!
# A238818: Number of Hamiltonian cycles on 2n X 2n grid with at least the symmetries of two reflections and 180-degree rotation.

The programs for A238818, there is no canonical definition to state claims against.
-/

/-! ## A238818.P8511903311993105800

`A000007(n)+2*A237431(n+1)`
-/

namespace A238818.P8511903311993105800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A237431 (n + 1)

end

end A238818.P8511903311993105800

/-! ## A238818.P13054655551717386943

`A014376(n)+2*A237431(n+1)`
-/

namespace A238818.P13054655551717386943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014376 n + 2 * A237431 (n + 1)

end

end A238818.P13054655551717386943

/-! ## A238818.P16784828643226816842

`A238816(n+1)-2*A237429(n+1)`
-/

namespace A238818.P16784828643226816842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238816 (n + 1) - 2 * A237429 (n + 1)

end

end A238818.P16784828643226816842

/-! ## A238818.P10591385161178909623

`A238816(n+1)-2*(A227257(n+1)-A237430(n+1))`
-/

namespace A238818.P10591385161178909623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238816 (n + 1) - 2 * (A227257 (n + 1) - A237430 (n + 1))

end

end A238818.P10591385161178909623

/-!
# A238819: Number of Hamiltonian cycles on 4n+2 X 4n+2 grid with at least 90-degree rotational symmetry.

The programs for A238819, there is no canonical definition to state claims against.
-/

/-! ## A238819.P16481930338554175888

`A237432(A205006(n+1))+A237432(n+1)`
-/

namespace A238819.P16481930338554175888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237432 (A205006 (n + 1)).toNat + A237432 (n + 1)

end

end A238819.P16481930338554175888

/-!
# A238821: Number of symmetry classes of triangulations of the vertex set of the n-dimensional cube.

The programs for A238821, there is no canonical definition to state claims against.
-/

/-! ## A238821.P11520394731331960377

`A101882(A101900(floor(n²/2)))`
-/

namespace A238821.P11520394731331960377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101882 (A101900 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

end

end A238821.P11520394731331960377

/-!
# A238822: Number of equilateral triangles bounded by the sides and diagonals of a regular 3n-gon.

The programs for A238822, there is no canonical definition to state claims against.
-/

/-! ## A238822.P12446968233364662070

`A065428(n+1)*A237883(∑[n²+2]-1)`
-/

namespace A238822.P12446968233364662070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065428 (n + 1) * A237883 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A238822.P12446968233364662070

/-!
# A238823: a(n) = 3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)+3*a(n-6)-a(n-7) for n >= 8, with initial values as shown.

The programs for A238823, there is no canonical definition to state claims against.
-/

/-! ## A238823.P474882723738311307

`A238829(n+1)+A238826(n+1)`
-/

namespace A238823.P474882723738311307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238829 (n + 1) + A238826 (n + 1)

end

end A238823.P474882723738311307

/-! ## A238823.P22116222850650058

`A238826(n+1)+A238824(n+2)-A238828(n)`
-/

namespace A238823.P22116222850650058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238826 (n + 1) + (A238824 (n + 2) - A238828 n)

end

end A238823.P22116222850650058

/-! ## A238823.P15223580090084881081

`A238829(n+1)-(A238825(n+2)-A238825(n+4))`
-/

namespace A238823.P15223580090084881081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238829 (n + 1) - (A238825 (n + 2) - A238825 (n + 4))

end

end A238823.P15223580090084881081

/-! ## A238823.P3650450266851936676

`A238826(n+1)+A238828(n+2)-A238825(n+3)-A238828(n)`
-/

namespace A238823.P3650450266851936676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238826 (n + 1) + (A238828 (n + 2) - A238825 (n + 3) - A238828 n)

end

end A238823.P3650450266851936676

/-! ## A238823.P8444240930057954588

`A238826(n+1)+A238824(n+2)+A238831(n+2)-A238830(n+2)`
-/

namespace A238823.P8444240930057954588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238826 (n + 1) + (A238824 (n + 2) + (A238831 (n + 2) - A238830 (n + 2)))

end

end A238823.P8444240930057954588

/-!
# A238824: a(1)=0, a(2)=1; thereafter a(n) = A238823(n-1)-2*a(n-1)-a(n-2).

The programs for A238824, there is no canonical definition to state claims against.
-/

/-! ## A238824.P5320040184774246102

`A238823(n)-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238824.P5320040184774246102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A238823 n - 2 * a (n - 1) - a (n - 2)

end

end A238824.P5320040184774246102

/-! ## A238824.P2204417550799502550

`A238828(n+1)-A238825(n+2)`
-/

namespace A238824.P2204417550799502550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 (n + 1) - A238825 (n + 2)

end

end A238824.P2204417550799502550

/-! ## A238824.P12133019486454614865

`A238832(n+2)-A238830(n+1)`
-/

namespace A238824.P12133019486454614865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238832 (n + 2) - A238830 (n + 1)

end

end A238824.P12133019486454614865

/-! ## A238824.P17784573084761949433

`A238833(n+3)-A238832(n+2)`
-/

namespace A238824.P17784573084761949433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238833 (n + 3) - A238832 (n + 2)

end

end A238824.P17784573084761949433

/-! ## A238824.P6582459639313842247

`A238832(n+2)-(A238831(n+3)-A238827(n+3))`
-/

namespace A238824.P6582459639313842247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238832 (n + 2) - (A238831 (n + 3) - A238827 (n + 3))

end

end A238824.P6582459639313842247

/-!
# A238825: a(1)..a(4) = 0,0,0,1; thereafter a(n) = a(n-2)+a(n-3)+2*(d(n-3)+d(n-4)) where d(n) = A238824(n).

The programs for A238825, there is no canonical definition to state claims against.
-/

/-! ## A238825.P9558446265440234359

`A238827(n+4)-A238827(n+2)`
-/

namespace A238825.P9558446265440234359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238827 (n + 4) - A238827 (n + 2)

end

end A238825.P9558446265440234359

/-! ## A238825.P15658473019550375845

`Δ[A238827(n+2)+A238827(n+3)]`
-/

namespace A238825.P15658473019550375845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238827 (n + 2) + A238827 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238825.P15658473019550375845

/-! ## A238825.P8903402030172322924

`A238828(n)-A238824(A028310(n))`
-/

namespace A238825.P8903402030172322924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 n - A238824 (A028310 n).toNat

end

end A238825.P8903402030172322924

/-! ## A238825.P7587208138893738156

`A238828(n)-A238824(A065033(2*n))`
-/

namespace A238825.P7587208138893738156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 n - A238824 (A065033 (2 * n)).toNat

end

end A238825.P7587208138893738156

/-! ## A238825.P1348290514248022105

`A238828(n)-A238824(A000007(n)+n)`
-/

namespace A238825.P1348290514248022105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 n - A238824 (A000007 n + (n : ℤ)).toNat

end

end A238825.P1348290514248022105

/-! ## A238825.P13869713247751480387

`A238828(n)-A238824(or(n, A000007(n)))`
-/

namespace A238825.P13869713247751480387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 n - A238824 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A238825.P13869713247751480387

/-!
# A238826: a(n) = p(n+3)-p(n+1), where p(n) = A238825(n).

The programs for A238826, there is no canonical definition to state claims against.
-/

/-! ## A238826.P2152407008594113456

`A238823(n+1)-A238829(n+1)`
-/

namespace A238826.P2152407008594113456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238823 (n + 1) - A238829 (n + 1)

end

end A238826.P2152407008594113456

/-! ## A238826.P4043797143268330487

`A238823(n+1)+A238828(n)-A238824(n+2)`
-/

namespace A238826.P4043797143268330487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238823 (n + 1) + (A238828 n - A238824 (n + 2))

end

end A238826.P4043797143268330487

/-! ## A238826.P371757459384929617

`A100196(A216454(n))`
-/

namespace A238826.P371757459384929617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A216454 n).toNat

end

end A238826.P371757459384929617

/-!
# A238827: a(n) = 0 for n <= 3; thereafter a(n) = a(n-2)+A238825(n-3).

The programs for A238827, there is no canonical definition to state claims against.
-/

/-! ## A238827.P8749231632388646233

`a(n-2)+A238825(n-2)` with `a(0)=0, a(1)=0, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238827.P8749231632388646233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + A238825 (n - 2)

end

end A238827.P8749231632388646233

/-! ## A238827.P4412405940891823478

`floor(A319721(n)/(2*(n+1)²))`
-/

namespace A238827.P4412405940891823478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319721 n : ℚ) / (2 * (n + 1) ^ 2 : ℚ)⌋

end

end A238827.P4412405940891823478

/-! ## A238827.P9605649074678283986

`floor(A319768(n)/(3*floor((n+1)*ϕ)+2*n))`
-/

namespace A238827.P9605649074678283986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319768 n : ℚ) / (3 * ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ + (2 * n : ℤ) : ℚ)⌋

end

end A238827.P9605649074678283986

/-! ## A238827.P4862249071045365061

`A117172(A068041(n))`
-/

namespace A238827.P4862249071045365061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117172 (A068041 n).toNat

end

end A238827.P4862249071045365061

/-! ## A238827.P18121972956495847034

`A147968(A164949(n+1))`
-/

namespace A238827.P18121972956495847034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A164949 (n + 1)).toNat

end

end A238827.P18121972956495847034

/-!
# A238828: a(0)=0; thereafter a(n) = A238824(n-1)+A238825(n).

The programs for A238828, there is no canonical definition to state claims against.
-/

/-! ## A238828.P6920635703690596913

`A238830(n+2)-A238831(n+2)`
-/

namespace A238828.P6920635703690596913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238830 (n + 2) - A238831 (n + 2)

end

end A238828.P6920635703690596913

/-! ## A238828.P16566266445853664609

`A238825(n+1)+A238824(A028310(n))`
-/

namespace A238828.P16566266445853664609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238825 (n + 1) + A238824 (A028310 n).toNat

end

end A238828.P16566266445853664609

/-! ## A238828.P6956623174559890068

`A238825(n+1)+A238824(A000007(n)+n)`
-/

namespace A238828.P6956623174559890068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238825 (n + 1) + A238824 (A000007 n + (n : ℤ)).toNat

end

end A238828.P6956623174559890068

/-! ## A238828.P10799189254661297312

`A238824(n+2)-A238829(n+1)`
-/

namespace A238828.P10799189254661297312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238824 (n + 2) - A238829 (n + 1)

end

end A238828.P10799189254661297312

/-! ## A238828.P16318105967436244315

`A238824(A000027(n+2))%A238829(n+1)`
-/

namespace A238828.P16318105967436244315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238824 (A000027 (n + 2)).toNat) (A238829 (n + 1))

end

end A238828.P16318105967436244315

/-! ## A238828.P17523401789448430659

`A238826(n+1)+A238824(n+2)-A238823(n+1)`
-/

namespace A238828.P17523401789448430659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238826 (n + 1) + (A238824 (n + 2) - A238823 (n + 1))

end

end A238828.P17523401789448430659

/-!
# A238829: a(n) = A238823(n) - A238826(n).

The programs for A238829, there is no canonical definition to state claims against.
-/

/-! ## A238829.P521616362441325897

`A238823(n+1)-A238826(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238829.P521616362441325897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238823 (n + 1) - A238826 (n + 1)

end

end A238829.P521616362441325897

/-! ## A238829.P8521440563205688751

`A238824(n+2)-A238828(n)`
-/

namespace A238829.P8521440563205688751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238824 (n + 2) - A238828 n

end

end A238829.P8521440563205688751

/-! ## A238829.P8844662871239521199

`A238824(n+2)+A238831(n+2)-A238830(n+2)`
-/

namespace A238829.P8844662871239521199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238824 (n + 2) + (A238831 (n + 2) - A238830 (n + 2))

end

end A238829.P8844662871239521199

/-! ## A238829.P7004988997477770457

`A238824(n+2)-(A238825(n+1)+A238824(A028310(n)))`
-/

namespace A238829.P7004988997477770457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238824 (n + 2) - (A238825 (n + 1) + A238824 (A028310 n).toNat)

end

end A238829.P7004988997477770457

/-! ## A238829.P14531715903742039377

`A238824(n+2)-(A238825(n+1)+A238824(A000007(n)+n))`
-/

namespace A238829.P14531715903742039377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238824 (n + 2) - (A238825 (n + 1) + A238824 (A000007 n + (n : ℤ)).toNat)

end

end A238829.P14531715903742039377

/-! ## A238829.P10531201545727674446

`A238828(n+2)-A238825(n+3)-A238828(n)`
-/

namespace A238829.P10531201545727674446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 (n + 2) - A238825 (n + 3) - A238828 n

end

end A238829.P10531201545727674446

/-! ## A238829.P9070020402972330891

`A000007(n)+A238823(n+1)%A238826(n+1)`
-/

namespace A238829.P9070020402972330891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A238823 (n + 1)) (A238826 (n + 1))

end

end A238829.P9070020402972330891

/-!
# A238830: a(1)=a(2)=0; thereafter a(n) = a(n-2)+A238828(n-1)+A238827(n).

The programs for A238830, there is no canonical definition to state claims against.
-/

/-! ## A238830.P16618072022118684496

`A238831(n+3)-A238827(n+3)`
-/

namespace A238830.P16618072022118684496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238831 (n + 3) - A238827 (n + 3)

end

end A238830.P16618072022118684496

/-! ## A238830.P11224175642789950813

`A238831(n+1)+A238828(abs(1-n))`
-/

namespace A238830.P11224175642789950813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238831 (n + 1) + A238828 |1 - (n : ℤ)|.toNat

end

end A238830.P11224175642789950813

/-! ## A238830.P5511985455714570715

`A238832(A233583(n+1))+A238827(n+3)`
-/

namespace A238830.P5511985455714570715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238832 (A233583 (n + 1)).toNat + A238827 (n + 3)

end

end A238830.P5511985455714570715

/-! ## A238830.P15651212832002973472

`A238832(n+2)-A238824(n+1)`
-/

namespace A238830.P15651212832002973472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238832 (n + 2) - A238824 (n + 1)

end

end A238830.P15651212832002973472

/-! ## A238830.P15963154080597081656

`A238825(n+2)+A238832(n+2)-A238828(n+1)`
-/

namespace A238830.P15963154080597081656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238825 (n + 2) + (A238832 (n + 2) - A238828 (n + 1))

end

end A238830.P15963154080597081656

/-!
# A238831: a(n) = 0 if n <= 2; thereafter a(n) = A238827(n) + A238830(n-2).

The programs for A238831, there is no canonical definition to state claims against.
-/

/-! ## A238831.P12213472469665670986

`A131138(A036636(n))`
-/

namespace A238831.P12213472469665670986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A036636 n).toNat

end

end A238831.P12213472469665670986

/-! ## A238831.P6705897096594744583

`A131138(A036643(n))`
-/

namespace A238831.P6705897096594744583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A036643 n).toNat

end

end A238831.P6705897096594744583

/-! ## A238831.P164494811782192507

`A033111(A148242(n))`
-/

namespace A238831.P164494811782192507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (A148242 n).toNat

end

end A238831.P164494811782192507

/-! ## A238831.P16221593802444106517

`A259361(A045905(n))`
-/

namespace A238831.P16221593802444106517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A045905 n).toNat

end

end A238831.P16221593802444106517

/-! ## A238831.P9053693561235406059

`A086431(A007326(n+1))`
-/

namespace A238831.P9053693561235406059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A007326 (n + 1)).toNat

end

end A238831.P9053693561235406059

/-!
# A238832: a(1)=0; thereafter a(n) = A238824(n-1)+A238830(n-1).

The programs for A238832, there is no canonical definition to state claims against.
-/

/-! ## A238832.P16039036482222428365

`A238830(n+2)-A238827(n+4)`
-/

namespace A238832.P16039036482222428365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238830 (n + 2) - A238827 (n + 4)

end

end A238832.P16039036482222428365

/-! ## A238832.P17773685338465051151

`A238831(n+2)-(A238827(n+4)-A238828(n))`
-/

namespace A238832.P17773685338465051151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238831 (n + 2) - (A238827 (n + 4) - A238828 n)

end

end A238832.P17773685338465051151

/-! ## A238832.P6916156900144931365

`A238831(n+4)-A238827(n+4)-A238827(n+4)`
-/

namespace A238832.P6916156900144931365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238831 (n + 4) - A238827 (n + 4) - A238827 (n + 4)

end

end A238832.P6916156900144931365

/-! ## A238832.P2121803706931726197

`A238830(A028310(n))+A238824(A028310(n))`
-/

namespace A238832.P2121803706931726197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238830 (A028310 n).toNat + A238824 (A028310 n).toNat

end

end A238832.P2121803706931726197

/-! ## A238832.P13962258132421914899

`A109054(A109070(n+2))`
-/

namespace A238832.P13962258132421914899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A109070 (n + 2)).toNat

end

end A238832.P13962258132421914899

/-!
# A238837: Numerators in the enumeration of the rationals by Czyz and Self.

The programs for A238837, the canonical program `A238837.P2652607451931087932` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238837 has offset 1).

The definition of A238837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238837.P15955580496831394355

`A245327(A059894(n+1))-A036987(n)`
-/

namespace A238837.P15955580496831394355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A059894 (n + 1)).toNat - A036987 n

end

end A238837.P15955580496831394355

namespace A238837

/-- `A245327(A059894(n+1))-A036987(n)` -/
def P15955580496831394355.Spec : Prop :=
  ∀ n, P15955580496831394355.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P15664952294525146336

`A071585(n+1)-(A209229(n+1)+A071766(n+1))`
-/

namespace A238837.P15664952294525146336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (n + 1) - (A209229 (n + 1) + A071766 (n + 1))

end

end A238837.P15664952294525146336

namespace A238837

/-- `A071585(n+1)-(A209229(n+1)+A071766(n+1))` -/
def P15664952294525146336.Spec : Prop :=
  ∀ n, P15664952294525146336.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P642456468015204987

`A229742(A153152(n))`
-/

namespace A238837.P642456468015204987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A153152 n).toNat

end

end A238837.P642456468015204987

namespace A238837

/-- `A229742(A153152(n))` -/
def P642456468015204987.Spec : Prop :=
  ∀ n, P642456468015204987.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P2116229584973678417

`A229742(n+1)-A036987(n)`
-/

namespace A238837.P2116229584973678417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (n + 1) - A036987 n

end

end A238837.P2116229584973678417

namespace A238837

/-- `A229742(n+1)-A036987(n)` -/
def P2116229584973678417.Spec : Prop :=
  ∀ n, P2116229584973678417.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P10766492715889709491

`A229742(n+1)-A209229(n+1)`
-/

namespace A238837.P10766492715889709491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (n + 1) - A209229 (n + 1)

end

end A238837.P10766492715889709491

namespace A238837

/-- `A229742(n+1)-A209229(n+1)` -/
def P10766492715889709491.Spec : Prop :=
  ∀ n, P10766492715889709491.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P10212374610849207156

`A229742(n+1)+A070941(n)-A070941(n+1)`
-/

namespace A238837.P10212374610849207156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (n + 1) + (A070941 n - A070941 (n + 1))

end

end A238837.P10212374610849207156

namespace A238837

/-- `A229742(n+1)+A070941(n)-A070941(n+1)` -/
def P10212374610849207156.Spec : Prop :=
  ∀ n, P10212374610849207156.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P2652607451931087932

`A071766(A063946(n)+1)%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A238837

/-- `A071766(A063946(n)+1)%(n+1)` -/
def P2652607451931087932.Spec : Prop :=
  ∀ n, P2652607451931087932.a n = A238837 (n + 1)

theorem P2652607451931087932.correct : P2652607451931087932.Spec := by
  intro n
  simp only [A238837, Nat.add_sub_cancel]

end A238837

/-! ## A238837.P8184312017779243180

`A020650(A059893(n+1))-A036987(n)`
-/

namespace A238837.P8184312017779243180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A059893 (n + 1)).toNat - A036987 n

end

end A238837.P8184312017779243180

namespace A238837

/-- `A020650(A059893(n+1))-A036987(n)` -/
def P8184312017779243180.Spec : Prop :=
  ∀ n, P8184312017779243180.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P13627435807458785418

`A071766(A063946(n)+1)-A000007(n)`
-/

namespace A238837.P13627435807458785418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A063946 n + 1).toNat - A000007 n

end

end A238837.P13627435807458785418

namespace A238837

/-- `A071766(A063946(n)+1)-A000007(n)` -/
def P13627435807458785418.Spec : Prop :=
  ∀ n, P13627435807458785418.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P13950691861040207833

`A020650(A059893(n+1))-A209229(n+1)`
-/

namespace A238837.P13950691861040207833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A059893 (n + 1)).toNat - A209229 (n + 1)

end

end A238837.P13950691861040207833

namespace A238837

/-- `A020650(A059893(n+1))-A209229(n+1)` -/
def P13950691861040207833.Spec : Prop :=
  ∀ n, P13950691861040207833.a n = A238837 (n + 1)

end A238837

/-! ## A238837.P8428876323227946342

`A245326(A117120(n+1))-A036987(n)`
-/

namespace A238837.P8428876323227946342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A117120 (n + 1)).toNat - A036987 n

end

end A238837.P8428876323227946342

namespace A238837

/-- `A245326(A117120(n+1))-A036987(n)` -/
def P8428876323227946342.Spec : Prop :=
  ∀ n, P8428876323227946342.a n = A238837 (n + 1)

end A238837

/-!
# A238838: Number of 2n X 2n addition squares in which every digram (s,s;), s' != s, appears once horizontally and once vertically.

The programs for A238838, there is no canonical definition to state claims against.
-/

/-! ## A238838.P12292083672314841361

`A048296(A007840(n+1))*A053657(2*n+1)`
-/

namespace A238838.P12292083672314841361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048296 (A007840 (n + 1)).toNat * A053657 (2 * n + 1)

end

end A238838.P12292083672314841361

/-!
# A238844: Combinatorial configuration types of n (unlabeled) queens on a square board.

The programs for A238844, there is no canonical definition to state claims against.
-/

/-! ## A238844.P12470276052057387225

`A306736(n+1)-A065843(A007282(n+1))`
-/

namespace A238844.P12470276052057387225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306736 (n + 1) - A065843 (A007282 (n + 1)).toNat

end

end A238844.P12470276052057387225

/-!
# A238845: Prefix overlap between binary expansions of n and n+1.

The programs for A238845, the canonical program `A238845.P1323273595676224108` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238845 has offset 0).

The definition of A238845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238845.P5604381536460699031

`∑{e}[Δ[A280995(n)], #]`
-/

namespace A238845.P5604381536460699031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238845.P5604381536460699031

namespace A238845

/-- `∑{e}[Δ[A280995(n)], #]` -/
def P5604381536460699031.Spec : Prop :=
  ∀ n, (P5604381536460699031.a n : ℤ) = A238845 n

end A238845

/-! ## A238845.P1894627198645297212

`val(A265026(n+1), 2)`
-/

namespace A238845.P1894627198645297212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265026 (n + 1)).toNat 2

end

end A238845.P1894627198645297212

namespace A238845

/-- `val(A265026(n+1), 2)` -/
def P1894627198645297212.Spec : Prop :=
  ∀ n, (P1894627198645297212.a n : ℤ) = A238845 n

end A238845

/-! ## A238845.P1323273595676224108

`abs(val(n+1, 2)+1-A070939(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238845

/-- `abs(val(n+1, 2)+1-A070939(n))` -/
def P1323273595676224108.Spec : Prop :=
  ∀ n, P1323273595676224108.a n = A238845 n

theorem P1323273595676224108.correct : P1323273595676224108.Spec := by
  intro n
  simp only [A238845]

end A238845

/-! ## A238845.P14556231153020980558

`A070939(floor(n/(xor(n, n+1)+1)))%Δ[n²]`
-/

namespace A238845.P14556231153020980558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A238845.P14556231153020980558

namespace A238845

/-- `A070939(floor(n/(xor(n, n+1)+1)))%Δ[n²]` -/
def P14556231153020980558.Spec : Prop :=
  ∀ n, P14556231153020980558.a n = A238845 n

end A238845

/-! ## A238845.P8309446712451411556

`∑[A036987(n)]-A091090(n)`
-/

namespace A238845.P8309446712451411556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091090 n

end

end A238845.P8309446712451411556

namespace A238845

/-- `∑[A036987(n)]-A091090(n)` -/
def P8309446712451411556.Spec : Prop :=
  ∀ n, P8309446712451411556.a n = A238845 n

end A238845

/-! ## A238845.P16550079156141500010

`A113473(n+1)-A091090(n)`
-/

namespace A238845.P16550079156141500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A091090 n

end

end A238845.P16550079156141500010

namespace A238845

/-- `A113473(n+1)-A091090(n)` -/
def P16550079156141500010.Spec : Prop :=
  ∀ n, P16550079156141500010.a n = A238845 n

end A238845

/-! ## A238845.P14256529041790849830

`A070940(n+1)-A267442(n)`
-/

namespace A238845.P14256529041790849830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1) - A267442 n

end

end A238845.P14256529041790849830

namespace A238845

/-- `A070940(n+1)-A267442(n)` -/
def P14256529041790849830.Spec : Prop :=
  ∀ n, P14256529041790849830.a n = A238845 n

end A238845

/-! ## A238845.P4334799613912888314

`A000523((n+1)/A135517(n))`
-/

namespace A238845.P4334799613912888314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A135517 n : ℚ))).toNat

end

end A238845.P4334799613912888314

namespace A238845

/-- `A000523((n+1)/A135517(n))` -/
def P4334799613912888314.Spec : Prop :=
  ∀ n, P4334799613912888314.a n = A238845 n

end A238845

/-! ## A238845.P6082863405569232128

`abs(A001511(n+1)-A070939(n))`
-/

namespace A238845.P6082863405569232128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001511 (n + 1) - A070939 n|

end

end A238845.P6082863405569232128

namespace A238845

/-- `abs(A001511(n+1)-A070939(n))` -/
def P6082863405569232128.Spec : Prop :=
  ∀ n, P6082863405569232128.a n = A238845 n

end A238845

/-! ## A238845.P9841093710943761773

`A000523(n+1)+1-A091090(n)`
-/

namespace A238845.P9841093710943761773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (1 - A091090 n)

end

end A238845.P9841093710943761773

namespace A238845

/-- `A000523(n+1)+1-A091090(n)` -/
def P9841093710943761773.Spec : Prop :=
  ∀ n, P9841093710943761773.a n = A238845 n

end A238845

/-! ## A238845.P8604355036334490405

`A319855(n+1)-A339823(n+1)`
-/

namespace A238845.P8604355036334490405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319855 (n + 1) - A339823 (n + 1)

end

end A238845.P8604355036334490405

namespace A238845

/-- `A319855(n+1)-A339823(n+1)` -/
def P8604355036334490405.Spec : Prop :=
  ∀ n, P8604355036334490405.a n = A238845 n

end A238845

/-! ## A238845.P13847017120591457195

`val(A035928(n+1)-A036044(n), 2)`
-/

namespace A238845.P13847017120591457195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035928 (n + 1) - A036044 n).toNat 2

end

end A238845.P13847017120591457195

namespace A238845

/-- `val(A035928(n+1)-A036044(n), 2)` -/
def P13847017120591457195.Spec : Prop :=
  ∀ n, (P13847017120591457195.a n : ℤ) = A238845 n

end A238845

/-! ## A238845.P4766750521421933164

`abs(∏{e}[2*n+1-A006257(n), #]-A001511(n+1))`
-/

namespace A238845.P4766750521421933164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A001511 (n + 1)|

end

end A238845.P4766750521421933164

namespace A238845

/-- `abs(∏{e}[2*n+1-A006257(n), #]-A001511(n+1))` -/
def P4766750521421933164.Spec : Prop :=
  ∀ n, P4766750521421933164.a n = A238845 n

end A238845

/-! ## A238845.P12788524350320397201

`A000523(n+1)-A000523(A135517(n))`
-/

namespace A238845.P12788524350320397201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A000523 (A135517 n).toNat

end

end A238845.P12788524350320397201

namespace A238845

/-- `A000523(n+1)-A000523(A135517(n))` -/
def P12788524350320397201.Spec : Prop :=
  ∀ n, P12788524350320397201.a n = A238845 n

end A238845

/-! ## A238845.P192202541538708214

`abs(A001511(n+1)-(A023416(n)+A000120(n)))`
-/

namespace A238845.P192202541538708214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001511 (n + 1) - (A023416 n + A000120 n)|

end

end A238845.P192202541538708214

namespace A238845

/-- `abs(A001511(n+1)-(A023416(n)+A000120(n)))` -/
def P192202541538708214.Spec : Prop :=
  ∀ n, P192202541538708214.a n = A238845 n

end A238845

/-! ## A238845.P9566858872700824034

`A000523(n+1)+A070940(n+1)-A070939(n)`
-/

namespace A238845.P9566858872700824034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A070940 (n + 1) - A070939 n)

end

end A238845.P9566858872700824034

namespace A238845

/-- `A000523(n+1)+A070940(n+1)-A070939(n)` -/
def P9566858872700824034.Spec : Prop :=
  ∀ n, P9566858872700824034.a n = A238845 n

end A238845

/-! ## A238845.P16023615052245079251

`A070940(n+1)-A035327(n)/A080079(n+1)`
-/

namespace A238845.P16023615052245079251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070940 (n + 1) : ℚ) - (A035327 n : ℚ) / (A080079 (n + 1) : ℚ)

end

end A238845.P16023615052245079251

namespace A238845

/-- `A070940(n+1)-A035327(n)/A080079(n+1)` -/
def P16023615052245079251.Spec : Prop :=
  ∀ n, P16023615052245079251.a n = (A238845 n : ℚ)

end A238845

/-! ## A238845.P15676726167569865712

`val(Δ[A048702(n)], 2)`
-/

namespace A238845.P15676726167569865712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A238845.P15676726167569865712

namespace A238845

/-- `val(Δ[A048702(n)], 2)` -/
def P15676726167569865712.Spec : Prop :=
  ∀ n, (P15676726167569865712.a n : ℤ) = A238845 n

end A238845

/-! ## A238845.P198011779251126674

`val(Δ[A342036(n)], 2)`
-/

namespace A238845.P198011779251126674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A238845.P198011779251126674

namespace A238845

/-- `val(Δ[A342036(n)], 2)` -/
def P198011779251126674.Spec : Prop :=
  ∀ n, (P198011779251126674.a n : ℤ) = A238845 n

end A238845

/-! ## A238845.P7749095472536764555

`val(Δ[A331891(n+1)], 2)`
-/

namespace A238845.P7749095472536764555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A238845.P7749095472536764555

namespace A238845

/-- `val(Δ[A331891(n+1)], 2)` -/
def P7749095472536764555.Spec : Prop :=
  ∀ n, (P7749095472536764555.a n : ℤ) = A238845 n

end A238845

/-!
# A238846: Expansion of (1-2*x)/(1-3*x+x^2)^2.

The programs for A238846, the canonical program `A238846.P8140967244062019446` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238846 has offset 0).

The definition of A238846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-6x+11x^2-6x^3+x^4))` (program `A238846.P8140967244062019446`, by `A238846.P8140967244062019446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238846.P8140967244062019446

`ogf((1-2x)/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238846

/-- `ogf((1-2x)/(1-6x+11x^2-6x^3+x^4))` -/
def P8140967244062019446.Spec : Prop :=
  ∀ n, P8140967244062019446.a n = A238846 n

theorem P8140967244062019446.correct : P8140967244062019446.Spec := by
  intro n
  simp only [A238846]

end A238846

/-! ## A238846.P5560626772614435074

`3*a(n-1)-a(n-2)+A001519(n)` with `a(0)=1, a(1)=4`
-/

namespace A238846.P5560626772614435074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - a (n - 2) + A001519 n

end

end A238846.P5560626772614435074

namespace A238846

/-- `3*a(n-1)-a(n-2)+A001519(n)` -/
def P5560626772614435074.Spec : Prop :=
  ∀ n, P5560626772614435074.a n = A238846 n

end A238846

/-! ## A238846.P58160861527984233

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=40`
-/

namespace A238846.P58160861527984233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13, 40] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A238846.P58160861527984233

namespace A238846

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P58160861527984233.Spec : Prop :=
  ∀ n, P58160861527984233.a n = A238846 n

end A238846

/-! ## A238846.P10250392633619904415

`2*A001870(n)-A001871(n)`
-/

namespace A238846.P10250392633619904415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001870 n - A001871 n

end

end A238846.P10250392633619904415

namespace A238846

/-- `2*A001870(n)-A001871(n)` -/
def P10250392633619904415.Spec : Prop :=
  ∀ n, P10250392633619904415.a n = A238846 n

end A238846

/-! ## A238846.P13889039982993058454

`∑[∑[A094864(n)]]`
-/

namespace A238846.P13889039982993058454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238846.P13889039982993058454

namespace A238846

/-- `∑[∑[A094864(n)]]` -/
def P13889039982993058454.Spec : Prop :=
  ∀ n, P13889039982993058454.a n = A238846 n

end A238846

/-! ## A238846.P12753188413636336863

`∑[A059502(n+1)]`
-/

namespace A238846.P12753188413636336863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238846.P12753188413636336863

namespace A238846

/-- `∑[A059502(n+1)]` -/
def P12753188413636336863.Spec : Prop :=
  ∀ n, P12753188413636336863.a n = A238846 n

end A238846

/-! ## A238846.P14568709812426897638

`A116845(n+2)-1`
-/

namespace A238846.P14568709812426897638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116845 (n + 2) - 1

end

end A238846.P14568709812426897638

namespace A238846

/-- `A116845(n+2)-1` -/
def P14568709812426897638.Spec : Prop :=
  ∀ n, P14568709812426897638.a n = A238846 n

end A238846

/-! ## A238846.P13148807119901971595

`A279735(n+2)/2`
-/

namespace A238846.P13148807119901971595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279735 (n + 2) : ℚ) / 2

end

end A238846.P13148807119901971595

namespace A238846

/-- `A279735(n+2)/2` -/
def P13148807119901971595.Spec : Prop :=
  ∀ n, P13148807119901971595.a n = (A238846 n : ℚ)

end A238846

/-! ## A238846.P34217281481793016

`∑[A102702(2*n)/2]`
-/

namespace A238846.P34217281481793016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102702 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238846.P34217281481793016

namespace A238846

/-- `∑[A102702(2*n)/2]` -/
def P34217281481793016.Spec : Prop :=
  ∀ n, P34217281481793016.a n = (A238846 n : ℚ)

end A238846

/-! ## A238846.P4614489162150865437

`A006367(2*n+3)/2`
-/

namespace A238846.P4614489162150865437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 (2 * n + 3) : ℚ) / 2

end

end A238846.P4614489162150865437

namespace A238846

/-- `A006367(2*n+3)/2` -/
def P4614489162150865437.Spec : Prop :=
  ∀ n, P4614489162150865437.a n = (A238846 n : ℚ)

end A238846

/-! ## A238846.P14286599112699648616

`A038731(n)+A001906(n)`
-/

namespace A238846.P14286599112699648616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n + A001906 n

end

end A238846.P14286599112699648616

namespace A238846

/-- `A038731(n)+A001906(n)` -/
def P14286599112699648616.Spec : Prop :=
  ∀ n, P14286599112699648616.a n = A238846 n

end A238846

/-! ## A238846.P7964563588090631813

`∑[record[A059502(A008676(n))]]`
-/

namespace A238846.P7964563588090631813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (A008676 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238846.P7964563588090631813

namespace A238846

/-- `∑[record[A059502(A008676(n))]]` -/
def P7964563588090631813.Spec : Prop :=
  ∀ n, P7964563588090631813.a n = A238846 n

end A238846

/-! ## A238846.P9377181261594603667

`A038731(n)+Δ[A001519(n)]`
-/

namespace A238846.P9377181261594603667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n + (f1 (n + 1) - f1 n)

end

end A238846.P9377181261594603667

namespace A238846

/-- `A038731(n)+Δ[A001519(n)]` -/
def P9377181261594603667.Spec : Prop :=
  ∀ n, P9377181261594603667.a n = A238846 n

end A238846

/-! ## A238846.P14046203780161891346

`record[A006367(n)/A141056(n)]`
-/

namespace A238846.P14046203780161891346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 n : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238846.P14046203780161891346

namespace A238846

/-- `record[A006367(n)/A141056(n)]` -/
def P14046203780161891346.Spec : Prop :=
  ∀ n, P14046203780161891346.a n = (A238846 n : ℚ)

end A238846

/-! ## A238846.P6678665464750467509

`A038731(n)+A000045(2*n)`
-/

namespace A238846.P6678665464750467509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n + A000045 (2 * n)

end

end A238846.P6678665464750467509

namespace A238846

/-- `A038731(n)+A000045(2*n)` -/
def P6678665464750467509.Spec : Prop :=
  ∀ n, P6678665464750467509.a n = A238846 n

end A238846

/-! ## A238846.P12485085475057491474

`A094966(2*n)+A038731(n)`
-/

namespace A238846.P12485085475057491474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) + A038731 n

end

end A238846.P12485085475057491474

namespace A238846

/-- `A094966(2*n)+A038731(n)` -/
def P12485085475057491474.Spec : Prop :=
  ∀ n, P12485085475057491474.a n = A238846 n

end A238846

/-! ## A238846.P2129948179141692498

`A094864(n+1)-A001519(n+1)`
-/

namespace A238846.P2129948179141692498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 (n + 1) - A001519 (n + 1)

end

end A238846.P2129948179141692498

namespace A238846

/-- `A094864(n+1)-A001519(n+1)` -/
def P2129948179141692498.Spec : Prop :=
  ∀ n, P2129948179141692498.a n = A238846 n

end A238846

/-! ## A238846.P4568368012846300372

`A059502(n+2)-A059505(n+1)`
-/

namespace A238846.P4568368012846300372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 2) - A059505 (n + 1)

end

end A238846.P4568368012846300372

namespace A238846

/-- `A059502(n+2)-A059505(n+1)` -/
def P4568368012846300372.Spec : Prop :=
  ∀ n, P4568368012846300372.a n = A238846 n

end A238846

/-! ## A238846.P6324167556776637839

`A129722(2*n)+A001906(n+1)`
-/

namespace A238846.P6324167556776637839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A001906 (n + 1)

end

end A238846.P6324167556776637839

namespace A238846

/-- `A129722(2*n)+A001906(n+1)` -/
def P6324167556776637839.Spec : Prop :=
  ∀ n, P6324167556776637839.a n = A238846 n

end A238846

/-! ## A238846.P12266900860539196546

`A129720(2*n)+A088305(n+1)`
-/

namespace A238846.P12266900860539196546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n) + A088305 (n + 1)

end

end A238846.P12266900860539196546

namespace A238846

/-- `A129720(2*n)+A088305(n+1)` -/
def P12266900860539196546.Spec : Prop :=
  ∀ n, P12266900860539196546.a n = A238846 n

end A238846

/-!
# A238847: Smallest k such that k*n^3 + 1 is prime.

The programs for A238847, there is no canonical definition to state claims against.
-/

/-! ## A238847.P14636084327339403712

`A034693(Δ[∑[n]²])`
-/

namespace A238847.P14636084327339403712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238847.P14636084327339403712

/-! ## A238847.P18392093045205718002

`A034693(floor(sqrt((n+1)^6+3)))%91`
-/

namespace A238847.P18392093045205718002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034693 (Nat.sqrt ((n + 1) ^ 6 + 3))) 91

end

end A238847.P18392093045205718002

/-! ## A238847.P12767312377088039087

`A222260(A034693((n+1)^3))`
-/

namespace A238847.P12767312377088039087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222260 (A034693 ((n + 1) ^ 3)).toNat

end

end A238847.P12767312377088039087

/-! ## A238847.P4064653995493112116

`A047994(A034693((n+1)^3)+1)`
-/

namespace A238847.P4064653995493112116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A034693 ((n + 1) ^ 3) + 1).toNat

end

end A238847.P4064653995493112116

/-!
# A238848: Smallest k such that k*n^3 - 1 is prime.

The programs for A238848, there is no canonical definition to state claims against.
-/

/-! ## A238848.P4578327431488597170

`A053989(Δ[∑[n]²])`
-/

namespace A238848.P4578327431488597170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238848.P4578327431488597170

/-! ## A238848.P5082287738171028968

`A053989((n+1)^3)%25`
-/

namespace A238848.P5082287738171028968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 ((n + 1) ^ 3)) 25

end

end A238848.P5082287738171028968

/-! ## A238848.P1273625720484832261

`A053989(floor(sqrt((n+1)^6+3)))+floor(acot(n))`
-/

namespace A238848.P1273625720484832261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (Nat.sqrt ((n + 1) ^ 6 + 3)) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A238848.P1273625720484832261

/-! ## A238848.P7678034876969986927

`A000027(A053989((n+1)^3))`
-/

namespace A238848.P7678034876969986927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053989 ((n + 1) ^ 3)).toNat

end

end A238848.P7678034876969986927

/-!
# A238849: Smallest k such that k*n^3 - 1 and k*n^3 + 1 are twin primes.

The programs for A238849, there is no canonical definition to state claims against.
-/

/-! ## A238849.P16478147269393232580

`A071558(Δ[∑[n]²])`
-/

namespace A238849.P16478147269393232580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238849.P16478147269393232580

/-! ## A238849.P3096508425006219788

`A000027(A071558((n+1)^3))`
-/

namespace A238849.P3096508425006219788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A071558 ((n + 1) ^ 3)).toNat

end

end A238849.P3096508425006219788

/-! ## A238849.P16936463875882065130

`ceil(acot(n))*A071558(A184628(n+1))`
-/

namespace A238849.P16936463875882065130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A071558 (A184628 (n + 1)).toNat

end

end A238849.P16936463875882065130

/-! ## A238849.P2347440152844210034

`A071256(A000578(n+1))/A000578(n+1)`
-/

namespace A238849.P2347440152844210034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (A000578 (n + 1)).toNat : ℚ) / (A000578 (n + 1) : ℚ)

end

end A238849.P2347440152844210034

/-! ## A238849.P3918929033526534326

`A011602(A153279(n))*A071558(A000578(n+1))`
-/

namespace A238849.P3918929033526534326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (A153279 n).toNat * A071558 (A000578 (n + 1)).toNat

end

end A238849.P3918929033526534326

/-!
# A238850: Right-truncatable reversible primes in base 10.

The programs for A238850, there is no canonical definition to state claims against.
-/

/-! ## A238850.P16316344755119484612

`p?[A151764(A024770(n+1))]`
-/

namespace A238850.P16316344755119484612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A024770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238850.P16316344755119484612

/-! ## A238850.P8062406757659312646

`∩[A007500(n+1), A024770(n+1)]`
-/

namespace A238850.P8062406757659312646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238850.P8062406757659312646

/-! ## A238850.P8059472286376432986

`∩[A024770(n+1), A062895(n+1)]`
-/

namespace A238850.P8059472286376432986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238850.P8059472286376432986

/-! ## A238850.P16881948691144532550

`∩[A024770(n+1), A069706(n+1)]`
-/

namespace A238850.P16881948691144532550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238850.P16881948691144532550

/-!
# A238851: Right-truncatable, reversible primes in base 16.

The programs for A238851, there is no canonical definition to state claims against.
-/

/-! ## A238851.P579415481860579104

`A000040(∑[A008287(C(n, 4))])`
-/

namespace A238851.P579415481860579104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238851.P579415481860579104

/-! ## A238851.P7225339121284222487

`filter[A103144(n+1), A119981(#)]`
-/

namespace A238851.P7225339121284222487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A119981 (f1 j).toNat = 1) n)

end

end A238851.P7225339121284222487

/-! ## A238851.P2087034745028057176

`filter[A384744(n+1), A119981(#)]`
-/

namespace A238851.P2087034745028057176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A119981 (f1 j).toNat = 1) n)

end

end A238851.P2087034745028057176

/-! ## A238851.P3079355065908530215

`p?[∑[A325471(A325511(2*(n+1)))]]`
-/

namespace A238851.P3079355065908530215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325471 (A325511 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238851.P3079355065908530215

/-! ## A238851.P4193775087654536804

`eq[A003415(n), A064881(A097876(n))]`
-/

namespace A238851.P4193775087654536804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (A097876 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238851.P4193775087654536804

/-!
# A238852: Right-truncatable, reversible primes in base 100.

The programs for A238852, there is no canonical definition to state claims against.
-/

/-! ## A238852.P13157276999540964369

`∩[A061022(n+1), A387963(n+1)]`
-/

namespace A238852.P13157276999540964369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238852.P13157276999540964369

/-!
# A238856: Number of digits of the largest right-truncatable reversible prime in base n.

The programs for A238856, there is no canonical definition to state claims against.
-/

/-! ## A238856.P778841508966020373

`A007302(lcm(A005449(n), A098850(n)))`
-/

namespace A238856.P778841508966020373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.lcm (A005449 n) (A098850 n))

end

end A238856.P778841508966020373

/-! ## A238856.P2231572780328534254

`A001222(lcm(A202349(n+1), A310761(n)))`
-/

namespace A238856.P2231572780328534254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A202349 (n + 1)) (A310761 n))

end

end A238856.P2231572780328534254

/-! ## A238856.P1383809747888341944

`A329362(lcm(A121855(3*n), A329362(n)))`
-/

namespace A238856.P1383809747888341944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (Int.lcm (A121855 (3 * n)) (A329362 n))

end

end A238856.P1383809747888341944

/-! ## A238856.P11590150771024423515

`A057514(A134617(3*n+2)*A243071(n+1))`
-/

namespace A238856.P11590150771024423515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A134617 (3 * n + 2) * A243071 (n + 1)).toNat

end

end A238856.P11590150771024423515

/-! ## A238856.P11917747092693518116

`A265744(A134331(n+1)^(A327939(2*n+3)+1))`
-/

namespace A238856.P11917747092693518116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (SequenceMachineLib.roundAway ((A134331 (n + 1) : ℚ) ^ (A327939 (2 * n + 3) + 1 : ℤ))).toNat

end

end A238856.P11917747092693518116

/-!
# A238857: Array read by rows: row n lists total number of m-digit right-truncatable reversible primes in base n.

The programs for A238857, there is no canonical definition to state claims against.
-/

/-! ## A238857.P12547687181897458542

`A327624(3*(n+1))%A327669(A327664(n))`
-/

namespace A238857.P12547687181897458542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327624 (3 * (n + 1))) (A327669 (A327664 n).toNat)

end

end A238857.P12547687181897458542

/-!
# A238858: Triangle T(n,k) read by rows: T(n,k) is the number of length-n ascent sequences with exactly k descents.

The programs for A238858, there is no canonical definition to state claims against.
-/

/-! ## A238858.P11928223579589636220

`A000120(A005582(A158830(n+1)))`
-/

namespace A238858.P11928223579589636220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005582 (A158830 (n + 1)).toNat).toNat

end

end A238858.P11928223579589636220

/-! ## A238858.P17692900048938755591

`A000120(A255747(A158830(n+1)²))`
-/

namespace A238858.P17692900048938755591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A255747 (A158830 (n + 1) ^ 2).toNat).toNat

end

end A238858.P17692900048938755591

/-! ## A238858.P10021646697153192585

`A086971(C(A073256(2*n+5), A238121(n)))`
-/

namespace A238858.P10021646697153192585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (Nat.choose (A073256 (2 * n + 5)).toNat (A238121 n).toNat)

end

end A238858.P10021646697153192585

/-! ## A238858.P7149348430582671005

`A341904(n)%A069544(A359907(3*n+4))`
-/

namespace A238858.P7149348430582671005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341904 n) (A069544 (A359907 (3 * n + 4)).toNat)

end

end A238858.P7149348430582671005

/-!
# A238859: Compositions with subdiagonal growth: number of compositions (p0, p1, p2, ...) of n with pi - p0 <= i.

The programs for A238859, there is no canonical definition to state claims against.
-/

/-! ## A238859.P2295680307784441308

`A171682(n+1)+A000007(n)-A008930(n)`
-/

namespace A238859.P2295680307784441308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) + (A000007 n - A008930 n)

end

end A238859.P2295680307784441308

/-! ## A238859.P15442119925051558284

`A171682(n+1)+A008930(n)*A057428(n)`
-/

namespace A238859.P15442119925051558284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) + A008930 n * A057428 n

end

end A238859.P15442119925051558284

/-! ## A238859.P4020372238481839811

`A171682(n+1)-A008930(n)*A057427(n)`
-/

namespace A238859.P4020372238481839811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) - A008930 n * A057427 n

end

end A238859.P4020372238481839811

/-! ## A238859.P9840677516014798939

`A171682(n+1)+A008683(A008574(n))-A008930(n)`
-/

namespace A238859.P9840677516014798939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) + (A008683 (A008574 n).toNat - A008930 n)

end

end A238859.P9840677516014798939

/-! ## A238859.P15024643893289751433

`A171682(n+1)-A008930(n)%A000079(n)`
-/

namespace A238859.P15024643893289751433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) - Int.tmod (A008930 n) (A000079 n)

end

end A238859.P15024643893289751433

/-!
# A238860: Partitions with superdiagonal growth: number of partitions (p0, p1, p2, ...) of n with pi - p0 >= i.

The programs for A238860, there is no canonical definition to state claims against.
-/

/-! ## A238860.P18206831419155700007

`∑[A005044(n)]-A073097(A130315(n+1))`
-/

namespace A238860.P18206831419155700007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073097 (A130315 (n + 1)).toNat

end

end A238860.P18206831419155700007

/-!
# A238861: Compositions with superdiagonal growth: number of compositions (p0, p1, p2, ...) of n with pi - p0 >= i.

The programs for A238861, there is no canonical definition to state claims against.
-/

/-! ## A238861.P9459096633831764041

`A000196(A247143(n)+A001383(n))`
-/

namespace A238861.P9459096633831764041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A247143 n + A001383 n).toNat

end

end A238861.P9459096633831764041

/-! ## A238861.P15158827316694711044

`A000196(Δ[A005683(n+3)+A005673(n)])`
-/

namespace A238861.P15158827316694711044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005683 (n + 3) + A005673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A238861.P15158827316694711044

/-! ## A238861.P2369029292792030332

`A139338(A237834(n+1)+1)`
-/

namespace A238861.P2369029292792030332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A237834 (n + 1) + 1).toNat

end

end A238861.P2369029292792030332

/-! ## A238861.P16448615503730264636

`A112318(A027193(n)+A003982(n))`
-/

namespace A238861.P16448615503730264636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A027193 n + A003982 n).toNat

end

end A238861.P16448615503730264636

/-! ## A238861.P15133560798215699675

`A112318(or(A027193(n), A035444(n)))`
-/

namespace A238861.P15133560798215699675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (Int.lor (A027193 n) (A035444 n)).toNat

end

end A238861.P15133560798215699675

/-!
# A238862: Inverse permutation to A239965.

The programs for A238862, there is no canonical definition to state claims against.
-/

/-! ## A238862.P15013234169855873017

`A240024(n+1)-A000720(A240024(n+1))`
-/

namespace A238862.P15013234169855873017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240024 (n + 1) - A000720 (A240024 (n + 1)).toNat

end

end A238862.P15013234169855873017

/-! ## A238862.P10520890616352262941

`A022447(A240024(n+1))`
-/

namespace A238862.P10520890616352262941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A240024 (n + 1)).toNat

end

end A238862.P10520890616352262941

/-! ## A238862.P8483625730018089522

`A026233(A240024(n+1)+A000007(n))`
-/

namespace A238862.P8483625730018089522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A240024 (n + 1) + A000007 n).toNat

end

end A238862.P8483625730018089522

/-! ## A238862.P7343828522982172888

`A026233(A240024(n+1))%A020742(n)`
-/

namespace A238862.P7343828522982172888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026233 (A240024 (n + 1)).toNat) (A020742 n)

end

end A238862.P7343828522982172888

/-! ## A238862.P4629329436211153179

`A026233(A240024(n+1)%A069272(n+1))`
-/

namespace A238862.P4629329436211153179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.tmod (A240024 (n + 1)) (A069272 (n + 1))).toNat

end

end A238862.P4629329436211153179

/-! ## A238862.P12887326620339650261

`A026233(gcd(A052627(n), A240024(n+1)))`
-/

namespace A238862.P12887326620339650261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.gcd (A052627 n) (A240024 (n + 1)))

end

end A238862.P12887326620339650261

/-!
# A238863: Number of partitions of n where the difference between consecutive parts is at most 3.

The programs for A238863, there is no canonical definition to state claims against.
-/

/-! ## A238863.P3870470215957354526

`A118759(∑[A035937(n)])`
-/

namespace A238863.P3870470215957354526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238863.P3870470215957354526

/-! ## A238863.P9246090456934598150

`A000188(∑[A035937(n)]²)`
-/

namespace A238863.P9246090456934598150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A238863.P9246090456934598150

/-! ## A238863.P6585591571000284888

`A000194(∑[A035937(n)]²)`
-/

namespace A238863.P6585591571000284888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A238863.P6585591571000284888

/-! ## A238863.P16096474228253148574

`∑[A035937(n)%A112013(n+1)]`
-/

namespace A238863.P16096474228253148574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035937 n) (A112013 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238863.P16096474228253148574

/-! ## A238863.P16170556717270234847

`A083375(A001255(n))`
-/

namespace A238863.P16170556717270234847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A001255 n).toNat

end

end A238863.P16170556717270234847

/-!
# A238864: Number of partitions of n where the difference between consecutive parts is at most 4.

The programs for A238864, there is no canonical definition to state claims against.
-/

/-! ## A238864.P5830163270960346412

`∑[A048766(A095368(n+3))]`
-/

namespace A238864.P5830163270960346412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A095368 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238864.P5830163270960346412

/-! ## A238864.P14631277992033424208

`A280937(n)+A025469(A001255(n))`
-/

namespace A238864.P14631277992033424208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280937 n + A025469 (A001255 n).toNat

end

end A238864.P14631277992033424208

/-! ## A238864.P2447189083832108521

`A280937(n)+A116378(A077168(n))`
-/

namespace A238864.P2447189083832108521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280937 n + A116378 (A077168 n).toNat

end

end A238864.P2447189083832108521

/-! ## A238864.P13442025044386948495

`A280937(n)+A126010(A075657(n+1))`
-/

namespace A238864.P13442025044386948495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280937 n + A126010 (A075657 (n + 1)).toNat

end

end A238864.P13442025044386948495

/-! ## A238864.P5841593223524702848

`A001462(A006171(n)^A055229(3*n+1))`
-/

namespace A238864.P5841593223524702848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((A006171 n : ℚ) ^ (A055229 (3 * n + 1) : ℤ))).toNat

end

end A238864.P5841593223524702848

/-!
# A238865: Number of partitions of n where the difference between consecutive parts is at most 5.

The programs for A238865, there is no canonical definition to state claims against.
-/

/-! ## A238865.P6920212464854052084

`A003056(A309267(n)-a(n-1)+1)` with `a(0)=1`
-/

namespace A238865.P6920212464854052084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (A309267 n - a (n - 1) + 1).toNat

end

end A238865.P6920212464854052084

/-! ## A238865.P16357552609387454744

`A003056(∑[A000217(A131945(n))])`
-/

namespace A238865.P16357552609387454744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A131945 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238865.P16357552609387454744

/-! ## A238865.P1996514274720499185

`A003056(A265947(n)+A129853(n))`
-/

namespace A238865.P1996514274720499185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A265947 n + A129853 n).toNat

end

end A238865.P1996514274720499185

/-! ## A238865.P8608832343733261540

`A002024(A000930(n)*A033638(n))`
-/

namespace A238865.P8608832343733261540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000930 n * A033638 n).toNat

end

end A238865.P8608832343733261540

/-! ## A238865.P15160012702622875405

`A000194(A298407(n))`
-/

namespace A238865.P15160012702622875405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A298407 n).toNat

end

end A238865.P15160012702622875405

/-!
# A238866: Number of partitions of n where the difference between consecutive parts is at most 6.

The programs for A238866, there is no canonical definition to state claims against.
-/

/-! ## A238866.P10564095069179602912

`A162781(A076921(n+1))+A027341(n)`
-/

namespace A238866.P10564095069179602912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A076921 (n + 1)).toNat + A027341 n

end

end A238866.P10564095069179602912

/-! ## A238866.P1698825350928559332

`A000041(n)-A351831(A218027(n+3))`
-/

namespace A238866.P1698825350928559332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A351831 (A218027 (n + 3)).toNat

end

end A238866.P1698825350928559332

/-! ## A238866.P13677398275699589039

`A003056(A174465(n)+A131689(n))`
-/

namespace A238866.P13677398275699589039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A174465 n + A131689 n).toNat

end

end A238866.P13677398275699589039

/-! ## A238866.P16546099514119205647

`A003056(A237665(n)+A174465(n))`
-/

namespace A238866.P16546099514119205647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A237665 n + A174465 n).toNat

end

end A238866.P16546099514119205647

/-! ## A238866.P1596573102378024082

`A003056(A280197(n)+A174465(n))`
-/

namespace A238866.P1596573102378024082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A280197 n + A174465 n).toNat

end

end A238866.P1596573102378024082

/-!
# A238867: Number of partitions of n where the difference between consecutive parts is at most 7.

The programs for A238867, there is no canonical definition to state claims against.
-/

/-! ## A238867.P2685942407079606200

`A167520(A115671(n))+A000701(n)`
-/

namespace A238867.P2685942407079606200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A115671 n).toNat + A000701 n

end

end A238867.P2685942407079606200

/-! ## A238867.P7171511383566208722

`A051903(A290622(n))+A027342(n)`
-/

namespace A238867.P7171511383566208722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A290622 n).toNat + A027342 n

end

end A238867.P7171511383566208722

/-! ## A238867.P14910993780318766575

`A337037(A027338(n))`
-/

namespace A238867.P14910993780318766575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (A027338 n).toNat

end

end A238867.P14910993780318766575

/-! ## A238867.P8724104501398361162

`or(A046146(A185213(n)), A341913(n))`
-/

namespace A238867.P8724104501398361162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046146 (A185213 n).toNat) (A341913 (n + 45))

end

end A238867.P8724104501398361162

/-! ## A238867.P10383844151275611124

`or(A008638(n), A259481(A391681(n+1)))`
-/

namespace A238867.P10383844151275611124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008638 n) (A259481 (A391681 (n + 1)).toNat)

end

end A238867.P10383844151275611124

/-!
# A238868: Number of partitions of n where the difference between consecutive parts is at most 8.

The programs for A238868, there is no canonical definition to state claims against.
-/

/-! ## A238868.P7285184265180574745

`A179184(A127193(n+1))+A027343(n)`
-/

namespace A238868.P7285184265180574745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A127193 (n + 1)).toNat + A027343 n

end

end A238868.P7285184265180574745

/-! ## A238868.P4524458170435457051

`A343609(n)+A072769(A299775(n+1))+A027343(n)`
-/

namespace A238868.P4524458170435457051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 n + (A072769 (A299775 (n + 1)).toNat + A027343 n)

end

end A238868.P4524458170435457051

/-! ## A238868.P8232261905328783654

`A060576(A122055(n))+A027343(n)`
-/

namespace A238868.P8232261905328783654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A122055 n).toNat + A027343 n

end

end A238868.P8232261905328783654

/-! ## A238868.P4936800226932791850

`A057427(A219905(n))+A027343(n)`
-/

namespace A238868.P4936800226932791850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A219905 n).toNat + A027343 n

end

end A238868.P4936800226932791850

/-! ## A238868.P5106732035207179011

`A332280(n)+A181101(A036441(n+3))`
-/

namespace A238868.P5106732035207179011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + A181101 (A036441 (n + 3)).toNat

end

end A238868.P5106732035207179011

/-!
# A238869: Number of partitions of n where the difference between consecutive parts is at most 9.

The programs for A238869, there is no canonical definition to state claims against.
-/

/-! ## A238869.P12394464497834664511

`A261776(n)+A001221(A146655(n+1))`
-/

namespace A238869.P12394464497834664511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 n + A001221 (A146655 (n + 1)).toNat

end

end A238869.P12394464497834664511

/-! ## A238869.P11432652197449465009

`A057427(A011846(n))+A027344(n)`
-/

namespace A238869.P11432652197449465009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A011846 n).toNat + A027344 n

end

end A238869.P11432652197449465009

/-! ## A238869.P13100101572949204940

`A057427(A033483(n))+A027344(n)`
-/

namespace A238869.P13100101572949204940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033483 n).toNat + A027344 n

end

end A238869.P13100101572949204940

/-! ## A238869.P8234514300956212688

`A057427(A185043(n))+A027344(n)`
-/

namespace A238869.P8234514300956212688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A185043 n).toNat + A027344 n

end

end A238869.P8234514300956212688

/-! ## A238869.P8239047577955548403

`A368990(A078008(n))+A261776(n)`
-/

namespace A238869.P8239047577955548403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368990 (A078008 n).toNat + A261776 n

end

end A238869.P8239047577955548403

/-!
# A238871: Number of weakly unimodal compositions of n with absolute difference of successive parts <= 1.

The programs for A238871, there is no canonical definition to state claims against.
-/

/-! ## A238871.P13194903105801336948

`A362962(A391629(n+1))`
-/

namespace A238871.P13194903105801336948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362962 (A391629 (n + 1)).toNat

end

end A238871.P13194903105801336948

/-! ## A238871.P12996379952029219532

`A358909(n+1)-A001222(A089472(n))`
-/

namespace A238871.P12996379952029219532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358909 (n + 1) - A001222 (A089472 n).toNat

end

end A238871.P12996379952029219532

/-! ## A238871.P14600586149755138923

`round(A360620(2*(n+1))/A360622(n+4))`
-/

namespace A238871.P14600586149755138923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360620 (2 * (n + 1)) : ℚ) / (A360622 (n + 4) : ℚ))

end

end A238871.P14600586149755138923

/-! ## A238871.P13563064340227120745

`xor(A140692(A035985(n)), A308928(n))`
-/

namespace A238871.P13563064340227120745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140692 (A035985 n).toNat) (A308928 n)

end

end A238871.P13563064340227120745

/-! ## A238871.P13179145685060956702

`A000041(n+1)-A339890(A014137(n))`
-/

namespace A238871.P13179145685060956702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A339890 (A014137 n).toNat

end

end A238871.P13179145685060956702

/-!
# A238872: Number of strongly unimodal compositions of n with absolute difference of successive parts = 1.

The programs for A238872, there is no canonical definition to state claims against.
-/

/-! ## A238872.P11141333399745495184

`abs(A292511(abs(1-n)))`
-/

namespace A238872.P11141333399745495184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A292511 |1 - (n : ℤ)|.toNat)|

end

end A238872.P11141333399745495184

/-! ## A238872.P16872657729753500411

`gcd(C(2, n), A260195(n))`
-/

namespace A238872.P16872657729753500411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A260195 n)

end

end A238872.P16872657729753500411

/-! ## A238872.P5537957129572780037

`A260195(floor(acot(n)+n))`
-/

namespace A238872.P5537957129572780037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A238872.P5537957129572780037

/-! ## A238872.P5916189081677363467

`A260195(round(acot(n)+n))`
-/

namespace A238872.P5916189081677363467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A238872.P5916189081677363467

/-! ## A238872.P638277469883876941

`A260195(n^floor(atan(n)))`
-/

namespace A238872.P638277469883876941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A238872.P638277469883876941

/-! ## A238872.P5207124462796159350

`A260195(C(n, floor(atan(n))))`
-/

namespace A238872.P5207124462796159350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A238872.P5207124462796159350

/-! ## A238872.P18357294654454172114

`A260195(or(n, floor(acot(n))))`
-/

namespace A238872.P18357294654454172114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A238872.P18357294654454172114

/-! ## A238872.P2716504461058634399

`A260195(xor(n, floor(acot(n))))`
-/

namespace A238872.P2716504461058634399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A238872.P2716504461058634399

/-! ## A238872.P16758921869080772108

`A260195(abs(1-n)+1)`
-/

namespace A238872.P16758921869080772108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (|1 - (n : ℤ)| + 1).toNat

end

end A238872.P16758921869080772108

/-! ## A238872.P7821948673582384154

`A028310(A260195(n))`
-/

namespace A238872.P7821948673582384154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A260195 n).toNat

end

end A238872.P7821948673582384154

/-!
# A238873: Number of superdiagonal partitions: partitions (p1, p2, p3, ...) of n such that pi >= i.

The programs for A238873, there is no canonical definition to state claims against.
-/

/-! ## A238873.P10302526045643907880

`A000041(n)-A387118(n)`
-/

namespace A238873.P10302526045643907880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387118 n

end

end A238873.P10302526045643907880

/-! ## A238873.P15002143731439941148

`A213598(n)-A387118(n)`
-/

namespace A238873.P15002143731439941148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A387118 n

end

end A238873.P15002143731439941148

/-! ## A238873.P655070458842334311

`A238343(A000217(n))-A387118(n)`
-/

namespace A238873.P655070458842334311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A387118 n

end

end A238873.P655070458842334311

/-! ## A238873.P14031332511943660307

`A143434(A207050(n+1))+A042955(n)`
-/

namespace A238873.P14031332511943660307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (A207050 (n + 1)).toNat + A042955 n

end

end A238873.P14031332511943660307

/-! ## A238873.P6538563561713317711

`A001055(A000079(n))-A387118(n)`
-/

namespace A238873.P6538563561713317711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A387118 n

end

end A238873.P6538563561713317711

/-!
# A238874: Strictly superdiagonal compositions: compositions (p1, p2, p3, ...) of n such that pi > i.

The programs for A238874, there is no canonical definition to state claims against.
-/

/-! ## A238874.P9995549847305067101

`Δ[Δ[A063978(A028310(n)-1)]]`
-/

namespace A238874.P9995549847305067101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238874.P9995549847305067101

/-! ## A238874.P4911515706346425382

`Δ[A219282(n)]+A137688(n)%2`
-/

namespace A238874.P4911515706346425382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A137688 n) 2

end

end A238874.P4911515706346425382

/-! ## A238874.P5028821395920008035

`A219282(n+1)-A219282(n)%A063978(n)`
-/

namespace A238874.P5028821395920008035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 (n + 1) - Int.tmod (A219282 n) (A063978 n)

end

end A238874.P5028821395920008035

/-! ## A238874.P14521928334140380832

`Δ[A219282(n)+and(1, A228233(n+1))]`
-/

namespace A238874.P14521928334140380832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n + Int.land 1 (A228233 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238874.P14521928334140380832

/-! ## A238874.P15757002830234901087

`Δ[A219282(n)%A219282(n+2)]`
-/

namespace A238874.P15757002830234901087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219282 n) (A219282 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238874.P15757002830234901087

/-! ## A238874.P8782743813792485492

`Δ[A219282(n)%(2^n)]`
-/

namespace A238874.P8782743813792485492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219282 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238874.P8782743813792485492

/-! ## A238874.P13273623153859227309

`A352522(∑[n])`
-/

namespace A238874.P13273623153859227309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238874.P13273623153859227309

/-!
# A238876: Partitions with subdiagonal growth: number of partitions (p0, p1, p2, ...) of n with pi - p0 <= i.

The programs for A238876, there is no canonical definition to state claims against.
-/

/-! ## A238876.P12199687424767474047

`xor(A035956(n+1), A067397(A050370(2^(n+1))))`
-/

namespace A238876.P12199687424767474047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035956 (n + 1)) (A067397 (A050370 (2 ^ (n + 1))).toNat)

end

end A238876.P12199687424767474047

/-! ## A238876.P11719449852898482499

`xor(A208856(n), A331416(A032302(n)))`
-/

namespace A238876.P11719449852898482499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A208856 n) (A331416 (A032302 n).toNat)

end

end A238876.P11719449852898482499

/-! ## A238876.P4599590850589252912

`A238482(n+1)-A010060(A000583(n))`
-/

namespace A238876.P4599590850589252912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238482 (n + 1) - A010060 (A000583 n).toNat

end

end A238876.P4599590850589252912

/-!
# A238877: Members of a pair (a,b) such that a is the number of Abelian groups of order n and b is the number of non-Abelian groups of order n.

The programs for A238877, there is no canonical definition to state claims against.
-/

/-! ## A238877.P17145068046948613964

`A338021(A173579(2*n+5)+A100980(n+1))`
-/

namespace A238877.P17145068046948613964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (A173579 (2 * n + 5) + A100980 (n + 1)).toNat

end

end A238877.P17145068046948613964

/-! ## A238877.P14243500041983342663

`A196563(A214899(n)/A242784(n))`
-/

namespace A238877.P14243500041983342663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((A214899 n : ℚ) / (A242784 n : ℚ))).toNat

end

end A238877.P14243500041983342663

/-! ## A238877.P16728447061118270654

`A048881(gcd(A072843(n), A265368(n)))`
-/

namespace A238877.P16728447061118270654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.gcd (A072843 n) (A265368 n))

end

end A238877.P16728447061118270654

/-! ## A238877.P12381112467341088898

`A196563(or(A025458(n), A214899(n)))`
-/

namespace A238877.P12381112467341088898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.lor (A025458 n) (A214899 n)).toNat

end

end A238877.P12381112467341088898

/-! ## A238877.P5884152564282172514

`A196563(A214899(n)+A035699(n+1))`
-/

namespace A238877.P5884152564282172514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A214899 n + A035699 (n + 1)).toNat

end

end A238877.P5884152564282172514

/-!
# A238879: Row sums of the triangle of generalized ballot numbers A238762.

The programs for A238879, there is no canonical definition to state claims against.
-/

/-! ## A238879.P11891554868203134710

`A079508(∑[n%2+n]+2)`
-/

namespace A238879.P11891554868203134710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079508 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238879.P11891554868203134710

/-! ## A238879.P3168762164384266137

`A108263(∑[∑[(n+1)%2]]+n+2)`
-/

namespace A238879.P3168762164384266137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2))

end

end A238879.P3168762164384266137

/-! ## A238879.P18193579238065116095

`A037955(n+2)/ceil(C(or(1, n), n)/2)`
-/

namespace A238879.P18193579238065116095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037955 (n + 2) : ℚ) / (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ : ℚ)

end

end A238879.P18193579238065116095

/-! ## A238879.P17701940335427273441

`A086810(A101881(n+1))`
-/

namespace A238879.P17701940335427273441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A101881 (n + 1)).toNat

end

end A238879.P17701940335427273441

/-! ## A238879.P6902090752617978929

`A104978(A134519(n+1))`
-/

namespace A238879.P6902090752617978929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A134519 (n + 1)).toNat

end

end A238879.P6902090752617978929

/-!
# A238880: The sequence is a succession of pairs of nonnegative integers. The digits in each pair form a palindromic pattern. The sequence starts with a(1) = 0 and is always extended with the smallest available integer not yet present in the sequence.

The programs for A238880, there is no canonical definition to state claims against.
-/

/-! ## A238880.P2843200780588244601

`A317330(A137278(n²)+n)`
-/

namespace A238880.P2843200780588244601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317330 (A137278 (n ^ 2) + (n : ℤ)).toNat

end

end A238880.P2843200780588244601

/-! ## A238880.P2319740893344103023

`A317330(n+1)%A080534(n)`
-/

namespace A238880.P2319740893344103023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317330 (n + 1)) (A080534 n)

end

end A238880.P2319740893344103023

/-! ## A238880.P5395526438964186823

`A317330(n+1)^A288326(n)!`
-/

namespace A238880.P5395526438964186823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317330 (n + 1) ^ Nat.factorial (A288326 n).toNat

end

end A238880.P5395526438964186823

/-! ## A238880.P18126150498239909640

`A317330(n+1)+A000007(A201639(n))`
-/

namespace A238880.P18126150498239909640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317330 (n + 1) + A000007 (A201639 n).toNat

end

end A238880.P18126150498239909640

/-! ## A238880.P1817334985272407561

`A317330(n+1)+A000007(A291057(n))`
-/

namespace A238880.P1817334985272407561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317330 (n + 1) + A000007 (A291057 n).toNat

end

end A238880.P1817334985272407561

/-!
# A238881: Number of odd primes p < 2*n with prime(n*(p+1)/2) + n*(p+1)/2 prime.

The programs for A238881, there is no canonical definition to state claims against.
-/

/-! ## A238881.P713410486687125225

`A023416(or(A014312(n+1), A014314(n)))`
-/

namespace A238881.P713410486687125225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (A014312 (n + 1)) (A014314 n)).toNat

end

end A238881.P713410486687125225

/-! ## A238881.P458042975768543834

`A368239(A181141(n+1))%A054541(3*n+5)`
-/

namespace A238881.P458042975768543834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368239 (A181141 (n + 1)).toNat) (A054541 (3 * n + 5))

end

end A238881.P458042975768543834

/-!
# A238882: Coefficients in a variant of Ramanujan's wrong identity for prime number partitions.

The programs for A238882, there is no canonical definition to state claims against.
-/

/-! ## A238882.P6793270044164640207

`A132382(A223943(n+1)%A273040(n+1))`
-/

namespace A238882.P6793270044164640207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132382 (Int.tmod (A223943 (n + 1)) (A273040 (n + 1))).toNat

end

end A238882.P6793270044164640207

/-! ## A238882.P169261330562763173

`A130595(A194270(3*n+2)%A008315(n))`
-/

namespace A238882.P169261330562763173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (Int.tmod (A194270 (3 * n + 2)) (A008315 n)).toNat

end

end A238882.P169261330562763173

/-! ## A238882.P11581793120065980640

`A110503(xor(A030102(n+1), A033627(2*(n+1))))`
-/

namespace A238882.P11581793120065980640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (Int.xor (A030102 (n + 1)) (A033627 (2 * (n + 1)))).toNat

end

end A238882.P11581793120065980640

/-!
# A238885: Array: row n gives number of times each possible lower triangular partition L(p) occurs as p ranges through the partitions of n.

The programs for A238885, there is no canonical definition to state claims against.
-/

/-! ## A238885.P18004653877202218973

`A238325(∑[A260189(n+1)!])`
-/

namespace A238885.P18004653877202218973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A260189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238885.P18004653877202218973

/-! ## A238885.P12666059618667301695

`A238325(n+1)+A000038(A008885(n))`
-/

namespace A238885.P12666059618667301695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238325 (n + 1) + A000038 (A008885 n).toNat

end

end A238885.P12666059618667301695

/-! ## A238885.P491360634647792010

`A238325(A187829(n+1)%A020695(n))`
-/

namespace A238885.P491360634647792010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238325 (Int.tmod (A187829 (n + 1)) (A020695 n)).toNat

end

end A238885.P491360634647792010

/-!
# A238886: Number of lower triangular partitions of n.

The programs for A238886, there is no canonical definition to state claims against.
-/

/-! ## A238886.P939643221886302145

`ceil(∑[A084506(A035382(n))]/2)`
-/

namespace A238886.P939643221886302145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A035382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A238886.P939643221886302145

/-! ## A238886.P4341597037590308075

`ceil(∑[A083036(A085089(n+1))/2])`
-/

namespace A238886.P4341597037590308075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083036 (A085089 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A238886.P4341597037590308075

/-! ## A238886.P2487024982931266583

`round(∑[A048766(A004682(n+1))/2])`
-/

namespace A238886.P2487024982931266583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 (A004682 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238886.P2487024982931266583

/-! ## A238886.P2855474398816306830

`A065033(∑[A048766(A004682(n+1))])`
-/

namespace A238886.P2855474398816306830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A004682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238886.P2855474398816306830

/-!
# A238887: Cumulated number of leaves in computations trees induced by process trees of size n.

The programs for A238887, there is no canonical definition to state claims against.
-/

/-! ## A238887.P9967249360449022017

`ceil((∏{p}[A000772(n+1)², #]-char[5]+3)*n/7)`
-/

namespace A238887.P9967249360449022017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000772 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 3 : ℚ) * ((n : ℚ) / 7)⌉

end

end A238887.P9967249360449022017

/-! ## A238887.P8518457717652217804

`A289440(A271960(n+1)+A112798(3*(n+1)))`
-/

namespace A238887.P8518457717652217804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A271960 (n + 1) + A112798 (3 * (n + 1))).toNat

end

end A238887.P8518457717652217804

/-!
# A238888: Number A(n,k) of self-inverse permutations p on [n] with displacement of elements restricted by k: |p(i)-i| <= k, square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A238888, there is no canonical definition to state claims against.
-/

/-! ## A238888.P8135813129577886804

`A114214(A215086(n)%A114226(n))`
-/

namespace A238888.P8135813129577886804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (Int.tmod (A215086 n) (A114226 n)).toNat

end

end A238888.P8135813129577886804

/-! ## A238888.P15996126339447860146

`A238598(A276921(n))`
-/

namespace A238888.P15996126339447860146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A276921 n).toNat

end

end A238888.P15996126339447860146

/-! ## A238888.P15073091276582208748

`A144406(A135381(n)+1)`
-/

namespace A238888.P15073091276582208748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144406 (A135381 n + 1).toNat

end

end A238888.P15073091276582208748

/-! ## A238888.P2092176938327637880

`A274011(A291709(n)+1)`
-/

namespace A238888.P2092176938327637880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A291709 n + 1).toNat

end

end A238888.P2092176938327637880

/-! ## A238888.P16305655403100968418

`A347643(A325201(n+1))`
-/

namespace A238888.P16305655403100968418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A325201 (n + 1)).toNat

end

end A238888.P16305655403100968418

/-!
# A238889: Number T(n,k) of self-inverse permutations p on [n] where the maximal displacement of an element equals k: k = max_{i=1..n} |p(i)-i|; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A238889, there is no canonical definition to state claims against.
-/

/-! ## A238889.P13894383213634064416

`A134452(A340606(3*n+5))+A055277(n+1)`
-/

namespace A238889.P13894383213634064416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A340606 (3 * n + 5)).toNat + A055277 (n + 1)

end

end A238889.P13894383213634064416

/-! ## A238889.P7676815872588153066

`A237284(3^A292804(n))`
-/

namespace A238889.P7676815872588153066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237284 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A292804 n : ℤ))).toNat

end

end A238889.P7676815872588153066

/-! ## A238889.P251184270575034520

`A243924(A301922(n+1)+char[∑[n]])`
-/

namespace A238889.P251184270575034520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243924 (A301922 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A238889.P251184270575034520

/-! ## A238889.P8886720987858911290

`A007305(A007305(A278881(n)²))`
-/

namespace A238889.P8886720987858911290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A007305 (A278881 n ^ 2).toNat).toNat

end

end A238889.P8886720987858911290

/-! ## A238889.P5599006968024804569

`A367452(A094816(n))+A055277(n+1)`
-/

namespace A238889.P5599006968024804569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367452 (A094816 n).toNat + A055277 (n + 1)

end

end A238889.P5599006968024804569

/-!
# A238891: Largest squarefree number in row n of Pascal's triangle.

The programs for A238891, there is no canonical definition to state claims against.
-/

/-! ## A238891.P13729398198197976146

`C(n, A238892(n))`
-/

namespace A238891.P13729398198197976146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A238892 n).toNat

end

end A238891.P13729398198197976146

/-! ## A238891.P9730033287032309506

`A007318(A238892(n)+∑[n])`
-/

namespace A238891.P9730033287032309506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A238892 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A238891.P9730033287032309506

/-! ## A238891.P2239532522404570405

`A007318(n-(A238892(n)-∑[n]))`
-/

namespace A238891.P2239532522404570405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - (A238892 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A238891.P2239532522404570405

/-! ## A238891.P5006431128766072740

`A007318(A000096(n)-A238892(n))`
-/

namespace A238891.P5006431128766072740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n - A238892 n).toNat

end

end A238891.P5006431128766072740

/-! ## A238891.P13716140415202676766

`abs(A108086(A238892(n)+∑[n]))`
-/

namespace A238891.P13716140415202676766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 (A238892 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat|

end

end A238891.P13716140415202676766

/-!
# A238892: Index of last squarefree number in the first half of row n of Pascal's triangle.

The programs for A238892, there is no canonical definition to state claims against.
-/

/-! ## A238892.P12955369380359084167

`A357327(A238891(n))`
-/

namespace A238892.P12955369380359084167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (A238891 n).toNat

end

end A238892.P12955369380359084167

/-! ## A238892.P8918230488210409752

`and(floor(n/2), A007895(A130707(n)))`
-/

namespace A238892.P8918230488210409752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (A007895 (A130707 n).toNat)

end

end A238892.P8918230488210409752

/-! ## A238892.P5357674672915465363

`and(floor(n/2), A008620(A306613(n+1)))`
-/

namespace A238892.P5357674672915465363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (A008620 (A306613 (n + 1)).toNat)

end

end A238892.P5357674672915465363

/-! ## A238892.P17324175704987800884

`and(floor(n/2), A316615(A026287(n+1)))`
-/

namespace A238892.P17324175704987800884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (A316615 (A026287 (n + 1)).toNat)

end

end A238892.P17324175704987800884

/-! ## A238892.P15470095809459673145

`and(A008620(A306613(n+1)), A123108(n))`
-/

namespace A238892.P15470095809459673145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008620 (A306613 (n + 1)).toNat) (A123108 n)

end

end A238892.P15470095809459673145

/-!
# A238894: Irregular triangle of the number of times that sums +- 3 +- 5 +- 7 +- 11 +-...+- prime(2n+1) equal an even number in the range -d to d, where d = 3 + 5 + 7 + 11 +...+ prime(2n+1).

The programs for A238894, there is no canonical definition to state claims against.
-/

/-! ## A238894.P6335269391954911767

`A089809(lcm(A020715(n), A070552(n+1)))`
-/

namespace A238894.P6335269391954911767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (Int.lcm (A020715 n) (A070552 (n + 1)))

end

end A238894.P6335269391954911767

/-! ## A238894.P15238651917313298101

`A288375(lt[A087936(n), A072593(3*n+4)])`
-/

namespace A238894.P15238651917313298101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072593 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238894.P15238651917313298101

/-! ## A238894.P18035092237748040831

`A284775(∑[A167499(n)+(n+1)²-A000034(n)])`
-/

namespace A238894.P18035092237748040831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + ((n + 1) ^ 2 : ℤ) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238894.P18035092237748040831

/-! ## A238894.P7564526333373006334

`A188014(lt[A054252(n), A106443(n)])`
-/

namespace A238894.P7564526333373006334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238894.P7564526333373006334

/-! ## A238894.P13707380604965458439

`A320656(A325830(2*(n+1))+A325830(n))`
-/

namespace A238894.P13707380604965458439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A325830 (2 * (n + 1)) + A325830 n).toNat

end

end A238894.P13707380604965458439

/-!
# A238895: Numbers m > 1 such that a record number of numbers k have m as the sum of the proper divisors of k.

The programs for A238895, there is no canonical definition to state claims against.
-/

/-! ## A238895.P11643717755569106737

`A247131(n+1)+1`
-/

namespace A238895.P11643717755569106737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247131 (n + 1) + 1

end

end A238895.P11643717755569106737

/-! ## A238895.P5955311631791814000

`A125601(A238896(n+1))`
-/

namespace A238895.P5955311631791814000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125601 (A238896 (n + 1)).toNat

end

end A238895.P5955311631791814000

/-! ## A238895.P6930550993228679535

`record[A123930(A022290(n))]`
-/

namespace A238895.P6930550993228679535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123930 (A022290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238895.P6930550993228679535

/-! ## A238895.P14100239540622573870

`record[A123930(n)/A250208(n+1)]`
-/

namespace A238895.P14100239540622573870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123930 n : ℚ) / (A250208 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238895.P14100239540622573870

/-! ## A238895.P3372667836072122237

`record[A123930(n)%A123930(n+10)]`
-/

namespace A238895.P3372667836072122237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123930 n) (A123930 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238895.P3372667836072122237

/-! ## A238895.P4485261317175911064

`record[A123930(n)*A189203(A250208(n+1)+1)]`
-/

namespace A238895.P4485261317175911064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123930 n * A189203 (A250208 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238895.P4485261317175911064

/-! ## A238895.P5266928053789171724

`A123930(2*A238896(n+1)-A238896(n+1))`
-/

namespace A238895.P5266928053789171724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123930 (2 * A238896 (n + 1) - A238896 (n + 1)).toNat

end

end A238895.P5266928053789171724

/-! ## A238895.P16202455790432286951

`A020725(A247131(n+1))`
-/

namespace A238895.P16202455790432286951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247131 (n + 1)).toNat

end

end A238895.P16202455790432286951

/-! ## A238895.P271037906284748034

`A125601(record[A048138(n+2)])`
-/

namespace A238895.P271037906284748034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238895.P271037906284748034

/-!
# A238896: Number of times that the number A238895(n) occurs in the sum of proper divisors function (A001065).

The programs for A238896, there is no canonical definition to state claims against.
-/

/-! ## A238896.P1735488368509916989

`A048138(A238895(n+1))`
-/

namespace A238896.P1735488368509916989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A238895 (n + 1)).toNat

end

end A238896.P1735488368509916989

/-! ## A238896.P16318737050823186398

`record[A048138(n+2)]`
-/

namespace A238896.P16318737050823186398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238896.P16318737050823186398

/-! ## A238896.P15456241320712360542

`A048138(A247131(n+1)+1)`
-/

namespace A238896.P15456241320712360542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A247131 (n + 1) + 1).toNat

end

end A238896.P15456241320712360542

/-! ## A238896.P6245182285725058766

`lt[2, A123930(Δ[A123930(n)])]`
-/

namespace A238896.P6245182285725058766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123930 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A238896.P6245182285725058766

/-! ## A238896.P14352631414505099454

`eq[2, A125601(A125601(n)-A123930(n))]`
-/

namespace A238896.P14352631414505099454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125601 (A125601 n - A123930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238896.P14352631414505099454

/-!
# A238897: Pi in the base sqrt(2).

The programs for A238897, there is no canonical definition to state claims against.
-/

/-! ## A238897.P12795063002879816389

`A010054(and(A153037(n), A348614(n+1)))`
-/

namespace A238897.P12795063002879816389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (A153037 n) (A348614 (n + 1))).toNat

end

end A238897.P12795063002879816389

/-! ## A238897.P2575938807071563890

`A005369(2*and(A153037(n), A348614(n+1)))`
-/

namespace A238897.P2575938807071563890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * Int.land (A153037 n) (A348614 (n + 1))).toNat

end

end A238897.P2575938807071563890

/-! ## A238897.P5347166559363973001

`val(A239699(A046143(n+1)+1), A239695(n+1))`
-/

namespace A238897.P5347166559363973001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A239699 (A046143 (n + 1) + 1).toNat).toNat (A239695 (n + 1)).toNat

end

end A238897.P5347166559363973001

/-! ## A238897.P10982467564460033123

`A319691(A016754(n)+A000931(n+4))`
-/

namespace A238897.P10982467564460033123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319691 (A016754 n + A000931 (n + 4)).toNat

end

end A238897.P10982467564460033123

/-! ## A238897.P9605681074914534112

`A000078(gcd(A139725(n+1), A139768(n+1)))`
-/

namespace A238897.P9605681074914534112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (Int.gcd (A139725 (n + 1)) (A139768 (n + 1)))

end

end A238897.P9605681074914534112

/-!
# A238898: Least number m such that lcm(1,2,3,...,m) = lcm(n,n+1,n+2,...,m).

The programs for A238898, the canonical program `A238898.P6484849418121387212` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238898 has offset 1).

The definition of A238898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238898.P6484849418121387212

`(2-A000007(n))*A031218(A028310(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A238898

/-- `(2-A000007(n))*A031218(A028310(n))` -/
def P6484849418121387212.Spec : Prop :=
  ∀ n, P6484849418121387212.a n = A238898 (n + 1)

theorem P6484849418121387212.correct : P6484849418121387212.Spec := by
  intro n
  simp only [A238898, Nat.add_sub_cancel]

end A238898

/-! ## A238898.P11035678004022810470

`A004277(A031218(A028310(n))-A000007(n))`
-/

namespace A238898.P11035678004022810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A031218 (A028310 n).toNat - A000007 n).toNat

end

end A238898.P11035678004022810470

namespace A238898

/-- `A004277(A031218(A028310(n))-A000007(n))` -/
def P11035678004022810470.Spec : Prop :=
  ∀ n, P11035678004022810470.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P18060807970770198256

`A004277(A031218(A028310(n))%A004277(n))`
-/

namespace A238898.P18060807970770198256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A031218 (A028310 n).toNat) (A004277 n)).toNat

end

end A238898.P18060807970770198256

namespace A238898

/-- `A004277(A031218(A028310(n))%A004277(n))` -/
def P18060807970770198256.Spec : Prop :=
  ∀ n, P18060807970770198256.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P18194373393712754318

`A020639(A237709(n+1))*A322990(A000015(n+1))`
-/

namespace A238898.P18194373393712754318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A237709 (n + 1)).toNat * A322990 (A000015 (n + 1)).toNat

end

end A238898.P18194373393712754318

namespace A238898

/-- `A020639(A237709(n+1))*A322990(A000015(n+1))` -/
def P18194373393712754318.Spec : Prop :=
  ∀ n, P18194373393712754318.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P7537095563143296297

`A031218(A028310(n))*A046698(n+2)`
-/

namespace A238898.P7537095563143296297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A028310 n).toNat * A046698 (n + 2)

end

end A238898.P7537095563143296297

namespace A238898

/-- `A031218(A028310(n))*A046698(n+2)` -/
def P7537095563143296297.Spec : Prop :=
  ∀ n, P7537095563143296297.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P5836311902705180333

`A006530(A277561(n))*A136623(A000015(n+1))`
-/

namespace A238898.P5836311902705180333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A277561 n).toNat * A136623 (A000015 (n + 1)).toNat

end

end A238898.P5836311902705180333

namespace A238898

/-- `A006530(A277561(n))*A136623(A000015(n+1))` -/
def P5836311902705180333.Spec : Prop :=
  ∀ n, P5836311902705180333.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P13805427609854272582

`A000005(A088387(n+1))*A136623(A000015(n+1))`
-/

namespace A238898.P13805427609854272582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088387 (n + 1)).toNat * A136623 (A000015 (n + 1)).toNat

end

end A238898.P13805427609854272582

namespace A238898

/-- `A000005(A088387(n+1))*A136623(A000015(n+1))` -/
def P13805427609854272582.Spec : Prop :=
  ∀ n, P13805427609854272582.a n = A238898 (n + 1)

end A238898

/-! ## A238898.P8941974590908859616

`A000034(A305430(n+1))*A136623(A000015(n+1))`
-/

namespace A238898.P8941974590908859616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A305430 (n + 1)).toNat * A136623 (A000015 (n + 1)).toNat

end

end A238898.P8941974590908859616

namespace A238898

/-- `A000034(A305430(n+1))*A136623(A000015(n+1))` -/
def P8941974590908859616.Spec : Prop :=
  ∀ n, P8941974590908859616.a n = A238898 (n + 1)

end A238898

