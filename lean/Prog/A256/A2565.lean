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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A256502: Largest integer not exceeding the harmonic mean of the first n squares.

The programs for A256502, the canonical program `A256502.P13219783384653914463` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256502 has offset 1).

The definition of A256502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256502.P13219783384653914463

`floor((n+1)/∑[(n+1)^(-2)])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256502

/-- `floor((n+1)/∑[(n+1)^(-2)])` -/
def P13219783384653914463.Spec : Prop :=
  ∀ n, P13219783384653914463.a n = A256502 (n + 1)

theorem P13219783384653914463.correct : P13219783384653914463.Spec := by
  intro n
  simp only [A256502, Nat.add_sub_cancel]

end A256502

/-! ## A256502.P9345309562081216444

`A195120(A233583(6*n+1))-n`
-/

namespace A256502.P9345309562081216444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A233583 (6 * n + 1)).toNat - (n : ℤ)

end

end A256502.P9345309562081216444

namespace A256502

/-- `A195120(A233583(6*n+1))-n` -/
def P9345309562081216444.Spec : Prop :=
  ∀ n, P9345309562081216444.a n = A256502 (n + 1)

end A256502

/-! ## A256502.P2161794070065262822

`A000196(∑[A020915(A195178(n))])`
-/

namespace A256502.P2161794070065262822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A195178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256502.P2161794070065262822

namespace A256502

/-- `A000196(∑[A020915(A195178(n))])` -/
def P2161794070065262822.Spec : Prop :=
  ∀ n, P2161794070065262822.a n = A256502 (n + 1)

end A256502

/-! ## A256502.P16012442935909083785

`A195181(A000267(n²))-n`
-/

namespace A256502.P16012442935909083785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195181 (A000267 (n ^ 2)).toNat - (n : ℤ)

end

end A256502.P16012442935909083785

namespace A256502

/-- `A195181(A000267(n²))-n` -/
def P16012442935909083785.Spec : Prop :=
  ∀ n, P16012442935909083785.a n = A256502 (n + 1)

end A256502

/-! ## A256502.P3029938314568444554

`A195181(A004277(n))-A037213(n²)`
-/

namespace A256502.P3029938314568444554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195181 (A004277 n).toNat - A037213 (n ^ 2)

end

end A256502.P3029938314568444554

namespace A256502

/-- `A195181(A004277(n))-A037213(n²)` -/
def P3029938314568444554.Spec : Prop :=
  ∀ n, P3029938314568444554.a n = A256502 (n + 1)

end A256502

/-! ## A256502.P14168116523275489816

`round(∑[A303590(n+1)]/(2*(n+1)))`
-/

namespace A256502.P14168116523275489816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * (n + 1) : ℚ))

end

end A256502.P14168116523275489816

namespace A256502

/-- `round(∑[A303590(n+1)]/(2*(n+1)))` -/
def P14168116523275489816.Spec : Prop :=
  ∀ n, P14168116523275489816.a n = A256502 (n + 1)

end A256502

/-!
# A256503: Smallest k>=1 such that n^2 + (n+1)^2 + ... + (n+k)^2 is prime or a(n)=0 if there is no such k.

The programs for A256503, there is no canonical definition to state claims against.
-/

/-! ## A256503.P4561446831806136787

`A157385(A076105(n+1))%7`
-/

namespace A256503.P4561446831806136787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157385 (A076105 (n + 1)).toNat) 7

end

end A256503.P4561446831806136787

/-! ## A256503.P8797125346313902754

`A157385(A094280(n+1))%7`
-/

namespace A256503.P8797125346313902754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157385 (A094280 (n + 1)).toNat) 7

end

end A256503.P8797125346313902754

/-!
# A256505: Expansion of phi(x^3) * phi(-x^48) / chi(-x^16) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A256505, the canonical program `A256505.P5590298832183813363` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256505 has offset 0).

The definition of A256505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256505.P4417214253556953074

`abs(A255365(n))`
-/

namespace A256505.P4417214253556953074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255365 n|

end

end A256505.P4417214253556953074

namespace A256505

/-- `abs(A255365(n))` -/
def P4417214253556953074.Spec : Prop :=
  ∀ n, P4417214253556953074.a n = A256505 n

end A256505

/-! ## A256505.P14930506589655885469

`A033999(n)*A255365(n)`
-/

namespace A256505.P14930506589655885469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A255365 n

end

end A256505.P14930506589655885469

namespace A256505

/-- `A033999(n)*A255365(n)` -/
def P14930506589655885469.Spec : Prop :=
  ∀ n, P14930506589655885469.a n = A256505 n

end A256505

/-! ## A256505.P5396796903948556109

`A057077(n)*A255365(n)`
-/

namespace A256505.P5396796903948556109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A255365 n

end

end A256505.P5396796903948556109

namespace A256505

/-- `A057077(n)*A255365(n)` -/
def P5396796903948556109.Spec : Prop :=
  ∀ n, P5396796903948556109.a n = A256505 n

end A256505

/-! ## A256505.P11158516700777938830

`A102560(n)*A255365(n)`
-/

namespace A256505.P11158516700777938830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A255365 n

end

end A256505.P11158516700777938830

namespace A256505

/-- `A102560(n)*A255365(n)` -/
def P11158516700777938830.Spec : Prop :=
  ∀ n, P11158516700777938830.a n = A256505 n

end A256505

/-! ## A256505.P5590298832183813363

`A102560(n)*A258764(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256505

/-- `A102560(n)*A258764(n)` -/
def P5590298832183813363.Spec : Prop :=
  ∀ n, P5590298832183813363.a n = A256505 n

theorem P5590298832183813363.correct : P5590298832183813363.Spec := by
  intro n
  simp only [A256505]

end A256505

/-! ## A256505.P14142130522458553822

`gcd(A000038(n), A255365(n))`
-/

namespace A256505.P14142130522458553822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255365 n)

end

end A256505.P14142130522458553822

namespace A256505

/-- `gcd(A000038(n), A255365(n))` -/
def P14142130522458553822.Spec : Prop :=
  ∀ n, (P14142130522458553822.a n : ℤ) = A256505 n

end A256505

/-! ## A256505.P4288972281876959529

`lcm(A000034(n), A255365(n))`
-/

namespace A256505.P4288972281876959529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A255365 n)

end

end A256505.P4288972281876959529

namespace A256505

/-- `lcm(A000034(n), A255365(n))` -/
def P4288972281876959529.Spec : Prop :=
  ∀ n, (P4288972281876959529.a n : ℤ) = A256505 n

end A256505

/-! ## A256505.P7397515890974739781

`A105931(n+1)*A255365(n)`
-/

namespace A256505.P7397515890974739781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A255365 n

end

end A256505.P7397515890974739781

namespace A256505

/-- `A105931(n+1)*A255365(n)` -/
def P7397515890974739781.Spec : Prop :=
  ∀ n, P7397515890974739781.a n = A256505 n

end A256505

/-! ## A256505.P5283158779965212795

`A255258(3*n+2)`
-/

namespace A256505.P5283158779965212795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255258 (3 * n + 2)

end

end A256505.P5283158779965212795

namespace A256505

/-- `A255258(3*n+2)` -/
def P5283158779965212795.Spec : Prop :=
  ∀ n, P5283158779965212795.a n = A256505 n

end A256505

/-! ## A256505.P14880572606224087132

`abs(A227395(3*n+2))`
-/

namespace A256505.P14880572606224087132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227395 (3 * n + 2)|

end

end A256505.P14880572606224087132

namespace A256505

/-- `abs(A227395(3*n+2))` -/
def P14880572606224087132.Spec : Prop :=
  ∀ n, P14880572606224087132.a n = A256505 n

end A256505

/-! ## A256505.P9222966453507596964

`A257403(A218155(n+1))`
-/

namespace A256505.P9222966453507596964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257403 (A218155 (n + 1)).toNat

end

end A256505.P9222966453507596964

namespace A256505

/-- `A257403(A218155(n+1))` -/
def P9222966453507596964.Spec : Prop :=
  ∀ n, P9222966453507596964.a n = A256505 n

end A256505

/-! ## A256505.P4088202936373405196

`lcm(A006466(n), A227395(3*n+2))`
-/

namespace A256505.P4088202936373405196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A227395 (3 * n + 2))

end

end A256505.P4088202936373405196

namespace A256505

/-- `lcm(A006466(n), A227395(3*n+2))` -/
def P4088202936373405196.Spec : Prop :=
  ∀ n, (P4088202936373405196.a n : ℤ) = A256505 n

end A256505

/-! ## A256505.P1675202420555274973

`abs(A182187(n)%2*A258764(n))`
-/

namespace A256505.P1675202420555274973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A182187 n) 2 * A258764 n|

end

end A256505.P1675202420555274973

namespace A256505

/-- `abs(A182187(n)%2*A258764(n))` -/
def P1675202420555274973.Spec : Prop :=
  ∀ n, P1675202420555274973.a n = A256505 n

end A256505

/-! ## A256505.P9484948261934306923

`and(A161916(n), A255365(n))`
-/

namespace A256505.P9484948261934306923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161916 n) (A255365 n)

end

end A256505.P9484948261934306923

namespace A256505

/-- `and(A161916(n), A255365(n))` -/
def P9484948261934306923.Spec : Prop :=
  ∀ n, P9484948261934306923.a n = A256505 n

end A256505

/-! ## A256505.P15945869228975714822

`and(A098726(n+1), A255365(n))`
-/

namespace A256505.P15945869228975714822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098726 (n + 1)) (A255365 n)

end

end A256505.P15945869228975714822

namespace A256505

/-- `and(A098726(n+1), A255365(n))` -/
def P15945869228975714822.Spec : Prop :=
  ∀ n, P15945869228975714822.a n = A256505 n

end A256505

/-! ## A256505.P15916987366157075844

`and(A122553(n²), A255365(n))`
-/

namespace A256505.P15916987366157075844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 (n ^ 2)) (A255365 n)

end

end A256505.P15916987366157075844

namespace A256505

/-- `and(A122553(n²), A255365(n))` -/
def P15916987366157075844.Spec : Prop :=
  ∀ n, P15916987366157075844.a n = A256505 n

end A256505

/-! ## A256505.P1847298703014348261

`and(A156752(n²), A255365(n))`
-/

namespace A256505.P1847298703014348261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156752 (n ^ 2)) (A255365 n)

end

end A256505.P1847298703014348261

namespace A256505

/-- `and(A156752(n²), A255365(n))` -/
def P1847298703014348261.Spec : Prop :=
  ∀ n, P1847298703014348261.a n = A256505 n

end A256505

/-! ## A256505.P1368569157855300301

`and(A158799(n²), A255365(n))`
-/

namespace A256505.P1368569157855300301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158799 (n ^ 2)) (A255365 n)

end

end A256505.P1368569157855300301

namespace A256505

/-- `and(A158799(n²), A255365(n))` -/
def P1368569157855300301.Spec : Prop :=
  ∀ n, P1368569157855300301.a n = A256505 n

end A256505

/-! ## A256505.P4550613911779218793

`and(A164359(n²), A255365(n))`
-/

namespace A256505.P4550613911779218793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164359 (n ^ 2)) (A255365 n)

end

end A256505.P4550613911779218793

namespace A256505

/-- `and(A164359(n²), A255365(n))` -/
def P4550613911779218793.Spec : Prop :=
  ∀ n, P4550613911779218793.a n = A256505 n

end A256505

/-! ## A256505.P17021896885911564119

`and(A176059(n²), A255365(n))`
-/

namespace A256505.P17021896885911564119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176059 (n ^ 2)) (A255365 n)

end

end A256505.P17021896885911564119

namespace A256505

/-- `and(A176059(n²), A255365(n))` -/
def P17021896885911564119.Spec : Prop :=
  ∀ n, P17021896885911564119.a n = A256505 n

end A256505

/-!
# A256506: a(n) = (2*n+3)*a(n-1) + a(n-2), a(0)=0, a(1)=1.

The programs for A256506, the canonical program `A256506.P7343177596971072633` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256506 has offset 0).

The definition of A256506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+3)*a(n-1)+a(n-2)` (program `A256506.P7343177596971072633`, by `A256506.P7343177596971072633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256506.P7343177596971072633

`(2*n+3)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256506

/-- `(2*n+3)*a(n-1)+a(n-2)` -/
def P7343177596971072633.Spec : Prop :=
  ∀ n, (P7343177596971072633.a n : ℤ) = A256506 n

theorem P7343177596971072633.correct : P7343177596971072633.Spec := by
  intro n
  simp only [A256506]

end A256506

/-! ## A256506.P5075140911176408263

`record[a(n-2)-(1-2*n)*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A256506.P5075140911176408263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) - (1 - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256506.P5075140911176408263

namespace A256506

/-- `record[a(n-2)-(1-2*n)*a(n-1)]` -/
def P5075140911176408263.Spec : Prop :=
  ∀ n, P5075140911176408263.a n = A256506 n

end A256506

/-!
# A256508: Lexicographically earliest sequence of distinct terms, with a unique fixed point, such that a^n(n)=n, for any n>0 (where a^n denotes the n-th iterate of a).

The programs for A256508, there is no canonical definition to state claims against.
-/

/-! ## A256508.P13815317474733875671

`gcd(A061243(n+1), A066401(A066401(n+1)))`
-/

namespace A256508.P13815317474733875671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061243 (n + 1)) (A066401 (A066401 (n + 1)).toNat)

end

end A256508.P13815317474733875671

/-!
# A256509: 

The programs for A256509, there is no canonical definition to state claims against.
-/

/-! ## A256509.P8054554697666629297

`n!!-(n!+1)`
-/

namespace A256509.P8054554697666629297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial n) : ℤ) - (Nat.factorial n + 1 : ℤ)

end

end A256509.P8054554697666629297

/-!
# A256510: Primes p such that phi(p-2) = phi(p-1).

The programs for A256510, there is no canonical definition to state claims against.
-/

/-! ## A256510.P11475751391266540483

`A220169(n+1)+1`
-/

namespace A256510.P11475751391266540483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220169 (n + 1) + 1

end

end A256510.P11475751391266540483

/-! ## A256510.P4079893782821660059

`record[or(1, A220169(A152271(n)))]`
-/

namespace A256510.P4079893782821660059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220169 (A152271 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256510.P4079893782821660059

/-! ## A256510.P13878368414887479505

`xor(1, A220169(A008619(2*n)))`
-/

namespace A256510.P13878368414887479505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A220169 (A008619 (2 * n)).toNat)

end

end A256510.P13878368414887479505

/-! ## A256510.P81516763462743340

`p?[A299535(n+1)+1]`
-/

namespace A256510.P81516763462743340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299535 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256510.P81516763462743340

/-! ## A256510.P6480841929678847102

`p?[A001274(n+1)+2]`
-/

namespace A256510.P6480841929678847102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256510.P6480841929678847102

/-!
# A256511: 

The programs for A256511, there is no canonical definition to state claims against.
-/

/-! ## A256511.P7626401623259292425

`(n*(n+2))!`
-/

namespace A256511.P7626401623259292425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * (n + 2))

end

end A256511.P7626401623259292425

/-! ## A256511.P16464016722915600493

`record[n!*Δ[floor(sqrt(n))]]`
-/

namespace A256511.P16464016722915600493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256511.P16464016722915600493

/-! ## A256511.P13231524960651080618

`A000142(n*(n+2))`
-/

namespace A256511.P13231524960651080618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n * (n + 2))

end

end A256511.P13231524960651080618

/-!
# A256512: a(n) = n*(1+(2*n)^n).

The programs for A256512, the canonical program `A256512.P1126411711847760801` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256512 has offset 0).

The definition of A256512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(1+(2*n)^n)` (program `A256512.P1126411711847760801`, by `A256512.P1126411711847760801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256512.P1126411711847760801

`n*(1+(2*n)^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256512

/-- `n*(1+(2*n)^n)` -/
def P1126411711847760801.Spec : Prop :=
  ∀ n, (P1126411711847760801.a n : ℤ) = A256512 n

theorem P1126411711847760801.correct : P1126411711847760801.Spec := by
  intro n
  simp only [A256512]

end A256512

/-! ## A256512.P15393276880470938541

`lcm(n, or(1, (2*n)^n))`
-/

namespace A256512.P15393276880470938541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.lor 1 ((2 * n) ^ n))

end

end A256512.P15393276880470938541

namespace A256512

/-- `lcm(n, or(1, (2*n)^n))` -/
def P15393276880470938541.Spec : Prop :=
  ∀ n, (P15393276880470938541.a n : ℤ) = A256512 n

end A256512

/-! ## A256512.P17820710186846371060

`or(n, n*(2*n)^n)`
-/

namespace A256512.P17820710186846371060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n * (2 * n) ^ n)

end

end A256512.P17820710186846371060

namespace A256512

/-- `or(n, n*(2*n)^n)` -/
def P17820710186846371060.Spec : Prop :=
  ∀ n, (P17820710186846371060.a n : ℤ) = A256512 n

end A256512

/-! ## A256512.P16482907228726239197

`xor(n, n*(2*n)^n)`
-/

namespace A256512.P16482907228726239197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n * (2 * n) ^ n)

end

end A256512.P16482907228726239197

namespace A256512

/-- `xor(n, n*(2*n)^n)` -/
def P16482907228726239197.Spec : Prop :=
  ∀ n, (P16482907228726239197.a n : ℤ) = A256512 n

end A256512

/-! ## A256512.P18250648396816489405

`A085532(n)/2+n`
-/

namespace A256512.P18250648396816489405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085532 n : ℚ) / 2 + (n : ℚ)

end

end A256512.P18250648396816489405

namespace A256512

/-- `A085532(n)/2+n` -/
def P18250648396816489405.Spec : Prop :=
  ∀ n, P18250648396816489405.a n = (A256512 n : ℚ)

end A256512

/-! ## A256512.P14964982515039878880

`2^n*A007778(n)+n`
-/

namespace A256512.P14964982515039878880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007778 n + (n : ℤ)

end

end A256512.P14964982515039878880

namespace A256512

/-- `2^n*A007778(n)+n` -/
def P14964982515039878880.Spec : Prop :=
  ∀ n, P14964982515039878880.a n = A256512 n

end A256512

/-! ## A256512.P7137529436416908888

`n*A004277(n)^n+n`
-/

namespace A256512.P7137529436416908888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004277 n ^ n + (n : ℤ)

end

end A256512.P7137529436416908888

namespace A256512

/-- `n*A004277(n)^n+n` -/
def P7137529436416908888.Spec : Prop :=
  ∀ n, P7137529436416908888.a n = A256512 n

end A256512

/-! ## A256512.P15829951477538250100

`A000312(n)*A036289(n)+n`
-/

namespace A256512.P15829951477538250100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A036289 n + (n : ℤ)

end

end A256512.P15829951477538250100

namespace A256512

/-- `A000312(n)*A036289(n)+n` -/
def P15829951477538250100.Spec : Prop :=
  ∀ n, P15829951477538250100.a n = A256512 n

end A256512

/-!
# A256515: Nonpalindromic positive integers k such that the absolute value of k^2 - reverse(k)^2 is a square.

The programs for A256515, there is no canonical definition to state claims against.
-/

/-! ## A256515.P13300931806931580768

`∪[A202386(n+1), A004086(A202386(n+1))]`
-/

namespace A256515.P13300931806931580768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A202386 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256515.P13300931806931580768

/-!
# A256517: Let c be the n-th composite number. Then a(n) is the smallest base b > 1 such that b^(c-1) == 1 (mod c^2), i.e., such that c is a 'Wieferich pseudoprime'.

The programs for A256517, there is no canonical definition to state claims against.
-/

/-! ## A256517.P16966051536825242259

`A185103(A002808(n+1))`
-/

namespace A256517.P16966051536825242259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A002808 (n + 1)).toNat

end

end A256517.P16966051536825242259

/-! ## A256517.P14507119875139235138

`A185103(Δ[A053767(n)])`
-/

namespace A256517.P14507119875139235138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (n + 1) - f1 n).toNat

end

end A256517.P14507119875139235138

/-! ## A256517.P15162167104417099691

`A185103(A018252(n+2))`
-/

namespace A256517.P15162167104417099691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A018252 (n + 2)).toNat

end

end A256517.P15162167104417099691

/-! ## A256517.P6416799415256318996

`A185103(lt[1, A003415(n)])`
-/

namespace A256517.P6416799415256318996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256517.P6416799415256318996

/-! ## A256517.P15530088883920911442

`A185103(eq[0, A339579(n+1)])`
-/

namespace A256517.P15530088883920911442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256517.P15530088883920911442

/-! ## A256517.P7582582491927341459

`A185103(lt[A000010(n+1), n]+1)`
-/

namespace A256517.P7582582491927341459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A256517.P7582582491927341459

/-! ## A256517.P576943859351156149

`A185103(lt[A020639(n+1), n]+1)`
-/

namespace A256517.P576943859351156149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A256517.P576943859351156149

/-! ## A256517.P16408910672783912808

`A185103(A053767(n+1)-A053767(n))`
-/

namespace A256517.P16408910672783912808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A053767 (n + 1) - A053767 n).toNat

end

end A256517.P16408910672783912808

/-! ## A256517.P10811550268086628685

`A244752(∑[n+1]+1)`
-/

namespace A256517.P10811550268086628685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244752 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256517.P10811550268086628685

/-!
# A256519: Composites c for which an integer 1 < k < c exists such that (c-k)! == -1 (mod c).

The programs for A256519, there is no canonical definition to state claims against.
-/

/-! ## A256519.P15589563962279461559

`A109861(A233554(n+1)-A001842(3*n+1))`
-/

namespace A256519.P15589563962279461559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109861 (A233554 (n + 1) - A001842 (3 * n + 1)).toNat

end

end A256519.P15589563962279461559

/-!
# A256520: Number of primes between the n-th and (n+1)-st Carmichael numbers.

The programs for A256520, there is no canonical definition to state claims against.
-/

/-! ## A256520.P9129882117116188124

`Δ[A000720(A002997(n+1))]`
-/

namespace A256520.P9129882117116188124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256520.P9129882117116188124

/-! ## A256520.P8433249889343880244

`Δ[A000720(A323214(n+3))]`
-/

namespace A256520.P8433249889343880244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A323214 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256520.P8433249889343880244

/-! ## A256520.P5496634562147167108

`Δ[A000720(A081703(n+1)*A141710(n+1))]`
-/

namespace A256520.P5496634562147167108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081703 (n + 1) * A141710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256520.P5496634562147167108

/-! ## A256520.P17239541644458990345

`Δ[A000720(A174590(n+1)*A306414(n+1))]`
-/

namespace A256520.P17239541644458990345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174590 (n + 1) * A306414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256520.P17239541644458990345

/-! ## A256520.P4427118269044558792

`Δ[A000720(A119999(n)²*A087788(n+1))]`
-/

namespace A256520.P4427118269044558792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119999 n ^ 2 * A087788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256520.P4427118269044558792

/-!
# A256523: Numbers m such that m, m^2 and m^3 have identical initial digits in decimal representation.

The programs for A256523, there is no canonical definition to state claims against.
-/

/-! ## A256523.P8947899113311628763

`A089951(∑[A014963(A018834(2*n+5))])`
-/

namespace A256523.P8947899113311628763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A018834 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256523.P8947899113311628763

/-! ## A256523.P12779692243560676562

`eq[A050168(A064146(n+2)), A056173(n+2)]`
-/

namespace A256523.P12779692243560676562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A064146 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256523.P12779692243560676562

/-! ## A256523.P12370636448057641796

`A089951(A089964(n+1)%A090009(n+1))`
-/

namespace A256523.P12370636448057641796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (Int.tmod (A089964 (n + 1)) (A090009 (n + 1))).toNat

end

end A256523.P12370636448057641796

/-!
# A256524: Number of partitions of 3n into at most 4 parts.

The programs for A256524, the canonical program `A256524.P5463711437794067124` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256524 has offset 0).

The definition of A256524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256524.P5463711437794067124

`A001400(3*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256524

/-- `A001400(3*n)` -/
def P5463711437794067124.Spec : Prop :=
  ∀ n, P5463711437794067124.a n = A256524 n

theorem P5463711437794067124.correct : P5463711437794067124.Spec := by
  intro n
  simp only [A256524]

end A256524

/-! ## A256524.P4269458011624340434

`∑[floor(∑[1/2*gcd(2, n)]²)]`
-/

namespace A256524.P4269458011624340434
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f2 j) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256524.P4269458011624340434

namespace A256524

/-- `∑[floor(∑[1/2*gcd(2, n)]²)]` -/
def P4269458011624340434.Spec : Prop :=
  ∀ n, P4269458011624340434.a n = A256524 n

end A256524

/-! ## A256524.P13120671922012651723

`∑[floor((∑[char[2*n]+1]/2)²)]`
-/

namespace A256524.P13120671922012651723
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256524.P13120671922012651723

namespace A256524

/-- `∑[floor((∑[char[2*n]+1]/2)²)]` -/
def P13120671922012651723.Spec : Prop :=
  ∀ n, P13120671922012651723.a n = A256524 n

end A256524

/-! ## A256524.P3914814183600773319

`A256525(n)-A256314(n)`
-/

namespace A256524.P3914814183600773319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256525 n - A256314 n

end

end A256524.P3914814183600773319

namespace A256524

/-- `A256525(n)-A256314(n)` -/
def P3914814183600773319.Spec : Prop :=
  ∀ n, P3914814183600773319.a n = A256524 n

end A256524

/-! ## A256524.P14817028205264784247

`A256313(n)+A077043(n+1)`
-/

namespace A256524.P14817028205264784247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256313 n + A077043 (n + 1)

end

end A256524.P14817028205264784247

namespace A256524

/-- `A256313(n)+A077043(n+1)` -/
def P14817028205264784247.Spec : Prop :=
  ∀ n, P14817028205264784247.a n = A256524 n

end A256524

/-! ## A256524.P10727544289234941189

`A173196(n+1)+A173196(n+1)+A005232(n)`
-/

namespace A256524.P10727544289234941189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + (A173196 (n + 1) + A005232 n)

end

end A256524.P10727544289234941189

namespace A256524

/-- `A173196(n+1)+A173196(n+1)+A005232(n)` -/
def P10727544289234941189.Spec : Prop :=
  ∀ n, P10727544289234941189.a n = A256524 n

end A256524

/-! ## A256524.P8456700272742622507

`A212964(n+2)+A005232(n)`
-/

namespace A256524.P8456700272742622507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (n + 2) + A005232 n

end

end A256524.P8456700272742622507

namespace A256524

/-- `A212964(n+2)+A005232(n)` -/
def P8456700272742622507.Spec : Prop :=
  ∀ n, P8456700272742622507.a n = A256524 n

end A256524

/-! ## A256524.P5261944407401259258

`record[A001400(n)/A169609(n)]`
-/

namespace A256524.P5261944407401259258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001400 n : ℚ) / (A169609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256524.P5261944407401259258

namespace A256524

/-- `record[A001400(n)/A169609(n)]` -/
def P5261944407401259258.Spec : Prop :=
  ∀ n, P5261944407401259258.a n = (A256524 n : ℚ)

end A256524

/-! ## A256524.P2289004399793584073

`A011961(3*n+2)`
-/

namespace A256524.P2289004399793584073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011961 (3 * n + 2)

end

end A256524.P2289004399793584073

namespace A256524

/-- `A011961(3*n+2)` -/
def P2289004399793584073.Spec : Prop :=
  ∀ n, P2289004399793584073.a n = A256524 n

end A256524

/-! ## A256524.P18094970144937795824

`A026810(3*(n+1)+1)`
-/

namespace A256524.P18094970144937795824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (3 * (n + 1) + 1)

end

end A256524.P18094970144937795824

namespace A256524

/-- `A026810(3*(n+1)+1)` -/
def P18094970144937795824.Spec : Prop :=
  ∀ n, P18094970144937795824.a n = A256524 n

end A256524

/-! ## A256524.P1331398469817212706

`A029138(6*n)`
-/

namespace A256524.P1331398469817212706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (6 * n)

end

end A256524.P1331398469817212706

namespace A256524

/-- `A029138(6*n)` -/
def P1331398469817212706.Spec : Prop :=
  ∀ n, P1331398469817212706.a n = A256524 n

end A256524

/-! ## A256524.P7881348163205617516

`A029167(9*n)`
-/

namespace A256524.P7881348163205617516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (9 * n)

end

end A256524.P7881348163205617516

namespace A256524

/-- `A029167(9*n)` -/
def P7881348163205617516.Spec : Prop :=
  ∀ n, P7881348163205617516.a n = A256524 n

end A256524

/-! ## A256524.P18028067199271219809

`A029253(9*n)`
-/

namespace A256524.P18028067199271219809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (9 * n)

end

end A256524.P18028067199271219809

namespace A256524

/-- `A029253(9*n)` -/
def P18028067199271219809.Spec : Prop :=
  ∀ n, P18028067199271219809.a n = A256524 n

end A256524

/-! ## A256524.P1921085520330704819

`A288165(A017197(n)+1)`
-/

namespace A256524.P1921085520330704819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A017197 n + 1).toNat

end

end A256524.P1921085520330704819

namespace A256524

/-- `A288165(A017197(n)+1)` -/
def P1921085520330704819.Spec : Prop :=
  ∀ n, P1921085520330704819.a n = A256524 n

end A256524

/-! ## A256524.P7830868676206509034

`A288165(A168411(2*n+1)+1)`
-/

namespace A256524.P7830868676206509034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168411 (2 * n + 1) + 1).toNat

end

end A256524.P7830868676206509034

namespace A256524

/-- `A288165(A168411(2*n+1)+1)` -/
def P7830868676206509034.Spec : Prop :=
  ∀ n, P7830868676206509034.a n = A256524 n

end A256524

/-! ## A256524.P12692429501837675986

`A029425(3*6*n)`
-/

namespace A256524.P12692429501837675986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (3 * (6 * n))

end

end A256524.P12692429501837675986

namespace A256524

/-- `A029425(3*6*n)` -/
def P12692429501837675986.Spec : Prop :=
  ∀ n, P12692429501837675986.a n = A256524 n

end A256524

/-!
# A256525: Number of partitions of 3n into at most 5 parts.

The programs for A256525, the canonical program `A256525.P14526080912117306426` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256525 has offset 0).

The definition of A256525 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256525.P14526080912117306426

`A001401(3*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256525

/-- `A001401(3*n)` -/
def P14526080912117306426.Spec : Prop :=
  ∀ n, P14526080912117306426.a n = A256525 n

theorem P14526080912117306426.correct : P14526080912117306426.Spec := by
  intro n
  simp only [A256525]

end A256525

/-! ## A256525.P339639078322305738

`A256524(n)+A256314(n)`
-/

namespace A256525.P339639078322305738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 n + A256314 n

end

end A256525.P339639078322305738

namespace A256525

/-- `A256524(n)+A256314(n)` -/
def P339639078322305738.Spec : Prop :=
  ∀ n, P339639078322305738.a n = A256525 n

end A256525

/-! ## A256525.P14569176447823404342

`A077043(n+1)+A256314(n)+A256313(n)`
-/

namespace A256525.P14569176447823404342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) + (A256314 n + A256313 n)

end

end A256525.P14569176447823404342

namespace A256525

/-- `A077043(n+1)+A256314(n)+A256313(n)` -/
def P14569176447823404342.Spec : Prop :=
  ∀ n, P14569176447823404342.a n = A256525 n

end A256525

/-! ## A256525.P402409455941579571

`A256315(n+2)-A256315(n)`
-/

namespace A256525.P402409455941579571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (n + 2) - A256315 n

end

end A256525.P402409455941579571

namespace A256525

/-- `A256315(n+2)-A256315(n)` -/
def P402409455941579571.Spec : Prop :=
  ∀ n, P402409455941579571.a n = A256525 n

end A256525

/-! ## A256525.P14797973844996879863

`∑[A029007(3*n)]`
-/

namespace A256525.P14797973844996879863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029007 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256525.P14797973844996879863

namespace A256525

/-- `∑[A029007(3*n)]` -/
def P14797973844996879863.Spec : Prop :=
  ∀ n, P14797973844996879863.a n = A256525 n

end A256525

/-! ## A256525.P12682154115561045225

`A001402(3*n)-A026812(3*n)`
-/

namespace A256525.P12682154115561045225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (3 * n) - A026812 (3 * n)

end

end A256525.P12682154115561045225

namespace A256525

/-- `A001402(3*n)-A026812(3*n)` -/
def P12682154115561045225.Spec : Prop :=
  ∀ n, P12682154115561045225.a n = A256525 n

end A256525

/-! ## A256525.P6802186287838732667

`A026811(3*n+5)`
-/

namespace A256525.P6802186287838732667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (3 * n + 5)

end

end A256525.P6802186287838732667

namespace A256525

/-- `A026811(3*n+5)` -/
def P6802186287838732667.Spec : Prop :=
  ∀ n, P6802186287838732667.a n = A256525 n

end A256525

/-! ## A256525.P3891192786122361704

`A266768(6*n)`
-/

namespace A256525.P3891192786122361704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (6 * n)

end

end A256525.P3891192786122361704

namespace A256525

/-- `A266768(6*n)` -/
def P3891192786122361704.Spec : Prop :=
  ∀ n, P3891192786122361704.a n = A256525 n

end A256525

/-! ## A256525.P17344863942826446196

`A008636(3*n)-(A026813(3*n)+A026812(3*n))`
-/

namespace A256525.P17344863942826446196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (3 * n) - (A026813 (3 * n) + A026812 (3 * n))

end

end A256525.P17344863942826446196

namespace A256525

/-- `A008636(3*n)-(A026813(3*n)+A026812(3*n))` -/
def P17344863942826446196.Spec : Prop :=
  ∀ n, P17344863942826446196.a n = A256525 n

end A256525

/-! ## A256525.P3853074123520615593

`A288166(12*n+5)`
-/

namespace A256525.P3853074123520615593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (12 * n + 5)

end

end A256525.P3853074123520615593

namespace A256525

/-- `A288166(12*n+5)` -/
def P3853074123520615593.Spec : Prop :=
  ∀ n, P3853074123520615593.a n = A256525 n

end A256525

/-!
# A256527: a(n) is the least number k > 0 such that sigma(k) = phi(n*k).

The programs for A256527, there is no canonical definition to state claims against.
-/

/-! ## A256527.P12606787043430964573

`A087979(n+1)%(29-A150076(n))`
-/

namespace A256527.P12606787043430964573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087979 (n + 1)) (29 - A150076 n)

end

end A256527.P12606787043430964573

/-! ## A256527.P9193459480443315799

`A241762(n+1)/(n+1)`
-/

namespace A256527.P9193459480443315799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241762 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A256527.P9193459480443315799

/-! ## A256527.P2860446650888794606

`(n+1)^-1*A241762(A000027(n+1))`
-/

namespace A256527.P2860446650888794606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * (A241762 (A000027 (n + 1)).toNat : ℚ)

end

end A256527.P2860446650888794606

/-! ## A256527.P5836901546186976372

`A087979(n+1)%A264443(A089408(n))`
-/

namespace A256527.P5836901546186976372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087979 (n + 1)) (A264443 (A089408 n).toNat)

end

end A256527.P5836901546186976372

/-! ## A256527.P1977911556000936399

`A088830(A088847(n+1)*A351086(n))%A286672(n+3)`
-/

namespace A256527.P1977911556000936399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088830 (A088847 (n + 1) * A351086 n).toNat) (A286672 (n + 3))

end

end A256527.P1977911556000936399

/-!
# A256528: Partial sums of A254077.

The programs for A256528, there is no canonical definition to state claims against.
-/

/-! ## A256528.P15302888066073500837

`∑[A254077(n+1)]`
-/

namespace A256528.P15302888066073500837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P15302888066073500837

/-! ## A256528.P16832295038364217699

`∑[A254077(2-ceil(n*sin(11)))]-1`
-/

namespace A256528.P16832295038364217699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (2 - ⌈(n : ℝ) * Real.sin (11 : ℝ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A256528.P16832295038364217699

/-! ## A256528.P17739699835502857739

`or(∑[A254077(ϕ²-(ϕ-n))], char[1])`
-/

namespace A256528.P17739699835502857739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256528.P17739699835502857739

/-! ## A256528.P9907933319262912512

`A254077(n-log2(1/2))+a(n-1)` with `a(0)=1`
-/

namespace A256528.P9907933319262912512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254077 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + a (n - 1)

end

end A256528.P9907933319262912512

/-! ## A256528.P6133471136218379973

`∑[A256974(n)+A255582(n+1)]`
-/

namespace A256528.P6133471136218379973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A255582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P6133471136218379973

/-! ## A256528.P8060625193983894599

`A256529(n+1)+∑[A256974(n)]`
-/

namespace A256528.P8060625193983894599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256529 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P8060625193983894599

/-! ## A256528.P2997167113254471422

`∑[A028310(A254077(Δ[n²]-n))]`
-/

namespace A256528.P2997167113254471422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A254077 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P2997167113254471422

/-! ## A256528.P8307013917232756379

`A028310(∑[A254077(n-log2(1/2))])`
-/

namespace A256528.P8307013917232756379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256528.P8307013917232756379

/-! ## A256528.P7109989752919395675

`∑[A254109(A254077(ϕ²-(ϕ-n)))]`
-/

namespace A256528.P7109989752919395675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A254077 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P7109989752919395675

/-! ## A256528.P14661099065052511658

`∑[A000045(((-1)^n)²)*A254077(ϕ²-(ϕ-n))]`
-/

namespace A256528.P14661099065052511658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A254077 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256528.P14661099065052511658

/-!
# A256529: Partial sums of A255582.

The programs for A256529, there is no canonical definition to state claims against.
-/

/-! ## A256529.P17813276004551993911

`∑[A255582(n+1)]`
-/

namespace A256529.P17813276004551993911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256529.P17813276004551993911

/-! ## A256529.P10824862791337660333

`∑[A254077(n+1)-A256974(n)]`
-/

namespace A256529.P10824862791337660333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) - A256974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256529.P10824862791337660333

/-! ## A256529.P568643250565044885

`A256528(n+1)-∑[A256974(n)]`
-/

namespace A256529.P568643250565044885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256528 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256529.P568643250565044885

/-! ## A256529.P11113356078471306165

`A255582(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A256529.P11113356078471306165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255582 (n + 1) + a (A023443 n).toNat

end

end A256529.P11113356078471306165

/-! ## A256529.P15846341896487985044

`A255582(n+1)+a(A289207(n+1))` with `a(0)=1`
-/

namespace A256529.P15846341896487985044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255582 (n + 1) + a (A289207 (n + 1)).toNat

end

end A256529.P15846341896487985044

/-! ## A256529.P10861855348716339102

`a(n-1)+A255582(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A256529.P10861855348716339102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A255582 (n + 1) + A000007 n)

end

end A256529.P10861855348716339102

/-!
# A256530: Number of ON cells at n-th stage in simple 2-dimensional cellular automaton (see Comments lines for definition).

The programs for A256530, there is no canonical definition to state claims against.
-/

/-! ## A256530.P2409378106433700601

`∑[A256531(n)]`
-/

namespace A256530.P2409378106433700601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256530.P2409378106433700601

/-! ## A256530.P6903804612960039045

`A256531(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A256530.P6903804612960039045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256531 n + a (A023443 n).toNat

end

end A256530.P6903804612960039045

/-! ## A256530.P2363445023725194230

`A256531(n)+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A256530.P2363445023725194230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256531 n + a (A004273 n - (n : ℤ)).toNat

end

end A256530.P2363445023725194230

/-! ## A256530.P2974824081691731948

`A256534(n)-A003817(2*n)`
-/

namespace A256530.P2974824081691731948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256534 n - A003817 (2 * n)

end

end A256530.P2974824081691731948

/-! ## A256530.P11822067451215242598

`A256534(n)-A086099(A008574(n))`
-/

namespace A256530.P11822067451215242598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256534 n - A086099 (A008574 n).toNat

end

end A256530.P11822067451215242598

/-! ## A256530.P7253534673339464498

`A256531(n)+a(n-A011620(n²))` with `a(0)=0`
-/

namespace A256530.P7253534673339464498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256531 n + a ((n : ℤ) - A011620 (n ^ 2)).toNat

end

end A256530.P7253534673339464498

/-! ## A256530.P8414466364650905615

`A073254(A261693(n)+A000384(n))`
-/

namespace A256530.P8414466364650905615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (A261693 n + A000384 n).toNat

end

end A256530.P8414466364650905615

/-! ## A256530.P483644762348910651

`∑[A261695(n)]-A003817(2*n)`
-/

namespace A256530.P483644762348910651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003817 (2 * n)

end

end A256530.P483644762348910651

/-! ## A256530.P8078805343401549478

`∑[A261695(n)]-A086099(A008574(n))`
-/

namespace A256530.P8078805343401549478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A086099 (A008574 n).toNat

end

end A256530.P8078805343401549478

/-! ## A256530.P6687312990230801090

`∑[A261695(n)]-A103831(A003817(n))`
-/

namespace A256530.P6687312990230801090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A103831 (A003817 n).toNat

end

end A256530.P6687312990230801090

/-!
# A256531: First differences of A256530.

The programs for A256531, there is no canonical definition to state claims against.
-/

/-! ## A256531.P3530890065880047163

`Δ[A256530(round(sqrt(n²+1))-1)]`
-/

namespace A256531.P3530890065880047163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256530 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256531.P3530890065880047163

/-!
# A256532: Product of n and the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

The programs for A256532, the canonical program `A256532.P7056753071363475223` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256532 has offset 1).

The definition of A256532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256532.P7056753071363475223

`(n+1)*A004125(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A256532

/-- `(n+1)*A004125(n+1)` -/
def P7056753071363475223.Spec : Prop :=
  ∀ n, P7056753071363475223.a n = A256532 (n + 1)

theorem P7056753071363475223.correct : P7056753071363475223.Spec := by
  intro n
  simp only [A256532, Nat.add_sub_cancel]

end A256532

/-! ## A256532.P1005276650208916562

`(n+1)^3-A256533(n+1)`
-/

namespace A256532.P1005276650208916562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A256533 (n + 1)

end

end A256532.P1005276650208916562

namespace A256532

/-- `(n+1)^3-A256533(n+1)` -/
def P1005276650208916562.Spec : Prop :=
  ∀ n, P1005276650208916562.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P4385751405696557468

`(n+1)*∑[Δ[n²]-∑{d}[n+1, #]]`
-/

namespace A256532.P4385751405696557468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256532.P4385751405696557468

namespace A256532

/-- `(n+1)*∑[Δ[n²]-∑{d}[n+1, #]]` -/
def P4385751405696557468.Spec : Prop :=
  ∀ n, P4385751405696557468.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P348322501700173360

`(n+1)*∑[2*n-∑{d}[n+1, #]+1]`
-/

namespace A256532.P348322501700173360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256532.P348322501700173360

namespace A256532

/-- `(n+1)*∑[2*n-∑{d}[n+1, #]+1]` -/
def P348322501700173360.Spec : Prop :=
  ∀ n, P348322501700173360.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P4768538338908067992

`(n+1)*Δ[A072481(n)]`
-/

namespace A256532.P4768538338908067992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A256532.P4768538338908067992

namespace A256532

/-- `(n+1)*Δ[A072481(n)]` -/
def P4768538338908067992.Spec : Prop :=
  ∀ n, P4768538338908067992.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P1685018885163191300

`(n+1)*∑[A235796(n+1)]`
-/

namespace A256532.P1685018885163191300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256532.P1685018885163191300

namespace A256532

/-- `(n+1)*∑[A235796(n+1)]` -/
def P1685018885163191300.Spec : Prop :=
  ∀ n, P1685018885163191300.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P16813321491859149284

`(n+1)/2*A067436(n+1)`
-/

namespace A256532.P16813321491859149284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A067436 (n + 1) : ℚ)

end

end A256532.P16813321491859149284

namespace A256532

/-- `(n+1)/2*A067436(n+1)` -/
def P16813321491859149284.Spec : Prop :=
  ∀ n, P16813321491859149284.a n = (A256532 (n + 1) : ℚ)

end A256532

/-! ## A256532.P9706756272990902388

`∑[n-A001065(n+1)]*(n+1)`
-/

namespace A256532.P9706756272990902388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A256532.P9706756272990902388

namespace A256532

/-- `∑[n-A001065(n+1)]*(n+1)` -/
def P9706756272990902388.Spec : Prop :=
  ∀ n, P9706756272990902388.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P9769048147990660703

`(n+1)*(A111490(n+1)-(n+1))`
-/

namespace A256532.P9769048147990660703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A111490 (n + 1) - (n + 1 : ℤ))

end

end A256532.P9769048147990660703

namespace A256532

/-- `(n+1)*(A111490(n+1)-(n+1))` -/
def P9769048147990660703.Spec : Prop :=
  ∀ n, P9769048147990660703.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P8944039762309225084

`((n+1)²-A024916(n+1))*(n+1)`
-/

namespace A256532.P8944039762309225084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A024916 (n + 1)) * (n + 1 : ℤ)

end

end A256532.P8944039762309225084

namespace A256532

/-- `((n+1)²-A024916(n+1))*(n+1)` -/
def P8944039762309225084.Spec : Prop :=
  ∀ n, P8944039762309225084.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P5613810199658708445

`(n+1)*∑[Δ[n²]-A000203(n+1)]`
-/

namespace A256532.P5613810199658708445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256532.P5613810199658708445

namespace A256532

/-- `(n+1)*∑[Δ[n²]-A000203(n+1)]` -/
def P5613810199658708445.Spec : Prop :=
  ∀ n, P5613810199658708445.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P10182072974492637032

`A184628(n+1)%A256533(n+1)`
-/

namespace A256532.P10182072974492637032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A256533 (n + 1))

end

end A256532.P10182072974492637032

namespace A256532

/-- `A184628(n+1)%A256533(n+1)` -/
def P10182072974492637032.Spec : Prop :=
  ∀ n, P10182072974492637032.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P14654908124746347781

`A002264(n+1)+A002901(n+1)-A256533(n+1)`
-/

namespace A256532.P14654908124746347781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A002901 (n + 1) - A256533 (n + 1))

end

end A256532.P14654908124746347781

namespace A256532

/-- `A002264(n+1)+A002901(n+1)-A256533(n+1)` -/
def P14654908124746347781.Spec : Prop :=
  ∀ n, P14654908124746347781.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P2189750166590083111

`A004125(A008619(2*n))*A008619(2*n)`
-/

namespace A256532.P2189750166590083111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A256532.P2189750166590083111

namespace A256532

/-- `A004125(A008619(2*n))*A008619(2*n)` -/
def P2189750166590083111.Spec : Prop :=
  ∀ n, P2189750166590083111.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P864388800411597956

`A066023(n+1)%A256533(n+1)`
-/

namespace A256532.P864388800411597956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A256533 (n + 1))

end

end A256532.P864388800411597956

namespace A256532

/-- `A066023(n+1)%A256533(n+1)` -/
def P864388800411597956.Spec : Prop :=
  ∀ n, P864388800411597956.a n = A256532 (n + 1)

end A256532

/-! ## A256532.P14976100920503173497

`A241527(n+1)-(A256533(n+1)+A007051(n+1))`
-/

namespace A256532.P14976100920503173497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241527 (n + 1) - (A256533 (n + 1) + A007051 (n + 1))

end

end A256532.P14976100920503173497

namespace A256532

/-- `A241527(n+1)-(A256533(n+1)+A007051(n+1))` -/
def P14976100920503173497.Spec : Prop :=
  ∀ n, P14976100920503173497.a n = A256532 (n + 1)

end A256532

/-!
# A256533: Product of n and the sum of all divisors of all positive integers <= n.

The programs for A256533, the canonical program `A256533.P5671197403926202284` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256533 has offset 1).

The definition of A256533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256533.P2129439020071965901

`(n+1)*A024916(n+1)`
-/

namespace A256533.P2129439020071965901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024916 (n + 1)

end

end A256533.P2129439020071965901

namespace A256533

/-- `(n+1)*A024916(n+1)` -/
def P2129439020071965901.Spec : Prop :=
  ∀ n, P2129439020071965901.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P11054754246570766877

`(n+1)^3-A256532(n+1)`
-/

namespace A256533.P11054754246570766877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A256532 (n + 1)

end

end A256533.P11054754246570766877

namespace A256533

/-- `(n+1)^3-A256532(n+1)` -/
def P11054754246570766877.Spec : Prop :=
  ∀ n, P11054754246570766877.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P5671197403926202284

`A332264(n+1)+A175254(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256533

/-- `A332264(n+1)+A175254(n+1)` -/
def P5671197403926202284.Spec : Prop :=
  ∀ n, P5671197403926202284.a n = A256533 (n + 1)

theorem P5671197403926202284.correct : P5671197403926202284.Spec := by
  intro n
  simp only [A256533, Nat.add_sub_cancel]

end A256533

/-! ## A256533.P8829834021892379198

`(n+1)*∑[∑{d}[n+1, #]]`
-/

namespace A256533.P8829834021892379198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P8829834021892379198

namespace A256533

/-- `(n+1)*∑[∑{d}[n+1, #]]` -/
def P8829834021892379198.Spec : Prop :=
  ∀ n, (P8829834021892379198.a n : ℤ) = A256533 (n + 1)

end A256533

/-! ## A256533.P17277131426599988026

`(n+1)*∑[A000203(n+1)]`
-/

namespace A256533.P17277131426599988026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P17277131426599988026

namespace A256533

/-- `(n+1)*∑[A000203(n+1)]` -/
def P17277131426599988026.Spec : Prop :=
  ∀ n, P17277131426599988026.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P4506494775686552467

`(n+1)*∑[abs(Δ[A330725(n)])]`
-/

namespace A256533.P4506494775686552467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P4506494775686552467

namespace A256533

/-- `(n+1)*∑[abs(Δ[A330725(n)])]` -/
def P4506494775686552467.Spec : Prop :=
  ∀ n, P4506494775686552467.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P378113549474787363

`(n+1)*(A160664(n+1)-1)`
-/

namespace A256533.P378113549474787363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160664 (n + 1) - 1)

end

end A256533.P378113549474787363

namespace A256533

/-- `(n+1)*(A160664(n+1)-1)` -/
def P378113549474787363.Spec : Prop :=
  ∀ n, P378113549474787363.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P14642465276253269644

`(n+1)/2*A327329(n+1)`
-/

namespace A256533.P14642465276253269644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A327329 (n + 1) : ℚ)

end

end A256533.P14642465276253269644

namespace A256533

/-- `(n+1)/2*A327329(n+1)` -/
def P14642465276253269644.Spec : Prop :=
  ∀ n, P14642465276253269644.a n = (A256533 (n + 1) : ℚ)

end A256533

/-! ## A256533.P16253896924265445978

`(n+1)/4*A243980(n+1)`
-/

namespace A256533.P16253896924265445978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A243980 (n + 1) : ℚ)

end

end A256533.P16253896924265445978

namespace A256533

/-- `(n+1)/4*A243980(n+1)` -/
def P16253896924265445978.Spec : Prop :=
  ∀ n, P16253896924265445978.a n = (A256533 (n + 1) : ℚ)

end A256533

/-! ## A256533.P14442982584282001985

`(n+1)*∑[A245092(2*n+1)]`
-/

namespace A256533.P14442982584282001985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P14442982584282001985

namespace A256533

/-- `(n+1)*∑[A245092(2*n+1)]` -/
def P14442982584282001985.Spec : Prop :=
  ∀ n, P14442982584282001985.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P6356707890502700320

`(n+1)*∑[A001065(n+1)+1+n]`
-/

namespace A256533.P6356707890502700320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P6356707890502700320

namespace A256533

/-- `(n+1)*∑[A001065(n+1)+1+n]` -/
def P6356707890502700320.Spec : Prop :=
  ∀ n, P6356707890502700320.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P8637248711054419014

`(n+1)*∑[A155085(n+1)-(n+1)]`
-/

namespace A256533.P8637248711054419014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P8637248711054419014

namespace A256533

/-- `(n+1)*∑[A155085(n+1)-(n+1)]` -/
def P8637248711054419014.Spec : Prop :=
  ∀ n, P8637248711054419014.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P7572852684385804658

`(n+1)*∑[A064987(n+1)/(n+1)]`
-/

namespace A256533.P7572852684385804658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256533.P7572852684385804658

namespace A256533

/-- `(n+1)*∑[A064987(n+1)/(n+1)]` -/
def P7572852684385804658.Spec : Prop :=
  ∀ n, P7572852684385804658.a n = (A256533 (n + 1) : ℚ)

end A256533

/-! ## A256533.P15531807252262173953

`A143128(n+1)+A000330(n)-A072481(n)`
-/

namespace A256533.P15531807252262173953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) + (A000330 n - A072481 n)

end

end A256533.P15531807252262173953

namespace A256533

/-- `A143128(n+1)+A000330(n)-A072481(n)` -/
def P15531807252262173953.Spec : Prop :=
  ∀ n, P15531807252262173953.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P1575375993044002434

`A143128(n+1)+A175254(n+1)-A024916(n+1)`
-/

namespace A256533.P1575375993044002434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) + (A175254 (n + 1) - A024916 (n + 1))

end

end A256533.P1575375993044002434

namespace A256533

/-- `A143128(n+1)+A175254(n+1)-A024916(n+1)` -/
def P1575375993044002434.Spec : Prop :=
  ∀ n, P1575375993044002434.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P4691065061826313611

`∑[A000203(A008619(2*n))]*A008619(2*n)`
-/

namespace A256533.P4691065061826313611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (2 * n)

end

end A256533.P4691065061826313611

namespace A256533

/-- `∑[A000203(A008619(2*n))]*A008619(2*n)` -/
def P4691065061826313611.Spec : Prop :=
  ∀ n, P4691065061826313611.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P13996711802540817700

`∑[A000203(A052938(2*n))]*A052938(2*n)`
-/

namespace A256533.P13996711802540817700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052938 (2 * n)

end

end A256533.P13996711802540817700

namespace A256533

/-- `∑[A000203(A052938(2*n))]*A052938(2*n)` -/
def P13996711802540817700.Spec : Prop :=
  ∀ n, P13996711802540817700.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P5350606406132518750

`∑[A262610(2*n+1)]*(n+1)`
-/

namespace A256533.P5350606406132518750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A256533.P5350606406132518750

namespace A256533

/-- `∑[A262610(2*n+1)]*(n+1)` -/
def P5350606406132518750.Spec : Prop :=
  ∀ n, P5350606406132518750.a n = A256533 (n + 1)

end A256533

/-! ## A256533.P13951610822641448967

`(n+1)*A271342(2*(n+1))/2`
-/

namespace A256533.P13951610822641448967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A271342 (2 * (n + 1)) : ℚ) / 2

end

end A256533.P13951610822641448967

namespace A256533

/-- `(n+1)*A271342(2*(n+1))/2` -/
def P13951610822641448967.Spec : Prop :=
  ∀ n, P13951610822641448967.a n = (A256533 (n + 1) : ℚ)

end A256533

/-! ## A256533.P5974421767906307584

`∑[A000203(A028242(2*n))]*A028242(2*n)`
-/

namespace A256533.P5974421767906307584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028242 (2 * n)

end

end A256533.P5974421767906307584

namespace A256533

/-- `∑[A000203(A028242(2*n))]*A028242(2*n)` -/
def P5974421767906307584.Spec : Prop :=
  ∀ n, P5974421767906307584.a n = A256533 (n + 1)

end A256533

/-!
# A256534: Number of ON cells at n-th stage in simple 2-dimensional cellular automaton (see Comments lines for definition).

The programs for A256534, there is no canonical definition to state claims against.
-/

/-! ## A256534.P13096147015634480062

`A160410(n)+A256530(n)-A160414(n)`
-/

namespace A256534.P13096147015634480062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n + (A256530 n - A160414 n)

end

end A256534.P13096147015634480062

/-! ## A256534.P6454050405672270194

`record[n%2*A236305(n)]`
-/

namespace A256534.P6454050405672270194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A236305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256534.P6454050405672270194

/-! ## A256534.P17727228693967552179

`A236305(comp[2*(n+1)])%A005897(n)`
-/

namespace A256534.P17727228693967552179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A005897 n)

end

end A256534.P17727228693967552179

/-! ## A256534.P16609665206038099613

`record[2*A014682(A256249(n))]`
-/

namespace A256534.P16609665206038099613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014682 (A256249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256534.P16609665206038099613

/-! ## A256534.P678167040939903208

`record[A006370(A256249(n))]`
-/

namespace A256534.P678167040939903208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A256249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256534.P678167040939903208

/-! ## A256534.P14417941235774622283

`A005843(record[A014682(A256249(n))])`
-/

namespace A256534.P14417941235774622283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256534.P14417941235774622283

/-! ## A256534.P12103441696655811051

`A022998(record[A014682(A256249(n))])`
-/

namespace A256534.P12103441696655811051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256534.P12103441696655811051

/-! ## A256534.P14916402103588612189

`A042948(record[A014682(A256249(n))])`
-/

namespace A256534.P14916402103588612189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256534.P14916402103588612189

/-! ## A256534.P13526945288073990939

`∑[A261695(n)]`
-/

namespace A256534.P13526945288073990939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256534.P13526945288073990939

/-! ## A256534.P8233131404286085930

`A261695(A033619(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A256534.P8233131404286085930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A261695 (A033619 (n + 1)).toNat + a (n - 1)

end

end A256534.P8233131404286085930

/-!
# A256535: The largest number of T-tetrominoes that fit within an n X n square.

The programs for A256535, the canonical program `A256535.P11613381661679907683` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256535 has offset 1).

The definition of A256535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256535.P11613381661679907683

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=5, a(5)=8, a(6)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256535

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P11613381661679907683.Spec : Prop :=
  ∀ n, P11613381661679907683.a n = A256535 (n + 1)

theorem P11613381661679907683.correct : P11613381661679907683.Spec := by
  intro n
  simp only [A256535, Nat.add_sub_cancel]

end A256535

/-! ## A256535.P11445837462728842284

`∑[and(2, n)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A256535.P11445837462728842284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A256535.P11445837462728842284

namespace A256535

/-- `∑[and(2, n)]+a(n-2)` -/
def P11445837462728842284.Spec : Prop :=
  ∀ n, (P11445837462728842284.a n : ℤ) = A256535 (n + 1)

end A256535

/-! ## A256535.P10938578577751951095

`∑[a(n-4)+2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=1, a(5)=3`
-/

namespace A256535.P10938578577751951095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3, 1, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256535.P10938578577751951095

namespace A256535

/-- `∑[a(n-4)+2]` -/
def P10938578577751951095.Spec : Prop :=
  ∀ n, (P10938578577751951095.a n : ℤ) = A256535 (n + 1)

end A256535

/-! ## A256535.P16506817396627905871

`A267531(n)-A047612(n+1)`
-/

namespace A256535.P16506817396627905871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267531 n - A047612 (n + 1)

end

end A256535.P16506817396627905871

namespace A256535

/-- `A267531(n)-A047612(n+1)` -/
def P16506817396627905871.Spec : Prop :=
  ∀ n, P16506817396627905871.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P5665422919750071861

`A035106(n+1)-∑[A008619(n)%2]`
-/

namespace A256535.P5665422919750071861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256535.P5665422919750071861

namespace A256535

/-- `A035106(n+1)-∑[A008619(n)%2]` -/
def P5665422919750071861.Spec : Prop :=
  ∀ n, P5665422919750071861.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P11967450877241951651

`A080476(n+1)-A008811(n+1)`
-/

namespace A256535.P11967450877241951651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A008811 (n + 1)

end

end A256535.P11967450877241951651

namespace A256535

/-- `A080476(n+1)-A008811(n+1)` -/
def P11967450877241951651.Spec : Prop :=
  ∀ n, P11967450877241951651.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P6553714693319387413

`A035106(n+1)-∑[A027379(n+1)%2]`
-/

namespace A256535.P6553714693319387413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256535.P6553714693319387413

namespace A256535

/-- `A035106(n+1)-∑[A027379(n+1)%2]` -/
def P6553714693319387413.Spec : Prop :=
  ∀ n, P6553714693319387413.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P14361566940127417562

`A035106(n+1)-A004524(n+3)`
-/

namespace A256535.P14361566940127417562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) - A004524 (n + 3)

end

end A256535.P14361566940127417562

namespace A256535

/-- `A035106(n+1)-A004524(n+3)` -/
def P14361566940127417562.Spec : Prop :=
  ∀ n, P14361566940127417562.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P4658344562596470300

`A004525(record[∑[A097062(n)]])-1`
-/

namespace A256535.P4658344562596470300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A256535.P4658344562596470300

namespace A256535

/-- `A004525(record[∑[A097062(n)]])-1` -/
def P4658344562596470300.Spec : Prop :=
  ∀ n, P4658344562596470300.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P8249140851819990747

`A004525(A267461(n)-n)-A004525(n)`
-/

namespace A256535.P8249140851819990747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A267461 n - (n : ℤ)).toNat - A004525 n

end

end A256535.P8249140851819990747

namespace A256535

/-- `A004525(A267461(n)-n)-A004525(n)` -/
def P8249140851819990747.Spec : Prop :=
  ∀ n, P8249140851819990747.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P7670343662858518959

`A004525(A265284(n)-1)-n`
-/

namespace A256535.P7670343662858518959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A265284 n - 1).toNat - (n : ℤ)

end

end A256535.P7670343662858518959

namespace A256535

/-- `A004525(A265284(n)-1)-n` -/
def P7670343662858518959.Spec : Prop :=
  ∀ n, P7670343662858518959.a n = A256535 (n + 1)

end A256535

/-! ## A256535.P13948780892621892960

`A187182((n+1)²)-1`
-/

namespace A256535.P13948780892621892960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 ((n + 1) ^ 2) - 1

end

end A256535.P13948780892621892960

namespace A256535

/-- `A187182((n+1)²)-1` -/
def P13948780892621892960.Spec : Prop :=
  ∀ n, P13948780892621892960.a n = A256535 (n + 1)

end A256535

/-!
# A256536: Corner sequence associated with A151723.

The programs for A256536, there is no canonical definition to state claims against.
-/

/-! ## A256536.P17888350464470081501

`∑[A256537(n+1)]`
-/

namespace A256536.P17888350464470081501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P17888350464470081501

/-! ## A256536.P8259794898115638288

`∑[2*A342272(n)+1]`
-/

namespace A256536.P8259794898115638288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342272 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P8259794898115638288

/-! ## A256536.P2182316455975561041

`∑[2*A169787(n+1)-1]`
-/

namespace A256536.P2182316455975561041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169787 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P2182316455975561041

/-! ## A256536.P6409510178599691612

`∑[∑[2*A342276(abs(1-n))]-1]`
-/

namespace A256536.P6409510178599691612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342276 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P6409510178599691612

/-! ## A256536.P8958467865899715451

`∑[∑[A342278(n-2)-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A256536.P8958467865899715451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A342278 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P8958467865899715451

/-! ## A256536.P1193263520399453012

`∑[A005408(A342272(n))]`
-/

namespace A256536.P1193263520399453012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A342272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P1193263520399453012

/-! ## A256536.P14734942959002299745

`∑[A004273(A169787(n+1))]`
-/

namespace A256536.P14734942959002299745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A169787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P14734942959002299745

/-! ## A256536.P10227230835208674755

`∑[A004273(A342272(n)+1)]`
-/

namespace A256536.P10227230835208674755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A342272 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P10227230835208674755

/-! ## A256536.P5601650859914298469

`∑[A004442(2*A342272(n))]`
-/

namespace A256536.P5601650859914298469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A342272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P5601650859914298469

/-! ## A256536.P6760164568839420472

`∑[xor(2*A342272(n), A000045(((-1)^n)²))]`
-/

namespace A256536.P6760164568839420472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A342272 n) (A000045 (((-1) ^ n) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256536.P6760164568839420472

/-!
# A256537: First differences of corner sequence A256536 associated with A151723.

The programs for A256537, there is no canonical definition to state claims against.
-/

/-! ## A256537.P7813790318326003645

`2*A342272(n)+1`
-/

namespace A256537.P7813790318326003645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342272 n + 1

end

end A256537.P7813790318326003645

/-! ## A256537.P10402644360073359497

`2*A169787(n+1)-1`
-/

namespace A256537.P10402644360073359497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169787 (n + 1) - 1

end

end A256537.P10402644360073359497

/-! ## A256537.P15547830880994226914

`∑[2*A342276(abs(1-n))]-1`
-/

namespace A256537.P15547830880994226914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342276 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A256537.P15547830880994226914

/-! ## A256537.P3617975410977115162

`∑[A342278(n-2)-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A256537.P3617975410977115162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A342278 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256537.P3617975410977115162

/-! ## A256537.P7921988161288388444

`A005408(A342272(n))`
-/

namespace A256537.P7921988161288388444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A342272 n).toNat

end

end A256537.P7921988161288388444

/-! ## A256537.P411651826898255703

`A004273(A169787(n+1))`
-/

namespace A256537.P411651826898255703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A169787 (n + 1)).toNat

end

end A256537.P411651826898255703

/-! ## A256537.P14953813557916976002

`A004273(A342272(n)+1)`
-/

namespace A256537.P14953813557916976002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A342272 n + 1).toNat

end

end A256537.P14953813557916976002

/-! ## A256537.P9857047349078606345

`A004442(2*A342272(n))`
-/

namespace A256537.P9857047349078606345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A342272 n).toNat

end

end A256537.P9857047349078606345

/-! ## A256537.P9101400312864802772

`A057174(2*A342272(n))`
-/

namespace A256537.P9101400312864802772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (2 * A342272 n).toNat

end

end A256537.P9101400312864802772

/-! ## A256537.P17094667911203388422

`A141310(2*A342272(n))`
-/

namespace A256537.P17094667911203388422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A342272 n).toNat

end

end A256537.P17094667911203388422

/-!
# A256538: Expansion of eta(q) * eta(q^47) in powers of q.

The programs for A256538, there is no canonical definition to state claims against.
-/

/-! ## A256538.P17859539806192690995

`A010815(n%A383807(n))`
-/

namespace A256538.P17859539806192690995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (n : ℤ) (A383807 n)).toNat

end

end A256538.P17859539806192690995

/-! ## A256538.P8247773224227725023

`A010815(n)-Δ[A178252(A178252(n))]`
-/

namespace A256538.P8247773224227725023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (A178252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - (f1 (n + 1) - f1 n)

end

end A256538.P8247773224227725023

/-! ## A256538.P7378399338624215948

`A010815((2*n+5)²)+A010815(n)`
-/

namespace A256538.P7378399338624215948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((2 * n + 5) ^ 2) + A010815 n

end

end A256538.P7378399338624215948

/-! ## A256538.P12735914331793044400

`A010815(lt[A048243(n+1), n²+1])`
-/

namespace A256538.P12735914331793044400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A256538.P12735914331793044400

/-! ## A256538.P17008115232245031001

`A010815(n)-A085982(A191302(n))`
-/

namespace A256538.P17008115232245031001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - A085982 (A191302 n).toNat

end

end A256538.P17008115232245031001

/-!
# A256539: Number of partitions of 4n into at most 5 parts.

The programs for A256539, the canonical program `A256539.P11843571355159278284` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256539 has offset 0).

The definition of A256539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256539.P11843571355159278284

`A001401(4*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256539

/-- `A001401(4*n)` -/
def P11843571355159278284.Spec : Prop :=
  ∀ n, P11843571355159278284.a n = A256539 n

theorem P11843571355159278284.correct : P11843571355159278284.Spec := by
  intro n
  simp only [A256539]

end A256539

/-! ## A256539.P17557675649085616837

`A256540(n)-A256317(n)`
-/

namespace A256539.P17557675649085616837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256540 n - A256317 n

end

end A256539.P17557675649085616837

namespace A256539

/-- `A256540(n)-A256317(n)` -/
def P17557675649085616837.Spec : Prop :=
  ∀ n, P17557675649085616837.a n = A256539 n

end A256539

/-! ## A256539.P4661062247691297946

`A256316(n)+A238340(n+1)`
-/

namespace A256539.P4661062247691297946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256316 n + A238340 (n + 1)

end

end A256539.P4661062247691297946

namespace A256539

/-- `A256316(n)+A238340(n+1)` -/
def P4661062247691297946.Spec : Prop :=
  ∀ n, P4661062247691297946.a n = A256539 n

end A256539

/-! ## A256539.P12842707119768848585

`A256309(2*n)+A014126(2*n)`
-/

namespace A256539.P12842707119768848585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256309 (2 * n) + A014126 (2 * n)

end

end A256539.P12842707119768848585

namespace A256539

/-- `A256309(2*n)+A014126(2*n)` -/
def P12842707119768848585.Spec : Prop :=
  ∀ n, P12842707119768848585.a n = A256539 n

end A256539

/-! ## A256539.P10348607774046070776

`A256310(2*n+3)-A256310(2*n)`
-/

namespace A256539.P10348607774046070776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256310 (2 * n + 3) - A256310 (2 * n)

end

end A256539.P10348607774046070776

namespace A256539

/-- `A256310(2*n+3)-A256310(2*n)` -/
def P10348607774046070776.Spec : Prop :=
  ∀ n, P10348607774046070776.a n = A256539 n

end A256539

/-! ## A256539.P11981183520030278483

`∑[A008669(4*n)]`
-/

namespace A256539.P11981183520030278483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256539.P11981183520030278483

namespace A256539

/-- `∑[A008669(4*n)]` -/
def P11981183520030278483.Spec : Prop :=
  ∀ n, P11981183520030278483.a n = A256539 n

end A256539

/-! ## A256539.P3699581494841425619

`A001402(4*n)-A026812(4*n)`
-/

namespace A256539.P3699581494841425619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (4 * n) - A026812 (4 * n)

end

end A256539.P3699581494841425619

namespace A256539

/-- `A001402(4*n)-A026812(4*n)` -/
def P3699581494841425619.Spec : Prop :=
  ∀ n, P3699581494841425619.a n = A256539 n

end A256539

/-! ## A256539.P7997080847024438322

`A026811(4*n+5)`
-/

namespace A256539.P7997080847024438322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (4 * n + 5)

end

end A256539.P7997080847024438322

namespace A256539

/-- `A026811(4*n+5)` -/
def P7997080847024438322.Spec : Prop :=
  ∀ n, P7997080847024438322.a n = A256539 n

end A256539

/-! ## A256539.P13368276287270106455

`A266768(8*n)`
-/

namespace A256539.P13368276287270106455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (8 * n)

end

end A256539.P13368276287270106455

namespace A256539

/-- `A266768(8*n)` -/
def P13368276287270106455.Spec : Prop :=
  ∀ n, P13368276287270106455.a n = A256539 n

end A256539

/-! ## A256539.P18433832957819117333

`∑[A097852(8*n)]`
-/

namespace A256539.P18433832957819117333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256539.P18433832957819117333

namespace A256539

/-- `∑[A097852(8*n)]` -/
def P18433832957819117333.Spec : Prop :=
  ∀ n, P18433832957819117333.a n = A256539 n

end A256539

/-! ## A256539.P8977957778533796882

`A288166(2*(8*n+5))`
-/

namespace A256539.P8977957778533796882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (2 * (8 * n + 5))

end

end A256539.P8977957778533796882

namespace A256539

/-- `A288166(2*(8*n+5))` -/
def P8977957778533796882.Spec : Prop :=
  ∀ n, P8977957778533796882.a n = A256539 n

end A256539

/-!
# A256540: Number of partitions of 4n into at most 6 parts.

The programs for A256540, the canonical program `A256540.P17379518847437446653` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256540 has offset 0).

The definition of A256540 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256540.P17379518847437446653

`A001402(4*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256540

/-- `A001402(4*n)` -/
def P17379518847437446653.Spec : Prop :=
  ∀ n, P17379518847437446653.a n = A256540 n

theorem P17379518847437446653.correct : P17379518847437446653.Spec := by
  intro n
  simp only [A256540]

end A256540

/-! ## A256540.P13260996796246764489

`A256539(n)+A256317(n)`
-/

namespace A256540.P13260996796246764489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256539 n + A256317 n

end

end A256540.P13260996796246764489

namespace A256540

/-- `A256539(n)+A256317(n)` -/
def P13260996796246764489.Spec : Prop :=
  ∀ n, P13260996796246764489.a n = A256540 n

end A256540

/-! ## A256540.P12044664007902392101

`A238340(n+1)+A256317(n)+A256316(n)`
-/

namespace A256540.P12044664007902392101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1) + (A256317 n + A256316 n)

end

end A256540.P12044664007902392101

namespace A256540

/-- `A238340(n+1)+A256317(n)+A256316(n)` -/
def P12044664007902392101.Spec : Prop :=
  ∀ n, P12044664007902392101.a n = A256540 n

end A256540

/-! ## A256540.P2017527943432646253

`A256310(2*n+3)`
-/

namespace A256540.P2017527943432646253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256310 (2 * n + 3)

end

end A256540.P2017527943432646253

namespace A256540

/-- `A256310(2*n+3)` -/
def P2017527943432646253.Spec : Prop :=
  ∀ n, P2017527943432646253.a n = A256540 n

end A256540

/-! ## A256540.P13634878353350033293

`record[A256310(n+3)/5^(n%2)]`
-/

namespace A256540.P13634878353350033293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256310 (n + 3) : ℚ) / (5 ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256540.P13634878353350033293

namespace A256540

/-- `record[A256310(n+3)/5^(n%2)]` -/
def P13634878353350033293.Spec : Prop :=
  ∀ n, P13634878353350033293.a n = (A256540 n : ℚ)

end A256540

/-! ## A256540.P9486694858019486518

`record[A001402(A022998(n))]`
-/

namespace A256540.P9486694858019486518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256540.P9486694858019486518

namespace A256540

/-- `record[A001402(A022998(n))]` -/
def P9486694858019486518.Spec : Prop :=
  ∀ n, P9486694858019486518.a n = A256540 n

end A256540

/-! ## A256540.P9294326188473539934

`A026812(4*n+6)`
-/

namespace A256540.P9294326188473539934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (4 * n + 6)

end

end A256540.P9294326188473539934

namespace A256540

/-- `A026812(4*n+6)` -/
def P9294326188473539934.Spec : Prop :=
  ∀ n, P9294326188473539934.a n = A256540 n

end A256540

/-! ## A256540.P8843494872322481060

`A008636(4*n)-A026813(4*n)`
-/

namespace A256540.P8843494872322481060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (4 * n) - A026813 (4 * n)

end

end A256540.P8843494872322481060

namespace A256540

/-- `A008636(4*n)-A026813(4*n)` -/
def P8843494872322481060.Spec : Prop :=
  ∀ n, P8843494872322481060.a n = A256540 n

end A256540

/-! ## A256540.P1496239574431406544

`A152146(A033816(2*n+1)+1)`
-/

namespace A256540.P1496239574431406544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A033816 (2 * n + 1) + 1).toNat

end

end A256540.P1496239574431406544

namespace A256540

/-- `A152146(A033816(2*n+1)+1)` -/
def P1496239574431406544.Spec : Prop :=
  ∀ n, P1496239574431406544.a n = A256540 n

end A256540

/-!
# A256541: First differences of A166133.

The programs for A256541, there is no canonical definition to state claims against.
-/

/-! ## A256541.P2594322153544836731

`Δ[A166133(n+1)]`
-/

namespace A256541.P2594322153544836731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P2594322153544836731

/-! ## A256541.P17198140273792068841

`A166133(n+2)-A166133(n+1)`
-/

namespace A256541.P17198140273792068841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 2) - A166133 (n + 1)

end

end A256541.P17198140273792068841

/-! ## A256541.P12577492981220251102

`Δ[floor(sqrt(A256557(n+1)))]`
-/

namespace A256541.P12577492981220251102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A256557 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P12577492981220251102

/-! ## A256541.P17110648672956317283

`Δ[A256564(n+1)*A256578(n+1)]`
-/

namespace A256541.P17110648672956317283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256564 (n + 1) * A256578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P17110648672956317283

/-! ## A256541.P5715818469972476391

`Δ[A000007(n+1)+sqrt(A256557(n+1)+1)]`
-/

namespace A256541.P5715818469972476391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + Real.sqrt (A256557 (n + 1) + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P5715818469972476391

/-! ## A256541.P4885858887437482649

`Δ[A010673(2*n)+sqrt(A256557(n+1)+1)]`
-/

namespace A256541.P4885858887437482649
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010673 (2 * n) : ℝ) + Real.sqrt (A256557 (n + 1) + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P4885858887437482649

/-! ## A256541.P1244627531618279984

`Δ[A000196(A256557(n+1))]`
-/

namespace A256541.P1244627531618279984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A256557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256541.P1244627531618279984

/-!
# A256542: Number of divisors of A166133(n).

The programs for A256542, there is no canonical definition to state claims against.
-/

/-! ## A256542.P16857683609133159983

`∏{e}[A166133(n+1), #+1]`
-/

namespace A256542.P16857683609133159983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A256542.P16857683609133159983

/-! ## A256542.P13554006583254757505

`A000005(A166133(n+1))`
-/

namespace A256542.P13554006583254757505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A166133 (n + 1)).toNat

end

end A256542.P13554006583254757505

/-! ## A256542.P12114774816585352489

`A000005(sqrt(A256557(n+1)+1))`
-/

namespace A256542.P12114774816585352489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A256557 (n + 1) + 1 : ℝ))).toNat

end

end A256542.P12114774816585352489

/-! ## A256542.P16883440298450773313

`A000005(A256564(n+1)*A256578(n+1))`
-/

namespace A256542.P16883440298450773313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A256564 (n + 1) * A256578 (n + 1)).toNat

end

end A256542.P16883440298450773313

/-! ## A256542.P10144056105835261995

`A320111(2*A166133(n+1))`
-/

namespace A256542.P10144056105835261995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A166133 (n + 1)).toNat

end

end A256542.P10144056105835261995

/-! ## A256542.P2604327728931249920

`A000005(A137734(A256557(n+1)))`
-/

namespace A256542.P2604327728931249920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137734 (A256557 (n + 1)).toNat).toNat

end

end A256542.P2604327728931249920

/-!
# A256543: Numbers m such that A256541(m) = -1 or = +1.

The programs for A256543, there is no canonical definition to state claims against.
-/

/-! ## A256543.P5029900397349769466

`eq[1, A256541(n+1)²]+1`
-/

namespace A256543.P5029900397349769466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256543.P5029900397349769466

/-! ## A256543.P12295644494338629355

`eq[1, Δ[A166133(n+1)]²]+1`
-/

namespace A256543.P12295644494338629355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256543.P12295644494338629355

/-! ## A256543.P15636336746885878959

`record[A000027(n+1)/A256541(n+1)²]`
-/

namespace A256543.P15636336746885878959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A256541 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P15636336746885878959

/-! ## A256543.P7217603465411662266

`record[A028310(n)/A256541(A028310(n))²]`
-/

namespace A256543.P7217603465411662266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A256541 (A028310 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P7217603465411662266

/-! ## A256543.P8289069095616347292

`record[A008619(n)/A256541(A008619(n))²]`
-/

namespace A256543.P8289069095616347292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A256541 (A008619 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P8289069095616347292

/-! ## A256543.P8565123217047801047

`A000463(record[A005408(n)/A256541(n+1)²])`
-/

namespace A256543.P8565123217047801047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A256541 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A256543.P8565123217047801047

/-! ## A256543.P15775567885306949993

`record[A008611(3*n)/A256541(n+1)²]`
-/

namespace A256543.P15775567885306949993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A256541 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P15775567885306949993

/-! ## A256543.P17897077892974186735

`record[A110657(A016813(n))/A256541(n+1)²]`
-/

namespace A256543.P17897077892974186735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 (A016813 n).toNat : ℚ) / (A256541 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P17897077892974186735

/-! ## A256543.P8560208166896985494

`record[n+1-A001222(Δ[A166133(n+1)]²)]`
-/

namespace A256543.P8560208166896985494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001222 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P8560208166896985494

/-! ## A256543.P17757604273604747958

`record[(n+1)/A000010(Δ[A166133(n+1)]²)]`
-/

namespace A256543.P17757604273604747958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 ((f2 (n + 1) - f2 n) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256543.P17757604273604747958

/-!
# A256546: Numbers n such that n^4 + (n+1)^4 + ... + (n+k)^4 is composite for every k>=0.

The programs for A256546, there is no canonical definition to state claims against.
-/

/-! ## A256546.P2649414755773922970

`eq[0, A256547(n+1)]+1`
-/

namespace A256546.P2649414755773922970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256546.P2649414755773922970

/-! ## A256546.P5365334209795874117

`A020725(eq[0, A256547(n+1)])`
-/

namespace A256546.P5365334209795874117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256546.P5365334209795874117

/-! ## A256546.P15586440372475165820

`eq[0, A256547(A233583(n+1))]`
-/

namespace A256546.P15586440372475165820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256546.P15586440372475165820

/-! ## A256546.P14526447517536448416

`eq[0, A256547(A123108(2*n))]`
-/

namespace A256546.P14526447517536448416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256546.P14526447517536448416

/-! ## A256546.P17239159663405640011

`eq[0, A256547(A000007(n)+n)]`
-/

namespace A256546.P17239159663405640011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256546.P17239159663405640011

/-!
# A256548: Triangle read by rows, T(n,k) = |n,k|*h(k), where |n,k| are the Stirling cycle numbers and h(k) = hypergeom([-k+1,-k],[],1), for n>=0 and 0<=k<=n.

The programs for A256548, there is no canonical definition to state claims against.
-/

/-! ## A256548.P6460167629872403544

`A000262(A002262(n))*A132393(n)`
-/

namespace A256548.P6460167629872403544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A002262 n).toNat * A132393 n

end

end A256548.P6460167629872403544

/-! ## A256548.P10457271482678061995

`A000262(A163351(n))*A132393(n)`
-/

namespace A256548.P10457271482678061995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A163351 n).toNat * A132393 n

end

end A256548.P10457271482678061995

/-! ## A256548.P16117605056596001425

`A059110(A112367(n))*A132393(n)`
-/

namespace A256548.P16117605056596001425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A112367 n).toNat * A132393 n

end

end A256548.P16117605056596001425

/-! ## A256548.P4039378885327072414

`A000262(A298486(n))*A132393(n)`
-/

namespace A256548.P4039378885327072414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A298486 n).toNat * A132393 n

end

end A256548.P4039378885327072414

/-! ## A256548.P11342479124151061066

`abs(A000262(A002262(n))*A048994(n))`
-/

namespace A256548.P11342479124151061066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000262 (A002262 n).toNat * A048994 n|

end

end A256548.P11342479124151061066

/-!
# A256549: Triangle read by rows, T(n,k) = {n,k}*h(k), where {n,k} are the Stirling set numbers and h(k) = hypergeom([-k+1,-k],[],1), for n>=0 and 0<=k<=n.

The programs for A256549, there is no canonical definition to state claims against.
-/

/-! ## A256549.P2939196437756840652

`A000262(A002262(n))*A048993(n)`
-/

namespace A256549.P2939196437756840652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A002262 n).toNat * A048993 n

end

end A256549.P2939196437756840652

/-! ## A256549.P15729130337429614214

`A000262(A163351(n))*A048993(n)`
-/

namespace A256549.P15729130337429614214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A163351 n).toNat * A048993 n

end

end A256549.P15729130337429614214

/-! ## A256549.P10162840352331720561

`A048993(n)*A059110(A112367(n))`
-/

namespace A256549.P10162840352331720561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A059110 (A112367 n).toNat

end

end A256549.P10162840352331720561

/-! ## A256549.P11618010541150567922

`A000262(A298486(n))*A048993(n)`
-/

namespace A256549.P11618010541150567922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A298486 n).toNat * A048993 n

end

end A256549.P11618010541150567922

/-! ## A256549.P8786089983955150771

`A000262(A329221(n))*A048993(n)`
-/

namespace A256549.P8786089983955150771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A329221 n).toNat * A048993 n

end

end A256549.P8786089983955150771

/-! ## A256549.P17456765976323472887

`A048993(n)*A293525(A245300(n))`
-/

namespace A256549.P17456765976323472887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A293525 (A245300 n).toNat

end

end A256549.P17456765976323472887

/-! ## A256549.P9556043155474374438

`A000262(A025668(n+1))*A048993(n)`
-/

namespace A256549.P9556043155474374438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A025668 (n + 1)).toNat * A048993 n

end

end A256549.P9556043155474374438

/-! ## A256549.P13067362217591662971

`A000262(A144328(n+1))*A048993(n)`
-/

namespace A256549.P13067362217591662971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A144328 (n + 1)).toNat * A048993 n

end

end A256549.P13067362217591662971

/-!
# A256550: Triangle read by rows, T(n,k) = EL(n,k)/(n-k+1)! and EL(n,k) the matrix-exponential of the unsigned Lah numbers scaled by exp(-1), for n>=0 and 0<=k<=n.

The programs for A256550, there is no canonical definition to state claims against.
-/

/-! ## A256550.P4262161016894834848

`A000110(A025581(n))*A090181(n)`
-/

namespace A256550.P4262161016894834848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025581 n).toNat * A090181 n

end

end A256550.P4262161016894834848

/-! ## A256550.P6822001746822018360

`A090181(n)*A104725(A130321(n))`
-/

namespace A256550.P6822001746822018360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A104725 (A130321 n).toNat

end

end A256550.P6822001746822018360

/-! ## A256550.P17061809030532777420

`A000110(log2(A130321(n)))*A090181(n)`
-/

namespace A256550.P17061809030532777420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat * A090181 n

end

end A256550.P17061809030532777420

/-! ## A256550.P3588507391204210724

`A000110(val(A036561(n), 2))*A090181(n)`
-/

namespace A256550.P3588507391204210724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.valuation (A036561 n).toNat 2) * A090181 n

end

end A256550.P3588507391204210724

/-! ## A256550.P6251239667031111185

`A090181(n)*A127568(A061579(n))`
-/

namespace A256550.P6251239667031111185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A127568 (A061579 n).toNat

end

end A256550.P6251239667031111185

/-!
# A256551: Triangle read by rows, T(n,k) matrix inverse of A256550, for n>=0 and 0<=k<=n.

The programs for A256551, there is no canonical definition to state claims against.
-/

/-! ## A256551.P16509388979764868150

`A264429(n)+Δ[A014707(A022171(n))]`
-/

namespace A256551.P16509388979764868150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A022171 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264429 n + (f1 (n + 1) - f1 n)

end

end A256551.P16509388979764868150

/-! ## A256551.P8829184907931831781

`A033999(A117414(n+1))*A122935(n)`
-/

namespace A256551.P8829184907931831781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A117414 (n + 1)).toNat * A122935 n

end

end A256551.P8829184907931831781

/-! ## A256551.P18179352990425115542

`A090181(n)*A165471(A005817(n))`
-/

namespace A256551.P18179352990425115542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A165471 (A005817 n).toNat

end

end A256551.P18179352990425115542

/-! ## A256551.P12996071635509842728

`xor(A102683(A126646(n)), A264429(n))`
-/

namespace A256551.P12996071635509842728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A126646 n).toNat) (A264429 n)

end

end A256551.P12996071635509842728

/-! ## A256551.P14210859250280115121

`A264429(A064154(n+1))`
-/

namespace A256551.P14210859250280115121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264429 (A064154 (n + 1)).toNat

end

end A256551.P14210859250280115121

/-!
# A256553: Triangle T(n,k) in which the n-th row contains the increasing list of distinct orders of degree-n permutations; n>=0, 1<=k<=A009490(n).

The programs for A256553, there is no canonical definition to state claims against.
-/

/-! ## A256553.P6188306941270924084

`A002260(lt[A132971(n), A291451(n)])`
-/

namespace A256553.P6188306941270924084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256553.P6188306941270924084

/-! ## A256553.P12566965231400164705

`A002260(lt[A233322(3*n+4), A201198(n)])`
-/

namespace A256553.P12566965231400164705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233322 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256553.P12566965231400164705

/-! ## A256553.P18056770298982679226

`A002260(lt[A003983(3*(n+1)), A356265(n+1)])`
-/

namespace A256553.P18056770298982679226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256553.P18056770298982679226

/-! ## A256553.P17988229146082810310

`A128227(lt[A048151(2*(n+2)), A341738(n+1)])`
-/

namespace A256553.P17988229146082810310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256553.P17988229146082810310

/-! ## A256553.P16117261921844711572

`A002260(lt[A131956(n), A267392(n+1)])`
-/

namespace A256553.P16117261921844711572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256553.P16117261921844711572

/-!
# A256554: Number T(n,k) of cycle types of degree-n permutations having the k-th smallest possible order; triangle T(n,k), n>=0, 1<=k<=A009490(n), read by rows.

The programs for A256554, there is no canonical definition to state claims against.
-/

/-! ## A256554.P13457073882522299592

`A256067(lt[0, A256067(n)])`
-/

namespace A256554.P13457073882522299592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256554.P13457073882522299592

/-! ## A256554.P12832497528694896130

`gcd(A226055(n), A226055(A256067(n)))`
-/

namespace A256554.P12832497528694896130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226055 n) (A226055 (A256067 n).toNat)

end

end A256554.P12832497528694896130

/-! ## A256554.P1079917169675775984

`A100883(A256067(n))%A167903(2*(n+1))`
-/

namespace A256554.P1079917169675775984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100883 (A256067 n).toNat) (A167903 (2 * (n + 1)))

end

end A256554.P1079917169675775984

/-! ## A256554.P15154219220509191866

`A001405(A256067(n)%A338555(2*(n+1)))`
-/

namespace A256554.P15154219220509191866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Int.tmod (A256067 n) (A338555 (2 * (n + 1)))).toNat

end

end A256554.P15154219220509191866

/-! ## A256554.P17727490465160058308

`A000041(A256067(n))%A225683(2*n+3)`
-/

namespace A256554.P17727490465160058308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A256067 n).toNat) (A225683 (2 * n + 3))

end

end A256554.P17727490465160058308

/-!
# A256556: If n = 10k+m (0 <= m <= 9) then a(n) = n*k^m.

The programs for A256556, the canonical program `A256556.P6610952996468744969` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256556 has offset 1).

The definition of A256556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256556.P6610952996468744969

`(n+1)*A059995(n)^A010879(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256556

/-- `(n+1)*A059995(n)^A010879(n+1)` -/
def P6610952996468744969.Spec : Prop :=
  ∀ n, P6610952996468744969.a n = (A256556 (n + 1) : ℚ)

end A256556

/-! ## A256556.P18337812567842487501

`(n+1)*A075877(n+1)%A187829(n+1)`
-/

namespace A256556.P18337812567842487501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A075877 (n + 1)) (A187829 (n + 1))

end

end A256556.P18337812567842487501

namespace A256556

/-- `(n+1)*A075877(n+1)%A187829(n+1)` -/
def P18337812567842487501.Spec : Prop :=
  ∀ n, P18337812567842487501.a n = A256556 (n + 1)

end A256556

/-! ## A256556.P4125993521971932817

`∑{e}[A146655(A078936(n+1)), #+n]`
-/

namespace A256556.P4125993521971932817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146655 (A078936 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n)

end

end A256556.P4125993521971932817

namespace A256556

/-- `∑{e}[A146655(A078936(n+1)), #+n]` -/
def P4125993521971932817.Spec : Prop :=
  ∀ n, (P4125993521971932817.a n : ℤ) = A256556 (n + 1)

end A256556

/-!
# A256557: a(n) = A166133(n)^2 - 1.

The programs for A256557, there is no canonical definition to state claims against.
-/

/-! ## A256557.P16661008520840920506

`A166133(n+1)²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256557.P16661008520840920506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1) ^ 2 - 1

end

end A256557.P16661008520840920506

/-! ## A256557.P16975977056674633119

`∑[A256541(A028310(n))]²-1`
-/

namespace A256557.P16975977056674633119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A256557.P16975977056674633119

/-! ## A256557.P9354368256409423503

`(A256564(n+1)*A256578(n+1))²-1`
-/

namespace A256557.P9354368256409423503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256564 (n + 1) * A256578 (n + 1)) ^ 2 - 1

end

end A256557.P9354368256409423503

/-! ## A256557.P1677475154156264678

`A133574(gcd(n, n+1))+A166133(n+1)²`
-/

namespace A256557.P1677475154156264678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (Nat.gcd n (n + 1)) + A166133 (n + 1) ^ 2

end

end A256557.P1677475154156264678

/-! ## A256557.P16784403570243224528

`A166133(A000027(n+1))*A166133(n+1)-1`
-/

namespace A256557.P16784403570243224528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A000027 (n + 1)).toNat * A166133 (n + 1) - 1

end

end A256557.P16784403570243224528

/-! ## A256557.P5334204359975929015

`A166133(n+1)^A060632(A060632(n+1))-1`
-/

namespace A256557.P5334204359975929015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) ^ (A060632 (A060632 (n + 1)).toNat : ℤ) - 1

end

end A256557.P5334204359975929015

/-! ## A256557.P14681240333716632326

`A166133(n+1)^A000034(A000040(n+1))-1`
-/

namespace A256557.P14681240333716632326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) ^ (A000034 (A000040 (n + 1)).toNat : ℤ) - 1

end

end A256557.P14681240333716632326

/-! ## A256557.P13081295136868738790

`A183010(A180318(A183010(n+1)))+A166133(n+1)²`
-/

namespace A256557.P13081295136868738790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (A180318 (A183010 (n + 1)).toNat).toNat + A166133 (n + 1) ^ 2

end

end A256557.P13081295136868738790

/-! ## A256557.P3016342802870629949

`A005563(A166133(n+1)-1)`
-/

namespace A256557.P3016342802870629949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A166133 (n + 1) - 1).toNat

end

end A256557.P3016342802870629949

/-! ## A256557.P17935197779089758867

`A236203(2*A166133(n+1))`
-/

namespace A256557.P17935197779089758867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236203 (2 * A166133 (n + 1)).toNat

end

end A256557.P17935197779089758867

/-! ## A256557.P8328392214716765599

`A024206(2*A166133(n+1)-1)`
-/

namespace A256557.P8328392214716765599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (2 * A166133 (n + 1) - 1).toNat

end

end A256557.P8328392214716765599

/-! ## A256557.P6593728370939297061

`A024206(A166133(n+1)+A166133(n+1)-1)`
-/

namespace A256557.P6593728370939297061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A166133 (n + 1) + (A166133 (n + 1) - 1)).toNat

end

end A256557.P6593728370939297061

/-!
# A256558: Number of ways to write n = p + floor(k*(k+1)/4), where p is a prime and k is a positive integer.

The programs for A256558, there is no canonical definition to state claims against.
-/

/-! ## A256558.P6737235172705634280

`A230415(∑[A026741(n)*A219046(n+1)])`
-/

namespace A256558.P6737235172705634280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A219046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256558.P6737235172705634280

/-! ## A256558.P2580776103531759989

`A341596(n+1)+A124761(A064896(n+1))`
-/

namespace A256558.P2580776103531759989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (n + 1) + A124761 (A064896 (n + 1)).toNat

end

end A256558.P2580776103531759989

/-! ## A256558.P6260398179128357637

`A010553(n+1)-A010059(A297846(n+1))`
-/

namespace A256558.P6260398179128357637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1) - A010059 (A297846 (n + 1)).toNat

end

end A256558.P6260398179128357637

/-! ## A256558.P3299532074336701378

`A001221(or(A077225(n), A222244(2*n+1)))`
-/

namespace A256558.P3299532074336701378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A077225 n) (A222244 (2 * n + 1))).toNat

end

end A256558.P3299532074336701378

/-! ## A256558.P824151776578927166

`A064547(or(A077225(n), A222244(2*n+1)))`
-/

namespace A256558.P824151776578927166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.lor (A077225 n) (A222244 (2 * n + 1))).toNat

end

end A256558.P824151776578927166

/-!
# A256559: a(n) = A256557(n)/A166133(n+1), n>=3.

The programs for A256559, there is no canonical definition to state claims against.
-/

/-! ## A256559.P5383337104569089917

`A256557(n+3)/A166133(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256559.P5383337104569089917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256557 (n + 3) : ℚ) / (A166133 (n + 4) : ℚ)

end

end A256559.P5383337104569089917

/-! ## A256559.P2708561522544887206

`A082562(A166133(n+3))/A166133(n+4)`
-/

namespace A256559.P2708561522544887206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082562 (A166133 (n + 3)).toNat : ℚ) / (A166133 (n + 4) : ℚ)

end

end A256559.P2708561522544887206

/-!
# A256560: Triangle read by rows, sums of 2 distinct nonzero squares plus sums of 2 distinct nonzero cubes: T(n,k) = n^2 + k^2 + n^3 + k^3, 1 <= k <= n-1.

The programs for A256560, the canonical program `A256560.P10189218502537202963` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256560 has offset 2).

The definition of A256560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A256497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256560.P10189218502537202963

`A055096(n+2)+A256497(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256560

/-- `A055096(n+2)+A256497(n+1)` -/
def P10189218502537202963.Spec : Prop :=
  ∀ n, P10189218502537202963.a n = A256560 (n + 2)

theorem P10189218502537202963.correct : P10189218502537202963.Spec := by
  intro n
  simp only [A256560, Nat.add_sub_cancel]

end A256560

/-! ## A256560.P14578198359335089554

`A133819(n+1)+A256497(n+1)+A140978(n+1)`
-/

namespace A256560.P14578198359335089554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + (A256497 (n + 1) + A140978 (n + 1))

end

end A256560.P14578198359335089554

namespace A256560

/-- `A133819(n+1)+A256497(n+1)+A140978(n+1)` -/
def P14578198359335089554.Spec : Prop :=
  ∀ n, P14578198359335089554.a n = A256560 (n + 2)

end A256560

/-! ## A256560.P71978488996803924

`A256497(n+1)+A001283(n+2)-A003991(n+1)`
-/

namespace A256560.P71978488996803924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256497 (n + 1) + (A001283 (n + 2) - A003991 (n + 1))

end

end A256560.P71978488996803924

namespace A256560

/-- `A256497(n+1)+A001283(n+2)-A003991(n+1)` -/
def P71978488996803924.Spec : Prop :=
  ∀ n, P71978488996803924.a n = A256560 (n + 2)

end A256560

/-! ## A256560.P12595328454016439674

`A011379(A002260(n+1))+A011379(A003057(n+2))`
-/

namespace A256560.P12595328454016439674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A002260 (n + 1)).toNat + A011379 (A003057 (n + 2)).toNat

end

end A256560.P12595328454016439674

namespace A256560

/-- `A011379(A002260(n+1))+A011379(A003057(n+2))` -/
def P12595328454016439674.Spec : Prop :=
  ∀ n, P12595328454016439674.a n = A256560 (n + 2)

end A256560

/-! ## A256560.P11455523484801432191

`A256497(n+1)+A070216(A014132(n+1))`
-/

namespace A256560.P11455523484801432191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256497 (n + 1) + A070216 (A014132 (n + 1)).toNat

end

end A256560.P11455523484801432191

namespace A256560

/-- `A256497(n+1)+A070216(A014132(n+1))` -/
def P11455523484801432191.Spec : Prop :=
  ∀ n, P11455523484801432191.a n = A256560 (n + 2)

end A256560

/-!
# A256561: Indices of primes in A166133.

The programs for A256561, there is no canonical definition to state claims against.
-/

/-! ## A256561.P11981919550571995623

`A255833(A000040(n+1))`
-/

namespace A256561.P11981919550571995623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A000040 (n + 1)).toNat

end

end A256561.P11981919550571995623

/-! ## A256561.P15498018628674149577

`A255833(Δ[A007504(n)])`
-/

namespace A256561.P15498018628674149577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (n + 1) - f1 n).toNat

end

end A256561.P15498018628674149577

/-! ## A256561.P7936745199857193660

`A255833(A008578(n+2))`
-/

namespace A256561.P7936745199857193660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A008578 (n + 2)).toNat

end

end A256561.P7936745199857193660

/-! ## A256561.P12445789922938124774

`A255833(A182986(n+2))`
-/

namespace A256561.P12445789922938124774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A182986 (n + 2)).toNat

end

end A256561.P12445789922938124774

/-! ## A256561.P155562560493434535

`A255833(eq[1, A105700(n)])`
-/

namespace A256561.P155562560493434535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256561.P155562560493434535

/-! ## A256561.P2261648065639832633

`A255833(record[A006530(n+2)])`
-/

namespace A256561.P2261648065639832633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256561.P2261648065639832633

/-! ## A256561.P787176323266307621

`A255833(record[A014963(n+2)])`
-/

namespace A256561.P787176323266307621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256561.P787176323266307621

/-! ## A256561.P9446644225971291336

`A255833(record[A020639(n+2)])`
-/

namespace A256561.P9446644225971291336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256561.P9446644225971291336

/-! ## A256561.P6597844793630309012

`A255833(eq[1, A001222(n+1)]+1)`
-/

namespace A256561.P6597844793630309012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256561.P6597844793630309012

/-! ## A256561.P5702000797249428185

`A255833(eq[2, A226378(2*n)])`
-/

namespace A256561.P5702000797249428185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256561.P5702000797249428185

/-!
# A256562: Number of deficient numbers <= n.

The programs for A256562, the canonical program `A256562.P5087705656296377979` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256562 has offset 1).

The definition of A256562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256562.P5087705656296377979

`∑[floor(Δ[n²]/∑{d}[n+1, #])]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256562

/-- `∑[floor(Δ[n²]/∑{d}[n+1, #])]` -/
def P5087705656296377979.Spec : Prop :=
  ∀ n, P5087705656296377979.a n = A256562 (n + 1)

theorem P5087705656296377979.correct : P5087705656296377979.Spec := by
  intro n
  simp only [A256562, Nat.add_sub_cancel]

end A256562

/-! ## A256562.P8968987739958226195

`∑[round((n+1)/(∑{d}[n+1, #]+1))]`
-/

namespace A256562.P8968987739958226195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d + 1 : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P8968987739958226195

namespace A256562

/-- `∑[round((n+1)/(∑{d}[n+1, #]+1))]` -/
def P8968987739958226195.Spec : Prop :=
  ∀ n, P8968987739958226195.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P17840322209587409885

`a(n-1)+1-floor(∑{d}[n+1, 1/(2*#)])` with `a(0)=1`
-/

namespace A256562.P17840322209587409885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (2 * d : ℚ)⌋)

end

end A256562.P17840322209587409885

namespace A256562

/-- `a(n-1)+1-floor(∑{d}[n+1, 1/(2*#)])` -/
def P17840322209587409885.Spec : Prop :=
  ∀ n, P17840322209587409885.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P11474180454522129454

`∑[A294934(n+1)]`
-/

namespace A256562.P11474180454522129454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P11474180454522129454

namespace A256562

/-- `∑[A294934(n+1)]` -/
def P11474180454522129454.Spec : Prop :=
  ∀ n, P11474180454522129454.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P8229413120638237024

`∑[1-A294936(n+1)]`
-/

namespace A256562.P8229413120638237024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P8229413120638237024

namespace A256562

/-- `∑[1-A294936(n+1)]` -/
def P8229413120638237024.Spec : Prop :=
  ∀ n, P8229413120638237024.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P7849394433682729228

`∑[char[lt[A341620(n+1), 1]]]`
-/

namespace A256562.P7849394433682729228
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P7849394433682729228

namespace A256562

/-- `∑[char[lt[A341620(n+1), 1]]]` -/
def P7849394433682729228.Spec : Prop :=
  ∀ n, (P7849394433682729228.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P12762022935109385373

`∑[char[comp[A023196(n+1)-1]]]`
-/

namespace A256562.P12762022935109385373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P12762022935109385373

namespace A256562

/-- `∑[char[comp[A023196(n+1)-1]]]` -/
def P12762022935109385373.Spec : Prop :=
  ∀ n, (P12762022935109385373.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P18371146448590607140

`∑[char[lt[A001065(n+1), n+1]]]`
-/

namespace A256562.P18371146448590607140
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P18371146448590607140

namespace A256562

/-- `∑[char[lt[A001065(n+1), n+1]]]` -/
def P18371146448590607140.Spec : Prop :=
  ∀ n, (P18371146448590607140.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P140393790727811839

`∑[floor(Δ[n²]/A000203(n+1))]`
-/

namespace A256562.P140393790727811839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / (A000203 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P140393790727811839

namespace A256562

/-- `∑[floor(Δ[n²]/A000203(n+1))]` -/
def P140393790727811839.Spec : Prop :=
  ∀ n, P140393790727811839.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P13889231876143641616

`∑[A017286(n)%A254571(n+1)]`
-/

namespace A256562.P13889231876143641616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017286 n) (A254571 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P13889231876143641616

namespace A256562

/-- `∑[A017286(n)%A254571(n+1)]` -/
def P13889231876143641616.Spec : Prop :=
  ∀ n, P13889231876143641616.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P2681250766490950478

`∑[A017358(n)%A254571(n+1)]`
-/

namespace A256562.P2681250766490950478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017358 n) (A254571 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P2681250766490950478

namespace A256562

/-- `∑[A017358(n)%A254571(n+1)]` -/
def P2681250766490950478.Spec : Prop :=
  ∀ n, P2681250766490950478.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P17763154474524004167

`A392332(n+1)+A091194(n+1)`
-/

namespace A256562.P17763154474524004167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392332 (n + 1) + A091194 (n + 1)

end

end A256562.P17763154474524004167

namespace A256562

/-- `A392332(n+1)+A091194(n+1)` -/
def P17763154474524004167.Spec : Prop :=
  ∀ n, P17763154474524004167.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P1938738260980441632

`∑[C(A000203(n+1)%(n+1), A001065(n+1))]`
-/

namespace A256562.P1938738260980441632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)).toNat (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P1938738260980441632

namespace A256562

/-- `∑[C(A000203(n+1)%(n+1), A001065(n+1))]` -/
def P1938738260980441632.Spec : Prop :=
  ∀ n, (P1938738260980441632.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P1126188173072523392

`∑[C(A155085(n+1)%(n+1), A001065(n+1))]`
-/

namespace A256562.P1126188173072523392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A155085 (n + 1)) (n + 1 : ℤ)).toNat (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P1126188173072523392

namespace A256562

/-- `∑[C(A155085(n+1)%(n+1), A001065(n+1))]` -/
def P1126188173072523392.Spec : Prop :=
  ∀ n, (P1126188173072523392.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P16137616178641831822

`∑[2-A000010(floor(A000203(n+1)/(n+1))+1)]`
-/

namespace A256562.P16137616178641831822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000010 (⌊(A000203 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P16137616178641831822

namespace A256562

/-- `∑[2-A000010(floor(A000203(n+1)/(n+1))+1)]` -/
def P16137616178641831822.Spec : Prop :=
  ∀ n, P16137616178641831822.a n = A256562 (n + 1)

end A256562

/-! ## A256562.P9124535451473864301

`∑[C((n+1-A033879(n+1))%(n+1), A001065(n+1))]`
-/

namespace A256562.P9124535451473864301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((n + 1 : ℤ) - A033879 (n + 1)) (n + 1 : ℤ)).toNat (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P9124535451473864301

namespace A256562

/-- `∑[C((n+1-A033879(n+1))%(n+1), A001065(n+1))]` -/
def P9124535451473864301.Spec : Prop :=
  ∀ n, (P9124535451473864301.a n : ℤ) = A256562 (n + 1)

end A256562

/-! ## A256562.P7713952262201830254

`∑[A324732(A005940(n+2))]`
-/

namespace A256562.P7713952262201830254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (A005940 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256562.P7713952262201830254

namespace A256562

/-- `∑[A324732(A005940(n+2))]` -/
def P7713952262201830254.Spec : Prop :=
  ∀ n, P7713952262201830254.a n = A256562 (n + 1)

end A256562

/-!
# A256563: Indices of semiprimes in A166133.

The programs for A256563, there is no canonical definition to state claims against.
-/

/-! ## A256563.P3791404381194089187

`A255833(A001358(n+1))`
-/

namespace A256563.P3791404381194089187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A001358 (n + 1)).toNat

end

end A256563.P3791404381194089187

/-! ## A256563.P10559531170845047543

`A255833(A176540(n+2))`
-/

namespace A256563.P10559531170845047543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A176540 (n + 2)).toNat

end

end A256563.P10559531170845047543

/-! ## A256563.P17294107760127336047

`A255833(eq[2, A105700(n)])`
-/

namespace A256563.P17294107760127336047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256563.P17294107760127336047

/-! ## A256563.P8431426604233959653

`A255833(eq[2, A226378(n)])`
-/

namespace A256563.P8431426604233959653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256563.P8431426604233959653

/-! ## A256563.P9605218993605931535

`A255833(A186621(n+1)+1)`
-/

namespace A256563.P9605218993605931535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A186621 (n + 1) + 1).toNat

end

end A256563.P9605218993605931535

/-! ## A256563.P14321083355487023282

`A255833(A088707(n+1)-1)`
-/

namespace A256563.P14321083355487023282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A088707 (n + 1) - 1).toNat

end

end A256563.P14321083355487023282

/-! ## A256563.P1468401547647728427

`A255833(eq[2, A001222(n+1)]+1)`
-/

namespace A256563.P1468401547647728427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256563.P1468401547647728427

/-!
# A256564: Smallest prime factor of A166133(n).

The programs for A256564, there is no canonical definition to state claims against.
-/

/-! ## A256564.P14631567963030760218

`A166133(n+1)/A256578(n+1)`
-/

namespace A256564.P14631567963030760218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A256578 (n + 1) : ℚ)

end

end A256564.P14631567963030760218

/-! ## A256564.P6082568162717490153

`sqrt(A256557(n+1)+1)/A256578(n+1)`
-/

namespace A256564.P6082568162717490153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256557 (n + 1) + 1 : ℝ) / (A256578 (n + 1) : ℝ)

end

end A256564.P6082568162717490153

/-! ## A256564.P5207581873232528133

`A020639(A166133(n+1))`
-/

namespace A256564.P5207581873232528133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A166133 (n + 1)).toNat

end

end A256564.P5207581873232528133

/-! ## A256564.P5524390485279666294

`A020639(sqrt(A256557(n+1)+1))`
-/

namespace A256564.P5524390485279666294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A256557 (n + 1) + 1 : ℝ))).toNat

end

end A256564.P5524390485279666294

/-! ## A256564.P17155630505093180321

`A166133(n+1)/∑{d}[A166133(n+1), A300236(#)]`
-/

namespace A256564.P17155630505093180321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, A300236 d : ℤ) : ℚ)

end

end A256564.P17155630505093180321

/-! ## A256564.P14864472473382430138

`A014673(2*A166133(n+1))`
-/

namespace A256564.P14864472473382430138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A166133 (n + 1)).toNat

end

end A256564.P14864472473382430138

/-! ## A256564.P12201228492469616572

`A166133(n+1)/A054576(2*A166133(n+1))`
-/

namespace A256564.P12201228492469616572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A054576 (2 * A166133 (n + 1)).toNat : ℚ)

end

end A256564.P12201228492469616572

/-! ## A256564.P3862428504134208335

`A020639(A256557(n+1)+1)`
-/

namespace A256564.P3862428504134208335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256557 (n + 1) + 1).toNat

end

end A256564.P3862428504134208335

/-! ## A256564.P14212134573496800313

`A014673(A166133(n+1)²)`
-/

namespace A256564.P14212134573496800313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A166133 (n + 1) ^ 2).toNat

end

end A256564.P14212134573496800313

/-! ## A256564.P17974172650666569911

`A020639(A137734(A256557(n+1)))`
-/

namespace A256564.P17974172650666569911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A137734 (A256557 (n + 1)).toNat).toNat

end

end A256564.P17974172650666569911

/-!
# A256566: a(n) is the central term of the (2n-1)-st row of triangle A256440.

The programs for A256566, there is no canonical definition to state claims against.
-/

/-! ## A256566.P4284934061938933703

`A256440(∑[4*n]+1)`
-/

namespace A256566.P4284934061938933703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256566.P4284934061938933703

/-! ## A256566.P1757227517543052559

`A256440(A001844(n))%90`
-/

namespace A256566.P1757227517543052559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256440 (A001844 n).toNat) 90

end

end A256566.P1757227517543052559

/-! ## A256566.P3412678114865905653

`A256440((n+1)²+n²)%A078370(n)`
-/

namespace A256566.P3412678114865905653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256440 ((n + 1) ^ 2 + n ^ 2)) (A078370 n)

end

end A256566.P3412678114865905653

/-! ## A256566.P6006663235866996956

`A256440((n+1)²+n²)/A026794(ceil(2/(n+1)))`
-/

namespace A256566.P6006663235866996956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256440 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (A026794 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A256566.P6006663235866996956

/-! ## A256566.P78056660561460893

`∑{d}[A256440(A001844(n)), A000010(#)]`
-/

namespace A256566.P78056660561460893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A256566.P78056660561460893

/-! ## A256566.P7750770156502813279

`A007318(∑[n])*A256440(A001844(n))`
-/

namespace A256566.P7750770156502813279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A256440 (A001844 n).toNat

end

end A256566.P7750770156502813279

/-! ## A256566.P17926156364995247630

`A256440(A001844(n))/A007318(C(n, 2))`
-/

namespace A256566.P17926156364995247630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256440 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A256566.P17926156364995247630

/-! ## A256566.P3406901515076013151

`A256440(A001844(n))+A008683(4*(n+5))`
-/

namespace A256566.P3406901515076013151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A001844 n).toNat + A008683 (4 * (n + 5))

end

end A256566.P3406901515076013151

/-! ## A256566.P8571756135398036278

`A014963(6*(n+1))*A256440(A001844(n))`
-/

namespace A256566.P8571756135398036278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A256440 (A001844 n).toNat

end

end A256566.P8571756135398036278

/-! ## A256566.P11690241328930310824

`A256440(A001844(n))+C(2, A000203(n+2))`
-/

namespace A256566.P11690241328930310824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A256566.P11690241328930310824

/-!
# A256567: Primes p with the property that there are three consecutive integers (x,x+1,x+2) with 1 < x <= p-3 whose product is 1 modulo p.

The programs for A256567, there is no canonical definition to state claims against.
-/

/-! ## A256567.P5050463649906593758

`p?[eq[A028930(n), A103451(n)]]`
-/

namespace A256567.P5050463649906593758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P5050463649906593758

/-! ## A256567.P6371926290022710575

`p?[eq[A028930(n), A103452(n)]]`
-/

namespace A256567.P6371926290022710575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P6371926290022710575

/-! ## A256567.P6687582420997286631

`p?[eq[A028961(n), A103451(n)]]`
-/

namespace A256567.P6687582420997286631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P6687582420997286631

/-! ## A256567.P9285113190711704160

`p?[eq[A028930(n), A145677(n)]]`
-/

namespace A256567.P9285113190711704160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P9285113190711704160

/-! ## A256567.P10507359870541679878

`p?[eq[A028930(n), A275768(n)]]`
-/

namespace A256567.P10507359870541679878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P10507359870541679878

/-! ## A256567.P12350566547733710393

`p?[eq[A010054(n+1), A028930(n)]]`
-/

namespace A256567.P12350566547733710393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P12350566547733710393

/-! ## A256567.P13425602659262490413

`record[A006530(28*gcd(n, A028961(n)))]`
-/

namespace A256567.P13425602659262490413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (28 * Int.gcd (n : ℤ) (A028961 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256567.P13425602659262490413

/-! ## A256567.P9990308389176887473

`p?[eq[A028930(n), A046775(n)]]`
-/

namespace A256567.P9990308389176887473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P9990308389176887473

/-! ## A256567.P9722171317417967399

`p?[eq[A028930(n), A143064(n)]]`
-/

namespace A256567.P9722171317417967399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256567.P9722171317417967399

/-!
# A256569: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256569, there is no canonical definition to state claims against.
-/

/-! ## A256569.P3903600075249322911

`A038567(n*A054490(n))`
-/

namespace A256569.P3903600075249322911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 ((n : ℤ) * A054490 n).toNat

end

end A256569.P3903600075249322911

/-! ## A256569.P12897180487424186853

`A055849(A062937(n+1))-A047218(n+1)`
-/

namespace A256569.P12897180487424186853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 (A062937 (n + 1)).toNat - A047218 (n + 1)

end

end A256569.P12897180487424186853

/-!
# A256571: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256571, there is no canonical definition to state claims against.
-/

/-! ## A256571.P14634927430312117833

`A001462(Δ[A014162(n)²])`
-/

namespace A256571.P14634927430312117833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (f1 (n + 1) - f1 n).toNat

end

end A256571.P14634927430312117833

/-! ## A256571.P4725483182869819989

`A247904(n)-A385458(A120485(n))`
-/

namespace A256571.P4725483182869819989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247904 n - A385458 (A120485 n).toNat

end

end A256571.P4725483182869819989

/-!
# A256572: Number of triples (x,x+1,x+2) with 1 < x <= p-3 of consecutive integers less than p whose product is 1 modulo p, where p = prime(n).

The programs for A256572, there is no canonical definition to state claims against.
-/

/-! ## A256572.P9444631429462794150

`A030199(A000040(n+1))+1-char[2]`
-/

namespace A256572.P9444631429462794150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (A000040 (n + 1)).toNat + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256572.P9444631429462794150

/-! ## A256572.P5947403242451178016

`A030199(p?[A056847(n)])+1-char[2]`
-/

namespace A256572.P5947403242451178016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256572.P5947403242451178016

/-! ## A256572.P5095073261433896177

`A086965(n+1)-char[2]`
-/

namespace A256572.P5095073261433896177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256572.P5095073261433896177

/-! ## A256572.P6831729789170351813

`A086965(A171526(n+1))`
-/

namespace A256572.P6831729789170351813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (A171526 (n + 1)).toNat

end

end A256572.P6831729789170351813

/-! ## A256572.P12271717269107947863

`A086965(A179184(n)+n)`
-/

namespace A256572.P12271717269107947863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (A179184 n + (n : ℤ)).toNat

end

end A256572.P12271717269107947863

/-! ## A256572.P10286190365263860644

`A086965(1-A185012(n)+n)`
-/

namespace A256572.P10286190365263860644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (1 - A185012 n + (n : ℤ)).toNat

end

end A256572.P10286190365263860644

/-! ## A256572.P11765092736961095776

`A086965(1-(A185012(n)-n))`
-/

namespace A256572.P11765092736961095776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (1 - (A185012 n - (n : ℤ))).toNat

end

end A256572.P11765092736961095776

/-! ## A256572.P2940219496402641031

`and(A086965(n+1), A210027(n))`
-/

namespace A256572.P2940219496402641031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086965 (n + 1)) (A210027 n)

end

end A256572.P2940219496402641031

/-! ## A256572.P7698797858314499465

`A086965(and(1, A273248(n))+n)`
-/

namespace A256572.P7698797858314499465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (Int.land 1 (A273248 n) + (n : ℤ)).toNat

end

end A256572.P7698797858314499465

/-! ## A256572.P49179956699939582

`A086965(and(1, A273447(n))+n)`
-/

namespace A256572.P49179956699939582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (Int.land 1 (A273447 n) + (n : ℤ)).toNat

end

end A256572.P49179956699939582

/-! ## A256572.P238979504027200127

`A086965(and(1, A299282(n))+n)`
-/

namespace A256572.P238979504027200127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (Int.land 1 (A299282 n) + (n : ℤ)).toNat

end

end A256572.P238979504027200127

/-! ## A256572.P12594896055366362635

`and(A086965(n+1), A337497(n))`
-/

namespace A256572.P12594896055366362635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086965 (n + 1)) (A337497 n)

end

end A256572.P12594896055366362635

/-! ## A256572.P6996091542307324431

`A086965(xor(1, A185012(n))+n)`
-/

namespace A256572.P6996091542307324431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (Int.xor 1 (A185012 n) + (n : ℤ)).toNat

end

end A256572.P6996091542307324431

/-! ## A256572.P11427303092313206298

`A086965(n+1)*A171905(n+1)`
-/

namespace A256572.P11427303092313206298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (n + 1) * A171905 (n + 1)

end

end A256572.P11427303092313206298

/-! ## A256572.P17185007359139947920

`and(A086965(n+1), A091155(n+1))`
-/

namespace A256572.P17185007359139947920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086965 (n + 1)) (A091155 (n + 1))

end

end A256572.P17185007359139947920

/-! ## A256572.P9918127332767584037

`and(A086965(n+1), A216059(n+1))`
-/

namespace A256572.P9918127332767584037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086965 (n + 1)) (A216059 (n + 1))

end

end A256572.P9918127332767584037

/-! ## A256572.P13380920643904549813

`A086965(and(1, A217789(n+1))+n)`
-/

namespace A256572.P13380920643904549813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (Int.land 1 (A217789 (n + 1)) + (n : ℤ)).toNat

end

end A256572.P13380920643904549813

/-! ## A256572.P12494346616642451835

`and(1, A229967(n+1))*A086965(n+1)`
-/

namespace A256572.P12494346616642451835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A229967 (n + 1)) * A086965 (n + 1)

end

end A256572.P12494346616642451835

/-! ## A256572.P13022139879084900929

`and(A086965(n+1), A270839(n+1))`
-/

namespace A256572.P13022139879084900929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086965 (n + 1)) (A270839 (n + 1))

end

end A256572.P13022139879084900929

/-!
# A256574: Expansion of chi(x) * psi(-x^3) * psi(x^48) in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A256574, there is no canonical definition to state claims against.
-/

/-! ## A256574.P7461114677328338893

`(-1)^n*A255320(n)`
-/

namespace A256574.P7461114677328338893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A255320 n

end

end A256574.P7461114677328338893

/-! ## A256574.P6105916974583759662

`abs(A255320(n))`
-/

namespace A256574.P6105916974583759662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255320 n|

end

end A256574.P6105916974583759662

/-! ## A256574.P9350077866197262253

`gcd(A000038(n), A255320(n))`
-/

namespace A256574.P9350077866197262253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255320 n)

end

end A256574.P9350077866197262253

/-! ## A256574.P21510740468257005

`lcm(A001492(n), A255320(n))`
-/

namespace A256574.P21510740468257005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A255320 n)

end

end A256574.P21510740468257005

/-! ## A256574.P15646878067902651909

`A255320(n)*A309873(n+1)`
-/

namespace A256574.P15646878067902651909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255320 n * A309873 (n + 1)

end

end A256574.P15646878067902651909

/-! ## A256574.P683930653654549350

`A255320(n)/A057077(2*n)`
-/

namespace A256574.P683930653654549350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255320 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A256574.P683930653654549350

/-! ## A256574.P12805757568091278681

`and(A063065(n+1), A255320(n))`
-/

namespace A256574.P12805757568091278681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063065 (n + 1)) (A255320 n)

end

end A256574.P12805757568091278681

/-!
# A256575: Nonsquarefree orders of cyclotomic polynomials containing a coefficient with an absolute value greater than one.

The programs for A256575, there is no canonical definition to state claims against.
-/

/-! ## A256575.P15057280981678408576

`filter[A013590(n+1), A087049(#)]`
-/

namespace A256575.P15057280981678408576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A256575.P15057280981678408576

/-! ## A256575.P872190850455935865

`filter[A013590(n+1), A107078(#)]`
-/

namespace A256575.P872190850455935865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A256575.P872190850455935865

/-! ## A256575.P7308631673309431804

`filter[A013590(n+1), A355447(#)]`
-/

namespace A256575.P7308631673309431804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A256575.P7308631673309431804

/-! ## A256575.P2171273379051346041

`filter[A013590(n+1), A389905(#)]`
-/

namespace A256575.P2171273379051346041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A256575.P2171273379051346041

/-! ## A256575.P15335598194257963964

`∩[A013590(n+1), A013929(n+1)]`
-/

namespace A256575.P15335598194257963964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P15335598194257963964

/-! ## A256575.P9774856015494061019

`∩[A013590(n+1), A049199(n+1)]`
-/

namespace A256575.P9774856015494061019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P9774856015494061019

/-! ## A256575.P15987464859683972078

`∩[A013590(n+1), A051144(n+1)]`
-/

namespace A256575.P15987464859683972078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P15987464859683972078

/-! ## A256575.P10683406389572837144

`∩[A013590(n+1), A059404(n+1)]`
-/

namespace A256575.P10683406389572837144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P10683406389572837144

/-! ## A256575.P18279575951143888874

`∩[A013590(n+1), A062171(n+1)]`
-/

namespace A256575.P18279575951143888874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P18279575951143888874

/-! ## A256575.P10228306064545863877

`∩[A013590(n+1), A126706(n+1)]`
-/

namespace A256575.P10228306064545863877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P10228306064545863877

/-! ## A256575.P7110942096398507944

`∩[A013590(n+1), A244723(n+1)]`
-/

namespace A256575.P7110942096398507944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P7110942096398507944

/-! ## A256575.P6739631391739637394

`∩[A013590(n+1), A303946(n+1)]`
-/

namespace A256575.P6739631391739637394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P6739631391739637394

/-! ## A256575.P8654581736963145931

`∩[A013590(n+1), A317616(n+1)]`
-/

namespace A256575.P8654581736963145931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P8654581736963145931

/-! ## A256575.P7565053397140441201

`∩[A013590(n+1), A332785(n+1)]`
-/

namespace A256575.P7565053397140441201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P7565053397140441201

/-! ## A256575.P18360851629848116110

`∩[A013590(n+1), A370409(n+1)]`
-/

namespace A256575.P18360851629848116110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P18360851629848116110

/-! ## A256575.P15673158188322678828

`∩[A013590(n+1), A375055(n+1)]`
-/

namespace A256575.P15673158188322678828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P15673158188322678828

/-! ## A256575.P18428024201046531308

`∩[A013590(n+1), A376271(n+1)]`
-/

namespace A256575.P18428024201046531308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P18428024201046531308

/-! ## A256575.P15667382133747393116

`∩[A013590(n+1), A379336(n+1)]`
-/

namespace A256575.P15667382133747393116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P15667382133747393116

/-! ## A256575.P15669384491260486946

`∩[A013590(n+1), A383080(n+1)]`
-/

namespace A256575.P15669384491260486946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256575.P15669384491260486946

/-!
# A256577: Sum_{k>=0} (d_k)^(k+1)*10^k, where Sum_{k>=0} (d_k)*10^k is the decimal expansion of n.

The programs for A256577, there is no canonical definition to state claims against.
-/

/-! ## A256577.P15508937876400318730

`eq[1, A274880(A059995(n))]`
-/

namespace A256577.P15508937876400318730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274880 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256577.P15508937876400318730

/-! ## A256577.P4012946615438040752

`eq[0, A245031(A249111(floor(n/10)))]`
-/

namespace A256577.P4012946615438040752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (A249111 ⌊(n : ℚ) / 10⌋.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256577.P4012946615438040752

/-! ## A256577.P400280926639558851

`lt[A059841(A353851(floor(n/10))), 1]`
-/

namespace A256577.P400280926639558851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A353851 ⌊(n : ℚ) / 10⌋.toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256577.P400280926639558851

/-!
# A256578: Largest proper divisor of A166133(n).

The programs for A256578, there is no canonical definition to state claims against.
-/

/-! ## A256578.P15682562100823257999

`A166133(n+1)/A256564(n+1)`
-/

namespace A256578.P15682562100823257999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A256564 (n + 1) : ℚ)

end

end A256578.P15682562100823257999

/-! ## A256578.P8174845513570817664

`sqrt(A256557(n+1)+1)/A256564(n+1)`
-/

namespace A256578.P8174845513570817664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256557 (n + 1) + 1 : ℝ) / (A256564 (n + 1) : ℝ)

end

end A256578.P8174845513570817664

/-! ## A256578.P442723324063302473

`A166133(n+1)/A020639(xor(1, A166133(n+1))+1)`
-/

namespace A256578.P442723324063302473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A020639 (Int.xor 1 (A166133 (n + 1)) + 1).toNat : ℚ)

end

end A256578.P442723324063302473

/-! ## A256578.P1133443241021191474

`∑{d}[A166133(n+1), A300236(#)]`
-/

namespace A256578.P1133443241021191474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300236 d

end

end A256578.P1133443241021191474

/-! ## A256578.P1980853086821379978

`A032742(A166133(n+1))`
-/

namespace A256578.P1980853086821379978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A166133 (n + 1)).toNat

end

end A256578.P1980853086821379978

/-! ## A256578.P4419275914467534131

`A054576(2*A166133(n+1))`
-/

namespace A256578.P4419275914467534131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A166133 (n + 1)).toNat

end

end A256578.P4419275914467534131

/-! ## A256578.P3531172526631246227

`A166133(n+1)/A014673(2*A166133(n+1))`
-/

namespace A256578.P3531172526631246227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A014673 (2 * A166133 (n + 1)).toNat : ℚ)

end

end A256578.P3531172526631246227

/-! ## A256578.P17149634585472478943

`A166133(n+1)/A014673(A166133(n+1)²)`
-/

namespace A256578.P17149634585472478943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166133 (n + 1) : ℚ) / (A014673 (A166133 (n + 1) ^ 2).toNat : ℚ)

end

end A256578.P17149634585472478943

/-!
# A256579: Integer areas of integer-sided triangles where at least one of the three altitudes is of prime length.

The programs for A256579, there is no canonical definition to state claims against.
-/

/-! ## A256579.P12666507575351449033

`∪[A117762(n+2), A004525(A117762(n+2))]`
-/

namespace A256579.P12666507575351449033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A117762 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256579.P12666507575351449033

/-! ## A256579.P3360819975019676297

`record[lcm(6, A132169(3*n))]`
-/

namespace A256579.P3360819975019676297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A132169 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256579.P3360819975019676297

/-!
# A256580: Number of quadruples (x, x+1, x+2, x+3) with 1 < x < p-3 of consecutive integers whose product is 1 mod p.

The programs for A256580, there is no canonical definition to state claims against.
-/

/-! ## A256580.P12740001281932701100

`A060658(A033576(n))%A053760(n+1)`
-/

namespace A256580.P12740001281932701100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060658 (A033576 n).toNat) (A053760 (n + 1))

end

end A256580.P12740001281932701100

/-! ## A256580.P297530172914509266

`A001316(A095295(n+1))%A053760(n+1)`
-/

namespace A256580.P297530172914509266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A095295 (n + 1)).toNat) (A053760 (n + 1))

end

end A256580.P297530172914509266

/-! ## A256580.P1753258706192731869

`A171449(A052057(n+4))%A053760(n+1)`
-/

namespace A256580.P1753258706192731869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 (A052057 (n + 4)).toNat) (A053760 (n + 1))

end

end A256580.P1753258706192731869

/-! ## A256580.P8275124826913530181

`A201629(A274851(3*n+1))%A053760(n+1)`
-/

namespace A256580.P8275124826913530181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201629 (A274851 (3 * n + 1)).toNat) (A053760 (n + 1))

end

end A256580.P8275124826913530181

/-! ## A256580.P7200388206957111627

`and(A159790(A000040(n+1)), A348172(n+1))`
-/

namespace A256580.P7200388206957111627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159790 (A000040 (n + 1)).toNat) (A348172 (n + 1))

end

end A256580.P7200388206957111627

/-!
# A256581: Number of conditions on m under which m^n + (m+1)^n + ... + (m+k)^n is composite for every k>=1 (see comment).

The programs for A256581, there is no canonical definition to state claims against.
-/

/-! ## A256581.P17547029944033394205

`A000005(A064538(n+1))-A005171(2*(n+1))`
-/

namespace A256581.P17547029944033394205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064538 (n + 1)).toNat - A005171 (2 * (n + 1))

end

end A256581.P17547029944033394205

/-! ## A256581.P9388386091442397090

`A000005(A064538(n+1))-A001222(A135679(n+1))`
-/

namespace A256581.P9388386091442397090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064538 (n + 1)).toNat - A001222 (A135679 (n + 1)).toNat

end

end A256581.P9388386091442397090

/-! ## A256581.P12002629973547735842

`A000005(A064538(n+1))-A353760(A053182(n+1))`
-/

namespace A256581.P12002629973547735842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064538 (n + 1)).toNat - A353760 (A053182 (n + 1)).toNat

end

end A256581.P12002629973547735842

/-! ## A256581.P12982165352939870180

`A000005(A064538(n+1))+A123108(n)-A008619(n)`
-/

namespace A256581.P12982165352939870180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064538 (n + 1)).toNat + (A123108 n - A008619 n)

end

end A256581.P12982165352939870180

/-!
# A256582: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256582, there is no canonical definition to state claims against.
-/

/-! ## A256582.P13071927855036975971

`A324455(2*a(n-1))+1` with `a(0)=1`
-/

namespace A256582.P13071927855036975971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324455 (2 * a (n - 1)).toNat + 1

end

end A256582.P13071927855036975971

/-!
# A256583: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256583, there is no canonical definition to state claims against.
-/

/-! ## A256583.P1471433680937670855

`A355223(A341223(n+5)+A002275(n))`
-/

namespace A256583.P1471433680937670855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A341223 (n + 5) + A002275 n).toNat

end

end A256583.P1471433680937670855

/-!
# A256584: Integer areas of integer-sided triangles where at least one of the three altitudes is of perfect square length.

The programs for A256584, there is no canonical definition to state claims against.
-/

/-! ## A256584.P15688722455904483750

`∑[A243145(p?[A070198(n)])]`
-/

namespace A256584.P15688722455904483750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256584.P15688722455904483750

/-! ## A256584.P17209933593885682000

`∑[A339948(A141214(n))+2]`
-/

namespace A256584.P17209933593885682000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339948 (A141214 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256584.P17209933593885682000

/-!
# A256585: Primes of the form 3n^2 + 39n + 37.

The programs for A256585, the canonical program `A256585.P1445775823257461504` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256585 has offset 1).

The definition of A256585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256585.P1445775823257461504

`p?[3*(n²+n)-89]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A256585

/-- `p?[3*(n²+n)-89]` -/
def P1445775823257461504.Spec : Prop :=
  ∀ n, P1445775823257461504.a n = A256585 (n + 1)

theorem P1445775823257461504.correct : P1445775823257461504.Spec := by
  intro n
  simp only [A256585, Nat.add_sub_cancel]

end A256585

/-! ## A256585.P5285282142382073518

`or(1, p?[7*n-(n-a(n-1))])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A256585.P5285282142382073518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 1] fun n f1 =>
  (7 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A256585.P5285282142382073518

namespace A256585

/-- `or(1, p?[7*n-(n-a(n-1))])` -/
def P5285282142382073518.Spec : Prop :=
  ∀ n, P5285282142382073518.a n = A256585 (n + 1)

end A256585

/-! ## A256585.P16971403251595411117

`record[A020639(∑[6*(n+6)]+1)]`
-/

namespace A256585.P16971403251595411117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256585.P16971403251595411117

namespace A256585

/-- `record[A020639(∑[6*(n+6)]+1)]` -/
def P16971403251595411117.Spec : Prop :=
  ∀ n, P16971403251595411117.a n = A256585 (n + 1)

end A256585

/-! ## A256585.P4176124420196691172

`p?[A271114(∑[n+6])]*A006519(2*n+1)`
-/

namespace A256585.P4176124420196691172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A006519 (2 * n + 1)

end

end A256585.P4176124420196691172

namespace A256585

/-- `p?[A271114(∑[n+6])]*A006519(2*n+1)` -/
def P4176124420196691172.Spec : Prop :=
  ∀ n, P4176124420196691172.a n = A256585 (n + 1)

end A256585

/-! ## A256585.P7506516468534433736

`record[A014963(A271114(∑[n+6]))]`
-/

namespace A256585.P7506516468534433736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A271114 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256585.P7506516468534433736

namespace A256585

/-- `record[A014963(A271114(∑[n+6]))]` -/
def P7506516468534433736.Spec : Prop :=
  ∀ n, P7506516468534433736.a n = A256585 (n + 1)

end A256585

/-!
# A256587: Number of ways to write n = r + s + t, where r,s,t are elements of the set {floor(k*(k+1)/4): k = 1,2,3,...} with s odd and r <= s <= t.

The programs for A256587, there is no canonical definition to state claims against.
-/

/-! ## A256587.P6636311513068549039

`A089643(A165634(A091437(n))-A014317(n))`
-/

namespace A256587.P6636311513068549039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A165634 (A091437 n).toNat - A014317 n).toNat

end

end A256587.P6636311513068549039

/-! ## A256587.P1144970161084817871

`A213911(A329701(n+1))`
-/

namespace A256587.P1144970161084817871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A329701 (n + 1)).toNat

end

end A256587.P1144970161084817871

/-! ## A256587.P15626530944528978998

`A139354(A078408(2*n)+15)`
-/

namespace A256587.P15626530944528978998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A078408 (2 * n) + 15).toNat

end

end A256587.P15626530944528978998

/-! ## A256587.P13971030209419018085

`A001222(A036035(n)+record[A001607(n)])`
-/

namespace A256587.P13971030209419018085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036035 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256587.P13971030209419018085

/-! ## A256587.P5073118373540972975

`A000195(A000115(n+3)*A108536(n+1))`
-/

namespace A256587.P5073118373540972975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A000115 (n + 3) * A108536 (n + 1)).toNat

end

end A256587.P5073118373540972975

/-!
# A256588: a(n) is the n-th sign-change in the sequence of the constants b(n) defined as the coefficients of a Newton interpolation series associated to zeta(s)-1/(s-1).

The programs for A256588, there is no canonical definition to state claims against.
-/

/-! ## A256588.P11579543696514430787

`A226190(A226190(2*(n+2))+A226190(A000566(n+2)))`
-/

namespace A256588.P11579543696514430787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A226190 (2 * (n + 2)) + A226190 (A000566 (n + 2)).toNat).toNat

end

end A256588.P11579543696514430787

/-! ## A256588.P7034044688305997533

`A118015(2*(n+2))+A088911(A069796(n+1))`
-/

namespace A256588.P7034044688305997533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (2 * (n + 2)) + A088911 (A069796 (n + 1)).toNat

end

end A256588.P7034044688305997533

/-! ## A256588.P11436031875421365747

`∑[∑[A190436(A137390(n+1))]]`
-/

namespace A256588.P11436031875421365747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A137390 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256588.P11436031875421365747

/-! ## A256588.P1582628824120283127

`A285077(n+1)+record[A194064(n+1)]`
-/

namespace A256588.P1582628824120283127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256588.P1582628824120283127

/-! ## A256588.P16978732478324074714

`A178815(A022173(n))+A053767(n)`
-/

namespace A256588.P16978732478324074714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A022173 n).toNat + A053767 n

end

end A256588.P16978732478324074714

/-!
# A256590: Base-2 Reacher numbers: numbers that are powers of the sum of their base-2 digits.

The programs for A256590, there is no canonical definition to state claims against.
-/

/-! ## A256590.P1120418268695446547

`comp[A147973(n+1)]^A319434(n+1)`
-/

namespace A256590.P1120418268695446547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147973 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A319434 (n + 1) : ℤ)

end

end A256590.P1120418268695446547

/-! ## A256590.P18418973269019968892

`A333217(n+1)^A283982(A162814(n))`
-/

namespace A256590.P18418973269019968892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333217 (n + 1) : ℚ) ^ (A283982 (A162814 n).toNat : ℤ)

end

end A256590.P18418973269019968892

/-!
# A256594: Numbers k such that k!*2^k + 1 is prime.

The programs for A256594, there is no canonical definition to state claims against.
-/

/-! ## A256594.P2870803462267232733

`floor(A080778(n+2)/2)`
-/

namespace A256594.P2870803462267232733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080778 (n + 2) : ℚ) / 2⌋

end

end A256594.P2870803462267232733

/-! ## A256594.P2509001429900790619

`A080778(A026505(n+1))/2`
-/

namespace A256594.P2509001429900790619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080778 (A026505 (n + 1)).toNat : ℚ) / 2

end

end A256594.P2509001429900790619

/-! ## A256594.P5322172676993510984

`A080778(A091213(n+1))/2`
-/

namespace A256594.P5322172676993510984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080778 (A091213 (n + 1)).toNat : ℚ) / 2

end

end A256594.P5322172676993510984

/-! ## A256594.P11619837305748797689

`A080778(A293727(n+1))/2`
-/

namespace A256594.P11619837305748797689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080778 (A293727 (n + 1)).toNat : ℚ) / 2

end

end A256594.P11619837305748797689

/-!
# A256595: Triangle A074909(n) with 0's as second column.

The programs for A256595, there is no canonical definition to state claims against.
-/

/-! ## A256595.P10728325228075189415

`A206735(comp[∑[char[1]+1+n]])`
-/

namespace A256595.P10728325228075189415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A256595.P10728325228075189415

/-! ## A256595.P16066048365351287811

`C(∑[char[∑[n]]], A131818(comp[∑[n-1]]))`
-/

namespace A256595.P16066048365351287811
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A131818 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n)).toNat

end

end A256595.P16066048365351287811

/-! ## A256595.P1246698538994316674

`C(∑[char[∑[n]]], A135223(comp[∑[n-1]]))`
-/

namespace A256595.P1246698538994316674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A135223 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n)).toNat

end

end A256595.P1246698538994316674

/-! ## A256595.P4446682649467867872

`C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))%A038303(∑[char[∑[n]]]²-n)`
-/

namespace A256595.P4446682649467867872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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
  Int.tmod (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) (A038303 ((∑ j ∈ Finset.range (n + 1), f7 j) ^ 2 - n))

end

end A256595.P4446682649467867872

/-! ## A256595.P11966217395822852594

`lcm(C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2)), A292745(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A256595.P11966217395822852594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) (A292745 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ) + (n : ℤ)).toNat)

end

end A256595.P11966217395822852594

/-! ## A256595.P10625613112693071230

`C(log2(∏[char[∑[n]]+1]), n-C(∑[char[∑[n]]], 2))%A131114(∑[char[∑[n]]]²-n)`
-/

namespace A256595.P10625613112693071230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

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
  Int.tmod (Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) (A131114 ((∑ j ∈ Finset.range (n + 1), f7 j) ^ 2 - n))

end

end A256595.P10625613112693071230

/-! ## A256595.P1751046274712140863

`A074909(n)%A122053(n)`
-/

namespace A256595.P1751046274712140863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 n) (A122053 n)

end

end A256595.P1751046274712140863

/-! ## A256595.P10641316644385926670

`A071919(record[n%A001498(n)])`
-/

namespace A256595.P10641316644385926670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001498 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256595.P10641316644385926670

/-! ## A256595.P9201944573329937454

`A060576(A002262(n))*A074909(n)`
-/

namespace A256595.P9201944573329937454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A002262 n).toNat * A074909 n

end

end A256595.P9201944573329937454

/-! ## A256595.P4798218546913999570

`A007318(A007401(n+1))%(3-4*A215083(n))`
-/

namespace A256595.P4798218546913999570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A007401 (n + 1)).toNat) (3 - 4 * A215083 n)

end

end A256595.P4798218546913999570

/-!
# A256597: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256597, there is no canonical definition to state claims against.
-/

/-! ## A256597.P1086140350744648423

`A315531(a(n-1))+11` with `a(0)=1, a(1)=11`
-/

namespace A256597.P1086140350744648423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A315531 (a (n - 1)).toNat + 11

end

end A256597.P1086140350744648423

/-!
# A256599: Final terms in rows of triangle A256600.

The programs for A256599, there is no canonical definition to state claims against.
-/

/-! ## A256599.P3568671693153819405

`A256600(2^(n+1)-2)`
-/

namespace A256599.P3568671693153819405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256600 (2 ^ (n + 1) - 2)

end

end A256599.P3568671693153819405

