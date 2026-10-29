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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A340400: a(n) is the greatest Fibonacci number < 2^(n+1).

The programs for A340400, there is no canonical definition to state claims against.
-/

/-! ## A340400.P17761238962483699027

`A000045(ceil(log2(∑[exp(n+1)])))`
-/

namespace A340400.P17761238962483699027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j)⌉.toNat

end

end A340400.P17761238962483699027

/-! ## A340400.P1738223966052139578

`abs(A236191(∑[A052005(n+1)]))`
-/

namespace A340400.P1738223966052139578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A340400.P1738223966052139578

/-! ## A340400.P3514741093982059754

`char[49]+A000045(∑[A052005(n+1)])`
-/

namespace A340400.P3514741093982059754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052005 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000045 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A340400.P3514741093982059754

/-! ## A340400.P7314974733982627000

`A000045(∑[A052005(n+1)])%A000032(2*(n+1))`
-/

namespace A340400.P7314974733982627000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 (2 * (n + 1)))

end

end A340400.P7314974733982627000

/-!
# A340401: For any number n >= 0 with binary expansion Sum_{k = 0..w} b(k)*2^k, a(n) = (b(0)*A340399(0)) XOR ... XOR (b(w)*A340399(w)) (where XOR denotes the bitwise XOR operator).

The programs for A340401, there is no canonical definition to state claims against.
-/

/-! ## A340401.P317266120127124793

`A340447(A006068(n))`
-/

namespace A340401.P317266120127124793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A006068 n).toNat

end

end A340401.P317266120127124793

/-! ## A340401.P13940194803213068036

`A340447(A292600(2*n))`
-/

namespace A340401.P13940194803213068036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A292600 (2 * n)).toNat

end

end A340401.P13940194803213068036

/-! ## A340401.P1278977890515654969

`A340447(A268716(n)/2)`
-/

namespace A340401.P1278977890515654969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A340401.P1278977890515654969

/-! ## A340401.P9484257001337851999

`A340447(A286546(n)+n)`
-/

namespace A340401.P9484257001337851999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A286546 n + (n : ℤ)).toNat

end

end A340401.P9484257001337851999

/-! ## A340401.P6888558926403923382

`A340447(xor(n, A292600(n)))`
-/

namespace A340401.P6888558926403923382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A340401.P6888558926403923382

/-! ## A340401.P433450818051043092

`A340447(A066194(n+1)-1)`
-/

namespace A340401.P433450818051043092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A066194 (n + 1) - 1).toNat

end

end A340401.P433450818051043092

/-! ## A340401.P7356303191655632971

`xor(a(A004526(n)), A340447(n))` with `a(0)=0`
-/

namespace A340401.P7356303191655632971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (A004526 n).toNat) (A340447 n)

end

end A340401.P7356303191655632971

/-! ## A340401.P4551651712779007557

`A340447(A064707(A003188(n)))`
-/

namespace A340401.P4551651712779007557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A064707 (A003188 n).toNat).toNat

end

end A340401.P4551651712779007557

/-! ## A340401.P8274557969083089320

`A340447(A268714(∑[n]))`
-/

namespace A340401.P8274557969083089320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340447 (A268714 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A340401.P8274557969083089320

/-! ## A340401.P10471854053193487674

`A340402(A163241(n))%∑[A154754(n+1)]`
-/

namespace A340401.P10471854053193487674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340402 (A163241 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340401.P10471854053193487674

/-! ## A340401.P3320030762123214026

`A340402(A163241(n)%A154579(n+1))`
-/

namespace A340401.P3320030762123214026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340402 (Int.tmod (A163241 n) (A154579 (n + 1))).toNat

end

end A340401.P3320030762123214026

/-!
# A340402: For any number n >= 0 with binary expansion Sum_{k = 0..w} b(k)*2^k, a(n) = (b(0)*A340400(0)) XOR ... XOR (b(w)*A340400(w)) (where XOR denotes the bitwise XOR operator).

The programs for A340402, there is no canonical definition to state claims against.
-/

/-! ## A340402.P13203701228058323518

`A340401(A163241(n)%A262464(n+1))`
-/

namespace A340402.P13203701228058323518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (Int.tmod (A163241 n) (A262464 (n + 1))).toNat

end

end A340402.P13203701228058323518

/-! ## A340402.P37441513272331034

`A308188(A318312(n+1))*A340401(A163241(n))`
-/

namespace A340402.P37441513272331034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (A318312 (n + 1)).toNat * A340401 (A163241 n).toNat

end

end A340402.P37441513272331034

/-! ## A340402.P4149072685224740285

`A340401(A163241(n))^A323071(A143408(n+1))`
-/

namespace A340402.P4149072685224740285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340401 (A163241 n).toNat : ℚ) ^ (A323071 (A143408 (n + 1)).toNat : ℤ)

end

end A340402.P4149072685224740285

/-! ## A340402.P3298442904005497837

`A340401(A163241(n))/A308188(A318314(2*(n+1)))`
-/

namespace A340402.P3298442904005497837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340401 (A163241 n).toNat : ℚ) / (A308188 (A318314 (2 * (n + 1))).toNat : ℚ)

end

end A340402.P3298442904005497837

/-! ## A340402.P17233645686839199196

`A010051(A002327(n+1))*A340401(A163241(n))`
-/

namespace A340402.P17233645686839199196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002327 (n + 1)).toNat * A340401 (A163241 n).toNat

end

end A340402.P17233645686839199196

/-! ## A340402.P1444860062782111577

`A340401(A163241(n))+A000038(A064950(n+1))`
-/

namespace A340402.P1444860062782111577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A163241 n).toNat + A000038 (A064950 (n + 1)).toNat

end

end A340402.P1444860062782111577

/-! ## A340402.P8297089057425815745

`A340401(A163241(n)%A198277(n))`
-/

namespace A340402.P8297089057425815745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (Int.tmod (A163241 n) (A198277 n)).toNat

end

end A340402.P8297089057425815745

/-! ## A340402.P17916645328529727128

`A040001(A141937(n+1))*A340401(A163241(n))`
-/

namespace A340402.P17916645328529727128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A141937 (n + 1)).toNat * A340401 (A163241 n).toNat

end

end A340402.P17916645328529727128

/-!
# A340403: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where the removed edges are incident to different vertices in the 4-point set and none of the removed edges are incident to the same vertex in the other set.

The programs for A340403, the canonical program `A340403.P16475243441906089581` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340403 has offset 4).

The definition of A340403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340403.P16475243441906089581

`343*15^(n+1)-216*7^(n+1)+4*3^(n+3)-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340403

/-- `343*15^(n+1)-216*7^(n+1)+4*3^(n+3)-1` -/
def P16475243441906089581.Spec : Prop :=
  ∀ n, P16475243441906089581.a n = A340403 (n + 4)

theorem P16475243441906089581.correct : P16475243441906089581.Spec := by
  intro n
  simp only [A340403, Nat.add_sub_cancel]

end A340403

/-!
# A340407: a(n) gives the number of side-branches that will be passed, if A342369 is used to trace the Collatz tree backward starting at 6*n-2 with n > 0.

The programs for A340407, there is no canonical definition to state claims against.
-/

/-! ## A340407.P15719502870573712279

`Δ[eq[1, A007814(A342842(n+1))]]`
-/

namespace A340407.P15719502870573712279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A342842 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A340407.P15719502870573712279

/-!
# A340408: Primes p such that p*q+q*r+r*s is prime, where q,r,s are the next primes after p.

The programs for A340408, there is no canonical definition to state claims against.
-/

/-! ## A340408.P100977142360905547

`A107812(A279171(n+2))`
-/

namespace A340408.P100977142360905547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (A279171 (n + 2)).toNat

end

end A340408.P100977142360905547

/-!
# A340409: Number of sets of nonempty words with a total of n letters over binary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340409, there is no canonical definition to state claims against.
-/

/-! ## A340409.P12158615352709734619

`A292795(∑[n+3])`
-/

namespace A340409.P12158615352709734619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340409.P12158615352709734619

/-! ## A340409.P10863691443436115737

`xor(2, xor(2, A292795(A055998(n+1))))`
-/

namespace A340409.P10863691443436115737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A292795 (A055998 (n + 1)).toNat))

end

end A340409.P10863691443436115737

/-! ## A340409.P6903444933724304984

`A292795(A055998(n+1))%Δ[A001803(n)]`
-/

namespace A340409.P6903444933724304984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292795 (A055998 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A340409.P6903444933724304984

/-! ## A340409.P8085069102255760087

`A292795(A055998(n+1))+A000007(n+1)`
-/

namespace A340409.P8085069102255760087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A340409.P8085069102255760087

/-! ## A340409.P14102841925324205705

`A292795(A055998(n+1))+A000035(2*n)`
-/

namespace A340409.P14102841925324205705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A340409.P14102841925324205705

/-! ## A340409.P3068788471803303513

`A292795(A055998(n+1))+A132356(n)%2`
-/

namespace A340409.P3068788471803303513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055998 (n + 1)).toNat + Int.tmod (A132356 n) 2

end

end A340409.P3068788471803303513

/-! ## A340409.P10614549819769757560

`A056594(2*n)²*A292795(A055998(n+1))`
-/

namespace A340409.P10614549819769757560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A292795 (A055998 (n + 1)).toNat

end

end A340409.P10614549819769757560

/-! ## A340409.P1608471576614468151

`A047522(n+1)%2*A292795(A055998(n+1))`
-/

namespace A340409.P1608471576614468151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047522 (n + 1)) 2 * A292795 (A055998 (n + 1)).toNat

end

end A340409.P1608471576614468151

/-! ## A340409.P12840346345659003819

`A113801(n+1)%2*A292795(A055998(n+1))`
-/

namespace A340409.P12840346345659003819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113801 (n + 1)) 2 * A292795 (A055998 (n + 1)).toNat

end

end A340409.P12840346345659003819

/-! ## A340409.P16673583891505250264

`A014963(10*(n+10))*A292795(A055998(n+1))`
-/

namespace A340409.P16673583891505250264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A292795 (A055998 (n + 1)).toNat

end

end A340409.P16673583891505250264

/-!
# A340410: Number of sets of nonempty words with a total of n letters over ternary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340410, there is no canonical definition to state claims against.
-/

/-! ## A340410.P289330315294368004

`A292795(∑[n+3]+n+3)`
-/

namespace A340410.P289330315294368004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A340410.P289330315294368004

/-! ## A340410.P758091534798767159

`lcm((-1)^n, A292795(A046691(n+2)))`
-/

namespace A340410.P758091534798767159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A292795 (A046691 (n + 2)).toNat)

end

end A340410.P758091534798767159

/-! ## A340410.P8144270122195910384

`A292795(A046691(n+2))^A178334(n)`
-/

namespace A340410.P8144270122195910384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292795 (A046691 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A340410.P8144270122195910384

/-! ## A340410.P14138270111308611096

`A292795(A046691(n+2))+A063524(n+2)`
-/

namespace A340410.P14138270111308611096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046691 (n + 2)).toNat + A063524 (n + 2)

end

end A340410.P14138270111308611096

/-! ## A340410.P15297365741499646614

`A292795(A046691(n+2))%A020737(2*n)`
-/

namespace A340410.P15297365741499646614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292795 (A046691 (n + 2)).toNat) (A020737 (2 * n))

end

end A340410.P15297365741499646614

/-! ## A340410.P13038206373215948843

`A008683(A005117(n+1))²*A292795(A046691(n+2))`
-/

namespace A340410.P13038206373215948843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A292795 (A046691 (n + 2)).toNat

end

end A340410.P13038206373215948843

/-! ## A340410.P9927524267133294621

`A155040(n)²*A292795(A046691(n+2))`
-/

namespace A340410.P9927524267133294621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155040 n ^ 2 * A292795 (A046691 (n + 2)).toNat

end

end A340410.P9927524267133294621

/-!
# A340411: Number of sets of nonempty words with a total of n letters over quaternary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340411, there is no canonical definition to state claims against.
-/

/-! ## A340411.P136956495127534844

`A292795(∑[n+5]+5)`
-/

namespace A340411.P136956495127534844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A340411.P136956495127534844

/-! ## A340411.P14017441018555676032

`gcd(A000038(n), A292795(A052905(n+2)))`
-/

namespace A340411.P14017441018555676032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292795 (A052905 (n + 2)).toNat)

end

end A340411.P14017441018555676032

/-! ## A340411.P14514260738922723341

`A084642(2*n)*A292795(A052905(n+2))`
-/

namespace A340411.P14514260738922723341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (2 * n) * A292795 (A052905 (n + 2)).toNat

end

end A340411.P14514260738922723341

/-! ## A340411.P15307463256447383756

`A014963(6*(n+1))*A292795(A052905(n+2))`
-/

namespace A340411.P15307463256447383756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A292795 (A052905 (n + 2)).toNat

end

end A340411.P15307463256447383756

/-! ## A340411.P12066792515260987375

`A292795(A052905(n+2))/A000041(C(2, 2*n))`
-/

namespace A340411.P12066792515260987375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292795 (A052905 (n + 2)).toNat : ℚ) / (A000041 (Nat.choose 2 (2 * n)) : ℚ)

end

end A340411.P12066792515260987375

/-! ## A340411.P13095734518789015175

`A001468(A001950(n+1))*A292795(A052905(n+2))`
-/

namespace A340411.P13095734518789015175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A001950 (n + 1)).toNat * A292795 (A052905 (n + 2)).toNat

end

end A340411.P13095734518789015175

/-! ## A340411.P409666725058768324

`A055396(A023693(n+1))*A292795(A052905(n+2))`
-/

namespace A340411.P409666725058768324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A023693 (n + 1)).toNat * A292795 (A052905 (n + 2)).toNat

end

end A340411.P409666725058768324

/-! ## A340411.P9013281681392990862

`A001222(A120364(n+1))*A292795(A052905(n+2))`
-/

namespace A340411.P9013281681392990862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120364 (n + 1)).toNat * A292795 (A052905 (n + 2)).toNat

end

end A340411.P9013281681392990862

/-! ## A340411.P6464332479239548488

`A001222(A007917(n+2))*A292795(A052905(n+2))`
-/

namespace A340411.P6464332479239548488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007917 (n + 2)).toNat * A292795 (A052905 (n + 2)).toNat

end

end A340411.P6464332479239548488

/-!
# A340412: Number of sets of nonempty words with a total of n letters over quinary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340412, there is no canonical definition to state claims against.
-/

/-! ## A340412.P7339680951521030818

`A292795(A055999(n+3))`
-/

namespace A340412.P7339680951521030818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055999 (n + 3)).toNat

end

end A340412.P7339680951521030818

/-! ## A340412.P11098733140347680757

`A292795(eq[5, A025581(n)])`
-/

namespace A340412.P11098733140347680757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340412.P11098733140347680757

/-! ## A340412.P8943295854907452359

`A292795(A052905(n+3)-1)`
-/

namespace A340412.P8943295854907452359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A052905 (n + 3) - 1).toNat

end

end A340412.P8943295854907452359

/-! ## A340412.P16603447669365104704

`A292795(A000217(n+6)-6)`
-/

namespace A340412.P16603447669365104704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 (n + 6) - 6).toNat

end

end A340412.P16603447669365104704

/-! ## A340412.P841321328293805336

`A292795(eq[6, A004736(n+1)])`
-/

namespace A340412.P841321328293805336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340412.P841321328293805336

/-! ## A340412.P3696754839520738995

`A292795(A000124(n+5)+n-1)`
-/

namespace A340412.P3696754839520738995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A340412.P3696754839520738995

/-! ## A340412.P995439179052298487

`A292795(2*n+A056000(n)+15)`
-/

namespace A340412.P995439179052298487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A340412.P995439179052298487

/-! ## A340412.P15203325117584677517

`A292795(2*n+A000124(n+4)+4)`
-/

namespace A340412.P15203325117584677517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A340412.P15203325117584677517

/-!
# A340413: Number of sets of nonempty words with a total of n letters over senary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340413, there is no canonical definition to state claims against.
-/

/-! ## A340413.P11585945233371781855

`A292795(A052905(n+4)-2)`
-/

namespace A340413.P11585945233371781855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A052905 (n + 4) - 2).toNat

end

end A340413.P11585945233371781855

/-! ## A340413.P4290284341040771447

`A292795(A000217(n+7)-7)`
-/

namespace A340413.P4290284341040771447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 (n + 7) - 7).toNat

end

end A340413.P4290284341040771447

/-! ## A340413.P1802454715459230810

`A292795((n+10)²%A000124(n+12))`
-/

namespace A340413.P1802454715459230810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (Int.tmod ((n + 10) ^ 2 : ℤ) (A000124 (n + 12))).toNat

end

end A340413.P1802454715459230810

/-! ## A340413.P5999928780854078350

`A292795(A130824(n+4)+A000124(n+3))`
-/

namespace A340413.P5999928780854078350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A130824 (n + 4) + A000124 (n + 3)).toNat

end

end A340413.P5999928780854078350

/-! ## A340413.P14510476548515155689

`A292795(A046691(n+3)+A005843(n+5))`
-/

namespace A340413.P14510476548515155689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046691 (n + 3) + A005843 (n + 5)).toNat

end

end A340413.P14510476548515155689

/-! ## A340413.P12605157703921967641

`A292795(A055999(n+12)-A004770(n+12))`
-/

namespace A340413.P12605157703921967641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055999 (n + 12) - A004770 (n + 12)).toNat

end

end A340413.P12605157703921967641

/-!
# A340414: Number of sets of nonempty words with a total of n letters over septenary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340414, there is no canonical definition to state claims against.
-/

/-! ## A340414.P5924531544728185819

`A292795(eq[7, A025581(n)])`
-/

namespace A340414.P5924531544728185819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340414.P5924531544728185819

/-! ## A340414.P16963525710141623055

`A292795(A052905(n+5)-3)`
-/

namespace A340414.P16963525710141623055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A052905 (n + 5) - 3).toNat

end

end A340414.P16963525710141623055

/-! ## A340414.P5269738176408175699

`A292795(A046691(n+6)-4)`
-/

namespace A340414.P5269738176408175699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046691 (n + 6) - 4).toNat

end

end A340414.P5269738176408175699

/-! ## A340414.P426815895142076471

`A292795(A034856(n+7)-6)`
-/

namespace A340414.P426815895142076471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A034856 (n + 7) - 6).toNat

end

end A340414.P426815895142076471

/-! ## A340414.P2291439353717391224

`A292795(A000217(n+8)-8)`
-/

namespace A340414.P2291439353717391224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 (n + 8) - 8).toNat

end

end A340414.P2291439353717391224

/-! ## A340414.P1519128337433083103

`A292795(eq[8, sqrt(A055461(n+1))])`
-/

namespace A340414.P1519128337433083103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A340414.P1519128337433083103

/-! ## A340414.P5708243285395711912

`A292795(A000096(n+6)+n+1)`
-/

namespace A340414.P5708243285395711912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A340414.P5708243285395711912

/-! ## A340414.P3495809594041815620

`A292795(A000124(n+7)+n-1)`
-/

namespace A340414.P3495809594041815620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A340414.P3495809594041815620

/-! ## A340414.P18205656600967634578

`A292795(A184218(n+8)+n+1)`
-/

namespace A340414.P18205656600967634578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A184218 (n + 8) + (n + 1 : ℤ)).toNat

end

end A340414.P18205656600967634578

/-! ## A340414.P13775383193635199565

`A292795(2*n+A055999(n+3)+13)`
-/

namespace A340414.P13775383193635199565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 ((2 * n : ℤ) + (A055999 (n + 3) + 13)).toNat

end

end A340414.P13775383193635199565

/-!
# A340415: Number of sets of nonempty words with a total of n letters over octonary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340415, there is no canonical definition to state claims against.
-/

/-! ## A340415.P6550664063926819115

`A292795(A055999(n+6)-3)`
-/

namespace A340415.P6550664063926819115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055999 (n + 6) - 3).toNat

end

end A340415.P6550664063926819115

/-! ## A340415.P4996108118748297624

`A292795(A055998(n+7)-6)`
-/

namespace A340415.P4996108118748297624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A055998 (n + 7) - 6).toNat

end

end A340415.P4996108118748297624

/-! ## A340415.P1916382001632749896

`A292795(A000217(n+9)-9)`
-/

namespace A340415.P1916382001632749896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 (n + 9) - 9).toNat

end

end A340415.P1916382001632749896

/-! ## A340415.P2531822162794068761

`A292795(A020715(n)²-A055998(n))`
-/

namespace A340415.P2531822162794068761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A020715 n ^ 2 - A055998 n).toNat

end

end A340415.P2531822162794068761

/-! ## A340415.P10495453905171591803

`A292795(A046691(n+5)+A005843(n+6))`
-/

namespace A340415.P10495453905171591803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046691 (n + 5) + A005843 (n + 6)).toNat

end

end A340415.P10495453905171591803

/-!
# A340416: Number of sets of nonempty words with a total of n letters over nonary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340416, there is no canonical definition to state claims against.
-/

/-! ## A340416.P10494379540858379813

`A292795(A056000(n+6))`
-/

namespace A340416.P10494379540858379813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A056000 (n + 6)).toNat

end

end A340416.P10494379540858379813

/-! ## A340416.P17978110095144292399

`A292795(eq[9, A025581(n)])`
-/

namespace A340416.P17978110095144292399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340416.P17978110095144292399

/-! ## A340416.P8355332672539707428

`A292795(A052905(n+7)-5)`
-/

namespace A340416.P8355332672539707428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A052905 (n + 7) - 5).toNat

end

end A340416.P8355332672539707428

/-! ## A340416.P1775549629830041298

`A292795(A000217(n+10)-10)`
-/

namespace A340416.P1775549629830041298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 (n + 10) - 10).toNat

end

end A340416.P1775549629830041298

/-! ## A340416.P11009474406167768063

`A292795(A179865(n+11)-10)`
-/

namespace A340416.P11009474406167768063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A179865 (n + 11) - 10).toNat

end

end A340416.P11009474406167768063

/-! ## A340416.P11976901927021054424

`A292795(eq[10, A004736(n+1)])`
-/

namespace A340416.P11976901927021054424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340416.P11976901927021054424

/-!
# A340417: Number of sets of nonempty words with a total of n letters over denary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A340417, there is no canonical definition to state claims against.
-/

/-! ## A340417.P4314659857314185784

`A292795(eq[10, A025581(n)])`
-/

namespace A340417.P4314659857314185784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340417.P4314659857314185784

/-! ## A340417.P12725073070764447779

`A292795(A052905(n+8)-6)`
-/

namespace A340417.P12725073070764447779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A052905 (n + 8) - 6).toNat

end

end A340417.P12725073070764447779

/-! ## A340417.P2513764660703074772

`A292795(A046691(n+9)-7)`
-/

namespace A340417.P2513764660703074772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046691 (n + 9) - 7).toNat

end

end A340417.P2513764660703074772

/-! ## A340417.P15014082264986578288

`A292795(A179865(n+12)-11)`
-/

namespace A340417.P15014082264986578288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A179865 (n + 12) - 11).toNat

end

end A340417.P15014082264986578288

/-! ## A340417.P13827118192975163005

`A292795(eq[11, A004736(n+1)])`
-/

namespace A340417.P13827118192975163005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340417.P13827118192975163005

/-! ## A340417.P15369497920729293121

`A292795(A130824(n+7)+A000124(n+7))`
-/

namespace A340417.P15369497920729293121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A130824 (n + 7) + A000124 (n + 7)).toNat

end

end A340417.P15369497920729293121

/-!
# A340418: Indices in A339991 where records occur.

The programs for A340418, there is no canonical definition to state claims against.
-/

/-! ## A340418.P10997660273145232468

`A301899(∑[A041653(floor(n/2))])`
-/

namespace A340418.P10997660273145232468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041653 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340418.P10997660273145232468

/-! ## A340418.P4380816427725279087

`∑[∏{e}[record[A241591(n)], #]]`
-/

namespace A340418.P4380816427725279087
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340418.P4380816427725279087

/-! ## A340418.P7680263746001398155

`A383644(A180516(n+2))`
-/

namespace A340418.P7680263746001398155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383644 (A180516 (n + 2)).toNat

end

end A340418.P7680263746001398155

/-! ## A340418.P15380879850381514622

`∑[A001972(A336362(n!))]`
-/

namespace A340418.P15380879850381514622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A336362 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340418.P15380879850381514622

/-! ## A340418.P16786959006722325100

`∑[A034968(∏[A136405(2*n+3)])]`
-/

namespace A340418.P16786959006722325100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136405 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340418.P16786959006722325100

/-!
# A340419: Trajectory of 397 under the map A340008: n -> n/2 if n is even, n-> n^2 - 1 if n is an odd prime, otherwise n -> n - 1.

The programs for A340419, there is no canonical definition to state claims against.
-/

/-! ## A340419.P17547428484284933988

`A376801(n)-A156348(A121476(n+1))`
-/

namespace A340419.P17547428484284933988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376801 n - A156348 (A121476 (n + 1)).toNat

end

end A340419.P17547428484284933988

/-!
# A340420: The number of steps that n requires to reach 1 under the map: m -> m/2 if m is even, m-> 3*m + 1 if m is an odd prime, otherwise m -> m - 1. a(n) = -1 if 1 is never reached.

The programs for A340420, there is no canonical definition to state claims against.
-/

/-! ## A340420.P16666540854644467226

`A006577(n+1)%A050218(A000079(n))`
-/

namespace A340420.P16666540854644467226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) (A050218 (A000079 n).toNat)

end

end A340420.P16666540854644467226

/-! ## A340420.P9566704746965220691

`A006577(A077168(n))%A036140(n+3)`
-/

namespace A340420.P9566704746965220691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (A077168 n).toNat) (A036140 (n + 3))

end

end A340420.P9566704746965220691

/-! ## A340420.P442922438505568404

`A127885(n+1)%A107807(A107807(n+1))`
-/

namespace A340420.P442922438505568404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127885 (n + 1)) (A107807 (A107807 (n + 1)).toNat)

end

end A340420.P442922438505568404

/-! ## A340420.P4683123809505439830

`A006577(n+1)-A126164(A168290(2*n+3))`
-/

namespace A340420.P4683123809505439830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A126164 (A168290 (2 * n + 3)).toNat

end

end A340420.P4683123809505439830

/-! ## A340420.P8492136602334088563

`(A008908(n+1)-1)%A076228(A082984(2*n+5))`
-/

namespace A340420.P8492136602334088563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1) - 1) (A076228 (A082984 (2 * n + 5)).toNat)

end

end A340420.P8492136602334088563

/-!
# A340423: Irregular triangle read by rows T(n,k) in which row n has length A000041(n-1) and every column k is A024916, n >= 1, k >= 1.

The programs for A340423, there is no canonical definition to state claims against.
-/

/-! ## A340423.P15628135165509938151

`A024916(A336811(n+1))`
-/

namespace A340423.P15628135165509938151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A336811 (n + 1)).toNat

end

end A340423.P15628135165509938151

/-! ## A340423.P6886735967341640115

`A104472(A359279(n+1))`
-/

namespace A340423.P6886735967341640115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104472 (A359279 (n + 1)).toNat

end

end A340423.P6886735967341640115

/-! ## A340423.P11291027484231103741

`A260196(n+2)+A160664(A336811(n+1))`
-/

namespace A340423.P11291027484231103741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A160664 (A336811 (n + 1)).toNat

end

end A340423.P11291027484231103741

/-! ## A340423.P17721346501801387292

`A160664(A336811(n+1))-A040236(2*n+1)`
-/

namespace A340423.P17721346501801387292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A336811 (n + 1)).toNat - A040236 (2 * n + 1)

end

end A340423.P17721346501801387292

/-! ## A340423.P8609535604661520268

`A160664(A336811(n+1))-A005709(A023416(n))`
-/

namespace A340423.P8609535604661520268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A336811 (n + 1)).toNat - A005709 (A023416 n).toNat

end

end A340423.P8609535604661520268

/-! ## A340423.P15541044704398302682

`A160664(A336811(n+1))-A005709(A007814(n+1))`
-/

namespace A340423.P15541044704398302682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A336811 (n + 1)).toNat - A005709 (A007814 (n + 1)).toNat

end

end A340423.P15541044704398302682

/-!
# A340424: Triangle read by rows: T(n,k) = A024916(n-k+1)*A002865(k-1), 1 <= k <= n.

The programs for A340424, there is no canonical definition to state claims against.
-/

/-! ## A340424.P7393106533858322893

`A024916(row(n)-col(n)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340424.P7393106533858322893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340424.P7393106533858322893

/-! ## A340424.P9034106902954977854

`A024916(row(n)+1-(col(n)+1)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340424.P9034106902954977854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340424.P9034106902954977854

/-! ## A340424.P4935521662742813462

`A133734(n)*A350637(n+1)`
-/

namespace A340424.P4935521662742813462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 n * A350637 (n + 1)

end

end A340424.P4935521662742813462

/-! ## A340424.P6995441748614448104

`A002865(A002262(n))*A350637(n+1)`
-/

namespace A340424.P6995441748614448104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A002262 n).toNat * A350637 (n + 1)

end

end A340424.P6995441748614448104

/-! ## A340424.P11053709940002775400

`A116598(A061579(n))*A350637(n+1)`
-/

namespace A340424.P11053709940002775400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (A061579 n).toNat * A350637 (n + 1)

end

end A340424.P11053709940002775400

/-! ## A340424.P15766132503846102074

`A002865(A025668(n+1))*A350637(n+1)`
-/

namespace A340424.P15766132503846102074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A025668 (n + 1)).toNat * A350637 (n + 1)

end

end A340424.P15766132503846102074

/-! ## A340424.P7949581084969823122

`A085811(A002260(n+1)+2)*A350637(n+1)`
-/

namespace A340424.P7949581084969823122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A002260 (n + 1) + 2).toNat * A350637 (n + 1)

end

end A340424.P7949581084969823122

/-! ## A340424.P14612382077577454183

`A266779(A002260(n+1)-1)*A350637(n+1)`
-/

namespace A340424.P14612382077577454183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266779 (A002260 (n + 1) - 1).toNat * A350637 (n + 1)

end

end A340424.P14612382077577454183

/-! ## A340424.P1746589050212002285

`A340524(n+1)/A221531(n+1)*A340527(n+1)`
-/

namespace A340424.P1746589050212002285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340524 (n + 1) : ℚ) / (A221531 (n + 1) : ℚ) * (A340527 (n + 1) : ℚ)

end

end A340424.P1746589050212002285

/-!
# A340425: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) is the number of spanning trees of odd Aztec rectangle of order (n, k).

The programs for A340425, there is no canonical definition to state claims against.
-/

/-! ## A340425.P5463498486580764114

`4^∑[char[∑[n+1]]]*A340427(n+1)`
-/

namespace A340425.P5463498486580764114
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A340427 (n + 1)

end

end A340425.P5463498486580764114

/-! ## A340425.P7178987828566866629

`A137688(n)²*xor(1, A221106(A032555(n+1)))`
-/

namespace A340425.P7178987828566866629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * Int.xor 1 (A221106 (A032555 (n + 1)).toNat)

end

end A340425.P7178987828566866629

/-! ## A340425.P3106945106896300155

`A137688(n)²*xor(1, A221106(A077739(n+1)))`
-/

namespace A340425.P3106945106896300155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * Int.xor 1 (A221106 (A077739 (n + 1)).toNat)

end

end A340425.P3106945106896300155

/-! ## A340425.P17954746258406677860

`A137688(n)²*A149324(A008288(n)%A121076(n))`
-/

namespace A340425.P17954746258406677860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A149324 (Int.tmod (A008288 n) (A121076 n)).toNat

end

end A340425.P17954746258406677860

/-! ## A340425.P4634562828697246192

`A137688(n)²*A149324(A086620(n)%A121076(n))`
-/

namespace A340425.P4634562828697246192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A149324 (Int.tmod (A086620 n) (A121076 n)).toNat

end

end A340425.P4634562828697246192

/-!
# A340426: Triangle read by rows: T(n,k) = A000203(n-k+1)*A002865(k-1), 1 <= k <= n.

The programs for A340426, there is no canonical definition to state claims against.
-/

/-! ## A340426.P13001695819419662413

`A340583((A114327(n)+1+n)%A145283(n+1))`
-/

namespace A340426.P13001695819419662413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340583 (Int.tmod (A114327 n + 1 + (n : ℤ)) (A145283 (n + 1))).toNat

end

end A340426.P13001695819419662413

/-! ## A340426.P5251070407799447470

`A158388(A013609(n))*A340583(A038722(n+1))`
-/

namespace A340426.P5251070407799447470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A013609 n).toNat * A340583 (A038722 (n + 1)).toNat

end

end A340426.P5251070407799447470

/-! ## A340426.P1090490726687470032

`A158388(A075648(n+1))*A340583(A038722(n+1))`
-/

namespace A340426.P1090490726687470032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A075648 (n + 1)).toNat * A340583 (A038722 (n + 1)).toNat

end

end A340426.P1090490726687470032

/-! ## A340426.P499815198844688287

`A158388(A000009(n))*A340583(A038722(n+1))`
-/

namespace A340426.P499815198844688287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A000009 n).toNat * A340583 (A038722 (n + 1)).toNat

end

end A340426.P499815198844688287

/-! ## A340426.P369617224944269222

`A040755(A229312(n+1))*A340583(A038722(n+1))`
-/

namespace A340426.P369617224944269222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040755 (A229312 (n + 1)).toNat * A340583 (A038722 (n + 1)).toNat

end

end A340426.P369617224944269222

/-!
# A340427: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = 4^(2*(n-1)*(k-1)) * Product_{a=1..n-1} Product_{b=1..k-1} (1 - sin(a*Pi/(2*n))^2 * sin(b*Pi/(2*k))^2).

The programs for A340427, there is no canonical definition to state claims against.
-/

/-! ## A340427.P8582193395715953766

`A340425(n+1)/∏[char[∑[n+1]]+1]²`
-/

namespace A340427.P8582193395715953766
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340425 (n + 1) : ℚ) / (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)

end

end A340427.P8582193395715953766

/-! ## A340427.P5127665584046440642

`A068499(A157221(n))*A129690(A157221(n))`
-/

namespace A340427.P5127665584046440642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (A157221 n).toNat * A129690 (A157221 n).toNat

end

end A340427.P5127665584046440642

/-! ## A340427.P11453924457662434079

`xor(1, A221106(A032555(n+1)))`
-/

namespace A340427.P11453924457662434079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A221106 (A032555 (n + 1)).toNat)

end

end A340427.P11453924457662434079

/-! ## A340427.P13615947137461731301

`xor(1, A221106(A032559(n+1)))`
-/

namespace A340427.P13615947137461731301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A221106 (A032559 (n + 1)).toNat)

end

end A340427.P13615947137461731301

/-! ## A340427.P3900112096937682534

`xor(1, A221106(A077739(n+1)))`
-/

namespace A340427.P3900112096937682534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A221106 (A077739 (n + 1)).toNat)

end

end A340427.P3900112096937682534

/-!
# A340428: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = 4^(2*n*k) * Product_{a=1..n} Product_{b=1..k} (1 - sin(a*Pi/(2*n+1))^2 * sin(b*Pi/(2*k+1))^2).

The programs for A340428, there is no canonical definition to state claims against.
-/

/-! ## A340428.P10801839722489387249

`ceil(∑{d}[9^A355664(n), #]/2)`
-/

namespace A340428.P10801839722489387249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A355664 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / 2⌉

end

end A340428.P10801839722489387249

/-! ## A340428.P13559386459599097594

`A225055(A022173(n))`
-/

namespace A340428.P13559386459599097594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A022173 n).toNat

end

end A340428.P13559386459599097594

/-! ## A340428.P9950661457212457635

`A146085(A118180(n))`
-/

namespace A340428.P9950661457212457635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146085 (A118180 n).toNat

end

end A340428.P9950661457212457635

/-! ## A340428.P14992218756030949622

`A120437(A176627(n))`
-/

namespace A340428.P14992218756030949622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120437 (A176627 n).toNat

end

end A340428.P14992218756030949622

/-! ## A340428.P1118351709918508722

`A120437(A176639(n))`
-/

namespace A340428.P1118351709918508722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120437 (A176639 n).toNat

end

end A340428.P1118351709918508722

/-!
# A340429: Array T(n, k) is the number x such that frac(x*phi) + frac(n*phi)*frac(k*phi) = 1 where phi is the golden ratio A001622 and frac(y) is the fractional part of y, read by antidiagonals.

The programs for A340429, there is no canonical definition to state claims against.
-/

/-! ## A340429.P11389352925966115632

`floor(A101858(n+1)/ϕ)`
-/

namespace A340429.P11389352925966115632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101858 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A340429.P11389352925966115632

/-! ## A340429.P6119348140443809812

`round(A101858(C(n+1, n))/ϕ)`
-/

namespace A340429.P6119348140443809812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101858 (Nat.choose (n + 1) n) : ℝ) / Real.goldenRatio)

end

end A340429.P6119348140443809812

/-! ## A340429.P1251192699540826201

`round(A101858(-xor(n, -1))/ϕ)`
-/

namespace A340429.P1251192699540826201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101858 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) / Real.goldenRatio)

end

end A340429.P1251192699540826201

/-! ## A340429.P7832553771960626238

`round(A101858(char[1]+1+n)/ϕ)`
-/

namespace A340429.P7832553771960626238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101858 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℝ) / Real.goldenRatio)

end

end A340429.P7832553771960626238

/-! ## A340429.P17171406342644373211

`A057365(A101858(n+1))`
-/

namespace A340429.P17171406342644373211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A101858 (n + 1)).toNat

end

end A340429.P17171406342644373211

/-! ## A340429.P7782360912792731058

`round(A101858(n+1)/ϕ)%A000041(n+3)`
-/

namespace A340429.P7782360912792731058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A101858 (n + 1) : ℝ) / Real.goldenRatio)) (A000041 (n + 3))

end

end A340429.P7782360912792731058

/-! ## A340429.P11100074653418063192

`ceil(A101858(n+1)/ϕ-A007318(C(2, n)))`
-/

namespace A340429.P11100074653418063192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101858 (n + 1) : ℝ) / Real.goldenRatio - (A007318 (Nat.choose 2 n) : ℝ)⌉

end

end A340429.P11100074653418063192

/-! ## A340429.P14022557678019828571

`A008683(4*(n+1))+round(A101858(n+1)/ϕ)`
-/

namespace A340429.P14022557678019828571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A101858 (n + 1) : ℝ) / Real.goldenRatio)

end

end A340429.P14022557678019828571

/-! ## A340429.P7011957757252010323

`A007318(val(n+1, 10))*round(A101858(n+1)/ϕ)`
-/

namespace A340429.P7011957757252010323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 10) * SequenceMachineLib.roundAway ((A101858 (n + 1) : ℝ) / Real.goldenRatio)

end

end A340429.P7011957757252010323

/-! ## A340429.P1035162138949175487

`ceil(A101858(A038722(n+1))/ϕ)-1`
-/

namespace A340429.P1035162138949175487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101858 (A038722 (n + 1)).toNat : ℝ) / Real.goldenRatio⌉ - 1

end

end A340429.P1035162138949175487

/-!
# A340430: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = 4^(2*n*k) * Product_{a=1..n} Product_{b=1..k} (1 - cos(a*Pi/(2*n+1))^2 * cos(b*Pi/(2*k+1))^2).

The programs for A340430, there is no canonical definition to state claims against.
-/

/-! ## A340430.P12439539590604006643

`A028230(A167040(n))`
-/

namespace A340430.P12439539590604006643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028230 (A167040 n).toNat

end

end A340430.P12439539590604006643

/-! ## A340430.P2211675261865906284

`A180062(A186432(n))`
-/

namespace A340430.P2211675261865906284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180062 (A186432 n).toNat

end

end A340430.P2211675261865906284

/-! ## A340430.P5874413159542323747

`A367209(A086645(n))`
-/

namespace A340430.P5874413159542323747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367209 (A086645 n).toNat

end

end A340430.P5874413159542323747

/-! ## A340430.P1493811236207139530

`A180062(2*A086645(n))`
-/

namespace A340430.P1493811236207139530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180062 (2 * A086645 n).toNat

end

end A340430.P1493811236207139530

/-! ## A340430.P13720336050337620537

`A001353(∏{d}[A086620(n), #])`
-/

namespace A340430.P13720336050337620537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A340430.P13720336050337620537

/-!
# A340432: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = 4^(2*n*k) * Product_{a=1..n} Product_{b=1..k} (1 - sin(a*Pi/(2*n+1))^2 * cos(b*Pi/(2*k+1))^2).

The programs for A340432, there is no canonical definition to state claims against.
-/

/-! ## A340432.P7791115486982812337

`or(A061395(A000302(n)), A322732(n))`
-/

namespace A340432.P7791115486982812337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061395 (A000302 n).toNat) (A322732 n)

end

end A340432.P7791115486982812337

/-! ## A340432.P10870214291199701793

`or(A007318(A309861(n)), A322732(n))`
-/

namespace A340432.P10870214291199701793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A309861 n).toNat) (A322732 n)

end

end A340432.P10870214291199701793

/-! ## A340432.P6049848617546911231

`or(A322320(A100545(n)), A322732(n))`
-/

namespace A340432.P6049848617546911231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322320 (A100545 n).toNat) (A322732 n)

end

end A340432.P6049848617546911231

/-! ## A340432.P15764802282479435216

`or(A299152(A322725(n)), A322732(n))`
-/

namespace A340432.P15764802282479435216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299152 (A322725 n).toNat) (A322732 n)

end

end A340432.P15764802282479435216

/-! ## A340432.P10384257899292237886

`or(A082457(A000580(n+7)), A322732(n))`
-/

namespace A340432.P10384257899292237886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082457 (A000580 (n + 7)).toNat) (A322732 n)

end

end A340432.P10384257899292237886

/-!
# A340433: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 4-point set but all three removed edges are incident to the same vertex in the other set.

The programs for A340433, the canonical program `A340433.P3344980228215889882` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340433 has offset 4).

The definition of A340433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340433.P3344980228215889882

`15^(n+3)-3*7^(n+3)+3^(n+4)-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340433

/-- `15^(n+3)-3*7^(n+3)+3^(n+4)-1` -/
def P3344980228215889882.Spec : Prop :=
  ∀ n, P3344980228215889882.a n = A340433 (n + 4)

theorem P3344980228215889882.correct : P3344980228215889882.Spec := by
  intro n
  simp only [A340433, Nat.add_sub_cancel]

end A340433

/-!
# A340434: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(5,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 5-point set but all three removed edges are incident to the same vertex in the other set.

The programs for A340434, the canonical program `A340434.P11849138142385544500` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340434 has offset 4).

The definition of A340434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340434.P11849138142385544500

`3*31^(n+3)-11*15^(n+3)+15*7^(n+3)-3^(n+5)+2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340434

/-- `3*31^(n+3)-11*15^(n+3)+15*7^(n+3)-3^(n+5)+2` -/
def P11849138142385544500.Spec : Prop :=
  ∀ n, P11849138142385544500.a n = A340434 (n + 4)

theorem P11849138142385544500.correct : P11849138142385544500.Spec := by
  intro n
  simp only [A340434, Nat.add_sub_cancel]

end A340434

/-!
# A340436: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where exactly two of the removed edges are incident to the same vertex in the 3-point set but none of the removed edges are incident to the same vertex in the other set.

The programs for A340436, the canonical program `A340436.P2013782764434791027` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340436 has offset 4).

The definition of A340436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340436.P2013782764434791027

`27*7^(n+1)-13*3^(n+1)+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340436

/-- `27*7^(n+1)-13*3^(n+1)+1` -/
def P2013782764434791027.Spec : Prop :=
  ∀ n, P2013782764434791027.a n = A340436 (n + 4)

theorem P2013782764434791027.correct : P2013782764434791027.Spec := by
  intro n
  simp only [A340436, Nat.add_sub_cancel]

end A340436

/-!
# A340437: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where exactly two of the removed edges are incident to the same vertex in the 4-point set but none of the removed edges are incident to the same vertex in the other set.

The programs for A340437, the canonical program `A340437.P2944751577819429811` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340437 has offset 4).

The definition of A340437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340437.P2944751577819429811

`343*15^(n+1)-264*7^(n+1)+52*3^(n+1)-2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340437

/-- `343*15^(n+1)-264*7^(n+1)+52*3^(n+1)-2` -/
def P2944751577819429811.Spec : Prop :=
  ∀ n, P2944751577819429811.a n = A340437 (n + 4)

theorem P2944751577819429811.correct : P2944751577819429811.Spec := by
  intro n
  simp only [A340437, Nat.add_sub_cancel]

end A340437

/-!
# A340441: Square array, read by ascending antidiagonals, where row n gives all odd solutions k > 1 and n > 0 to A000120(2*n+1) = A000120((2*n+1)*k), A000120 is the Hamming weight.

The programs for A340441, there is no canonical definition to state claims against.
-/

/-! ## A340441.P16814738991373182750

`A239391(A323501(n+2))`
-/

namespace A340441.P16814738991373182750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239391 (A323501 (n + 2)).toNat

end

end A340441.P16814738991373182750

/-!
# A340444: a(n) is the least prime of the form p*q + p*r + q*r where p is the n-th prime and q and r are primes < p, or 0 if there are none.

The programs for A340444, there is no canonical definition to state claims against.
-/

/-! ## A340444.P6516486773304109247

`A030430(A042962(n))%A001065(A300277(2*(n+1)))`
-/

namespace A340444.P6516486773304109247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (A042962 n).toNat) (A001065 (A300277 (2 * (n + 1))).toNat)

end

end A340444.P6516486773304109247

/-!
# A340447: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, a(n) XOR a(n+1) is a Fibonacci number as small as possible (where XOR denotes the bitwise XOR operator).

The programs for A340447, there is no canonical definition to state claims against.
-/

/-! ## A340447.P10229220876545557491

`A340401(A003188(n))`
-/

namespace A340447.P10229220876545557491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A003188 n).toNat

end

end A340447.P10229220876545557491

/-! ## A340447.P2004910031151841781

`A340401(A286548(n)+n)`
-/

namespace A340447.P2004910031151841781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A286548 n + (n : ℤ)).toNat

end

end A340447.P2004910031151841781

/-! ## A340447.P13414946134381111212

`A340401(xor(n, A004526(n)))`
-/

namespace A340447.P13414946134381111212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A340447.P13414946134381111212

/-! ## A340447.P10175600061536663314

`A340401(A163617(n)-A007494(n))`
-/

namespace A340447.P10175600061536663314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A163617 n - A007494 n).toNat

end

end A340447.P10175600061536663314

/-! ## A340447.P2682872784829794475

`A340401(A032766(n)-A213370(n))`
-/

namespace A340447.P2682872784829794475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A032766 n - A213370 n).toNat

end

end A340447.P2682872784829794475

/-! ## A340447.P7292586318115920248

`A340401(xor(n, A002265(2*n)))`
-/

namespace A340447.P7292586318115920248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (Int.xor (n : ℤ) (A002265 (2 * n))).toNat

end

end A340447.P7292586318115920248

/-!
# A340448: Radio number of the cycle graph C_n.

The programs for A340448, the canonical program `A340448.P17898738221270425902` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340448 has offset 1).

The definition of A340448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340448.P17898738221270425902

`ogf((x+x^2+2x^3+x^5-x^8)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340448

/-- `ogf((x+x^2+2x^3+x^5-x^8)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P17898738221270425902.Spec : Prop :=
  ∀ n, P17898738221270425902.a n = A340448 (n + 1)

theorem P17898738221270425902.correct : P17898738221270425902.Spec := by
  intro n
  simp only [A340448, Nat.add_sub_cancel]

end A340448

/-! ## A340448.P10273014866962235680

`∑[ceil(n/2)]-floor(n/2)*floor(n/4)`
-/

namespace A340448.P10273014866962235680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋ * ⌊(n : ℚ) / 4⌋

end

end A340448.P10273014866962235680

namespace A340448

/-- `∑[ceil(n/2)]-floor(n/2)*floor(n/4)` -/
def P10273014866962235680.Spec : Prop :=
  ∀ n, P10273014866962235680.a n = A340448 (n + 1)

end A340448

/-!
# A340449: Nonsquare composites n whose smallest prime factor is greater than or equal to n^(2/5).

The programs for A340449, there is no canonical definition to state claims against.
-/

/-! ## A340449.P5546169490105888003

`record[A179312(A291045(n+1))]`
-/

namespace A340449.P5546169490105888003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A291045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340449.P5546169490105888003

/-! ## A340449.P2431816683873536956

`filter[A291045(n+1), A064911(#)]`
-/

namespace A340449.P2431816683873536956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A340449.P2431816683873536956

/-! ## A340449.P16093860462833178815

`filter[A291045(n+1), A101040(#)]`
-/

namespace A340449.P16093860462833178815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A340449.P16093860462833178815

/-! ## A340449.P116473453278327317

`filter[A291045(n+1), A280710(#)]`
-/

namespace A340449.P116473453278327317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A340449.P116473453278327317

/-! ## A340449.P4790276775059469049

`filter[A291045(n+1), A353471(#)]`
-/

namespace A340449.P4790276775059469049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A340449.P4790276775059469049

/-! ## A340449.P17657999816819083795

`filter[A291045(n+1), A353476(#)]`
-/

namespace A340449.P17657999816819083795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A340449.P17657999816819083795

/-! ## A340449.P8130526542559168936

`filter[A291045(n+1), A353480(#)]`
-/

namespace A340449.P8130526542559168936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A340449.P8130526542559168936

/-! ## A340449.P8268344696628116531

`filter[A291045(n+1), A353481(#)]`
-/

namespace A340449.P8268344696628116531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A340449.P8268344696628116531

/-! ## A340449.P4051096239519204375

`filter[A291045(n+1), A353788(#)]`
-/

namespace A340449.P4051096239519204375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A340449.P4051096239519204375

/-! ## A340449.P9081126215338409955

`filter[A291045(n+1), A353799(#)]`
-/

namespace A340449.P9081126215338409955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A340449.P9081126215338409955

/-!
# A340450: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * exp(x^(n+1)*A(x)).

The programs for A340450, there is no canonical definition to state claims against.
-/

/-! ## A340450.P4902370013494545609

`ceil(A245901(n+1)/ϕ)`
-/

namespace A340450.P4902370013494545609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245901 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A340450.P4902370013494545609

/-!
# A340451: E.g.f.: Sum_{n>=0} x^n * cosh(2^n*x) / n!.

The programs for A340451, there is no canonical definition to state claims against.
-/

/-! ## A340451.P16597396673089285606

`(A172388(n)+A047863(n))/2`
-/

namespace A340451.P16597396673089285606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172388 n + A047863 n : ℚ) / 2

end

end A340451.P16597396673089285606

/-! ## A340451.P2871327846846538474

`A340452(A028310(n))+A172388(A028310(n))`
-/

namespace A340451.P2871327846846538474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340452 (A028310 n).toNat + A172388 (A028310 n).toNat

end

end A340451.P2871327846846538474

/-! ## A340451.P10317948804435300303

`A038572(A172388(n)+A047863(n))`
-/

namespace A340451.P10317948804435300303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A172388 n + A047863 n).toNat

end

end A340451.P10317948804435300303

/-!
# A340452: E.g.f.: Sum_{n>=0} x^n * sinh(2^n*x) / n!.

The programs for A340452, there is no canonical definition to state claims against.
-/

/-! ## A340452.P18028855925917897985

`A047863(n+1)-A340451(n+1)`
-/

namespace A340452.P18028855925917897985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 (n + 1) - A340451 (n + 1)

end

end A340452.P18028855925917897985

/-! ## A340452.P3495625555816063

`A340451(n+1)-A172388(n+1)`
-/

namespace A340452.P3495625555816063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340451 (n + 1) - A172388 (n + 1)

end

end A340452.P3495625555816063

/-! ## A340452.P566720520921803549

`(A047863(n+1)-A172388(n+1))/2`
-/

namespace A340452.P566720520921803549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047863 (n + 1) - A172388 (n + 1) : ℚ) / 2

end

end A340452.P566720520921803549

/-!
# A340453: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+1))*(1 - x^(5*n+4)) ).

The programs for A340453, the canonical program `A340453.P332786434363878656` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340453 has offset 0).

The definition of A340453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340453.P332786434363878656

`A359237(n+1)-A359270(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340453

/-- `A359237(n+1)-A359270(n+1)` -/
def P332786434363878656.Spec : Prop :=
  ∀ n, P332786434363878656.a n = A340453 n

theorem P332786434363878656.correct : P332786434363878656.Spec := by
  intro n
  simp only [A340453]

end A340453

/-! ## A340453.P13876625877314837416

`A227216(5*n+2)/4`
-/

namespace A340453.P13876625877314837416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (5 * n + 2) : ℚ) / 4

end

end A340453.P13876625877314837416

namespace A340453

/-- `A227216(5*n+2)/4` -/
def P13876625877314837416.Spec : Prop :=
  ∀ n, P13876625877314837416.a n = (A340453 n : ℚ)

end A340453

/-! ## A340453.P6932042979167246288

`-(A229802(5*n+2)/2)`
-/

namespace A340453.P6932042979167246288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A229802 (5 * n + 2) : ℚ) / 2)

end

end A340453.P6932042979167246288

namespace A340453

/-- `-(A229802(5*n+2)/2)` -/
def P6932042979167246288.Spec : Prop :=
  ∀ n, P6932042979167246288.a n = (A340453 n : ℚ)

end A340453

/-! ## A340453.P14550659167048906669

`∑{d}[A016873(n), A092202(#)]`
-/

namespace A340453.P14550659167048906669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092202 d

end

end A340453.P14550659167048906669

namespace A340453

/-- `∑{d}[A016873(n), A092202(#)]` -/
def P14550659167048906669.Spec : Prop :=
  ∀ n, P14550659167048906669.a n = A340453 n

end A340453

/-! ## A340453.P334849136125064425

`∑{d}[Δ[A005476(n)], A092202(#)]`
-/

namespace A340453.P334849136125064425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092202 d

end

end A340453.P334849136125064425

namespace A340453

/-- `∑{d}[Δ[A005476(n)], A092202(#)]` -/
def P334849136125064425.Spec : Prop :=
  ∀ n, P334849136125064425.a n = A340453 n

end A340453

/-! ## A340453.P14397696822004151536

`A229802(5*n+2)/(4*n-A016825(n))`
-/

namespace A340453.P14397696822004151536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229802 (5 * n + 2) : ℚ) / ((4 * n : ℤ) - A016825 n : ℚ)

end

end A340453.P14397696822004151536

namespace A340453

/-- `A229802(5*n+2)/(4*n-A016825(n))` -/
def P14397696822004151536.Spec : Prop :=
  ∀ n, P14397696822004151536.a n = (A340453 n : ℚ)

end A340453

/-! ## A340453.P17452898717822526552

`A229802(5*n+2)/(gcd(A002378(n), A061019(n+1))-(n+3))`
-/

namespace A340453.P17452898717822526552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229802 (5 * n + 2) : ℚ) / ((Int.gcd (A002378 n) (A061019 (n + 1)) : ℤ) - (n + 3 : ℤ) : ℚ)

end

end A340453.P17452898717822526552

namespace A340453

/-- `A229802(5*n+2)/(gcd(A002378(n), A061019(n+1))-(n+3))` -/
def P17452898717822526552.Spec : Prop :=
  ∀ n, P17452898717822526552.a n = (A340453 n : ℚ)

end A340453

/-! ## A340453.P15407693434947119972

`A229802(5*n+2)/A327274(A185069(n+1))`
-/

namespace A340453.P15407693434947119972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229802 (5 * n + 2) : ℚ) / (A327274 (A185069 (n + 1)).toNat : ℚ)

end

end A340453.P15407693434947119972

namespace A340453

/-- `A229802(5*n+2)/A327274(A185069(n+1))` -/
def P15407693434947119972.Spec : Prop :=
  ∀ n, P15407693434947119972.a n = (A340453 n : ℚ)

end A340453

/-!
# A340454: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+2))*(1 - x^(5*n+3)) ).

The programs for A340454, the canonical program `A340454.P12418673259723293615` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340454 has offset 0).

The definition of A340454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340454.P12418673259723293615

`A359236(n+1)-A359269(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340454

/-- `A359236(n+1)-A359269(n+1)` -/
def P12418673259723293615.Spec : Prop :=
  ∀ n, P12418673259723293615.a n = A340454 n

theorem P12418673259723293615.correct : P12418673259723293615.Spec := by
  intro n
  simp only [A340454]

end A340454

/-! ## A340454.P14911617123735270352

`A227216(5*n+3)/2`
-/

namespace A340454.P14911617123735270352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (5 * n + 3) : ℚ) / 2

end

end A340454.P14911617123735270352

namespace A340454

/-- `A227216(5*n+3)/2` -/
def P14911617123735270352.Spec : Prop :=
  ∀ n, P14911617123735270352.a n = (A340454 n : ℚ)

end A340454

/-! ## A340454.P8274144406366025512

`A373335(4*n+3+n)`
-/

namespace A340454.P8274144406366025512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373335 (4 * n + 3 + n)

end

end A340454.P8274144406366025512

namespace A340454

/-- `A373335(4*n+3+n)` -/
def P8274144406366025512.Spec : Prop :=
  ∀ n, P8274144406366025512.a n = A340454 n

end A340454

/-! ## A340454.P13826094237974742621

`∑{d}[5*n+3, A105384(#)]`
-/

namespace A340454.P13826094237974742621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A105384 d

end

end A340454.P13826094237974742621

namespace A340454

/-- `∑{d}[5*n+3, A105384(#)]` -/
def P13826094237974742621.Spec : Prop :=
  ∀ n, P13826094237974742621.a n = A340454 n

end A340454

/-! ## A340454.P1462698326841205296

`∑{d}[5*n+3, A257145(#)]`
-/

namespace A340454.P1462698326841205296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257145 d

end

end A340454.P1462698326841205296

namespace A340454

/-- `∑{d}[5*n+3, A257145(#)]` -/
def P1462698326841205296.Spec : Prop :=
  ∀ n, P1462698326841205296.a n = A340454 n

end A340454

/-! ## A340454.P15307674857474514637

`floor(A227216(floor(A304815(n)/2)+2)/2)`
-/

namespace A340454.P15307674857474514637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227216 (⌊(A304815 n : ℚ) / 2⌋ + 2).toNat : ℚ) / 2⌋

end

end A340454.P15307674857474514637

namespace A340454

/-- `floor(A227216(floor(A304815(n)/2)+2)/2)` -/
def P15307674857474514637.Spec : Prop :=
  ∀ n, P15307674857474514637.a n = A340454 n

end A340454

/-!
# A340455: G.f.: Sum_{n>=0} x^(2*n)/(1 - x^(5*n+2)) - x*Sum_{n>=0} x^(3*n)/(1 - x^(5*n+3)).

The programs for A340455, the canonical program `A340455.P8978882349512610872` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340455 has offset 0).

The definition of A340455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340455.P8978882349512610872

`A359287(n+1)-A359288(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340455

/-- `A359287(n+1)-A359288(n+1)` -/
def P8978882349512610872.Spec : Prop :=
  ∀ n, P8978882349512610872.a n = A340455 n

theorem P8978882349512610872.correct : P8978882349512610872.Spec := by
  intro n
  simp only [A340455]

end A340455

/-! ## A340455.P10832240472025439481

`A227216(5*n+4)`
-/

namespace A340455.P10832240472025439481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (5 * n + 4)

end

end A340455.P10832240472025439481

namespace A340455

/-- `A227216(5*n+4)` -/
def P10832240472025439481.Spec : Prop :=
  ∀ n, P10832240472025439481.a n = A340455 n

end A340455

/-! ## A340455.P4925026188085946282

`∑{d}[5*n+4, A244895(#)]`
-/

namespace A340455.P4925026188085946282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244895 d

end

end A340455.P4925026188085946282

namespace A340455

/-- `∑{d}[5*n+4, A244895(#)]` -/
def P4925026188085946282.Spec : Prop :=
  ∀ n, P4925026188085946282.a n = A340455 n

end A340455

/-! ## A340455.P1474254399990369470

`∑{d}[A016897(n), A163818(#)]`
-/

namespace A340455.P1474254399990369470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A163818 d

end

end A340455.P1474254399990369470

namespace A340455

/-- `∑{d}[A016897(n), A163818(#)]` -/
def P1474254399990369470.Spec : Prop :=
  ∀ n, P1474254399990369470.a n = A340455 n

end A340455

/-! ## A340455.P2334930940894072100

`∑{d}[A016897(n), A330033(#)]`
-/

namespace A340455.P2334930940894072100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330033 d

end

end A340455.P2334930940894072100

namespace A340455

/-- `∑{d}[A016897(n), A330033(#)]` -/
def P2334930940894072100.Spec : Prop :=
  ∀ n, P2334930940894072100.a n = A340455 n

end A340455

/-! ## A340455.P16625441600611951029

`A227216(A016897(n))/A007318(C(2, n))`
-/

namespace A340455.P16625441600611951029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (A016897 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A340455.P16625441600611951029

namespace A340455

/-- `A227216(A016897(n))/A007318(C(2, n))` -/
def P16625441600611951029.Spec : Prop :=
  ∀ n, P16625441600611951029.a n = (A340455 n : ℚ)

end A340455

/-! ## A340455.P14964503064165358492

`A227216(A016897(n))/A000041(C(2, n+2))`
-/

namespace A340455.P14964503064165358492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (A016897 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A340455.P14964503064165358492

namespace A340455

/-- `A227216(A016897(n))/A000041(C(2, n+2))` -/
def P14964503064165358492.Spec : Prop :=
  ∀ n, P14964503064165358492.a n = (A340455 n : ℚ)

end A340455

/-! ## A340455.P9094836612093608616

`A007318(∑[n])*A227216(A016897(n))`
-/

namespace A340455.P9094836612093608616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A227216 (A016897 n).toNat

end

end A340455.P9094836612093608616

namespace A340455

/-- `A007318(∑[n])*A227216(A016897(n))` -/
def P9094836612093608616.Spec : Prop :=
  ∀ n, P9094836612093608616.a n = A340455 n

end A340455

/-! ## A340455.P3140603463065705194

`A227216(A016897(n))^A014963(C(n+2, 2))`
-/

namespace A340455.P3140603463065705194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (A016897 n).toNat : ℚ) ^ (A014963 (Nat.choose (n + 2) 2) : ℤ)

end

end A340455.P3140603463065705194

namespace A340455

/-- `A227216(A016897(n))^A014963(C(n+2, 2))` -/
def P3140603463065705194.Spec : Prop :=
  ∀ n, P3140603463065705194.a n = (A340455 n : ℚ)

end A340455

/-!
# A340456: G.f.: Sum_{n>=0} x^n/(1 - x^(5*n+1)) - x^3*Sum_{n>=0} x^(4*n)/(1 - x^(5*n+4)).

The programs for A340456, the canonical program `A340456.P11012612934613790888` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340456 has offset 0).

The definition of A340456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340456.P11012612934613790888

`A359238(n+1)-A359241(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340456

/-- `A359238(n+1)-A359241(n+1)` -/
def P11012612934613790888.Spec : Prop :=
  ∀ n, P11012612934613790888.a n = A340456 n

theorem P11012612934613790888.correct : P11012612934613790888.Spec := by
  intro n
  simp only [A340456]

end A340456

/-! ## A340456.P688439784830072167

`A119428(5*n+1)`
-/

namespace A340456.P688439784830072167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119428 (5 * n + 1)

end

end A340456.P688439784830072167

namespace A340456

/-- `A119428(5*n+1)` -/
def P688439784830072167.Spec : Prop :=
  ∀ n, P688439784830072167.a n = A340456 n

end A340456

/-! ## A340456.P9926206638952298208

`A229802(5*n+1)`
-/

namespace A340456.P9926206638952298208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229802 (5 * n + 1)

end

end A340456.P9926206638952298208

namespace A340456

/-- `A229802(5*n+1)` -/
def P9926206638952298208.Spec : Prop :=
  ∀ n, P9926206638952298208.a n = A340456 n

end A340456

/-! ## A340456.P4640328480649534994

`A227216(5*n+1)/3`
-/

namespace A340456.P4640328480649534994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227216 (5 * n + 1) : ℚ) / 3

end

end A340456.P4640328480649534994

namespace A340456

/-- `A227216(5*n+1)/3` -/
def P4640328480649534994.Spec : Prop :=
  ∀ n, P4640328480649534994.a n = (A340456 n : ℚ)

end A340456

/-! ## A340456.P17960211676259159153

`∑{d}[5*n+1, A163812(#)]`
-/

namespace A340456.P17960211676259159153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163812 d

end

end A340456.P17960211676259159153

namespace A340456

/-- `∑{d}[5*n+1, A163812(#)]` -/
def P17960211676259159153.Spec : Prop :=
  ∀ n, P17960211676259159153.a n = A340456 n

end A340456

/-! ## A340456.P15408197189410818624

`∑{d}[5*n+1, A244895(#)]`
-/

namespace A340456.P15408197189410818624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244895 d

end

end A340456.P15408197189410818624

namespace A340456

/-- `∑{d}[5*n+1, A244895(#)]` -/
def P15408197189410818624.Spec : Prop :=
  ∀ n, P15408197189410818624.a n = A340456 n

end A340456

/-! ## A340456.P17123234592473658823

`∑{d}[5*n+1, A330025(#)]`
-/

namespace A340456.P17123234592473658823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330025 d

end

end A340456.P17123234592473658823

namespace A340456

/-- `∑{d}[5*n+1, A330025(#)]` -/
def P17123234592473658823.Spec : Prop :=
  ∀ n, P17123234592473658823.a n = A340456 n

end A340456

/-! ## A340456.P17295988611991951020

`∑{d}[4*n+n+1, A131554(#)]`
-/

namespace A340456.P17295988611991951020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131554 d

end

end A340456.P17295988611991951020

namespace A340456

/-- `∑{d}[4*n+n+1, A131554(#)]` -/
def P17295988611991951020.Spec : Prop :=
  ∀ n, P17295988611991951020.a n = A340456 n

end A340456

/-! ## A340456.P15529917364567085811

`∑{d}[A016861(n), A117444(#)]`
-/

namespace A340456.P15529917364567085811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117444 d

end

end A340456.P15529917364567085811

namespace A340456

/-- `∑{d}[A016861(n), A117444(#)]` -/
def P15529917364567085811.Spec : Prop :=
  ∀ n, P15529917364567085811.a n = A340456 n

end A340456

/-! ## A340456.P468492876973451404

`A119428(2*A016861(n))/2`
-/

namespace A340456.P468492876973451404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119428 (2 * A016861 n).toNat : ℚ) / 2

end

end A340456.P468492876973451404

namespace A340456

/-- `A119428(2*A016861(n))/2` -/
def P468492876973451404.Spec : Prop :=
  ∀ n, P468492876973451404.a n = (A340456 n : ℚ)

end A340456

/-!
# A340457: Squares in A067459.

The programs for A340457, there is no canonical definition to state claims against.
-/

/-! ## A340457.P15203522769797345588

`A036595(∑[A052938(n)])²`
-/

namespace A340457.P15203522769797345588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A340457.P15203522769797345588

/-!
# A340458: Minimum length of the string over the alphabet of 3 or more symbols that has exactly n substring palindromes. Substrings are counted as distinct if they start at different offsets.

The programs for A340458, there is no canonical definition to state claims against.
-/

/-! ## A340458.P7735034562619679591

`∑{digits}[A361336(n+1), A028657(#)]`
-/

namespace A340458.P7735034562619679591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028657 x).sum

end

end A340458.P7735034562619679591

/-! ## A340458.P464076119355305136

`∑{digits}[A361336(n+1), A259285(#)]`
-/

namespace A340458.P464076119355305136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A259285 x).sum

end

end A340458.P464076119355305136

/-! ## A340458.P8178381315495784745

`∑{digits}[A361335(n+1), A317783(#)]`
-/

namespace A340458.P8178381315495784745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A317783 x).sum

end

end A340458.P8178381315495784745

/-! ## A340458.P13864214482332453779

`∑{digits}[A361336(n+1), A317783(#)]`
-/

namespace A340458.P13864214482332453779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A317783 x).sum

end

end A340458.P13864214482332453779

/-! ## A340458.P17648086921794609583

`∑{digits}[A361335(n+1), A361338(#)]`
-/

namespace A340458.P17648086921794609583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A361338 x).sum

end

end A340458.P17648086921794609583

/-! ## A340458.P17453255422207551928

`∑{digits}[A361336(n+1), A361338(#)]`
-/

namespace A340458.P17453255422207551928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A361338 x).sum

end

end A340458.P17453255422207551928

/-! ## A340458.P12819129691174375124

`A000194(A118759(2*n+1)+A079904(n+1))`
-/

namespace A340458.P12819129691174375124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A118759 (2 * n + 1) + A079904 (n + 1)).toNat

end

end A340458.P12819129691174375124

/-!
# A340460: Numbers k for which tan(k) > sqrt(k).

The programs for A340460, there is no canonical definition to state claims against.
-/

/-! ## A340460.P8333516907360534239

`lt[sqrt(n), tan(n)]`
-/

namespace A340460.P8333516907360534239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340460.P8333516907360534239

/-! ## A340460.P2611732089535135731

`lt[sqrt(n), A000209(n)]`
-/

namespace A340460.P2611732089535135731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P2611732089535135731

/-! ## A340460.P11964951186735208851

`lt[sqrt(n), A195910(n)]`
-/

namespace A340460.P11964951186735208851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P11964951186735208851

/-! ## A340460.P10906592706421049048

`lt[A000196(n), round(tan(n))]`
-/

namespace A340460.P10906592706421049048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340460.P10906592706421049048

/-! ## A340460.P4667056871697318855

`lt[n*sqrt(n), A051499(n)]`
-/

namespace A340460.P4667056871697318855
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P4667056871697318855

/-! ## A340460.P15616012300627120325

`lt[sqrt(n), A057427(n)+A000503(n)]`
-/

namespace A340460.P15616012300627120325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P15616012300627120325

/-! ## A340460.P14898278863330471155

`lt[sqrt(n), A000503(n)-A057428(n)]`
-/

namespace A340460.P14898278863330471155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n - A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P14898278863330471155

/-! ## A340460.P5520447674462279744

`lt[sqrt(n), A000503(n)+2-A054977(n)]`
-/

namespace A340460.P5520447674462279744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + (2 - A054977 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A340460.P5520447674462279744

/-! ## A340460.P13290456590906225793

`A000027(lt[A000196(n), A000209(n)])`
-/

namespace A340460.P13290456590906225793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340460.P13290456590906225793

/-!
# A340461: a(n) = 2*sigma(phi(n)) - n.

The programs for A340461, the canonical program `A340461.P4637614112348525884` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340461 has offset 1).

The definition of A340461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(A000010(n+1))-(n+1)` (program `A340461.P4637614112348525884`, by `A340461.P4637614112348525884.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340461.P11697221770829403899

`2*A062402(n+1)-(n+1)`
-/

namespace A340461.P11697221770829403899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062402 (n + 1) - (n + 1 : ℤ)

end

end A340461.P11697221770829403899

namespace A340461

/-- `2*A062402(n+1)-(n+1)` -/
def P11697221770829403899.Spec : Prop :=
  ∀ n, P11697221770829403899.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P4637614112348525884

`2*A000203(A000010(n+1))-(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340461

/-- `2*A000203(A000010(n+1))-(n+1)` -/
def P4637614112348525884.Spec : Prop :=
  ∀ n, P4637614112348525884.a n = A340461 (n + 1)

theorem P4637614112348525884.correct : P4637614112348525884.Spec := by
  intro n
  simp only [A340461, Nat.add_sub_cancel]

end A340461

/-! ## A340461.P6681321627490658166

`2*A295302(n+1)+1+n`
-/

namespace A340461.P6681321627490658166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295302 (n + 1) + 1 + (n : ℤ)

end

end A340461.P6681321627490658166

namespace A340461

/-- `2*A295302(n+1)+1+n` -/
def P6681321627490658166.Spec : Prop :=
  ∀ n, P6681321627490658166.a n = A340461 (n + 1)

theorem P6681321627490658166.correct : P6681321627490658166.Spec := by
  intro n
  simp only [A340461, Nat.add_sub_cancel, A340461.P6681321627490658166.a, A340461.P4637614112348525884.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A295302, A295302.P2815971940510698898.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340461

/-! ## A340461.P1884746489890099441

`A002659((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-n`
-/

namespace A340461.P1884746489890099441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat - (n : ℤ)

end

end A340461.P1884746489890099441

namespace A340461

/-- `A002659((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-n` -/
def P1884746489890099441.Spec : Prop :=
  ∀ n, P1884746489890099441.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P5189250511796465234

`A074400((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-(n+1)`
-/

namespace A340461.P5189250511796465234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat - (n + 1 : ℤ)

end

end A340461.P5189250511796465234

namespace A340461

/-- `A074400((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-(n+1)` -/
def P5189250511796465234.Spec : Prop :=
  ∀ n, P5189250511796465234.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P14872488478776792523

`A002659(Δ[A002088(n)])-n`
-/

namespace A340461.P14872488478776792523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A340461.P14872488478776792523

namespace A340461

/-- `A002659(Δ[A002088(n)])-n` -/
def P14872488478776792523.Spec : Prop :=
  ∀ n, P14872488478776792523.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P7117677175028543299

`A002659(Δ[A005728(n)])-n`
-/

namespace A340461.P7117677175028543299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A340461.P7117677175028543299

namespace A340461

/-- `A002659(Δ[A005728(n)])-n` -/
def P7117677175028543299.Spec : Prop :=
  ∀ n, P7117677175028543299.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P2451208345479359428

`A002659(A000010(n+1))-n`
-/

namespace A340461.P2451208345479359428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A000010 (n + 1)).toNat - (n : ℤ)

end

end A340461.P2451208345479359428

namespace A340461

/-- `A002659(A000010(n+1))-n` -/
def P2451208345479359428.Spec : Prop :=
  ∀ n, P2451208345479359428.a n = A340461 (n + 1)

theorem P2451208345479359428.correct : P2451208345479359428.Spec := by
  intro n
  simp only [A340461, Nat.add_sub_cancel, A340461.P2451208345479359428.a, A340461.P4637614112348525884.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340461

/-! ## A340461.P15964561454970620481

`A002659(A349137(Δ[n²]))-n`
-/

namespace A340461.P15964561454970620481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - (n : ℤ)

end

end A340461.P15964561454970620481

namespace A340461

/-- `A002659(A349137(Δ[n²]))-n` -/
def P15964561454970620481.Spec : Prop :=
  ∀ n, P15964561454970620481.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P6279466157523990894

`A295302(n+1)+A062402(n+1)`
-/

namespace A340461.P6279466157523990894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1) + A062402 (n + 1)

end

end A340461.P6279466157523990894

namespace A340461

/-- `A295302(n+1)+A062402(n+1)` -/
def P6279466157523990894.Spec : Prop :=
  ∀ n, P6279466157523990894.a n = A340461 (n + 1)

theorem P6279466157523990894.correct : P6279466157523990894.Spec := by
  intro n
  simp only [A340461, Nat.add_sub_cancel, A340461.P6279466157523990894.a, A340461.P4637614112348525884.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062402, A062402.P8156864134052788222.a, A295302, A295302.P2815971940510698898.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340461

/-! ## A340461.P6204598614745329830

`A295302(n+1)+∑{d}[A000010(n+1), #]`
-/

namespace A340461.P6204598614745329830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A340461.P6204598614745329830

namespace A340461

/-- `A295302(n+1)+∑{d}[A000010(n+1), #]` -/
def P6204598614745329830.Spec : Prop :=
  ∀ n, P6204598614745329830.a n = A340461 (n + 1)

end A340461

/-! ## A340461.P6059391190793649135

`A295302(n+1)+A000203(A000010(n+1))`
-/

namespace A340461.P6059391190793649135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1) + A000203 (A000010 (n + 1)).toNat

end

end A340461.P6059391190793649135

namespace A340461

/-- `A295302(n+1)+A000203(A000010(n+1))` -/
def P6059391190793649135.Spec : Prop :=
  ∀ n, P6059391190793649135.a n = A340461 (n + 1)

theorem P6059391190793649135.correct : P6059391190793649135.Spec := by
  intro n
  simp only [A340461, Nat.add_sub_cancel, A340461.P6059391190793649135.a, A340461.P4637614112348525884.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A295302, A295302.P2815971940510698898.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340461

/-! ## A340461.P12298148331257348237

`A004277(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])-(n+1)`
-/

namespace A340461.P12298148331257348237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d) - (n + 1 : ℤ)

end

end A340461.P12298148331257348237

namespace A340461

/-- `A004277(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])-(n+1)` -/
def P12298148331257348237.Spec : Prop :=
  ∀ n, P12298148331257348237.a n = A340461 (n + 1)

end A340461

/-!
# A340463: Primes p such that p*q+r*s+t*u is prime, where p,q,r,s,t,u are consecutive primes.

The programs for A340463, there is no canonical definition to state claims against.
-/

/-! ## A340463.P8862470913534542113

`p?[A324766(3*(n+1))-n]`
-/

namespace A340463.P8862470913534542113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (3 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340463.P8862470913534542113

/-! ## A340463.P2895913254275980610

`A000040(eq[A222266(n+1), A326786(3*n)])`
-/

namespace A340463.P2895913254275980610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340463.P2895913254275980610

/-!
# A340466: Primes whose binary expansion contains more 1's than 0's but at least one 0.

The programs for A340466, the canonical program `A340466.P10595566121626487183` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340466 has offset 1).

The definition of A340466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340466.P10595566121626487183

`∩[A095070(n+1), A138837(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A340466

/-- `∩[A095070(n+1), A138837(n+1)]` -/
def P10595566121626487183.Spec : Prop :=
  ∀ n, (P10595566121626487183.a n : ℤ) = A340466 (n + 1)

theorem P10595566121626487183.correct : P10595566121626487183.Spec := by
  intro n
  simp only [A340466, Nat.add_sub_cancel]

end A340466

/-! ## A340466.P4508862119438737695

`∩[A095070(n+1), A185208(n+1)]`
-/

namespace A340466.P4508862119438737695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P4508862119438737695

namespace A340466

/-- `∩[A095070(n+1), A185208(n+1)]` -/
def P4508862119438737695.Spec : Prop :=
  ∀ n, (P4508862119438737695.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P18406929359002833339

`∩[A095070(n+1), A294277(n+1)]`
-/

namespace A340466.P18406929359002833339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P18406929359002833339

namespace A340466

/-- `∩[A095070(n+1), A294277(n+1)]` -/
def P18406929359002833339.Spec : Prop :=
  ∀ n, (P18406929359002833339.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P15001376346817190358

`∩[A095070(n+1), A295584(n+1)]`
-/

namespace A340466.P15001376346817190358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P15001376346817190358

namespace A340466

/-- `∩[A095070(n+1), A295584(n+1)]` -/
def P15001376346817190358.Spec : Prop :=
  ∀ n, (P15001376346817190358.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P16037238075473325245

`∩[A072600(n+1), A138837(n+1)]`
-/

namespace A340466.P16037238075473325245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P16037238075473325245

namespace A340466

/-- `∩[A072600(n+1), A138837(n+1)]` -/
def P16037238075473325245.Spec : Prop :=
  ∀ n, (P16037238075473325245.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P16720389302292716350

`∩[A095070(n+1), A161790(n+1)]`
-/

namespace A340466.P16720389302292716350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P16720389302292716350

namespace A340466

/-- `∩[A095070(n+1), A161790(n+1)]` -/
def P16720389302292716350.Spec : Prop :=
  ∀ n, (P16720389302292716350.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P7542139805664616118

`∩[A095070(n+1), A143263(n+1)]`
-/

namespace A340466.P7542139805664616118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P7542139805664616118

namespace A340466

/-- `∩[A095070(n+1), A143263(n+1)]` -/
def P7542139805664616118.Spec : Prop :=
  ∀ n, (P7542139805664616118.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P7117300823280774189

`∩[A095070(n+1), A347771(n+1)]`
-/

namespace A340466.P7117300823280774189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P7117300823280774189

namespace A340466

/-- `∩[A095070(n+1), A347771(n+1)]` -/
def P7117300823280774189.Spec : Prop :=
  ∀ n, (P7117300823280774189.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P18260969044173650209

`∩[A080765(n+1), A095070(n+1)]`
-/

namespace A340466.P18260969044173650209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P18260969044173650209

namespace A340466

/-- `∩[A080765(n+1), A095070(n+1)]` -/
def P18260969044173650209.Spec : Prop :=
  ∀ n, (P18260969044173650209.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P5769769130350732065

`∩[A095070(n+1), A257739(n+1)]`
-/

namespace A340466.P5769769130350732065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P5769769130350732065

namespace A340466

/-- `∩[A095070(n+1), A257739(n+1)]` -/
def P5769769130350732065.Spec : Prop :=
  ∀ n, (P5769769130350732065.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P2982773587919165425

`∩[A095070(n+1), A175431(n+1)]`
-/

namespace A340466.P2982773587919165425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P2982773587919165425

namespace A340466

/-- `∩[A095070(n+1), A175431(n+1)]` -/
def P2982773587919165425.Spec : Prop :=
  ∀ n, (P2982773587919165425.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P8893044564147834162

`∩[A095070(n+1), A391250(n+1)]`
-/

namespace A340466.P8893044564147834162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P8893044564147834162

namespace A340466

/-- `∩[A095070(n+1), A391250(n+1)]` -/
def P8893044564147834162.Spec : Prop :=
  ∀ n, (P8893044564147834162.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P18142078210665482481

`∩[A095070(n+1), A101082(n+1)]`
-/

namespace A340466.P18142078210665482481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P18142078210665482481

namespace A340466

/-- `∩[A095070(n+1), A101082(n+1)]` -/
def P18142078210665482481.Spec : Prop :=
  ∀ n, (P18142078210665482481.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P5322493845931209087

`∩[A062289(n+1), A095070(n+1)]`
-/

namespace A340466.P5322493845931209087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P5322493845931209087

namespace A340466

/-- `∩[A062289(n+1), A095070(n+1)]` -/
def P5322493845931209087.Spec : Prop :=
  ∀ n, (P5322493845931209087.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P12447021663219464527

`filter[A095070(n+1), A043545(#)]`
-/

namespace A340466.P12447021663219464527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A340466.P12447021663219464527

namespace A340466

/-- `filter[A095070(n+1), A043545(#)]` -/
def P12447021663219464527.Spec : Prop :=
  ∀ n, P12447021663219464527.a n = A340466 (n + 1)

end A340466

/-! ## A340466.P325902553159257172

`filter[A138837(n+1), A115516(#)]`
-/

namespace A340466.P325902553159257172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115516 (f1 j).toNat = 1) n)

end

end A340466.P325902553159257172

namespace A340466

/-- `filter[A138837(n+1), A115516(#)]` -/
def P325902553159257172.Spec : Prop :=
  ∀ n, P325902553159257172.a n = A340466 (n + 1)

end A340466

/-! ## A340466.P10066354987495619384

`filter[A095070(n+1), A267442(#)]`
-/

namespace A340466.P10066354987495619384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A340466.P10066354987495619384

namespace A340466

/-- `filter[A095070(n+1), A267442(#)]` -/
def P10066354987495619384.Spec : Prop :=
  ∀ n, P10066354987495619384.a n = A340466 (n + 1)

end A340466

/-! ## A340466.P14302014882944877964

`∩[A095070(n+1), A133398(n+1)]`
-/

namespace A340466.P14302014882944877964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P14302014882944877964

namespace A340466

/-- `∩[A095070(n+1), A133398(n+1)]` -/
def P14302014882944877964.Spec : Prop :=
  ∀ n, (P14302014882944877964.a n : ℤ) = A340466 (n + 1)

end A340466

/-! ## A340466.P932895957570271792

`∩[A095070(n+1), A161155(n+1)]`
-/

namespace A340466.P932895957570271792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340466.P932895957570271792

namespace A340466

/-- `∩[A095070(n+1), A161155(n+1)]` -/
def P932895957570271792.Spec : Prop :=
  ∀ n, (P932895957570271792.a n : ℤ) = A340466 (n + 1)

end A340466

/-!
# A340467: a(n) is the n-th squarefree number having n prime factors.

The programs for A340467, there is no canonical definition to state claims against.
-/

/-! ## A340467.P16252243376785105101

`A287483(∑[A287484(n)]+n)`
-/

namespace A340467.P16252243376785105101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A340467.P16252243376785105101

/-!
# A340468: a(n) is the least prime of the form 2 + Product_{i=n..m} prime(i).

The programs for A340468, there is no canonical definition to state claims against.
-/

/-! ## A340468.P5276966438215770420

`A242490(n+2)-1`
-/

namespace A340468.P5276966438215770420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242490 (n + 2) - 1

end

end A340468.P5276966438215770420

/-! ## A340468.P6635019041195129323

`p?[Δ[A174376(ceil(3*n/2))]]`
-/

namespace A340468.P6635019041195129323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174376 ⌈3 * ((n : ℚ) / 2)⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340468.P6635019041195129323

/-! ## A340468.P8251151830612938050

`A076605(A061216(n+2))`
-/

namespace A340468.P8251151830612938050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A061216 (n + 2)).toNat

end

end A340468.P8251151830612938050

/-!
# A340471: Denominators of an approximation to zeta(n)/Pi^n.

The programs for A340471, there is no canonical definition to state claims against.
-/

/-! ## A340471.P10434414101087577318

`2*A057020(A001813(n))`
-/

namespace A340471.P10434414101087577318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057020 (A001813 n).toNat

end

end A340471.P10434414101087577318

/-!
# A340472: Numerators of an approximation to zeta(n)/Pi^n.

The programs for A340472, there is no canonical definition to state claims against.
-/

/-! ## A340472.P3001659453859831652

`A050970(A050985(n+1)^A024940(n+3))`
-/

namespace A340472.P3001659453859831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050970 (SequenceMachineLib.roundAway ((A050985 (n + 1) : ℚ) ^ (A024940 (n + 3) : ℤ))).toNat

end

end A340472.P3001659453859831652

/-! ## A340472.P320936952092824846

`A000265(A099612(n*A230093(n)))`
-/

namespace A340472.P320936952092824846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A099612 ((n : ℤ) * A230093 n).toNat).toNat

end

end A340472.P320936952092824846

/-! ## A340472.P11565656163358295214

`A000265(A099612(n)^A230093(n))`
-/

namespace A340472.P11565656163358295214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A099612 n : ℚ) ^ (A230093 n : ℤ))).toNat

end

end A340472.P11565656163358295214

/-! ## A340472.P13233675287895143697

`gcd(A000265(A099612(n)), A165408(n))`
-/

namespace A340472.P13233675287895143697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A099612 n).toNat) (A165408 n)

end

end A340472.P13233675287895143697

/-! ## A340472.P715646371945641879

`A000265(C(A099612(n), A230093(n)))`
-/

namespace A340472.P715646371945641879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (A099612 n).toNat (A230093 n).toNat)

end

end A340472.P715646371945641879

/-!
# A340473: a(n) = n! [x^n] W(-W(x))/(-W(x)), where W(x) is the Lambert W function.

The programs for A340473, there is no canonical definition to state claims against.
-/

/-! ## A340473.P5354616895302109535

`A060462(ceil(2^(n-1))^round(n²/12))`
-/

namespace A340473.P5354616895302109535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ))).toNat

end

end A340473.P5354616895302109535

/-! ## A340473.P11276826277527089487

`A054571(A036734(n))+1`
-/

namespace A340473.P11276826277527089487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (A036734 n).toNat + 1

end

end A340473.P11276826277527089487

/-!
# A340474: a(n) = n! [x^n] LW(T(x)), where T(x) = -W(-x) Euler's tree function, W(x) is the Lambert W function, and LW(x) = W(-W(x))/(-W(x)) (A340473).

The programs for A340474, there is no canonical definition to state claims against.
-/

/-! ## A340474.P2454860586679886122

`A171482(A325054(n)-A194000(n))`
-/

namespace A340474.P2454860586679886122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171482 (A325054 n - A194000 n).toNat

end

end A340474.P2454860586679886122

/-! ## A340474.P15691113587875917964

`or(A008611(n)², A038722(A080893(n)))`
-/

namespace A340474.P15691113587875917964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 n ^ 2) (A038722 (A080893 n).toNat)

end

end A340474.P15691113587875917964

/-!
# A340475: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Product_{a=1..n} Product_{b=1..k} (4*sin(a*Pi/(2*n+1))^2 + 4*sin(b*Pi/(2*k+1))^2).

The programs for A340475, there is no canonical definition to state claims against.
-/

/-! ## A340475.P7365090325287181440

`A007306(A022180(n))`
-/

namespace A340475.P7365090325287181440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A022180 n).toNat

end

end A340475.P7365090325287181440

/-! ## A340475.P11457396377890749885

`A341218(A081579(n))`
-/

namespace A340475.P11457396377890749885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341218 (A081579 n).toNat

end

end A340475.P11457396377890749885

/-! ## A340475.P6107663701641337064

`A306678(A157221(n))`
-/

namespace A340475.P6107663701641337064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306678 (A157221 n).toNat

end

end A340475.P6107663701641337064

/-! ## A340475.P12477749317811114630

`A332107(A140945(n+1))`
-/

namespace A340475.P12477749317811114630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332107 (A140945 (n + 1)).toNat

end

end A340475.P12477749317811114630

/-! ## A340475.P4187562616107153062

`A330697(A142596(n+1))`
-/

namespace A340475.P4187562616107153062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (A142596 (n + 1)).toNat

end

end A340475.P4187562616107153062

/-!
# A340476: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Product_{a=1..n} Product_{b=1..k} (4*sin(a*Pi/(2*n+1))^2 + 4*cos(b*Pi/(2*k+1))^2).

The programs for A340476, there is no canonical definition to state claims against.
-/

/-! ## A340476.P11692320362874571140

`A111801(A137251(n+1)*A256268(n))`
-/

namespace A340476.P11692320362874571140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (A137251 (n + 1) * A256268 n).toNat

end

end A340476.P11692320362874571140

/-!
# A340477: Inverse permutation to A340401.

The programs for A340477, there is no canonical definition to state claims against.
-/

/-! ## A340477.P6105897609004112108

`A163241(A340478(n))+A003982(A016754(n))`
-/

namespace A340477.P6105897609004112108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat + A003982 (A016754 n).toNat

end

end A340477.P6105897609004112108

/-! ## A340477.P13229266573145954080

`A163241(A340478(n))-A353479(A016754(n)+1)`
-/

namespace A340477.P13229266573145954080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat - A353479 (A016754 n + 1).toNat

end

end A340477.P13229266573145954080

/-! ## A340477.P4908460714381725321

`A163241(A340478(n))*A202238(A016754(n)+1)`
-/

namespace A340477.P4908460714381725321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat * A202238 (A016754 n + 1).toNat

end

end A340477.P4908460714381725321

/-! ## A340477.P3754592161011946835

`A163241(A340478(n))+A322026(A016754(n)+1)-2`
-/

namespace A340477.P3754592161011946835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat + (A322026 (A016754 n + 1).toNat - 2)

end

end A340477.P3754592161011946835

/-! ## A340477.P3648334387202558573

`A163241(A340478(n))+A049310(A085296(n²+1)+1)`
-/

namespace A340477.P3648334387202558573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat + A049310 (A085296 (n ^ 2 + 1) + 1).toNat

end

end A340477.P3648334387202558573

/-! ## A340477.P11005965107130862992

`A003649(A085296(n²+1)+1)*A163241(A340478(n))`
-/

namespace A340477.P11005965107130862992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003649 (A085296 (n ^ 2 + 1) + 1).toNat * A163241 (A340478 n).toNat

end

end A340477.P11005965107130862992

/-! ## A340477.P11267804214678963544

`A003650(A085296(n²+1)+1)*A163241(A340478(n))`
-/

namespace A340477.P11267804214678963544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003650 (A085296 (n ^ 2 + 1) + 1).toNat * A163241 (A340478 n).toNat

end

end A340477.P11267804214678963544

/-! ## A340477.P10770548407283568609

`A009194(A141854(n+1))*A163241(A340478(n))`
-/

namespace A340477.P10770548407283568609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A141854 (n + 1)).toNat * A163241 (A340478 n).toNat

end

end A340477.P10770548407283568609

/-! ## A340477.P1757897714110189490

`A163241(A340478(n))*A327857(A137688(n))`
-/

namespace A340477.P1757897714110189490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat * A327857 (A137688 n).toNat

end

end A340477.P1757897714110189490

/-! ## A340477.P4345748350415075224

`A163241(A340478(n))+A000038(A059268(n))`
-/

namespace A340477.P4345748350415075224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340478 n).toNat + A000038 (A059268 n).toNat

end

end A340477.P4345748350415075224

/-! ## A340477.P6886736251406160120

`A009194(A009194(n+1)²)*A163241(A340478(n))`
-/

namespace A340477.P6886736251406160120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A009194 (n + 1) ^ 2).toNat * A163241 (A340478 n).toNat

end

end A340477.P6886736251406160120

/-! ## A340477.P2040618417239601814

`A098725(A155767(3*n))*A163241(A340478(n))`
-/

namespace A340477.P2040618417239601814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A155767 (3 * n)).toNat * A163241 (A340478 n).toNat

end

end A340477.P2040618417239601814

/-! ## A340477.P14377088410330836622

`A163241(A340478(n))%A198277(n)`
-/

namespace A340477.P14377088410330836622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163241 (A340478 n).toNat) (A198277 n)

end

end A340477.P14377088410330836622

/-! ## A340477.P17992942877742652482

`A163241(A340478(n)%A219958(n+1))`
-/

namespace A340477.P17992942877742652482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Int.tmod (A340478 n) (A219958 (n + 1))).toNat

end

end A340477.P17992942877742652482

/-!
# A340478: Inverse permutation to A340402.

The programs for A340478, there is no canonical definition to state claims against.
-/

/-! ## A340478.P4393733046591978178

`A154754(A090569(n+1))*A163241(A340477(n))`
-/

namespace A340478.P4393733046591978178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (A090569 (n + 1)).toNat * A163241 (A340477 n).toNat

end

end A340478.P4393733046591978178

/-! ## A340478.P3684275968577700392

`A163241(A340477(n))*A255327(A191108(n+1))`
-/

namespace A340478.P3684275968577700392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat * A255327 (A191108 (n + 1)).toNat

end

end A340478.P3684275968577700392

/-! ## A340478.P3219028323900298479

`A281116(A235395(3*n+2))+A163241(A340477(n))`
-/

namespace A340478.P3219028323900298479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A235395 (3 * n + 2)).toNat + A163241 (A340477 n).toNat

end

end A340478.P3219028323900298479

/-! ## A340478.P10604143393669910094

`A163241(A340477(n))+A000007(A102376(n))`
-/

namespace A340478.P10604143393669910094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A000007 (A102376 n).toNat

end

end A340478.P10604143393669910094

/-! ## A340478.P9438229544010038199

`A057427(A051601(n))*A163241(A340477(n))`
-/

namespace A340478.P9438229544010038199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A051601 n).toNat * A163241 (A340477 n).toNat

end

end A340478.P9438229544010038199

/-! ## A340478.P9311036094917397000

`A163241(A340477(n))+A117909(A102376(n)+1)`
-/

namespace A340478.P9311036094917397000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A117909 (A102376 n + 1).toNat

end

end A340478.P9311036094917397000

/-! ## A340478.P12311416381506422615

`A163241(A340477(n))+A000122(A249096(n+1))`
-/

namespace A340478.P12311416381506422615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A000122 (A249096 (n + 1)).toNat

end

end A340478.P12311416381506422615

/-! ## A340478.P1134063001341546923

`A163241(A340477(n))+A151795(A151787(n+1))`
-/

namespace A340478.P1134063001341546923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A151795 (A151787 (n + 1)).toNat

end

end A340478.P1134063001341546923

/-! ## A340478.P14443556181601879010

`A064839(A165825(n+1))*A163241(A340477(n))`
-/

namespace A340478.P14443556181601879010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A165825 (n + 1)).toNat * A163241 (A340477 n).toNat

end

end A340478.P14443556181601879010

/-! ## A340478.P14948903371193893677

`A163241(A340477(n))+A000038(A001511(n+1)!)`
-/

namespace A340478.P14948903371193893677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A000038 (Nat.factorial (A001511 (n + 1)).toNat)

end

end A340478.P14948903371193893677

/-! ## A340478.P15445374474193872080

`A054977(A001511(n+1)!)*A163241(A340477(n))`
-/

namespace A340478.P15445374474193872080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (Nat.factorial (A001511 (n + 1)).toNat) * A163241 (A340477 n).toNat

end

end A340478.P15445374474193872080

/-! ## A340478.P10583793837312074806

`A163241(A340477(n))+A000038(A028326(n))`
-/

namespace A340478.P10583793837312074806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A000038 (A028326 n).toNat

end

end A340478.P10583793837312074806

/-! ## A340478.P14367050889965928543

`A163241(A340477(n))+A000038(A001597(n+1))`
-/

namespace A340478.P14367050889965928543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A000038 (A001597 (n + 1)).toNat

end

end A340478.P14367050889965928543

/-! ## A340478.P15377192593491161120

`A163241(A340477(n))+A049084(A001597(n+2))`
-/

namespace A340478.P15377192593491161120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A340477 n).toNat + A049084 (A001597 (n + 2)).toNat

end

end A340478.P15377192593491161120

/-! ## A340478.P10320858407887957790

`A163241(A340477(n)%A219958(n+1))`
-/

namespace A340478.P10320858407887957790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Int.tmod (A340477 n) (A219958 (n + 1))).toNat

end

end A340478.P10320858407887957790

/-!
# A340479: a(n) = R(n) + digsum(n).

The programs for A340479, there is no canonical definition to state claims against.
-/

/-! ## A340479.P1172592766362112325

`A004086(n)+A007953(n)`
-/

namespace A340479.P1172592766362112325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + A007953 n

end

end A340479.P1172592766362112325

/-! ## A340479.P4253046601730760065

`A062028(A004086(n))`
-/

namespace A340479.P4253046601730760065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A004086 n).toNat

end

end A340479.P4253046601730760065

/-! ## A340479.P13691200166902597603

`A062028(A056964(n)-n)`
-/

namespace A340479.P13691200166902597603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A056964 n - (n : ℤ)).toNat

end

end A340479.P13691200166902597603

/-! ## A340479.P9766073594783135876

`A062028(n-A056965(n))`
-/

namespace A340479.P9766073594783135876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 ((n : ℤ) - A056965 n).toNat

end

end A340479.P9766073594783135876

/-! ## A340479.P726709768873563155

`A056964(n)-A066568(n)`
-/

namespace A340479.P726709768873563155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - A066568 n

end

end A340479.P726709768873563155

/-! ## A340479.P3098728824547585010

`A004086(n)+A169805(n)/2`
-/

namespace A340479.P3098728824547585010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 n : ℚ) + (A169805 n : ℚ) / 2

end

end A340479.P3098728824547585010

/-! ## A340479.P11394392779965202579

`A007953(n)+A056964(n)-n`
-/

namespace A340479.P11394392779965202579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A056964 n - (n : ℤ))

end

end A340479.P11394392779965202579

/-! ## A340479.P14018288526009993443

`A007953(n)+n-A056965(n)`
-/

namespace A340479.P14018288526009993443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A056965 n)

end

end A340479.P14018288526009993443

/-! ## A340479.P16119478483516549874

`A004086(n)-A001489(∑{digits}[n, #])`
-/

namespace A340479.P16119478483516549874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A001489 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A340479.P16119478483516549874

/-! ## A340479.P15800905157437428315

`A160939(n+1)-A160928(n+1)`
-/

namespace A340479.P15800905157437428315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - A160928 (n + 1)

end

end A340479.P15800905157437428315

/-! ## A340479.P14218690879836304033

`A160927(n+1)-A160941(n+1)`
-/

namespace A340479.P14218690879836304033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 1) - A160941 (n + 1)

end

end A340479.P14218690879836304033

/-! ## A340479.P1784292383502561605

`A004086(n)+A062329(n)+A007954(n)`
-/

namespace A340479.P1784292383502561605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (A062329 n + A007954 n)

end

end A340479.P1784292383502561605

/-! ## A340479.P2017782304076170622

`A004086(n)+A061762(n)-A007954(n)`
-/

namespace A340479.P2017782304076170622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (A061762 n - A007954 n)

end

end A340479.P2017782304076170622

/-! ## A340479.P2970365340739465502

`A062028(A004093(5*n))`
-/

namespace A340479.P2970365340739465502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A004093 (5 * n)).toNat

end

end A340479.P2970365340739465502

/-! ## A340479.P11651697664428093884

`A007953(n)+A004093(5*n)`
-/

namespace A340479.P11651697664428093884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004093 (5 * n)

end

end A340479.P11651697664428093884

/-! ## A340479.P15880252146480648084

`A004086(n)+A061762(10*n)`
-/

namespace A340479.P15880252146480648084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + A061762 (10 * n)

end

end A340479.P15880252146480648084

/-! ## A340479.P13927397687224687697

`A004086(n)+A062329(10*n)`
-/

namespace A340479.P13927397687224687697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + A062329 (10 * n)

end

end A340479.P13927397687224687697

/-!
# A340480: Primes p such that (p^8 + 1)/2 is prime.

The programs for A340480, the canonical program `A340480.P2809983349207958310` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340480 has offset 1).

The definition of A340480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340480.P2809983349207958310

`p?[A105066(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A340480

/-- `p?[A105066(n+1)]` -/
def P2809983349207958310.Spec : Prop :=
  ∀ n, P2809983349207958310.a n = A340480 (n + 1)

theorem P2809983349207958310.correct : P2809983349207958310.Spec := by
  intro n
  simp only [A340480, Nat.add_sub_cancel]

end A340480

/-! ## A340480.P10051067526552014135

`record[A020639(A105066(n+4))]`
-/

namespace A340480.P10051067526552014135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105066 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340480.P10051067526552014135

namespace A340480

/-- `record[A020639(A105066(n+4))]` -/
def P10051067526552014135.Spec : Prop :=
  ∀ n, P10051067526552014135.a n = A340480 (n + 1)

end A340480

/-! ## A340480.P3552557486552813324

`filter[A105066(n+1), A010051(#)]`
-/

namespace A340480.P3552557486552813324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A340480.P3552557486552813324

namespace A340480

/-- `filter[A105066(n+1), A010051(#)]` -/
def P3552557486552813324.Spec : Prop :=
  ∀ n, P3552557486552813324.a n = A340480 (n + 1)

end A340480

/-! ## A340480.P12845780816109647272

`∩[A000040(n+1), A105066(n+1)]`
-/

namespace A340480.P12845780816109647272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P12845780816109647272

namespace A340480

/-- `∩[A000040(n+1), A105066(n+1)]` -/
def P12845780816109647272.Spec : Prop :=
  ∀ n, (P12845780816109647272.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P1679134394446538446

`∩[A004139(n+1), A105066(n+1)]`
-/

namespace A340480.P1679134394446538446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P1679134394446538446

namespace A340480

/-- `∩[A004139(n+1), A105066(n+1)]` -/
def P1679134394446538446.Spec : Prop :=
  ∀ n, (P1679134394446538446.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P941513184290716024

`∩[A006005(n+1), A105066(n+1)]`
-/

namespace A340480.P941513184290716024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P941513184290716024

namespace A340480

/-- `∩[A006005(n+1), A105066(n+1)]` -/
def P941513184290716024.Spec : Prop :=
  ∀ n, (P941513184290716024.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P11400682794894602362

`∩[A008578(n+1), A105066(n+1)]`
-/

namespace A340480.P11400682794894602362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P11400682794894602362

namespace A340480

/-- `∩[A008578(n+1), A105066(n+1)]` -/
def P11400682794894602362.Spec : Prop :=
  ∀ n, (P11400682794894602362.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P1668411752244638457

`∩[A038889(n+1), A105066(n+1)]`
-/

namespace A340480.P1668411752244638457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P1668411752244638457

namespace A340480

/-- `∩[A038889(n+1), A105066(n+1)]` -/
def P1668411752244638457.Spec : Prop :=
  ∀ n, (P1668411752244638457.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P11388708818317671726

`∩[A045319(n+1), A105066(n+1)]`
-/

namespace A340480.P11388708818317671726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P11388708818317671726

namespace A340480

/-- `∩[A045319(n+1), A105066(n+1)]` -/
def P11388708818317671726.Spec : Prop :=
  ∀ n, (P11388708818317671726.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P11895301463136010260

`∩[A045344(n+1), A105066(n+1)]`
-/

namespace A340480.P11895301463136010260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P11895301463136010260

namespace A340480

/-- `∩[A045344(n+1), A105066(n+1)]` -/
def P11895301463136010260.Spec : Prop :=
  ∀ n, (P11895301463136010260.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P186943301320700311

`∩[A046022(n+1), A105066(n+1)]`
-/

namespace A340480.P186943301320700311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P186943301320700311

namespace A340480

/-- `∩[A046022(n+1), A105066(n+1)]` -/
def P186943301320700311.Spec : Prop :=
  ∀ n, (P186943301320700311.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P10905340524268706388

`∩[A062972(n+1), A105066(n+1)]`
-/

namespace A340480.P10905340524268706388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P10905340524268706388

namespace A340480

/-- `∩[A062972(n+1), A105066(n+1)]` -/
def P10905340524268706388.Spec : Prop :=
  ∀ n, (P10905340524268706388.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P1894397358701238566

`∩[A065091(n+1), A105066(n+1)]`
-/

namespace A340480.P1894397358701238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P1894397358701238566

namespace A340480

/-- `∩[A065091(n+1), A105066(n+1)]` -/
def P1894397358701238566.Spec : Prop :=
  ∀ n, (P1894397358701238566.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P17634409370941208173

`∩[A065396(n+1), A105066(n+1)]`
-/

namespace A340480.P17634409370941208173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P17634409370941208173

namespace A340480

/-- `∩[A065396(n+1), A105066(n+1)]` -/
def P17634409370941208173.Spec : Prop :=
  ∀ n, (P17634409370941208173.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P8002540202372536721

`∩[A071621(n+1), A105066(n+1)]`
-/

namespace A340480.P8002540202372536721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P8002540202372536721

namespace A340480

/-- `∩[A071621(n+1), A105066(n+1)]` -/
def P8002540202372536721.Spec : Prop :=
  ∀ n, (P8002540202372536721.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P17166066390469990576

`∩[A105066(n+1), A216285(n+1)]`
-/

namespace A340480.P17166066390469990576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P17166066390469990576

namespace A340480

/-- `∩[A105066(n+1), A216285(n+1)]` -/
def P17166066390469990576.Spec : Prop :=
  ∀ n, (P17166066390469990576.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P16376269733603384598

`∩[A105066(n+1), A296938(n+1)]`
-/

namespace A340480.P16376269733603384598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P16376269733603384598

namespace A340480

/-- `∩[A105066(n+1), A296938(n+1)]` -/
def P16376269733603384598.Spec : Prop :=
  ∀ n, (P16376269733603384598.a n : ℤ) = A340480 (n + 1)

end A340480

/-! ## A340480.P877416766431796227

`∩[A348283(n+1), A105066(n+1)]`
-/

namespace A340480.P877416766431796227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340480.P877416766431796227

namespace A340480

/-- `∩[A348283(n+1), A105066(n+1)]` -/
def P877416766431796227.Spec : Prop :=
  ∀ n, (P877416766431796227.a n : ℤ) = A340480 (n + 1)

end A340480

/-!
# A340481: Number of ways to write n as an ordered sum of 5 squares of positive integers.

The programs for A340481, there is no canonical definition to state claims against.
-/

/-! ## A340481.P9373632120197263897

`A337165(A167499(n+4))`
-/

namespace A340481.P9373632120197263897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167499 (n + 4)).toNat

end

end A340481.P9373632120197263897

/-! ## A340481.P5914697580161691274

`A337165(A167614(n+4)+2)`
-/

namespace A340481.P5914697580161691274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167614 (n + 4) + 2).toNat

end

end A340481.P5914697580161691274

/-! ## A340481.P8529750178723543487

`A337165(A000124(n+5)+4)`
-/

namespace A340481.P8529750178723543487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000124 (n + 5) + 4).toNat

end

end A340481.P8529750178723543487

/-! ## A340481.P9340395686173576211

`A337165(A000217(n+5)+5)`
-/

namespace A340481.P9340395686173576211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (n + 5) + 5).toNat

end

end A340481.P9340395686173576211

/-! ## A340481.P433092362122174792

`A337165(A022856(n+9)+3)`
-/

namespace A340481.P433092362122174792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A022856 (n + 9) + 3).toNat

end

end A340481.P433092362122174792

/-! ## A340481.P710306930569058875

`A337165(eq[6, A002260(n+1)])`
-/

namespace A340481.P710306930569058875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340481.P710306930569058875

/-!
# A340482: Numbers that are the product of two not necessarily distinct odd primes p*q with the property that (p*q+1)/2 and (p+q)/2 are primes.

The programs for A340482, there is no canonical definition to state claims against.
-/

/-! ## A340482.P4571546175298730145

`filter[A033945(n+1), A368701(#)]`
-/

namespace A340482.P4571546175298730145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P4571546175298730145

/-! ## A340482.P8621963461441356248

`filter[A070552(n+1), A368701(#)]`
-/

namespace A340482.P8621963461441356248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P8621963461441356248

/-! ## A340482.P17598570680497703155

`filter[A076274(n+1), A368701(#)]`
-/

namespace A340482.P17598570680497703155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P17598570680497703155

/-! ## A340482.P425827387753092784

`filter[A108815(n+1), A368701(#)]`
-/

namespace A340482.P425827387753092784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P425827387753092784

/-! ## A340482.P1460580119319125941

`filter[A176629(n+1), A368701(#)]`
-/

namespace A340482.P1460580119319125941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P1460580119319125941

/-! ## A340482.P14278160209640263206

`filter[A180868(n+1), A368701(#)]`
-/

namespace A340482.P14278160209640263206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P14278160209640263206

/-! ## A340482.P1548358315568083892

`filter[A186621(n+1), A368701(#)]`
-/

namespace A340482.P1548358315568083892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P1548358315568083892

/-! ## A340482.P5414066793007068163

`filter[A195896(n+1), A368701(#)]`
-/

namespace A340482.P5414066793007068163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P5414066793007068163

/-! ## A340482.P7978246528190415365

`filter[A249424(n+1), A368701(#)]`
-/

namespace A340482.P7978246528190415365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A340482.P7978246528190415365

/-! ## A340482.P18377752232487871310

`filter[A303437(n+1), A353477(#)]`
-/

namespace A340482.P18377752232487871310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A340482.P18377752232487871310

/-!
# A340483: a(n) is the smallest product of n (not necessarily distinct) odd primes m = p_1*p_2*...*p_n such that (d+m/d)/2 is a prime for all d dividing m.

The programs for A340483, there is no canonical definition to state claims against.
-/

/-! ## A340483.P6601402479558131707

`A128281(n+1)%A131491(n+1)`
-/

namespace A340483.P6601402479558131707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128281 (n + 1)) (A131491 (n + 1))

end

end A340483.P6601402479558131707

/-!
# A340486: Number of unlabeled graphs on n vertices whose independence number is equal to clique number.

The programs for A340486, there is no canonical definition to state claims against.
-/

/-! ## A340486.P11517975993578677768

`A312344(A153705(a(n-2)))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A340486.P11517975993578677768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 3] fun n a =>
  A312344 (A153705 (a (n - 2)).toNat).toNat

end

end A340486.P11517975993578677768

/-!
# A340488: a(n+1) = XOR(a(n),y) for n>=1, where y is the number of m < n such that a(m) = a(n); a(1)=0.

The programs for A340488, there is no canonical definition to state claims against.
-/

/-! ## A340488.P5253874081810745656

`A340499(n)+a(n-1)` with `a(0)=0`
-/

namespace A340488.P5253874081810745656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A340499 n + a (n - 1)

end

end A340488.P5253874081810745656

/-! ## A340488.P8886723876899545442

`∑[A340499(A028310(n))]`
-/

namespace A340488.P8886723876899545442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340488.P8886723876899545442

/-! ## A340488.P4164147920969473898

`∑[A340499(A000007(n)+n)]`
-/

namespace A340488.P4164147920969473898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340488.P4164147920969473898

/-! ## A340488.P15719347712754569956

`∑[A340499(A004277(n)-n)]`
-/

namespace A340488.P15719347712754569956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340488.P15719347712754569956

/-! ## A340488.P8603516953071567200

`∑[A340499(xor(n, A000007(n)))]`
-/

namespace A340488.P8603516953071567200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340488.P8603516953071567200

/-! ## A340488.P15739960327034671693

`∑[A340499(n+1)]-A340499(n+1)`
-/

namespace A340488.P15739960327034671693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A340499 (n + 1)

end

end A340488.P15739960327034671693

/-! ## A340488.P4209301908326986109

`Δ[A340496(n+1)]-A340499(n+1)`
-/

namespace A340488.P4209301908326986109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A340499 (n + 1)

end

end A340488.P4209301908326986109

/-! ## A340488.P1680777481499018946

`∑[A340499(A028690(n+1)%2+n)]`
-/

namespace A340488.P1680777481499018946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (Int.tmod (A028690 (n + 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340488.P1680777481499018946

/-! ## A340488.P17054085013338366049

`A340496(n+1)-A340496(A028310(n))`
-/

namespace A340488.P17054085013338366049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1) - A340496 (A028310 n).toNat

end

end A340488.P17054085013338366049

/-! ## A340488.P3106792015418221978

`A340496(n+1)-A340496(A000007(n)+n)`
-/

namespace A340488.P3106792015418221978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1) - A340496 (A000007 n + (n : ℤ)).toNat

end

end A340488.P3106792015418221978

/-! ## A340488.P13728118642004621355

`A340496(n+2)-(A340499(n+1)+A340496(n+1))`
-/

namespace A340488.P13728118642004621355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 2) - (A340499 (n + 1) + A340496 (n + 1))

end

end A340488.P13728118642004621355

/-! ## A340488.P2857308251079905259

`Δ[A340496(A000007(n)+n)]`
-/

namespace A340488.P2857308251079905259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340488.P2857308251079905259

/-! ## A340488.P7522208744519258884

`Δ[A340496(xor(n, A000007(n)))]`
-/

namespace A340488.P7522208744519258884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340488.P7522208744519258884

/-! ## A340488.P8733614699608293466

`Δ[A340496(A028310(2*n)-n)]`
-/

namespace A340488.P8733614699608293466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A028310 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340488.P8733614699608293466

/-! ## A340488.P4947491465967555969

`A340496(n+1)-A340496(A233583(n+1))`
-/

namespace A340488.P4947491465967555969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1) - A340496 (A233583 (n + 1)).toNat

end

end A340488.P4947491465967555969

/-! ## A340488.P3122327117498314589

`Δ[A340496(A233583(n+1))]`
-/

namespace A340488.P3122327117498314589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340488.P3122327117498314589

/-!
# A340490: a(n) is the number of digits after the n-th digit of the Champernowne constant A033307 until the next appearance of that digit.

The programs for A340490, there is no canonical definition to state claims against.
-/

/-! ## A340490.P10527080879372158165

`A261334(A261333(n)+10)-n`
-/

namespace A340490.P10527080879372158165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A261333 n + 10).toNat - (n : ℤ)

end

end A340490.P10527080879372158165

/-!
# A340492: a(n) = A000041(n)*A000070(n-1), n >= 1.

The programs for A340492, there is no canonical definition to state claims against.
-/

/-! ## A340492.P17489661147727711506

`A000041(n+1)*A000070(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340492.P17489661147727711506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A000070 n

end

end A340492.P17489661147727711506

/-! ## A340492.P1256095800784628433

`Δ[A000070(n)]*A000070(n)`
-/

namespace A340492.P1256095800784628433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000070 n

end

end A340492.P1256095800784628433

/-! ## A340492.P6438631919146807225

`ratio[A000041(n)]*A143229(n)`
-/

namespace A340492.P6438631919146807225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A143229 n : ℚ)

end

end A340492.P6438631919146807225

/-! ## A340492.P12880951101479010821

`record[A035363(n)]*A000070(n)`
-/

namespace A340492.P12880951101479010821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000070 n

end

end A340492.P12880951101479010821

/-! ## A340492.P11410555597390581952

`record[A035377(n)]*A000070(n)`
-/

namespace A340492.P11410555597390581952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000070 n

end

end A340492.P11410555597390581952

/-! ## A340492.P14164592859538594829

`A143229(n+1)-A001255(n+1)`
-/

namespace A340492.P14164592859538594829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143229 (n + 1) - A001255 (n + 1)

end

end A340492.P14164592859538594829

/-! ## A340492.P137990390830701521

`A000041(n+1)*A025065(2*n)`
-/

namespace A340492.P137990390830701521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A025065 (2 * n)

end

end A340492.P137990390830701521

/-! ## A340492.P1612951303801371445

`A143229(n+1)-A000041(n+1)²`
-/

namespace A340492.P1612951303801371445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143229 (n + 1) - A000041 (n + 1) ^ 2

end

end A340492.P1612951303801371445

/-! ## A340492.P7025856482567720495

`∑[A035363(2*n)]*A000041(n+1)`
-/

namespace A340492.P7025856482567720495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000041 (n + 1)

end

end A340492.P7025856482567720495

/-! ## A340492.P3794165082485047003

`A000070(n)/A000041(n)*A090982(n)`
-/

namespace A340492.P3794165082485047003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) / (A000041 n : ℚ) * (A090982 n : ℚ)

end

end A340492.P3794165082485047003

/-! ## A340492.P10059324268686613177

`A025065(2*n)*A035363(A004277(n+1))`
-/

namespace A340492.P10059324268686613177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) * A035363 (A004277 (n + 1)).toNat

end

end A340492.P10059324268686613177

/-! ## A340492.P4193781402565913067

`A000070(n)+A000065(n+1)*A000070(n)`
-/

namespace A340492.P4193781402565913067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + A000065 (n + 1) * A000070 n

end

end A340492.P4193781402565913067

/-! ## A340492.P10038241985192497564

`(A087787(n+1)+A087787(n))*A000070(n)`
-/

namespace A340492.P10038241985192497564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087787 (n + 1) + A087787 n) * A000070 n

end

end A340492.P10038241985192497564

/-! ## A340492.P660175512868345646

`(A000070(n+1)-A000070(n))*A000070(n)`
-/

namespace A340492.P660175512868345646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000070 (n + 1) - A000070 n) * A000070 n

end

end A340492.P660175512868345646

/-! ## A340492.P17595167547650173712

`A000041(n+1)/A000041(n)*A143229(n)`
-/

namespace A340492.P17595167547650173712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) / (A000041 n : ℚ) * (A143229 n : ℚ)

end

end A340492.P17595167547650173712

/-! ## A340492.P11185807321175238295

`(A210249(n+1)+A025065(n+1))*A000070(n)`
-/

namespace A340492.P11185807321175238295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210249 (n + 1) + A025065 (n + 1)) * A000070 n

end

end A340492.P11185807321175238295

/-! ## A340492.P2417940130201375511

`(A338470(n+1)+A083710(n+1))*A000070(n)`
-/

namespace A340492.P2417940130201375511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338470 (n + 1) + A083710 (n + 1)) * A000070 n

end

end A340492.P2417940130201375511

/-! ## A340492.P16026746616303900651

`(A237833(n+1)+A237831(n+1))*A000070(n)`
-/

namespace A340492.P16026746616303900651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237833 (n + 1) + A237831 (n + 1)) * A000070 n

end

end A340492.P16026746616303900651

/-! ## A340492.P9892219488278018310

`(A135348(n+1)-A093695(n))*A000041(n+1)`
-/

namespace A340492.P9892219488278018310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135348 (n + 1) - A093695 n) * A000041 (n + 1)

end

end A340492.P9892219488278018310

/-! ## A340492.P13409781144177420696

`A143229(n+1)/A000070(n+1)*A000070(n)`
-/

namespace A340492.P13409781144177420696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 (n + 1) : ℚ) / (A000070 (n + 1) : ℚ) * (A000070 n : ℚ)

end

end A340492.P13409781144177420696

/-!
# A340493: Sequence whose partial sums give A340492.

The programs for A340493, there is no canonical definition to state claims against.
-/

/-! ## A340493.P13460983083036563818

`Δ[A143229(n)-A001255(n)]`
-/

namespace A340493.P13460983083036563818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143229 n - A001255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340493.P13460983083036563818

/-! ## A340493.P4105725657641021045

`Δ[A143229(n)-A000041(n)²]`
-/

namespace A340493.P4105725657641021045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143229 n - A000041 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340493.P4105725657641021045

/-! ## A340493.P10248204007291827889

`Δ[record[A035363(n+1)*A100824(n)]]`
-/

namespace A340493.P10248204007291827889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) * A100824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340493.P10248204007291827889

/-! ## A340493.P925773576568228403

`Δ[(A058884(n)+A000041(n))*A000041(n)]`
-/

namespace A340493.P925773576568228403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058884 n + A000041 n) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340493.P925773576568228403

/-! ## A340493.P14800428662542935268

`Δ[A000041(n)*A000070(n)-A001255(n)]`
-/

namespace A340493.P14800428662542935268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000070 n - A001255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340493.P14800428662542935268

/-!
# A340494: Index where n first appears in A340488.

The programs for A340494, there is no canonical definition to state claims against.
-/

/-! ## A340494.P16108203461597992518

`A340497(A004526(n))+A010673(n)`
-/

namespace A340494.P16108203461597992518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340497 (A004526 n).toNat + A010673 n

end

end A340494.P16108203461597992518

/-! ## A340494.P5892068492568479162

`A340497(A004526(n))+and(2, A016923(n))`
-/

namespace A340494.P5892068492568479162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340497 (A004526 n).toNat + Int.land 2 (A016923 n)

end

end A340494.P5892068492568479162

/-! ## A340494.P8566837525420852653

`A340497(A004526(n))+and(2, A001844(n)+2*n)`
-/

namespace A340494.P8566837525420852653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340497 (A004526 n).toNat + Int.land 2 (A001844 n + (2 * n : ℤ))

end

end A340494.P8566837525420852653

/-! ## A340494.P9166098036361325247

`A340497(A004526(n))+and(2*n, A266722(2*n))`
-/

namespace A340494.P9166098036361325247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340497 (A004526 n).toNat + Int.land (2 * n : ℤ) (A266722 (2 * n))

end

end A340494.P9166098036361325247

/-! ## A340494.P8407213818726496386

`record[gcd(n+1, A340499(n+1))]`
-/

namespace A340494.P8407213818726496386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A340499 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340494.P8407213818726496386

/-! ## A340494.P8587175441433020539

`eq[1, A336033(n+1)]`
-/

namespace A340494.P8587175441433020539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340494.P8587175441433020539

/-! ## A340494.P18413213447904278945

`lt[A336033(abs(1-n)+1), 1]`
-/

namespace A340494.P18413213447904278945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336033 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340494.P18413213447904278945

/-! ## A340494.P14396296803207424204

`record[gcd(A000027(n+1), A336033(n+1))]`
-/

namespace A340494.P14396296803207424204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A336033 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340494.P14396296803207424204

/-! ## A340494.P1708760408206999342

`record[n+1-A276326(A336033(n+1)²)]`
-/

namespace A340494.P1708760408206999342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A276326 (A336033 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340494.P1708760408206999342

/-! ## A340494.P17145535638123108648

`record[n+1-A100637(n)*A336033(n+1)]`
-/

namespace A340494.P17145535638123108648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100637 n * A336033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340494.P17145535638123108648

/-!
# A340495: Records in first differences of A340494.

The programs for A340495, there is no canonical definition to state claims against.
-/

/-! ## A340495.P17414213172740642335

`∑[4*a(n-1)+5]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A340495.P17414213172740642335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  4 * f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340495.P17414213172740642335

/-! ## A340495.P18179775543908574681

`∑[lcm(4, a(n-1))+5]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A340495.P18179775543908574681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1)) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340495.P18179775543908574681

/-! ## A340495.P12395555854885634078

`∑[a(n-1)/(1/2)²+5]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A340495.P12395555854885634078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340495.P12395555854885634078

/-! ## A340495.P70286024331216651

`∑[5-a(n-1)/(3/4-1)]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A340495.P70286024331216651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  5 - f1 (n - 1) / ((3 : ℚ) / 4 - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340495.P70286024331216651

/-! ## A340495.P15541180799016676628

`A164044(n)-floor(2/acot(n))+2`
-/

namespace A340495.P15541180799016676628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 2

end

end A340495.P15541180799016676628

/-!
# A340496: Partial sums of A340488.

The programs for A340496, there is no canonical definition to state claims against.
-/

/-! ## A340496.P7045890697882434119

`∑[A340488(n+1)]`
-/

namespace A340496.P7045890697882434119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P7045890697882434119

/-! ## A340496.P15297841723625128738

`∑[∑[A340499(A028310(n))]]`
-/

namespace A340496.P15297841723625128738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P15297841723625128738

/-! ## A340496.P1575243415553110995

`∑[∑[A340499(A000007(n)+n)]]`
-/

namespace A340496.P1575243415553110995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P1575243415553110995

/-! ## A340496.P118464843191931366

`∑[∑[A340499(A004277(n)-n)]]`
-/

namespace A340496.P118464843191931366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A004277 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P118464843191931366

/-! ## A340496.P5254289018680455160

`∑[∑[A340499(1-A057427(n)+n)]]`
-/

namespace A340496.P5254289018680455160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (1 - A057427 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P5254289018680455160

/-! ## A340496.P8118991190159307507

`∑[∑[A340499(n+1)]-A340499(n+1)]`
-/

namespace A340496.P8118991190159307507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340496.P8118991190159307507

/-! ## A340496.P10390841068060524901

`A340488(n+1)+A014681(A014681(a(n-1)))` with `a(0)=0`
-/

namespace A340496.P10390841068060524901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A340488 (n + 1) + A014681 (A014681 (a (n - 1)).toNat).toNat

end

end A340496.P10390841068060524901

/-!
# A340497: Index where 2*n first appears in A340488.

The programs for A340497, there is no canonical definition to state claims against.
-/

/-! ## A340497.P14395841656733730042

`A340494(2*n)`
-/

namespace A340497.P14395841656733730042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 (2 * n)

end

end A340497.P14395841656733730042

/-! ## A340497.P15649325370942423939

`A340494(Δ[n²])-2`
-/

namespace A340497.P15649325370942423939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A340497.P15649325370942423939

/-! ## A340497.P13647706956288342370

`record[A340494(and(n, n+1))]`
-/

namespace A340497.P13647706956288342370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P13647706956288342370

/-! ## A340497.P5059452290357155750

`and(-1, A340494(A005843(n)))`
-/

namespace A340497.P5059452290357155750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A340494 (A005843 n).toNat)

end

end A340497.P5059452290357155750

/-! ## A340497.P9008620041047447392

`record[A340494(n)/A033999(n)]`
-/

namespace A340497.P9008620041047447392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340494 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P9008620041047447392

/-! ## A340497.P3613301418708419315

`record[A340494(n)-A010673(n)²]`
-/

namespace A340497.P3613301418708419315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n - A010673 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P3613301418708419315

/-! ## A340497.P5412759612065149099

`record[A340494(n)^(A016777(n)%2)]`
-/

namespace A340497.P5412759612065149099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340494 n : ℚ) ^ (Int.tmod (A016777 n) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P5412759612065149099

/-! ## A340497.P17715124206630209017

`record[A340494(n)/A009001(A008600(n))]`
-/

namespace A340497.P17715124206630209017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340494 n : ℚ) / (A009001 (A008600 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P17715124206630209017

/-! ## A340497.P17859639625946742804

`A000027(A340494(n+n))`
-/

namespace A340497.P17859639625946742804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A340494 (n + n)).toNat

end

end A340497.P17859639625946742804

/-! ## A340497.P2027717882050557165

`∩[A016861(n), A340494(n)]`
-/

namespace A340497.P2027717882050557165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P2027717882050557165

/-! ## A340497.P17659673480020337079

`∩[A187331(n), A340494(n)]`
-/

namespace A340497.P17659673480020337079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P17659673480020337079

/-! ## A340497.P14221277263116774377

`∩[A008851(n+1), A340494(n)]`
-/

namespace A340497.P14221277263116774377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P14221277263116774377

/-! ## A340497.P5192990659663050019

`∩[A047209(n+1), A340494(n)]`
-/

namespace A340497.P5192990659663050019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P5192990659663050019

/-! ## A340497.P7634331661026553600

`∩[A047216(n+1), A340494(n)]`
-/

namespace A340497.P7634331661026553600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P7634331661026553600

/-! ## A340497.P1289147484277887925

`∩[A277550(n+1), A340494(n)]`
-/

namespace A340497.P1289147484277887925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P1289147484277887925

/-! ## A340497.P4527548435075410671

`∩[A277597(n+1), A340494(n)]`
-/

namespace A340497.P4527548435075410671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P4527548435075410671

/-! ## A340497.P6573834401730578561

`∩[A278999(n+1), A340494(n)]`
-/

namespace A340497.P6573834401730578561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340497.P6573834401730578561

/-! ## A340497.P7735500356906268716

`record[A340494(A068527(abs(1-n)))]`
-/

namespace A340497.P7735500356906268716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340494 (A068527 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340497.P7735500356906268716

/-!
# A340498: Where 2^n appears in A340488 for the first time.

The programs for A340498, there is no canonical definition to state claims against.
-/

/-! ## A340498.P16323128410594598817

`∑[ogf((-3+9x+2x^2)/(-1+4x))]`
-/

namespace A340498.P16323128410594598817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, -2] [1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340498.P16323128410594598817

/-! ## A340498.P9881927644100755853

`ogf((3-9x-2x^2)/(1-5x+4x^2))`
-/

namespace A340498.P9881927644100755853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, -2] [1, -5, 4] n

end

end A340498.P9881927644100755853

/-! ## A340498.P9700769214296975473

`4*(a(n-1)-2)` with `a(0)=3, a(1)=6`
-/

namespace A340498.P9700769214296975473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  4 * (a (n - 1) - 2)

end

end A340498.P9700769214296975473

/-! ## A340498.P9453975723767106747

`floor(5*4^n/6)+3`
-/

namespace A340498.P9453975723767106747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((4 ^ n : ℚ) / 6)⌋ + 3

end

end A340498.P9453975723767106747

/-! ## A340498.P1010453670268071123

`record[2^n-∑[(-2)^n]+3]`
-/

namespace A340498.P1010453670268071123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340498.P1010453670268071123

/-!
# A340499: First differences of A340488.

The programs for A340499, there is no canonical definition to state claims against.
-/

/-! ## A340499.P7375614892989426223

`Δ[A340488(n+1)]`
-/

namespace A340499.P7375614892989426223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P7375614892989426223

/-! ## A340499.P1333541182002339166

`A340488(n+2)-A340488(n+1)`
-/

namespace A340499.P1333541182002339166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 2) - A340488 (n + 1)

end

end A340499.P1333541182002339166

/-! ## A340499.P12246347616072364966

`Δ[A340496(n+1)-A340496(A028310(n))]`
-/

namespace A340499.P12246347616072364966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1) - A340496 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P12246347616072364966

/-! ## A340499.P9508077439867502373

`Δ[Δ[A340496(A028310(n))]]`
-/

namespace A340499.P9508077439867502373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P9508077439867502373

/-! ## A340499.P14113424692577871145

`Δ[Δ[A340496(A000007(n)+n)]]`
-/

namespace A340499.P14113424692577871145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P14113424692577871145

/-! ## A340499.P4319848910519960228

`Δ[A340496(n+1)-A340496(A233583(n+1))]`
-/

namespace A340499.P4319848910519960228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1) - A340496 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P4319848910519960228

/-! ## A340499.P14051895605393089931

`Δ[Δ[A340496(A233583(n+1))]]`
-/

namespace A340499.P14051895605393089931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340499.P14051895605393089931

